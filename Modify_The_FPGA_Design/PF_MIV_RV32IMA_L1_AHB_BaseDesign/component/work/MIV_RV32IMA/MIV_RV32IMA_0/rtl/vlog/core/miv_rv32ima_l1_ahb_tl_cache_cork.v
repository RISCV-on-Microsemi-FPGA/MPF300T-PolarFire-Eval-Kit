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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_CACHE_CORK(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_param,
  input  [2:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  input  [31:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  output        io_in_0_b_valid,
  output [2:0]  io_in_0_b_bits_opcode,
  output [1:0]  io_in_0_b_bits_param,
  output [2:0]  io_in_0_b_bits_size,
  output [1:0]  io_in_0_b_bits_source,
  output [31:0] io_in_0_b_bits_address,
  output [3:0]  io_in_0_b_bits_mask,
  output [31:0] io_in_0_b_bits_data,
  output        io_in_0_c_ready,
  input         io_in_0_c_valid,
  input  [2:0]  io_in_0_c_bits_opcode,
  input  [2:0]  io_in_0_c_bits_size,
  input  [1:0]  io_in_0_c_bits_source,
  input  [31:0] io_in_0_c_bits_address,
  input  [31:0] io_in_0_c_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [2:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  output        io_in_0_e_ready,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_size,
  output [2:0]  io_out_0_a_bits_source,
  output [31:0] io_out_0_a_bits_address,
  output [31:0] io_out_0_a_bits_data,
  input         io_out_0_b_valid,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [2:0]  io_out_0_d_bits_size,
  input  [2:0]  io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  wire  _T_94_ready;
  wire  _T_99;
  wire  _T_101;
  wire  _T_102;
  wire  _T_104;
  wire  _T_106;
  wire  _T_107;
  wire  _T_108;
  wire  _T_110;
  wire  _T_111;
  wire [2:0] _GEN_6;
  wire [2:0] _T_112;
  wire [2:0] _GEN_7;
  wire [2:0] _T_116;
  wire [2:0] _T_123;
  wire [2:0] _GEN_0;
  wire [2:0] _GEN_1;
  wire [2:0] _GEN_2;
  wire  _T_124;
  wire  _T_137;
  wire  _T_138;
  wire [2:0] _GEN_9;
  wire [2:0] _T_139;
  wire  _T_162;
  wire [1:0] _T_164;
  wire [1:0] _T_167;
  wire  _T_169;
  wire  _T_171;
  wire  _T_172;
  wire  _T_174;
  wire  _T_176;
  wire  _T_177;
  wire  _T_179;
  wire  _T_180;
  wire  _T_181;
  wire  _T_182;
  wire  _T_184;
  wire  _T_185;
  wire  _T_186;
  wire  _T_187;
  wire  _T_188;
  wire  _T_189;
  wire  _T_190;
  wire  _T_191;
  wire  _T_192;
  wire  _T_193;
  wire  _T_194;
  wire  _T_195;
  wire  _T_196;
  wire [1:0] _T_197;
  wire [1:0] _T_198;
  wire [3:0] _T_199;
  wire  _T_200_ready;
  wire  _T_205;
  wire  _T_206;
  wire  _T_215;
  wire  _T_218;
  wire  _T_221;
  wire  _T_222;
  wire  _T_224;
  wire  _T_227;
  wire  _T_231;
  wire  _T_232;
  wire  _T_234;
  wire [1:0] _T_239;
  wire  _T_241;
  wire  _T_242;
  wire  _T_243;
  wire [1:0] _T_247;
  wire [2:0] _GEN_3;
  wire [1:0] _GEN_4;
  wire  _T_249;
  wire  _T_252;
  wire  _T_253;
  wire [2:0] _GEN_5;
  wire [12:0] _T_257;
  wire [5:0] _T_258;
  wire [5:0] _T_259;
  wire [3:0] _T_260;
  wire [12:0] _T_268;
  wire [5:0] _T_269;
  wire [5:0] _T_270;
  wire [3:0] _T_271;
  wire  _T_272;
  wire  _T_274;
  wire [3:0] _T_276;
  reg [3:0] _T_279;
  reg [31:0] _RAND_0;
  wire  _T_281;
  wire  _T_282;
  wire [1:0] _T_283;
  wire [2:0] _GEN_10;
  wire [2:0] _T_284;
  wire [1:0] _T_285;
  wire [1:0] _T_286;
  wire [2:0] _GEN_11;
  wire [2:0] _T_288;
  wire [1:0] _T_289;
  wire [1:0] _T_290;
  wire  _T_291;
  wire  _T_292;
  wire  _T_300;
  wire  _T_301;
  wire  _T_311;
  wire  _T_315;
  wire  _T_320;
  wire  _T_321;
  wire  _T_323;
  wire  _T_325;
  wire  _T_326;
  wire  _T_328;
  wire  _T_330;
  wire  _T_331;
  wire  _T_333;
  wire [3:0] _T_335;
  wire [3:0] _T_337;
  wire [3:0] _T_338;
  wire  _T_339;
  wire [3:0] _GEN_12;
  wire [4:0] _T_340;
  wire [4:0] _T_341;
  wire [3:0] _T_342;
  wire [3:0] _T_343;
  reg  _T_361_0;
  reg [31:0] _RAND_1;
  reg  _T_361_1;
  reg [31:0] _RAND_2;
  wire  _T_372_0;
  wire  _T_372_1;
  wire  _T_380_0;
  wire  _T_380_1;
  wire  _T_388;
  wire  _T_389;
  wire  _T_393;
  wire  _T_395;
  wire  _T_396;
  wire  _T_399;
  wire [35:0] _T_401;
  wire [67:0] _T_402;
  wire [5:0] _T_403;
  wire [11:0] _T_405;
  wire [79:0] _T_406;
  wire [79:0] _T_408;
  wire [35:0] _T_409;
  wire [67:0] _T_410;
  wire [5:0] _T_411;
  wire [5:0] _T_412;
  wire [11:0] _T_413;
  wire [79:0] _T_414;
  wire [79:0] _T_416;
  wire [79:0] _T_417;
  wire [31:0] _T_422;
  wire [31:0] _T_424;
  wire [2:0] _T_425;
  wire [2:0] _T_426;
  wire [2:0] _T_428;
  wire [12:0] _T_431;
  wire [5:0] _T_432;
  wire [5:0] _T_433;
  wire [3:0] _T_434;
  wire  _T_435;
  wire [3:0] _T_437;
  wire  Queue_clock;
  wire  Queue_reset;
  wire  Queue_io_enq_ready;
  wire  Queue_io_enq_valid;
  wire [2:0] Queue_io_enq_bits_opcode;
  wire [1:0] Queue_io_enq_bits_param;
  wire [2:0] Queue_io_enq_bits_size;
  wire [1:0] Queue_io_enq_bits_source;
  wire  Queue_io_enq_bits_sink;
  wire [31:0] Queue_io_enq_bits_data;
  wire  Queue_io_enq_bits_error;
  wire  Queue_io_deq_ready;
  wire  Queue_io_deq_valid;
  wire [2:0] Queue_io_deq_bits_opcode;
  wire [1:0] Queue_io_deq_bits_param;
  wire [2:0] Queue_io_deq_bits_size;
  wire [1:0] Queue_io_deq_bits_source;
  wire  Queue_io_deq_bits_sink;
  wire [31:0] Queue_io_deq_bits_data;
  wire  Queue_io_deq_bits_error;
  wire  Queue_1_clock;
  wire  Queue_1_reset;
  wire  Queue_1_io_enq_ready;
  wire  Queue_1_io_enq_valid;
  wire [2:0] Queue_1_io_enq_bits_opcode;
  wire [1:0] Queue_1_io_enq_bits_param;
  wire [2:0] Queue_1_io_enq_bits_size;
  wire [1:0] Queue_1_io_enq_bits_source;
  wire  Queue_1_io_enq_bits_sink;
  wire [31:0] Queue_1_io_enq_bits_data;
  wire  Queue_1_io_enq_bits_error;
  wire  Queue_1_io_deq_ready;
  wire  Queue_1_io_deq_valid;
  wire [2:0] Queue_1_io_deq_bits_opcode;
  wire [1:0] Queue_1_io_deq_bits_param;
  wire [2:0] Queue_1_io_deq_bits_size;
  wire [1:0] Queue_1_io_deq_bits_source;
  wire  Queue_1_io_deq_bits_sink;
  wire [31:0] Queue_1_io_deq_bits_data;
  wire  Queue_1_io_deq_bits_error;
  reg [3:0] _T_444;
  reg [31:0] _RAND_3;
  wire  _T_446;
  wire  _T_447;
  wire [1:0] _T_448;
  wire [2:0] _T_449;
  wire [3:0] _GEN_13;
  wire [3:0] _T_450;
  wire [2:0] _T_451;
  wire [2:0] _T_452;
  wire [4:0] _GEN_14;
  wire [4:0] _T_453;
  wire [2:0] _T_454;
  wire [2:0] _T_455;
  wire [3:0] _GEN_15;
  wire [3:0] _T_457;
  wire [2:0] _T_458;
  wire [2:0] _T_459;
  wire  _T_460;
  wire  _T_461;
  wire  _T_462;
  wire  _T_471;
  wire  _T_472;
  wire  _T_473;
  wire  _T_484;
  wire  _T_485;
  wire  _T_489;
  wire  _T_494;
  wire  _T_495;
  wire  _T_497;
  wire  _T_499;
  wire  _T_500;
  wire  _T_502;
  wire  _T_503;
  wire  _T_505;
  wire  _T_506;
  wire  _T_507;
  wire  _T_509;
  wire  _T_512;
  wire  _T_513;
  wire  _T_515;
  wire [3:0] _T_517;
  wire  _T_524;
  wire [3:0] _GEN_16;
  wire [4:0] _T_525;
  wire [4:0] _T_526;
  wire [3:0] _T_527;
  wire [3:0] _T_528;
  reg  _T_550_0;
  reg [31:0] _RAND_4;
  reg  _T_550_1;
  reg [31:0] _RAND_5;
  reg  _T_550_2;
  reg [31:0] _RAND_6;
  wire  _T_564_0;
  wire  _T_564_1;
  wire  _T_564_2;
  wire  _T_574_0;
  wire  _T_574_1;
  wire  _T_574_2;
  wire  _T_584;
  wire  _T_585;
  wire  _T_586;
  wire  _T_591;
  wire  _T_593;
  wire  _T_595;
  wire  _T_596;
  wire  _T_597;
  wire  _T_600;
  wire [32:0] _T_602;
  wire [33:0] _T_603;
  wire [4:0] _T_604;
  wire [4:0] _T_605;
  wire [9:0] _T_606;
  wire [43:0] _T_607;
  wire [43:0] _T_609;
  wire [32:0] _T_610;
  wire [33:0] _T_611;
  wire [4:0] _T_612;
  wire [4:0] _T_613;
  wire [9:0] _T_614;
  wire [43:0] _T_615;
  wire [43:0] _T_617;
  wire [32:0] _T_618;
  wire [33:0] _T_619;
  wire [4:0] _T_620;
  wire [4:0] _T_621;
  wire [9:0] _T_622;
  wire [43:0] _T_623;
  wire [43:0] _T_625;
  wire [43:0] _T_626;
  wire [43:0] _T_627;
  wire  _T_632;
  wire [31:0] _T_633;
  wire  _T_634;
  wire [1:0] _T_635;
  wire [2:0] _T_636;
  wire [1:0] _T_637;
  wire [2:0] _T_638;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_10 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE (
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_sink(Queue_io_enq_bits_sink),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_error(Queue_io_enq_bits_error),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_sink(Queue_io_deq_bits_sink),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_error(Queue_io_deq_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_10 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_1 (
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_error(Queue_1_io_enq_bits_error),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_error(Queue_1_io_deq_bits_error)
  );
  assign io_in_0_a_ready = _T_108;
  assign io_in_0_b_valid = 1'h0;
  assign io_in_0_b_bits_opcode = 3'h0;
  assign io_in_0_b_bits_param = 2'h0;
  assign io_in_0_b_bits_size = 3'h0;
  assign io_in_0_b_bits_source = 2'h0;
  assign io_in_0_b_bits_address = 32'h0;
  assign io_in_0_b_bits_mask = 4'h0;
  assign io_in_0_b_bits_data = 32'h0;
  assign io_in_0_c_ready = _T_227;
  assign io_in_0_d_valid = _T_600;
  assign io_in_0_d_bits_opcode = _T_638;
  assign io_in_0_d_bits_param = _T_637;
  assign io_in_0_d_bits_size = _T_636;
  assign io_in_0_d_bits_source = _T_635;
  assign io_in_0_d_bits_sink = _T_634;
  assign io_in_0_d_bits_data = _T_633;
  assign io_in_0_d_bits_error = _T_632;
  assign io_in_0_e_ready = 1'h1;
  assign io_out_0_a_valid = _T_399;
  assign io_out_0_a_bits_opcode = _T_428;
  assign io_out_0_a_bits_size = _T_426;
  assign io_out_0_a_bits_source = _T_425;
  assign io_out_0_a_bits_address = _T_424;
  assign io_out_0_a_bits_data = _T_422;
  assign io_out_0_d_ready = _T_584;
  assign _T_94_ready = Queue_1_io_enq_ready;
  assign _T_99 = io_in_0_a_bits_opcode == 3'h0;
  assign _T_101 = io_in_0_a_bits_opcode == 3'h1;
  assign _T_102 = _T_99 | _T_101;
  assign _T_104 = io_in_0_a_bits_opcode == 3'h6;
  assign _T_106 = io_in_0_a_bits_param == 3'h2;
  assign _T_107 = _T_104 & _T_106;
  assign _T_108 = _T_107 ? _T_94_ready : _T_389;
  assign _T_110 = _T_107 == 1'h0;
  assign _T_111 = io_in_0_a_valid & _T_110;
  assign _GEN_6 = {{1'd0}, io_in_0_a_bits_source};
  assign _T_112 = _GEN_6 << 1;
  assign _GEN_7 = {{2'd0}, _T_102};
  assign _T_116 = _T_112 | _GEN_7;
  assign _T_123 = _T_112 | 3'h1;
  assign _GEN_0 = _T_104 ? 3'h4 : io_in_0_a_bits_opcode;
  assign _GEN_1 = _T_104 ? 3'h0 : io_in_0_a_bits_param;
  assign _GEN_2 = _T_104 ? _T_123 : _T_116;
  assign _T_124 = io_in_0_a_valid & _T_107;
  assign _T_137 = io_in_0_c_bits_opcode == 3'h7;
  assign _T_138 = io_in_0_c_valid & _T_137;
  assign _GEN_9 = {{1'd0}, io_in_0_c_bits_source};
  assign _T_139 = _GEN_9 << 1;
  assign _T_162 = io_in_0_c_bits_size[0];
  assign _T_164 = 2'h1 << _T_162;
  assign _T_167 = _T_164 | 2'h1;
  assign _T_169 = io_in_0_c_bits_size >= 3'h2;
  assign _T_171 = _T_167[1];
  assign _T_172 = io_in_0_c_bits_address[1];
  assign _T_174 = _T_172 == 1'h0;
  assign _T_176 = _T_171 & _T_174;
  assign _T_177 = _T_169 | _T_176;
  assign _T_179 = _T_171 & _T_172;
  assign _T_180 = _T_169 | _T_179;
  assign _T_181 = _T_167[0];
  assign _T_182 = io_in_0_c_bits_address[0];
  assign _T_184 = _T_182 == 1'h0;
  assign _T_185 = _T_174 & _T_184;
  assign _T_186 = _T_181 & _T_185;
  assign _T_187 = _T_177 | _T_186;
  assign _T_188 = _T_174 & _T_182;
  assign _T_189 = _T_181 & _T_188;
  assign _T_190 = _T_177 | _T_189;
  assign _T_191 = _T_172 & _T_184;
  assign _T_192 = _T_181 & _T_191;
  assign _T_193 = _T_180 | _T_192;
  assign _T_194 = _T_172 & _T_182;
  assign _T_195 = _T_181 & _T_194;
  assign _T_196 = _T_180 | _T_195;
  assign _T_197 = {_T_190,_T_187};
  assign _T_198 = {_T_196,_T_193};
  assign _T_199 = {_T_198,_T_197};
  assign _T_200_ready = Queue_io_enq_ready;
  assign _T_205 = io_in_0_c_bits_opcode == 3'h6;
  assign _T_206 = io_in_0_c_valid & _T_205;
  assign _T_215 = io_in_0_c_valid == 1'h0;
  assign _T_218 = _T_215 | _T_205;
  assign _T_221 = _T_218 | _T_137;
  assign _T_222 = _T_221 | reset;
  assign _T_224 = _T_222 == 1'h0;
  assign _T_227 = _T_205 ? _T_200_ready : _T_388;
  assign _T_231 = io_out_0_b_valid == 1'h0;
  assign _T_232 = _T_231 | reset;
  assign _T_234 = _T_232 == 1'h0;
  assign _T_239 = io_out_0_d_bits_source[2:1];
  assign _T_241 = io_out_0_d_bits_opcode == 3'h1;
  assign _T_242 = io_out_0_d_bits_source[0];
  assign _T_243 = _T_241 & _T_242;
  assign _T_247 = io_out_0_d_bits_error ? 2'h2 : 2'h0;
  assign _GEN_3 = _T_243 ? 3'h5 : io_out_0_d_bits_opcode;
  assign _GEN_4 = _T_243 ? _T_247 : io_out_0_d_bits_param;
  assign _T_249 = io_out_0_d_bits_opcode == 3'h0;
  assign _T_252 = _T_242 == 1'h0;
  assign _T_253 = _T_249 & _T_252;
  assign _GEN_5 = _T_253 ? 3'h6 : _GEN_3;
  assign _T_257 = 13'h3f << io_in_0_c_bits_size;
  assign _T_258 = _T_257[5:0];
  assign _T_259 = ~ _T_258;
  assign _T_260 = _T_259[5:2];
  assign _T_268 = 13'h3f << io_in_0_a_bits_size;
  assign _T_269 = _T_268[5:0];
  assign _T_270 = ~ _T_269;
  assign _T_271 = _T_270[5:2];
  assign _T_272 = _GEN_0[2];
  assign _T_274 = _T_272 == 1'h0;
  assign _T_276 = _T_274 ? _T_271 : 4'h0;
  assign _T_281 = _T_279 == 4'h0;
  assign _T_282 = _T_281 & io_out_0_a_ready;
  assign _T_283 = {_T_111,_T_138};
  assign _GEN_10 = {{1'd0}, _T_283};
  assign _T_284 = _GEN_10 << 1;
  assign _T_285 = _T_284[1:0];
  assign _T_286 = _T_283 | _T_285;
  assign _GEN_11 = {{1'd0}, _T_286};
  assign _T_288 = _GEN_11 << 1;
  assign _T_289 = _T_288[1:0];
  assign _T_290 = ~ _T_289;
  assign _T_291 = _T_290[0];
  assign _T_292 = _T_290[1];
  assign _T_300 = _T_291 & _T_138;
  assign _T_301 = _T_292 & _T_111;
  assign _T_311 = _T_300 | _T_301;
  assign _T_315 = _T_300 == 1'h0;
  assign _T_320 = _T_301 == 1'h0;
  assign _T_321 = _T_315 | _T_320;
  assign _T_323 = _T_321 | reset;
  assign _T_325 = _T_323 == 1'h0;
  assign _T_326 = _T_138 | _T_111;
  assign _T_328 = _T_326 == 1'h0;
  assign _T_330 = _T_328 | _T_311;
  assign _T_331 = _T_330 | reset;
  assign _T_333 = _T_331 == 1'h0;
  assign _T_335 = _T_300 ? _T_260 : 4'h0;
  assign _T_337 = _T_301 ? _T_276 : 4'h0;
  assign _T_338 = _T_335 | _T_337;
  assign _T_339 = io_out_0_a_ready & io_out_0_a_valid;
  assign _GEN_12 = {{3'd0}, _T_339};
  assign _T_340 = _T_279 - _GEN_12;
  assign _T_341 = $unsigned(_T_340);
  assign _T_342 = _T_341[3:0];
  assign _T_343 = _T_282 ? _T_338 : _T_342;
  assign _T_372_0 = _T_281 ? _T_300 : _T_361_0;
  assign _T_372_1 = _T_281 ? _T_301 : _T_361_1;
  assign _T_380_0 = _T_281 ? _T_291 : _T_361_0;
  assign _T_380_1 = _T_281 ? _T_292 : _T_361_1;
  assign _T_388 = io_out_0_a_ready & _T_380_0;
  assign _T_389 = io_out_0_a_ready & _T_380_1;
  assign _T_393 = _T_361_0 ? _T_138 : 1'h0;
  assign _T_395 = _T_361_1 ? _T_111 : 1'h0;
  assign _T_396 = _T_393 | _T_395;
  assign _T_399 = _T_281 ? _T_326 : _T_396;
  assign _T_401 = {io_in_0_c_bits_address,_T_199};
  assign _T_402 = {_T_401,io_in_0_c_bits_data};
  assign _T_403 = {io_in_0_c_bits_size,_T_139};
  assign _T_405 = {6'h0,_T_403};
  assign _T_406 = {_T_405,_T_402};
  assign _T_408 = _T_372_0 ? _T_406 : 80'h0;
  assign _T_409 = {io_in_0_a_bits_address,io_in_0_a_bits_mask};
  assign _T_410 = {_T_409,io_in_0_a_bits_data};
  assign _T_411 = {io_in_0_a_bits_size,_GEN_2};
  assign _T_412 = {_GEN_0,_GEN_1};
  assign _T_413 = {_T_412,_T_411};
  assign _T_414 = {_T_413,_T_410};
  assign _T_416 = _T_372_1 ? _T_414 : 80'h0;
  assign _T_417 = _T_408 | _T_416;
  assign _T_422 = _T_417[31:0];
  assign _T_424 = _T_417[67:36];
  assign _T_425 = _T_417[70:68];
  assign _T_426 = _T_417[73:71];
  assign _T_428 = _T_417[79:77];
  assign _T_431 = 13'h3f << io_out_0_d_bits_size;
  assign _T_432 = _T_431[5:0];
  assign _T_433 = ~ _T_432;
  assign _T_434 = _T_433[5:2];
  assign _T_435 = _GEN_5[0];
  assign _T_437 = _T_435 ? _T_434 : 4'h0;
  assign Queue_clock = clock;
  assign Queue_reset = reset;
  assign Queue_io_enq_valid = _T_206;
  assign Queue_io_enq_bits_opcode = 3'h6;
  assign Queue_io_enq_bits_param = 2'h0;
  assign Queue_io_enq_bits_size = io_in_0_c_bits_size;
  assign Queue_io_enq_bits_source = io_in_0_c_bits_source;
  assign Queue_io_enq_bits_sink = 1'h0;
  assign Queue_io_enq_bits_data = 32'h0;
  assign Queue_io_enq_bits_error = 1'h0;
  assign Queue_io_deq_ready = _T_585;
  assign Queue_1_clock = clock;
  assign Queue_1_reset = reset;
  assign Queue_1_io_enq_valid = _T_124;
  assign Queue_1_io_enq_bits_opcode = 3'h4;
  assign Queue_1_io_enq_bits_param = 2'h0;
  assign Queue_1_io_enq_bits_size = io_in_0_a_bits_size;
  assign Queue_1_io_enq_bits_source = io_in_0_a_bits_source;
  assign Queue_1_io_enq_bits_sink = 1'h0;
  assign Queue_1_io_enq_bits_data = 32'h0;
  assign Queue_1_io_enq_bits_error = 1'h0;
  assign Queue_1_io_deq_ready = _T_586;
  assign _T_446 = _T_444 == 4'h0;
  assign _T_447 = _T_446 & io_in_0_d_ready;
  assign _T_448 = {Queue_1_io_deq_valid,Queue_io_deq_valid};
  assign _T_449 = {_T_448,io_out_0_d_valid};
  assign _GEN_13 = {{1'd0}, _T_449};
  assign _T_450 = _GEN_13 << 1;
  assign _T_451 = _T_450[2:0];
  assign _T_452 = _T_449 | _T_451;
  assign _GEN_14 = {{2'd0}, _T_452};
  assign _T_453 = _GEN_14 << 2;
  assign _T_454 = _T_453[2:0];
  assign _T_455 = _T_452 | _T_454;
  assign _GEN_15 = {{1'd0}, _T_455};
  assign _T_457 = _GEN_15 << 1;
  assign _T_458 = _T_457[2:0];
  assign _T_459 = ~ _T_458;
  assign _T_460 = _T_459[0];
  assign _T_461 = _T_459[1];
  assign _T_462 = _T_459[2];
  assign _T_471 = _T_460 & io_out_0_d_valid;
  assign _T_472 = _T_461 & Queue_io_deq_valid;
  assign _T_473 = _T_462 & Queue_1_io_deq_valid;
  assign _T_484 = _T_471 | _T_472;
  assign _T_485 = _T_484 | _T_473;
  assign _T_489 = _T_471 == 1'h0;
  assign _T_494 = _T_472 == 1'h0;
  assign _T_495 = _T_489 | _T_494;
  assign _T_497 = _T_484 == 1'h0;
  assign _T_499 = _T_473 == 1'h0;
  assign _T_500 = _T_497 | _T_499;
  assign _T_502 = _T_495 & _T_500;
  assign _T_503 = _T_502 | reset;
  assign _T_505 = _T_503 == 1'h0;
  assign _T_506 = io_out_0_d_valid | Queue_io_deq_valid;
  assign _T_507 = _T_506 | Queue_1_io_deq_valid;
  assign _T_509 = _T_507 == 1'h0;
  assign _T_512 = _T_509 | _T_485;
  assign _T_513 = _T_512 | reset;
  assign _T_515 = _T_513 == 1'h0;
  assign _T_517 = _T_471 ? _T_437 : 4'h0;
  assign _T_524 = io_in_0_d_ready & io_in_0_d_valid;
  assign _GEN_16 = {{3'd0}, _T_524};
  assign _T_525 = _T_444 - _GEN_16;
  assign _T_526 = $unsigned(_T_525);
  assign _T_527 = _T_526[3:0];
  assign _T_528 = _T_447 ? _T_517 : _T_527;
  assign _T_564_0 = _T_446 ? _T_471 : _T_550_0;
  assign _T_564_1 = _T_446 ? _T_472 : _T_550_1;
  assign _T_564_2 = _T_446 ? _T_473 : _T_550_2;
  assign _T_574_0 = _T_446 ? _T_460 : _T_550_0;
  assign _T_574_1 = _T_446 ? _T_461 : _T_550_1;
  assign _T_574_2 = _T_446 ? _T_462 : _T_550_2;
  assign _T_584 = io_in_0_d_ready & _T_574_0;
  assign _T_585 = io_in_0_d_ready & _T_574_1;
  assign _T_586 = io_in_0_d_ready & _T_574_2;
  assign _T_591 = _T_550_0 ? io_out_0_d_valid : 1'h0;
  assign _T_593 = _T_550_1 ? Queue_io_deq_valid : 1'h0;
  assign _T_595 = _T_550_2 ? Queue_1_io_deq_valid : 1'h0;
  assign _T_596 = _T_591 | _T_593;
  assign _T_597 = _T_596 | _T_595;
  assign _T_600 = _T_446 ? _T_507 : _T_597;
  assign _T_602 = {io_out_0_d_bits_sink,io_out_0_d_bits_data};
  assign _T_603 = {_T_602,io_out_0_d_bits_error};
  assign _T_604 = {io_out_0_d_bits_size,_T_239};
  assign _T_605 = {_GEN_5,_GEN_4};
  assign _T_606 = {_T_605,_T_604};
  assign _T_607 = {_T_606,_T_603};
  assign _T_609 = _T_564_0 ? _T_607 : 44'h0;
  assign _T_610 = {Queue_io_deq_bits_sink,Queue_io_deq_bits_data};
  assign _T_611 = {_T_610,Queue_io_deq_bits_error};
  assign _T_612 = {Queue_io_deq_bits_size,Queue_io_deq_bits_source};
  assign _T_613 = {Queue_io_deq_bits_opcode,Queue_io_deq_bits_param};
  assign _T_614 = {_T_613,_T_612};
  assign _T_615 = {_T_614,_T_611};
  assign _T_617 = _T_564_1 ? _T_615 : 44'h0;
  assign _T_618 = {Queue_1_io_deq_bits_sink,Queue_1_io_deq_bits_data};
  assign _T_619 = {_T_618,Queue_1_io_deq_bits_error};
  assign _T_620 = {Queue_1_io_deq_bits_size,Queue_1_io_deq_bits_source};
  assign _T_621 = {Queue_1_io_deq_bits_opcode,Queue_1_io_deq_bits_param};
  assign _T_622 = {_T_621,_T_620};
  assign _T_623 = {_T_622,_T_619};
  assign _T_625 = _T_564_2 ? _T_623 : 44'h0;
  assign _T_626 = _T_609 | _T_617;
  assign _T_627 = _T_626 | _T_625;
  assign _T_632 = _T_627[0];
  assign _T_633 = _T_627[32:1];
  assign _T_634 = _T_627[33];
  assign _T_635 = _T_627[35:34];
  assign _T_636 = _T_627[38:36];
  assign _T_637 = _T_627[40:39];
  assign _T_638 = _T_627[43:41];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_279 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_361_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_361_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_444 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_550_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_550_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_550_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_279 <= 4'h0;
    end else begin
      if (_T_282) begin
        _T_279 <= _T_338;
      end else begin
        _T_279 <= _T_342;
      end
    end
    if (reset) begin
      _T_361_0 <= 1'h0;
    end else begin
      if (_T_281) begin
        _T_361_0 <= _T_300;
      end
    end
    if (reset) begin
      _T_361_1 <= 1'h0;
    end else begin
      if (_T_281) begin
        _T_361_1 <= _T_301;
      end
    end
    if (reset) begin
      _T_444 <= 4'h0;
    end else begin
      if (_T_447) begin
        if (_T_471) begin
          if (_T_435) begin
            _T_444 <= _T_434;
          end else begin
            _T_444 <= 4'h0;
          end
        end else begin
          _T_444 <= 4'h0;
        end
      end else begin
        _T_444 <= _T_527;
      end
    end
    if (reset) begin
      _T_550_0 <= 1'h0;
    end else begin
      if (_T_446) begin
        _T_550_0 <= _T_471;
      end
    end
    if (reset) begin
      _T_550_1 <= 1'h0;
    end else begin
      if (_T_446) begin
        _T_550_1 <= _T_472;
      end
    end
    if (reset) begin
      _T_550_2 <= 1'h0;
    end else begin
      if (_T_446) begin
        _T_550_2 <= _T_473;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_224) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CacheCork.scala:91 assert (!in.c.valid || in.c.bits.opcode === Release || in.c.bits.opcode === ReleaseData)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_224) begin
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
        if (_T_234) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CacheCork.scala:99 assert (!out.b.valid)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_234) begin
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
        if (_T_325) begin
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
        if (_T_325) begin
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
        if (_T_333) begin
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
        if (_T_333) begin
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
        if (_T_505) begin
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
        if (_T_505) begin
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
        if (_T_515) begin
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
        if (_T_515) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
