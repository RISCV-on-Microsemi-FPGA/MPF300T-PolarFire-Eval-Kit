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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ALU(
  input  [3:0]  io_fn,
  input  [31:0] io_in2,
  input  [31:0] io_in1,
  output [31:0] io_out,
  output [31:0] io_adder_out,
  output        io_cmp_out
);
  wire  _T_9;
  wire [31:0] _T_10;
  wire [31:0] in2_inv;
  wire [31:0] in1_xor_in2;
  wire [32:0] _T_11;
  wire [31:0] _T_12;
  wire [31:0] _GEN_0;
  wire [32:0] _T_14;
  wire [31:0] _T_15;
  wire  _T_16;
  wire  _T_19;
  wire  _T_21;
  wire  _T_22;
  wire  _T_23;
  wire  _T_24;
  wire  _T_25;
  wire  _T_26;
  wire  _T_29;
  wire  _T_30;
  wire  _T_31;
  wire  _T_32;
  wire [4:0] shamt;
  wire  _T_34;
  wire  _T_36;
  wire  _T_37;
  wire [15:0] _T_42;
  wire [31:0] _T_43;
  wire [15:0] _T_44;
  wire [31:0] _GEN_1;
  wire [31:0] _T_45;
  wire [31:0] _T_47;
  wire [31:0] _T_48;
  wire [23:0] _T_52;
  wire [31:0] _GEN_2;
  wire [31:0] _T_53;
  wire [23:0] _T_54;
  wire [31:0] _GEN_3;
  wire [31:0] _T_55;
  wire [31:0] _T_57;
  wire [31:0] _T_58;
  wire [27:0] _T_62;
  wire [31:0] _GEN_4;
  wire [31:0] _T_63;
  wire [27:0] _T_64;
  wire [31:0] _GEN_5;
  wire [31:0] _T_65;
  wire [31:0] _T_67;
  wire [31:0] _T_68;
  wire [29:0] _T_72;
  wire [31:0] _GEN_6;
  wire [31:0] _T_73;
  wire [29:0] _T_74;
  wire [31:0] _GEN_7;
  wire [31:0] _T_75;
  wire [31:0] _T_77;
  wire [31:0] _T_78;
  wire [30:0] _T_82;
  wire [31:0] _GEN_8;
  wire [31:0] _T_83;
  wire [30:0] _T_84;
  wire [31:0] _GEN_9;
  wire [31:0] _T_85;
  wire [31:0] _T_87;
  wire [31:0] _T_88;
  wire [31:0] shin;
  wire  _T_90;
  wire  _T_91;
  wire [32:0] _T_92;
  wire [32:0] _T_93;
  wire [32:0] _T_94;
  wire [31:0] shout_r;
  wire [15:0] _T_99;
  wire [31:0] _T_100;
  wire [15:0] _T_101;
  wire [31:0] _GEN_10;
  wire [31:0] _T_102;
  wire [31:0] _T_104;
  wire [31:0] _T_105;
  wire [23:0] _T_109;
  wire [31:0] _GEN_11;
  wire [31:0] _T_110;
  wire [23:0] _T_111;
  wire [31:0] _GEN_12;
  wire [31:0] _T_112;
  wire [31:0] _T_114;
  wire [31:0] _T_115;
  wire [27:0] _T_119;
  wire [31:0] _GEN_13;
  wire [31:0] _T_120;
  wire [27:0] _T_121;
  wire [31:0] _GEN_14;
  wire [31:0] _T_122;
  wire [31:0] _T_124;
  wire [31:0] _T_125;
  wire [29:0] _T_129;
  wire [31:0] _GEN_15;
  wire [31:0] _T_130;
  wire [29:0] _T_131;
  wire [31:0] _GEN_16;
  wire [31:0] _T_132;
  wire [31:0] _T_134;
  wire [31:0] _T_135;
  wire [30:0] _T_139;
  wire [31:0] _GEN_17;
  wire [31:0] _T_140;
  wire [30:0] _T_141;
  wire [31:0] _GEN_18;
  wire [31:0] _T_142;
  wire [31:0] _T_144;
  wire [31:0] shout_l;
  wire [31:0] _T_151;
  wire  _T_153;
  wire [31:0] _T_155;
  wire [31:0] shout;
  wire  _T_157;
  wire  _T_159;
  wire  _T_160;
  wire [31:0] _T_162;
  wire  _T_166;
  wire  _T_167;
  wire [31:0] _T_168;
  wire [31:0] _T_170;
  wire [31:0] logic$;
  wire  _T_172;
  wire  _T_174;
  wire  _T_175;
  wire  _T_177;
  wire  _T_178;
  wire  _T_179;
  wire [31:0] _GEN_19;
  wire [31:0] _T_180;
  wire [31:0] shift_logic;
  wire  _T_182;
  wire  _T_184;
  wire  _T_185;
  wire [31:0] out;
  assign io_out = out;
  assign io_adder_out = _T_15;
  assign io_cmp_out = _T_32;
  assign _T_9 = io_fn[3];
  assign _T_10 = ~ io_in2;
  assign in2_inv = _T_9 ? _T_10 : io_in2;
  assign in1_xor_in2 = io_in1 ^ in2_inv;
  assign _T_11 = io_in1 + in2_inv;
  assign _T_12 = _T_11[31:0];
  assign _GEN_0 = {{31'd0}, _T_9};
  assign _T_14 = _T_12 + _GEN_0;
  assign _T_15 = _T_14[31:0];
  assign _T_16 = io_fn[0];
  assign _T_19 = _T_9 == 1'h0;
  assign _T_21 = in1_xor_in2 == 32'h0;
  assign _T_22 = io_in1[31];
  assign _T_23 = io_in2[31];
  assign _T_24 = _T_22 == _T_23;
  assign _T_25 = io_adder_out[31];
  assign _T_26 = io_fn[1];
  assign _T_29 = _T_26 ? _T_23 : _T_22;
  assign _T_30 = _T_24 ? _T_25 : _T_29;
  assign _T_31 = _T_19 ? _T_21 : _T_30;
  assign _T_32 = _T_16 ^ _T_31;
  assign shamt = io_in2[4:0];
  assign _T_34 = io_fn == 4'h5;
  assign _T_36 = io_fn == 4'hb;
  assign _T_37 = _T_34 | _T_36;
  assign _T_42 = io_in1[31:16];
  assign _T_43 = {{16'd0}, _T_42};
  assign _T_44 = io_in1[15:0];
  assign _GEN_1 = {{16'd0}, _T_44};
  assign _T_45 = _GEN_1 << 16;
  assign _T_47 = _T_45 & 32'hffff0000;
  assign _T_48 = _T_43 | _T_47;
  assign _T_52 = _T_48[31:8];
  assign _GEN_2 = {{8'd0}, _T_52};
  assign _T_53 = _GEN_2 & 32'hff00ff;
  assign _T_54 = _T_48[23:0];
  assign _GEN_3 = {{8'd0}, _T_54};
  assign _T_55 = _GEN_3 << 8;
  assign _T_57 = _T_55 & 32'hff00ff00;
  assign _T_58 = _T_53 | _T_57;
  assign _T_62 = _T_58[31:4];
  assign _GEN_4 = {{4'd0}, _T_62};
  assign _T_63 = _GEN_4 & 32'hf0f0f0f;
  assign _T_64 = _T_58[27:0];
  assign _GEN_5 = {{4'd0}, _T_64};
  assign _T_65 = _GEN_5 << 4;
  assign _T_67 = _T_65 & 32'hf0f0f0f0;
  assign _T_68 = _T_63 | _T_67;
  assign _T_72 = _T_68[31:2];
  assign _GEN_6 = {{2'd0}, _T_72};
  assign _T_73 = _GEN_6 & 32'h33333333;
  assign _T_74 = _T_68[29:0];
  assign _GEN_7 = {{2'd0}, _T_74};
  assign _T_75 = _GEN_7 << 2;
  assign _T_77 = _T_75 & 32'hcccccccc;
  assign _T_78 = _T_73 | _T_77;
  assign _T_82 = _T_78[31:1];
  assign _GEN_8 = {{1'd0}, _T_82};
  assign _T_83 = _GEN_8 & 32'h55555555;
  assign _T_84 = _T_78[30:0];
  assign _GEN_9 = {{1'd0}, _T_84};
  assign _T_85 = _GEN_9 << 1;
  assign _T_87 = _T_85 & 32'haaaaaaaa;
  assign _T_88 = _T_83 | _T_87;
  assign shin = _T_37 ? io_in1 : _T_88;
  assign _T_90 = shin[31];
  assign _T_91 = _T_9 & _T_90;
  assign _T_92 = {_T_91,shin};
  assign _T_93 = $signed(_T_92);
  assign _T_94 = $signed(_T_93) >>> shamt;
  assign shout_r = _T_94[31:0];
  assign _T_99 = shout_r[31:16];
  assign _T_100 = {{16'd0}, _T_99};
  assign _T_101 = shout_r[15:0];
  assign _GEN_10 = {{16'd0}, _T_101};
  assign _T_102 = _GEN_10 << 16;
  assign _T_104 = _T_102 & 32'hffff0000;
  assign _T_105 = _T_100 | _T_104;
  assign _T_109 = _T_105[31:8];
  assign _GEN_11 = {{8'd0}, _T_109};
  assign _T_110 = _GEN_11 & 32'hff00ff;
  assign _T_111 = _T_105[23:0];
  assign _GEN_12 = {{8'd0}, _T_111};
  assign _T_112 = _GEN_12 << 8;
  assign _T_114 = _T_112 & 32'hff00ff00;
  assign _T_115 = _T_110 | _T_114;
  assign _T_119 = _T_115[31:4];
  assign _GEN_13 = {{4'd0}, _T_119};
  assign _T_120 = _GEN_13 & 32'hf0f0f0f;
  assign _T_121 = _T_115[27:0];
  assign _GEN_14 = {{4'd0}, _T_121};
  assign _T_122 = _GEN_14 << 4;
  assign _T_124 = _T_122 & 32'hf0f0f0f0;
  assign _T_125 = _T_120 | _T_124;
  assign _T_129 = _T_125[31:2];
  assign _GEN_15 = {{2'd0}, _T_129};
  assign _T_130 = _GEN_15 & 32'h33333333;
  assign _T_131 = _T_125[29:0];
  assign _GEN_16 = {{2'd0}, _T_131};
  assign _T_132 = _GEN_16 << 2;
  assign _T_134 = _T_132 & 32'hcccccccc;
  assign _T_135 = _T_130 | _T_134;
  assign _T_139 = _T_135[31:1];
  assign _GEN_17 = {{1'd0}, _T_139};
  assign _T_140 = _GEN_17 & 32'h55555555;
  assign _T_141 = _T_135[30:0];
  assign _GEN_18 = {{1'd0}, _T_141};
  assign _T_142 = _GEN_18 << 1;
  assign _T_144 = _T_142 & 32'haaaaaaaa;
  assign shout_l = _T_140 | _T_144;
  assign _T_151 = _T_37 ? shout_r : 32'h0;
  assign _T_153 = io_fn == 4'h1;
  assign _T_155 = _T_153 ? shout_l : 32'h0;
  assign shout = _T_151 | _T_155;
  assign _T_157 = io_fn == 4'h4;
  assign _T_159 = io_fn == 4'h6;
  assign _T_160 = _T_157 | _T_159;
  assign _T_162 = _T_160 ? in1_xor_in2 : 32'h0;
  assign _T_166 = io_fn == 4'h7;
  assign _T_167 = _T_159 | _T_166;
  assign _T_168 = io_in1 & io_in2;
  assign _T_170 = _T_167 ? _T_168 : 32'h0;
  assign logic$ = _T_162 | _T_170;
  assign _T_172 = io_fn == 4'h2;
  assign _T_174 = io_fn == 4'h3;
  assign _T_175 = _T_172 | _T_174;
  assign _T_177 = io_fn >= 4'hc;
  assign _T_178 = _T_175 | _T_177;
  assign _T_179 = _T_178 & io_cmp_out;
  assign _GEN_19 = {{31'd0}, _T_179};
  assign _T_180 = _GEN_19 | logic$;
  assign shift_logic = _T_180 | shout;
  assign _T_182 = io_fn == 4'h0;
  assign _T_184 = io_fn == 4'ha;
  assign _T_185 = _T_182 | _T_184;
  assign out = _T_185 ? io_adder_out : shift_logic;
endmodule
