// ****************************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2015 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: 
//
// SVN Revision Information:
// SVN $Revision: 25747 $
// SVN $Date: 2015-12-14 03:02:25 +0000 (Mon, 14 Dec 2015) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`timescale 1ns/1ns
module AHBL_Slave (
          HCLK,
          HRESETN,
          HSEL,
          HADDR,
          HWRITE,
          HREADY_slave,
          HTRANS,
          HSIZE,
          HWDATA,
          HBURST,
          HMASTLOCK,

          HREADYOUT_slave,
          HRESP,
          HRDATA
);
////////////////////////////////////////////////////////////////////////////
// User modifiable parameters
////////////////////////////////////////////////////////////////////////////
parameter RAM_ADDR_WIDTH = 7; // Determines the size of the wr_golden_mem and
                              // rd_actual_mem RAM buffers

localparam RAM_DEPTH = (2**RAM_ADDR_WIDTH);
////////////////////////////////////////////////////////////////////////////////
// I/O port declarations
////////////////////////////////////////////////////////////////////////////////
                        // Inputs
input                   HCLK;
input                   HRESETN;
input                   HSEL;
input   [31:0]          HADDR;
input                   HWRITE;
input                   HREADY_slave;
input   [1:0]           HTRANS;
input   [2:0]           HSIZE;
input   [31:0]          HWDATA;
input   [2:0]           HBURST;
input                   HMASTLOCK;

                        // Outputs
output                  HREADYOUT_slave;
output                  HRESP;
output  [31:0]          HRDATA;

////////////////////////////////////////////////////////////////////////////////
// Internal signal declarations
////////////////////////////////////////////////////////////////////////////////
reg     [31:0]          HADDRWriteReg;
reg     [31:0]          HADDRReadReg;
reg     [2:0]           HSIZEReg;                
reg     [7:0]           wr_actual_mem [0:RAM_DEPTH-1]; // Infer RAM
reg                     state;
integer                 lp_cnt;


assign HRESP           = 1'b0;
assign HREADYOUT_slave = 1'b1;
////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////
// AHBL transfer status 
localparam  IDLE        = 2'b00;
localparam  BUSY        = 2'b01;

// AHBL transfer size
localparam  BYTE        = 2'b00;
localparam  HALFWORD    = 2'b01;
localparam  WORD        = 2'b10;

////////////////////////////////////////////////////////////////////////////////
// Memory initialization for simulation
////////////////////////////////////////////////////////////////////////////////
initial
begin
    for(lp_cnt = 0; lp_cnt <= RAM_DEPTH-1; lp_cnt = lp_cnt + 1)
    begin
        wr_actual_mem[lp_cnt] <= 8'b0;
    end
end

////////////////////////////////////////////////////////////////////////////////
// AHB Write logic
////////////////////////////////////////////////////////////////////////////////
// State encoding
localparam AHB_IDLE     = 1'b0;
localparam AHB_WRITE    = 1'b1;

always @ (posedge HCLK or negedge HRESETN)
begin
    if (!HRESETN)
    begin
        state <= AHB_IDLE;
        HADDRWriteReg <= 32'b0;
        HSIZEReg <= 3'b0;
    end
    else
    begin
        state <= state; // Remain in the same state by default
        case (state)
            AHB_IDLE:
                begin
                    if(HSEL & HREADY_slave & (HTRANS != IDLE) & (HTRANS != BUSY))
                    begin
                        // Register the write address.
                        HADDRWriteReg <= HADDR;
                        HSIZEReg <= HSIZE;
                        if (HWRITE)
                            state <= AHB_WRITE;
                    end
                end
            AHB_WRITE:
                begin
                    if(HSEL & HREADY_slave)
                    begin
                        if (HSIZEReg[2:0] == WORD) // 32-bit transfer
                        begin
                            wr_actual_mem[HADDRWriteReg]      <= HWDATA[7:0];
                            wr_actual_mem[HADDRWriteReg+3'h1] <= HWDATA[15:8];
                            wr_actual_mem[HADDRWriteReg+3'h2] <= HWDATA[23:16];
                            wr_actual_mem[HADDRWriteReg+3'h3] <= HWDATA[31:24];
                        end
                        else if (HSIZEReg[2:0] == HALFWORD) // 16-bit transfer
                        begin
                            if (HADDRWriteReg[1:0] == 2'b00)
                            begin
                                wr_actual_mem[HADDRWriteReg]      <= HWDATA[7:0];
                                wr_actual_mem[HADDRWriteReg+3'h1] <= HWDATA[15:8];
                            end 
                            else if (HADDRWriteReg[1:0] == 2'b10)
                            begin
                                wr_actual_mem[HADDRWriteReg]      <= HWDATA[23:16];
                                wr_actual_mem[HADDRWriteReg+3'h1] <= HWDATA[31:24];
                            end
                        end
                        else if (HSIZEReg[2:0] == BYTE) // 8-bit transfer
                        begin
                            if (HADDRWriteReg[1:0] == 2'b00)
                                wr_actual_mem[HADDRWriteReg] <= HWDATA[7:0];
                            else if (HADDRWriteReg[1:0] == 2'b01)
                                wr_actual_mem[HADDRWriteReg] <= HWDATA[15:8];
                            else if (HADDRWriteReg[1:0] == 2'b10)
                                wr_actual_mem[HADDRWriteReg] <= HWDATA[23:16];
                            else if (HADDRWriteReg[1:0] == 2'b11)
                                wr_actual_mem[HADDRWriteReg] <= HWDATA[31:24];
                        end
                        
                        if ((HTRANS != IDLE) && (HTRANS != BUSY))
                        begin // Pipelined address phase
                            HADDRWriteReg <= HADDR;
                            HSIZEReg <= HSIZE;
                            if (!HWRITE)
                                // FSM stays in the current state by default
                                state <= AHB_IDLE;
                        end
                        else // No pipelined address phase
                            state <= AHB_IDLE;
                    end
                end
        endcase
    end
end

////////////////////////////////////////////////////////////////////////////////
// AHB Read logic
////////////////////////////////////////////////////////////////////////////////
always @ (posedge HCLK or negedge HRESETN)
begin
    if (!HRESETN)
        HADDRReadReg <= 32'b0;
    else if (!HWRITE & HSEL & HREADY_slave & (HTRANS != IDLE) & (HTRANS != BUSY))
        // Register the read address (word aligned)
        HADDRReadReg <= {HADDR[31:2], 2'b0};
    else
        HADDRReadReg <= HADDRReadReg;
end

assign HRDATA = {wr_actual_mem[HADDRReadReg+3'h3],
                 wr_actual_mem[HADDRReadReg+3'h2],
                 wr_actual_mem[HADDRReadReg+3'h1],
                 wr_actual_mem[HADDRReadReg]};

endmodule