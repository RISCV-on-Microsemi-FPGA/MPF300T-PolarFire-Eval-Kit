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
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY(
  input   clk,
  input   reset,
  input   io_interrupt,
  output  io_plic_valid,
  input   io_plic_ready,
  input   io_plic_complete
);
  reg  inFlight;
  reg [31:0] GEN_2;
  wire  T_6;
  wire  GEN_0;
  wire  GEN_1;
  wire  T_10;
  wire  T_11;
  assign io_plic_valid = T_11;
  assign T_6 = io_interrupt & io_plic_ready;
  assign GEN_0 = T_6 ? 1'h1 : inFlight;
  assign GEN_1 = io_plic_complete ? 1'h0 : GEN_0;
  assign T_10 = inFlight == 1'h0;
  assign T_11 = io_interrupt & T_10;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_2 = {1{$random}};
  inFlight = GEN_2[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      inFlight <= 1'h0;
    end else begin
      if(io_plic_complete) begin
        inFlight <= 1'h0;
      end else begin
        if(T_6) begin
          inFlight <= 1'h1;
        end
      end
    end
  end
endmodule
