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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_OUTER_DM_OUTER(
  input         clock,
  input         reset,
  output        io_debugInterrupts_0_0,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  output        io_tlIn_0_a_ready,
  input         io_tlIn_0_a_valid,
  input  [2:0]  io_tlIn_0_a_bits_opcode,
  input  [1:0]  io_tlIn_0_a_bits_size,
  input         io_tlIn_0_a_bits_source,
  input  [6:0]  io_tlIn_0_a_bits_address,
  input  [3:0]  io_tlIn_0_a_bits_mask,
  input  [31:0] io_tlIn_0_a_bits_data,
  input         io_tlIn_0_d_ready,
  output        io_tlIn_0_d_valid,
  output [2:0]  io_tlIn_0_d_bits_opcode,
  output [1:0]  io_tlIn_0_d_bits_param,
  output [1:0]  io_tlIn_0_d_bits_size,
  output        io_tlIn_0_d_bits_source,
  output        io_tlIn_0_d_bits_sink,
  output [31:0] io_tlIn_0_d_bits_data,
  output        io_tlIn_0_d_bits_error,
  output        io_innerCtrl_valid,
  output        io_innerCtrl_bits_resumereq,
  output [9:0]  io_innerCtrl_bits_hartsel
);
  wire [1:0] _T_110;
  wire [23:0] _T_111;
  wire [25:0] _T_112;
  wire [2:0] _T_113;
  wire [1:0] _T_114;
  wire [2:0] _T_115;
  wire [5:0] _T_116;
  wire [31:0] _T_117;
  wire  DMCONTROL_clock;
  wire  DMCONTROL_reset;
  wire [31:0] DMCONTROL_io_d;
  wire [31:0] DMCONTROL_io_q;
  wire  DMCONTROL_io_en;
  wire [31:0] _T_122;
  wire  _T_123;
  wire  _T_124;
  wire [13:0] _T_125;
  wire [9:0] _T_126;
  wire  _T_127;
  wire [1:0] _T_128;
  wire  _T_129;
  wire  _T_130;
  wire  _T_131;
  wire  _T_140;
  wire  _T_141;
  wire [9:0] _T_143;
  wire  _T_147;
  wire  _T_148;
  wire  _T_153;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [1:0] _GEN_3;
  wire  _GEN_4;
  wire [9:0] _GEN_5;
  wire [13:0] _GEN_6;
  wire  _GEN_7;
  wire  _GEN_8;
  wire  _T_155;
  wire  _GEN_9;
  wire [9:0] _GEN_10;
  wire  _GEN_11;
  wire  _GEN_12;
  wire  _GEN_13;
  wire [9:0] _GEN_14;
  wire  _GEN_15;
  wire  _GEN_16;
  wire  _GEN_17;
  wire [1:0] _T_156;
  wire [23:0] _T_157;
  wire [25:0] _T_158;
  wire [2:0] _T_159;
  wire [1:0] _T_160;
  wire [2:0] _T_161;
  wire [5:0] _T_162;
  wire [31:0] _T_163;
  wire  _T_169_bits_index;
  wire  _T_174;
  wire [4:0] _T_175;
  wire [2:0] _T_176;
  wire  _T_203;
  wire  _T_237;
  wire  _T_238;
  wire  _T_239;
  wire  _T_240;
  wire [7:0] _T_244;
  wire [7:0] _T_248;
  wire [7:0] _T_252;
  wire [7:0] _T_256;
  wire [15:0] _T_257;
  wire [15:0] _T_258;
  wire [31:0] _T_259;
  wire [31:0] _T_287;
  wire  _T_289;
  wire  _T_302;
  wire [31:0] _GEN_18;
  wire [1:0] _T_326;
  wire  _T_327;
  wire  _T_333;
  wire  _T_351;
  wire  _T_352;
  wire  _T_355;
  wire  _T_390;
  wire [31:0] _T_432;
  wire  _T_433;
  wire [1:0] _T_434;
  wire  debugInterrupts_clock;
  wire  debugInterrupts_reset;
  wire  debugInterrupts_io_d;
  wire  debugInterrupts_io_q;
  wire  debugInterrupts_io_en;
  wire  _T_469;
  wire  _GEN_19;
  wire  _T_494;
  wire  _T_495;
  wire  _GEN_20;
  wire  _GEN_21;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC DMCONTROL (
    .clock(DMCONTROL_clock),
    .reset(DMCONTROL_reset),
    .io_d(DMCONTROL_io_d),
    .io_q(DMCONTROL_io_q),
    .io_en(DMCONTROL_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 debugInterrupts (
    .clock(debugInterrupts_clock),
    .reset(debugInterrupts_reset),
    .io_d(debugInterrupts_io_d),
    .io_q(debugInterrupts_io_q),
    .io_en(debugInterrupts_io_en)
  );
  assign io_debugInterrupts_0_0 = _T_469;
  assign io_ctrl_ndreset = _T_124;
  assign io_ctrl_dmactive = _T_123;
  assign io_tlIn_0_a_ready = io_tlIn_0_d_ready;
  assign io_tlIn_0_d_valid = io_tlIn_0_a_valid;
  assign io_tlIn_0_d_bits_opcode = {{2'd0}, _T_174};
  assign io_tlIn_0_d_bits_param = 2'h0;
  assign io_tlIn_0_d_bits_size = _T_434;
  assign io_tlIn_0_d_bits_source = _T_433;
  assign io_tlIn_0_d_bits_sink = 1'h0;
  assign io_tlIn_0_d_bits_data = _T_432;
  assign io_tlIn_0_d_bits_error = 1'h0;
  assign io_innerCtrl_valid = _T_302;
  assign io_innerCtrl_bits_resumereq = _T_147;
  assign io_innerCtrl_bits_hartsel = _T_143;
  assign _T_110 = {_GEN_13,_GEN_17};
  assign _T_111 = {_GEN_14,_GEN_6};
  assign _T_112 = {_T_111,_T_110};
  assign _T_113 = {_GEN_3,_GEN_4};
  assign _T_114 = {_GEN_15,_GEN_16};
  assign _T_115 = {_T_114,_GEN_2};
  assign _T_116 = {_T_115,_T_113};
  assign _T_117 = {_T_116,_T_112};
  assign DMCONTROL_clock = clock;
  assign DMCONTROL_reset = reset;
  assign DMCONTROL_io_d = _T_117;
  assign DMCONTROL_io_en = 1'h1;
  assign _T_122 = DMCONTROL_io_q;
  assign _T_123 = _T_122[0];
  assign _T_124 = _T_122[1];
  assign _T_125 = _T_122[15:2];
  assign _T_126 = _T_122[25:16];
  assign _T_127 = _T_122[26];
  assign _T_128 = _T_122[28:27];
  assign _T_129 = _T_122[29];
  assign _T_130 = _T_122[30];
  assign _T_131 = _T_122[31];
  assign _T_140 = _GEN_18[0];
  assign _T_141 = _GEN_18[1];
  assign _T_143 = _GEN_18[25:16];
  assign _T_147 = _GEN_18[30];
  assign _T_148 = _GEN_18[31];
  assign _T_153 = ~ _T_123;
  assign _GEN_0 = _T_153 ? 1'h0 : _T_131;
  assign _GEN_1 = _T_153 ? 1'h0 : _T_130;
  assign _GEN_2 = _T_153 ? 1'h0 : _T_129;
  assign _GEN_3 = _T_153 ? 2'h0 : _T_128;
  assign _GEN_4 = _T_153 ? 1'h0 : _T_127;
  assign _GEN_5 = _T_153 ? 10'h0 : _T_126;
  assign _GEN_6 = _T_153 ? 14'h0 : _T_125;
  assign _GEN_7 = _T_153 ? 1'h0 : _T_124;
  assign _GEN_8 = _T_153 ? 1'h0 : _T_123;
  assign _T_155 = _T_153 == 1'h0;
  assign _GEN_9 = _T_302 ? _T_141 : _GEN_7;
  assign _GEN_10 = _T_302 ? _T_143 : _GEN_5;
  assign _GEN_11 = _T_302 ? _T_148 : _GEN_0;
  assign _GEN_12 = _T_302 ? _T_147 : _GEN_1;
  assign _GEN_13 = _T_155 ? _GEN_9 : _GEN_7;
  assign _GEN_14 = _T_155 ? _GEN_10 : _GEN_5;
  assign _GEN_15 = _T_155 ? _GEN_11 : _GEN_0;
  assign _GEN_16 = _T_155 ? _GEN_12 : _GEN_1;
  assign _GEN_17 = _T_302 ? _T_140 : _GEN_8;
  assign _T_156 = {_T_124,_T_123};
  assign _T_157 = {_T_126,_T_125};
  assign _T_158 = {_T_157,_T_156};
  assign _T_159 = {_T_128,_T_127};
  assign _T_160 = {_T_131,_T_130};
  assign _T_161 = {_T_160,_T_129};
  assign _T_162 = {_T_161,_T_159};
  assign _T_163 = {_T_162,_T_158};
  assign _T_169_bits_index = _T_175[0];
  assign _T_174 = io_tlIn_0_a_bits_opcode == 3'h4;
  assign _T_175 = io_tlIn_0_a_bits_address[6:2];
  assign _T_176 = {io_tlIn_0_a_bits_source,io_tlIn_0_a_bits_size};
  assign _T_203 = _T_169_bits_index == 1'h0;
  assign _T_237 = io_tlIn_0_a_bits_mask[0];
  assign _T_238 = io_tlIn_0_a_bits_mask[1];
  assign _T_239 = io_tlIn_0_a_bits_mask[2];
  assign _T_240 = io_tlIn_0_a_bits_mask[3];
  assign _T_244 = _T_237 ? 8'hff : 8'h0;
  assign _T_248 = _T_238 ? 8'hff : 8'h0;
  assign _T_252 = _T_239 ? 8'hff : 8'h0;
  assign _T_256 = _T_240 ? 8'hff : 8'h0;
  assign _T_257 = {_T_248,_T_244};
  assign _T_258 = {_T_256,_T_252};
  assign _T_259 = {_T_258,_T_257};
  assign _T_287 = ~ _T_259;
  assign _T_289 = _T_287 == 32'h0;
  assign _T_302 = _T_390 & _T_289;
  assign _GEN_18 = _T_302 ? io_tlIn_0_a_bits_data : 32'h0;
  assign _T_326 = 2'h1 << 1'h0;
  assign _T_327 = _T_326[0];
  assign _T_333 = io_tlIn_0_a_valid & io_tlIn_0_d_ready;
  assign _T_351 = _T_174 == 1'h0;
  assign _T_352 = _T_333 & _T_351;
  assign _T_355 = _T_352 & _T_327;
  assign _T_390 = _T_355 & _T_203;
  assign _T_432 = _T_203 ? _T_163 : 32'h0;
  assign _T_433 = _T_176[2];
  assign _T_434 = _T_176[1:0];
  assign debugInterrupts_clock = clock;
  assign debugInterrupts_reset = reset;
  assign debugInterrupts_io_d = _GEN_21;
  assign debugInterrupts_io_en = 1'h1;
  assign _T_469 = debugInterrupts_io_q;
  assign _GEN_19 = _T_153 ? 1'h0 : _T_469;
  assign _T_494 = _T_143 == 10'h0;
  assign _T_495 = _T_302 & _T_494;
  assign _GEN_20 = _T_495 ? _T_148 : _GEN_19;
  assign _GEN_21 = _T_155 ? _GEN_20 : _GEN_19;
endmodule
