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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_BREAKPOINT_UNIT(
  input         io_status_debug,
  input  [1:0]  io_status_prv,
  input         io_bp_0_control_action,
  input         io_bp_0_control_chain,
  input  [1:0]  io_bp_0_control_tmatch,
  input         io_bp_0_control_m,
  input         io_bp_0_control_h,
  input         io_bp_0_control_s,
  input         io_bp_0_control_u,
  input         io_bp_0_control_x,
  input         io_bp_0_control_w,
  input         io_bp_0_control_r,
  input  [31:0] io_bp_0_address,
  input         io_bp_1_control_action,
  input         io_bp_1_control_chain,
  input  [1:0]  io_bp_1_control_tmatch,
  input         io_bp_1_control_m,
  input         io_bp_1_control_h,
  input         io_bp_1_control_s,
  input         io_bp_1_control_u,
  input         io_bp_1_control_x,
  input         io_bp_1_control_w,
  input         io_bp_1_control_r,
  input  [31:0] io_bp_1_address,
  input  [31:0] io_pc,
  input  [31:0] io_ea,
  output        io_xcpt_if,
  output        io_xcpt_ld,
  output        io_xcpt_st,
  output        io_debug_if,
  output        io_debug_ld,
  output        io_debug_st
);
  wire  _T_28;
  wire [1:0] _T_29;
  wire [1:0] _T_30;
  wire [3:0] _T_31;
  wire [3:0] _T_32;
  wire  _T_33;
  wire  _T_34;
  wire  _T_36;
  wire  _T_37;
  wire  _T_38;
  wire  _T_39;
  wire  _T_40;
  wire [31:0] _T_41;
  wire  _T_43;
  wire  _T_44;
  wire  _T_45;
  wire  _T_46;
  wire  _T_47;
  wire  _T_48;
  wire [1:0] _T_49;
  wire [1:0] _T_50;
  wire [3:0] _T_51;
  wire [31:0] _GEN_12;
  wire [31:0] _T_52;
  wire [31:0] _T_53;
  wire [31:0] _T_64;
  wire  _T_65;
  wire  _T_66;
  wire  _T_67;
  wire  _T_69;
  wire  _T_100;
  wire  _T_102;
  wire  _T_104;
  wire  _T_106;
  wire [31:0] _T_107;
  wire [31:0] _T_118;
  wire  _T_131;
  wire  _T_132;
  wire  _T_133;
  wire  _T_135;
  wire  _T_136;
  wire  _T_138;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _T_139;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _T_142;
  wire  _GEN_4;
  wire  _GEN_5;
  wire  _T_145;
  wire  _T_146;
  wire  _T_147;
  wire [1:0] _T_150;
  wire [1:0] _T_151;
  wire [3:0] _T_152;
  wire [3:0] _T_153;
  wire  _T_154;
  wire  _T_155;
  wire  _T_156;
  wire  _T_157;
  wire  _T_158;
  wire  _T_159;
  wire  _T_160;
  wire  _T_161;
  wire  _T_164;
  wire  _T_165;
  wire  _T_166;
  wire  _T_167;
  wire  _T_168;
  wire  _T_169;
  wire [1:0] _T_170;
  wire [1:0] _T_171;
  wire [3:0] _T_172;
  wire [31:0] _GEN_18;
  wire [31:0] _T_173;
  wire [31:0] _T_174;
  wire [31:0] _T_185;
  wire  _T_186;
  wire  _T_187;
  wire  _T_188;
  wire  _T_189;
  wire  _T_190;
  wire  _T_221;
  wire  _T_222;
  wire  _T_223;
  wire  _T_225;
  wire  _T_227;
  wire [31:0] _T_239;
  wire  _T_252;
  wire  _T_253;
  wire  _T_254;
  wire  _T_256;
  wire  _T_257;
  wire  _T_259;
  wire  _GEN_6;
  wire  _GEN_7;
  wire  _T_260;
  wire  _GEN_8;
  wire  _GEN_9;
  wire  _T_263;
  wire  _GEN_10;
  wire  _GEN_11;
  assign io_xcpt_if = _GEN_10;
  assign io_xcpt_ld = _GEN_6;
  assign io_xcpt_st = _GEN_8;
  assign io_debug_if = _GEN_11;
  assign io_debug_ld = _GEN_7;
  assign io_debug_st = _GEN_9;
  assign _T_28 = io_status_debug == 1'h0;
  assign _T_29 = {io_bp_0_control_s,io_bp_0_control_u};
  assign _T_30 = {io_bp_0_control_m,io_bp_0_control_h};
  assign _T_31 = {_T_30,_T_29};
  assign _T_32 = _T_31 >> io_status_prv;
  assign _T_33 = _T_32[0];
  assign _T_34 = _T_28 & _T_33;
  assign _T_36 = _T_34 & io_bp_0_control_r;
  assign _T_37 = io_bp_0_control_tmatch[1];
  assign _T_38 = io_ea >= io_bp_0_address;
  assign _T_39 = io_bp_0_control_tmatch[0];
  assign _T_40 = _T_38 ^ _T_39;
  assign _T_41 = ~ io_ea;
  assign _T_43 = io_bp_0_address[0];
  assign _T_44 = _T_39 & _T_43;
  assign _T_45 = io_bp_0_address[1];
  assign _T_46 = _T_44 & _T_45;
  assign _T_47 = io_bp_0_address[2];
  assign _T_48 = _T_46 & _T_47;
  assign _T_49 = {_T_44,_T_39};
  assign _T_50 = {_T_48,_T_46};
  assign _T_51 = {_T_50,_T_49};
  assign _GEN_12 = {{28'd0}, _T_51};
  assign _T_52 = _T_41 | _GEN_12;
  assign _T_53 = ~ io_bp_0_address;
  assign _T_64 = _T_53 | _GEN_12;
  assign _T_65 = _T_52 == _T_64;
  assign _T_66 = _T_37 ? _T_40 : _T_65;
  assign _T_67 = _T_36 & _T_66;
  assign _T_69 = _T_34 & io_bp_0_control_w;
  assign _T_100 = _T_69 & _T_66;
  assign _T_102 = _T_34 & io_bp_0_control_x;
  assign _T_104 = io_pc >= io_bp_0_address;
  assign _T_106 = _T_104 ^ _T_39;
  assign _T_107 = ~ io_pc;
  assign _T_118 = _T_107 | _GEN_12;
  assign _T_131 = _T_118 == _T_64;
  assign _T_132 = _T_37 ? _T_106 : _T_131;
  assign _T_133 = _T_102 & _T_132;
  assign _T_135 = io_bp_0_control_chain == 1'h0;
  assign _T_136 = _T_135 & _T_67;
  assign _T_138 = io_bp_0_control_action == 1'h0;
  assign _GEN_0 = _T_136 ? _T_138 : 1'h0;
  assign _GEN_1 = _T_136 ? io_bp_0_control_action : 1'h0;
  assign _T_139 = _T_135 & _T_100;
  assign _GEN_2 = _T_139 ? _T_138 : 1'h0;
  assign _GEN_3 = _T_139 ? io_bp_0_control_action : 1'h0;
  assign _T_142 = _T_135 & _T_133;
  assign _GEN_4 = _T_142 ? _T_138 : 1'h0;
  assign _GEN_5 = _T_142 ? io_bp_0_control_action : 1'h0;
  assign _T_145 = _T_135 | _T_67;
  assign _T_146 = _T_135 | _T_100;
  assign _T_147 = _T_135 | _T_133;
  assign _T_150 = {io_bp_1_control_s,io_bp_1_control_u};
  assign _T_151 = {io_bp_1_control_m,io_bp_1_control_h};
  assign _T_152 = {_T_151,_T_150};
  assign _T_153 = _T_152 >> io_status_prv;
  assign _T_154 = _T_153[0];
  assign _T_155 = _T_28 & _T_154;
  assign _T_156 = _T_155 & _T_145;
  assign _T_157 = _T_156 & io_bp_1_control_r;
  assign _T_158 = io_bp_1_control_tmatch[1];
  assign _T_159 = io_ea >= io_bp_1_address;
  assign _T_160 = io_bp_1_control_tmatch[0];
  assign _T_161 = _T_159 ^ _T_160;
  assign _T_164 = io_bp_1_address[0];
  assign _T_165 = _T_160 & _T_164;
  assign _T_166 = io_bp_1_address[1];
  assign _T_167 = _T_165 & _T_166;
  assign _T_168 = io_bp_1_address[2];
  assign _T_169 = _T_167 & _T_168;
  assign _T_170 = {_T_165,_T_160};
  assign _T_171 = {_T_169,_T_167};
  assign _T_172 = {_T_171,_T_170};
  assign _GEN_18 = {{28'd0}, _T_172};
  assign _T_173 = _T_41 | _GEN_18;
  assign _T_174 = ~ io_bp_1_address;
  assign _T_185 = _T_174 | _GEN_18;
  assign _T_186 = _T_173 == _T_185;
  assign _T_187 = _T_158 ? _T_161 : _T_186;
  assign _T_188 = _T_157 & _T_187;
  assign _T_189 = _T_155 & _T_146;
  assign _T_190 = _T_189 & io_bp_1_control_w;
  assign _T_221 = _T_190 & _T_187;
  assign _T_222 = _T_155 & _T_147;
  assign _T_223 = _T_222 & io_bp_1_control_x;
  assign _T_225 = io_pc >= io_bp_1_address;
  assign _T_227 = _T_225 ^ _T_160;
  assign _T_239 = _T_107 | _GEN_18;
  assign _T_252 = _T_239 == _T_185;
  assign _T_253 = _T_158 ? _T_227 : _T_252;
  assign _T_254 = _T_223 & _T_253;
  assign _T_256 = io_bp_1_control_chain == 1'h0;
  assign _T_257 = _T_256 & _T_188;
  assign _T_259 = io_bp_1_control_action == 1'h0;
  assign _GEN_6 = _T_257 ? _T_259 : _GEN_0;
  assign _GEN_7 = _T_257 ? io_bp_1_control_action : _GEN_1;
  assign _T_260 = _T_256 & _T_221;
  assign _GEN_8 = _T_260 ? _T_259 : _GEN_2;
  assign _GEN_9 = _T_260 ? io_bp_1_control_action : _GEN_3;
  assign _T_263 = _T_256 & _T_254;
  assign _GEN_10 = _T_263 ? _T_259 : _GEN_4;
  assign _GEN_11 = _T_263 ? io_bp_1_control_action : _GEN_5;
endmodule
