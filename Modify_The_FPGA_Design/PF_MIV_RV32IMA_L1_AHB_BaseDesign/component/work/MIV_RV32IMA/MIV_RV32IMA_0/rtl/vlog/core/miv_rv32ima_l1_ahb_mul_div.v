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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_MUL_DIV(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [3:0]  io_req_bits_fn,
  input  [31:0] io_req_bits_in1,
  input  [31:0] io_req_bits_in2,
  input  [4:0]  io_req_bits_tag,
  input         io_kill,
  input         io_resp_ready,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output [4:0]  io_resp_bits_tag
);
  reg [2:0] state;
  reg [31:0] _RAND_0;
  reg [4:0] req_tag;
  reg [31:0] _RAND_1;
  reg [5:0] count;
  reg [31:0] _RAND_2;
  reg  neg_out;
  reg [31:0] _RAND_3;
  reg  isHi;
  reg [31:0] _RAND_4;
  reg  resHi;
  reg [31:0] _RAND_5;
  reg [32:0] divisor;
  reg [63:0] _RAND_6;
  reg [65:0] remainder;
  reg [95:0] _RAND_7;
  wire [3:0] _T_32;
  wire  _T_34;
  wire [3:0] _T_36;
  wire  _T_38;
  wire  _T_41;
  wire [3:0] _T_43;
  wire  _T_45;
  wire [3:0] _T_47;
  wire  _T_49;
  wire  _T_52;
  wire  _T_53;
  wire [3:0] _T_55;
  wire  _T_57;
  wire [3:0] _T_59;
  wire  _T_61;
  wire  _T_64;
  wire  _T_65;
  wire  _T_74;
  wire  lhs_sign;
  wire [15:0] _T_80;
  wire [15:0] _T_82;
  wire [31:0] lhs_in;
  wire  _T_88;
  wire  rhs_sign;
  wire [15:0] _T_94;
  wire [15:0] _T_96;
  wire [31:0] rhs_in;
  wire [32:0] _T_97;
  wire [33:0] _T_98;
  wire [33:0] _T_99;
  wire [32:0] subtractor;
  wire [31:0] _T_100;
  wire [31:0] _T_101;
  wire [31:0] result;
  wire [32:0] _T_103;
  wire [32:0] _T_104;
  wire [31:0] negated_remainder;
  wire  _T_105;
  wire  _T_106;
  wire [65:0] _GEN_0;
  wire  _T_107;
  wire [32:0] _GEN_1;
  wire [65:0] _GEN_2;
  wire [32:0] _GEN_3;
  wire [2:0] _GEN_4;
  wire  _T_108;
  wire [65:0] _GEN_5;
  wire [2:0] _GEN_6;
  wire  _GEN_7;
  wire  _T_110;
  wire [32:0] _T_111;
  wire [64:0] _T_113;
  wire  _T_114;
  wire [31:0] _T_115;
  wire [32:0] _T_116;
  wire [32:0] _T_117;
  wire [32:0] _T_118;
  wire [15:0] _T_119;
  wire [16:0] _T_120;
  wire [16:0] _T_121;
  wire [32:0] _GEN_35;
  wire [49:0] _T_122;
  wire [49:0] _GEN_36;
  wire [50:0] _T_123;
  wire [49:0] _T_124;
  wire [49:0] _T_125;
  wire [15:0] _T_126;
  wire [49:0] _T_127;
  wire [65:0] _T_128;
  wire  _T_130;
  wire  _T_131;
  wire  _T_146;
  wire [32:0] _T_161;
  wire [31:0] _T_163;
  wire [64:0] _T_164;
  wire [32:0] _T_165;
  wire [31:0] _T_166;
  wire [33:0] _T_167;
  wire [65:0] _T_168;
  wire [6:0] _T_170;
  wire [5:0] _T_171;
  wire  _T_173;
  wire [2:0] _GEN_8;
  wire  _GEN_9;
  wire [65:0] _GEN_10;
  wire [5:0] _GEN_11;
  wire [2:0] _GEN_12;
  wire  _GEN_13;
  wire  _T_175;
  wire  _T_176;
  wire [31:0] _T_177;
  wire [31:0] _T_178;
  wire [31:0] _T_179;
  wire  _T_182;
  wire [63:0] _T_183;
  wire [64:0] _T_184;
  wire  _T_186;
  wire [2:0] _T_187;
  wire [2:0] _GEN_14;
  wire  _GEN_15;
  wire  _T_196;
  wire  _T_199;
  wire  _GEN_16;
  wire [65:0] _GEN_17;
  wire [2:0] _GEN_18;
  wire  _GEN_19;
  wire [5:0] _GEN_20;
  wire  _GEN_21;
  wire  _T_201;
  wire  _T_202;
  wire [2:0] _GEN_22;
  wire  _T_203;
  wire  _T_204;
  wire [2:0] _T_205;
  wire [2:0] _T_206;
  wire  _T_218;
  wire  _T_219;
  wire [32:0] _T_220;
  wire [2:0] _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire [5:0] _GEN_26;
  wire  _GEN_27;
  wire [32:0] _GEN_28;
  wire [65:0] _GEN_29;
  wire [4:0] _GEN_34;
  wire [15:0] _T_232;
  wire [15:0] _T_233;
  wire [31:0] _T_244;
  wire  _T_245;
  wire  _T_246;
  wire  _T_247;
  wire  _T_248;
  assign io_req_ready = _T_248;
  assign io_resp_valid = _T_247;
  assign io_resp_bits_data = _T_244;
  assign io_resp_bits_tag = req_tag;
  assign _T_32 = io_req_bits_fn & 4'h4;
  assign _T_34 = _T_32 == 4'h0;
  assign _T_36 = io_req_bits_fn & 4'h8;
  assign _T_38 = _T_36 == 4'h8;
  assign _T_41 = _T_34 | _T_38;
  assign _T_43 = io_req_bits_fn & 4'h5;
  assign _T_45 = _T_43 == 4'h1;
  assign _T_47 = io_req_bits_fn & 4'h2;
  assign _T_49 = _T_47 == 4'h2;
  assign _T_52 = _T_45 | _T_49;
  assign _T_53 = _T_52 | _T_38;
  assign _T_55 = io_req_bits_fn & 4'h9;
  assign _T_57 = _T_55 == 4'h0;
  assign _T_59 = io_req_bits_fn & 4'h3;
  assign _T_61 = _T_59 == 4'h0;
  assign _T_64 = _T_57 | _T_34;
  assign _T_65 = _T_64 | _T_61;
  assign _T_74 = io_req_bits_in1[31];
  assign lhs_sign = _T_65 & _T_74;
  assign _T_80 = io_req_bits_in1[31:16];
  assign _T_82 = io_req_bits_in1[15:0];
  assign lhs_in = {_T_80,_T_82};
  assign _T_88 = io_req_bits_in2[31];
  assign rhs_sign = _T_64 & _T_88;
  assign _T_94 = io_req_bits_in2[31:16];
  assign _T_96 = io_req_bits_in2[15:0];
  assign rhs_in = {_T_94,_T_96};
  assign _T_97 = remainder[64:32];
  assign _T_98 = _T_97 - divisor;
  assign _T_99 = $unsigned(_T_98);
  assign subtractor = _T_99[32:0];
  assign _T_100 = remainder[64:33];
  assign _T_101 = remainder[31:0];
  assign result = resHi ? _T_100 : _T_101;
  assign _T_103 = 32'h0 - result;
  assign _T_104 = $unsigned(_T_103);
  assign negated_remainder = _T_104[31:0];
  assign _T_105 = state == 3'h1;
  assign _T_106 = remainder[31];
  assign _GEN_0 = _T_106 ? {{34'd0}, negated_remainder} : remainder;
  assign _T_107 = divisor[31];
  assign _GEN_1 = _T_107 ? subtractor : divisor;
  assign _GEN_2 = _T_105 ? _GEN_0 : remainder;
  assign _GEN_3 = _T_105 ? _GEN_1 : divisor;
  assign _GEN_4 = _T_105 ? 3'h3 : state;
  assign _T_108 = state == 3'h5;
  assign _GEN_5 = _T_108 ? {{34'd0}, negated_remainder} : _GEN_2;
  assign _GEN_6 = _T_108 ? 3'h7 : _GEN_4;
  assign _GEN_7 = _T_108 ? 1'h0 : resHi;
  assign _T_110 = state == 3'h2;
  assign _T_111 = remainder[65:33];
  assign _T_113 = {_T_111,_T_101};
  assign _T_114 = remainder[32];
  assign _T_115 = _T_113[31:0];
  assign _T_116 = _T_113[64:32];
  assign _T_117 = $signed(_T_116);
  assign _T_118 = $signed(divisor);
  assign _T_119 = _T_115[15:0];
  assign _T_120 = {_T_114,_T_119};
  assign _T_121 = $signed(_T_120);
  assign _GEN_35 = {{16{_T_121[16]}},_T_121};
  assign _T_122 = $signed(_GEN_35) * $signed(_T_118);
  assign _GEN_36 = {{17{_T_117[32]}},_T_117};
  assign _T_123 = $signed(_T_122) + $signed(_GEN_36);
  assign _T_124 = _T_123[49:0];
  assign _T_125 = $signed(_T_124);
  assign _T_126 = _T_115[31:16];
  assign _T_127 = $unsigned(_T_125);
  assign _T_128 = {_T_127,_T_126};
  assign _T_130 = count == 6'h0;
  assign _T_131 = _T_130 & neg_out;
  assign _T_146 = isHi == 1'h0;
  assign _T_161 = _T_128[64:32];
  assign _T_163 = _T_128[31:0];
  assign _T_164 = {_T_161,_T_163};
  assign _T_165 = _T_164[64:32];
  assign _T_166 = _T_164[31:0];
  assign _T_167 = {_T_165,_T_131};
  assign _T_168 = {_T_167,_T_166};
  assign _T_170 = count + 6'h1;
  assign _T_171 = _T_170[5:0];
  assign _T_173 = count == 6'h1;
  assign _GEN_8 = _T_173 ? 3'h6 : _GEN_6;
  assign _GEN_9 = _T_173 ? isHi : _GEN_7;
  assign _GEN_10 = _T_110 ? _T_168 : _GEN_5;
  assign _GEN_11 = _T_110 ? _T_171 : count;
  assign _GEN_12 = _T_110 ? _GEN_8 : _GEN_6;
  assign _GEN_13 = _T_110 ? _GEN_9 : _GEN_7;
  assign _T_175 = state == 3'h3;
  assign _T_176 = subtractor[32];
  assign _T_177 = remainder[63:32];
  assign _T_178 = subtractor[31:0];
  assign _T_179 = _T_176 ? _T_177 : _T_178;
  assign _T_182 = _T_176 == 1'h0;
  assign _T_183 = {_T_179,_T_101};
  assign _T_184 = {_T_183,_T_182};
  assign _T_186 = count == 6'h20;
  assign _T_187 = neg_out ? 3'h5 : 3'h7;
  assign _GEN_14 = _T_186 ? _T_187 : _GEN_12;
  assign _GEN_15 = _T_186 ? isHi : _GEN_13;
  assign _T_196 = _T_130 & _T_182;
  assign _T_199 = _T_196 & _T_146;
  assign _GEN_16 = _T_199 ? 1'h0 : neg_out;
  assign _GEN_17 = _T_175 ? {{1'd0}, _T_184} : _GEN_10;
  assign _GEN_18 = _T_175 ? _GEN_14 : _GEN_12;
  assign _GEN_19 = _T_175 ? _GEN_15 : _GEN_13;
  assign _GEN_20 = _T_175 ? _T_171 : _GEN_11;
  assign _GEN_21 = _T_175 ? _GEN_16 : neg_out;
  assign _T_201 = io_resp_ready & io_resp_valid;
  assign _T_202 = _T_201 | io_kill;
  assign _GEN_22 = _T_202 ? 3'h0 : _GEN_18;
  assign _T_203 = io_req_ready & io_req_valid;
  assign _T_204 = lhs_sign | rhs_sign;
  assign _T_205 = _T_204 ? 3'h1 : 3'h3;
  assign _T_206 = _T_41 ? 3'h2 : _T_205;
  assign _T_218 = lhs_sign != rhs_sign;
  assign _T_219 = _T_53 ? lhs_sign : _T_218;
  assign _T_220 = {rhs_sign,rhs_in};
  assign _GEN_23 = _T_203 ? _T_206 : _GEN_22;
  assign _GEN_24 = _T_203 ? _T_53 : isHi;
  assign _GEN_25 = _T_203 ? 1'h0 : _GEN_19;
  assign _GEN_26 = _T_203 ? 6'h0 : _GEN_20;
  assign _GEN_27 = _T_203 ? _T_219 : _GEN_21;
  assign _GEN_28 = _T_203 ? _T_220 : _GEN_3;
  assign _GEN_29 = _T_203 ? {{34'd0}, lhs_in} : _GEN_17;
  assign _GEN_34 = _T_203 ? io_req_bits_tag : req_tag;
  assign _T_232 = result[31:16];
  assign _T_233 = result[15:0];
  assign _T_244 = {_T_232,_T_233};
  assign _T_245 = state == 3'h6;
  assign _T_246 = state == 3'h7;
  assign _T_247 = _T_245 | _T_246;
  assign _T_248 = state == 3'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  req_tag = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  count = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  neg_out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  isHi = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  resHi = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{$random}};
  divisor = _RAND_6[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{$random}};
  remainder = _RAND_7[65:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_203) begin
        if (_T_41) begin
          state <= 3'h2;
        end else begin
          if (_T_204) begin
            state <= 3'h1;
          end else begin
            state <= 3'h3;
          end
        end
      end else begin
        if (_T_202) begin
          state <= 3'h0;
        end else begin
          if (_T_175) begin
            if (_T_186) begin
              if (neg_out) begin
                state <= 3'h5;
              end else begin
                state <= 3'h7;
              end
            end else begin
              if (_T_110) begin
                if (_T_173) begin
                  state <= 3'h6;
                end else begin
                  if (_T_108) begin
                    state <= 3'h7;
                  end else begin
                    if (_T_105) begin
                      state <= 3'h3;
                    end
                  end
                end
              end else begin
                if (_T_108) begin
                  state <= 3'h7;
                end else begin
                  if (_T_105) begin
                    state <= 3'h3;
                  end
                end
              end
            end
          end else begin
            if (_T_110) begin
              if (_T_173) begin
                state <= 3'h6;
              end else begin
                if (_T_108) begin
                  state <= 3'h7;
                end else begin
                  if (_T_105) begin
                    state <= 3'h3;
                  end
                end
              end
            end else begin
              if (_T_108) begin
                state <= 3'h7;
              end else begin
                if (_T_105) begin
                  state <= 3'h3;
                end
              end
            end
          end
        end
      end
    end
    if (_T_203) begin
      req_tag <= io_req_bits_tag;
    end
    if (_T_203) begin
      count <= 6'h0;
    end else begin
      if (_T_175) begin
        count <= _T_171;
      end else begin
        if (_T_110) begin
          count <= _T_171;
        end
      end
    end
    if (_T_203) begin
      if (_T_53) begin
        neg_out <= lhs_sign;
      end else begin
        neg_out <= _T_218;
      end
    end else begin
      if (_T_175) begin
        if (_T_199) begin
          neg_out <= 1'h0;
        end
      end
    end
    if (_T_203) begin
      isHi <= _T_53;
    end
    if (_T_203) begin
      resHi <= 1'h0;
    end else begin
      if (_T_175) begin
        if (_T_186) begin
          resHi <= isHi;
        end else begin
          if (_T_110) begin
            if (_T_173) begin
              resHi <= isHi;
            end else begin
              if (_T_108) begin
                resHi <= 1'h0;
              end
            end
          end else begin
            if (_T_108) begin
              resHi <= 1'h0;
            end
          end
        end
      end else begin
        if (_T_110) begin
          if (_T_173) begin
            resHi <= isHi;
          end else begin
            if (_T_108) begin
              resHi <= 1'h0;
            end
          end
        end else begin
          if (_T_108) begin
            resHi <= 1'h0;
          end
        end
      end
    end
    if (_T_203) begin
      divisor <= _T_220;
    end else begin
      if (_T_105) begin
        if (_T_107) begin
          divisor <= subtractor;
        end
      end
    end
    if (_T_203) begin
      remainder <= {{34'd0}, lhs_in};
    end else begin
      if (_T_175) begin
        remainder <= {{1'd0}, _T_184};
      end else begin
        if (_T_110) begin
          remainder <= _T_168;
        end else begin
          if (_T_108) begin
            remainder <= {{34'd0}, negated_remainder};
          end else begin
            if (_T_105) begin
              if (_T_106) begin
                remainder <= {{34'd0}, negated_remainder};
              end
            end
          end
        end
      end
    end
  end
endmodule
