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

`define false 1'b 0
`define FALSE 1'b 0
`define true 1'b 1
`define TRUE 1'b 1


`timescale 1 ns / 1 ns // timescale for following modules

module PROC_SUBSYSTEM_CoreUARTapb_0_Clock_gen (clk,
  reset_n,
  baud_val,
  baud_clock,
  xmit_pulse,
  BAUD_VAL_FRACTION);
  
parameter BAUD_VAL_FRCTN_EN = 0;
parameter SYNC_RESET = 0;

input   clk; //  system clock
input   reset_n; //  active low async reset
input   [12:0] baud_val; //  value loaded into cntr  
input   [2:0]  BAUD_VAL_FRACTION;  // used to modify baud value when BAUD_VAL_FRCTN_EN = 1
output  baud_clock; //  16x baud clock pulse
output  xmit_pulse; 
//  transmit pulse
wire    baud_clock; 
wire    xmit_pulse; 
reg     [12:0] baud_cntr; //  16x clock division counter reg.
reg     baud_clock_int; //  internal 16x baud clock pulse
reg     xmit_clock; 

// ------------------------------------------------
//  generate a x16 baud clock pulse
// ------------------------------------------------
reg     [3:0] xmit_cntr; //  baud tx counter reg.

// ------------------------------------------------
//  Sync/Async Reset Mode
// ------------------------------------------------
wire aresetn;
wire sresetn; 
assign aresetn = (SYNC_RESET==1) ? 1'b1 : reset_n;
assign sresetn = (SYNC_RESET==1) ? reset_n : 1'b1;

generate
if(BAUD_VAL_FRCTN_EN == 1'b1)
   begin
    // Add one cycle 1/8, 2/8, 3/8, 4/8, 5/8, 6/8, 7/8 of the time by freezing 
    // baud_cntr for one cycle when count reaches 0 for certain xmit_cntr values.
    // xmit_cntr values are identifed by looking for bits of this counter
    // being certain combinations.
    reg baud_cntr_one;
    always @(posedge clk or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            baud_cntr_one <= 1'b0;
        end
        else
        begin
            if (baud_cntr == 13'b0000000000001)
            begin
                baud_cntr_one <= 1'b1;
            end
            else
            begin
                baud_cntr_one <= 1'b0;
            end
        end
    end

      always @(posedge clk or negedge aresetn)
         begin : make_baud_cntr
           if ((!aresetn) || (!sresetn))
              begin
                baud_cntr <= 13'b0000000000000;	
                baud_clock_int <= 1'b0;	
              end
           else
              begin
                 case(BAUD_VAL_FRACTION)
                    3'b000: begin
                             if (baud_cntr === 13'b0000000000000)       //0
                                begin
                                  baud_cntr <= baud_val;
                                  baud_clock_int <= 1'b1;
                                end
                              else
                                begin
                                  baud_cntr <= baud_cntr - 1'b 1;
                                  baud_clock_int <= 1'b0;
                                end
                           end
                    3'b001: begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((xmit_cntr[2:0] == 3'b111) && (baud_cntr_one == 1'b1))  //0.125
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end

                    3'b010:begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((xmit_cntr[1:0] == 2'b11) && (baud_cntr_one == 1'b1))  //0.25
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    3'b011:  begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((((xmit_cntr[2] == 1'b1) || (xmit_cntr[1] == 1'b1)) && (xmit_cntr[0] == 1'b1)) && (baud_cntr_one == 1'b1)) //0.375
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    3'b100:   begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((xmit_cntr[0] == 1'b1) && (baud_cntr_one == 1'b1)) //0.5
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    3'b101:  begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((((xmit_cntr[2] == 1'b1) && (xmit_cntr[1] == 1'b1)) || (xmit_cntr[0] == 1'b1)) && (baud_cntr_one == 1'b1))  //0.625  
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    3'b110: begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if (((xmit_cntr[1] == 1'b1) || (xmit_cntr[0] == 1'b1)) && (baud_cntr_one == 1'b1))  //0.75
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    3'b111:  begin
                             if (baud_cntr == 13'b0000000000000)
                               begin
                                 if ((((xmit_cntr[1] == 1'b1) || (xmit_cntr[0] == 1'b1)) || (xmit_cntr[2:0] == 3'b100)) && (baud_cntr_one == 1'b1))  //0.875
                                   begin
                                      baud_cntr <= baud_cntr;
                                      baud_clock_int <= 1'b0;
                                   end
                                 else
                                   begin
                                      baud_cntr <= baud_val;
                                      baud_clock_int <= 1'b1;
                                   end
                               end
                             else
                                begin
                                  baud_cntr <= baud_cntr - 1'b1;
                                  baud_clock_int <= 1'b0;
                                end
                          end
                    default: begin
                             if (baud_cntr === 13'b0000000000000) 
                                begin
                                  baud_cntr <= baud_val;
                                  baud_clock_int <= 1'b1;
                                end
                              else
                                begin
                                  baud_cntr <= baud_cntr - 1'b 1;
                                  baud_clock_int <= 1'b0;
                                end
                           end
                    endcase
            end
        end
   end
   
else if(BAUD_VAL_FRCTN_EN == 1'b0)
   begin
      always @(posedge clk or negedge aresetn)
         begin : make_baud_cntr
              if ((!aresetn) || (!sresetn))
                 begin
                    baud_cntr <= 13'b0000000000000;
                    baud_clock_int <= 1'b0;
                 end
             else
               begin
                 if (baud_cntr === 13'b0000000000000)
                   begin
                     baud_cntr <= baud_val;
                     baud_clock_int <= 1'b1;
                   end
                 else
                   begin
                     baud_cntr <= baud_cntr - 1'b 1;
                     baud_clock_int <= 1'b0;
                   end
               end
         end
    end
endgenerate

// --------------------------------------------------
//  generate a transmit clock pulse
// --------------------------------------------------
always @(posedge clk or negedge aresetn)
begin : make_xmit_clock
  if ((!aresetn) || (!sresetn))
  begin
    xmit_cntr <= 4'b 0000;
    xmit_clock <= 1'b 0;
  end
  else
  begin
    if (baud_clock_int === 1'b 1)
    begin
      xmit_cntr <= xmit_cntr + 1'b 1;
      if (xmit_cntr === 4'b 1111)
      begin
        xmit_clock <= 1'b 1;
      end
      else
      begin
        xmit_clock <= 1'b 0;
      end
    end
  end
end

assign xmit_pulse = xmit_clock & baud_clock_int; 
assign baud_clock = baud_clock_int; 

endmodule // module PROC_SUBSYSTEM_CoreUARTapb_0_Clock_gen

