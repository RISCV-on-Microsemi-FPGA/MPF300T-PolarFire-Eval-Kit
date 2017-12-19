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

`timescale 1 ns/100 ps


module CoreUART_apb_CoreUART_apb_0_fifo_256x8(DO, RCLOCK, WCLOCK, DI, WRB, RDB, RESET, FULL, EMPTY);		
output [7:0] DO;
input RCLOCK;
input WCLOCK;
input [7:0] DI;
input WRB;
input RDB;
input RESET;
output FULL;
output EMPTY;

parameter SYNC_RESET = 0;
parameter [6:0] LEVEL = 128;

wire [7:0] DO;
wire  AEMPTY, AFULL, FULL, EMPTY;

CoreUART_apb_CoreUART_apb_0_fifo_ctrl_256 #(.SYNC_RESET(SYNC_RESET)) fifo_256x8_g5 (.data_in(DI), .data_out(DO), .write_n(WRB), .read_n(RDB), .clock(WCLOCK), 
			  .full(FULL), .empty(EMPTY), .half(GEQTH), .reset_n(RESET), .LEVEL(LEVEL) );

endmodule

/*********************************************************/
// MODULE:		Synchronous FIFO
//
// FILE NAME:	fifo_ctl.v
// 
// CODE TYPE:	Register Transfer Level
//
// DESCRIPTION:	This module defines a Synchronous FIFO. The
// FIFO memory is implemented as a ring buffer. The read
// pointer points to the beginning of the buffer, while the
// write pointer points to the end of the buffer. Note that
// in this RTL version, the memory has one more location than
// the FIFO needs in order to calculate the FIFO count
// correctly.
//
/*********************************************************/

// fifo control logic 
module CoreUART_apb_CoreUART_apb_0_fifo_ctrl_256(
		clock,
		reset_n,
		data_in,
		read_n,
		write_n,
		LEVEL,
		data_out,
		full,
		empty,
		half);
		
parameter SYNC_RESET = 0;
parameter FIFO_DEPTH = 256;	// Depth of FIFO (number of bytes)
parameter FIFO_BITS = 8;	// Number of bits required to
parameter FIFO_WIDTH = 8;	// Width of FIFO data

// INPUTS
input					clock;		// Clock input
input					reset_n;	// Active low reset
input [FIFO_WIDTH-1:0]	                data_in; 	// Data input to FIFO
input					read_n;	 	// Read FIFO (active low)
input					write_n;	// Write FIFO (active low)
input [6:0]                             LEVEL;
// OUTPUTS
output [FIFO_WIDTH-1:0]	                data_out;	// FIFO output data
output						full;		// FIFO is full
output						empty;		// FIFO is empty
output						half;		// FIFO is half full
										// or more

// INOUTS

// SIGNAL DECLARATIONS
wire					clock;
wire					reset_n;
wire [FIFO_WIDTH-1:0]	data_in;
wire					read_n;
wire					write_n;
reg  [FIFO_WIDTH-1:0]	data_out;
wire					full;
wire					empty;
wire					half;
wire  [FIFO_WIDTH-1:0]	data_out_0;
reg  read_n_hold;

							// How many locations in the FIFO
							// are occupied?
reg [FIFO_BITS-1:0]	counter;
							// FIFO read pointer points to
							// the location in the FIFO to
							// read from next
reg [FIFO_BITS-1:0]	rd_pointer;
							// FIFO write pointer points to
							// the location in the FIFO to
							// write to next
reg [FIFO_BITS-1:0]	wr_pointer;

wire aresetn;
wire sresetn; 

// ASSIGN STATEMENTS
assign aresetn = (SYNC_RESET==1) ? 1'b1 : reset_n;
assign sresetn = (SYNC_RESET==1) ? reset_n : 1'b1;
assign full = (counter == FIFO_DEPTH-1) ? 1'b1 : 1'b0;
assign empty = (counter == 0) ? 1'b1 : 1'b0;
assign half = (counter >= LEVEL) ? 1'b1 : 1'b0;

// MAIN CODE

// This block contains all devices affected by the clock 
// and reset inputs
always @(posedge clock or negedge aresetn ) begin
	if ((!aresetn) || (!sresetn)) begin
		// Reset the FIFO pointer
		rd_pointer <= {FIFO_BITS{1'b0}};
		wr_pointer <= {FIFO_BITS{1'b0}};
		counter <= {FIFO_BITS{1'b0}};
	end
	else begin
		if (~read_n) begin
			// If we are doing a simultaneous read and write,
			// there is no change to the counter
			if (write_n) begin
				// Decrement the FIFO counter
				counter <= counter - 1;
			end

			// Increment the read pointer
			// Check if the read pointer has gone beyond the
			// depth of the FIFO. If so, set it back to the
			// beginning of the FIFO
			if (rd_pointer == FIFO_DEPTH-1)
				rd_pointer <= {FIFO_BITS{1'b0}};
			else
				rd_pointer <= rd_pointer + 1;
		end
		if (~write_n) begin
			// Check for FIFO overflow
			if (counter >= FIFO_DEPTH) begin
				$display("\nERROR at time %0t:", $time);
				$display("FIFO Overflow\n");
							
				// Use $stop for debugging
				$stop;
			end

			// If we are doing a simultaneous read and write,
			// there is no change to the counter
			if (read_n) begin
				// Increment the FIFO counter
				counter <= counter + 1;
			end

			// Increment the write pointer
			// Check if the write pointer has gone beyond the
			// depth of the FIFO. If so, set it back to the
			// beginning of the FIFO
			if (wr_pointer == FIFO_DEPTH-1)
				wr_pointer <= {FIFO_BITS{1'b0}};
			else
				wr_pointer <= wr_pointer + 1;
		end
	end
end

always @(posedge clock or negedge aresetn ) 
  begin
    if  ((!aresetn) || (!sresetn)) 
     begin
       read_n_hold <= 1'b0;
       data_out <= 1'b0;
     end 
    else
     begin
       read_n_hold <= read_n;
       if (read_n_hold  == 1'b0)
        begin
          data_out <= data_out_0;
        end
       else 
        begin
          data_out <= data_out;
        end
     end
  end

CoreUART_apb_CoreUART_apb_0_ram256x8_g5 ram256x8_g5(.Data(data_in), .Q(data_out_0), .WAddress(wr_pointer), 
	                    .RAddress(rd_pointer), .WE(write_n), .RE(read_n), .WClock(clock), 
				  .RClock(clock), .reset_n(reset_n) ); 
endmodule


module CoreUART_apb_CoreUART_apb_0_ram256x8_g5(Data,Q,WAddress,RAddress,WE,RE,WClock,RClock,reset_n);  
input [7:0] Data;
input [7:0] WAddress, RAddress;
input WE, RE, WClock, RClock, reset_n;
output [7:0] Q;

wire [19:0] DOUT_RAM_0;
wire [13:0] RADDR_int;
wire [13:0] WADDR_int;
wire INV_0_Y, VCC, GND;

VCC VCC_1_net(.Y(VCC));
GND GND_1_net(.Y(GND));
INV INV_0(.A(WE), .Y(INV_0_Y)); 
INV INV_1(.A(RE), .Y(INV_1_Y)); 

assign Q = DOUT_RAM_0[7:0];
assign RADDR_int = {2'b0, RAddress[7:0], 4'b0};
assign WADDR_int = {2'b0, WAddress[7:0], 4'b0};

    RAM1K20
	RAM_R0C0 (  .A_DOUT        (DOUT_RAM_0),           
                .B_DOUT        (/*NC*/), 
                .ACCESS_BUSY   (/*NC*/), 
                .BUSY_FB       (1'b1),
                .ECC_EN        (1'b0), 
                .ECC_BYPASS    (1'b0), 
                .DB_DETECT     (/*NC*/), 
                .SB_CORRECT    (/*NC*/),
                .A_CLK         (RClock), 
                .A_DOUT_EN     (1'b1), 
                .A_DOUT_SRST_N (1'b1),
                .A_DOUT_ARST_N (1'b1),
                .A_BYPASS      (1'b1), 
                .A_BLK_EN      ({INV_1_Y, 2'b11}), 
                .A_DIN         (20'b0), 
                .A_ADDR        (RADDR_int), 
                .A_WEN         (2'b00), 
                .A_REN         (1'b1), 
                .A_WIDTH       (3'b100), 
                .A_WMODE       (2'b0), 
                .B_CLK         (WClock), 
                .B_DOUT_EN     (1'b1), 
                .B_DOUT_SRST_N (1'b1),
                .B_DOUT_ARST_N (1'b1),
                .B_BYPASS      (1'b1), 
                .B_BLK_EN      ({INV_0_Y, 2'b11}), 
                .B_DIN         ({12'b0, Data[7:0]}), 
                .B_ADDR        (WADDR_int), 
                .B_WEN         (2'b11), 
                .B_REN         (1'b0), 
                .B_WIDTH       (3'b100), 
                .B_WMODE       (2'b0)                       
    );   
endmodule