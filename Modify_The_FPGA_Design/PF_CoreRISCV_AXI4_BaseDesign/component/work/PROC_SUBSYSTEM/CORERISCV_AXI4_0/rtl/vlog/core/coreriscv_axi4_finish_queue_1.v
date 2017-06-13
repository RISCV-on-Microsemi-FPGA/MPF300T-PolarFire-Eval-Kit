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
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_QUEUE_1(
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
  output [1:0] io_count
);
  `ifdef USE_REGISTERS
    reg [1:0] ram_manager_xact_id [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_manager_xact_id [0:1];
  `endif
  reg [31:0] GEN_0;
  wire [1:0] ram_manager_xact_id_T_264_data;
  wire  ram_manager_xact_id_T_264_addr;
  wire  ram_manager_xact_id_T_264_en;
  wire [1:0] ram_manager_xact_id_T_226_data;
  wire  ram_manager_xact_id_T_226_addr;
  wire  ram_manager_xact_id_T_226_mask;
  wire  ram_manager_xact_id_T_226_en;
  reg  ram_manager_id [0:1];
  reg [31:0] GEN_1;
  wire  ram_manager_id_T_264_data;
  wire  ram_manager_id_T_264_addr;
  wire  ram_manager_id_T_264_en;
  wire  ram_manager_id_T_226_data;
  wire  ram_manager_id_T_226_addr;
  wire  ram_manager_id_T_226_mask;
  wire  ram_manager_id_T_226_en;
  reg  T_218;
  reg [31:0] GEN_2;
  reg  T_220;
  reg [31:0] GEN_3;
  reg  maybe_full;
  reg [31:0] GEN_4;
  wire  ptr_match;
  wire  T_223;
  wire  empty;
  wire  full;
  wire  T_224;
  wire  do_enq;
  wire  T_225;
  wire  do_deq;
  wire [1:0] T_252;
  wire  T_253;
  wire  GEN_7;
  wire [1:0] T_257;
  wire  T_258;
  wire  GEN_8;
  wire  T_259;
  wire  GEN_9;
  wire  T_261;
  wire  T_263;
  wire [1:0] T_287;
  wire  ptr_diff;
  wire  T_288;
  wire [1:0] T_289;
  assign io_enq_ready = T_263;
  assign io_deq_valid = T_261;
  assign io_deq_bits_manager_xact_id = ram_manager_xact_id_T_264_data;
  assign io_deq_bits_manager_id = ram_manager_id_T_264_data;
  assign io_count = T_289;
  assign ram_manager_xact_id_T_264_addr = T_220;
  assign ram_manager_xact_id_T_264_en = 1'h1;
  assign ram_manager_xact_id_T_264_data = ram_manager_xact_id[ram_manager_xact_id_T_264_addr];
  assign ram_manager_xact_id_T_226_data = io_enq_bits_manager_xact_id;
  assign ram_manager_xact_id_T_226_addr = T_218;
  assign ram_manager_xact_id_T_226_mask = do_enq;
  assign ram_manager_xact_id_T_226_en = do_enq;
  assign ram_manager_id_T_264_addr = T_220;
  assign ram_manager_id_T_264_en = 1'h1;
  assign ram_manager_id_T_264_data = ram_manager_id[ram_manager_id_T_264_addr];
  assign ram_manager_id_T_226_data = io_enq_bits_manager_id;
  assign ram_manager_id_T_226_addr = T_218;
  assign ram_manager_id_T_226_mask = do_enq;
  assign ram_manager_id_T_226_en = do_enq;
  assign ptr_match = T_218 == T_220;
  assign T_223 = maybe_full == 1'h0;
  assign empty = ptr_match & T_223;
  assign full = ptr_match & maybe_full;
  assign T_224 = io_enq_ready & io_enq_valid;
  assign do_enq = T_224;
  assign T_225 = io_deq_ready & io_deq_valid;
  assign do_deq = T_225;
  assign T_252 = T_218 + 1'h1;
  assign T_253 = T_252[0:0];
  assign GEN_7 = do_enq ? T_253 : T_218;
  assign T_257 = T_220 + 1'h1;
  assign T_258 = T_257[0:0];
  assign GEN_8 = do_deq ? T_258 : T_220;
  assign T_259 = do_enq != do_deq;
  assign GEN_9 = T_259 ? do_enq : maybe_full;
  assign T_261 = empty == 1'h0;
  assign T_263 = full == 1'h0;
  assign T_287 = T_218 - T_220;
  assign ptr_diff = T_287[0:0];
  assign T_288 = maybe_full & ptr_match;
  assign T_289 = {T_288,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_manager_xact_id[initvar] = GEN_0[1:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_manager_id[initvar] = GEN_1[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_2 = {1{$random}};
  T_218 = GEN_2[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_3 = {1{$random}};
  T_220 = GEN_3[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_4 = {1{$random}};
  maybe_full = GEN_4[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_manager_xact_id_T_226_en & ram_manager_xact_id_T_226_mask) begin
      ram_manager_xact_id[ram_manager_xact_id_T_226_addr] <= ram_manager_xact_id_T_226_data;
    end
    if(ram_manager_id_T_226_en & ram_manager_id_T_226_mask) begin
      ram_manager_id[ram_manager_id_T_226_addr] <= ram_manager_id_T_226_data;
    end
    if(reset) begin
      T_218 <= 1'h0;
    end else begin
      if(do_enq) begin
        T_218 <= T_253;
      end
    end
    if(reset) begin
      T_220 <= 1'h0;
    end else begin
      if(do_deq) begin
        T_220 <= T_258;
      end
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_259) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
