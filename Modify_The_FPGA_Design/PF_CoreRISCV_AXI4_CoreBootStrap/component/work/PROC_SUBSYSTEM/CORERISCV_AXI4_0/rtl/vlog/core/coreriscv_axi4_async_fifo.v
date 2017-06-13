// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: 29484 $
// SVN $Date: 2017-03-31 09:57:25 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`include "coreriscv_axi4_defines.v"
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ASYNC_FIFO (
    // Write Interface
    clk_w,
    reset_w,
    ready_w,
    valid_w,
    data_w,
    
    // Read Interface
    clk_r,
    reset_r,
    ready_r,
    valid_r,
    data_r
);
////////////////////////////////////////////////////////////////////////////////
// Parameter
////////////////////////////////////////////////////////////////////////////////
parameter DEPTH_LG_2 = 0;
parameter WIDTH      = 32;
parameter RESET_SYNC_WR_2_RD = 0;

////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////
localparam DEPTH = 2**DEPTH_LG_2;
                          
////////////////////////////////////////////////////////////////////////////////
// I/O Declarations
////////////////////////////////////////////////////////////////////////////////
input                   clk_w;
input                   reset_w;
input                   valid_w;
input   [WIDTH-1:0]     data_w;
input                   clk_r;
input                   reset_r;
input                   ready_r;
output                  ready_w;
output                  valid_r;
output  [WIDTH-1:0]     data_r;

// Internal signals
reg [1:0]               reset_sync_reg;
reg                     wr_reset;
reg                     rd_reset;

// Reset synchronizer to synchronize the reset from either the read domain to the 
// write domain or from the write domain to the read domain based on the
// RESET_SYNC_WR_2_RD parameter. Synchronized reset will be asynchronously
// asserted and synchronously deasserted.
generate
   if (RESET_SYNC_WR_2_RD == 1)
      begin
         always @ (posedge clk_r or posedge reset_w)
            begin
               if (reset_w)
                  begin
                     reset_sync_reg <= 2'b11;
                  end
               else
                  begin
                     reset_sync_reg <= {1'b0, reset_sync_reg[1]};
                  end
            end
        always @ (*)
            begin
                wr_reset = reset_w;
                rd_reset = reset_r | reset_sync_reg[0];
            end
      end
   else
      begin
         always @ (posedge clk_w or posedge reset_r)
            begin
               if (reset_r)
                  begin
                     reset_sync_reg <= 2'b11;
                  end
               else
                  begin
                     reset_sync_reg <= {1'b0, reset_sync_reg[1]};
                  end
            end
        always @ (*)
            begin
                wr_reset = reset_w | reset_sync_reg[0];
                rd_reset = reset_r;
            end
      end
endgenerate

generate 
    if  (DEPTH > 1)
        begin
            // Internal signals declarations
            `ifdef USE_REGISTERS
                reg     [WIDTH-1:0]         fifoMem [ 0 : DEPTH - 1] /* synthesis syn_ramstyle = "registers" */;
            `else
                reg     [WIDTH-1:0]         fifoMem [ 0 : DEPTH - 1];
            `endif
            
            reg     [DEPTH_LG_2:0]      wrAddrReg_w;
            wire    [DEPTH_LG_2:0]      wrAddrNxt_w;
            reg     [DEPTH_LG_2:0]      wrAddrGrayReg_w;
            wire    [DEPTH_LG_2:0]      wrAddrGrayNxt_w;
            reg     [DEPTH_LG_2:0]      rdAddrReg_r;
            wire    [DEPTH_LG_2:0]      rdAddrNxt_r;
            reg     [DEPTH_LG_2:0]      rdAddrGrayReg_r;
            wire    [DEPTH_LG_2:0]      rdAddrGrayNxt_r;
            reg     [DEPTH_LG_2:0]      wrAddrGrayReg_sync;
            reg     [DEPTH_LG_2:0]      rdAddrGrayReg_sync;
            reg     [DEPTH_LG_2:0]      wrAddrGrayReg_r;
            reg     [DEPTH_LG_2:0]      rdAddrGrayReg_w;
            wire                        full_w;
            wire                        fire_w;
            wire                        empty_r;
            wire                        fire_r;
            
            // Pointer logic
            assign full_w          = ~(wrAddrGrayReg_w[DEPTH_LG_2]         == rdAddrGrayReg_w[DEPTH_LG_2]) &
                                      (wrAddrGrayReg_w[DEPTH_LG_2 - 1 : 0] == rdAddrGrayReg_w[DEPTH_LG_2 - 1 : 0 ]);
            assign wrAddrNxt_w     = wrAddrReg_w + 1'b1; // OK / expected to overflow
            assign wrAddrGrayNxt_w = wrAddrNxt_w ^ (wrAddrNxt_w >> 1);
            assign rdAddrNxt_r     = rdAddrReg_r + 1'b1; // OK / expected to overflow
            assign rdAddrGrayNxt_r = rdAddrNxt_r ^ (rdAddrNxt_r >> 1);
            assign empty_r         = (wrAddrGrayReg_r == rdAddrGrayReg_r); 
            assign ready_w = ~full_w;
            assign fire_w  = ready_w & valid_w;
            assign valid_r = ~empty_r;
            assign fire_r = ready_r & valid_r;
            
            // RAM inference
            always @(posedge clk_w)
                begin
                    if (fire_w)
                        begin
                            fifoMem[wrAddrReg_w[DEPTH_LG_2-1:0]] <= data_w;
                        end
                end
            assign data_r = fifoMem[rdAddrReg_r[DEPTH_LG_2-1:0]];
            
            
            always @(posedge clk_w or posedge wr_reset)
                begin
                    if (wr_reset)
                        begin
                            wrAddrReg_w        <= 'b0;
                            wrAddrGrayReg_w    <= 'b0;
                            rdAddrGrayReg_sync <= 'b0;
                            rdAddrGrayReg_w    <= 'b0;
                        end
                    else
                        begin
                            if (fire_w)
                                begin
                                    wrAddrReg_w     <= wrAddrNxt_w;
                                    wrAddrGrayReg_w <= wrAddrGrayNxt_w;  
                                end
                            rdAddrGrayReg_sync <= rdAddrGrayReg_r;
                            rdAddrGrayReg_w    <= rdAddrGrayReg_sync;
                        end
                end
                
            always @(posedge clk_r or posedge rd_reset)
                begin
                    if (rd_reset)
                        begin
                            rdAddrReg_r        <= 'b0;
                            rdAddrGrayReg_r    <= 'b0;                        
                            wrAddrGrayReg_sync <= 'b0;
                            wrAddrGrayReg_r    <= 'b0;
                        end
                    else
                        begin
                            if (fire_r)
                                begin
                                    rdAddrReg_r     <= rdAddrNxt_r;
                                    rdAddrGrayReg_r <= rdAddrGrayNxt_r;
                                end
                            wrAddrGrayReg_sync <= wrAddrGrayReg_w;
                            wrAddrGrayReg_r    <= wrAddrGrayReg_sync;
                        end
                end
        end
    else
        begin
            // Internal signal declarations
            reg     [WIDTH-1:0]         fifoMem;
            reg                         wrAddrReg_w;
            wire                        wrAddrNxt_w;
            reg                         rdAddrReg_r;
            wire                        rdAddrNxt_r;
            reg                         wrAddrReg_sync;
            reg                         rdAddrReg_sync;
            reg                         wrAddrReg_r;
            reg                         rdAddrReg_w;
            wire                        full_w;
            wire                        fire_w;
            wire                        empty_r;
            wire                        fire_r;
            
            // Pointer logic
            assign full_w      = ~(wrAddrReg_w == rdAddrReg_w);            
            assign wrAddrNxt_w = ~wrAddrReg_w;            
            assign rdAddrNxt_r = ~rdAddrReg_r;            
            assign empty_r     = (wrAddrReg_r == rdAddrReg_r);
            assign ready_w     = ~full_w;
            assign fire_w      = ready_w & valid_w;
            assign valid_r     = ~empty_r;
            assign fire_r      = ready_r & valid_r;
        
            always @(posedge clk_w)
                begin
                    if (fire_w)
                        begin
                            fifoMem <= data_w;
                        end
                end
            assign data_r = fifoMem;
            
            always @(posedge clk_w or posedge wr_reset)
                begin
                    if (wr_reset)
                        begin
                            wrAddrReg_w    <= 1'b0;
                            rdAddrReg_sync <= 1'b0;
                            rdAddrReg_w    <= 1'b0;
                        end
                    else
                        begin
                            if (fire_w)
                                begin
                                    wrAddrReg_w <= wrAddrNxt_w;
                                end
                            rdAddrReg_sync <= rdAddrReg_r;
                            rdAddrReg_w    <= rdAddrReg_sync;
                        end
                end
      
            always @(posedge clk_r or posedge rd_reset)
                begin
                    if (rd_reset)
                        begin
                            rdAddrReg_r    <= 1'b0;
                            wrAddrReg_sync <= 1'b0;
                            wrAddrReg_r    <= 1'b0;
                        end
                    else
                        begin
                            if (fire_r)
                                begin
                                    rdAddrReg_r <= rdAddrNxt_r;
                                end
                            wrAddrReg_sync <= wrAddrReg_w;
                            wrAddrReg_r    <= wrAddrReg_sync;
                        end
                end
        end
endgenerate

endmodule // AsyncFifo