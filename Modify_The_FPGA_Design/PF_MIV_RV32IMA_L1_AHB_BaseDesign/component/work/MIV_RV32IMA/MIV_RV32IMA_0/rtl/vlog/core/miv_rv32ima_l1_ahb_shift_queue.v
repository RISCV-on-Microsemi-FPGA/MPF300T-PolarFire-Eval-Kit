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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_SHIFT_QUEUE(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input         io_enq_bits_btb_valid,
  input         io_enq_bits_btb_bits_taken,
  input         io_enq_bits_btb_bits_bridx,
  input  [31:0] io_enq_bits_pc,
  input  [31:0] io_enq_bits_data,
  input         io_enq_bits_xcpt_pf_inst,
  input         io_enq_bits_xcpt_ae_inst,
  input         io_enq_bits_replay,
  input         io_deq_ready,
  output        io_deq_valid,
  output        io_deq_bits_btb_valid,
  output        io_deq_bits_btb_bits_taken,
  output        io_deq_bits_btb_bits_bridx,
  output [31:0] io_deq_bits_pc,
  output [31:0] io_deq_bits_data,
  output        io_deq_bits_xcpt_pf_inst,
  output        io_deq_bits_xcpt_ae_inst,
  output        io_deq_bits_replay,
  output [4:0]  io_mask
);
  reg  valid_0;
  reg [31:0] _RAND_0;
  reg  valid_1;
  reg [31:0] _RAND_1;
  reg  valid_2;
  reg [31:0] _RAND_2;
  reg  valid_3;
  reg [31:0] _RAND_3;
  reg  valid_4;
  reg [31:0] _RAND_4;
  reg  elts_0_btb_valid;
  reg [31:0] _RAND_5;
  reg  elts_0_btb_bits_taken;
  reg [31:0] _RAND_6;
  reg  elts_0_btb_bits_bridx;
  reg [31:0] _RAND_7;
  reg [31:0] elts_0_pc;
  reg [31:0] _RAND_8;
  reg [31:0] elts_0_data;
  reg [31:0] _RAND_9;
  reg  elts_0_xcpt_pf_inst;
  reg [31:0] _RAND_10;
  reg  elts_0_xcpt_ae_inst;
  reg [31:0] _RAND_11;
  reg  elts_0_replay;
  reg [31:0] _RAND_12;
  reg  elts_1_btb_valid;
  reg [31:0] _RAND_13;
  reg  elts_1_btb_bits_taken;
  reg [31:0] _RAND_14;
  reg  elts_1_btb_bits_bridx;
  reg [31:0] _RAND_15;
  reg [31:0] elts_1_pc;
  reg [31:0] _RAND_16;
  reg [31:0] elts_1_data;
  reg [31:0] _RAND_17;
  reg  elts_1_xcpt_pf_inst;
  reg [31:0] _RAND_18;
  reg  elts_1_xcpt_ae_inst;
  reg [31:0] _RAND_19;
  reg  elts_1_replay;
  reg [31:0] _RAND_20;
  reg  elts_2_btb_valid;
  reg [31:0] _RAND_21;
  reg  elts_2_btb_bits_taken;
  reg [31:0] _RAND_22;
  reg  elts_2_btb_bits_bridx;
  reg [31:0] _RAND_23;
  reg [31:0] elts_2_pc;
  reg [31:0] _RAND_24;
  reg [31:0] elts_2_data;
  reg [31:0] _RAND_25;
  reg  elts_2_xcpt_pf_inst;
  reg [31:0] _RAND_26;
  reg  elts_2_xcpt_ae_inst;
  reg [31:0] _RAND_27;
  reg  elts_2_replay;
  reg [31:0] _RAND_28;
  reg  elts_3_btb_valid;
  reg [31:0] _RAND_29;
  reg  elts_3_btb_bits_taken;
  reg [31:0] _RAND_30;
  reg  elts_3_btb_bits_bridx;
  reg [31:0] _RAND_31;
  reg [31:0] elts_3_pc;
  reg [31:0] _RAND_32;
  reg [31:0] elts_3_data;
  reg [31:0] _RAND_33;
  reg  elts_3_xcpt_pf_inst;
  reg [31:0] _RAND_34;
  reg  elts_3_xcpt_ae_inst;
  reg [31:0] _RAND_35;
  reg  elts_3_replay;
  reg [31:0] _RAND_36;
  reg  elts_4_btb_valid;
  reg [31:0] _RAND_37;
  reg  elts_4_btb_bits_taken;
  reg [31:0] _RAND_38;
  reg  elts_4_btb_bits_bridx;
  reg [31:0] _RAND_39;
  reg [31:0] elts_4_pc;
  reg [31:0] _RAND_40;
  reg [31:0] elts_4_data;
  reg [31:0] _RAND_41;
  reg  elts_4_xcpt_pf_inst;
  reg [31:0] _RAND_42;
  reg  elts_4_xcpt_ae_inst;
  reg [31:0] _RAND_43;
  reg  elts_4_replay;
  reg [31:0] _RAND_44;
  wire  _T_143_btb_valid;
  wire  _T_143_btb_bits_taken;
  wire  _T_143_btb_bits_bridx;
  wire [31:0] _T_143_pc;
  wire [31:0] _T_143_data;
  wire  _T_143_xcpt_pf_inst;
  wire  _T_143_xcpt_ae_inst;
  wire  _T_143_replay;
  wire  _T_147;
  wire  _T_148;
  wire  _T_149;
  wire  _T_154;
  wire  _T_155;
  wire  _T_156;
  wire  _GEN_0;
  wire  _GEN_2;
  wire  _GEN_4;
  wire [31:0] _GEN_10;
  wire [31:0] _GEN_11;
  wire  _GEN_13;
  wire  _GEN_14;
  wire  _GEN_15;
  wire  _T_165;
  wire  _T_166;
  wire  _T_167_btb_valid;
  wire  _T_167_btb_bits_taken;
  wire  _T_167_btb_bits_bridx;
  wire [31:0] _T_167_pc;
  wire [31:0] _T_167_data;
  wire  _T_167_xcpt_pf_inst;
  wire  _T_167_xcpt_ae_inst;
  wire  _T_167_replay;
  wire  _T_172;
  wire  _T_173;
  wire  _T_177;
  wire  _T_178;
  wire  _T_179;
  wire  _GEN_16;
  wire  _GEN_18;
  wire  _GEN_20;
  wire [31:0] _GEN_26;
  wire [31:0] _GEN_27;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire  _T_187;
  wire  _T_188;
  wire  _T_189_btb_valid;
  wire  _T_189_btb_bits_taken;
  wire  _T_189_btb_bits_bridx;
  wire [31:0] _T_189_pc;
  wire [31:0] _T_189_data;
  wire  _T_189_xcpt_pf_inst;
  wire  _T_189_xcpt_ae_inst;
  wire  _T_189_replay;
  wire  _T_194;
  wire  _T_195;
  wire  _T_199;
  wire  _T_200;
  wire  _T_201;
  wire  _GEN_32;
  wire  _GEN_34;
  wire  _GEN_36;
  wire [31:0] _GEN_42;
  wire [31:0] _GEN_43;
  wire  _GEN_45;
  wire  _GEN_46;
  wire  _GEN_47;
  wire  _T_209;
  wire  _T_210;
  wire  _T_211_btb_valid;
  wire  _T_211_btb_bits_taken;
  wire  _T_211_btb_bits_bridx;
  wire [31:0] _T_211_pc;
  wire [31:0] _T_211_data;
  wire  _T_211_xcpt_pf_inst;
  wire  _T_211_xcpt_ae_inst;
  wire  _T_211_replay;
  wire  _T_216;
  wire  _T_217;
  wire  _T_221;
  wire  _T_222;
  wire  _T_223;
  wire  _GEN_48;
  wire  _GEN_50;
  wire  _GEN_52;
  wire [31:0] _GEN_58;
  wire [31:0] _GEN_59;
  wire  _GEN_61;
  wire  _GEN_62;
  wire  _GEN_63;
  wire  _T_231;
  wire  _T_232;
  wire  _T_235;
  wire  _T_240;
  wire  _T_241;
  wire  _T_242;
  wire  _GEN_64;
  wire  _GEN_66;
  wire  _GEN_68;
  wire [31:0] _GEN_74;
  wire [31:0] _GEN_75;
  wire  _GEN_77;
  wire  _GEN_78;
  wire  _GEN_79;
  wire  _T_251;
  wire  _T_252;
  wire  _GEN_80;
  wire  _GEN_81;
  wire  _GEN_83;
  wire  _GEN_85;
  wire [31:0] _GEN_91;
  wire [31:0] _GEN_92;
  wire  _GEN_94;
  wire  _GEN_95;
  wire  _GEN_96;
  wire [1:0] _T_258;
  wire [1:0] _T_259;
  wire [2:0] _T_260;
  wire [4:0] _T_261;
  assign io_enq_ready = _T_240;
  assign io_deq_valid = _GEN_80;
  assign io_deq_bits_btb_valid = _GEN_81;
  assign io_deq_bits_btb_bits_taken = _GEN_83;
  assign io_deq_bits_btb_bits_bridx = _GEN_85;
  assign io_deq_bits_pc = _GEN_91;
  assign io_deq_bits_data = _GEN_92;
  assign io_deq_bits_xcpt_pf_inst = _GEN_94;
  assign io_deq_bits_xcpt_ae_inst = _GEN_95;
  assign io_deq_bits_replay = _GEN_96;
  assign io_mask = _T_261;
  assign _T_143_btb_valid = valid_1 ? elts_1_btb_valid : io_enq_bits_btb_valid;
  assign _T_143_btb_bits_taken = valid_1 ? elts_1_btb_bits_taken : io_enq_bits_btb_bits_taken;
  assign _T_143_btb_bits_bridx = valid_1 ? elts_1_btb_bits_bridx : io_enq_bits_btb_bits_bridx;
  assign _T_143_pc = valid_1 ? elts_1_pc : io_enq_bits_pc;
  assign _T_143_data = valid_1 ? elts_1_data : io_enq_bits_data;
  assign _T_143_xcpt_pf_inst = valid_1 ? elts_1_xcpt_pf_inst : io_enq_bits_xcpt_pf_inst;
  assign _T_143_xcpt_ae_inst = valid_1 ? elts_1_xcpt_ae_inst : io_enq_bits_xcpt_ae_inst;
  assign _T_143_replay = valid_1 ? elts_1_replay : io_enq_bits_replay;
  assign _T_147 = io_enq_ready & io_enq_valid;
  assign _T_148 = _T_147 & valid_0;
  assign _T_149 = valid_1 | _T_148;
  assign _T_154 = valid_0 == 1'h0;
  assign _T_155 = _T_147 & _T_154;
  assign _T_156 = io_deq_ready ? _T_149 : _T_155;
  assign _GEN_0 = _T_156 ? _T_143_btb_valid : elts_0_btb_valid;
  assign _GEN_2 = _T_156 ? _T_143_btb_bits_taken : elts_0_btb_bits_taken;
  assign _GEN_4 = _T_156 ? _T_143_btb_bits_bridx : elts_0_btb_bits_bridx;
  assign _GEN_10 = _T_156 ? _T_143_pc : elts_0_pc;
  assign _GEN_11 = _T_156 ? _T_143_data : elts_0_data;
  assign _GEN_13 = _T_156 ? _T_143_xcpt_pf_inst : elts_0_xcpt_pf_inst;
  assign _GEN_14 = _T_156 ? _T_143_xcpt_ae_inst : elts_0_xcpt_ae_inst;
  assign _GEN_15 = _T_156 ? _T_143_replay : elts_0_replay;
  assign _T_165 = _T_147 | valid_0;
  assign _T_166 = io_deq_ready ? _T_149 : _T_165;
  assign _T_167_btb_valid = valid_2 ? elts_2_btb_valid : io_enq_bits_btb_valid;
  assign _T_167_btb_bits_taken = valid_2 ? elts_2_btb_bits_taken : io_enq_bits_btb_bits_taken;
  assign _T_167_btb_bits_bridx = valid_2 ? elts_2_btb_bits_bridx : io_enq_bits_btb_bits_bridx;
  assign _T_167_pc = valid_2 ? elts_2_pc : io_enq_bits_pc;
  assign _T_167_data = valid_2 ? elts_2_data : io_enq_bits_data;
  assign _T_167_xcpt_pf_inst = valid_2 ? elts_2_xcpt_pf_inst : io_enq_bits_xcpt_pf_inst;
  assign _T_167_xcpt_ae_inst = valid_2 ? elts_2_xcpt_ae_inst : io_enq_bits_xcpt_ae_inst;
  assign _T_167_replay = valid_2 ? elts_2_replay : io_enq_bits_replay;
  assign _T_172 = _T_147 & valid_1;
  assign _T_173 = valid_2 | _T_172;
  assign _T_177 = valid_1 == 1'h0;
  assign _T_178 = _T_148 & _T_177;
  assign _T_179 = io_deq_ready ? _T_173 : _T_178;
  assign _GEN_16 = _T_179 ? _T_167_btb_valid : elts_1_btb_valid;
  assign _GEN_18 = _T_179 ? _T_167_btb_bits_taken : elts_1_btb_bits_taken;
  assign _GEN_20 = _T_179 ? _T_167_btb_bits_bridx : elts_1_btb_bits_bridx;
  assign _GEN_26 = _T_179 ? _T_167_pc : elts_1_pc;
  assign _GEN_27 = _T_179 ? _T_167_data : elts_1_data;
  assign _GEN_29 = _T_179 ? _T_167_xcpt_pf_inst : elts_1_xcpt_pf_inst;
  assign _GEN_30 = _T_179 ? _T_167_xcpt_ae_inst : elts_1_xcpt_ae_inst;
  assign _GEN_31 = _T_179 ? _T_167_replay : elts_1_replay;
  assign _T_187 = _T_148 | valid_1;
  assign _T_188 = io_deq_ready ? _T_173 : _T_187;
  assign _T_189_btb_valid = valid_3 ? elts_3_btb_valid : io_enq_bits_btb_valid;
  assign _T_189_btb_bits_taken = valid_3 ? elts_3_btb_bits_taken : io_enq_bits_btb_bits_taken;
  assign _T_189_btb_bits_bridx = valid_3 ? elts_3_btb_bits_bridx : io_enq_bits_btb_bits_bridx;
  assign _T_189_pc = valid_3 ? elts_3_pc : io_enq_bits_pc;
  assign _T_189_data = valid_3 ? elts_3_data : io_enq_bits_data;
  assign _T_189_xcpt_pf_inst = valid_3 ? elts_3_xcpt_pf_inst : io_enq_bits_xcpt_pf_inst;
  assign _T_189_xcpt_ae_inst = valid_3 ? elts_3_xcpt_ae_inst : io_enq_bits_xcpt_ae_inst;
  assign _T_189_replay = valid_3 ? elts_3_replay : io_enq_bits_replay;
  assign _T_194 = _T_147 & valid_2;
  assign _T_195 = valid_3 | _T_194;
  assign _T_199 = valid_2 == 1'h0;
  assign _T_200 = _T_172 & _T_199;
  assign _T_201 = io_deq_ready ? _T_195 : _T_200;
  assign _GEN_32 = _T_201 ? _T_189_btb_valid : elts_2_btb_valid;
  assign _GEN_34 = _T_201 ? _T_189_btb_bits_taken : elts_2_btb_bits_taken;
  assign _GEN_36 = _T_201 ? _T_189_btb_bits_bridx : elts_2_btb_bits_bridx;
  assign _GEN_42 = _T_201 ? _T_189_pc : elts_2_pc;
  assign _GEN_43 = _T_201 ? _T_189_data : elts_2_data;
  assign _GEN_45 = _T_201 ? _T_189_xcpt_pf_inst : elts_2_xcpt_pf_inst;
  assign _GEN_46 = _T_201 ? _T_189_xcpt_ae_inst : elts_2_xcpt_ae_inst;
  assign _GEN_47 = _T_201 ? _T_189_replay : elts_2_replay;
  assign _T_209 = _T_172 | valid_2;
  assign _T_210 = io_deq_ready ? _T_195 : _T_209;
  assign _T_211_btb_valid = valid_4 ? elts_4_btb_valid : io_enq_bits_btb_valid;
  assign _T_211_btb_bits_taken = valid_4 ? elts_4_btb_bits_taken : io_enq_bits_btb_bits_taken;
  assign _T_211_btb_bits_bridx = valid_4 ? elts_4_btb_bits_bridx : io_enq_bits_btb_bits_bridx;
  assign _T_211_pc = valid_4 ? elts_4_pc : io_enq_bits_pc;
  assign _T_211_data = valid_4 ? elts_4_data : io_enq_bits_data;
  assign _T_211_xcpt_pf_inst = valid_4 ? elts_4_xcpt_pf_inst : io_enq_bits_xcpt_pf_inst;
  assign _T_211_xcpt_ae_inst = valid_4 ? elts_4_xcpt_ae_inst : io_enq_bits_xcpt_ae_inst;
  assign _T_211_replay = valid_4 ? elts_4_replay : io_enq_bits_replay;
  assign _T_216 = _T_147 & valid_3;
  assign _T_217 = valid_4 | _T_216;
  assign _T_221 = valid_3 == 1'h0;
  assign _T_222 = _T_194 & _T_221;
  assign _T_223 = io_deq_ready ? _T_217 : _T_222;
  assign _GEN_48 = _T_223 ? _T_211_btb_valid : elts_3_btb_valid;
  assign _GEN_50 = _T_223 ? _T_211_btb_bits_taken : elts_3_btb_bits_taken;
  assign _GEN_52 = _T_223 ? _T_211_btb_bits_bridx : elts_3_btb_bits_bridx;
  assign _GEN_58 = _T_223 ? _T_211_pc : elts_3_pc;
  assign _GEN_59 = _T_223 ? _T_211_data : elts_3_data;
  assign _GEN_61 = _T_223 ? _T_211_xcpt_pf_inst : elts_3_xcpt_pf_inst;
  assign _GEN_62 = _T_223 ? _T_211_xcpt_ae_inst : elts_3_xcpt_ae_inst;
  assign _GEN_63 = _T_223 ? _T_211_replay : elts_3_replay;
  assign _T_231 = _T_194 | valid_3;
  assign _T_232 = io_deq_ready ? _T_217 : _T_231;
  assign _T_235 = _T_147 & valid_4;
  assign _T_240 = valid_4 == 1'h0;
  assign _T_241 = _T_216 & _T_240;
  assign _T_242 = io_deq_ready ? _T_235 : _T_241;
  assign _GEN_64 = _T_242 ? io_enq_bits_btb_valid : elts_4_btb_valid;
  assign _GEN_66 = _T_242 ? io_enq_bits_btb_bits_taken : elts_4_btb_bits_taken;
  assign _GEN_68 = _T_242 ? io_enq_bits_btb_bits_bridx : elts_4_btb_bits_bridx;
  assign _GEN_74 = _T_242 ? io_enq_bits_pc : elts_4_pc;
  assign _GEN_75 = _T_242 ? io_enq_bits_data : elts_4_data;
  assign _GEN_77 = _T_242 ? io_enq_bits_xcpt_pf_inst : elts_4_xcpt_pf_inst;
  assign _GEN_78 = _T_242 ? io_enq_bits_xcpt_ae_inst : elts_4_xcpt_ae_inst;
  assign _GEN_79 = _T_242 ? io_enq_bits_replay : elts_4_replay;
  assign _T_251 = _T_216 | valid_4;
  assign _T_252 = io_deq_ready ? _T_235 : _T_251;
  assign _GEN_80 = io_enq_valid ? 1'h1 : valid_0;
  assign _GEN_81 = _T_154 ? io_enq_bits_btb_valid : elts_0_btb_valid;
  assign _GEN_83 = _T_154 ? io_enq_bits_btb_bits_taken : elts_0_btb_bits_taken;
  assign _GEN_85 = _T_154 ? io_enq_bits_btb_bits_bridx : elts_0_btb_bits_bridx;
  assign _GEN_91 = _T_154 ? io_enq_bits_pc : elts_0_pc;
  assign _GEN_92 = _T_154 ? io_enq_bits_data : elts_0_data;
  assign _GEN_94 = _T_154 ? io_enq_bits_xcpt_pf_inst : elts_0_xcpt_pf_inst;
  assign _GEN_95 = _T_154 ? io_enq_bits_xcpt_ae_inst : elts_0_xcpt_ae_inst;
  assign _GEN_96 = _T_154 ? io_enq_bits_replay : elts_0_replay;
  assign _T_258 = {valid_1,valid_0};
  assign _T_259 = {valid_4,valid_3};
  assign _T_260 = {_T_259,valid_2};
  assign _T_261 = {_T_260,_T_258};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  valid_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  valid_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  valid_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  valid_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  valid_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  elts_0_btb_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  elts_0_btb_bits_taken = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  elts_0_btb_bits_bridx = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  elts_0_pc = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  elts_0_data = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  elts_0_xcpt_pf_inst = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  elts_0_xcpt_ae_inst = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  elts_0_replay = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  elts_1_btb_valid = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  elts_1_btb_bits_taken = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  elts_1_btb_bits_bridx = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  elts_1_pc = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  elts_1_data = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  elts_1_xcpt_pf_inst = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  elts_1_xcpt_ae_inst = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  elts_1_replay = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  elts_2_btb_valid = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  elts_2_btb_bits_taken = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  elts_2_btb_bits_bridx = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  elts_2_pc = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  elts_2_data = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  elts_2_xcpt_pf_inst = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  elts_2_xcpt_ae_inst = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  elts_2_replay = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  elts_3_btb_valid = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  elts_3_btb_bits_taken = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  elts_3_btb_bits_bridx = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  elts_3_pc = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  elts_3_data = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  elts_3_xcpt_pf_inst = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  elts_3_xcpt_ae_inst = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  elts_3_replay = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  elts_4_btb_valid = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  elts_4_btb_bits_taken = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  elts_4_btb_bits_bridx = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  elts_4_pc = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  elts_4_data = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  elts_4_xcpt_pf_inst = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  elts_4_xcpt_ae_inst = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  elts_4_replay = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      valid_0 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        valid_0 <= _T_149;
      end else begin
        valid_0 <= _T_165;
      end
    end
    if (reset) begin
      valid_1 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        valid_1 <= _T_173;
      end else begin
        valid_1 <= _T_187;
      end
    end
    if (reset) begin
      valid_2 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        valid_2 <= _T_195;
      end else begin
        valid_2 <= _T_209;
      end
    end
    if (reset) begin
      valid_3 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        valid_3 <= _T_217;
      end else begin
        valid_3 <= _T_231;
      end
    end
    if (reset) begin
      valid_4 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        valid_4 <= _T_235;
      end else begin
        valid_4 <= _T_251;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_btb_valid <= elts_1_btb_valid;
      end else begin
        elts_0_btb_valid <= io_enq_bits_btb_valid;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_btb_bits_taken <= elts_1_btb_bits_taken;
      end else begin
        elts_0_btb_bits_taken <= io_enq_bits_btb_bits_taken;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_btb_bits_bridx <= elts_1_btb_bits_bridx;
      end else begin
        elts_0_btb_bits_bridx <= io_enq_bits_btb_bits_bridx;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_pc <= elts_1_pc;
      end else begin
        elts_0_pc <= io_enq_bits_pc;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_data <= elts_1_data;
      end else begin
        elts_0_data <= io_enq_bits_data;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_xcpt_pf_inst <= elts_1_xcpt_pf_inst;
      end else begin
        elts_0_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_xcpt_ae_inst <= elts_1_xcpt_ae_inst;
      end else begin
        elts_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_156) begin
      if (valid_1) begin
        elts_0_replay <= elts_1_replay;
      end else begin
        elts_0_replay <= io_enq_bits_replay;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_btb_valid <= elts_2_btb_valid;
      end else begin
        elts_1_btb_valid <= io_enq_bits_btb_valid;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_btb_bits_taken <= elts_2_btb_bits_taken;
      end else begin
        elts_1_btb_bits_taken <= io_enq_bits_btb_bits_taken;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_btb_bits_bridx <= elts_2_btb_bits_bridx;
      end else begin
        elts_1_btb_bits_bridx <= io_enq_bits_btb_bits_bridx;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_pc <= elts_2_pc;
      end else begin
        elts_1_pc <= io_enq_bits_pc;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_data <= elts_2_data;
      end else begin
        elts_1_data <= io_enq_bits_data;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_xcpt_pf_inst <= elts_2_xcpt_pf_inst;
      end else begin
        elts_1_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_xcpt_ae_inst <= elts_2_xcpt_ae_inst;
      end else begin
        elts_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_179) begin
      if (valid_2) begin
        elts_1_replay <= elts_2_replay;
      end else begin
        elts_1_replay <= io_enq_bits_replay;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_btb_valid <= elts_3_btb_valid;
      end else begin
        elts_2_btb_valid <= io_enq_bits_btb_valid;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_btb_bits_taken <= elts_3_btb_bits_taken;
      end else begin
        elts_2_btb_bits_taken <= io_enq_bits_btb_bits_taken;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_btb_bits_bridx <= elts_3_btb_bits_bridx;
      end else begin
        elts_2_btb_bits_bridx <= io_enq_bits_btb_bits_bridx;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_pc <= elts_3_pc;
      end else begin
        elts_2_pc <= io_enq_bits_pc;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_data <= elts_3_data;
      end else begin
        elts_2_data <= io_enq_bits_data;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_xcpt_pf_inst <= elts_3_xcpt_pf_inst;
      end else begin
        elts_2_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_xcpt_ae_inst <= elts_3_xcpt_ae_inst;
      end else begin
        elts_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_201) begin
      if (valid_3) begin
        elts_2_replay <= elts_3_replay;
      end else begin
        elts_2_replay <= io_enq_bits_replay;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_btb_valid <= elts_4_btb_valid;
      end else begin
        elts_3_btb_valid <= io_enq_bits_btb_valid;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_btb_bits_taken <= elts_4_btb_bits_taken;
      end else begin
        elts_3_btb_bits_taken <= io_enq_bits_btb_bits_taken;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_btb_bits_bridx <= elts_4_btb_bits_bridx;
      end else begin
        elts_3_btb_bits_bridx <= io_enq_bits_btb_bits_bridx;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_pc <= elts_4_pc;
      end else begin
        elts_3_pc <= io_enq_bits_pc;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_data <= elts_4_data;
      end else begin
        elts_3_data <= io_enq_bits_data;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_xcpt_pf_inst <= elts_4_xcpt_pf_inst;
      end else begin
        elts_3_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_xcpt_ae_inst <= elts_4_xcpt_ae_inst;
      end else begin
        elts_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_223) begin
      if (valid_4) begin
        elts_3_replay <= elts_4_replay;
      end else begin
        elts_3_replay <= io_enq_bits_replay;
      end
    end
    if (_T_242) begin
      elts_4_btb_valid <= io_enq_bits_btb_valid;
    end
    if (_T_242) begin
      elts_4_btb_bits_taken <= io_enq_bits_btb_bits_taken;
    end
    if (_T_242) begin
      elts_4_btb_bits_bridx <= io_enq_bits_btb_bits_bridx;
    end
    if (_T_242) begin
      elts_4_pc <= io_enq_bits_pc;
    end
    if (_T_242) begin
      elts_4_data <= io_enq_bits_data;
    end
    if (_T_242) begin
      elts_4_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
    end
    if (_T_242) begin
      elts_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
    end
    if (_T_242) begin
      elts_4_replay <= io_enq_bits_replay;
    end
  end
endmodule
