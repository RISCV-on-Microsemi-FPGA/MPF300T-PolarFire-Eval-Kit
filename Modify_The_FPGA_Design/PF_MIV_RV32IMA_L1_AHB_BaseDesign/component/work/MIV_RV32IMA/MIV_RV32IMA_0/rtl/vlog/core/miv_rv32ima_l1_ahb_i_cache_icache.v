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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_I_CACHE_ICACHE(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [31:0] io_req_bits_addr,
  input  [31:0] io_s1_paddr,
  input         io_s1_kill,
  input         io_s2_kill,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output        io_resp_bits_replay,
  output        io_resp_bits_ae,
  input         io_invalidate,
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
  input         io_tl_out_0_d_bits_error
);
  reg  s1_slaveValid;
  reg [31:0] _RAND_0;
  reg  s3_slaveValid;
  reg [31:0] _RAND_1;
  reg  s1_valid;
  reg [31:0] _RAND_2;
  wire  s1_hit;
  wire  _T_69;
  wire  _T_70;
  reg  s2_valid;
  reg [31:0] _RAND_3;
  reg  s2_hit;
  reg [31:0] _RAND_4;
  reg  invalidated;
  reg [31:0] _RAND_5;
  reg  refill_valid;
  reg [31:0] _RAND_6;
  reg  send_hint;
  reg [31:0] _RAND_7;
  wire  _T_79;
  wire  _T_81;
  wire  refill_fire;
  wire  _T_85;
  wire  _T_86;
  wire  _T_88;
  wire  _T_89;
  reg  _T_91;
  reg [31:0] _RAND_8;
  wire  _T_93;
  wire  s2_miss;
  wire  _T_94;
  wire  _T_96;
  wire  _T_97;
  reg [31:0] refill_addr;
  reg [31:0] _RAND_9;
  wire [31:0] _GEN_0;
  wire [18:0] refill_tag;
  wire [6:0] refill_idx;
  wire  _T_99;
  wire  _T_100;
  wire  refill_one_beat;
  wire  _T_102;
  wire  _T_104;
  wire  s0_valid;
  wire [26:0] _T_108;
  wire [11:0] _T_109;
  wire [11:0] _T_110;
  wire [9:0] _T_111;
  wire [9:0] _T_114;
  reg [9:0] _T_117;
  reg [31:0] _RAND_10;
  wire [10:0] _T_119;
  wire [10:0] _T_120;
  wire [9:0] _T_121;
  wire  _T_123;
  wire  _T_125;
  wire  _T_127;
  wire  _T_128;
  wire  d_done;
  wire [9:0] _T_129;
  wire [9:0] refill_cnt;
  wire [9:0] _T_130;
  wire [9:0] _GEN_1;
  wire  refill_done;
  wire  _T_132;
  reg [19:0] tag_array_0 [0:127];
  reg [31:0] _RAND_11;
  wire [19:0] tag_array_0_tag_rdata_data;
  wire [6:0] tag_array_0_tag_rdata_addr;
  wire [19:0] tag_array_0__T_167_data;
  wire [6:0] tag_array_0__T_167_addr;
  wire  tag_array_0__T_167_mask;
  wire  tag_array_0__T_167_en;
  wire  _GEN_37;
  reg [6:0] tag_array_0_tag_rdata_addr_pipe_0;
  reg [31:0] _RAND_12;
  wire [6:0] _T_140;
  wire  _T_142;
  wire  _T_143;
  reg  accruedRefillError;
  reg [31:0] _RAND_13;
  wire  _T_156;
  wire  _T_157;
  wire  refillError;
  wire [19:0] _T_158;
  reg [127:0] vb_array;
  reg [127:0] _RAND_14;
  wire [7:0] _T_175;
  wire  _T_177;
  wire  _T_178;
  wire [255:0] _T_180;
  wire [255:0] _GEN_49;
  wire [255:0] _T_181;
  wire [127:0] _T_182;
  wire [255:0] _GEN_50;
  wire [255:0] _T_183;
  wire [255:0] _T_184;
  wire [255:0] _T_185;
  wire  _GEN_13;
  wire [255:0] _GEN_14;
  wire [255:0] _GEN_15;
  wire  _GEN_16;
  reg [12:0] s1s3_slaveAddr;
  reg [31:0] _RAND_15;
  reg [31:0] s1s3_slaveData;
  reg [31:0] _RAND_16;
  wire [6:0] _T_209;
  wire [18:0] _T_210;
  wire [7:0] _T_231;
  wire [127:0] _T_232;
  wire  _T_233;
  wire  _T_235;
  wire  _T_236;
  wire  _T_237;
  wire [18:0] _T_238;
  wire  _T_239;
  wire  _T_240;
  wire  _T_246;
  wire  _T_248;
  reg [31:0] data_arrays_0_0 [0:2047];
  reg [31:0] _RAND_17;
  wire [31:0] data_arrays_0_0__T_318_data;
  wire [10:0] data_arrays_0_0__T_318_addr;
  wire [31:0] data_arrays_0_0__T_304_data;
  wire [10:0] data_arrays_0_0__T_304_addr;
  wire  data_arrays_0_0__T_304_mask;
  wire  data_arrays_0_0__T_304_en;
  wire  _GEN_43;
  reg [10:0] data_arrays_0_0__T_318_addr_pipe_0;
  reg [31:0] _RAND_18;
  wire  _T_278;
  wire  _T_283;
  wire [10:0] _GEN_51;
  wire [10:0] _T_284;
  wire [10:0] _GEN_52;
  wire [10:0] _T_285;
  wire [10:0] _T_286;
  wire [10:0] _T_288;
  wire [10:0] _T_290;
  wire [10:0] _T_291;
  wire [31:0] _T_293;
  wire  _T_311;
  wire  _T_312;
  wire [31:0] _GEN_28;
  reg [31:0] _T_350_0;
  reg [31:0] _RAND_19;
  wire [31:0] _GEN_30;
  reg  _T_365_0;
  reg [31:0] _RAND_20;
  wire  _GEN_31;
  reg  _T_379;
  reg [31:0] _RAND_21;
  wire  _GEN_32;
  wire  _T_384;
  wire  _GEN_33;
  wire  _T_386;
  wire  _T_388;
  wire  _T_389;
  wire [25:0] _T_391;
  wire [31:0] _GEN_53;
  wire [31:0] _T_392;
  wire  _GEN_34;
  wire  _GEN_35;
  wire  _GEN_36;
  assign io_req_ready = _T_104;
  assign io_resp_valid = _T_386;
  assign io_resp_bits_data = _T_350_0;
  assign io_resp_bits_replay = _T_365_0;
  assign io_resp_bits_ae = _T_379;
  assign io_tl_out_0_a_valid = _T_389;
  assign io_tl_out_0_a_bits_opcode = 3'h4;
  assign io_tl_out_0_a_bits_param = 3'h0;
  assign io_tl_out_0_a_bits_size = 4'h6;
  assign io_tl_out_0_a_bits_source = 1'h0;
  assign io_tl_out_0_a_bits_address = _T_392;
  assign io_tl_out_0_a_bits_mask = 4'hf;
  assign io_tl_out_0_a_bits_data = 32'h0;
  assign io_tl_out_0_d_ready = _T_132;
  assign s1_hit = _T_240 | s1_slaveValid;
  assign _T_69 = io_s1_kill == 1'h0;
  assign _T_70 = s1_valid & _T_69;
  assign _T_79 = io_tl_out_0_a_ready & io_tl_out_0_a_valid;
  assign _T_81 = send_hint == 1'h0;
  assign refill_fire = _T_79 & _T_81;
  assign _T_85 = s2_hit == 1'h0;
  assign _T_86 = s2_valid & _T_85;
  assign _T_88 = io_s2_kill == 1'h0;
  assign _T_89 = _T_86 & _T_88;
  assign _T_93 = _T_91 == 1'h0;
  assign s2_miss = _T_89 & _T_93;
  assign _T_94 = refill_valid | s2_miss;
  assign _T_96 = _T_94 == 1'h0;
  assign _T_97 = s1_valid & _T_96;
  assign _GEN_0 = _T_97 ? io_s1_paddr : refill_addr;
  assign refill_tag = refill_addr[31:13];
  assign refill_idx = refill_addr[12:6];
  assign _T_99 = io_tl_out_0_d_ready & io_tl_out_0_d_valid;
  assign _T_100 = io_tl_out_0_d_bits_opcode[0];
  assign refill_one_beat = _T_99 & _T_100;
  assign _T_102 = refill_one_beat | s3_slaveValid;
  assign _T_104 = _T_102 == 1'h0;
  assign s0_valid = io_req_ready & io_req_valid;
  assign _T_108 = 27'hfff << io_tl_out_0_d_bits_size;
  assign _T_109 = _T_108[11:0];
  assign _T_110 = ~ _T_109;
  assign _T_111 = _T_110[11:2];
  assign _T_114 = _T_100 ? _T_111 : 10'h0;
  assign _T_119 = _T_117 - 10'h1;
  assign _T_120 = $unsigned(_T_119);
  assign _T_121 = _T_120[9:0];
  assign _T_123 = _T_117 == 10'h0;
  assign _T_125 = _T_117 == 10'h1;
  assign _T_127 = _T_114 == 10'h0;
  assign _T_128 = _T_125 | _T_127;
  assign d_done = _T_128 & _T_99;
  assign _T_129 = ~ _T_121;
  assign refill_cnt = _T_114 & _T_129;
  assign _T_130 = _T_123 ? _T_114 : _T_121;
  assign _GEN_1 = _T_99 ? _T_130 : _T_117;
  assign refill_done = refill_one_beat & d_done;
  assign _T_132 = s3_slaveValid == 1'h0;
  assign tag_array_0_tag_rdata_addr = tag_array_0_tag_rdata_addr_pipe_0;
  assign tag_array_0_tag_rdata_data = tag_array_0[tag_array_0_tag_rdata_addr];
  assign tag_array_0__T_167_data = _T_158;
  assign tag_array_0__T_167_addr = refill_idx;
  assign tag_array_0__T_167_mask = refill_done;
  assign tag_array_0__T_167_en = refill_done;
  assign _GEN_37 = _T_143;
  assign _T_140 = io_req_bits_addr[12:6];
  assign _T_142 = refill_done == 1'h0;
  assign _T_143 = _T_142 & s0_valid;
  assign _T_156 = refill_cnt > 10'h0;
  assign _T_157 = _T_156 & accruedRefillError;
  assign refillError = io_tl_out_0_d_bits_error | _T_157;
  assign _T_158 = {refillError,refill_tag};
  assign _T_175 = {1'h0,refill_idx};
  assign _T_177 = invalidated == 1'h0;
  assign _T_178 = refill_done & _T_177;
  assign _T_180 = 256'h1 << _T_175;
  assign _GEN_49 = {{128'd0}, vb_array};
  assign _T_181 = _GEN_49 | _T_180;
  assign _T_182 = ~ vb_array;
  assign _GEN_50 = {{128'd0}, _T_182};
  assign _T_183 = _GEN_50 | _T_180;
  assign _T_184 = ~ _T_183;
  assign _T_185 = _T_178 ? _T_181 : _T_184;
  assign _GEN_13 = refill_one_beat ? refillError : accruedRefillError;
  assign _GEN_14 = refill_one_beat ? _T_185 : {{128'd0}, vb_array};
  assign _GEN_15 = _GEN_33 ? 256'h0 : _GEN_14;
  assign _GEN_16 = _GEN_33 ? 1'h1 : invalidated;
  assign _T_209 = io_s1_paddr[12:6];
  assign _T_210 = io_s1_paddr[31:13];
  assign _T_231 = {1'h0,_T_209};
  assign _T_232 = vb_array >> _T_231;
  assign _T_233 = _T_232[0];
  assign _T_235 = s1_slaveValid == 1'h0;
  assign _T_236 = _T_233 & _T_235;
  assign _T_237 = tag_array_0_tag_rdata_data[19];
  assign _T_238 = tag_array_0_tag_rdata_data[18:0];
  assign _T_239 = _T_238 == _T_210;
  assign _T_240 = _T_236 & _T_239;
  assign _T_246 = _T_240 & _T_237;
  assign _T_248 = s1_valid | s1_slaveValid;
  assign data_arrays_0_0__T_318_addr = data_arrays_0_0__T_318_addr_pipe_0;
  assign data_arrays_0_0__T_318_data = data_arrays_0_0[data_arrays_0_0__T_318_addr];
  assign data_arrays_0_0__T_304_data = _T_293;
  assign data_arrays_0_0__T_304_addr = _T_291;
  assign data_arrays_0_0__T_304_mask = _T_283;
  assign data_arrays_0_0__T_304_en = _T_283;
  assign _GEN_43 = _T_312;
  assign _T_278 = refill_one_beat & _T_177;
  assign _T_283 = _T_278 | s3_slaveValid;
  assign _GEN_51 = {{4'd0}, refill_idx};
  assign _T_284 = _GEN_51 << 4;
  assign _GEN_52 = {{1'd0}, refill_cnt};
  assign _T_285 = _T_284 | _GEN_52;
  assign _T_286 = s1s3_slaveAddr[12:2];
  assign _T_288 = io_req_bits_addr[12:2];
  assign _T_290 = s3_slaveValid ? _T_286 : _T_288;
  assign _T_291 = refill_one_beat ? _T_285 : _T_290;
  assign _T_293 = s3_slaveValid ? s1s3_slaveData : io_tl_out_0_d_bits_data;
  assign _T_311 = _T_283 == 1'h0;
  assign _T_312 = _T_311 & s0_valid;
  assign _GEN_28 = data_arrays_0_0__T_318_data;
  assign _GEN_30 = _T_248 ? _GEN_28 : _T_350_0;
  assign _GEN_31 = _T_248 ? 1'h0 : _T_365_0;
  assign _GEN_32 = _T_248 ? _T_246 : _T_379;
  assign _T_384 = s2_valid & _T_365_0;
  assign _GEN_33 = _T_384 ? 1'h1 : io_invalidate;
  assign _T_386 = s2_valid & s2_hit;
  assign _T_388 = refill_valid == 1'h0;
  assign _T_389 = s2_miss & _T_388;
  assign _T_391 = refill_addr[31:6];
  assign _GEN_53 = {{6'd0}, _T_391};
  assign _T_392 = _GEN_53 << 6;
  assign _GEN_34 = _T_388 ? 1'h0 : _GEN_16;
  assign _GEN_35 = refill_fire ? 1'h1 : refill_valid;
  assign _GEN_36 = refill_done ? 1'h0 : _GEN_35;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  s1_slaveValid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  s3_slaveValid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  s1_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  s2_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  s2_hit = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  invalidated = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  refill_valid = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  send_hint = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_91 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  refill_addr = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_117 = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    tag_array_0[initvar] = _RAND_11[19:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  tag_array_0_tag_rdata_addr_pipe_0 = _RAND_12[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  accruedRefillError = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {4{$random}};
  vb_array = _RAND_14[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  s1s3_slaveAddr = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  s1s3_slaveData = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    data_arrays_0_0[initvar] = _RAND_17[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  data_arrays_0_0__T_318_addr_pipe_0 = _RAND_18[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  _T_350_0 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  _T_365_0 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  _T_379 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      s1_slaveValid <= 1'h0;
    end else begin
      s1_slaveValid <= 1'h0;
    end
    s3_slaveValid <= 1'h0;
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= s0_valid;
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_70;
    end
    s2_hit <= s1_hit;
    if (_T_388) begin
      invalidated <= 1'h0;
    end else begin
      if (_GEN_33) begin
        invalidated <= 1'h1;
      end
    end
    if (reset) begin
      refill_valid <= 1'h0;
    end else begin
      if (refill_done) begin
        refill_valid <= 1'h0;
      end else begin
        if (refill_fire) begin
          refill_valid <= 1'h1;
        end
      end
    end
    if (reset) begin
      send_hint <= 1'h0;
    end
    _T_91 <= refill_valid;
    if (_T_97) begin
      refill_addr <= io_s1_paddr;
    end
    if (reset) begin
      _T_117 <= 10'h0;
    end else begin
      if (_T_99) begin
        if (_T_123) begin
          if (_T_100) begin
            _T_117 <= _T_111;
          end else begin
            _T_117 <= 10'h0;
          end
        end else begin
          _T_117 <= _T_121;
        end
      end
    end
    if(tag_array_0__T_167_en & tag_array_0__T_167_mask) begin
      tag_array_0[tag_array_0__T_167_addr] <= tag_array_0__T_167_data;
    end
    if (_GEN_37) begin
      tag_array_0_tag_rdata_addr_pipe_0 <= _T_140;
    end
    if (refill_one_beat) begin
      accruedRefillError <= refillError;
    end
    if (reset) begin
      vb_array <= 128'h0;
    end else begin
      vb_array <= _GEN_15[127:0];
    end
    if(data_arrays_0_0__T_304_en & data_arrays_0_0__T_304_mask) begin
      data_arrays_0_0[data_arrays_0_0__T_304_addr] <= data_arrays_0_0__T_304_data;
    end
    if (_GEN_43) begin
      data_arrays_0_0__T_318_addr_pipe_0 <= _T_291;
    end
    if (_T_248) begin
      _T_350_0 <= _GEN_28;
    end
    if (_T_248) begin
      _T_365_0 <= 1'h0;
    end
    if (_T_248) begin
      _T_379 <= _T_246;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:216 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:349 assert(!(tl_out.a.valid && addrMaybeInScratchpad(tl_out.a.bits.address)))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
