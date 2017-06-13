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

module PROC_SUBSYSTEM_CoreUARTapb_0_Rx_async (clk,
  baud_clock,
  reset_n,
  bit8,
  parity_en,
  odd_n_even,
  read_rx_byte,
  clear_parity,
  rx,
  overflow,
  parity_err,
  clear_parity_en,
  receive_full,
  rx_byte, 
  fifo_write,
  framing_error,
  clear_framing_error,
  clear_framing_error_en,
  stop_strobe,
  rx_idle
);

parameter SYNC_RESET = 0;
// RX Parameters
parameter RX_FIFO = 0; // 0=without rx fifo, 1=with rx fifo 

// TYPE receive_states:
parameter receive_states_rx_idle = 0;
parameter receive_states_rx_data_bits = 1;
parameter receive_states_rx_stop_bit = 2;
parameter receive_states_rx_wait_state = 3;

input   clk; //  system clock
input   baud_clock; //  8x baud clock pulse
input   reset_n; //  active low async reset  
input   bit8; //  if set to one 8 data bits otherwise 7 data bits
input   parity_en; //  if set to one parity is enabled otherwise disabled
input   odd_n_even; //  if set to one odd parity otherwise even parity
input   read_rx_byte; //  read rx byte register
input   clear_parity; //  clear parity error 
input   clear_framing_error; // clear framing error signal (AS)
input   rx; 
output  overflow; //  receiver overflow
output  parity_err; //  parity error indicator on recieved data
output  clear_parity_en; // clear parity error enable
output  receive_full; //  receiver has a byte ready
output  [7:0] rx_byte;
output  fifo_write;
output  framing_error; // stop bit not detected flag (AS)
output  clear_framing_error_en; // clear framing error enable (AS)
output  stop_strobe;   // stop bit strobe (for RX legacy mode) (AS)
// AS: added idle wire for framing_err assigmnet using
// stop_strobe
output  rx_idle;
reg     framing_error; // stop bit not detected flag (AS) 
reg     stop_strobe;   // stop bit strobe (for RX legacy mode) (AS)
reg     overflow; 
reg     parity_err; 
reg     fifo_write;
//  receive byte register
wire    receive_full; 
reg     [7:0] rx_byte; 
reg     [1:0] rx_state; //  receive state machine
reg     [3:0] receive_count; //  counts bits received
reg     rx_filtered; //  filtered rx data
reg     [8:0] rx_shift; //  receive shift register
reg     rx_parity_calc; //  received parity, calculated
reg     [3:0] rx_bit_cnt; //  count of received bits 
reg     receive_full_int; //  receiver has a byte ready
reg     [2:0] samples; 
reg     overflow_int; 
reg     framing_error_int;   // internal framing error bit (AS)
reg     clear_parity_en; 
reg     clear_framing_error_en; // clear framing error enable (AS)
reg    [3:0] last_bit;
 
wire    [1:0] shift_choice; 
wire    [1:0] parity_choice; 
// ----------------------------------------------------------------------------
wire aresetn;
wire sresetn; 
assign aresetn = (SYNC_RESET==1) ? 1'b1 : reset_n;
assign sresetn = (SYNC_RESET==1) ? reset_n : 1'b1;


//  filter the receive data
// ----------------------------------------------------------------------------
//  The receive data filter is a simple majority voter that accepts three
//  samples of the "raw" data and reports the most populus result.  This
//  provides a simple single-cycle glitch filter.
//  This input needs to go to both the state machine start bit detector as
//  well as the data shift register as this filter introduces a three-clock 
//  delay and we need to keep the phases lined up.
// 
always @(posedge clk or negedge aresetn)
begin : majority
  if ((!aresetn) || (!sresetn))
  begin
    samples <= 3'b111;        
  end
  else
  begin
    if (baud_clock == 1'b1)
    begin
      samples[1:0] <= samples[2:1];  
      samples[2] <= rx;      
    end
  end
end

//  our voter
always @(samples)
begin
  case (samples)
    3'b000:
    begin
      rx_filtered <= 1'b0;      
    end
    3'b001:
    begin
      rx_filtered <= 1'b0;      
    end
    3'b010:
    begin
      rx_filtered <= 1'b0;      
    end
    3'b011:
    begin
      rx_filtered <= 1'b1;      
    end
    3'b100:
    begin
      rx_filtered <= 1'b0;      
    end
    3'b101:
    begin
      rx_filtered <= 1'b1;      
    end
    3'b110:
    begin
      rx_filtered <= 1'b1;      
    end
    default:
    begin
      rx_filtered <= 1'b1;      
    end
  endcase
end
// ----------------------------------------------------------------------------
//  receive bit counter
// ----------------------------------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : rcv_cnt
  if ((!aresetn) || (!sresetn))
  begin
    receive_count <= 4'b0000; 
  end
  else
  begin
    //  no start bit yet or begin sample period for data
    if (baud_clock == 1'b1)
    begin
      if ((rx_state == receive_states_rx_idle & (rx_filtered == 1'b1 | receive_count == 4'b1000)) || ((rx_state == receive_states_rx_wait_state) && (receive_count == 4'b0110)))
      begin
        receive_count <= 4'b0000;   
      end
      else
      begin
        receive_count <= receive_count + 1'b1;      
      end
    end
  end
end
// ----------------------------------------------------------------------------
//  registering of the overflow signal
// ----------------------------------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : make_overflow
  if ((!aresetn) || (!sresetn))
  begin
    overflow <= 1'b0; 
  end
  else
  begin
    if (baud_clock == 1'b1)
    begin
      if (overflow_int == 1'b1)
      begin
        overflow <= 1'b1;   
      end
    end
    if (read_rx_byte == 1'b1)
    begin
      overflow <= 1'b0;      
    end
  end
end

// ----------------------------------------------------------------------------
//  registering of the framing_error signal
// ----------------------------------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : make_framing_error
  if ((!aresetn) || (!sresetn))
    begin
      framing_error <= 1'b0; 
    end
  else if (baud_clock == 1'b1)
    begin
      if (framing_error_int == 1'b1)
        begin
          framing_error <= 1'b1;   
        end
      else if (clear_framing_error == 1'b1)
        begin
          framing_error <= 1'b0;
        end
    end
  else if (clear_framing_error == 1'b1)
    begin
      framing_error <= 1'b0;
    end
  else 
    begin
      framing_error <= framing_error;
    end
end
// ----------------------------------------------------------------------------
//  receive state machine & byte register
// ----------------------------------------------------------------------------

always @(posedge clk or negedge aresetn)
  begin
    if((!aresetn) || (!sresetn))
	  begin
	    last_bit <= 4'b1001; 
	  end
	else
	  begin
	    if((rx_state == receive_states_rx_idle) && (receive_count == 4'b1000))
		  begin
		    case({bit8,parity_en})
			  2'b00 : last_bit <= 4'b0111; 
			  2'b01 : last_bit <= 4'b1000; 
			  2'b10 : last_bit <= 4'b1000;
			  2'b11 : last_bit <= 4'b1001;
			endcase
		  end
		else
		  begin
		    last_bit <= last_bit;
		  end
	  end
  end
 
assign  rx_idle = (rx_state == receive_states_rx_idle);                                                 
always @(posedge clk or negedge aresetn)                                                     
begin : rcv_sm                                                                               
  if ((!aresetn) || (!sresetn))                                                                      
  begin                                                                                      
    rx_state <= receive_states_rx_idle;                                                      
    rx_byte <= 8'b00000000;                                                                  
    overflow_int <= 1'b0;                                                                    
    framing_error_int <= 1'b0;                                                               
    stop_strobe <= 1'b0;                                                                     
  end                                                                                        
  else                                                                                       
  begin                                                                                      
    if (baud_clock == 1'b1)                                                                  
    begin                                                                                    
      overflow_int <= 1'b0;                                                                  
      stop_strobe <= 1'b0;                                                                   
      framing_error_int <= 1'b0;                                                             
      case (rx_state)                                                                        
        receive_states_rx_idle:                                                              
        begin                                                                                
          if (receive_count == 4'b1000)                                                      
          begin                                                                              
            rx_state <= receive_states_rx_data_bits;                                         
          end                                                                                
          else                                                                               
          begin                                                                              
            rx_state <= receive_states_rx_idle;                                              
          end                                                                                
        end                                                                                  
        receive_states_rx_data_bits:                                                         
        begin                                                                                
          //  last bit has been received                                                     
          if (rx_bit_cnt == last_bit )                                                       
          begin                                                                              
            // overflow                                                                     
            rx_state <= receive_states_rx_stop_bit ;                                                                                                                                                                   
            overflow_int <= receive_full_int;                                                
            if (receive_full_int == 1'b0)                                                    
            begin                                                                            
              rx_byte <= {(bit8 & rx_shift[7]), rx_shift[6:0]};                              
            end                                                                              
          end                                                                                
          else                                                                               
          begin                                                                              
            rx_state <= receive_states_rx_data_bits; //  still clocking in bits              
          end                                                                                
        end                                                                                  
        receive_states_rx_stop_bit :                                                    
        begin                                                                                
          // framing error                                                                   
          if (receive_count == 4'b1110)                                                      
          begin                                                                              
            if (rx_filtered == 1'b0)                                                         
            begin                                                                            
              framing_error_int <= 1'b1;                                                     
            end                                                                              
          end                     
		 else if (receive_count == 4'b1111)                          
          begin                                                                              
            stop_strobe <= 1'b1;                                                             
            rx_state <= receive_states_rx_wait_state;                                              
          end                                                                                
          else                                                                               
          begin                                                                              
            rx_state <= receive_states_rx_stop_bit;                                     
          end                                                                                
        end     
        receive_states_rx_wait_state :
		begin
          if ((rx_filtered == 1'b1) || (receive_count == 4'b0110))                                                          
            begin                                                                            
              rx_state <= receive_states_rx_idle;                                                     
            end     
		  else
			begin                                        
              rx_state <= receive_states_rx_wait_state;    
			end
		end
        default:
        begin
          rx_state <= receive_states_rx_idle; 
        end
      endcase
    end
  end
end

// ----------------------------------------------------------------------------
//  receive shift register and parity calculation
// ----------------------------------------------------------------------------
assign shift_choice = {bit8, parity_en}; 
always @(posedge clk or negedge aresetn)
begin : receive_shift
  if ((!aresetn) || (!sresetn)) 
  begin
    rx_shift[8:0] <= 9'b000000000;    
    rx_bit_cnt <= 4'b0000;    
  end
  else
  begin
    if (baud_clock == 1'b1)
    begin
      if (rx_state == receive_states_rx_idle)
      begin
        rx_shift[8:0] <= 9'b000000000;      
        rx_bit_cnt <= 4'b0000;      
      end
      else if (receive_count == 4'b1111 )
      begin
        //  sample new data bit
        rx_bit_cnt <= rx_bit_cnt + 1'b1;    
        case (shift_choice)
          2'b00:
          begin
            rx_shift[5:0] <= rx_shift[6:1];  
            rx_shift[6] <= rx_filtered;      
          end
          2'b11:
          begin
            rx_shift[7:0] <= rx_shift[8:1];  
            rx_shift[8] <= rx_filtered;      
          end
          default:
          begin
            rx_shift[6:0] <= rx_shift[7:1];  
            rx_shift[7] <= rx_filtered;      
          end
        endcase
      end
    end
  end
end
// ----------------------------------------------------------------------------
//  receiver parity calculation
// ----------------------------------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : rx_par_calc
  if ((!aresetn) || (!sresetn)) 
  begin
    rx_parity_calc <= 1'b0;   
  end
  else
  begin
    if (baud_clock == 1'b1)
    begin
      if (receive_count == 4'b1111 & parity_en == 1'b1)
      begin
        rx_parity_calc <= rx_parity_calc ^ rx_filtered;     
      end
      if (rx_state == receive_states_rx_stop_bit)
      begin
        rx_parity_calc <= 1'b0;     
      end
    end
  end
end

// ----------------------------------------------------------------------------
//  latch parity error for even or odd parity
// ----------------------------------------------------------------------------
assign parity_choice = {bit8, odd_n_even}; 
always @(posedge clk or negedge aresetn)
begin : make_parity_err
  if ((!aresetn) || (!sresetn)) 
  begin
    parity_err <= 1'b0;       
  end
  else
  begin
    if (baud_clock == 1'b1 & parity_en == 1'b1 & receive_count == 4'b1111)
    begin
      case (parity_choice)
        2'b00:
        begin
          if (rx_bit_cnt == 4'b0111)
          begin
            parity_err <= rx_parity_calc ^ rx_filtered;      
          end
        end
        2'b01:
        begin
          if (rx_bit_cnt == 4'b0111)
          begin
            parity_err <= ~(rx_parity_calc ^ rx_filtered);   
          end
        end
        2'b10:
        begin
          if (rx_bit_cnt == 4'b1000)
          begin
            parity_err <= rx_parity_calc ^ rx_filtered;      
          end
        end
        2'b11:
        begin
          if (rx_bit_cnt == 4'b1000)
          begin
            parity_err <= ~(rx_parity_calc ^ rx_filtered);   
          end
        end
        default:
        begin
          parity_err <= 1'b0; 
        end
      endcase
    end
    if (clear_parity == 1'b1)
    begin
      parity_err <= 1'b0;    
    end
  end
end
// ----------------------------------------------------------------------------
//  receive full indicator process
// ----------------------------------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : receive_full_indicator
  if ((!aresetn) || (!sresetn)) 
  begin
    receive_full_int <= 1'b0; 
    fifo_write <= 1'b1;
    clear_parity_en <= 1'b0;
    clear_framing_error_en <= 1'b0;
  end
  else
  begin
    fifo_write <= 1'b1;
    clear_parity_en <= 1'b0;
    clear_framing_error_en <= 1'b0;
    if (baud_clock == 1'b1)
      //  last bit has been received 
    begin
      if (bit8 == 1'b1)
      begin
        if (parity_en == 1'b1)
        begin
          if (rx_bit_cnt == 4'b1001 & rx_state == receive_states_rx_data_bits)
          begin
            fifo_write <= 1'b0;
            clear_parity_en <= 1'b1;
            clear_framing_error_en <= 1'b1;
            if (RX_FIFO == 1'b0)
            begin
              receive_full_int <= 1'b1;   
            end
          end
        end
        else
        begin
          if (rx_bit_cnt == 4'b1000 & rx_state == receive_states_rx_data_bits)
          begin
            fifo_write <= 1'b0;
            clear_parity_en <= 1'b1;
            clear_framing_error_en <= 1'b1;
            if (RX_FIFO == 1'b0)
            begin
              receive_full_int <= 1'b1;   
            end
          end
        end
      end
      else
      begin
        if (parity_en == 1'b1)
        begin
          if (rx_bit_cnt == 4'b1000 & rx_state == receive_states_rx_data_bits)
          begin
            fifo_write <= 1'b0;
            clear_parity_en <= 1'b1;
            clear_framing_error_en <= 1'b1;
            if (RX_FIFO == 1'b0)
            begin
              receive_full_int <= 1'b1;   
            end
          end
        end
        else
        begin
          if (rx_bit_cnt == 4'b0111 & rx_state == receive_states_rx_data_bits)
          begin
            fifo_write <= 1'b0;
            clear_parity_en <= 1'b1;
            clear_framing_error_en <= 1'b1;
            if (RX_FIFO == 1'b0)
            begin
              receive_full_int <= 1'b1;   
            end
          end
        end
      end
    end
    if (read_rx_byte == 1'b1)
    begin
      receive_full_int <= 1'b0;      
    end 
  end
end

assign receive_full = receive_full_int; 

endmodule // module PROC_SUBSYSTEM_CoreUARTapb_0_Rx_async


