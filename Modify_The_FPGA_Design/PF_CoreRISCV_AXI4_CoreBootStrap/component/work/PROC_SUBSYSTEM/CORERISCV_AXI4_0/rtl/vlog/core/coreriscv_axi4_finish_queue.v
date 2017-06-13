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
// SVN $Revision: 29485 $
// SVN $Date: 2017-03-31 10:16:24 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`include "coreriscv_axi4_defines.v"
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_QUEUE(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [1:0] io_enq_bits_manager_xact_id,
  input   io_enq_bits_manager_id,
  input   io_deq_ready,
  output  io_deq_valid,
  output [1:0] io_deq_bits_manager_xact_id,
  output  io_deq_bits_manager_id,
  output  io_count
);
  `ifdef USE_REGISTERS
    reg [1:0] ram_manager_xact_id [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_manager_xact_id [0:0];
  `endif
  reg [31:0] GEN_0;
  wire [1:0] ram_manager_xact_id_T_254_data;
  wire  ram_manager_xact_id_T_254_addr;
  wire  ram_manager_xact_id_T_254_en;
  wire [1:0] ram_manager_xact_id_T_224_data;
  wire  ram_manager_xact_id_T_224_addr;
  wire  ram_manager_xact_id_T_224_mask;
  wire  ram_manager_xact_id_T_224_en;
  reg  ram_manager_id [0:0];
  reg [31:0] GEN_1;
  wire  ram_manager_id_T_254_data;
  wire  ram_manager_id_T_254_addr;
  wire  ram_manager_id_T_254_en;
  wire  ram_manager_id_T_224_data;
  wire  ram_manager_id_T_224_addr;
  wire  ram_manager_id_T_224_mask;
  wire  ram_manager_id_T_224_en;
  reg  maybe_full;
  reg [31:0] GEN_2;
  wire  T_221;
  wire  T_222;
  wire  do_enq;
  wire  T_223;
  wire  do_deq;
  wire  T_249;
  wire  GEN_7;
  wire  T_251;
  wire [1:0] T_277;
  wire  ptr_diff;
  wire [1:0] T_279;
  assign io_enq_ready = T_221;
  assign io_deq_valid = T_251;
  assign io_deq_bits_manager_xact_id = ram_manager_xact_id_T_254_data;
  assign io_deq_bits_manager_id = ram_manager_id_T_254_data;
  assign io_count = T_279[0];
  assign ram_manager_xact_id_T_254_addr = 1'h0;
  assign ram_manager_xact_id_T_254_en = 1'h1;
  assign ram_manager_xact_id_T_254_data = ram_manager_xact_id[ram_manager_xact_id_T_254_addr];
  assign ram_manager_xact_id_T_224_data = io_enq_bits_manager_xact_id;
  assign ram_manager_xact_id_T_224_addr = 1'h0;
  assign ram_manager_xact_id_T_224_mask = do_enq;
  assign ram_manager_xact_id_T_224_en = do_enq;
  assign ram_manager_id_T_254_addr = 1'h0;
  assign ram_manager_id_T_254_en = 1'h1;
  assign ram_manager_id_T_254_data = ram_manager_id[ram_manager_id_T_254_addr];
  assign ram_manager_id_T_224_data = io_enq_bits_manager_id;
  assign ram_manager_id_T_224_addr = 1'h0;
  assign ram_manager_id_T_224_mask = do_enq;
  assign ram_manager_id_T_224_en = do_enq;
  assign T_221 = maybe_full == 1'h0;
  assign T_222 = io_enq_ready & io_enq_valid;
  assign do_enq = T_222;
  assign T_223 = io_deq_ready & io_deq_valid;
  assign do_deq = T_223;
  assign T_249 = do_enq != do_deq;
  assign GEN_7 = T_249 ? do_enq : maybe_full;
  assign T_251 = T_221 == 1'h0;
  assign T_277 = 1'h0 - 1'h0;
  assign ptr_diff = T_277[0:0];
  assign T_279 = {maybe_full,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_manager_xact_id[initvar] = GEN_0[1:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_manager_id[initvar] = GEN_1[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_2 = {1{$random}};
  maybe_full = GEN_2[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_manager_xact_id_T_224_en & ram_manager_xact_id_T_224_mask) begin
      ram_manager_xact_id[ram_manager_xact_id_T_224_addr] <= ram_manager_xact_id_T_224_data;
    end
    if(ram_manager_id_T_224_en & ram_manager_id_T_224_mask) begin
      ram_manager_id[ram_manager_id_T_224_addr] <= ram_manager_id_T_224_data;
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_249) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
