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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CAPTURE_CHAIN(
  input         clock,
  input         reset,
  input         io_chainIn_shift,
  input         io_chainIn_data,
  input         io_chainIn_capture,
  input         io_chainIn_update,
  output        io_chainOut_data,
  input  [3:0]  io_capture_bits_version,
  input  [15:0] io_capture_bits_partNumber,
  input  [10:0] io_capture_bits_mfrId,
  input         io_capture_bits_always1
);
  reg  regs_0;
  reg [31:0] _RAND_0;
  reg  regs_1;
  reg [31:0] _RAND_1;
  reg  regs_2;
  reg [31:0] _RAND_2;
  reg  regs_3;
  reg [31:0] _RAND_3;
  reg  regs_4;
  reg [31:0] _RAND_4;
  reg  regs_5;
  reg [31:0] _RAND_5;
  reg  regs_6;
  reg [31:0] _RAND_6;
  reg  regs_7;
  reg [31:0] _RAND_7;
  reg  regs_8;
  reg [31:0] _RAND_8;
  reg  regs_9;
  reg [31:0] _RAND_9;
  reg  regs_10;
  reg [31:0] _RAND_10;
  reg  regs_11;
  reg [31:0] _RAND_11;
  reg  regs_12;
  reg [31:0] _RAND_12;
  reg  regs_13;
  reg [31:0] _RAND_13;
  reg  regs_14;
  reg [31:0] _RAND_14;
  reg  regs_15;
  reg [31:0] _RAND_15;
  reg  regs_16;
  reg [31:0] _RAND_16;
  reg  regs_17;
  reg [31:0] _RAND_17;
  reg  regs_18;
  reg [31:0] _RAND_18;
  reg  regs_19;
  reg [31:0] _RAND_19;
  reg  regs_20;
  reg [31:0] _RAND_20;
  reg  regs_21;
  reg [31:0] _RAND_21;
  reg  regs_22;
  reg [31:0] _RAND_22;
  reg  regs_23;
  reg [31:0] _RAND_23;
  reg  regs_24;
  reg [31:0] _RAND_24;
  reg  regs_25;
  reg [31:0] _RAND_25;
  reg  regs_26;
  reg [31:0] _RAND_26;
  reg  regs_27;
  reg [31:0] _RAND_27;
  reg  regs_28;
  reg [31:0] _RAND_28;
  reg  regs_29;
  reg [31:0] _RAND_29;
  reg  regs_30;
  reg [31:0] _RAND_30;
  reg  regs_31;
  reg [31:0] _RAND_31;
  wire [11:0] _T_37;
  wire [19:0] _T_38;
  wire [31:0] _T_39;
  wire  _T_40;
  wire  _T_44;
  wire  _T_48;
  wire  _T_52;
  wire  _T_56;
  wire  _T_60;
  wire  _T_64;
  wire  _T_68;
  wire  _T_72;
  wire  _T_76;
  wire  _T_80;
  wire  _T_84;
  wire  _T_88;
  wire  _T_92;
  wire  _T_96;
  wire  _T_100;
  wire  _T_104;
  wire  _T_108;
  wire  _T_112;
  wire  _T_116;
  wire  _T_120;
  wire  _T_124;
  wire  _T_128;
  wire  _T_132;
  wire  _T_136;
  wire  _T_140;
  wire  _T_144;
  wire  _T_148;
  wire  _T_152;
  wire  _T_156;
  wire  _T_160;
  wire  _T_164;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _GEN_4;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_7;
  wire  _GEN_8;
  wire  _GEN_9;
  wire  _GEN_10;
  wire  _GEN_11;
  wire  _GEN_12;
  wire  _GEN_13;
  wire  _GEN_14;
  wire  _GEN_15;
  wire  _GEN_16;
  wire  _GEN_17;
  wire  _GEN_18;
  wire  _GEN_19;
  wire  _GEN_20;
  wire  _GEN_21;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire  _GEN_26;
  wire  _GEN_27;
  wire  _GEN_28;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire  _T_167;
  wire  _T_168;
  wire  _GEN_33;
  wire  _GEN_34;
  wire  _GEN_35;
  wire  _GEN_36;
  wire  _GEN_37;
  wire  _GEN_38;
  wire  _GEN_39;
  wire  _GEN_40;
  wire  _GEN_41;
  wire  _GEN_42;
  wire  _GEN_43;
  wire  _GEN_44;
  wire  _GEN_45;
  wire  _GEN_46;
  wire  _GEN_47;
  wire  _GEN_48;
  wire  _GEN_49;
  wire  _GEN_50;
  wire  _GEN_51;
  wire  _GEN_52;
  wire  _GEN_53;
  wire  _GEN_54;
  wire  _GEN_55;
  wire  _GEN_56;
  wire  _GEN_57;
  wire  _GEN_58;
  wire  _GEN_59;
  wire  _GEN_60;
  wire  _GEN_61;
  wire  _GEN_62;
  wire  _GEN_63;
  wire  _GEN_64;
  wire  _T_176;
  wire  _T_178;
  wire  _T_179;
  wire  _T_181;
  wire  _T_182;
  wire  _T_183;
  wire  _T_185;
  wire  _T_186;
  wire  _T_187;
  wire  _T_189;
  assign io_chainOut_data = regs_0;
  assign _T_37 = {io_capture_bits_mfrId,io_capture_bits_always1};
  assign _T_38 = {io_capture_bits_version,io_capture_bits_partNumber};
  assign _T_39 = {_T_38,_T_37};
  assign _T_40 = _T_39[0];
  assign _T_44 = _T_39[1];
  assign _T_48 = _T_39[2];
  assign _T_52 = _T_39[3];
  assign _T_56 = _T_39[4];
  assign _T_60 = _T_39[5];
  assign _T_64 = _T_39[6];
  assign _T_68 = _T_39[7];
  assign _T_72 = _T_39[8];
  assign _T_76 = _T_39[9];
  assign _T_80 = _T_39[10];
  assign _T_84 = _T_39[11];
  assign _T_88 = _T_39[12];
  assign _T_92 = _T_39[13];
  assign _T_96 = _T_39[14];
  assign _T_100 = _T_39[15];
  assign _T_104 = _T_39[16];
  assign _T_108 = _T_39[17];
  assign _T_112 = _T_39[18];
  assign _T_116 = _T_39[19];
  assign _T_120 = _T_39[20];
  assign _T_124 = _T_39[21];
  assign _T_128 = _T_39[22];
  assign _T_132 = _T_39[23];
  assign _T_136 = _T_39[24];
  assign _T_140 = _T_39[25];
  assign _T_144 = _T_39[26];
  assign _T_148 = _T_39[27];
  assign _T_152 = _T_39[28];
  assign _T_156 = _T_39[29];
  assign _T_160 = _T_39[30];
  assign _T_164 = _T_39[31];
  assign _GEN_0 = io_chainIn_capture ? _T_40 : regs_0;
  assign _GEN_1 = io_chainIn_capture ? _T_44 : regs_1;
  assign _GEN_2 = io_chainIn_capture ? _T_48 : regs_2;
  assign _GEN_3 = io_chainIn_capture ? _T_52 : regs_3;
  assign _GEN_4 = io_chainIn_capture ? _T_56 : regs_4;
  assign _GEN_5 = io_chainIn_capture ? _T_60 : regs_5;
  assign _GEN_6 = io_chainIn_capture ? _T_64 : regs_6;
  assign _GEN_7 = io_chainIn_capture ? _T_68 : regs_7;
  assign _GEN_8 = io_chainIn_capture ? _T_72 : regs_8;
  assign _GEN_9 = io_chainIn_capture ? _T_76 : regs_9;
  assign _GEN_10 = io_chainIn_capture ? _T_80 : regs_10;
  assign _GEN_11 = io_chainIn_capture ? _T_84 : regs_11;
  assign _GEN_12 = io_chainIn_capture ? _T_88 : regs_12;
  assign _GEN_13 = io_chainIn_capture ? _T_92 : regs_13;
  assign _GEN_14 = io_chainIn_capture ? _T_96 : regs_14;
  assign _GEN_15 = io_chainIn_capture ? _T_100 : regs_15;
  assign _GEN_16 = io_chainIn_capture ? _T_104 : regs_16;
  assign _GEN_17 = io_chainIn_capture ? _T_108 : regs_17;
  assign _GEN_18 = io_chainIn_capture ? _T_112 : regs_18;
  assign _GEN_19 = io_chainIn_capture ? _T_116 : regs_19;
  assign _GEN_20 = io_chainIn_capture ? _T_120 : regs_20;
  assign _GEN_21 = io_chainIn_capture ? _T_124 : regs_21;
  assign _GEN_22 = io_chainIn_capture ? _T_128 : regs_22;
  assign _GEN_23 = io_chainIn_capture ? _T_132 : regs_23;
  assign _GEN_24 = io_chainIn_capture ? _T_136 : regs_24;
  assign _GEN_25 = io_chainIn_capture ? _T_140 : regs_25;
  assign _GEN_26 = io_chainIn_capture ? _T_144 : regs_26;
  assign _GEN_27 = io_chainIn_capture ? _T_148 : regs_27;
  assign _GEN_28 = io_chainIn_capture ? _T_152 : regs_28;
  assign _GEN_29 = io_chainIn_capture ? _T_156 : regs_29;
  assign _GEN_30 = io_chainIn_capture ? _T_160 : regs_30;
  assign _GEN_31 = io_chainIn_capture ? _T_164 : regs_31;
  assign _T_167 = io_chainIn_capture == 1'h0;
  assign _T_168 = _T_167 & io_chainIn_shift;
  assign _GEN_33 = _T_168 ? io_chainIn_data : _GEN_31;
  assign _GEN_34 = _T_168 ? regs_1 : _GEN_0;
  assign _GEN_35 = _T_168 ? regs_2 : _GEN_1;
  assign _GEN_36 = _T_168 ? regs_3 : _GEN_2;
  assign _GEN_37 = _T_168 ? regs_4 : _GEN_3;
  assign _GEN_38 = _T_168 ? regs_5 : _GEN_4;
  assign _GEN_39 = _T_168 ? regs_6 : _GEN_5;
  assign _GEN_40 = _T_168 ? regs_7 : _GEN_6;
  assign _GEN_41 = _T_168 ? regs_8 : _GEN_7;
  assign _GEN_42 = _T_168 ? regs_9 : _GEN_8;
  assign _GEN_43 = _T_168 ? regs_10 : _GEN_9;
  assign _GEN_44 = _T_168 ? regs_11 : _GEN_10;
  assign _GEN_45 = _T_168 ? regs_12 : _GEN_11;
  assign _GEN_46 = _T_168 ? regs_13 : _GEN_12;
  assign _GEN_47 = _T_168 ? regs_14 : _GEN_13;
  assign _GEN_48 = _T_168 ? regs_15 : _GEN_14;
  assign _GEN_49 = _T_168 ? regs_16 : _GEN_15;
  assign _GEN_50 = _T_168 ? regs_17 : _GEN_16;
  assign _GEN_51 = _T_168 ? regs_18 : _GEN_17;
  assign _GEN_52 = _T_168 ? regs_19 : _GEN_18;
  assign _GEN_53 = _T_168 ? regs_20 : _GEN_19;
  assign _GEN_54 = _T_168 ? regs_21 : _GEN_20;
  assign _GEN_55 = _T_168 ? regs_22 : _GEN_21;
  assign _GEN_56 = _T_168 ? regs_23 : _GEN_22;
  assign _GEN_57 = _T_168 ? regs_24 : _GEN_23;
  assign _GEN_58 = _T_168 ? regs_25 : _GEN_24;
  assign _GEN_59 = _T_168 ? regs_26 : _GEN_25;
  assign _GEN_60 = _T_168 ? regs_27 : _GEN_26;
  assign _GEN_61 = _T_168 ? regs_28 : _GEN_27;
  assign _GEN_62 = _T_168 ? regs_29 : _GEN_28;
  assign _GEN_63 = _T_168 ? regs_30 : _GEN_29;
  assign _GEN_64 = _T_168 ? regs_31 : _GEN_30;
  assign _T_176 = io_chainIn_capture & io_chainIn_update;
  assign _T_178 = _T_176 == 1'h0;
  assign _T_179 = io_chainIn_capture & io_chainIn_shift;
  assign _T_181 = _T_179 == 1'h0;
  assign _T_182 = _T_178 & _T_181;
  assign _T_183 = io_chainIn_update & io_chainIn_shift;
  assign _T_185 = _T_183 == 1'h0;
  assign _T_186 = _T_182 & _T_185;
  assign _T_187 = _T_186 | reset;
  assign _T_189 = _T_187 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  regs_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  regs_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  regs_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  regs_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  regs_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  regs_5 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  regs_6 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  regs_7 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  regs_8 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  regs_9 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  regs_10 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  regs_11 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  regs_12 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  regs_13 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  regs_14 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  regs_15 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  regs_16 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  regs_17 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  regs_18 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  regs_19 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  regs_20 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  regs_21 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  regs_22 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  regs_23 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  regs_24 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  regs_25 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  regs_26 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  regs_27 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  regs_28 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  regs_29 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  regs_30 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  regs_31 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_168) begin
      regs_0 <= regs_1;
    end else begin
      if (io_chainIn_capture) begin
        regs_0 <= _T_40;
      end
    end
    if (_T_168) begin
      regs_1 <= regs_2;
    end else begin
      if (io_chainIn_capture) begin
        regs_1 <= _T_44;
      end
    end
    if (_T_168) begin
      regs_2 <= regs_3;
    end else begin
      if (io_chainIn_capture) begin
        regs_2 <= _T_48;
      end
    end
    if (_T_168) begin
      regs_3 <= regs_4;
    end else begin
      if (io_chainIn_capture) begin
        regs_3 <= _T_52;
      end
    end
    if (_T_168) begin
      regs_4 <= regs_5;
    end else begin
      if (io_chainIn_capture) begin
        regs_4 <= _T_56;
      end
    end
    if (_T_168) begin
      regs_5 <= regs_6;
    end else begin
      if (io_chainIn_capture) begin
        regs_5 <= _T_60;
      end
    end
    if (_T_168) begin
      regs_6 <= regs_7;
    end else begin
      if (io_chainIn_capture) begin
        regs_6 <= _T_64;
      end
    end
    if (_T_168) begin
      regs_7 <= regs_8;
    end else begin
      if (io_chainIn_capture) begin
        regs_7 <= _T_68;
      end
    end
    if (_T_168) begin
      regs_8 <= regs_9;
    end else begin
      if (io_chainIn_capture) begin
        regs_8 <= _T_72;
      end
    end
    if (_T_168) begin
      regs_9 <= regs_10;
    end else begin
      if (io_chainIn_capture) begin
        regs_9 <= _T_76;
      end
    end
    if (_T_168) begin
      regs_10 <= regs_11;
    end else begin
      if (io_chainIn_capture) begin
        regs_10 <= _T_80;
      end
    end
    if (_T_168) begin
      regs_11 <= regs_12;
    end else begin
      if (io_chainIn_capture) begin
        regs_11 <= _T_84;
      end
    end
    if (_T_168) begin
      regs_12 <= regs_13;
    end else begin
      if (io_chainIn_capture) begin
        regs_12 <= _T_88;
      end
    end
    if (_T_168) begin
      regs_13 <= regs_14;
    end else begin
      if (io_chainIn_capture) begin
        regs_13 <= _T_92;
      end
    end
    if (_T_168) begin
      regs_14 <= regs_15;
    end else begin
      if (io_chainIn_capture) begin
        regs_14 <= _T_96;
      end
    end
    if (_T_168) begin
      regs_15 <= regs_16;
    end else begin
      if (io_chainIn_capture) begin
        regs_15 <= _T_100;
      end
    end
    if (_T_168) begin
      regs_16 <= regs_17;
    end else begin
      if (io_chainIn_capture) begin
        regs_16 <= _T_104;
      end
    end
    if (_T_168) begin
      regs_17 <= regs_18;
    end else begin
      if (io_chainIn_capture) begin
        regs_17 <= _T_108;
      end
    end
    if (_T_168) begin
      regs_18 <= regs_19;
    end else begin
      if (io_chainIn_capture) begin
        regs_18 <= _T_112;
      end
    end
    if (_T_168) begin
      regs_19 <= regs_20;
    end else begin
      if (io_chainIn_capture) begin
        regs_19 <= _T_116;
      end
    end
    if (_T_168) begin
      regs_20 <= regs_21;
    end else begin
      if (io_chainIn_capture) begin
        regs_20 <= _T_120;
      end
    end
    if (_T_168) begin
      regs_21 <= regs_22;
    end else begin
      if (io_chainIn_capture) begin
        regs_21 <= _T_124;
      end
    end
    if (_T_168) begin
      regs_22 <= regs_23;
    end else begin
      if (io_chainIn_capture) begin
        regs_22 <= _T_128;
      end
    end
    if (_T_168) begin
      regs_23 <= regs_24;
    end else begin
      if (io_chainIn_capture) begin
        regs_23 <= _T_132;
      end
    end
    if (_T_168) begin
      regs_24 <= regs_25;
    end else begin
      if (io_chainIn_capture) begin
        regs_24 <= _T_136;
      end
    end
    if (_T_168) begin
      regs_25 <= regs_26;
    end else begin
      if (io_chainIn_capture) begin
        regs_25 <= _T_140;
      end
    end
    if (_T_168) begin
      regs_26 <= regs_27;
    end else begin
      if (io_chainIn_capture) begin
        regs_26 <= _T_144;
      end
    end
    if (_T_168) begin
      regs_27 <= regs_28;
    end else begin
      if (io_chainIn_capture) begin
        regs_27 <= _T_148;
      end
    end
    if (_T_168) begin
      regs_28 <= regs_29;
    end else begin
      if (io_chainIn_capture) begin
        regs_28 <= _T_152;
      end
    end
    if (_T_168) begin
      regs_29 <= regs_30;
    end else begin
      if (io_chainIn_capture) begin
        regs_29 <= _T_156;
      end
    end
    if (_T_168) begin
      regs_30 <= regs_31;
    end else begin
      if (io_chainIn_capture) begin
        regs_30 <= _T_160;
      end
    end
    if (_T_168) begin
      regs_31 <= io_chainIn_data;
    end else begin
      if (io_chainIn_capture) begin
        regs_31 <= _T_164;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_189) begin
          $fwrite(32'h80000002,"Assertion failed\n    at JtagShifter.scala:111 assert(!(io.chainIn.capture && io.chainIn.update)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_189) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
