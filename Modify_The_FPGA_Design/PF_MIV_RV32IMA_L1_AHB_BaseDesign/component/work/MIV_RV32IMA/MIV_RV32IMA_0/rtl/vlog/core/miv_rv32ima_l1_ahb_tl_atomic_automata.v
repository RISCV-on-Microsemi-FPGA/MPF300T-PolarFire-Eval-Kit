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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ATOMIC_AUTOMATA(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_param,
  input  [2:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  input  [30:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [2:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_size,
  output [1:0]  io_out_0_a_bits_source,
  output [30:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [2:0]  io_out_0_d_bits_size,
  input  [1:0]  io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  reg [1:0] _T_108_0_state;
  reg [31:0] _RAND_0;
  reg [2:0] _T_119_0_bits_opcode;
  reg [31:0] _RAND_1;
  reg [2:0] _T_119_0_bits_param;
  reg [31:0] _RAND_2;
  reg [2:0] _T_119_0_bits_size;
  reg [31:0] _RAND_3;
  reg [1:0] _T_119_0_bits_source;
  reg [31:0] _RAND_4;
  reg [30:0] _T_119_0_bits_address;
  reg [31:0] _RAND_5;
  reg [3:0] _T_119_0_bits_mask;
  reg [31:0] _RAND_6;
  reg [31:0] _T_119_0_bits_data;
  reg [31:0] _RAND_7;
  reg [1:0] _T_119_0_fifoId;
  reg [31:0] _RAND_8;
  reg [3:0] _T_119_0_lut;
  reg [31:0] _RAND_9;
  reg [31:0] _T_126_0_data;
  reg [31:0] _RAND_10;
  wire  _T_130;
  wire  _T_131;
  wire  _T_132;
  wire  _T_134;
  wire  _T_135;
  wire [31:0] _T_142;
  wire  _T_169;
  wire  _T_171;
  wire  _T_173;
  wire  _T_174;
  wire [31:0] _T_184;
  wire [31:0] _T_185;
  wire  _T_187;
  wire [30:0] _T_190;
  wire [31:0] _T_191;
  wire [31:0] _T_193;
  wire [31:0] _T_194;
  wire  _T_196;
  wire [1:0] _T_209;
  wire [1:0] _GEN_31;
  wire [1:0] _T_214;
  wire  _T_218;
  wire  _T_219;
  wire  _T_225;
  wire  _T_226;
  wire [1:0] _T_227;
  wire  _T_228;
  wire  _T_229;
  wire [1:0] _T_230;
  wire  _T_231;
  wire  _T_232;
  wire [1:0] _T_233;
  wire  _T_234;
  wire  _T_235;
  wire [1:0] _T_236;
  wire  _T_237;
  wire  _T_238;
  wire [1:0] _T_239;
  wire  _T_240;
  wire  _T_241;
  wire [1:0] _T_242;
  wire  _T_243;
  wire  _T_244;
  wire [1:0] _T_245;
  wire  _T_246;
  wire  _T_247;
  wire [1:0] _T_248;
  wire  _T_249;
  wire  _T_250;
  wire [1:0] _T_251;
  wire  _T_252;
  wire  _T_253;
  wire [1:0] _T_254;
  wire  _T_255;
  wire  _T_256;
  wire [1:0] _T_257;
  wire  _T_258;
  wire  _T_259;
  wire [1:0] _T_260;
  wire  _T_261;
  wire  _T_262;
  wire [1:0] _T_263;
  wire  _T_264;
  wire  _T_265;
  wire [1:0] _T_266;
  wire  _T_267;
  wire  _T_268;
  wire [1:0] _T_269;
  wire  _T_270;
  wire  _T_271;
  wire [1:0] _T_272;
  wire  _T_273;
  wire  _T_274;
  wire [1:0] _T_275;
  wire  _T_276;
  wire  _T_277;
  wire [1:0] _T_278;
  wire  _T_279;
  wire  _T_280;
  wire [1:0] _T_281;
  wire  _T_282;
  wire  _T_283;
  wire [1:0] _T_284;
  wire  _T_285;
  wire  _T_286;
  wire [1:0] _T_287;
  wire  _T_288;
  wire  _T_289;
  wire [1:0] _T_290;
  wire  _T_291;
  wire  _T_292;
  wire [1:0] _T_293;
  wire  _T_294;
  wire  _T_295;
  wire [1:0] _T_296;
  wire  _T_297;
  wire  _T_298;
  wire [1:0] _T_299;
  wire  _T_300;
  wire  _T_301;
  wire [1:0] _T_302;
  wire  _T_303;
  wire  _T_304;
  wire [1:0] _T_305;
  wire  _T_306;
  wire  _T_307;
  wire [1:0] _T_308;
  wire  _T_309;
  wire  _T_310;
  wire [1:0] _T_311;
  wire  _T_312;
  wire  _T_313;
  wire [1:0] _T_314;
  wire  _T_315;
  wire  _T_316;
  wire [1:0] _T_317;
  wire  _T_318;
  wire  _T_319;
  wire [1:0] _T_320;
  wire [3:0] _T_321;
  wire  _T_322;
  wire [3:0] _T_323;
  wire  _T_324;
  wire [3:0] _T_325;
  wire  _T_326;
  wire [3:0] _T_327;
  wire  _T_328;
  wire [3:0] _T_329;
  wire  _T_330;
  wire [3:0] _T_331;
  wire  _T_332;
  wire [3:0] _T_333;
  wire  _T_334;
  wire [3:0] _T_335;
  wire  _T_336;
  wire [3:0] _T_337;
  wire  _T_338;
  wire [3:0] _T_339;
  wire  _T_340;
  wire [3:0] _T_341;
  wire  _T_342;
  wire [3:0] _T_343;
  wire  _T_344;
  wire [3:0] _T_345;
  wire  _T_346;
  wire [3:0] _T_347;
  wire  _T_348;
  wire [3:0] _T_349;
  wire  _T_350;
  wire [3:0] _T_351;
  wire  _T_352;
  wire [3:0] _T_353;
  wire  _T_354;
  wire [3:0] _T_355;
  wire  _T_356;
  wire [3:0] _T_357;
  wire  _T_358;
  wire [3:0] _T_359;
  wire  _T_360;
  wire [3:0] _T_361;
  wire  _T_362;
  wire [3:0] _T_363;
  wire  _T_364;
  wire [3:0] _T_365;
  wire  _T_366;
  wire [3:0] _T_367;
  wire  _T_368;
  wire [3:0] _T_369;
  wire  _T_370;
  wire [3:0] _T_371;
  wire  _T_372;
  wire [3:0] _T_373;
  wire  _T_374;
  wire [3:0] _T_375;
  wire  _T_376;
  wire [3:0] _T_377;
  wire  _T_378;
  wire [3:0] _T_379;
  wire  _T_380;
  wire [3:0] _T_381;
  wire  _T_382;
  wire [3:0] _T_383;
  wire  _T_384;
  wire [1:0] _T_385;
  wire [1:0] _T_386;
  wire [3:0] _T_387;
  wire [1:0] _T_388;
  wire [1:0] _T_389;
  wire [3:0] _T_390;
  wire [7:0] _T_391;
  wire [1:0] _T_392;
  wire [1:0] _T_393;
  wire [3:0] _T_394;
  wire [1:0] _T_395;
  wire [1:0] _T_396;
  wire [3:0] _T_397;
  wire [7:0] _T_398;
  wire [15:0] _T_399;
  wire [1:0] _T_400;
  wire [1:0] _T_401;
  wire [3:0] _T_402;
  wire [1:0] _T_403;
  wire [1:0] _T_404;
  wire [3:0] _T_405;
  wire [7:0] _T_406;
  wire [1:0] _T_407;
  wire [1:0] _T_408;
  wire [3:0] _T_409;
  wire [1:0] _T_410;
  wire [1:0] _T_411;
  wire [3:0] _T_412;
  wire [7:0] _T_413;
  wire [15:0] _T_414;
  wire [31:0] _T_415;
  wire  _T_416;
  wire  _T_417;
  wire  _T_418;
  wire [3:0] _T_419;
  wire [2:0] _T_420;
  wire [3:0] _GEN_32;
  wire [3:0] _T_421;
  wire [3:0] _T_422;
  wire [1:0] _T_427;
  wire [1:0] _T_428;
  wire [3:0] _T_429;
  wire [1:0] _T_434;
  wire [1:0] _T_435;
  wire [3:0] _T_436;
  wire [3:0] _T_437;
  wire [4:0] _GEN_33;
  wire [4:0] _T_438;
  wire [3:0] _T_439;
  wire [3:0] _T_440;
  wire [4:0] _GEN_34;
  wire [4:0] _T_441;
  wire [3:0] _T_442;
  wire [4:0] _GEN_35;
  wire [4:0] _T_443;
  wire [3:0] _T_444;
  wire [3:0] _T_445;
  wire [5:0] _GEN_36;
  wire [5:0] _T_446;
  wire [3:0] _T_447;
  wire [3:0] _T_448;
  wire  _T_450;
  wire  _T_451;
  wire  _T_452;
  wire  _T_453;
  wire [7:0] _T_457;
  wire [7:0] _T_461;
  wire [7:0] _T_465;
  wire [7:0] _T_469;
  wire [15:0] _T_470;
  wire [15:0] _T_471;
  wire [31:0] _T_472;
  wire [4:0] _GEN_37;
  wire [4:0] _T_473;
  wire [3:0] _T_474;
  wire [3:0] _T_475;
  wire [5:0] _GEN_38;
  wire [5:0] _T_476;
  wire [3:0] _T_477;
  wire [3:0] _T_478;
  wire  _T_480;
  wire  _T_481;
  wire  _T_482;
  wire  _T_483;
  wire [7:0] _T_487;
  wire [7:0] _T_491;
  wire [7:0] _T_495;
  wire [7:0] _T_499;
  wire [15:0] _T_500;
  wire [15:0] _T_501;
  wire [31:0] _T_502;
  wire  _T_503;
  wire  _T_504;
  wire  _T_505;
  wire  _T_506;
  wire [7:0] _T_510;
  wire [7:0] _T_514;
  wire [7:0] _T_518;
  wire [7:0] _T_522;
  wire [15:0] _T_523;
  wire [15:0] _T_524;
  wire [31:0] _T_525;
  wire [31:0] _T_526;
  wire [31:0] _T_527;
  wire [31:0] _T_528;
  wire [31:0] _T_529;
  wire [31:0] _T_530;
  wire [31:0] _T_531;
  wire [32:0] _T_532;
  wire [31:0] _T_533;
  wire  _T_534;
  wire  _T_535;
  wire  _T_537;
  wire  _T_538;
  wire  _T_539;
  wire  _T_541;
  wire  _T_542;
  wire  _T_543;
  wire [31:0] _T_544;
  wire [31:0] _T_545;
  wire  _T_546;
  wire [31:0] _T_547;
  wire  _T_553;
  wire  _T_554;
  wire  _T_555;
  wire  _T_556;
  wire  _T_557;
  wire  _T_559;
  wire [2:0] _GEN_0;
  wire [2:0] _GEN_1;
  wire  _T_588;
  wire [1:0] _T_590;
  wire [1:0] _T_593;
  wire  _T_595;
  wire  _T_597;
  wire  _T_598;
  wire  _T_600;
  wire  _T_602;
  wire  _T_603;
  wire  _T_605;
  wire  _T_606;
  wire  _T_607;
  wire  _T_608;
  wire  _T_610;
  wire  _T_611;
  wire  _T_612;
  wire  _T_613;
  wire  _T_614;
  wire  _T_615;
  wire  _T_616;
  wire  _T_617;
  wire  _T_618;
  wire  _T_619;
  wire  _T_620;
  wire  _T_621;
  wire  _T_622;
  wire [1:0] _T_623;
  wire [1:0] _T_624;
  wire [3:0] _T_625;
  wire [12:0] _T_629;
  wire [5:0] _T_630;
  wire [5:0] _T_631;
  wire [3:0] _T_632;
  wire  _T_633;
  wire  _T_635;
  wire [3:0] _T_637;
  reg [3:0] _T_640;
  reg [31:0] _RAND_11;
  wire  _T_642;
  wire  _T_643;
  wire [1:0] _T_644;
  wire [2:0] _GEN_39;
  wire [2:0] _T_645;
  wire [1:0] _T_646;
  wire [1:0] _T_647;
  wire [2:0] _GEN_40;
  wire [2:0] _T_649;
  wire [1:0] _T_650;
  wire [1:0] _T_651;
  wire  _T_652;
  wire  _T_653;
  wire  _T_661;
  wire  _T_662;
  wire  _T_672;
  wire  _T_676;
  wire  _T_681;
  wire  _T_682;
  wire  _T_684;
  wire  _T_686;
  wire  _T_687;
  wire  _T_689;
  wire  _T_691;
  wire  _T_692;
  wire  _T_694;
  wire [3:0] _T_698;
  wire  _T_700;
  wire [3:0] _GEN_41;
  wire [4:0] _T_701;
  wire [4:0] _T_702;
  wire [3:0] _T_703;
  wire [3:0] _T_704;
  reg  _T_722_0;
  reg [31:0] _RAND_12;
  reg  _T_722_1;
  reg [31:0] _RAND_13;
  wire  _T_733_0;
  wire  _T_733_1;
  wire  _T_741_0;
  wire  _T_741_1;
  wire  _T_749;
  wire  _T_750;
  wire  _T_754;
  wire  _T_756;
  wire  _T_757;
  wire  _T_760;
  wire [34:0] _T_762;
  wire [66:0] _T_763;
  wire [4:0] _T_764;
  wire [10:0] _T_766;
  wire [77:0] _T_767;
  wire [77:0] _T_769;
  wire [34:0] _T_770;
  wire [66:0] _T_771;
  wire [4:0] _T_772;
  wire [5:0] _T_773;
  wire [10:0] _T_774;
  wire [77:0] _T_775;
  wire [77:0] _T_777;
  wire [77:0] _T_778;
  wire [31:0] _T_783;
  wire [3:0] _T_784;
  wire [30:0] _T_785;
  wire [1:0] _T_786;
  wire [2:0] _T_787;
  wire [2:0] _T_789;
  wire  _T_790;
  wire  _T_793;
  wire [1:0] _T_794;
  wire [2:0] _GEN_42;
  wire  _T_804;
  wire [3:0] _T_805;
  wire  _T_806;
  wire [3:0] _T_807;
  wire  _T_808;
  wire [3:0] _T_809;
  wire  _T_810;
  wire [3:0] _T_811;
  wire [1:0] _GEN_2;
  wire [2:0] _GEN_3;
  wire [2:0] _GEN_4;
  wire [2:0] _GEN_5;
  wire [1:0] _GEN_6;
  wire [30:0] _GEN_7;
  wire [3:0] _GEN_8;
  wire [31:0] _GEN_9;
  wire [3:0] _GEN_10;
  wire [1:0] _GEN_11;
  wire [1:0] _GEN_12;
  wire [2:0] _GEN_13;
  wire [2:0] _GEN_14;
  wire [2:0] _GEN_15;
  wire [1:0] _GEN_16;
  wire [30:0] _GEN_17;
  wire [3:0] _GEN_18;
  wire [31:0] _GEN_19;
  wire [3:0] _GEN_20;
  wire [1:0] _GEN_21;
  wire  _T_812;
  wire [1:0] _GEN_22;
  wire [1:0] _GEN_23;
  wire  _T_813;
  wire [12:0] _T_816;
  wire [5:0] _T_817;
  wire [5:0] _T_818;
  wire [3:0] _T_819;
  wire  _T_820;
  wire [3:0] _T_822;
  reg [3:0] _T_825;
  reg [31:0] _RAND_14;
  wire [4:0] _T_827;
  wire [4:0] _T_828;
  wire [3:0] _T_829;
  wire  _T_831;
  wire [3:0] _T_840;
  wire [3:0] _GEN_24;
  wire  _T_841;
  wire  _T_842;
  wire  _T_847;
  wire  _T_849;
  wire  _T_851;
  wire  _T_852;
  wire [31:0] _GEN_25;
  wire [1:0] _T_853;
  wire [1:0] _GEN_26;
  wire [31:0] _GEN_27;
  wire [1:0] _GEN_28;
  wire  _T_854;
  wire  _T_855;
  wire  _T_856;
  wire  _T_857;
  wire  _T_859;
  wire  _T_860;
  wire  _T_861;
  wire [2:0] _GEN_29;
  wire [31:0] _GEN_30;
  assign io_in_0_a_ready = _T_556;
  assign io_in_0_d_valid = _T_860;
  assign io_in_0_d_bits_opcode = _GEN_29;
  assign io_in_0_d_bits_param = io_out_0_d_bits_param;
  assign io_in_0_d_bits_size = io_out_0_d_bits_size;
  assign io_in_0_d_bits_source = io_out_0_d_bits_source;
  assign io_in_0_d_bits_sink = io_out_0_d_bits_sink;
  assign io_in_0_d_bits_data = _GEN_30;
  assign io_in_0_d_bits_error = io_out_0_d_bits_error;
  assign io_out_0_a_valid = _T_760;
  assign io_out_0_a_bits_opcode = _T_789;
  assign io_out_0_a_bits_size = _T_787;
  assign io_out_0_a_bits_source = _T_786;
  assign io_out_0_a_bits_address = _T_785;
  assign io_out_0_a_bits_mask = _T_784;
  assign io_out_0_a_bits_data = _T_783;
  assign io_out_0_d_ready = _T_861;
  assign _T_130 = _T_108_0_state == 2'h0;
  assign _T_131 = _T_108_0_state == 2'h2;
  assign _T_132 = _T_108_0_state == 2'h3;
  assign _T_134 = _T_132 | _T_131;
  assign _T_135 = _T_108_0_state != 2'h0;
  assign _T_142 = {1'b0,$signed(io_in_0_a_bits_address)};
  assign _T_169 = io_in_0_a_bits_opcode == 3'h3;
  assign _T_171 = io_in_0_a_bits_opcode == 3'h2;
  assign _T_173 = _T_171 ? 1'h0 : 1'h1;
  assign _T_174 = _T_169 ? 1'h0 : _T_173;
  assign _T_184 = $signed(_T_142) & $signed(32'sh44000000);
  assign _T_185 = $signed(_T_184);
  assign _T_187 = $signed(_T_185) == $signed(32'sh0);
  assign _T_190 = io_in_0_a_bits_address ^ 31'h44000000;
  assign _T_191 = {1'b0,$signed(_T_190)};
  assign _T_193 = $signed(_T_191) & $signed(32'sh44000000);
  assign _T_194 = $signed(_T_193);
  assign _T_196 = $signed(_T_194) == $signed(32'sh0);
  assign _T_209 = _T_187 ? 2'h2 : 2'h0;
  assign _GEN_31 = {{1'd0}, _T_196};
  assign _T_214 = _T_209 | _GEN_31;
  assign _T_218 = _T_119_0_fifoId == _T_214;
  assign _T_219 = _T_134 & _T_218;
  assign _T_225 = _T_119_0_bits_data[0];
  assign _T_226 = _T_126_0_data[0];
  assign _T_227 = {_T_225,_T_226};
  assign _T_228 = _T_119_0_bits_data[1];
  assign _T_229 = _T_126_0_data[1];
  assign _T_230 = {_T_228,_T_229};
  assign _T_231 = _T_119_0_bits_data[2];
  assign _T_232 = _T_126_0_data[2];
  assign _T_233 = {_T_231,_T_232};
  assign _T_234 = _T_119_0_bits_data[3];
  assign _T_235 = _T_126_0_data[3];
  assign _T_236 = {_T_234,_T_235};
  assign _T_237 = _T_119_0_bits_data[4];
  assign _T_238 = _T_126_0_data[4];
  assign _T_239 = {_T_237,_T_238};
  assign _T_240 = _T_119_0_bits_data[5];
  assign _T_241 = _T_126_0_data[5];
  assign _T_242 = {_T_240,_T_241};
  assign _T_243 = _T_119_0_bits_data[6];
  assign _T_244 = _T_126_0_data[6];
  assign _T_245 = {_T_243,_T_244};
  assign _T_246 = _T_119_0_bits_data[7];
  assign _T_247 = _T_126_0_data[7];
  assign _T_248 = {_T_246,_T_247};
  assign _T_249 = _T_119_0_bits_data[8];
  assign _T_250 = _T_126_0_data[8];
  assign _T_251 = {_T_249,_T_250};
  assign _T_252 = _T_119_0_bits_data[9];
  assign _T_253 = _T_126_0_data[9];
  assign _T_254 = {_T_252,_T_253};
  assign _T_255 = _T_119_0_bits_data[10];
  assign _T_256 = _T_126_0_data[10];
  assign _T_257 = {_T_255,_T_256};
  assign _T_258 = _T_119_0_bits_data[11];
  assign _T_259 = _T_126_0_data[11];
  assign _T_260 = {_T_258,_T_259};
  assign _T_261 = _T_119_0_bits_data[12];
  assign _T_262 = _T_126_0_data[12];
  assign _T_263 = {_T_261,_T_262};
  assign _T_264 = _T_119_0_bits_data[13];
  assign _T_265 = _T_126_0_data[13];
  assign _T_266 = {_T_264,_T_265};
  assign _T_267 = _T_119_0_bits_data[14];
  assign _T_268 = _T_126_0_data[14];
  assign _T_269 = {_T_267,_T_268};
  assign _T_270 = _T_119_0_bits_data[15];
  assign _T_271 = _T_126_0_data[15];
  assign _T_272 = {_T_270,_T_271};
  assign _T_273 = _T_119_0_bits_data[16];
  assign _T_274 = _T_126_0_data[16];
  assign _T_275 = {_T_273,_T_274};
  assign _T_276 = _T_119_0_bits_data[17];
  assign _T_277 = _T_126_0_data[17];
  assign _T_278 = {_T_276,_T_277};
  assign _T_279 = _T_119_0_bits_data[18];
  assign _T_280 = _T_126_0_data[18];
  assign _T_281 = {_T_279,_T_280};
  assign _T_282 = _T_119_0_bits_data[19];
  assign _T_283 = _T_126_0_data[19];
  assign _T_284 = {_T_282,_T_283};
  assign _T_285 = _T_119_0_bits_data[20];
  assign _T_286 = _T_126_0_data[20];
  assign _T_287 = {_T_285,_T_286};
  assign _T_288 = _T_119_0_bits_data[21];
  assign _T_289 = _T_126_0_data[21];
  assign _T_290 = {_T_288,_T_289};
  assign _T_291 = _T_119_0_bits_data[22];
  assign _T_292 = _T_126_0_data[22];
  assign _T_293 = {_T_291,_T_292};
  assign _T_294 = _T_119_0_bits_data[23];
  assign _T_295 = _T_126_0_data[23];
  assign _T_296 = {_T_294,_T_295};
  assign _T_297 = _T_119_0_bits_data[24];
  assign _T_298 = _T_126_0_data[24];
  assign _T_299 = {_T_297,_T_298};
  assign _T_300 = _T_119_0_bits_data[25];
  assign _T_301 = _T_126_0_data[25];
  assign _T_302 = {_T_300,_T_301};
  assign _T_303 = _T_119_0_bits_data[26];
  assign _T_304 = _T_126_0_data[26];
  assign _T_305 = {_T_303,_T_304};
  assign _T_306 = _T_119_0_bits_data[27];
  assign _T_307 = _T_126_0_data[27];
  assign _T_308 = {_T_306,_T_307};
  assign _T_309 = _T_119_0_bits_data[28];
  assign _T_310 = _T_126_0_data[28];
  assign _T_311 = {_T_309,_T_310};
  assign _T_312 = _T_119_0_bits_data[29];
  assign _T_313 = _T_126_0_data[29];
  assign _T_314 = {_T_312,_T_313};
  assign _T_315 = _T_119_0_bits_data[30];
  assign _T_316 = _T_126_0_data[30];
  assign _T_317 = {_T_315,_T_316};
  assign _T_318 = _T_119_0_bits_data[31];
  assign _T_319 = _T_126_0_data[31];
  assign _T_320 = {_T_318,_T_319};
  assign _T_321 = _T_119_0_lut >> _T_227;
  assign _T_322 = _T_321[0];
  assign _T_323 = _T_119_0_lut >> _T_230;
  assign _T_324 = _T_323[0];
  assign _T_325 = _T_119_0_lut >> _T_233;
  assign _T_326 = _T_325[0];
  assign _T_327 = _T_119_0_lut >> _T_236;
  assign _T_328 = _T_327[0];
  assign _T_329 = _T_119_0_lut >> _T_239;
  assign _T_330 = _T_329[0];
  assign _T_331 = _T_119_0_lut >> _T_242;
  assign _T_332 = _T_331[0];
  assign _T_333 = _T_119_0_lut >> _T_245;
  assign _T_334 = _T_333[0];
  assign _T_335 = _T_119_0_lut >> _T_248;
  assign _T_336 = _T_335[0];
  assign _T_337 = _T_119_0_lut >> _T_251;
  assign _T_338 = _T_337[0];
  assign _T_339 = _T_119_0_lut >> _T_254;
  assign _T_340 = _T_339[0];
  assign _T_341 = _T_119_0_lut >> _T_257;
  assign _T_342 = _T_341[0];
  assign _T_343 = _T_119_0_lut >> _T_260;
  assign _T_344 = _T_343[0];
  assign _T_345 = _T_119_0_lut >> _T_263;
  assign _T_346 = _T_345[0];
  assign _T_347 = _T_119_0_lut >> _T_266;
  assign _T_348 = _T_347[0];
  assign _T_349 = _T_119_0_lut >> _T_269;
  assign _T_350 = _T_349[0];
  assign _T_351 = _T_119_0_lut >> _T_272;
  assign _T_352 = _T_351[0];
  assign _T_353 = _T_119_0_lut >> _T_275;
  assign _T_354 = _T_353[0];
  assign _T_355 = _T_119_0_lut >> _T_278;
  assign _T_356 = _T_355[0];
  assign _T_357 = _T_119_0_lut >> _T_281;
  assign _T_358 = _T_357[0];
  assign _T_359 = _T_119_0_lut >> _T_284;
  assign _T_360 = _T_359[0];
  assign _T_361 = _T_119_0_lut >> _T_287;
  assign _T_362 = _T_361[0];
  assign _T_363 = _T_119_0_lut >> _T_290;
  assign _T_364 = _T_363[0];
  assign _T_365 = _T_119_0_lut >> _T_293;
  assign _T_366 = _T_365[0];
  assign _T_367 = _T_119_0_lut >> _T_296;
  assign _T_368 = _T_367[0];
  assign _T_369 = _T_119_0_lut >> _T_299;
  assign _T_370 = _T_369[0];
  assign _T_371 = _T_119_0_lut >> _T_302;
  assign _T_372 = _T_371[0];
  assign _T_373 = _T_119_0_lut >> _T_305;
  assign _T_374 = _T_373[0];
  assign _T_375 = _T_119_0_lut >> _T_308;
  assign _T_376 = _T_375[0];
  assign _T_377 = _T_119_0_lut >> _T_311;
  assign _T_378 = _T_377[0];
  assign _T_379 = _T_119_0_lut >> _T_314;
  assign _T_380 = _T_379[0];
  assign _T_381 = _T_119_0_lut >> _T_317;
  assign _T_382 = _T_381[0];
  assign _T_383 = _T_119_0_lut >> _T_320;
  assign _T_384 = _T_383[0];
  assign _T_385 = {_T_324,_T_322};
  assign _T_386 = {_T_328,_T_326};
  assign _T_387 = {_T_386,_T_385};
  assign _T_388 = {_T_332,_T_330};
  assign _T_389 = {_T_336,_T_334};
  assign _T_390 = {_T_389,_T_388};
  assign _T_391 = {_T_390,_T_387};
  assign _T_392 = {_T_340,_T_338};
  assign _T_393 = {_T_344,_T_342};
  assign _T_394 = {_T_393,_T_392};
  assign _T_395 = {_T_348,_T_346};
  assign _T_396 = {_T_352,_T_350};
  assign _T_397 = {_T_396,_T_395};
  assign _T_398 = {_T_397,_T_394};
  assign _T_399 = {_T_398,_T_391};
  assign _T_400 = {_T_356,_T_354};
  assign _T_401 = {_T_360,_T_358};
  assign _T_402 = {_T_401,_T_400};
  assign _T_403 = {_T_364,_T_362};
  assign _T_404 = {_T_368,_T_366};
  assign _T_405 = {_T_404,_T_403};
  assign _T_406 = {_T_405,_T_402};
  assign _T_407 = {_T_372,_T_370};
  assign _T_408 = {_T_376,_T_374};
  assign _T_409 = {_T_408,_T_407};
  assign _T_410 = {_T_380,_T_378};
  assign _T_411 = {_T_384,_T_382};
  assign _T_412 = {_T_411,_T_410};
  assign _T_413 = {_T_412,_T_409};
  assign _T_414 = {_T_413,_T_406};
  assign _T_415 = {_T_414,_T_399};
  assign _T_416 = _T_119_0_bits_param[1];
  assign _T_417 = _T_119_0_bits_param[0];
  assign _T_418 = _T_119_0_bits_param[2];
  assign _T_419 = ~ _T_119_0_bits_mask;
  assign _T_420 = _T_119_0_bits_mask[3:1];
  assign _GEN_32 = {{1'd0}, _T_420};
  assign _T_421 = _T_419 | _GEN_32;
  assign _T_422 = ~ _T_421;
  assign _T_427 = {_T_270,_T_246};
  assign _T_428 = {_T_318,_T_294};
  assign _T_429 = {_T_428,_T_427};
  assign _T_434 = {_T_271,_T_247};
  assign _T_435 = {_T_319,_T_295};
  assign _T_436 = {_T_435,_T_434};
  assign _T_437 = _T_429 & _T_422;
  assign _GEN_33 = {{1'd0}, _T_437};
  assign _T_438 = _GEN_33 << 1;
  assign _T_439 = _T_438[3:0];
  assign _T_440 = _T_436 & _T_422;
  assign _GEN_34 = {{1'd0}, _T_440};
  assign _T_441 = _GEN_34 << 1;
  assign _T_442 = _T_441[3:0];
  assign _GEN_35 = {{1'd0}, _T_439};
  assign _T_443 = _GEN_35 << 1;
  assign _T_444 = _T_443[3:0];
  assign _T_445 = _T_439 | _T_444;
  assign _GEN_36 = {{2'd0}, _T_445};
  assign _T_446 = _GEN_36 << 2;
  assign _T_447 = _T_446[3:0];
  assign _T_448 = _T_445 | _T_447;
  assign _T_450 = _T_448[0];
  assign _T_451 = _T_448[1];
  assign _T_452 = _T_448[2];
  assign _T_453 = _T_448[3];
  assign _T_457 = _T_450 ? 8'hff : 8'h0;
  assign _T_461 = _T_451 ? 8'hff : 8'h0;
  assign _T_465 = _T_452 ? 8'hff : 8'h0;
  assign _T_469 = _T_453 ? 8'hff : 8'h0;
  assign _T_470 = {_T_461,_T_457};
  assign _T_471 = {_T_469,_T_465};
  assign _T_472 = {_T_471,_T_470};
  assign _GEN_37 = {{1'd0}, _T_442};
  assign _T_473 = _GEN_37 << 1;
  assign _T_474 = _T_473[3:0];
  assign _T_475 = _T_442 | _T_474;
  assign _GEN_38 = {{2'd0}, _T_475};
  assign _T_476 = _GEN_38 << 2;
  assign _T_477 = _T_476[3:0];
  assign _T_478 = _T_475 | _T_477;
  assign _T_480 = _T_478[0];
  assign _T_481 = _T_478[1];
  assign _T_482 = _T_478[2];
  assign _T_483 = _T_478[3];
  assign _T_487 = _T_480 ? 8'hff : 8'h0;
  assign _T_491 = _T_481 ? 8'hff : 8'h0;
  assign _T_495 = _T_482 ? 8'hff : 8'h0;
  assign _T_499 = _T_483 ? 8'hff : 8'h0;
  assign _T_500 = {_T_491,_T_487};
  assign _T_501 = {_T_499,_T_495};
  assign _T_502 = {_T_501,_T_500};
  assign _T_503 = _T_119_0_bits_mask[0];
  assign _T_504 = _T_119_0_bits_mask[1];
  assign _T_505 = _T_119_0_bits_mask[2];
  assign _T_506 = _T_119_0_bits_mask[3];
  assign _T_510 = _T_503 ? 8'hff : 8'h0;
  assign _T_514 = _T_504 ? 8'hff : 8'h0;
  assign _T_518 = _T_505 ? 8'hff : 8'h0;
  assign _T_522 = _T_506 ? 8'hff : 8'h0;
  assign _T_523 = {_T_514,_T_510};
  assign _T_524 = {_T_522,_T_518};
  assign _T_525 = {_T_524,_T_523};
  assign _T_526 = _T_119_0_bits_data & _T_525;
  assign _T_527 = _T_526 | _T_472;
  assign _T_528 = _T_126_0_data & _T_525;
  assign _T_529 = _T_528 | _T_502;
  assign _T_530 = ~ _T_529;
  assign _T_531 = _T_418 ? _T_529 : _T_530;
  assign _T_532 = _T_527 + _T_531;
  assign _T_533 = _T_532[31:0];
  assign _T_534 = _T_527[31];
  assign _T_535 = _T_416 == _T_534;
  assign _T_537 = _T_529[31];
  assign _T_538 = _T_534 == _T_537;
  assign _T_539 = _T_533[31];
  assign _T_541 = _T_539 == 1'h0;
  assign _T_542 = _T_538 ? _T_541 : _T_535;
  assign _T_543 = _T_417 == _T_542;
  assign _T_544 = _T_543 ? _T_119_0_bits_data : _T_126_0_data;
  assign _T_545 = _T_418 ? _T_533 : _T_544;
  assign _T_546 = _T_119_0_bits_opcode[0];
  assign _T_547 = _T_546 ? _T_415 : _T_545;
  assign _T_553 = _T_219 == 1'h0;
  assign _T_554 = _T_174 | _T_130;
  assign _T_555 = _T_553 & _T_554;
  assign _T_556 = _T_750 & _T_555;
  assign _T_557 = io_in_0_a_valid & _T_555;
  assign _T_559 = _T_174 == 1'h0;
  assign _GEN_0 = _T_559 ? 3'h4 : io_in_0_a_bits_opcode;
  assign _GEN_1 = _T_559 ? 3'h0 : io_in_0_a_bits_param;
  assign _T_588 = _T_119_0_bits_size[0];
  assign _T_590 = 2'h1 << _T_588;
  assign _T_593 = _T_590 | 2'h1;
  assign _T_595 = _T_119_0_bits_size >= 3'h2;
  assign _T_597 = _T_593[1];
  assign _T_598 = _T_119_0_bits_address[1];
  assign _T_600 = _T_598 == 1'h0;
  assign _T_602 = _T_597 & _T_600;
  assign _T_603 = _T_595 | _T_602;
  assign _T_605 = _T_597 & _T_598;
  assign _T_606 = _T_595 | _T_605;
  assign _T_607 = _T_593[0];
  assign _T_608 = _T_119_0_bits_address[0];
  assign _T_610 = _T_608 == 1'h0;
  assign _T_611 = _T_600 & _T_610;
  assign _T_612 = _T_607 & _T_611;
  assign _T_613 = _T_603 | _T_612;
  assign _T_614 = _T_600 & _T_608;
  assign _T_615 = _T_607 & _T_614;
  assign _T_616 = _T_603 | _T_615;
  assign _T_617 = _T_598 & _T_610;
  assign _T_618 = _T_607 & _T_617;
  assign _T_619 = _T_606 | _T_618;
  assign _T_620 = _T_598 & _T_608;
  assign _T_621 = _T_607 & _T_620;
  assign _T_622 = _T_606 | _T_621;
  assign _T_623 = {_T_616,_T_613};
  assign _T_624 = {_T_622,_T_619};
  assign _T_625 = {_T_624,_T_623};
  assign _T_629 = 13'h3f << io_in_0_a_bits_size;
  assign _T_630 = _T_629[5:0];
  assign _T_631 = ~ _T_630;
  assign _T_632 = _T_631[5:2];
  assign _T_633 = io_in_0_a_bits_opcode[2];
  assign _T_635 = _T_633 == 1'h0;
  assign _T_637 = _T_635 ? _T_632 : 4'h0;
  assign _T_642 = _T_640 == 4'h0;
  assign _T_643 = _T_642 & io_out_0_a_ready;
  assign _T_644 = {_T_557,_T_131};
  assign _GEN_39 = {{1'd0}, _T_644};
  assign _T_645 = _GEN_39 << 1;
  assign _T_646 = _T_645[1:0];
  assign _T_647 = _T_644 | _T_646;
  assign _GEN_40 = {{1'd0}, _T_647};
  assign _T_649 = _GEN_40 << 1;
  assign _T_650 = _T_649[1:0];
  assign _T_651 = ~ _T_650;
  assign _T_652 = _T_651[0];
  assign _T_653 = _T_651[1];
  assign _T_661 = _T_652 & _T_131;
  assign _T_662 = _T_653 & _T_557;
  assign _T_672 = _T_661 | _T_662;
  assign _T_676 = _T_661 == 1'h0;
  assign _T_681 = _T_662 == 1'h0;
  assign _T_682 = _T_676 | _T_681;
  assign _T_684 = _T_682 | reset;
  assign _T_686 = _T_684 == 1'h0;
  assign _T_687 = _T_131 | _T_557;
  assign _T_689 = _T_687 == 1'h0;
  assign _T_691 = _T_689 | _T_672;
  assign _T_692 = _T_691 | reset;
  assign _T_694 = _T_692 == 1'h0;
  assign _T_698 = _T_662 ? _T_637 : 4'h0;
  assign _T_700 = io_out_0_a_ready & io_out_0_a_valid;
  assign _GEN_41 = {{3'd0}, _T_700};
  assign _T_701 = _T_640 - _GEN_41;
  assign _T_702 = $unsigned(_T_701);
  assign _T_703 = _T_702[3:0];
  assign _T_704 = _T_643 ? _T_698 : _T_703;
  assign _T_733_0 = _T_642 ? _T_661 : _T_722_0;
  assign _T_733_1 = _T_642 ? _T_662 : _T_722_1;
  assign _T_741_0 = _T_642 ? _T_652 : _T_722_0;
  assign _T_741_1 = _T_642 ? _T_653 : _T_722_1;
  assign _T_749 = io_out_0_a_ready & _T_741_0;
  assign _T_750 = io_out_0_a_ready & _T_741_1;
  assign _T_754 = _T_722_0 ? _T_131 : 1'h0;
  assign _T_756 = _T_722_1 ? _T_557 : 1'h0;
  assign _T_757 = _T_754 | _T_756;
  assign _T_760 = _T_642 ? _T_687 : _T_757;
  assign _T_762 = {_T_119_0_bits_address,_T_625};
  assign _T_763 = {_T_762,_T_547};
  assign _T_764 = {_T_119_0_bits_size,_T_119_0_bits_source};
  assign _T_766 = {6'h0,_T_764};
  assign _T_767 = {_T_766,_T_763};
  assign _T_769 = _T_733_0 ? _T_767 : 78'h0;
  assign _T_770 = {io_in_0_a_bits_address,io_in_0_a_bits_mask};
  assign _T_771 = {_T_770,io_in_0_a_bits_data};
  assign _T_772 = {io_in_0_a_bits_size,io_in_0_a_bits_source};
  assign _T_773 = {_GEN_0,_GEN_1};
  assign _T_774 = {_T_773,_T_772};
  assign _T_775 = {_T_774,_T_771};
  assign _T_777 = _T_733_1 ? _T_775 : 78'h0;
  assign _T_778 = _T_769 | _T_777;
  assign _T_783 = _T_778[31:0];
  assign _T_784 = _T_778[35:32];
  assign _T_785 = _T_778[66:36];
  assign _T_786 = _T_778[68:67];
  assign _T_787 = _T_778[71:69];
  assign _T_789 = _T_778[77:75];
  assign _T_790 = _T_750 & _T_557;
  assign _T_793 = _T_790 & _T_559;
  assign _T_794 = io_in_0_a_bits_param[1:0];
  assign _GEN_42 = {{1'd0}, _T_794};
  assign _T_804 = 3'h3 == _GEN_42;
  assign _T_805 = _T_804 ? 4'hc : 4'h0;
  assign _T_806 = 3'h0 == _GEN_42;
  assign _T_807 = _T_806 ? 4'h6 : _T_805;
  assign _T_808 = 3'h1 == _GEN_42;
  assign _T_809 = _T_808 ? 4'he : _T_807;
  assign _T_810 = 3'h2 == _GEN_42;
  assign _T_811 = _T_810 ? 4'h8 : _T_809;
  assign _GEN_2 = _T_130 ? _T_214 : _T_119_0_fifoId;
  assign _GEN_3 = _T_130 ? io_in_0_a_bits_opcode : _T_119_0_bits_opcode;
  assign _GEN_4 = _T_130 ? io_in_0_a_bits_param : _T_119_0_bits_param;
  assign _GEN_5 = _T_130 ? io_in_0_a_bits_size : _T_119_0_bits_size;
  assign _GEN_6 = _T_130 ? io_in_0_a_bits_source : _T_119_0_bits_source;
  assign _GEN_7 = _T_130 ? io_in_0_a_bits_address : _T_119_0_bits_address;
  assign _GEN_8 = _T_130 ? io_in_0_a_bits_mask : _T_119_0_bits_mask;
  assign _GEN_9 = _T_130 ? io_in_0_a_bits_data : _T_119_0_bits_data;
  assign _GEN_10 = _T_130 ? _T_811 : _T_119_0_lut;
  assign _GEN_11 = _T_130 ? 2'h3 : _T_108_0_state;
  assign _GEN_12 = _T_793 ? _GEN_2 : _T_119_0_fifoId;
  assign _GEN_13 = _T_793 ? _GEN_3 : _T_119_0_bits_opcode;
  assign _GEN_14 = _T_793 ? _GEN_4 : _T_119_0_bits_param;
  assign _GEN_15 = _T_793 ? _GEN_5 : _T_119_0_bits_size;
  assign _GEN_16 = _T_793 ? _GEN_6 : _T_119_0_bits_source;
  assign _GEN_17 = _T_793 ? _GEN_7 : _T_119_0_bits_address;
  assign _GEN_18 = _T_793 ? _GEN_8 : _T_119_0_bits_mask;
  assign _GEN_19 = _T_793 ? _GEN_9 : _T_119_0_bits_data;
  assign _GEN_20 = _T_793 ? _GEN_10 : _T_119_0_lut;
  assign _GEN_21 = _T_793 ? _GEN_11 : _T_108_0_state;
  assign _T_812 = _T_749 & _T_131;
  assign _GEN_22 = _T_131 ? 2'h1 : _GEN_21;
  assign _GEN_23 = _T_812 ? _GEN_22 : _GEN_21;
  assign _T_813 = io_out_0_d_ready & io_out_0_d_valid;
  assign _T_816 = 13'h3f << io_out_0_d_bits_size;
  assign _T_817 = _T_816[5:0];
  assign _T_818 = ~ _T_817;
  assign _T_819 = _T_818[5:2];
  assign _T_820 = io_out_0_d_bits_opcode[0];
  assign _T_822 = _T_820 ? _T_819 : 4'h0;
  assign _T_827 = _T_825 - 4'h1;
  assign _T_828 = $unsigned(_T_827);
  assign _T_829 = _T_828[3:0];
  assign _T_831 = _T_825 == 4'h0;
  assign _T_840 = _T_831 ? _T_822 : _T_829;
  assign _GEN_24 = _T_813 ? _T_840 : _T_825;
  assign _T_841 = _T_119_0_bits_source == io_in_0_d_bits_source;
  assign _T_842 = _T_841 & _T_135;
  assign _T_847 = io_out_0_d_bits_opcode == 3'h1;
  assign _T_849 = io_out_0_d_bits_opcode == 3'h0;
  assign _T_851 = _T_813 & _T_831;
  assign _T_852 = _T_842 & _T_847;
  assign _GEN_25 = _T_852 ? io_out_0_d_bits_data : _T_126_0_data;
  assign _T_853 = _T_847 ? 2'h2 : 2'h0;
  assign _GEN_26 = _T_842 ? _T_853 : _GEN_23;
  assign _GEN_27 = _T_851 ? _GEN_25 : _T_126_0_data;
  assign _GEN_28 = _T_851 ? _GEN_26 : _GEN_23;
  assign _T_854 = _T_831 & _T_847;
  assign _T_855 = _T_854 & _T_842;
  assign _T_856 = _T_831 & _T_849;
  assign _T_857 = _T_856 & _T_842;
  assign _T_859 = _T_855 == 1'h0;
  assign _T_860 = io_out_0_d_valid & _T_859;
  assign _T_861 = io_in_0_d_ready | _T_855;
  assign _GEN_29 = _T_857 ? 3'h1 : io_out_0_d_bits_opcode;
  assign _GEN_30 = _T_857 ? _T_126_0_data : io_out_0_d_bits_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_108_0_state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_119_0_bits_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_119_0_bits_param = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_119_0_bits_size = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_119_0_bits_source = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_119_0_bits_address = _RAND_5[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_119_0_bits_mask = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_119_0_bits_data = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_119_0_fifoId = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_119_0_lut = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_126_0_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_640 = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_722_0 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_722_1 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_825 = _RAND_14[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_108_0_state <= 2'h0;
    end else begin
      if (_T_851) begin
        if (_T_842) begin
          if (_T_847) begin
            _T_108_0_state <= 2'h2;
          end else begin
            _T_108_0_state <= 2'h0;
          end
        end else begin
          if (_T_812) begin
            if (_T_131) begin
              _T_108_0_state <= 2'h1;
            end else begin
              if (_T_793) begin
                if (_T_130) begin
                  _T_108_0_state <= 2'h3;
                end
              end
            end
          end else begin
            if (_T_793) begin
              if (_T_130) begin
                _T_108_0_state <= 2'h3;
              end
            end
          end
        end
      end else begin
        if (_T_812) begin
          if (_T_131) begin
            _T_108_0_state <= 2'h1;
          end else begin
            if (_T_793) begin
              if (_T_130) begin
                _T_108_0_state <= 2'h3;
              end
            end
          end
        end else begin
          if (_T_793) begin
            if (_T_130) begin
              _T_108_0_state <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_opcode <= io_in_0_a_bits_opcode;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_param <= io_in_0_a_bits_param;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_size <= io_in_0_a_bits_size;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_source <= io_in_0_a_bits_source;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_address <= io_in_0_a_bits_address;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_mask <= io_in_0_a_bits_mask;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_bits_data <= io_in_0_a_bits_data;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        _T_119_0_fifoId <= _T_214;
      end
    end
    if (_T_793) begin
      if (_T_130) begin
        if (_T_810) begin
          _T_119_0_lut <= 4'h8;
        end else begin
          if (_T_808) begin
            _T_119_0_lut <= 4'he;
          end else begin
            if (_T_806) begin
              _T_119_0_lut <= 4'h6;
            end else begin
              if (_T_804) begin
                _T_119_0_lut <= 4'hc;
              end else begin
                _T_119_0_lut <= 4'h0;
              end
            end
          end
        end
      end
    end
    if (_T_851) begin
      if (_T_852) begin
        _T_126_0_data <= io_out_0_d_bits_data;
      end
    end
    if (reset) begin
      _T_640 <= 4'h0;
    end else begin
      if (_T_643) begin
        if (_T_662) begin
          if (_T_635) begin
            _T_640 <= _T_632;
          end else begin
            _T_640 <= 4'h0;
          end
        end else begin
          _T_640 <= 4'h0;
        end
      end else begin
        _T_640 <= _T_703;
      end
    end
    if (reset) begin
      _T_722_0 <= 1'h0;
    end else begin
      if (_T_642) begin
        _T_722_0 <= _T_661;
      end
    end
    if (reset) begin
      _T_722_1 <= 1'h0;
    end else begin
      if (_T_642) begin
        _T_722_1 <= _T_662;
      end
    end
    if (reset) begin
      _T_825 <= 4'h0;
    end else begin
      if (_T_813) begin
        if (_T_831) begin
          if (_T_820) begin
            _T_825 <= _T_819;
          end else begin
            _T_825 <= 4'h0;
          end
        end else begin
          _T_825 <= _T_829;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_686) begin
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
        if (_T_686) begin
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
        if (_T_694) begin
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
        if (_T_694) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
