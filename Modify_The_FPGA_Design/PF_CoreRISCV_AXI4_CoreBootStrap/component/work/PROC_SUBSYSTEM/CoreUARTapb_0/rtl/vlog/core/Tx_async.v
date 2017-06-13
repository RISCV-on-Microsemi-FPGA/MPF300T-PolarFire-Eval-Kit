// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: CoreUART/ CoreUARTapb UART core
//
//
//  Revision Information:
// Date     Description
// Jun09    Revision 4.1
// Aug10    Revision 4.2
//
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
//
// Resolved SARs
// SAR      Date     Who   Description
// 20741    2Sep10   AS    Increased baud rate by ensuring fifo ctrl runs off
//                         sys clk (not baud clock).  See note below.
//
// Notes:
// best viewed with tabstops set to "4"

`timescale 1 ns / 1 ns // timescale for following modules

module PROC_SUBSYSTEM_CoreUARTapb_0_Tx_async (clk, xmit_pulse, reset_n, rst_tx_empty, tx_hold_reg, tx_dout_reg, fifo_empty, fifo_full, bit8,
  parity_en, odd_n_even, txrdy, tx, fifo_read_tx);

 parameter SYNC_RESET = 0;
// TX Parameters
parameter TX_FIFO = 0; // 0=without tx fifo
//  1=with tx fifo

input clk;
input xmit_pulse;
input reset_n;
input rst_tx_empty;
input[7:0] tx_hold_reg;
input[7:0] tx_dout_reg;
input fifo_empty;
input fifo_full;
input bit8;
input parity_en;
input odd_n_even;
output txrdy;
wire txrdy;
output tx;
output fifo_read_tx;
reg tx;

parameter tx_idle = 0;
parameter tx_load = 1;
parameter start_bit = 2;
parameter tx_data_bits = 3;
parameter parity_bit = 4;
parameter tx_stop_bit = 5;
parameter delay_state = 6;
integer xmit_state; // transmit state machine
reg txrdy_int; // transmit ready for another byte
reg[7:0] tx_byte; // transmit byte
reg[3:0] xmit_bit_sel; // selects transmit bit
reg tx_parity; // transmit parity

// AS: changed to wire
// removed unused signals
//reg fifo_read_tx;
wire fifo_read_tx;
reg fifo_read_en0;
//reg fifo_read_en1;
//wire fifo_read_en;

// ----------------------------------------------------------------------------
wire aresetn;
wire sresetn; 
assign aresetn = (SYNC_RESET==1) ? 1'b1 : reset_n;
assign sresetn = (SYNC_RESET==1) ? reset_n : 1'b1;

// Modified Sep 2006, ROK
// ----------------------------------------------------------
// AS, Sep10: synchronized to start bit, rather than load bit
// since txload now happens on start bit state
always @(posedge clk or negedge aresetn)
begin : make_txrdy
  if ((!aresetn) || (!sresetn))
  begin
    txrdy_int <= 1'b1 ;
  end
  else
  begin
    if (TX_FIFO == 1'b0)
    begin
      if (xmit_pulse)
      begin
        if (xmit_state == start_bit)
        begin
          txrdy_int <= 1'b1;
        end
      end
      if (rst_tx_empty)
      begin
        txrdy_int <= 1'b0;
      end
    end
    else
    begin
      txrdy_int <= !fifo_full;
    end
  end
end

// Modified Sep10, AS
// FIFO load state transitions and outputs and outputs registered on system
// clock (clk): 
always @(posedge clk or negedge aresetn)
begin : xmit_sm
  if ((!aresetn) || (!sresetn))
  begin
    xmit_state <= tx_idle ;
    tx_byte <= 8'b0 ;
    fifo_read_en0 <= 1'b1;
  end
  else
  begin
    // AS:
    // (1) state on sysclk for tx_idle, tx_load, delay_state since these operations run
    // off the system clock, not the baud clock
    // (2) perform tx byte load on start bit state to ensure that data is
    // valid at that point
    if (xmit_pulse || (xmit_state == tx_idle) || (xmit_state == delay_state) || (xmit_state == tx_load))
    begin
      fifo_read_en0 <= 1'b1;
      case (xmit_state)
        tx_idle :
        begin
          if (TX_FIFO == 1'b0)
          begin
            if (!txrdy_int)
            begin
              xmit_state <= tx_load ;
            end
            else
            begin
              xmit_state <= tx_idle ;
            end
          end
          else
          begin
            if (fifo_empty == 1'b0)
            begin
              fifo_read_en0 <= 1'b0;
              xmit_state <= delay_state;
            end
            else
            begin
              xmit_state <= tx_idle ;
              fifo_read_en0 <= 1'b1;
            end
          end
        end
        tx_load :
        begin
          xmit_state <= start_bit ;
        end
        start_bit :
        begin
          xmit_state <= tx_data_bits ;
          if (TX_FIFO == 1'b0)
          begin
            tx_byte <= tx_hold_reg ;
          end
          else
          begin
            tx_byte <= tx_dout_reg ;
          end
        end
        tx_data_bits :
        begin
          if (bit8)
          begin
            if (xmit_bit_sel == 4'b0111)
            begin
              if (parity_en)
              begin
                xmit_state <= parity_bit ;
              end
              else
              begin
                xmit_state <= tx_stop_bit ;
              end
            end
            else
            begin
              xmit_state <= tx_data_bits ;
            end
          end
          else
          begin
            if (xmit_bit_sel == 4'b0110)
            begin
              if (parity_en)
              begin
                xmit_state <= parity_bit ;
              end
              else
              begin
                xmit_state <= tx_stop_bit ;
              end
            end
            else
            begin
              xmit_state <= tx_data_bits ;
            end
          end
        end
        parity_bit :
        begin
          xmit_state <= tx_stop_bit ;
        end
        tx_stop_bit :
        begin
          xmit_state <= tx_idle ;
        end
        delay_state :
        begin
          xmit_state <= tx_load ;
        end
        default :
        begin
          xmit_state <= tx_idle ;
        end
      endcase
    end
  end
end

// AS: Need to remove clock delay of fifo read, since tx_load state is
// registered on sys clk now and fifo_read_en needs to be made available
// immediately

// Added by Hari
//always @(posedge clk or negedge reset_n)
//begin : read_fifo
//  if (!reset_n)
//  begin
//    fifo_read_tx <= 1'b1;
//    fifo_read_en1 <= 1'b1;
//  end
//  else
//  begin
//    fifo_read_tx <= 1'b1;
//    fifo_read_en1 <= fifo_read_en0;
//    if (fifo_read_en == 1'b0)
//    begin
//      fifo_read_tx <= 1'b0;
//    end
//  end
//end

//assign fifo_read_en = (!fifo_read_en1 | fifo_read_en0);
//assign fifo_read_en = fifo_read_en0;
assign fifo_read_tx = fifo_read_en0;

always @(posedge clk or negedge aresetn)
begin : xmit_cnt
  if ((!aresetn) || (!sresetn))
  begin
    xmit_bit_sel <= 4'b0000 ;
  end
  else
  begin
    if (xmit_pulse)
    begin
      if (xmit_state != tx_data_bits)
      begin
        xmit_bit_sel <= 4'b0000 ;
      end
      else
      begin
        xmit_bit_sel <= xmit_bit_sel + 1'b1 ;
      end
    end
  end
end

always @(posedge clk or negedge aresetn)
begin : xmit_sel
  if ((!aresetn) || (!sresetn))
  begin
    tx <= 1'b1 ;
  end
  else
  begin
    // AS:
    // state on sysclk for tx_idle, tx_load, delay_state since these operations run
    // off the system clock, no the baud clock
    if (xmit_pulse || (xmit_state == tx_idle) || (xmit_state == delay_state) || (xmit_state == tx_load))
    begin
      case (xmit_state)
        tx_idle :
        begin
          tx <= 1'b1 ;
        end
        tx_load :
        begin
          tx <= 1'b1 ;
        end
        start_bit :
        begin
          tx <= 1'b0 ;
        end
        tx_data_bits :
        begin
          //tx <= tx_byte[conv_integer(xmit_bit_sel)] ;
          tx <= tx_byte[xmit_bit_sel] ;
        end
        parity_bit :
        begin
          tx <= odd_n_even ^ tx_parity ;
        end

        tx_stop_bit :
        begin
          tx <= 1'b1 ;
        end
        default :
        begin
          tx <= 1'b1 ;
        end
      endcase
    end
  end
end

always @(posedge clk or negedge aresetn)
begin : xmit_par_calc
  if ((!aresetn) || (!sresetn))
  begin
    tx_parity <= 1'b0 ;
  end
  else
  begin
    if (xmit_pulse & parity_en)
    begin
      if (xmit_state == tx_data_bits)
      begin
        //tx_parity <= tx_parity ^ tx_byte[conv_integer(xmit_bit_sel)] ;
        tx_parity <= tx_parity ^ tx_byte[xmit_bit_sel] ;
      end
      else
      begin
        tx_parity <= tx_parity ;
      end
    end
    if (xmit_state == tx_stop_bit)
    begin
      tx_parity <= 1'b0 ;
    end
  end
end

assign txrdy = txrdy_int ;

endmodule
