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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ALU(
  input   clk,
  input   reset,
  input   io_dw,
  input  [3:0] io_fn,
  input  [31:0] io_in2,
  input  [31:0] io_in1,
  output [31:0] io_out,
  output [31:0] io_adder_out,
  output  io_cmp_out
);
  wire  T_6;
  wire [31:0] T_7;
  wire [31:0] in2_inv;
  wire [31:0] in1_xor_in2;
  wire [32:0] T_8;
  wire [31:0] T_9;
  wire [31:0] GEN_0;
  wire [32:0] T_11;
  wire [31:0] T_12;
  wire  T_13;
  wire  T_16;
  wire  T_18;
  wire  T_19;
  wire  T_20;
  wire  T_21;
  wire  T_22;
  wire  T_23;
  wire  T_26;
  wire  T_27;
  wire  T_28;
  wire  T_29;
  wire [4:0] shamt;
  wire  T_30;
  wire  T_31;
  wire  T_32;
  wire [15:0] T_37;
  wire [31:0] T_38;
  wire [15:0] T_39;
  wire [31:0] GEN_1;
  wire [31:0] T_40;
  wire [31:0] T_42;
  wire [31:0] T_43;
  wire [23:0] T_47;
  wire [31:0] GEN_2;
  wire [31:0] T_48;
  wire [23:0] T_49;
  wire [31:0] GEN_3;
  wire [31:0] T_50;
  wire [31:0] T_52;
  wire [31:0] T_53;
  wire [27:0] T_57;
  wire [31:0] GEN_4;
  wire [31:0] T_58;
  wire [27:0] T_59;
  wire [31:0] GEN_5;
  wire [31:0] T_60;
  wire [31:0] T_62;
  wire [31:0] T_63;
  wire [29:0] T_67;
  wire [31:0] GEN_6;
  wire [31:0] T_68;
  wire [29:0] T_69;
  wire [31:0] GEN_7;
  wire [31:0] T_70;
  wire [31:0] T_72;
  wire [31:0] T_73;
  wire [30:0] T_77;
  wire [31:0] GEN_8;
  wire [31:0] T_78;
  wire [30:0] T_79;
  wire [31:0] GEN_9;
  wire [31:0] T_80;
  wire [31:0] T_82;
  wire [31:0] T_83;
  wire [31:0] shin;
  wire  T_85;
  wire  T_86;
  wire [32:0] T_87;
  wire [32:0] T_88;
  wire [32:0] T_89;
  wire [31:0] shout_r;
  wire [15:0] T_94;
  wire [31:0] T_95;
  wire [15:0] T_96;
  wire [31:0] GEN_10;
  wire [31:0] T_97;
  wire [31:0] T_99;
  wire [31:0] T_100;
  wire [23:0] T_104;
  wire [31:0] GEN_11;
  wire [31:0] T_105;
  wire [23:0] T_106;
  wire [31:0] GEN_12;
  wire [31:0] T_107;
  wire [31:0] T_109;
  wire [31:0] T_110;
  wire [27:0] T_114;
  wire [31:0] GEN_13;
  wire [31:0] T_115;
  wire [27:0] T_116;
  wire [31:0] GEN_14;
  wire [31:0] T_117;
  wire [31:0] T_119;
  wire [31:0] T_120;
  wire [29:0] T_124;
  wire [31:0] GEN_15;
  wire [31:0] T_125;
  wire [29:0] T_126;
  wire [31:0] GEN_16;
  wire [31:0] T_127;
  wire [31:0] T_129;
  wire [31:0] T_130;
  wire [30:0] T_134;
  wire [31:0] GEN_17;
  wire [31:0] T_135;
  wire [30:0] T_136;
  wire [31:0] GEN_18;
  wire [31:0] T_137;
  wire [31:0] T_139;
  wire [31:0] shout_l;
  wire [31:0] T_144;
  wire  T_145;
  wire [31:0] T_147;
  wire [31:0] shout;
  wire  T_148;
  wire  T_149;
  wire  T_150;
  wire [31:0] T_152;
  wire  T_154;
  wire  T_155;
  wire [31:0] T_156;
  wire [31:0] T_158;
  wire [31:0] logic$;
  wire  T_159;
  wire  T_160;
  wire  T_161;
  wire  T_162;
  wire  T_163;
  wire  T_164;
  wire [31:0] GEN_19;
  wire [31:0] T_165;
  wire [31:0] shift_logic;
  wire  T_166;
  wire  T_167;
  wire  T_168;
  wire [31:0] out;
  assign io_out = out;
  assign io_adder_out = T_12;
  assign io_cmp_out = T_29;
  assign T_6 = io_fn[3];
  assign T_7 = ~ io_in2;
  assign in2_inv = T_6 ? T_7 : io_in2;
  assign in1_xor_in2 = io_in1 ^ in2_inv;
  assign T_8 = io_in1 + in2_inv;
  assign T_9 = T_8[31:0];
  assign GEN_0 = {{31'd0}, T_6};
  assign T_11 = T_9 + GEN_0;
  assign T_12 = T_11[31:0];
  assign T_13 = io_fn[0];
  assign T_16 = T_6 == 1'h0;
  assign T_18 = in1_xor_in2 == 32'h0;
  assign T_19 = io_in1[31];
  assign T_20 = io_in2[31];
  assign T_21 = T_19 == T_20;
  assign T_22 = io_adder_out[31];
  assign T_23 = io_fn[1];
  assign T_26 = T_23 ? T_20 : T_19;
  assign T_27 = T_21 ? T_22 : T_26;
  assign T_28 = T_16 ? T_18 : T_27;
  assign T_29 = T_13 ^ T_28;
  assign shamt = io_in2[4:0];
  assign T_30 = io_fn == 4'h5;
  assign T_31 = io_fn == 4'hb;
  assign T_32 = T_30 | T_31;
  assign T_37 = io_in1[31:16];
  assign T_38 = {{16'd0}, T_37};
  assign T_39 = io_in1[15:0];
  assign GEN_1 = {{16'd0}, T_39};
  assign T_40 = GEN_1 << 16;
  assign T_42 = T_40 & 32'hffff0000;
  assign T_43 = T_38 | T_42;
  assign T_47 = T_43[31:8];
  assign GEN_2 = {{8'd0}, T_47};
  assign T_48 = GEN_2 & 32'hff00ff;
  assign T_49 = T_43[23:0];
  assign GEN_3 = {{8'd0}, T_49};
  assign T_50 = GEN_3 << 8;
  assign T_52 = T_50 & 32'hff00ff00;
  assign T_53 = T_48 | T_52;
  assign T_57 = T_53[31:4];
  assign GEN_4 = {{4'd0}, T_57};
  assign T_58 = GEN_4 & 32'hf0f0f0f;
  assign T_59 = T_53[27:0];
  assign GEN_5 = {{4'd0}, T_59};
  assign T_60 = GEN_5 << 4;
  assign T_62 = T_60 & 32'hf0f0f0f0;
  assign T_63 = T_58 | T_62;
  assign T_67 = T_63[31:2];
  assign GEN_6 = {{2'd0}, T_67};
  assign T_68 = GEN_6 & 32'h33333333;
  assign T_69 = T_63[29:0];
  assign GEN_7 = {{2'd0}, T_69};
  assign T_70 = GEN_7 << 2;
  assign T_72 = T_70 & 32'hcccccccc;
  assign T_73 = T_68 | T_72;
  assign T_77 = T_73[31:1];
  assign GEN_8 = {{1'd0}, T_77};
  assign T_78 = GEN_8 & 32'h55555555;
  assign T_79 = T_73[30:0];
  assign GEN_9 = {{1'd0}, T_79};
  assign T_80 = GEN_9 << 1;
  assign T_82 = T_80 & 32'haaaaaaaa;
  assign T_83 = T_78 | T_82;
  assign shin = T_32 ? io_in1 : T_83;
  assign T_85 = shin[31];
  assign T_86 = T_6 & T_85;
  assign T_87 = {T_86,shin};
  assign T_88 = $signed(T_87);
  assign T_89 = $signed(T_88) >>> shamt;
  assign shout_r = T_89[31:0];
  assign T_94 = shout_r[31:16];
  assign T_95 = {{16'd0}, T_94};
  assign T_96 = shout_r[15:0];
  assign GEN_10 = {{16'd0}, T_96};
  assign T_97 = GEN_10 << 16;
  assign T_99 = T_97 & 32'hffff0000;
  assign T_100 = T_95 | T_99;
  assign T_104 = T_100[31:8];
  assign GEN_11 = {{8'd0}, T_104};
  assign T_105 = GEN_11 & 32'hff00ff;
  assign T_106 = T_100[23:0];
  assign GEN_12 = {{8'd0}, T_106};
  assign T_107 = GEN_12 << 8;
  assign T_109 = T_107 & 32'hff00ff00;
  assign T_110 = T_105 | T_109;
  assign T_114 = T_110[31:4];
  assign GEN_13 = {{4'd0}, T_114};
  assign T_115 = GEN_13 & 32'hf0f0f0f;
  assign T_116 = T_110[27:0];
  assign GEN_14 = {{4'd0}, T_116};
  assign T_117 = GEN_14 << 4;
  assign T_119 = T_117 & 32'hf0f0f0f0;
  assign T_120 = T_115 | T_119;
  assign T_124 = T_120[31:2];
  assign GEN_15 = {{2'd0}, T_124};
  assign T_125 = GEN_15 & 32'h33333333;
  assign T_126 = T_120[29:0];
  assign GEN_16 = {{2'd0}, T_126};
  assign T_127 = GEN_16 << 2;
  assign T_129 = T_127 & 32'hcccccccc;
  assign T_130 = T_125 | T_129;
  assign T_134 = T_130[31:1];
  assign GEN_17 = {{1'd0}, T_134};
  assign T_135 = GEN_17 & 32'h55555555;
  assign T_136 = T_130[30:0];
  assign GEN_18 = {{1'd0}, T_136};
  assign T_137 = GEN_18 << 1;
  assign T_139 = T_137 & 32'haaaaaaaa;
  assign shout_l = T_135 | T_139;
  assign T_144 = T_32 ? shout_r : 32'h0;
  assign T_145 = io_fn == 4'h1;
  assign T_147 = T_145 ? shout_l : 32'h0;
  assign shout = T_144 | T_147;
  assign T_148 = io_fn == 4'h4;
  assign T_149 = io_fn == 4'h6;
  assign T_150 = T_148 | T_149;
  assign T_152 = T_150 ? in1_xor_in2 : 32'h0;
  assign T_154 = io_fn == 4'h7;
  assign T_155 = T_149 | T_154;
  assign T_156 = io_in1 & io_in2;
  assign T_158 = T_155 ? T_156 : 32'h0;
  assign logic$ = T_152 | T_158;
  assign T_159 = io_fn == 4'h2;
  assign T_160 = io_fn == 4'h3;
  assign T_161 = T_159 | T_160;
  assign T_162 = io_fn >= 4'hc;
  assign T_163 = T_161 | T_162;
  assign T_164 = T_163 & io_cmp_out;
  assign GEN_19 = {{31'd0}, T_164};
  assign T_165 = GEN_19 | logic$;
  assign shift_logic = T_165 | shout;
  assign T_166 = io_fn == 4'h0;
  assign T_167 = io_fn == 4'ha;
  assign T_168 = T_166 | T_167;
  assign out = T_168 ? io_adder_out : shift_logic;
endmodule
