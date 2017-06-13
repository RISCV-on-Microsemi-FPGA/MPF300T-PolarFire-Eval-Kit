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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MUL_DIV(
  input   clk,
  input   reset,
  output  io_req_ready,
  input   io_req_valid,
  input  [3:0] io_req_bits_fn,
  input   io_req_bits_dw,
  input  [31:0] io_req_bits_in1,
  input  [31:0] io_req_bits_in2,
  input  [4:0] io_req_bits_tag,
  input   io_kill,
  input   io_resp_ready,
  output  io_resp_valid,
  output [31:0] io_resp_bits_data,
  output [4:0] io_resp_bits_tag
);
  reg [2:0] state;
  reg [31:0] GEN_14;
  reg [3:0] req_fn;
  reg [31:0] GEN_15;
  reg  req_dw;
  reg [31:0] GEN_36;
  reg [31:0] req_in1;
  reg [31:0] GEN_37;
  reg [31:0] req_in2;
  reg [31:0] GEN_38;
  reg [4:0] req_tag;
  reg [31:0] GEN_39;
  reg [5:0] count;
  reg [31:0] GEN_40;
  reg  neg_out;
  reg [31:0] GEN_41;
  reg  isMul;
  reg [31:0] GEN_42;
  reg  isHi;
  reg [31:0] GEN_43;
  reg [32:0] divisor;
  reg [63:0] GEN_44;
  reg [65:0] remainder;
  reg [95:0] GEN_45;
  wire [3:0] T_62;
  wire  T_64;
  wire [3:0] T_66;
  wire  T_68;
  wire  T_71;
  wire [3:0] T_73;
  wire  T_75;
  wire [3:0] T_77;
  wire  T_79;
  wire  T_82;
  wire  T_83;
  wire [3:0] T_85;
  wire  T_87;
  wire [3:0] T_89;
  wire  T_91;
  wire  T_94;
  wire  T_95;
  wire  T_106;
  wire  lhs_sign;
  wire [15:0] T_112;
  wire [15:0] T_114;
  wire [31:0] lhs_in;
  wire  T_122;
  wire  rhs_sign;
  wire [15:0] T_128;
  wire [15:0] T_130;
  wire [31:0] rhs_in;
  wire [32:0] T_131;
  wire [33:0] T_133;
  wire [32:0] subtractor;
  wire  less;
  wire [31:0] T_134;
  wire [32:0] T_136;
  wire [31:0] negated_remainder;
  wire  T_137;
  wire  T_138;
  wire  T_139;
  wire [65:0] GEN_0;
  wire  T_140;
  wire  T_141;
  wire [32:0] GEN_1;
  wire [65:0] GEN_2;
  wire [32:0] GEN_3;
  wire [2:0] GEN_4;
  wire  T_142;
  wire [65:0] GEN_5;
  wire [2:0] GEN_6;
  wire  T_143;
  wire [31:0] T_144;
  wire [2:0] T_145;
  wire [65:0] GEN_7;
  wire [2:0] GEN_8;
  wire  T_146;
  wire  T_147;
  wire [32:0] T_148;
  wire [64:0] T_150;
  wire [31:0] T_151;
  wire [32:0] T_152;
  wire [32:0] T_153;
  wire [32:0] T_154;
  wire [15:0] T_155;
  wire [32:0] GEN_34;
  wire [48:0] T_156;
  wire [48:0] GEN_35;
  wire [49:0] T_157;
  wire [48:0] T_158;
  wire [48:0] T_159;
  wire [15:0] T_160;
  wire [48:0] T_161;
  wire [64:0] T_162;
  wire  T_177;
  wire [32:0] T_191;
  wire [31:0] T_193;
  wire [64:0] T_194;
  wire [32:0] T_195;
  wire [31:0] T_197;
  wire [33:0] T_198;
  wire [65:0] T_199;
  wire [6:0] T_201;
  wire [5:0] T_202;
  wire  T_204;
  wire [2:0] T_206;
  wire [2:0] GEN_9;
  wire [65:0] GEN_10;
  wire [5:0] GEN_11;
  wire [2:0] GEN_12;
  wire  T_209;
  wire  T_210;
  wire  T_212;
  wire [2:0] T_214;
  wire [2:0] GEN_13;
  wire [31:0] T_218;
  wire [31:0] T_219;
  wire [31:0] T_220;
  wire  T_223;
  wire [63:0] T_224;
  wire [64:0] T_225;
  wire  T_447;
  wire  T_464;
  wire  T_467;
  wire  GEN_16;
  wire [2:0] GEN_17;
  wire [5:0] GEN_18;
  wire [65:0] GEN_19;
  wire  GEN_20;
  wire  T_469;
  wire  T_470;
  wire [2:0] GEN_21;
  wire  T_471;
  wire  T_473;
  wire  T_474;
  wire  T_475;
  wire [2:0] T_476;
  wire  T_480;
  wire  T_481;
  wire  T_482;
  wire [32:0] T_483;
  wire [2:0] GEN_22;
  wire  GEN_23;
  wire  GEN_24;
  wire [5:0] GEN_25;
  wire  GEN_26;
  wire [32:0] GEN_27;
  wire [65:0] GEN_28;
  wire [3:0] GEN_29;
  wire  GEN_30;
  wire [31:0] GEN_31;
  wire [31:0] GEN_32;
  wire [4:0] GEN_33;
  wire  T_499;
  wire  T_500;
  assign io_req_ready = T_500;
  assign io_resp_valid = T_499;
  assign io_resp_bits_data = T_134;
  assign io_resp_bits_tag = req_tag;
  assign T_62 = io_req_bits_fn & 4'h4;
  assign T_64 = T_62 == 4'h0;
  assign T_66 = io_req_bits_fn & 4'h8;
  assign T_68 = T_66 == 4'h8;
  assign T_71 = T_64 | T_68;
  assign T_73 = io_req_bits_fn & 4'h5;
  assign T_75 = T_73 == 4'h1;
  assign T_77 = io_req_bits_fn & 4'h2;
  assign T_79 = T_77 == 4'h2;
  assign T_82 = T_75 | T_79;
  assign T_83 = T_82 | T_68;
  assign T_85 = io_req_bits_fn & 4'h9;
  assign T_87 = T_85 == 4'h0;
  assign T_89 = io_req_bits_fn & 4'h3;
  assign T_91 = T_89 == 4'h0;
  assign T_94 = T_87 | T_64;
  assign T_95 = T_94 | T_91;
  assign T_106 = io_req_bits_in1[31];
  assign lhs_sign = T_95 & T_106;
  assign T_112 = io_req_bits_in1[31:16];
  assign T_114 = io_req_bits_in1[15:0];
  assign lhs_in = {T_112,T_114};
  assign T_122 = io_req_bits_in2[31];
  assign rhs_sign = T_94 & T_122;
  assign T_128 = io_req_bits_in2[31:16];
  assign T_130 = io_req_bits_in2[15:0];
  assign rhs_in = {T_128,T_130};
  assign T_131 = remainder[64:32];
  assign T_133 = T_131 - divisor;
  assign subtractor = T_133[32:0];
  assign less = subtractor[32];
  assign T_134 = remainder[31:0];
  assign T_136 = 32'h0 - T_134;
  assign negated_remainder = T_136[31:0];
  assign T_137 = state == 3'h1;
  assign T_138 = remainder[31];
  assign T_139 = T_138 | isMul;
  assign GEN_0 = T_139 ? {{34'd0}, negated_remainder} : remainder;
  assign T_140 = divisor[31];
  assign T_141 = T_140 | isMul;
  assign GEN_1 = T_141 ? subtractor : divisor;
  assign GEN_2 = T_137 ? GEN_0 : remainder;
  assign GEN_3 = T_137 ? GEN_1 : divisor;
  assign GEN_4 = T_137 ? 3'h2 : state;
  assign T_142 = state == 3'h4;
  assign GEN_5 = T_142 ? {{34'd0}, negated_remainder} : GEN_2;
  assign GEN_6 = T_142 ? 3'h5 : GEN_4;
  assign T_143 = state == 3'h3;
  assign T_144 = remainder[64:33];
  assign T_145 = neg_out ? 3'h4 : 3'h5;
  assign GEN_7 = T_143 ? {{34'd0}, T_144} : GEN_5;
  assign GEN_8 = T_143 ? T_145 : GEN_6;
  assign T_146 = state == 3'h2;
  assign T_147 = T_146 & isMul;
  assign T_148 = remainder[65:33];
  assign T_150 = {T_148,T_134};
  assign T_151 = T_150[31:0];
  assign T_152 = T_150[64:32];
  assign T_153 = $signed(T_152);
  assign T_154 = $signed(divisor);
  assign T_155 = T_151[15:0];
  assign GEN_34 = {{17'd0}, T_155};
  assign T_156 = $signed(T_154) * $signed({1'b0,GEN_34});
  assign GEN_35 = {{16{T_153[32]}},T_153};
  assign T_157 = $signed(T_156) + $signed(GEN_35);
  assign T_158 = T_157[48:0];
  assign T_159 = $signed(T_158);
  assign T_160 = T_151[31:16];
  assign T_161 = $unsigned(T_159);
  assign T_162 = {T_161,T_160};
  assign T_177 = isHi == 1'h0;
  assign T_191 = T_162[64:32];
  assign T_193 = T_162[31:0];
  assign T_194 = {T_191,T_193};
  assign T_195 = T_194[64:32];
  assign T_197 = T_194[31:0];
  assign T_198 = {T_195,1'h0};
  assign T_199 = {T_198,T_197};
  assign T_201 = count + 6'h1;
  assign T_202 = T_201[5:0];
  assign T_204 = count == 6'h1;
  assign T_206 = isHi ? 3'h3 : 3'h5;
  assign GEN_9 = T_204 ? T_206 : GEN_8;
  assign GEN_10 = T_147 ? T_199 : GEN_7;
  assign GEN_11 = T_147 ? T_202 : count;
  assign GEN_12 = T_147 ? GEN_9 : GEN_8;
  assign T_209 = isMul == 1'h0;
  assign T_210 = T_146 & T_209;
  assign T_212 = count == 6'h20;
  assign T_214 = isHi ? 3'h3 : T_145;
  assign GEN_13 = T_212 ? T_214 : GEN_12;
  assign T_218 = remainder[63:32];
  assign T_219 = subtractor[31:0];
  assign T_220 = less ? T_218 : T_219;
  assign T_223 = less == 1'h0;
  assign T_224 = {T_220,T_134};
  assign T_225 = {T_224,T_223};
  assign T_447 = count == 6'h0;
  assign T_464 = T_447 & T_223;
  assign T_467 = T_464 & T_177;
  assign GEN_16 = T_467 ? 1'h0 : neg_out;
  assign GEN_17 = T_210 ? GEN_13 : GEN_12;
  assign GEN_18 = T_210 ? T_202 : GEN_11;
  assign GEN_19 = T_210 ? {{1'd0}, T_225} : GEN_10;
  assign GEN_20 = T_210 ? GEN_16 : neg_out;
  assign T_469 = io_resp_ready & io_resp_valid;
  assign T_470 = T_469 | io_kill;
  assign GEN_21 = T_470 ? 3'h0 : GEN_17;
  assign T_471 = io_req_ready & io_req_valid;
  assign T_473 = T_71 == 1'h0;
  assign T_474 = rhs_sign & T_473;
  assign T_475 = lhs_sign | T_474;
  assign T_476 = T_475 ? 3'h1 : 3'h2;
  assign T_480 = lhs_sign != rhs_sign;
  assign T_481 = T_83 ? lhs_sign : T_480;
  assign T_482 = T_473 & T_481;
  assign T_483 = {rhs_sign,rhs_in};
  assign GEN_22 = T_471 ? T_476 : GEN_21;
  assign GEN_23 = T_471 ? T_71 : isMul;
  assign GEN_24 = T_471 ? T_83 : isHi;
  assign GEN_25 = T_471 ? 6'h0 : GEN_18;
  assign GEN_26 = T_471 ? T_482 : GEN_20;
  assign GEN_27 = T_471 ? T_483 : GEN_3;
  assign GEN_28 = T_471 ? {{34'd0}, lhs_in} : GEN_19;
  assign GEN_29 = T_471 ? io_req_bits_fn : req_fn;
  assign GEN_30 = T_471 ? io_req_bits_dw : req_dw;
  assign GEN_31 = T_471 ? io_req_bits_in1 : req_in1;
  assign GEN_32 = T_471 ? io_req_bits_in2 : req_in2;
  assign GEN_33 = T_471 ? io_req_bits_tag : req_tag;
  assign T_499 = state == 3'h5;
  assign T_500 = state == 3'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_14 = {1{$random}};
  state = GEN_14[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_15 = {1{$random}};
  req_fn = GEN_15[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_36 = {1{$random}};
  req_dw = GEN_36[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_37 = {1{$random}};
  req_in1 = GEN_37[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_38 = {1{$random}};
  req_in2 = GEN_38[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_39 = {1{$random}};
  req_tag = GEN_39[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_40 = {1{$random}};
  count = GEN_40[5:0];
  `endif
  `ifdef RANDOMIZE
  GEN_41 = {1{$random}};
  neg_out = GEN_41[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_42 = {1{$random}};
  isMul = GEN_42[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_43 = {1{$random}};
  isHi = GEN_43[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_44 = {2{$random}};
  divisor = GEN_44[32:0];
  `endif
  `ifdef RANDOMIZE
  GEN_45 = {3{$random}};
  remainder = GEN_45[65:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      state <= 3'h0;
    end else begin
      if(T_471) begin
        if(T_475) begin
          state <= 3'h1;
        end else begin
          state <= 3'h2;
        end
      end else begin
        if(T_470) begin
          state <= 3'h0;
        end else begin
          if(T_210) begin
            if(T_212) begin
              if(isHi) begin
                state <= 3'h3;
              end else begin
                if(neg_out) begin
                  state <= 3'h4;
                end else begin
                  state <= 3'h5;
                end
              end
            end else begin
              if(T_147) begin
                if(T_204) begin
                  if(isHi) begin
                    state <= 3'h3;
                  end else begin
                    state <= 3'h5;
                  end
                end else begin
                  if(T_143) begin
                    if(neg_out) begin
                      state <= 3'h4;
                    end else begin
                      state <= 3'h5;
                    end
                  end else begin
                    if(T_142) begin
                      state <= 3'h5;
                    end else begin
                      if(T_137) begin
                        state <= 3'h2;
                      end
                    end
                  end
                end
              end else begin
                if(T_143) begin
                  if(neg_out) begin
                    state <= 3'h4;
                  end else begin
                    state <= 3'h5;
                  end
                end else begin
                  if(T_142) begin
                    state <= 3'h5;
                  end else begin
                    if(T_137) begin
                      state <= 3'h2;
                    end
                  end
                end
              end
            end
          end else begin
            if(T_147) begin
              if(T_204) begin
                if(isHi) begin
                  state <= 3'h3;
                end else begin
                  state <= 3'h5;
                end
              end else begin
                if(T_143) begin
                  if(neg_out) begin
                    state <= 3'h4;
                  end else begin
                    state <= 3'h5;
                  end
                end else begin
                  if(T_142) begin
                    state <= 3'h5;
                  end else begin
                    if(T_137) begin
                      state <= 3'h2;
                    end
                  end
                end
              end
            end else begin
              if(T_143) begin
                state <= T_145;
              end else begin
                if(T_142) begin
                  state <= 3'h5;
                end else begin
                  if(T_137) begin
                    state <= 3'h2;
                  end
                end
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        req_fn <= io_req_bits_fn;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        req_dw <= io_req_bits_dw;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        req_in1 <= io_req_bits_in1;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        req_in2 <= io_req_bits_in2;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        req_tag <= io_req_bits_tag;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        count <= 6'h0;
      end else begin
        if(T_210) begin
          count <= T_202;
        end else begin
          if(T_147) begin
            count <= T_202;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        neg_out <= T_482;
      end else begin
        if(T_210) begin
          if(T_467) begin
            neg_out <= 1'h0;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        isMul <= T_71;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        isHi <= T_83;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        divisor <= T_483;
      end else begin
        if(T_137) begin
          if(T_141) begin
            divisor <= subtractor;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_471) begin
        remainder <= {{34'd0}, lhs_in};
      end else begin
        if(T_210) begin
          remainder <= {{1'd0}, T_225};
        end else begin
          if(T_147) begin
            remainder <= T_199;
          end else begin
            if(T_143) begin
              remainder <= {{34'd0}, T_144};
            end else begin
              if(T_142) begin
                remainder <= {{34'd0}, negated_remainder};
              end else begin
                if(T_137) begin
                  if(T_139) begin
                    remainder <= {{34'd0}, negated_remainder};
                  end
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
