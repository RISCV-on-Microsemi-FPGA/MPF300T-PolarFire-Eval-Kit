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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ERROR_ERROR(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [3:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  output        io_in_0_b_valid,
  output [2:0]  io_in_0_b_bits_opcode,
  output [1:0]  io_in_0_b_bits_param,
  output [3:0]  io_in_0_b_bits_size,
  output [1:0]  io_in_0_b_bits_source,
  output [13:0] io_in_0_b_bits_address,
  output [3:0]  io_in_0_b_bits_mask,
  output [31:0] io_in_0_b_bits_data,
  output        io_in_0_c_ready,
  input         io_in_0_c_valid,
  input  [2:0]  io_in_0_c_bits_opcode,
  input  [2:0]  io_in_0_c_bits_param,
  input  [3:0]  io_in_0_c_bits_size,
  input  [1:0]  io_in_0_c_bits_source,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [3:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  output        io_in_0_e_ready
);
  wire  a_clock;
  wire  a_reset;
  wire  a_io_enq_ready;
  wire  a_io_enq_valid;
  wire [2:0] a_io_enq_bits_opcode;
  wire [3:0] a_io_enq_bits_size;
  wire [1:0] a_io_enq_bits_source;
  wire  a_io_deq_ready;
  wire  a_io_deq_valid;
  wire [2:0] a_io_deq_bits_opcode;
  wire [3:0] a_io_deq_bits_size;
  wire [1:0] a_io_deq_bits_source;
  wire  c_clock;
  wire  c_reset;
  wire  c_io_enq_ready;
  wire  c_io_enq_valid;
  wire [2:0] c_io_enq_bits_opcode;
  wire [2:0] c_io_enq_bits_param;
  wire [3:0] c_io_enq_bits_size;
  wire [1:0] c_io_enq_bits_source;
  wire  c_io_deq_ready;
  wire  c_io_deq_valid;
  wire [2:0] c_io_deq_bits_opcode;
  wire [2:0] c_io_deq_bits_param;
  wire [3:0] c_io_deq_bits_size;
  wire [1:0] c_io_deq_bits_source;
  wire [3:0] da_bits_size;
  wire [1:0] da_bits_source;
  wire [3:0] dc_bits_size;
  wire [1:0] dc_bits_source;
  wire  _T_68;
  wire [26:0] _T_71;
  wire [11:0] _T_72;
  wire [11:0] _T_73;
  wire [9:0] _T_74;
  wire  _T_75;
  wire  _T_77;
  wire [9:0] _T_79;
  reg [9:0] _T_82;
  reg [31:0] _RAND_0;
  wire [10:0] _T_84;
  wire [10:0] _T_85;
  wire [9:0] _T_86;
  wire  _T_88;
  wire  _T_90;
  wire  _T_92;
  wire  a_last;
  wire [9:0] _T_96;
  wire [9:0] _GEN_2;
  wire  _T_97;
  wire [26:0] _T_100;
  wire [11:0] _T_101;
  wire [11:0] _T_102;
  wire [9:0] _T_103;
  wire  _T_104;
  wire [9:0] _T_106;
  reg [9:0] _T_109;
  reg [31:0] _RAND_1;
  wire [10:0] _T_111;
  wire [10:0] _T_112;
  wire [9:0] _T_113;
  wire  _T_115;
  wire  _T_117;
  wire  _T_119;
  wire  c_last;
  wire [9:0] _T_123;
  wire [9:0] _GEN_3;
  wire  _T_124;
  wire [26:0] _T_127;
  wire [11:0] _T_128;
  wire [11:0] _T_129;
  wire [9:0] _T_130;
  wire  _T_131;
  wire [9:0] _T_133;
  reg [9:0] _T_136;
  reg [31:0] _RAND_2;
  wire [10:0] _T_138;
  wire [10:0] _T_139;
  wire [9:0] _T_140;
  wire  _T_142;
  wire  _T_144;
  wire  _T_146;
  wire  da_last;
  wire [9:0] _T_150;
  wire [9:0] _GEN_4;
  wire  _T_178;
  wire  _T_180;
  wire  _T_181;
  wire  _T_182;
  wire [2:0] _GEN_7;
  wire [2:0] _GEN_8;
  wire [2:0] _GEN_9;
  wire [2:0] _GEN_10;
  wire [2:0] _GEN_11;
  wire  _T_208;
  wire  _T_209;
  wire  _T_210;
  wire [1:0] _T_224;
  wire [1:0] _GEN_13;
  reg [9:0] _T_248;
  reg [31:0] _RAND_3;
  wire  _T_250;
  wire  _T_251;
  wire [1:0] _T_252;
  wire [2:0] _GEN_14;
  wire [2:0] _T_253;
  wire [1:0] _T_254;
  wire [1:0] _T_255;
  wire [2:0] _GEN_15;
  wire [2:0] _T_257;
  wire [1:0] _T_258;
  wire [1:0] _T_259;
  wire  _T_260;
  wire  _T_261;
  wire  _T_269;
  wire  _T_270;
  wire  _T_280;
  wire  _T_284;
  wire  _T_289;
  wire  _T_290;
  wire  _T_292;
  wire  _T_294;
  wire  _T_295;
  wire  _T_297;
  wire  _T_299;
  wire  _T_300;
  wire  _T_302;
  wire [9:0] _T_306;
  wire  _T_308;
  wire [9:0] _GEN_16;
  wire [10:0] _T_309;
  wire [10:0] _T_310;
  wire [9:0] _T_311;
  wire [9:0] _T_312;
  reg  _T_330_0;
  reg [31:0] _RAND_4;
  reg  _T_330_1;
  reg [31:0] _RAND_5;
  wire  _T_341_0;
  wire  _T_341_1;
  wire  _T_349_0;
  wire  _T_349_1;
  wire  _T_357;
  wire  _T_358;
  wire  _T_362;
  wire  _T_364;
  wire  _T_365;
  wire  _T_368;
  wire [5:0] _T_372;
  wire [4:0] _T_373;
  wire [10:0] _T_374;
  wire [44:0] _T_375;
  wire [44:0] _T_377;
  wire [5:0] _T_380;
  wire [4:0] _T_381;
  wire [10:0] _T_382;
  wire [44:0] _T_383;
  wire [44:0] _T_385;
  wire [44:0] _T_386;
  wire  _T_391;
  wire [31:0] _T_392;
  wire [1:0] _T_394;
  wire [3:0] _T_395;
  wire [1:0] _T_396;
  wire [2:0] _T_397;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_21 a (
    .clock(a_clock),
    .reset(a_reset),
    .io_enq_ready(a_io_enq_ready),
    .io_enq_valid(a_io_enq_valid),
    .io_enq_bits_opcode(a_io_enq_bits_opcode),
    .io_enq_bits_size(a_io_enq_bits_size),
    .io_enq_bits_source(a_io_enq_bits_source),
    .io_deq_ready(a_io_deq_ready),
    .io_deq_valid(a_io_deq_valid),
    .io_deq_bits_opcode(a_io_deq_bits_opcode),
    .io_deq_bits_size(a_io_deq_bits_size),
    .io_deq_bits_source(a_io_deq_bits_source)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_22 c (
    .clock(c_clock),
    .reset(c_reset),
    .io_enq_ready(c_io_enq_ready),
    .io_enq_valid(c_io_enq_valid),
    .io_enq_bits_opcode(c_io_enq_bits_opcode),
    .io_enq_bits_param(c_io_enq_bits_param),
    .io_enq_bits_size(c_io_enq_bits_size),
    .io_enq_bits_source(c_io_enq_bits_source),
    .io_deq_ready(c_io_deq_ready),
    .io_deq_valid(c_io_deq_valid),
    .io_deq_bits_opcode(c_io_deq_bits_opcode),
    .io_deq_bits_param(c_io_deq_bits_param),
    .io_deq_bits_size(c_io_deq_bits_size),
    .io_deq_bits_source(c_io_deq_bits_source)
  );
  assign io_in_0_a_ready = a_io_enq_ready;
  assign io_in_0_b_valid = 1'h0;
  assign io_in_0_b_bits_opcode = 3'h0;
  assign io_in_0_b_bits_param = 2'h0;
  assign io_in_0_b_bits_size = 4'h0;
  assign io_in_0_b_bits_source = 2'h0;
  assign io_in_0_b_bits_address = 14'h0;
  assign io_in_0_b_bits_mask = 4'h0;
  assign io_in_0_b_bits_data = 32'h0;
  assign io_in_0_c_ready = c_io_enq_ready;
  assign io_in_0_d_valid = _T_368;
  assign io_in_0_d_bits_opcode = _T_397;
  assign io_in_0_d_bits_param = _T_396;
  assign io_in_0_d_bits_size = _T_395;
  assign io_in_0_d_bits_source = _T_394;
  assign io_in_0_d_bits_data = _T_392;
  assign io_in_0_d_bits_error = _T_391;
  assign io_in_0_e_ready = 1'h1;
  assign a_clock = clock;
  assign a_reset = reset;
  assign a_io_enq_valid = io_in_0_a_valid;
  assign a_io_enq_bits_opcode = io_in_0_a_bits_opcode;
  assign a_io_enq_bits_size = io_in_0_a_bits_size;
  assign a_io_enq_bits_source = io_in_0_a_bits_source;
  assign a_io_deq_ready = _T_181;
  assign c_clock = clock;
  assign c_reset = reset;
  assign c_io_enq_valid = io_in_0_c_valid;
  assign c_io_enq_bits_opcode = io_in_0_c_bits_opcode;
  assign c_io_enq_bits_param = io_in_0_c_bits_param;
  assign c_io_enq_bits_size = io_in_0_c_bits_size;
  assign c_io_enq_bits_source = io_in_0_c_bits_source;
  assign c_io_deq_ready = _T_209;
  assign da_bits_size = a_io_deq_bits_size;
  assign da_bits_source = a_io_deq_bits_source;
  assign dc_bits_size = c_io_deq_bits_size;
  assign dc_bits_source = c_io_deq_bits_source;
  assign _T_68 = a_io_deq_ready & a_io_deq_valid;
  assign _T_71 = 27'hfff << a_io_deq_bits_size;
  assign _T_72 = _T_71[11:0];
  assign _T_73 = ~ _T_72;
  assign _T_74 = _T_73[11:2];
  assign _T_75 = a_io_deq_bits_opcode[2];
  assign _T_77 = _T_75 == 1'h0;
  assign _T_79 = _T_77 ? _T_74 : 10'h0;
  assign _T_84 = _T_82 - 10'h1;
  assign _T_85 = $unsigned(_T_84);
  assign _T_86 = _T_85[9:0];
  assign _T_88 = _T_82 == 10'h0;
  assign _T_90 = _T_82 == 10'h1;
  assign _T_92 = _T_79 == 10'h0;
  assign a_last = _T_90 | _T_92;
  assign _T_96 = _T_88 ? _T_79 : _T_86;
  assign _GEN_2 = _T_68 ? _T_96 : _T_82;
  assign _T_97 = c_io_deq_ready & c_io_deq_valid;
  assign _T_100 = 27'hfff << c_io_deq_bits_size;
  assign _T_101 = _T_100[11:0];
  assign _T_102 = ~ _T_101;
  assign _T_103 = _T_102[11:2];
  assign _T_104 = c_io_deq_bits_opcode[0];
  assign _T_106 = _T_104 ? _T_103 : 10'h0;
  assign _T_111 = _T_109 - 10'h1;
  assign _T_112 = $unsigned(_T_111);
  assign _T_113 = _T_112[9:0];
  assign _T_115 = _T_109 == 10'h0;
  assign _T_117 = _T_109 == 10'h1;
  assign _T_119 = _T_106 == 10'h0;
  assign c_last = _T_117 | _T_119;
  assign _T_123 = _T_115 ? _T_106 : _T_113;
  assign _GEN_3 = _T_97 ? _T_123 : _T_109;
  assign _T_124 = _T_358 & _T_182;
  assign _T_127 = 27'hfff << da_bits_size;
  assign _T_128 = _T_127[11:0];
  assign _T_129 = ~ _T_128;
  assign _T_130 = _T_129[11:2];
  assign _T_131 = _GEN_11[0];
  assign _T_133 = _T_131 ? _T_130 : 10'h0;
  assign _T_138 = _T_136 - 10'h1;
  assign _T_139 = $unsigned(_T_138);
  assign _T_140 = _T_139[9:0];
  assign _T_142 = _T_136 == 10'h0;
  assign _T_144 = _T_136 == 10'h1;
  assign _T_146 = _T_133 == 10'h0;
  assign da_last = _T_144 | _T_146;
  assign _T_150 = _T_142 ? _T_133 : _T_140;
  assign _GEN_4 = _T_124 ? _T_150 : _T_136;
  assign _T_178 = _T_358 & da_last;
  assign _T_180 = a_last == 1'h0;
  assign _T_181 = _T_178 | _T_180;
  assign _T_182 = a_io_deq_valid & a_last;
  assign _GEN_7 = 3'h2 == a_io_deq_bits_opcode ? 3'h1 : 3'h0;
  assign _GEN_8 = 3'h3 == a_io_deq_bits_opcode ? 3'h1 : _GEN_7;
  assign _GEN_9 = 3'h4 == a_io_deq_bits_opcode ? 3'h1 : _GEN_8;
  assign _GEN_10 = 3'h5 == a_io_deq_bits_opcode ? 3'h2 : _GEN_9;
  assign _GEN_11 = 3'h6 == a_io_deq_bits_opcode ? 3'h4 : _GEN_10;
  assign _T_208 = c_last == 1'h0;
  assign _T_209 = _T_357 | _T_208;
  assign _T_210 = c_io_deq_valid & c_last;
  assign _T_224 = c_io_deq_bits_param[1:0];
  assign _GEN_13 = 2'h2 == _T_224 ? 2'h1 : 2'h2;
  assign _T_250 = _T_248 == 10'h0;
  assign _T_251 = _T_250 & io_in_0_d_ready;
  assign _T_252 = {_T_182,_T_210};
  assign _GEN_14 = {{1'd0}, _T_252};
  assign _T_253 = _GEN_14 << 1;
  assign _T_254 = _T_253[1:0];
  assign _T_255 = _T_252 | _T_254;
  assign _GEN_15 = {{1'd0}, _T_255};
  assign _T_257 = _GEN_15 << 1;
  assign _T_258 = _T_257[1:0];
  assign _T_259 = ~ _T_258;
  assign _T_260 = _T_259[0];
  assign _T_261 = _T_259[1];
  assign _T_269 = _T_260 & _T_210;
  assign _T_270 = _T_261 & _T_182;
  assign _T_280 = _T_269 | _T_270;
  assign _T_284 = _T_269 == 1'h0;
  assign _T_289 = _T_270 == 1'h0;
  assign _T_290 = _T_284 | _T_289;
  assign _T_292 = _T_290 | reset;
  assign _T_294 = _T_292 == 1'h0;
  assign _T_295 = _T_210 | _T_182;
  assign _T_297 = _T_295 == 1'h0;
  assign _T_299 = _T_297 | _T_280;
  assign _T_300 = _T_299 | reset;
  assign _T_302 = _T_300 == 1'h0;
  assign _T_306 = _T_270 ? _T_133 : 10'h0;
  assign _T_308 = io_in_0_d_ready & io_in_0_d_valid;
  assign _GEN_16 = {{9'd0}, _T_308};
  assign _T_309 = _T_248 - _GEN_16;
  assign _T_310 = $unsigned(_T_309);
  assign _T_311 = _T_310[9:0];
  assign _T_312 = _T_251 ? _T_306 : _T_311;
  assign _T_341_0 = _T_250 ? _T_269 : _T_330_0;
  assign _T_341_1 = _T_250 ? _T_270 : _T_330_1;
  assign _T_349_0 = _T_250 ? _T_260 : _T_330_0;
  assign _T_349_1 = _T_250 ? _T_261 : _T_330_1;
  assign _T_357 = io_in_0_d_ready & _T_349_0;
  assign _T_358 = io_in_0_d_ready & _T_349_1;
  assign _T_362 = _T_330_0 ? _T_210 : 1'h0;
  assign _T_364 = _T_330_1 ? _T_182 : 1'h0;
  assign _T_365 = _T_362 | _T_364;
  assign _T_368 = _T_250 ? _T_295 : _T_365;
  assign _T_372 = {dc_bits_size,dc_bits_source};
  assign _T_373 = {3'h6,_GEN_13};
  assign _T_374 = {_T_373,_T_372};
  assign _T_375 = {_T_374,34'h1};
  assign _T_377 = _T_341_0 ? _T_375 : 45'h0;
  assign _T_380 = {da_bits_size,da_bits_source};
  assign _T_381 = {_GEN_11,2'h0};
  assign _T_382 = {_T_381,_T_380};
  assign _T_383 = {_T_382,34'h1};
  assign _T_385 = _T_341_1 ? _T_383 : 45'h0;
  assign _T_386 = _T_377 | _T_385;
  assign _T_391 = _T_386[0];
  assign _T_392 = _T_386[32:1];
  assign _T_394 = _T_386[35:34];
  assign _T_395 = _T_386[39:36];
  assign _T_396 = _T_386[41:40];
  assign _T_397 = _T_386[44:42];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_82 = _RAND_0[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_109 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_136 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_248 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_330_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_330_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_82 <= 10'h0;
    end else begin
      if (_T_68) begin
        if (_T_88) begin
          if (_T_77) begin
            _T_82 <= _T_74;
          end else begin
            _T_82 <= 10'h0;
          end
        end else begin
          _T_82 <= _T_86;
        end
      end
    end
    if (reset) begin
      _T_109 <= 10'h0;
    end else begin
      if (_T_97) begin
        if (_T_115) begin
          if (_T_104) begin
            _T_109 <= _T_103;
          end else begin
            _T_109 <= 10'h0;
          end
        end else begin
          _T_109 <= _T_113;
        end
      end
    end
    if (reset) begin
      _T_136 <= 10'h0;
    end else begin
      if (_T_124) begin
        if (_T_142) begin
          if (_T_131) begin
            _T_136 <= _T_130;
          end else begin
            _T_136 <= 10'h0;
          end
        end else begin
          _T_136 <= _T_140;
        end
      end
    end
    if (reset) begin
      _T_248 <= 10'h0;
    end else begin
      if (_T_251) begin
        if (_T_270) begin
          if (_T_131) begin
            _T_248 <= _T_130;
          end else begin
            _T_248 <= 10'h0;
          end
        end else begin
          _T_248 <= 10'h0;
        end
      end else begin
        _T_248 <= _T_311;
      end
    end
    if (reset) begin
      _T_330_0 <= 1'h0;
    end else begin
      if (_T_250) begin
        _T_330_0 <= _T_269;
      end
    end
    if (reset) begin
      _T_330_1 <= 1'h0;
    end else begin
      if (_T_250) begin
        _T_330_1 <= _T_270;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_294) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:66 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_294) begin
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
        if (_T_302) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:68 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_302) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
