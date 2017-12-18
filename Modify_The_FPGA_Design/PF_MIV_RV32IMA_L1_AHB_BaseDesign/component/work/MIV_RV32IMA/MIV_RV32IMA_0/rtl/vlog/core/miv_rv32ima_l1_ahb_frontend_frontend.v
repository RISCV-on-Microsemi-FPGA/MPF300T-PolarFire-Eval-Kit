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
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_FRONTEND_FRONTEND(
  input         clock,
  input         reset,
  input         io_tl_out_0_a_ready,
  output        io_tl_out_0_a_valid,
  output [2:0]  io_tl_out_0_a_bits_opcode,
  output [2:0]  io_tl_out_0_a_bits_param,
  output [3:0]  io_tl_out_0_a_bits_size,
  output        io_tl_out_0_a_bits_source,
  output [31:0] io_tl_out_0_a_bits_address,
  output [3:0]  io_tl_out_0_a_bits_mask,
  output [31:0] io_tl_out_0_a_bits_data,
  output        io_tl_out_0_d_ready,
  input         io_tl_out_0_d_valid,
  input  [2:0]  io_tl_out_0_d_bits_opcode,
  input  [3:0]  io_tl_out_0_d_bits_size,
  input  [31:0] io_tl_out_0_d_bits_data,
  input         io_tl_out_0_d_bits_error,
  input         io_cpu_req_valid,
  input  [31:0] io_cpu_req_bits_pc,
  input         io_cpu_req_bits_speculative,
  input         io_cpu_resp_ready,
  output        io_cpu_resp_valid,
  output        io_cpu_resp_bits_btb_valid,
  output        io_cpu_resp_bits_btb_bits_taken,
  output        io_cpu_resp_bits_btb_bits_bridx,
  output [31:0] io_cpu_resp_bits_pc,
  output [31:0] io_cpu_resp_bits_data,
  output        io_cpu_resp_bits_xcpt_pf_inst,
  output        io_cpu_resp_bits_xcpt_ae_inst,
  output        io_cpu_resp_bits_replay,
  input         io_cpu_flush_icache,
  output [31:0] io_cpu_npc,
  output        io_ptw_req_valid,
  output [19:0] io_ptw_req_bits_addr,
  input  [1:0]  io_ptw_status_prv,
  input  [31:0] io_resetVector
);
  wire  icache_clock;
  wire  icache_reset;
  wire  icache_io_req_ready;
  wire  icache_io_req_valid;
  wire [31:0] icache_io_req_bits_addr;
  wire [31:0] icache_io_s1_paddr;
  wire  icache_io_s1_kill;
  wire  icache_io_s2_kill;
  wire  icache_io_resp_valid;
  wire [31:0] icache_io_resp_bits_data;
  wire  icache_io_resp_bits_replay;
  wire  icache_io_resp_bits_ae;
  wire  icache_io_invalidate;
  wire  icache_io_tl_out_0_a_ready;
  wire  icache_io_tl_out_0_a_valid;
  wire [2:0] icache_io_tl_out_0_a_bits_opcode;
  wire [2:0] icache_io_tl_out_0_a_bits_param;
  wire [3:0] icache_io_tl_out_0_a_bits_size;
  wire  icache_io_tl_out_0_a_bits_source;
  wire [31:0] icache_io_tl_out_0_a_bits_address;
  wire [3:0] icache_io_tl_out_0_a_bits_mask;
  wire [31:0] icache_io_tl_out_0_a_bits_data;
  wire  icache_io_tl_out_0_d_ready;
  wire  icache_io_tl_out_0_d_valid;
  wire [2:0] icache_io_tl_out_0_d_bits_opcode;
  wire [3:0] icache_io_tl_out_0_d_bits_size;
  wire [31:0] icache_io_tl_out_0_d_bits_data;
  wire  icache_io_tl_out_0_d_bits_error;
  wire  tlb_clock;
  wire  tlb_reset;
  wire [31:0] tlb_io_req_bits_vaddr;
  wire  tlb_io_resp_miss;
  wire [31:0] tlb_io_resp_paddr;
  wire  tlb_io_resp_pf_inst;
  wire  tlb_io_resp_ae_inst;
  wire  tlb_io_resp_cacheable;
  wire  tlb_io_ptw_req_valid;
  wire [19:0] tlb_io_ptw_req_bits_addr;
  wire [1:0] tlb_io_ptw_status_prv;
  wire  _T_189;
  wire  fq_clock;
  wire  fq_reset;
  wire  fq_io_enq_ready;
  wire  fq_io_enq_valid;
  wire  fq_io_enq_bits_btb_valid;
  wire  fq_io_enq_bits_btb_bits_taken;
  wire  fq_io_enq_bits_btb_bits_bridx;
  wire [31:0] fq_io_enq_bits_pc;
  wire [31:0] fq_io_enq_bits_data;
  wire  fq_io_enq_bits_xcpt_pf_inst;
  wire  fq_io_enq_bits_xcpt_ae_inst;
  wire  fq_io_enq_bits_replay;
  wire  fq_io_deq_ready;
  wire  fq_io_deq_valid;
  wire  fq_io_deq_bits_btb_valid;
  wire  fq_io_deq_bits_btb_bits_taken;
  wire  fq_io_deq_bits_btb_bits_bridx;
  wire [31:0] fq_io_deq_bits_pc;
  wire [31:0] fq_io_deq_bits_data;
  wire  fq_io_deq_bits_xcpt_pf_inst;
  wire  fq_io_deq_bits_xcpt_ae_inst;
  wire  fq_io_deq_bits_replay;
  wire [4:0] fq_io_mask;
  wire  _T_194;
  wire  _T_196;
  wire  s0_valid;
  reg  s1_valid;
  reg [31:0] _RAND_0;
  reg [31:0] s1_pc;
  reg [31:0] _RAND_1;
  reg  s1_speculative;
  reg [31:0] _RAND_2;
  reg  s2_valid;
  reg [31:0] _RAND_3;
  wire [31:0] _T_202;
  wire [31:0] _T_204;
  wire [31:0] _T_205;
  reg [31:0] s2_pc;
  reg [31:0] _RAND_4;
  reg  s2_btb_resp_bits_taken;
  reg [31:0] _RAND_5;
  reg  s2_btb_resp_bits_bridx;
  reg [31:0] _RAND_6;
  reg  s2_tlb_resp_miss;
  reg [31:0] _RAND_7;
  reg  s2_tlb_resp_pf_inst;
  reg [31:0] _RAND_8;
  reg  s2_tlb_resp_ae_inst;
  reg [31:0] _RAND_9;
  reg  s2_tlb_resp_cacheable;
  reg [31:0] _RAND_10;
  wire  s2_xcpt;
  reg  s2_speculative;
  reg [31:0] _RAND_11;
  wire [31:0] _T_214;
  wire [31:0] _T_216;
  wire [31:0] s1_base_pc;
  wire [32:0] _T_218;
  wire [31:0] ntpc;
  wire  _T_223;
  wire  _T_225;
  wire  _T_226;
  wire  _T_228;
  wire  _T_229;
  reg  _T_232;
  reg [31:0] _RAND_12;
  wire  _T_233;
  wire [31:0] npc;
  wire  _T_234;
  wire  _T_235;
  wire  _T_239;
  wire  _T_241;
  wire  _GEN_0;
  wire [31:0] _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _GEN_7;
  wire  _GEN_10;
  wire  _GEN_14;
  wire  _T_246;
  wire  _T_247;
  wire  _T_249;
  wire  _T_250;
  wire  _T_251;
  reg  _T_253;
  reg [31:0] _RAND_13;
  wire  _T_254;
  wire  _T_256;
  wire  _T_257;
  wire  _T_258;
  wire  _T_259;
  wire [31:0] _T_260;
  wire [31:0] _T_261;
  wire [31:0] _T_263;
  wire [31:0] _T_264;
  wire  _T_269;
  wire  _T_270;
  wire  _T_272;
  wire  _T_273;
  wire  _T_274;
  wire  _T_275;
  wire  _GEN_16;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_I_CACHE_ICACHE icache (
    .clock(icache_clock),
    .reset(icache_reset),
    .io_req_ready(icache_io_req_ready),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_paddr(icache_io_s1_paddr),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_replay(icache_io_resp_bits_replay),
    .io_resp_bits_ae(icache_io_resp_bits_ae),
    .io_invalidate(icache_io_invalidate),
    .io_tl_out_0_a_ready(icache_io_tl_out_0_a_ready),
    .io_tl_out_0_a_valid(icache_io_tl_out_0_a_valid),
    .io_tl_out_0_a_bits_opcode(icache_io_tl_out_0_a_bits_opcode),
    .io_tl_out_0_a_bits_param(icache_io_tl_out_0_a_bits_param),
    .io_tl_out_0_a_bits_size(icache_io_tl_out_0_a_bits_size),
    .io_tl_out_0_a_bits_source(icache_io_tl_out_0_a_bits_source),
    .io_tl_out_0_a_bits_address(icache_io_tl_out_0_a_bits_address),
    .io_tl_out_0_a_bits_mask(icache_io_tl_out_0_a_bits_mask),
    .io_tl_out_0_a_bits_data(icache_io_tl_out_0_a_bits_data),
    .io_tl_out_0_d_ready(icache_io_tl_out_0_d_ready),
    .io_tl_out_0_d_valid(icache_io_tl_out_0_d_valid),
    .io_tl_out_0_d_bits_opcode(icache_io_tl_out_0_d_bits_opcode),
    .io_tl_out_0_d_bits_size(icache_io_tl_out_0_d_bits_size),
    .io_tl_out_0_d_bits_data(icache_io_tl_out_0_d_bits_data),
    .io_tl_out_0_d_bits_error(icache_io_tl_out_0_d_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TLB_1 tlb (
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_inst(tlb_io_resp_pf_inst),
    .io_resp_ae_inst(tlb_io_resp_ae_inst),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_addr(tlb_io_ptw_req_bits_addr),
    .io_ptw_status_prv(tlb_io_ptw_status_prv)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_SHIFT_QUEUE fq (
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_btb_valid(fq_io_enq_bits_btb_valid),
    .io_enq_bits_btb_bits_taken(fq_io_enq_bits_btb_bits_taken),
    .io_enq_bits_btb_bits_bridx(fq_io_enq_bits_btb_bits_bridx),
    .io_enq_bits_pc(fq_io_enq_bits_pc),
    .io_enq_bits_data(fq_io_enq_bits_data),
    .io_enq_bits_xcpt_pf_inst(fq_io_enq_bits_xcpt_pf_inst),
    .io_enq_bits_xcpt_ae_inst(fq_io_enq_bits_xcpt_ae_inst),
    .io_enq_bits_replay(fq_io_enq_bits_replay),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_btb_valid(fq_io_deq_bits_btb_valid),
    .io_deq_bits_btb_bits_taken(fq_io_deq_bits_btb_bits_taken),
    .io_deq_bits_btb_bits_bridx(fq_io_deq_bits_btb_bits_bridx),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  assign io_tl_out_0_a_valid = icache_io_tl_out_0_a_valid;
  assign io_tl_out_0_a_bits_opcode = icache_io_tl_out_0_a_bits_opcode;
  assign io_tl_out_0_a_bits_param = icache_io_tl_out_0_a_bits_param;
  assign io_tl_out_0_a_bits_size = icache_io_tl_out_0_a_bits_size;
  assign io_tl_out_0_a_bits_source = icache_io_tl_out_0_a_bits_source;
  assign io_tl_out_0_a_bits_address = icache_io_tl_out_0_a_bits_address;
  assign io_tl_out_0_a_bits_mask = icache_io_tl_out_0_a_bits_mask;
  assign io_tl_out_0_a_bits_data = icache_io_tl_out_0_a_bits_data;
  assign io_tl_out_0_d_ready = icache_io_tl_out_0_d_ready;
  assign io_cpu_resp_valid = fq_io_deq_valid;
  assign io_cpu_resp_bits_btb_valid = fq_io_deq_bits_btb_valid;
  assign io_cpu_resp_bits_btb_bits_taken = fq_io_deq_bits_btb_bits_taken;
  assign io_cpu_resp_bits_btb_bits_bridx = fq_io_deq_bits_btb_bits_bridx;
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc;
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data;
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst;
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst;
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay;
  assign io_cpu_npc = _T_264;
  assign io_ptw_req_valid = tlb_io_ptw_req_valid;
  assign io_ptw_req_bits_addr = tlb_io_ptw_req_bits_addr;
  assign icache_clock = clock;
  assign icache_reset = reset;
  assign icache_io_req_valid = s0_valid;
  assign icache_io_req_bits_addr = io_cpu_npc;
  assign icache_io_s1_paddr = tlb_io_resp_paddr;
  assign icache_io_s1_kill = _T_247;
  assign icache_io_s2_kill = _T_251;
  assign icache_io_invalidate = io_cpu_flush_icache;
  assign icache_io_tl_out_0_a_ready = io_tl_out_0_a_ready;
  assign icache_io_tl_out_0_d_valid = io_tl_out_0_d_valid;
  assign icache_io_tl_out_0_d_bits_opcode = io_tl_out_0_d_bits_opcode;
  assign icache_io_tl_out_0_d_bits_size = io_tl_out_0_d_bits_size;
  assign icache_io_tl_out_0_d_bits_data = io_tl_out_0_d_bits_data;
  assign icache_io_tl_out_0_d_bits_error = io_tl_out_0_d_bits_error;
  assign tlb_clock = clock;
  assign tlb_reset = reset;
  assign tlb_io_req_bits_vaddr = s1_pc;
  assign tlb_io_ptw_status_prv = io_ptw_status_prv;
  assign _T_189 = reset | io_cpu_req_valid;
  assign fq_clock = clock;
  assign fq_reset = _T_189;
  assign fq_io_enq_valid = _T_259;
  assign fq_io_enq_bits_btb_valid = 1'h0;
  assign fq_io_enq_bits_btb_bits_taken = s2_btb_resp_bits_taken;
  assign fq_io_enq_bits_btb_bits_bridx = s2_btb_resp_bits_bridx;
  assign fq_io_enq_bits_pc = s2_pc;
  assign fq_io_enq_bits_data = icache_io_resp_bits_data;
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst;
  assign fq_io_enq_bits_xcpt_ae_inst = _GEN_16;
  assign fq_io_enq_bits_replay = _T_274;
  assign fq_io_deq_ready = io_cpu_resp_ready;
  assign _T_194 = fq_io_mask[2];
  assign _T_196 = _T_194 == 1'h0;
  assign s0_valid = io_cpu_req_valid | _T_196;
  assign _T_202 = ~ io_resetVector;
  assign _T_204 = _T_202 | 32'h3;
  assign _T_205 = ~ _T_204;
  assign s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst;
  assign _T_214 = ~ s1_pc;
  assign _T_216 = _T_214 | 32'h3;
  assign s1_base_pc = ~ _T_216;
  assign _T_218 = s1_base_pc + 32'h4;
  assign ntpc = _T_218[31:0];
  assign _T_223 = fq_io_enq_ready & fq_io_enq_valid;
  assign _T_225 = _T_223 == 1'h0;
  assign _T_226 = s2_valid & _T_225;
  assign _T_228 = s0_valid == 1'h0;
  assign _T_229 = _T_233 & _T_228;
  assign _T_233 = _T_226 | _T_232;
  assign npc = _T_233 ? s2_pc : ntpc;
  assign _T_234 = _T_233 ? s2_speculative : 1'h1;
  assign _T_235 = io_cpu_req_valid ? io_cpu_req_bits_speculative : _T_234;
  assign _T_239 = _T_233 == 1'h0;
  assign _T_241 = io_cpu_req_valid == 1'h0;
  assign _GEN_0 = _T_239 ? _T_241 : 1'h0;
  assign _GEN_1 = _T_239 ? s1_pc : s2_pc;
  assign _GEN_2 = _T_239 ? s1_speculative : s2_speculative;
  assign _GEN_3 = _T_239 ? tlb_io_resp_miss : s2_tlb_resp_miss;
  assign _GEN_7 = _T_239 ? tlb_io_resp_pf_inst : s2_tlb_resp_pf_inst;
  assign _GEN_10 = _T_239 ? tlb_io_resp_ae_inst : s2_tlb_resp_ae_inst;
  assign _GEN_14 = _T_239 ? tlb_io_resp_cacheable : s2_tlb_resp_cacheable;
  assign _T_246 = io_cpu_req_valid | tlb_io_resp_miss;
  assign _T_247 = _T_246 | _T_233;
  assign _T_249 = s2_tlb_resp_cacheable == 1'h0;
  assign _T_250 = s2_speculative & _T_249;
  assign _T_251 = _T_250 | s2_xcpt;
  assign _T_254 = _T_253 & s2_valid;
  assign _T_256 = s2_tlb_resp_miss == 1'h0;
  assign _T_257 = _T_256 & icache_io_s2_kill;
  assign _T_258 = icache_io_resp_valid | _T_257;
  assign _T_259 = _T_254 & _T_258;
  assign _T_260 = io_cpu_req_valid ? io_cpu_req_bits_pc : npc;
  assign _T_261 = ~ _T_260;
  assign _T_263 = _T_261 | 32'h3;
  assign _T_264 = ~ _T_263;
  assign _T_269 = icache_io_resp_valid == 1'h0;
  assign _T_270 = icache_io_s2_kill & _T_269;
  assign _T_272 = s2_xcpt == 1'h0;
  assign _T_273 = _T_270 & _T_272;
  assign _T_274 = icache_io_resp_bits_replay | _T_273;
  assign _T_275 = icache_io_resp_valid & icache_io_resp_bits_ae;
  assign _GEN_16 = _T_275 ? 1'h1 : s2_tlb_resp_ae_inst;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  s1_pc = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  s1_speculative = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  s2_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  s2_pc = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  s2_btb_resp_bits_taken = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  s2_btb_resp_bits_bridx = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  s2_tlb_resp_miss = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  s2_tlb_resp_pf_inst = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  s2_tlb_resp_ae_inst = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  s2_tlb_resp_cacheable = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  s2_speculative = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_232 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_253 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    s1_valid <= s0_valid;
    s1_pc <= io_cpu_npc;
    if (io_cpu_req_valid) begin
      s1_speculative <= io_cpu_req_bits_speculative;
    end else begin
      if (_T_233) begin
        s1_speculative <= s2_speculative;
      end else begin
        s1_speculative <= 1'h1;
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      if (_T_239) begin
        s2_valid <= _T_241;
      end else begin
        s2_valid <= 1'h0;
      end
    end
    if (reset) begin
      s2_pc <= _T_205;
    end else begin
      if (_T_239) begin
        s2_pc <= s1_pc;
      end
    end
    if (_T_239) begin
      s2_tlb_resp_miss <= tlb_io_resp_miss;
    end
    if (_T_239) begin
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst;
    end
    if (_T_239) begin
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst;
    end
    if (_T_239) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (reset) begin
      s2_speculative <= 1'h0;
    end else begin
      if (_T_239) begin
        s2_speculative <= s1_speculative;
      end
    end
    if (reset) begin
      _T_232 <= 1'h1;
    end else begin
      _T_232 <= _T_229;
    end
    _T_253 <= s1_valid;
  end
endmodule
