// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: COREUART/ CoreUARTapb UART core
//
//
//  Revision Information:
// Date     Description
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// 
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

module PROC_SUBSYSTEM_CoreUARTapb_0_COREUART (RESET_N,
  CLK,
  WEN,
  OEN,
  CSN,
  DATA_IN,
  RX,
  BAUD_VAL,
  BIT8,
  PARITY_EN,
  ODD_N_EVEN,
  PARITY_ERR,
  OVERFLOW,
  TXRDY,
  RXRDY,
  DATA_OUT,
  TX,
  FRAMING_ERR,
  BAUD_VAL_FRACTION
);
// TX Parameters
parameter TX_FIFO = 0; // 0=without tx fifo
//  1=with tx fifo
// RX Parameters
parameter RX_FIFO = 0;  // 0=without rx fifo
//  1=with rx fifo
parameter RX_LEGACY_MODE = 0;

// DEVICE FAMILY
parameter FAMILY = 15;

//Baud Fraction Enable
parameter BAUD_VAL_FRCTN_EN = 0; // 1 = enable baud fraction, 0 = disable baud fraction

// Sync/Async Parameter
parameter SYNC_RESET = (FAMILY == 25) ? 1 : 0; // Sync/Async Resets selected by family parameter 

input   RESET_N;
input   CLK;
input   WEN;
input   OEN;
input   CSN;
input   [7:0] DATA_IN;
input   RX;
input   [12:0] BAUD_VAL;
input   BIT8; //  if set to one 8 data bits otherwise 7 data bits
input   PARITY_EN; //  if set to one parity is enabled otherwise disabled
input   ODD_N_EVEN; //  if set to one odd parity otherwise even parity
input   [2:0] BAUD_VAL_FRACTION; // used to add extra precision to baud value when BAUD_VAL_FRCTN_EN = 1

output  PARITY_ERR; //  parity error indicator on recieved data
output  OVERFLOW; //  receiver overflow
output  TXRDY; //  transmit ready for another byte
output  RXRDY; //  receiver has a byte ready
output  [7:0] DATA_OUT;
output  TX;
output  FRAMING_ERR;

// State name constant definitions
`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
`define S3 2'b11

//  Configuration bits
//  Status bits
wire    PARITY_ERR;
wire    FRAMING_ERR;
wire    OVERFLOW;
wire    overflow_legacy;
wire    TXRDY;
reg    RXRDY;
wire    receive_full;
wire    fifo_write_rx;
wire    fifo_write;
reg    [7:0] DATA_OUT;
wire    TX;
wire    xmit_pulse; //  transmit pulse
wire    baud_clock; //  8x baud clock pulse
wire    rst_tx_empty; //  reset transmit empty
reg     [7:0] tx_hold_reg; //  transmit byte hold register
wire    [7:0] tx_dout_reg; //  transmit byte hold register
wire    [7:0] rx_dout; //  receive data out
wire    read_rx_byte; //  read rx byte register

reg    [7:0] rx_dout_reg; //  receive data out
wire    [7:0] rx_byte; //  receive byte register
wire    [7:0] rx_byte_in; //  receive byte register
wire    fifo_empty_tx;
wire    fifo_empty_rx;
reg     fifo_read_rx;
reg     fifo_write_tx;
wire    fifo_read_tx;
wire    fifo_full_tx;
wire    fifo_full_rx;
wire    clear_parity;
wire    clear_framing_error;
wire    clear_parity_en;
reg     clear_parity_reg0;
reg     clear_parity_reg;
// AS, added framing error self-clear mechanism (RX FIFO mode)
wire    clear_framing_error_en;
reg     clear_framing_error_reg0;
reg     clear_framing_error_reg;
reg     data_en;
reg     data_ready;

reg     rx_dout_reg_empty;
reg     rx_dout_reg_empty_q;
reg     [1:0] rx_state;
reg     [1:0] next_rx_state;

// Added by AS, enable signal for sync'ing:
wire    stop_strobe;
wire    rx_idle;

reg     overflow_reg;
wire    clear_overflow;

// TS, sync/async mode select
wire aresetn;
wire sresetn; 
assign aresetn = (SYNC_RESET==1) ? 1'b1 : RESET_N;
assign sresetn = (SYNC_RESET==1) ? RESET_N : 1'b1;
// ----------------------------------------------------------------------------
//  Transmit related code
// ----------------------------------------------------------------------------

always @(posedge CLK or negedge aresetn)
begin : reg_write
  if ((!aresetn) || (!sresetn))
  begin
    tx_hold_reg <= {8{1'b0}};
    fifo_write_tx <= 1'b1;
  end
  else
  begin
    fifo_write_tx <= 1'b1;
    if (CSN == 1'b0 & WEN == 1'b0)
    begin
      tx_hold_reg <= DATA_IN;
      fifo_write_tx <= 1'b0;
    end
  end
end

assign rst_tx_empty = WEN == 1'b0 & CSN == 1'b0 ? 1'b1 : 1'b0;

// ----------------------------------------------------------------------------
//  Receive related code
// ----------------------------------------------------------------------------

// Added by Hari
// Modified Sep 2006, ROK
always @(rx_byte or rx_dout_reg or PARITY_ERR)
begin
  if (RX_FIFO == 1'b0)
  begin
    DATA_OUT = rx_byte;
  end
  else
  begin
    if (PARITY_ERR == 1'b1)
    begin
      DATA_OUT = rx_byte;
    end
    else
    begin
      DATA_OUT = rx_dout_reg;
    end
  end
end

assign read_rx_byte = (RX_FIFO == 1'b0) ? ((CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : 1'b0) : !fifo_full_rx;

assign clear_parity = (RX_FIFO == 1'b0) ?
  ((CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : 1'b0) : clear_parity_reg;

//assign clear_framing_error = (RX_FIFO == 1'b0) ? ((CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : 1'b0) : clear_framing_error_reg;
assign clear_framing_error = (RX_FIFO == 1'b0) ? ((CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : 1'b0) :((CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : clear_framing_error_reg) ;

assign clear_overflow = (CSN == 1'b0 & OEN == 1'b0) ? 1'b1 : 1'b0;

assign rx_byte_in = (PARITY_ERR == 1'b0) ? rx_byte : 8'b0;

generate
if (RX_LEGACY_MODE == 1'b1)
begin
  always @ (receive_full or rx_dout_reg_empty)
  begin
    if (RX_FIFO == 1'b0)
    begin
      RXRDY = receive_full;
    end
    else
    begin
      RXRDY = !rx_dout_reg_empty;
    end
  end
end
else // sync to stop_strobe (stop bit and framing error)
begin
  //  always @ (receive_full or rx_dout_reg_empty or stop_strobe)
  always @ (posedge CLK or negedge aresetn)
  begin
    if ((!aresetn) || (!sresetn)) begin
      RXRDY <= 1'b0;
    end
    else begin
      if (RX_FIFO == 1'b0)
      begin
        if (stop_strobe == 1'b1 || receive_full == 1'b0) 
        begin
          RXRDY <= receive_full;
        end
      end
      else
      begin
        // AS: filter out single clock cycle empty flag (might just be reading
        // from fifo, waiting for next data byte

//        if (stop_strobe == 1'b1 || (rx_dout_reg_empty == 1'b1))
        if (stop_strobe == 1'b1 || (rx_dout_reg_empty == 1'b1) || ((rx_dout_reg_empty == 1'b0) && (rx_idle == 1'b1 || RX_FIFO==1)))
        begin
          RXRDY <= !rx_dout_reg_empty;
        end
      end
    end
  end // end process
end // RX_LEGACY_MODE == 0
endgenerate

always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    clear_parity_reg <= 1'b0;
    clear_parity_reg0 <= 1'b0;
  end
  else
  begin
    clear_parity_reg0 <= clear_parity_en;
    clear_parity_reg <= clear_parity_reg0;
  end
end

// AS: added self-clearing framing error
always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    clear_framing_error_reg <= 1'b0;
    clear_framing_error_reg0 <= 1'b0;
  end
  else
  begin
    clear_framing_error_reg0 <= clear_framing_error_en;
    clear_framing_error_reg <= clear_framing_error_reg0;
  end
end

// state machine to control reading from the rx fifo
always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    rx_state <= `S0;
  end
  else
  begin
    rx_state <= next_rx_state;
  end
end

always @(rx_state, rx_dout_reg_empty, fifo_empty_rx)
begin
  next_rx_state = rx_state;
  fifo_read_rx = 1'b1;
  data_en = 1'b0;

  case (rx_state)
    `S0 :   if (rx_dout_reg_empty == 1'b1 && fifo_empty_rx == 1'b0)
              begin
                next_rx_state = `S1;
                fifo_read_rx = 1'b0;    // active low
              end
    `S1 :   next_rx_state = `S2;
    `S2 :   next_rx_state = `S3;
    `S3 :   begin
      next_rx_state = `S0;
      data_en = 1'b1;
    end
  endcase
end

always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    rx_dout_reg <= {8{1'b0}};
  end
  else
  begin
    if (data_en == 1'b1)
    begin
      rx_dout_reg <= rx_dout;
    end
  end
end

always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    rx_dout_reg_empty <= 1'b1;
    rx_dout_reg_empty_q <= 1'b1;
  end
  else
  begin
    if (data_en == 1'b1)
    begin
      rx_dout_reg_empty <= 1'b0;
    end
    else
    begin
      if (CSN == 1'b0 && OEN == 1'b0)
      begin
	    if(RX_FIFO == 1)
		  begin
		    if(!PARITY_ERR)
			  begin
                rx_dout_reg_empty <= 1'b1;
			  end
		  end
		else
		  begin  
            rx_dout_reg_empty <= 1'b1;
		  end
      end
    end
    rx_dout_reg_empty_q <= rx_dout_reg_empty;
  end
end

// AS: Added OVERFLOW logic (see below)
always @(posedge CLK or negedge aresetn)
begin
  if ((!aresetn) || (!sresetn))
  begin
    overflow_reg <= 1'b0;
  end
  else
  begin
    // Note: received byte will happen before OVERFLOW clear
    if (fifo_write == 1'b0 && fifo_full_rx == 1'b1)
      overflow_reg <= 1'b1;
    else if (clear_overflow == 1'b1)
      overflow_reg <= 1'b0;
    else
      overflow_reg <= overflow_reg;
  end
end

// AS: Changed OVERFLOW condition
//     - We should not be assigning OVERFLOW to FIFO_FULL;
//       instead, we should be asserting OVERFLOW if a write is
//       requested while fifo_full_rx is high
//assign OVERFLOW = (RX_FIFO == 1'b0) ? overflow_legacy : fifo_full_rx;
assign OVERFLOW = (RX_FIFO == 1'b0) ? overflow_legacy : overflow_reg;

// AS: 16Jun09
// Added FRAMING_ERR to write condition for RX FIFO (removed)
// AS: 24Jun09
// Added OVERFLOW error condition: don't write when OVERFLOW is asserted
assign fifo_write_rx = ((PARITY_ERR == 1'b1) || fifo_full_rx == 1'b1) ? 1'b1 : fifo_write;

// ---------------------------------------------------------
//  COMPONENT DECLARATIONS
// ---------------------------------------------------------

PROC_SUBSYSTEM_CoreUARTapb_0_Clock_gen #(.BAUD_VAL_FRCTN_EN(BAUD_VAL_FRCTN_EN),
                       .SYNC_RESET(SYNC_RESET)
					   ) make_CLOCK_GEN ( .clk(CLK),
                                          .reset_n(RESET_N),
                                          .baud_val(BAUD_VAL),
                                          .baud_clock(baud_clock),
                                          .xmit_pulse(xmit_pulse),
                                          .BAUD_VAL_FRACTION(BAUD_VAL_FRACTION)
);


PROC_SUBSYSTEM_CoreUARTapb_0_Tx_async #( .TX_FIFO(TX_FIFO),
                       .SYNC_RESET(SYNC_RESET)
					  ) make_TX (.clk(CLK),
                                 .xmit_pulse(xmit_pulse),
                                 .reset_n(RESET_N),
                                 .rst_tx_empty(rst_tx_empty),
                                 .tx_hold_reg(tx_hold_reg),
                                 .tx_dout_reg(tx_dout_reg),
                                 .fifo_empty(fifo_empty_tx),
                                 .fifo_full(fifo_full_tx),
                                 .bit8(BIT8),
                                 .parity_en(PARITY_EN),
                                 .odd_n_even(ODD_N_EVEN),
                                 .txrdy(TXRDY),
                                 .tx(TX),
                                 .fifo_read_tx(fifo_read_tx)
);


PROC_SUBSYSTEM_CoreUARTapb_0_Rx_async #( .RX_FIFO(RX_FIFO),
                       .SYNC_RESET(SYNC_RESET)
                      ) make_RX ( .clk(CLK),
                                  .baud_clock(baud_clock),
                                  .reset_n(RESET_N),
                                  .bit8(BIT8),
                                  .parity_en(PARITY_EN),
                                  .odd_n_even(ODD_N_EVEN),
                                  .read_rx_byte(read_rx_byte),
                                  .clear_parity(clear_parity),
                                  .framing_error(FRAMING_ERR),
                                  .clear_framing_error(clear_framing_error),
                                  .stop_strobe(stop_strobe),
                                  .rx_idle(rx_idle),
                                  .rx(RX),
                                  .overflow(overflow_legacy),
                                  .parity_err(PARITY_ERR),
                                  .clear_parity_en(clear_parity_en),
                                  .clear_framing_error_en(clear_framing_error_en),
                                  .receive_full(receive_full),
                                  .rx_byte(rx_byte),
                                  .fifo_write(fifo_write)
);


generate
if  (TX_FIFO == 1'b1)
  begin
    PROC_SUBSYSTEM_CoreUARTapb_0_fifo_256x8 #(.SYNC_RESET(SYNC_RESET)) tx_fifo (.DO(tx_dout_reg), .RCLOCK(CLK), .WCLOCK(CLK), .DI(tx_hold_reg), .WRB(fifo_write_tx), .RDB(fifo_read_tx),
    .RESET(RESET_N), .FULL(fifo_full_tx), .EMPTY(fifo_empty_tx));
  end
  else
    begin
	  assign fifo_full_tx = 1'b0;
	  assign fifo_empty_tx = 1'b0;
	  assign tx_dout_reg = 8'b0;
	end
endgenerate

generate
if  (RX_FIFO == 1'b1)
  begin
    PROC_SUBSYSTEM_CoreUARTapb_0_fifo_256x8 #(.SYNC_RESET(SYNC_RESET)) rx_fifo (.DO(rx_dout), .RCLOCK(CLK), .WCLOCK(CLK), .DI(rx_byte_in), .WRB(fifo_write_rx), .RDB(fifo_read_rx),
    .RESET(RESET_N), .FULL(fifo_full_rx), .EMPTY(fifo_empty_rx));
  end
else
  begin
	assign fifo_full_rx = 1'b0;
	assign fifo_empty_rx = 1'b0;
	assign rx_dout = 8'b0;
  end
endgenerate

endmodule // module UART
