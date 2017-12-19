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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_PTW(
  input         clock,
  input         reset,
  input         io_requestor_0_req_valid,
  input  [19:0] io_requestor_0_req_bits_addr,
  output        io_requestor_0_resp_valid,
  output [1:0]  io_requestor_0_status_dprv,
  output        io_requestor_0_status_mxr,
  output        io_requestor_0_status_sum,
  input         io_requestor_1_req_valid,
  input  [19:0] io_requestor_1_req_bits_addr,
  output [1:0]  io_requestor_1_status_prv,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  input         io_mem_s2_nack,
  input         io_mem_resp_valid,
  input  [31:0] io_mem_resp_bits_data,
  input         io_mem_s2_xcpt_ae_ld,
  input  [21:0] io_dpath_ptbr_ppn,
  input         io_dpath_sfence_valid,
  input         io_dpath_sfence_bits_rs1,
  input  [1:0]  io_dpath_status_dprv,
  input  [1:0]  io_dpath_status_prv,
  input         io_dpath_status_mxr,
  input         io_dpath_status_sum
);
  reg [1:0] state;
  reg [31:0] _RAND_0;
  reg  count;
  reg [31:0] _RAND_1;
  reg  resp_valid_0;
  reg [31:0] _RAND_2;
  reg [19:0] r_req_addr;
  reg [31:0] _RAND_3;
  reg  r_req_dest;
  reg [31:0] _RAND_4;
  reg [53:0] r_pte_ppn;
  reg [63:0] _RAND_5;
  wire [9:0] _T_247;
  wire [9:0] vpn_idxs_1;
  wire [9:0] vpn_idx;
  wire  arb_clock;
  wire  arb_io_in_0_valid;
  wire [19:0] arb_io_in_0_bits_addr;
  wire  arb_io_in_1_valid;
  wire [19:0] arb_io_in_1_bits_addr;
  wire  arb_io_out_ready;
  wire  arb_io_out_valid;
  wire [19:0] arb_io_out_bits_addr;
  wire  arb_io_chosen;
  wire  _T_252;
  wire [63:0] _T_257;
  wire  _T_259;
  wire  _T_260;
  wire  _T_261;
  wire [53:0] _T_267;
  wire [63:0] _T_272;
  wire  _T_273;
  wire  _T_274;
  wire  _T_275;
  wire  _T_276;
  wire [53:0] pte_ppn;
  wire [19:0] _T_284;
  wire  _T_285;
  wire  _T_286;
  wire  _T_288;
  wire [9:0] _T_289;
  wire  _T_291;
  wire  _T_292;
  wire  _GEN_5;
  wire  _GEN_6;
  wire [33:0] _T_294;
  wire  invalid_paddr;
  wire  _T_297;
  wire  _T_298;
  wire  _T_300;
  wire  _T_301;
  wire  _T_303;
  wire  _T_304;
  wire  _T_306;
  wire  _T_307;
  wire  _T_309;
  wire  traverse;
  wire [63:0] _T_310;
  wire [65:0] _GEN_106;
  wire [65:0] pte_addr;
  wire  _T_311;
  wire [19:0] _GEN_7;
  wire  _GEN_8;
  wire [53:0] _GEN_9;
  reg [3:0] _T_313;
  reg [31:0] _RAND_6;
  reg [3:0] _T_316;
  reg [31:0] _RAND_7;
  reg [31:0] _T_320_0;
  reg [31:0] _RAND_8;
  reg [31:0] _T_320_1;
  reg [31:0] _RAND_9;
  reg [31:0] _T_320_2;
  reg [31:0] _RAND_10;
  reg [31:0] _T_320_3;
  reg [31:0] _RAND_11;
  reg [19:0] _T_330_0;
  reg [31:0] _RAND_12;
  reg [19:0] _T_330_1;
  reg [31:0] _RAND_13;
  reg [19:0] _T_330_2;
  reg [31:0] _RAND_14;
  reg [19:0] _T_330_3;
  reg [31:0] _RAND_15;
  wire [65:0] _GEN_107;
  wire  _T_337;
  wire [65:0] _GEN_108;
  wire  _T_338;
  wire [65:0] _GEN_109;
  wire  _T_339;
  wire [65:0] _GEN_110;
  wire  _T_340;
  wire [1:0] _T_341;
  wire [1:0] _T_342;
  wire [3:0] _T_343;
  wire [3:0] _T_344;
  wire  _T_346;
  wire  _T_347;
  wire  _T_349;
  wire  _T_350;
  wire [3:0] _T_351;
  wire  _T_353;
  wire [3:0] _T_355;
  wire  _T_356;
  wire [1:0] _T_357;
  wire [3:0] _T_358;
  wire  _T_359;
  wire [2:0] _T_360;
  wire [1:0] _T_361;
  wire  _T_363;
  wire  _T_364;
  wire  _T_365;
  wire [1:0] _T_371;
  wire [1:0] _T_372;
  wire [1:0] _T_373;
  wire [1:0] _T_374;
  wire [3:0] _T_376;
  wire [3:0] _T_377;
  wire [31:0] _GEN_0;
  wire [31:0] _GEN_10;
  wire [31:0] _GEN_11;
  wire [31:0] _GEN_12;
  wire [31:0] _GEN_13;
  wire [19:0] _GEN_1;
  wire [19:0] _GEN_14;
  wire [19:0] _GEN_15;
  wire [19:0] _GEN_16;
  wire [19:0] _GEN_17;
  wire [3:0] _GEN_18;
  wire [31:0] _GEN_19;
  wire [31:0] _GEN_20;
  wire [31:0] _GEN_21;
  wire [31:0] _GEN_22;
  wire [19:0] _GEN_23;
  wire [19:0] _GEN_24;
  wire [19:0] _GEN_25;
  wire [19:0] _GEN_26;
  wire  _T_380;
  wire  _T_381;
  wire [1:0] _T_382;
  wire [1:0] _T_383;
  wire  _T_385;
  wire [1:0] _T_386;
  wire  _T_387;
  wire [1:0] _T_388;
  wire  _T_390;
  wire  _T_392;
  wire [1:0] _T_394;
  wire [3:0] _GEN_111;
  wire [3:0] _T_395;
  wire [3:0] _T_396;
  wire [3:0] _T_397;
  wire [3:0] _T_398;
  wire [3:0] _T_399;
  wire [1:0] _T_400;
  wire  _T_401;
  wire  _T_403;
  wire [3:0] _T_405;
  wire [3:0] _T_406;
  wire [3:0] _T_407;
  wire [3:0] _T_408;
  wire [3:0] _T_409;
  wire [3:0] _T_410;
  wire [3:0] _GEN_27;
  wire  _T_413;
  wire  _T_414;
  wire [3:0] _GEN_28;
  wire  pte_cache_hit;
  wire  _T_418;
  wire  _T_419;
  wire  _T_420;
  wire  _T_421;
  wire [19:0] _T_424;
  wire [19:0] _T_426;
  wire [19:0] _T_428;
  wire [19:0] _T_430;
  wire [19:0] _T_431;
  wire [19:0] _T_432;
  wire [19:0] _T_433;
  wire  _T_669;
  wire [1:0] _GEN_29;
  wire [1:0] _GEN_30;
  wire  _GEN_31;
  wire  _T_672;
  wire [1:0] _T_675;
  wire  _T_676;
  wire  _GEN_33;
  wire [53:0] _GEN_34;
  wire  _T_677;
  wire  _T_679;
  wire  _T_680;
  wire [1:0] _GEN_35;
  wire  _GEN_37;
  wire [53:0] _GEN_38;
  wire [1:0] _GEN_39;
  wire  _T_681;
  wire [1:0] _GEN_40;
  wire  _T_682;
  wire [1:0] _GEN_41;
  wire [1:0] _GEN_42;
  wire  _GEN_43;
  wire  _T_687;
  wire  _GEN_44;
  wire [1:0] _GEN_48;
  wire  _GEN_49;
  wire [53:0] _GEN_51;
  wire [1:0] _GEN_61;
  wire  _GEN_62;
  wire  _GEN_65;
  wire  _GEN_67;
  wire [1:0] _GEN_70;
  wire  _GEN_71;
  wire [1:0] _GEN_73;
  wire [53:0] _GEN_74;
  wire  _GEN_84;
  wire  _GEN_87;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RR_ARBITER arb (
    .clock(arb_clock),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_addr(arb_io_in_0_bits_addr),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_addr(arb_io_in_1_bits_addr),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_addr(arb_io_out_bits_addr),
    .io_chosen(arb_io_chosen)
  );
  assign io_requestor_0_resp_valid = resp_valid_0;
  assign io_requestor_0_status_dprv = io_dpath_status_dprv;
  assign io_requestor_0_status_mxr = io_dpath_status_mxr;
  assign io_requestor_0_status_sum = io_dpath_status_sum;
  assign io_requestor_1_status_prv = io_dpath_status_prv;
  assign io_mem_req_valid = _T_380;
  assign _T_247 = r_req_addr[19:10];
  assign vpn_idxs_1 = r_req_addr[9:0];
  assign vpn_idx = count ? vpn_idxs_1 : _T_247;
  assign arb_clock = clock;
  assign arb_io_in_0_valid = io_requestor_0_req_valid;
  assign arb_io_in_0_bits_addr = io_requestor_0_req_bits_addr;
  assign arb_io_in_1_valid = io_requestor_1_req_valid;
  assign arb_io_in_1_bits_addr = io_requestor_1_req_bits_addr;
  assign arb_io_out_ready = _T_252;
  assign _T_252 = state == 2'h0;
  assign _T_257 = {{32'd0}, io_mem_resp_bits_data};
  assign _T_259 = _T_257[1];
  assign _T_260 = _T_257[2];
  assign _T_261 = _T_257[3];
  assign _T_267 = _T_257[63:10];
  assign _T_272 = {{32'd0}, io_mem_resp_bits_data};
  assign _T_273 = _T_272[0];
  assign _T_274 = _T_272[1];
  assign _T_275 = _T_272[2];
  assign _T_276 = _T_272[3];
  assign pte_ppn = {{34'd0}, _T_284};
  assign _T_284 = _T_267[19:0];
  assign _T_285 = _T_259 | _T_260;
  assign _T_286 = _T_285 | _T_261;
  assign _T_288 = count <= 1'h0;
  assign _T_289 = _T_267[9:0];
  assign _T_291 = _T_289 != 10'h0;
  assign _T_292 = _T_288 & _T_291;
  assign _GEN_5 = _T_292 ? 1'h0 : _T_273;
  assign _GEN_6 = _T_286 ? _GEN_5 : _T_273;
  assign _T_294 = _T_267[53:20];
  assign invalid_paddr = _T_294 != 34'h0;
  assign _T_297 = _T_274 == 1'h0;
  assign _T_298 = _GEN_6 & _T_297;
  assign _T_300 = _T_275 == 1'h0;
  assign _T_301 = _T_298 & _T_300;
  assign _T_303 = _T_276 == 1'h0;
  assign _T_304 = _T_301 & _T_303;
  assign _T_306 = invalid_paddr == 1'h0;
  assign _T_307 = _T_304 & _T_306;
  assign _T_309 = count < 1'h1;
  assign traverse = _T_307 & _T_309;
  assign _T_310 = {r_pte_ppn,vpn_idx};
  assign _GEN_106 = {{2'd0}, _T_310};
  assign pte_addr = _GEN_106 << 2;
  assign _T_311 = arb_io_out_ready & arb_io_out_valid;
  assign _GEN_7 = _T_311 ? arb_io_out_bits_addr : r_req_addr;
  assign _GEN_8 = _T_311 ? arb_io_chosen : r_req_dest;
  assign _GEN_9 = _T_311 ? {{32'd0}, io_dpath_ptbr_ppn} : r_pte_ppn;
  assign _GEN_107 = {{34'd0}, _T_320_0};
  assign _T_337 = _GEN_107 == pte_addr;
  assign _GEN_108 = {{34'd0}, _T_320_1};
  assign _T_338 = _GEN_108 == pte_addr;
  assign _GEN_109 = {{34'd0}, _T_320_2};
  assign _T_339 = _GEN_109 == pte_addr;
  assign _GEN_110 = {{34'd0}, _T_320_3};
  assign _T_340 = _GEN_110 == pte_addr;
  assign _T_341 = {_T_338,_T_337};
  assign _T_342 = {_T_340,_T_339};
  assign _T_343 = {_T_342,_T_341};
  assign _T_344 = _T_343 & _T_316;
  assign _T_346 = _T_344 != 4'h0;
  assign _T_347 = io_mem_resp_valid & traverse;
  assign _T_349 = _T_346 == 1'h0;
  assign _T_350 = _T_347 & _T_349;
  assign _T_351 = ~ _T_316;
  assign _T_353 = _T_351 == 4'h0;
  assign _T_355 = _T_313 >> 1'h1;
  assign _T_356 = _T_355[0];
  assign _T_357 = {1'h1,_T_356};
  assign _T_358 = _T_313 >> _T_357;
  assign _T_359 = _T_358[0];
  assign _T_360 = {_T_357,_T_359};
  assign _T_361 = _T_360[1:0];
  assign _T_363 = _T_351[0];
  assign _T_364 = _T_351[1];
  assign _T_365 = _T_351[2];
  assign _T_371 = _T_365 ? 2'h2 : 2'h3;
  assign _T_372 = _T_364 ? 2'h1 : _T_371;
  assign _T_373 = _T_363 ? 2'h0 : _T_372;
  assign _T_374 = _T_353 ? _T_361 : _T_373;
  assign _T_376 = 4'h1 << _T_374;
  assign _T_377 = _T_316 | _T_376;
  assign _GEN_0 = pte_addr[31:0];
  assign _GEN_10 = 2'h0 == _T_374 ? _GEN_0 : _T_320_0;
  assign _GEN_11 = 2'h1 == _T_374 ? _GEN_0 : _T_320_1;
  assign _GEN_12 = 2'h2 == _T_374 ? _GEN_0 : _T_320_2;
  assign _GEN_13 = 2'h3 == _T_374 ? _GEN_0 : _T_320_3;
  assign _GEN_1 = pte_ppn[19:0];
  assign _GEN_14 = 2'h0 == _T_374 ? _GEN_1 : _T_330_0;
  assign _GEN_15 = 2'h1 == _T_374 ? _GEN_1 : _T_330_1;
  assign _GEN_16 = 2'h2 == _T_374 ? _GEN_1 : _T_330_2;
  assign _GEN_17 = 2'h3 == _T_374 ? _GEN_1 : _T_330_3;
  assign _GEN_18 = _T_350 ? _T_377 : _T_316;
  assign _GEN_19 = _T_350 ? _GEN_10 : _T_320_0;
  assign _GEN_20 = _T_350 ? _GEN_11 : _T_320_1;
  assign _GEN_21 = _T_350 ? _GEN_12 : _T_320_2;
  assign _GEN_22 = _T_350 ? _GEN_13 : _T_320_3;
  assign _GEN_23 = _T_350 ? _GEN_14 : _T_330_0;
  assign _GEN_24 = _T_350 ? _GEN_15 : _T_330_1;
  assign _GEN_25 = _T_350 ? _GEN_16 : _T_330_2;
  assign _GEN_26 = _T_350 ? _GEN_17 : _T_330_3;
  assign _T_380 = state == 2'h1;
  assign _T_381 = _T_346 & _T_380;
  assign _T_382 = _T_344[3:2];
  assign _T_383 = _T_344[1:0];
  assign _T_385 = _T_382 != 2'h0;
  assign _T_386 = _T_382 | _T_383;
  assign _T_387 = _T_386[1];
  assign _T_388 = {_T_385,_T_387};
  assign _T_390 = _T_388[1];
  assign _T_392 = _T_390 == 1'h0;
  assign _T_394 = 2'h1 << 1'h1;
  assign _GEN_111 = {{2'd0}, _T_394};
  assign _T_395 = _T_313 | _GEN_111;
  assign _T_396 = ~ _T_313;
  assign _T_397 = _T_396 | _GEN_111;
  assign _T_398 = ~ _T_397;
  assign _T_399 = _T_392 ? _T_395 : _T_398;
  assign _T_400 = {1'h1,_T_390};
  assign _T_401 = _T_388[0];
  assign _T_403 = _T_401 == 1'h0;
  assign _T_405 = 4'h1 << _T_400;
  assign _T_406 = _T_399 | _T_405;
  assign _T_407 = ~ _T_399;
  assign _T_408 = _T_407 | _T_405;
  assign _T_409 = ~ _T_408;
  assign _T_410 = _T_403 ? _T_406 : _T_409;
  assign _GEN_27 = _T_381 ? _T_410 : _T_313;
  assign _T_413 = io_dpath_sfence_bits_rs1 == 1'h0;
  assign _T_414 = io_dpath_sfence_valid & _T_413;
  assign _GEN_28 = _T_414 ? 4'h0 : _GEN_18;
  assign pte_cache_hit = _T_346 & _T_309;
  assign _T_418 = _T_344[0];
  assign _T_419 = _T_344[1];
  assign _T_420 = _T_344[2];
  assign _T_421 = _T_344[3];
  assign _T_424 = _T_418 ? _T_330_0 : 20'h0;
  assign _T_426 = _T_419 ? _T_330_1 : 20'h0;
  assign _T_428 = _T_420 ? _T_330_2 : 20'h0;
  assign _T_430 = _T_421 ? _T_330_3 : 20'h0;
  assign _T_431 = _T_424 | _T_426;
  assign _T_432 = _T_431 | _T_428;
  assign _T_433 = _T_432 | _T_430;
  assign _T_669 = 2'h0 == state;
  assign _GEN_29 = _T_311 ? 2'h1 : state;
  assign _GEN_30 = _T_669 ? _GEN_29 : state;
  assign _GEN_31 = _T_669 ? 1'h0 : count;
  assign _T_672 = 2'h1 == state;
  assign _T_675 = count + 1'h1;
  assign _T_676 = _T_675[0:0];
  assign _GEN_33 = pte_cache_hit ? _T_676 : _GEN_31;
  assign _GEN_34 = pte_cache_hit ? {{34'd0}, _T_433} : _GEN_9;
  assign _T_677 = io_mem_req_ready & io_mem_req_valid;
  assign _T_679 = pte_cache_hit == 1'h0;
  assign _T_680 = _T_679 & _T_677;
  assign _GEN_35 = _T_680 ? 2'h2 : _GEN_30;
  assign _GEN_37 = _T_672 ? _GEN_33 : _GEN_31;
  assign _GEN_38 = _T_672 ? _GEN_34 : _GEN_9;
  assign _GEN_39 = _T_672 ? _GEN_35 : _GEN_30;
  assign _T_681 = 2'h2 == state;
  assign _GEN_40 = _T_681 ? 2'h3 : _GEN_39;
  assign _T_682 = 2'h3 == state;
  assign _GEN_41 = io_mem_s2_nack ? 2'h1 : _GEN_40;
  assign _GEN_42 = traverse ? 2'h1 : _GEN_41;
  assign _GEN_43 = traverse ? _T_676 : _GEN_37;
  assign _T_687 = traverse == 1'h0;
  assign _GEN_44 = 1'h0 == r_req_dest;
  assign _GEN_48 = _T_687 ? 2'h0 : _GEN_42;
  assign _GEN_49 = _T_687 ? _GEN_44 : 1'h0;
  assign _GEN_51 = io_mem_resp_valid ? pte_ppn : _GEN_38;
  assign _GEN_61 = io_mem_resp_valid ? _GEN_48 : _GEN_41;
  assign _GEN_62 = io_mem_resp_valid ? _GEN_43 : _GEN_37;
  assign _GEN_65 = io_mem_resp_valid ? _GEN_49 : 1'h0;
  assign _GEN_67 = 1'h0 == r_req_dest ? 1'h1 : _GEN_65;
  assign _GEN_70 = io_mem_s2_xcpt_ae_ld ? 2'h0 : _GEN_61;
  assign _GEN_71 = io_mem_s2_xcpt_ae_ld ? _GEN_67 : _GEN_65;
  assign _GEN_73 = _T_682 ? _GEN_70 : _GEN_40;
  assign _GEN_74 = _T_682 ? _GEN_51 : _GEN_38;
  assign _GEN_84 = _T_682 ? _GEN_62 : _GEN_37;
  assign _GEN_87 = _T_682 ? _GEN_71 : 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  count = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  resp_valid_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  r_req_addr = _RAND_3[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  r_req_dest = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  r_pte_ppn = _RAND_5[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_313 = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_316 = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_320_0 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_320_1 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_320_2 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_320_3 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_330_0 = _RAND_12[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_330_1 = _RAND_13[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_330_2 = _RAND_14[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_330_3 = _RAND_15[19:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_682) begin
        if (io_mem_s2_xcpt_ae_ld) begin
          state <= 2'h0;
        end else begin
          if (io_mem_resp_valid) begin
            if (_T_687) begin
              state <= 2'h0;
            end else begin
              if (traverse) begin
                state <= 2'h1;
              end else begin
                if (io_mem_s2_nack) begin
                  state <= 2'h1;
                end else begin
                  if (_T_681) begin
                    state <= 2'h3;
                  end else begin
                    if (_T_672) begin
                      if (_T_680) begin
                        state <= 2'h2;
                      end else begin
                        if (_T_669) begin
                          if (_T_311) begin
                            state <= 2'h1;
                          end
                        end
                      end
                    end else begin
                      if (_T_669) begin
                        if (_T_311) begin
                          state <= 2'h1;
                        end
                      end
                    end
                  end
                end
              end
            end
          end else begin
            if (io_mem_s2_nack) begin
              state <= 2'h1;
            end else begin
              if (_T_681) begin
                state <= 2'h3;
              end else begin
                if (_T_672) begin
                  if (_T_680) begin
                    state <= 2'h2;
                  end else begin
                    if (_T_669) begin
                      if (_T_311) begin
                        state <= 2'h1;
                      end
                    end
                  end
                end else begin
                  if (_T_669) begin
                    if (_T_311) begin
                      state <= 2'h1;
                    end
                  end
                end
              end
            end
          end
        end
      end else begin
        if (_T_681) begin
          state <= 2'h3;
        end else begin
          if (_T_672) begin
            if (_T_680) begin
              state <= 2'h2;
            end else begin
              state <= _GEN_30;
            end
          end else begin
            state <= _GEN_30;
          end
        end
      end
    end
    if (_T_682) begin
      if (io_mem_resp_valid) begin
        if (traverse) begin
          count <= _T_676;
        end else begin
          if (_T_672) begin
            if (pte_cache_hit) begin
              count <= _T_676;
            end else begin
              if (_T_669) begin
                count <= 1'h0;
              end
            end
          end else begin
            if (_T_669) begin
              count <= 1'h0;
            end
          end
        end
      end else begin
        if (_T_672) begin
          if (pte_cache_hit) begin
            count <= _T_676;
          end else begin
            if (_T_669) begin
              count <= 1'h0;
            end
          end
        end else begin
          if (_T_669) begin
            count <= 1'h0;
          end
        end
      end
    end else begin
      if (_T_672) begin
        if (pte_cache_hit) begin
          count <= _T_676;
        end else begin
          count <= _GEN_31;
        end
      end else begin
        count <= _GEN_31;
      end
    end
    if (_T_682) begin
      if (io_mem_s2_xcpt_ae_ld) begin
        if (1'h0 == r_req_dest) begin
          resp_valid_0 <= 1'h1;
        end else begin
          if (io_mem_resp_valid) begin
            if (_T_687) begin
              resp_valid_0 <= _GEN_44;
            end else begin
              resp_valid_0 <= 1'h0;
            end
          end else begin
            resp_valid_0 <= 1'h0;
          end
        end
      end else begin
        if (io_mem_resp_valid) begin
          if (_T_687) begin
            resp_valid_0 <= _GEN_44;
          end else begin
            resp_valid_0 <= 1'h0;
          end
        end else begin
          resp_valid_0 <= 1'h0;
        end
      end
    end else begin
      resp_valid_0 <= 1'h0;
    end
    if (_T_311) begin
      r_req_addr <= arb_io_out_bits_addr;
    end
    if (_T_311) begin
      r_req_dest <= arb_io_chosen;
    end
    if (_T_682) begin
      if (io_mem_resp_valid) begin
        r_pte_ppn <= pte_ppn;
      end else begin
        if (_T_672) begin
          if (pte_cache_hit) begin
            r_pte_ppn <= {{34'd0}, _T_433};
          end else begin
            if (_T_311) begin
              r_pte_ppn <= {{32'd0}, io_dpath_ptbr_ppn};
            end
          end
        end else begin
          if (_T_311) begin
            r_pte_ppn <= {{32'd0}, io_dpath_ptbr_ppn};
          end
        end
      end
    end else begin
      if (_T_672) begin
        if (pte_cache_hit) begin
          r_pte_ppn <= {{34'd0}, _T_433};
        end else begin
          if (_T_311) begin
            r_pte_ppn <= {{32'd0}, io_dpath_ptbr_ppn};
          end
        end
      end else begin
        if (_T_311) begin
          r_pte_ppn <= {{32'd0}, io_dpath_ptbr_ppn};
        end
      end
    end
    if (_T_381) begin
      if (_T_403) begin
        _T_313 <= _T_406;
      end else begin
        _T_313 <= _T_409;
      end
    end
    if (reset) begin
      _T_316 <= 4'h0;
    end else begin
      if (_T_414) begin
        _T_316 <= 4'h0;
      end else begin
        if (_T_350) begin
          _T_316 <= _T_377;
        end
      end
    end
    if (_T_350) begin
      if (2'h0 == _T_374) begin
        _T_320_0 <= _GEN_0;
      end
    end
    if (_T_350) begin
      if (2'h1 == _T_374) begin
        _T_320_1 <= _GEN_0;
      end
    end
    if (_T_350) begin
      if (2'h2 == _T_374) begin
        _T_320_2 <= _GEN_0;
      end
    end
    if (_T_350) begin
      if (2'h3 == _T_374) begin
        _T_320_3 <= _GEN_0;
      end
    end
    if (_T_350) begin
      if (2'h0 == _T_374) begin
        _T_330_0 <= _GEN_1;
      end
    end
    if (_T_350) begin
      if (2'h1 == _T_374) begin
        _T_330_1 <= _GEN_1;
      end
    end
    if (_T_350) begin
      if (2'h2 == _T_374) begin
        _T_330_2 <= _GEN_1;
      end
    end
    if (_T_350) begin
      if (2'h3 == _T_374) begin
        _T_330_3 <= _GEN_1;
      end
    end
  end
endmodule
