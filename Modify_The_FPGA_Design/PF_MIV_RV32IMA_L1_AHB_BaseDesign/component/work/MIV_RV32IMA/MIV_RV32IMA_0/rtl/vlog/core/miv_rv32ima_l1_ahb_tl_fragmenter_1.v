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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_FRAGMENTER_1(
  input         clock,
  input         reset,
  output        io_in_2_a_ready,
  input         io_in_2_a_valid,
  input  [2:0]  io_in_2_a_bits_opcode,
  input  [2:0]  io_in_2_a_bits_size,
  input  [1:0]  io_in_2_a_bits_source,
  input  [11:0] io_in_2_a_bits_address,
  input  [3:0]  io_in_2_a_bits_mask,
  input  [31:0] io_in_2_a_bits_data,
  input         io_in_2_d_ready,
  output        io_in_2_d_valid,
  output [2:0]  io_in_2_d_bits_opcode,
  output [1:0]  io_in_2_d_bits_param,
  output [2:0]  io_in_2_d_bits_size,
  output [1:0]  io_in_2_d_bits_source,
  output        io_in_2_d_bits_sink,
  output [31:0] io_in_2_d_bits_data,
  output        io_in_2_d_bits_error,
  output        io_in_1_a_ready,
  input         io_in_1_a_valid,
  input  [2:0]  io_in_1_a_bits_opcode,
  input  [2:0]  io_in_1_a_bits_size,
  input  [1:0]  io_in_1_a_bits_source,
  input  [30:0] io_in_1_a_bits_address,
  input  [3:0]  io_in_1_a_bits_mask,
  input  [31:0] io_in_1_a_bits_data,
  input         io_in_1_d_ready,
  output        io_in_1_d_valid,
  output [2:0]  io_in_1_d_bits_opcode,
  output [1:0]  io_in_1_d_bits_param,
  output [2:0]  io_in_1_d_bits_size,
  output [1:0]  io_in_1_d_bits_source,
  output        io_in_1_d_bits_sink,
  output [31:0] io_in_1_d_bits_data,
  output        io_in_1_d_bits_error,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
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
  input         io_out_2_a_ready,
  output        io_out_2_a_valid,
  output [2:0]  io_out_2_a_bits_opcode,
  output [1:0]  io_out_2_a_bits_size,
  output [6:0]  io_out_2_a_bits_source,
  output [11:0] io_out_2_a_bits_address,
  output [3:0]  io_out_2_a_bits_mask,
  output [31:0] io_out_2_a_bits_data,
  output        io_out_2_d_ready,
  input         io_out_2_d_valid,
  input  [2:0]  io_out_2_d_bits_opcode,
  input  [1:0]  io_out_2_d_bits_param,
  input  [1:0]  io_out_2_d_bits_size,
  input  [6:0]  io_out_2_d_bits_source,
  input         io_out_2_d_bits_sink,
  input  [31:0] io_out_2_d_bits_data,
  input         io_out_2_d_bits_error,
  input         io_out_1_a_ready,
  output        io_out_1_a_valid,
  output [2:0]  io_out_1_a_bits_opcode,
  output [1:0]  io_out_1_a_bits_size,
  output [6:0]  io_out_1_a_bits_source,
  output [30:0] io_out_1_a_bits_address,
  output [3:0]  io_out_1_a_bits_mask,
  output [31:0] io_out_1_a_bits_data,
  output        io_out_1_d_ready,
  input         io_out_1_d_valid,
  input  [2:0]  io_out_1_d_bits_opcode,
  input  [1:0]  io_out_1_d_bits_param,
  input  [1:0]  io_out_1_d_bits_size,
  input  [6:0]  io_out_1_d_bits_source,
  input         io_out_1_d_bits_sink,
  input  [31:0] io_out_1_d_bits_data,
  input         io_out_1_d_bits_error,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [1:0]  io_out_0_a_bits_size,
  output [6:0]  io_out_0_a_bits_source,
  output [30:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [1:0]  io_out_0_d_bits_size,
  input  [6:0]  io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  reg [3:0] _T_266;
  reg [31:0] _RAND_0;
  reg [2:0] _T_268;
  reg [31:0] _RAND_1;
  reg  _T_271;
  reg [31:0] _RAND_2;
  wire [3:0] _T_272;
  wire  _T_274;
  wire  _T_276;
  wire [3:0] _T_279;
  wire [2:0] _T_280;
  wire [4:0] _T_283;
  wire [1:0] _T_284;
  wire [1:0] _T_285;
  wire  _T_286;
  wire  _T_302;
  wire  _T_303;
  wire [5:0] _GEN_24;
  wire [5:0] _T_304;
  wire [5:0] _GEN_25;
  wire [5:0] _T_305;
  wire [6:0] _GEN_26;
  wire [6:0] _T_306;
  wire [6:0] _T_308;
  wire [6:0] _T_310;
  wire [6:0] _T_311;
  wire [6:0] _T_312;
  wire [2:0] _T_313;
  wire [3:0] _T_314;
  wire  _T_316;
  wire [3:0] _GEN_27;
  wire [3:0] _T_317;
  wire [1:0] _T_318;
  wire [1:0] _T_319;
  wire  _T_321;
  wire [1:0] _T_322;
  wire  _T_323;
  wire [1:0] _T_324;
  wire [2:0] _T_325;
  wire  _T_326;
  wire [3:0] _GEN_28;
  wire [4:0] _T_327;
  wire [4:0] _T_328;
  wire [3:0] _T_329;
  wire [3:0] _T_330;
  wire  _T_331;
  wire [2:0] _GEN_0;
  wire  _GEN_1;
  wire [3:0] _GEN_2;
  wire [2:0] _GEN_3;
  wire  _GEN_4;
  wire  _T_333;
  wire  _T_335;
  wire  _T_336;
  wire  _T_337;
  wire  _T_339;
  wire  _T_340;
  wire [1:0] _T_341;
  reg  _T_345;
  reg [31:0] _RAND_3;
  wire  _T_346;
  wire  _T_349;
  wire  _GEN_5;
  wire  Repeater_clock;
  wire  Repeater_reset;
  wire  Repeater_io_repeat;
  wire  Repeater_io_full;
  wire  Repeater_io_enq_ready;
  wire  Repeater_io_enq_valid;
  wire [2:0] Repeater_io_enq_bits_opcode;
  wire [2:0] Repeater_io_enq_bits_size;
  wire [1:0] Repeater_io_enq_bits_source;
  wire [30:0] Repeater_io_enq_bits_address;
  wire [3:0] Repeater_io_enq_bits_mask;
  wire  Repeater_io_deq_ready;
  wire  Repeater_io_deq_valid;
  wire [2:0] Repeater_io_deq_bits_opcode;
  wire [2:0] Repeater_io_deq_bits_size;
  wire [1:0] Repeater_io_deq_bits_source;
  wire [30:0] Repeater_io_deq_bits_address;
  wire [3:0] Repeater_io_deq_bits_mask;
  wire  _T_386;
  wire [2:0] _T_387;
  wire [12:0] _T_390;
  wire [5:0] _T_391;
  wire [5:0] _T_392;
  wire [8:0] _T_395;
  wire [1:0] _T_396;
  wire [1:0] _T_397;
  wire  _T_398;
  wire  _T_400;
  reg [3:0] _T_405;
  reg [31:0] _RAND_4;
  wire  _T_407;
  wire [3:0] _T_408;
  wire [4:0] _T_410;
  wire [4:0] _T_411;
  wire [3:0] _T_412;
  wire [3:0] _T_413;
  wire [3:0] _T_414;
  wire [3:0] _T_417;
  reg  _T_426;
  reg [31:0] _RAND_5;
  wire  _GEN_6;
  wire  _T_429;
  wire  _T_430;
  wire [3:0] _GEN_7;
  wire  _T_432;
  wire  _T_434;
  wire  _T_435;
  wire [5:0] _GEN_29;
  wire [5:0] _T_436;
  wire [5:0] _T_437;
  wire [5:0] _T_438;
  wire [5:0] _GEN_30;
  wire [5:0] _T_439;
  wire [5:0] _T_441;
  wire [5:0] _T_442;
  wire [30:0] _GEN_31;
  wire [30:0] _T_443;
  wire [2:0] _T_444;
  wire [6:0] _T_445;
  wire  _T_447;
  wire  _T_450;
  wire  _T_451;
  wire  _T_453;
  wire  _T_457;
  wire  _T_458;
  wire  _T_459;
  wire  _T_461;
  wire [3:0] _T_462;
  reg [3:0] _T_471;
  reg [31:0] _RAND_6;
  reg [2:0] _T_473;
  reg [31:0] _RAND_7;
  reg  _T_476;
  reg [31:0] _RAND_8;
  wire [3:0] _T_477;
  wire  _T_479;
  wire  _T_481;
  wire [3:0] _T_484;
  wire [2:0] _T_485;
  wire [4:0] _T_488;
  wire [1:0] _T_489;
  wire [1:0] _T_490;
  wire  _T_491;
  wire  _T_507;
  wire  _T_508;
  wire [5:0] _GEN_32;
  wire [5:0] _T_509;
  wire [5:0] _GEN_33;
  wire [5:0] _T_510;
  wire [6:0] _GEN_34;
  wire [6:0] _T_511;
  wire [6:0] _T_513;
  wire [6:0] _T_515;
  wire [6:0] _T_516;
  wire [6:0] _T_517;
  wire [2:0] _T_518;
  wire [3:0] _T_519;
  wire  _T_521;
  wire [3:0] _GEN_35;
  wire [3:0] _T_522;
  wire [1:0] _T_523;
  wire [1:0] _T_524;
  wire  _T_526;
  wire [1:0] _T_527;
  wire  _T_528;
  wire [1:0] _T_529;
  wire [2:0] _T_530;
  wire  _T_531;
  wire [3:0] _GEN_36;
  wire [4:0] _T_532;
  wire [4:0] _T_533;
  wire [3:0] _T_534;
  wire [3:0] _T_535;
  wire  _T_536;
  wire [2:0] _GEN_8;
  wire  _GEN_9;
  wire [3:0] _GEN_10;
  wire [2:0] _GEN_11;
  wire  _GEN_12;
  wire  _T_538;
  wire  _T_540;
  wire  _T_541;
  wire  _T_542;
  wire  _T_544;
  wire  _T_545;
  wire [1:0] _T_546;
  reg  _T_550;
  reg [31:0] _RAND_9;
  wire  _T_551;
  wire  _T_554;
  wire  _GEN_13;
  wire  Repeater_1_clock;
  wire  Repeater_1_reset;
  wire  Repeater_1_io_repeat;
  wire  Repeater_1_io_full;
  wire  Repeater_1_io_enq_ready;
  wire  Repeater_1_io_enq_valid;
  wire [2:0] Repeater_1_io_enq_bits_opcode;
  wire [2:0] Repeater_1_io_enq_bits_size;
  wire [1:0] Repeater_1_io_enq_bits_source;
  wire [30:0] Repeater_1_io_enq_bits_address;
  wire [3:0] Repeater_1_io_enq_bits_mask;
  wire  Repeater_1_io_deq_ready;
  wire  Repeater_1_io_deq_valid;
  wire [2:0] Repeater_1_io_deq_bits_opcode;
  wire [2:0] Repeater_1_io_deq_bits_size;
  wire [1:0] Repeater_1_io_deq_bits_source;
  wire [30:0] Repeater_1_io_deq_bits_address;
  wire [3:0] Repeater_1_io_deq_bits_mask;
  wire  _T_591;
  wire [2:0] _T_592;
  wire [12:0] _T_595;
  wire [5:0] _T_596;
  wire [5:0] _T_597;
  wire [8:0] _T_600;
  wire [1:0] _T_601;
  wire [1:0] _T_602;
  wire  _T_603;
  wire  _T_605;
  reg [3:0] _T_610;
  reg [31:0] _RAND_10;
  wire  _T_612;
  wire [3:0] _T_613;
  wire [4:0] _T_615;
  wire [4:0] _T_616;
  wire [3:0] _T_617;
  wire [3:0] _T_618;
  wire [3:0] _T_619;
  wire [3:0] _T_622;
  reg  _T_631;
  reg [31:0] _RAND_11;
  wire  _GEN_14;
  wire  _T_634;
  wire  _T_635;
  wire [3:0] _GEN_15;
  wire  _T_637;
  wire  _T_639;
  wire  _T_640;
  wire [5:0] _GEN_37;
  wire [5:0] _T_641;
  wire [5:0] _T_642;
  wire [5:0] _T_643;
  wire [5:0] _GEN_38;
  wire [5:0] _T_644;
  wire [5:0] _T_646;
  wire [5:0] _T_647;
  wire [30:0] _GEN_39;
  wire [30:0] _T_648;
  wire [2:0] _T_649;
  wire [6:0] _T_650;
  wire  _T_652;
  wire  _T_655;
  wire  _T_656;
  wire  _T_658;
  wire  _T_662;
  wire  _T_663;
  wire  _T_664;
  wire  _T_666;
  wire [3:0] _T_667;
  reg [3:0] _T_676;
  reg [31:0] _RAND_12;
  reg [2:0] _T_678;
  reg [31:0] _RAND_13;
  reg  _T_681;
  reg [31:0] _RAND_14;
  wire [3:0] _T_682;
  wire  _T_684;
  wire  _T_686;
  wire [3:0] _T_689;
  wire [2:0] _T_690;
  wire [4:0] _T_693;
  wire [1:0] _T_694;
  wire [1:0] _T_695;
  wire  _T_696;
  wire  _T_712;
  wire  _T_713;
  wire [5:0] _GEN_40;
  wire [5:0] _T_714;
  wire [5:0] _GEN_41;
  wire [5:0] _T_715;
  wire [6:0] _GEN_42;
  wire [6:0] _T_716;
  wire [6:0] _T_718;
  wire [6:0] _T_720;
  wire [6:0] _T_721;
  wire [6:0] _T_722;
  wire [2:0] _T_723;
  wire [3:0] _T_724;
  wire  _T_726;
  wire [3:0] _GEN_43;
  wire [3:0] _T_727;
  wire [1:0] _T_728;
  wire [1:0] _T_729;
  wire  _T_731;
  wire [1:0] _T_732;
  wire  _T_733;
  wire [1:0] _T_734;
  wire [2:0] _T_735;
  wire  _T_736;
  wire [3:0] _GEN_44;
  wire [4:0] _T_737;
  wire [4:0] _T_738;
  wire [3:0] _T_739;
  wire [3:0] _T_740;
  wire  _T_741;
  wire [2:0] _GEN_16;
  wire  _GEN_17;
  wire [3:0] _GEN_18;
  wire [2:0] _GEN_19;
  wire  _GEN_20;
  wire  _T_743;
  wire  _T_745;
  wire  _T_746;
  wire  _T_747;
  wire  _T_749;
  wire  _T_750;
  wire [1:0] _T_751;
  reg  _T_755;
  reg [31:0] _RAND_15;
  wire  _T_756;
  wire  _T_759;
  wire  _GEN_21;
  wire  Repeater_2_clock;
  wire  Repeater_2_reset;
  wire  Repeater_2_io_repeat;
  wire  Repeater_2_io_full;
  wire  Repeater_2_io_enq_ready;
  wire  Repeater_2_io_enq_valid;
  wire [2:0] Repeater_2_io_enq_bits_opcode;
  wire [2:0] Repeater_2_io_enq_bits_size;
  wire [1:0] Repeater_2_io_enq_bits_source;
  wire [11:0] Repeater_2_io_enq_bits_address;
  wire [3:0] Repeater_2_io_enq_bits_mask;
  wire  Repeater_2_io_deq_ready;
  wire  Repeater_2_io_deq_valid;
  wire [2:0] Repeater_2_io_deq_bits_opcode;
  wire [2:0] Repeater_2_io_deq_bits_size;
  wire [1:0] Repeater_2_io_deq_bits_source;
  wire [11:0] Repeater_2_io_deq_bits_address;
  wire [3:0] Repeater_2_io_deq_bits_mask;
  wire  _T_796;
  wire [2:0] _T_797;
  wire [12:0] _T_800;
  wire [5:0] _T_801;
  wire [5:0] _T_802;
  wire [8:0] _T_805;
  wire [1:0] _T_806;
  wire [1:0] _T_807;
  wire  _T_808;
  wire  _T_810;
  reg [3:0] _T_815;
  reg [31:0] _RAND_16;
  wire  _T_817;
  wire [3:0] _T_818;
  wire [4:0] _T_820;
  wire [4:0] _T_821;
  wire [3:0] _T_822;
  wire [3:0] _T_823;
  wire [3:0] _T_824;
  wire [3:0] _T_827;
  reg  _T_836;
  reg [31:0] _RAND_17;
  wire  _GEN_22;
  wire  _T_839;
  wire  _T_840;
  wire [3:0] _GEN_23;
  wire  _T_842;
  wire  _T_844;
  wire  _T_845;
  wire [5:0] _GEN_45;
  wire [5:0] _T_846;
  wire [5:0] _T_847;
  wire [5:0] _T_848;
  wire [5:0] _GEN_46;
  wire [5:0] _T_849;
  wire [5:0] _T_851;
  wire [5:0] _T_852;
  wire [11:0] _GEN_47;
  wire [11:0] _T_853;
  wire [2:0] _T_854;
  wire [6:0] _T_855;
  wire  _T_857;
  wire  _T_860;
  wire  _T_861;
  wire  _T_863;
  wire  _T_867;
  wire  _T_868;
  wire  _T_869;
  wire  _T_871;
  wire [3:0] _T_872;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER (
    .clock(Repeater_clock),
    .reset(Repeater_reset),
    .io_repeat(Repeater_io_repeat),
    .io_full(Repeater_io_full),
    .io_enq_ready(Repeater_io_enq_ready),
    .io_enq_valid(Repeater_io_enq_valid),
    .io_enq_bits_opcode(Repeater_io_enq_bits_opcode),
    .io_enq_bits_size(Repeater_io_enq_bits_size),
    .io_enq_bits_source(Repeater_io_enq_bits_source),
    .io_enq_bits_address(Repeater_io_enq_bits_address),
    .io_enq_bits_mask(Repeater_io_enq_bits_mask),
    .io_deq_ready(Repeater_io_deq_ready),
    .io_deq_valid(Repeater_io_deq_valid),
    .io_deq_bits_opcode(Repeater_io_deq_bits_opcode),
    .io_deq_bits_size(Repeater_io_deq_bits_size),
    .io_deq_bits_source(Repeater_io_deq_bits_source),
    .io_deq_bits_address(Repeater_io_deq_bits_address),
    .io_deq_bits_mask(Repeater_io_deq_bits_mask)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER Repeater_1 (
    .clock(Repeater_1_clock),
    .reset(Repeater_1_reset),
    .io_repeat(Repeater_1_io_repeat),
    .io_full(Repeater_1_io_full),
    .io_enq_ready(Repeater_1_io_enq_ready),
    .io_enq_valid(Repeater_1_io_enq_valid),
    .io_enq_bits_opcode(Repeater_1_io_enq_bits_opcode),
    .io_enq_bits_size(Repeater_1_io_enq_bits_size),
    .io_enq_bits_source(Repeater_1_io_enq_bits_source),
    .io_enq_bits_address(Repeater_1_io_enq_bits_address),
    .io_enq_bits_mask(Repeater_1_io_enq_bits_mask),
    .io_deq_ready(Repeater_1_io_deq_ready),
    .io_deq_valid(Repeater_1_io_deq_valid),
    .io_deq_bits_opcode(Repeater_1_io_deq_bits_opcode),
    .io_deq_bits_size(Repeater_1_io_deq_bits_size),
    .io_deq_bits_source(Repeater_1_io_deq_bits_source),
    .io_deq_bits_address(Repeater_1_io_deq_bits_address),
    .io_deq_bits_mask(Repeater_1_io_deq_bits_mask)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER_2 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER_2 (
    .clock(Repeater_2_clock),
    .reset(Repeater_2_reset),
    .io_repeat(Repeater_2_io_repeat),
    .io_full(Repeater_2_io_full),
    .io_enq_ready(Repeater_2_io_enq_ready),
    .io_enq_valid(Repeater_2_io_enq_valid),
    .io_enq_bits_opcode(Repeater_2_io_enq_bits_opcode),
    .io_enq_bits_size(Repeater_2_io_enq_bits_size),
    .io_enq_bits_source(Repeater_2_io_enq_bits_source),
    .io_enq_bits_address(Repeater_2_io_enq_bits_address),
    .io_enq_bits_mask(Repeater_2_io_enq_bits_mask),
    .io_deq_ready(Repeater_2_io_deq_ready),
    .io_deq_valid(Repeater_2_io_deq_valid),
    .io_deq_bits_opcode(Repeater_2_io_deq_bits_opcode),
    .io_deq_bits_size(Repeater_2_io_deq_bits_size),
    .io_deq_bits_source(Repeater_2_io_deq_bits_source),
    .io_deq_bits_address(Repeater_2_io_deq_bits_address),
    .io_deq_bits_mask(Repeater_2_io_deq_bits_mask)
  );
  assign io_in_2_a_ready = Repeater_2_io_enq_ready;
  assign io_in_2_d_valid = _T_750;
  assign io_in_2_d_bits_opcode = io_out_2_d_bits_opcode;
  assign io_in_2_d_bits_param = io_out_2_d_bits_param;
  assign io_in_2_d_bits_size = _GEN_16;
  assign io_in_2_d_bits_source = _T_751;
  assign io_in_2_d_bits_sink = io_out_2_d_bits_sink;
  assign io_in_2_d_bits_data = io_out_2_d_bits_data;
  assign io_in_2_d_bits_error = _T_756;
  assign io_in_1_a_ready = Repeater_1_io_enq_ready;
  assign io_in_1_d_valid = _T_545;
  assign io_in_1_d_bits_opcode = io_out_1_d_bits_opcode;
  assign io_in_1_d_bits_param = io_out_1_d_bits_param;
  assign io_in_1_d_bits_size = _GEN_8;
  assign io_in_1_d_bits_source = _T_546;
  assign io_in_1_d_bits_sink = io_out_1_d_bits_sink;
  assign io_in_1_d_bits_data = io_out_1_d_bits_data;
  assign io_in_1_d_bits_error = _T_551;
  assign io_in_0_a_ready = Repeater_io_enq_ready;
  assign io_in_0_d_valid = _T_340;
  assign io_in_0_d_bits_opcode = io_out_0_d_bits_opcode;
  assign io_in_0_d_bits_param = io_out_0_d_bits_param;
  assign io_in_0_d_bits_size = _GEN_0;
  assign io_in_0_d_bits_source = _T_341;
  assign io_in_0_d_bits_sink = io_out_0_d_bits_sink;
  assign io_in_0_d_bits_data = io_out_0_d_bits_data;
  assign io_in_0_d_bits_error = _T_346;
  assign io_out_2_a_valid = Repeater_2_io_deq_valid;
  assign io_out_2_a_bits_opcode = Repeater_2_io_deq_bits_opcode;
  assign io_out_2_a_bits_size = _T_797[1:0];
  assign io_out_2_a_bits_source = _T_855;
  assign io_out_2_a_bits_address = _T_853;
  assign io_out_2_a_bits_mask = _T_872;
  assign io_out_2_a_bits_data = io_in_2_a_bits_data;
  assign io_out_2_d_ready = _T_747;
  assign io_out_1_a_valid = Repeater_1_io_deq_valid;
  assign io_out_1_a_bits_opcode = Repeater_1_io_deq_bits_opcode;
  assign io_out_1_a_bits_size = _T_592[1:0];
  assign io_out_1_a_bits_source = _T_650;
  assign io_out_1_a_bits_address = _T_648;
  assign io_out_1_a_bits_mask = _T_667;
  assign io_out_1_a_bits_data = io_in_1_a_bits_data;
  assign io_out_1_d_ready = _T_542;
  assign io_out_0_a_valid = Repeater_io_deq_valid;
  assign io_out_0_a_bits_opcode = Repeater_io_deq_bits_opcode;
  assign io_out_0_a_bits_size = _T_387[1:0];
  assign io_out_0_a_bits_source = _T_445;
  assign io_out_0_a_bits_address = _T_443;
  assign io_out_0_a_bits_mask = _T_462;
  assign io_out_0_a_bits_data = io_in_0_a_bits_data;
  assign io_out_0_d_ready = _T_337;
  assign _T_272 = io_out_0_d_bits_source[3:0];
  assign _T_274 = _T_266 == 4'h0;
  assign _T_276 = _T_272 == 4'h0;
  assign _T_279 = 4'h1 << io_out_0_d_bits_size;
  assign _T_280 = _T_279[2:0];
  assign _T_283 = 5'h3 << io_out_0_d_bits_size;
  assign _T_284 = _T_283[1:0];
  assign _T_285 = ~ _T_284;
  assign _T_286 = io_out_0_d_bits_opcode[0];
  assign _T_302 = _T_280[2:2];
  assign _T_303 = _T_286 ? 1'h1 : _T_302;
  assign _GEN_24 = {{2'd0}, _T_272};
  assign _T_304 = _GEN_24 << 2;
  assign _GEN_25 = {{4'd0}, _T_285};
  assign _T_305 = _T_304 | _GEN_25;
  assign _GEN_26 = {{1'd0}, _T_305};
  assign _T_306 = _GEN_26 << 1;
  assign _T_308 = _T_306 | 7'h1;
  assign _T_310 = {1'h0,_T_305};
  assign _T_311 = ~ _T_310;
  assign _T_312 = _T_308 & _T_311;
  assign _T_313 = _T_312[6:4];
  assign _T_314 = _T_312[3:0];
  assign _T_316 = _T_313 != 3'h0;
  assign _GEN_27 = {{1'd0}, _T_313};
  assign _T_317 = _GEN_27 | _T_314;
  assign _T_318 = _T_317[3:2];
  assign _T_319 = _T_317[1:0];
  assign _T_321 = _T_318 != 2'h0;
  assign _T_322 = _T_318 | _T_319;
  assign _T_323 = _T_322[1];
  assign _T_324 = {_T_321,_T_323};
  assign _T_325 = {_T_316,_T_324};
  assign _T_326 = io_out_0_d_ready & io_out_0_d_valid;
  assign _GEN_28 = {{3'd0}, _T_303};
  assign _T_327 = _T_266 - _GEN_28;
  assign _T_328 = $unsigned(_T_327);
  assign _T_329 = _T_328[3:0];
  assign _T_330 = _T_274 ? _T_272 : _T_329;
  assign _T_331 = io_out_0_d_bits_source[4];
  assign _GEN_0 = _T_274 ? _T_325 : _T_268;
  assign _GEN_1 = _T_274 ? _T_331 : _T_271;
  assign _GEN_2 = _T_326 ? _T_330 : _T_266;
  assign _GEN_3 = _T_326 ? _GEN_0 : _T_268;
  assign _GEN_4 = _T_326 ? _GEN_1 : _T_271;
  assign _T_333 = _T_286 == 1'h0;
  assign _T_335 = _T_276 == 1'h0;
  assign _T_336 = _T_333 & _T_335;
  assign _T_337 = io_in_0_d_ready | _T_336;
  assign _T_339 = _T_336 == 1'h0;
  assign _T_340 = io_out_0_d_valid & _T_339;
  assign _T_341 = io_out_0_d_bits_source[6:5];
  assign _T_346 = _T_345 | io_out_0_d_bits_error;
  assign _T_349 = _T_336 ? _T_346 : 1'h0;
  assign _GEN_5 = _T_326 ? _T_349 : _T_345;
  assign Repeater_clock = clock;
  assign Repeater_reset = reset;
  assign Repeater_io_repeat = _T_435;
  assign Repeater_io_enq_valid = io_in_0_a_valid;
  assign Repeater_io_enq_bits_opcode = io_in_0_a_bits_opcode;
  assign Repeater_io_enq_bits_size = io_in_0_a_bits_size;
  assign Repeater_io_enq_bits_source = io_in_0_a_bits_source;
  assign Repeater_io_enq_bits_address = io_in_0_a_bits_address;
  assign Repeater_io_enq_bits_mask = io_in_0_a_bits_mask;
  assign Repeater_io_deq_ready = io_out_0_a_ready;
  assign _T_386 = Repeater_io_deq_bits_size > 3'h2;
  assign _T_387 = _T_386 ? 3'h2 : Repeater_io_deq_bits_size;
  assign _T_390 = 13'h3f << Repeater_io_deq_bits_size;
  assign _T_391 = _T_390[5:0];
  assign _T_392 = ~ _T_391;
  assign _T_395 = 9'h3 << _T_387;
  assign _T_396 = _T_395[1:0];
  assign _T_397 = ~ _T_396;
  assign _T_398 = Repeater_io_deq_bits_opcode[2];
  assign _T_400 = _T_398 == 1'h0;
  assign _T_407 = _T_405 == 4'h0;
  assign _T_408 = _T_392[5:2];
  assign _T_410 = _T_405 - 4'h1;
  assign _T_411 = $unsigned(_T_410);
  assign _T_412 = _T_411[3:0];
  assign _T_413 = _T_407 ? _T_408 : _T_412;
  assign _T_414 = ~ _T_413;
  assign _T_417 = ~ _T_414;
  assign _GEN_6 = _T_407 ? _T_271 : _T_426;
  assign _T_429 = _GEN_6 == 1'h0;
  assign _T_430 = io_out_0_a_ready & io_out_0_a_valid;
  assign _GEN_7 = _T_430 ? _T_417 : _T_405;
  assign _T_432 = _T_400 == 1'h0;
  assign _T_434 = _T_417 != 4'h0;
  assign _T_435 = _T_432 & _T_434;
  assign _GEN_29 = {{2'd0}, _T_413};
  assign _T_436 = _GEN_29 << 2;
  assign _T_437 = ~ _T_392;
  assign _T_438 = _T_436 | _T_437;
  assign _GEN_30 = {{4'd0}, _T_397};
  assign _T_439 = _T_438 | _GEN_30;
  assign _T_441 = _T_439 | 6'h3;
  assign _T_442 = ~ _T_441;
  assign _GEN_31 = {{25'd0}, _T_442};
  assign _T_443 = Repeater_io_deq_bits_address | _GEN_31;
  assign _T_444 = {Repeater_io_deq_bits_source,_T_429};
  assign _T_445 = {_T_444,_T_417};
  assign _T_447 = Repeater_io_full == 1'h0;
  assign _T_450 = _T_447 | _T_432;
  assign _T_451 = _T_450 | reset;
  assign _T_453 = _T_451 == 1'h0;
  assign _T_457 = Repeater_io_deq_bits_mask == 4'hf;
  assign _T_458 = _T_447 | _T_457;
  assign _T_459 = _T_458 | reset;
  assign _T_461 = _T_459 == 1'h0;
  assign _T_462 = Repeater_io_full ? 4'hf : io_in_0_a_bits_mask;
  assign _T_477 = io_out_1_d_bits_source[3:0];
  assign _T_479 = _T_471 == 4'h0;
  assign _T_481 = _T_477 == 4'h0;
  assign _T_484 = 4'h1 << io_out_1_d_bits_size;
  assign _T_485 = _T_484[2:0];
  assign _T_488 = 5'h3 << io_out_1_d_bits_size;
  assign _T_489 = _T_488[1:0];
  assign _T_490 = ~ _T_489;
  assign _T_491 = io_out_1_d_bits_opcode[0];
  assign _T_507 = _T_485[2:2];
  assign _T_508 = _T_491 ? 1'h1 : _T_507;
  assign _GEN_32 = {{2'd0}, _T_477};
  assign _T_509 = _GEN_32 << 2;
  assign _GEN_33 = {{4'd0}, _T_490};
  assign _T_510 = _T_509 | _GEN_33;
  assign _GEN_34 = {{1'd0}, _T_510};
  assign _T_511 = _GEN_34 << 1;
  assign _T_513 = _T_511 | 7'h1;
  assign _T_515 = {1'h0,_T_510};
  assign _T_516 = ~ _T_515;
  assign _T_517 = _T_513 & _T_516;
  assign _T_518 = _T_517[6:4];
  assign _T_519 = _T_517[3:0];
  assign _T_521 = _T_518 != 3'h0;
  assign _GEN_35 = {{1'd0}, _T_518};
  assign _T_522 = _GEN_35 | _T_519;
  assign _T_523 = _T_522[3:2];
  assign _T_524 = _T_522[1:0];
  assign _T_526 = _T_523 != 2'h0;
  assign _T_527 = _T_523 | _T_524;
  assign _T_528 = _T_527[1];
  assign _T_529 = {_T_526,_T_528};
  assign _T_530 = {_T_521,_T_529};
  assign _T_531 = io_out_1_d_ready & io_out_1_d_valid;
  assign _GEN_36 = {{3'd0}, _T_508};
  assign _T_532 = _T_471 - _GEN_36;
  assign _T_533 = $unsigned(_T_532);
  assign _T_534 = _T_533[3:0];
  assign _T_535 = _T_479 ? _T_477 : _T_534;
  assign _T_536 = io_out_1_d_bits_source[4];
  assign _GEN_8 = _T_479 ? _T_530 : _T_473;
  assign _GEN_9 = _T_479 ? _T_536 : _T_476;
  assign _GEN_10 = _T_531 ? _T_535 : _T_471;
  assign _GEN_11 = _T_531 ? _GEN_8 : _T_473;
  assign _GEN_12 = _T_531 ? _GEN_9 : _T_476;
  assign _T_538 = _T_491 == 1'h0;
  assign _T_540 = _T_481 == 1'h0;
  assign _T_541 = _T_538 & _T_540;
  assign _T_542 = io_in_1_d_ready | _T_541;
  assign _T_544 = _T_541 == 1'h0;
  assign _T_545 = io_out_1_d_valid & _T_544;
  assign _T_546 = io_out_1_d_bits_source[6:5];
  assign _T_551 = _T_550 | io_out_1_d_bits_error;
  assign _T_554 = _T_541 ? _T_551 : 1'h0;
  assign _GEN_13 = _T_531 ? _T_554 : _T_550;
  assign Repeater_1_clock = clock;
  assign Repeater_1_reset = reset;
  assign Repeater_1_io_repeat = _T_640;
  assign Repeater_1_io_enq_valid = io_in_1_a_valid;
  assign Repeater_1_io_enq_bits_opcode = io_in_1_a_bits_opcode;
  assign Repeater_1_io_enq_bits_size = io_in_1_a_bits_size;
  assign Repeater_1_io_enq_bits_source = io_in_1_a_bits_source;
  assign Repeater_1_io_enq_bits_address = io_in_1_a_bits_address;
  assign Repeater_1_io_enq_bits_mask = io_in_1_a_bits_mask;
  assign Repeater_1_io_deq_ready = io_out_1_a_ready;
  assign _T_591 = Repeater_1_io_deq_bits_size > 3'h2;
  assign _T_592 = _T_591 ? 3'h2 : Repeater_1_io_deq_bits_size;
  assign _T_595 = 13'h3f << Repeater_1_io_deq_bits_size;
  assign _T_596 = _T_595[5:0];
  assign _T_597 = ~ _T_596;
  assign _T_600 = 9'h3 << _T_592;
  assign _T_601 = _T_600[1:0];
  assign _T_602 = ~ _T_601;
  assign _T_603 = Repeater_1_io_deq_bits_opcode[2];
  assign _T_605 = _T_603 == 1'h0;
  assign _T_612 = _T_610 == 4'h0;
  assign _T_613 = _T_597[5:2];
  assign _T_615 = _T_610 - 4'h1;
  assign _T_616 = $unsigned(_T_615);
  assign _T_617 = _T_616[3:0];
  assign _T_618 = _T_612 ? _T_613 : _T_617;
  assign _T_619 = ~ _T_618;
  assign _T_622 = ~ _T_619;
  assign _GEN_14 = _T_612 ? _T_476 : _T_631;
  assign _T_634 = _GEN_14 == 1'h0;
  assign _T_635 = io_out_1_a_ready & io_out_1_a_valid;
  assign _GEN_15 = _T_635 ? _T_622 : _T_610;
  assign _T_637 = _T_605 == 1'h0;
  assign _T_639 = _T_622 != 4'h0;
  assign _T_640 = _T_637 & _T_639;
  assign _GEN_37 = {{2'd0}, _T_618};
  assign _T_641 = _GEN_37 << 2;
  assign _T_642 = ~ _T_597;
  assign _T_643 = _T_641 | _T_642;
  assign _GEN_38 = {{4'd0}, _T_602};
  assign _T_644 = _T_643 | _GEN_38;
  assign _T_646 = _T_644 | 6'h3;
  assign _T_647 = ~ _T_646;
  assign _GEN_39 = {{25'd0}, _T_647};
  assign _T_648 = Repeater_1_io_deq_bits_address | _GEN_39;
  assign _T_649 = {Repeater_1_io_deq_bits_source,_T_634};
  assign _T_650 = {_T_649,_T_622};
  assign _T_652 = Repeater_1_io_full == 1'h0;
  assign _T_655 = _T_652 | _T_637;
  assign _T_656 = _T_655 | reset;
  assign _T_658 = _T_656 == 1'h0;
  assign _T_662 = Repeater_1_io_deq_bits_mask == 4'hf;
  assign _T_663 = _T_652 | _T_662;
  assign _T_664 = _T_663 | reset;
  assign _T_666 = _T_664 == 1'h0;
  assign _T_667 = Repeater_1_io_full ? 4'hf : io_in_1_a_bits_mask;
  assign _T_682 = io_out_2_d_bits_source[3:0];
  assign _T_684 = _T_676 == 4'h0;
  assign _T_686 = _T_682 == 4'h0;
  assign _T_689 = 4'h1 << io_out_2_d_bits_size;
  assign _T_690 = _T_689[2:0];
  assign _T_693 = 5'h3 << io_out_2_d_bits_size;
  assign _T_694 = _T_693[1:0];
  assign _T_695 = ~ _T_694;
  assign _T_696 = io_out_2_d_bits_opcode[0];
  assign _T_712 = _T_690[2:2];
  assign _T_713 = _T_696 ? 1'h1 : _T_712;
  assign _GEN_40 = {{2'd0}, _T_682};
  assign _T_714 = _GEN_40 << 2;
  assign _GEN_41 = {{4'd0}, _T_695};
  assign _T_715 = _T_714 | _GEN_41;
  assign _GEN_42 = {{1'd0}, _T_715};
  assign _T_716 = _GEN_42 << 1;
  assign _T_718 = _T_716 | 7'h1;
  assign _T_720 = {1'h0,_T_715};
  assign _T_721 = ~ _T_720;
  assign _T_722 = _T_718 & _T_721;
  assign _T_723 = _T_722[6:4];
  assign _T_724 = _T_722[3:0];
  assign _T_726 = _T_723 != 3'h0;
  assign _GEN_43 = {{1'd0}, _T_723};
  assign _T_727 = _GEN_43 | _T_724;
  assign _T_728 = _T_727[3:2];
  assign _T_729 = _T_727[1:0];
  assign _T_731 = _T_728 != 2'h0;
  assign _T_732 = _T_728 | _T_729;
  assign _T_733 = _T_732[1];
  assign _T_734 = {_T_731,_T_733};
  assign _T_735 = {_T_726,_T_734};
  assign _T_736 = io_out_2_d_ready & io_out_2_d_valid;
  assign _GEN_44 = {{3'd0}, _T_713};
  assign _T_737 = _T_676 - _GEN_44;
  assign _T_738 = $unsigned(_T_737);
  assign _T_739 = _T_738[3:0];
  assign _T_740 = _T_684 ? _T_682 : _T_739;
  assign _T_741 = io_out_2_d_bits_source[4];
  assign _GEN_16 = _T_684 ? _T_735 : _T_678;
  assign _GEN_17 = _T_684 ? _T_741 : _T_681;
  assign _GEN_18 = _T_736 ? _T_740 : _T_676;
  assign _GEN_19 = _T_736 ? _GEN_16 : _T_678;
  assign _GEN_20 = _T_736 ? _GEN_17 : _T_681;
  assign _T_743 = _T_696 == 1'h0;
  assign _T_745 = _T_686 == 1'h0;
  assign _T_746 = _T_743 & _T_745;
  assign _T_747 = io_in_2_d_ready | _T_746;
  assign _T_749 = _T_746 == 1'h0;
  assign _T_750 = io_out_2_d_valid & _T_749;
  assign _T_751 = io_out_2_d_bits_source[6:5];
  assign _T_756 = _T_755 | io_out_2_d_bits_error;
  assign _T_759 = _T_746 ? _T_756 : 1'h0;
  assign _GEN_21 = _T_736 ? _T_759 : _T_755;
  assign Repeater_2_clock = clock;
  assign Repeater_2_reset = reset;
  assign Repeater_2_io_repeat = _T_845;
  assign Repeater_2_io_enq_valid = io_in_2_a_valid;
  assign Repeater_2_io_enq_bits_opcode = io_in_2_a_bits_opcode;
  assign Repeater_2_io_enq_bits_size = io_in_2_a_bits_size;
  assign Repeater_2_io_enq_bits_source = io_in_2_a_bits_source;
  assign Repeater_2_io_enq_bits_address = io_in_2_a_bits_address;
  assign Repeater_2_io_enq_bits_mask = io_in_2_a_bits_mask;
  assign Repeater_2_io_deq_ready = io_out_2_a_ready;
  assign _T_796 = Repeater_2_io_deq_bits_size > 3'h2;
  assign _T_797 = _T_796 ? 3'h2 : Repeater_2_io_deq_bits_size;
  assign _T_800 = 13'h3f << Repeater_2_io_deq_bits_size;
  assign _T_801 = _T_800[5:0];
  assign _T_802 = ~ _T_801;
  assign _T_805 = 9'h3 << _T_797;
  assign _T_806 = _T_805[1:0];
  assign _T_807 = ~ _T_806;
  assign _T_808 = Repeater_2_io_deq_bits_opcode[2];
  assign _T_810 = _T_808 == 1'h0;
  assign _T_817 = _T_815 == 4'h0;
  assign _T_818 = _T_802[5:2];
  assign _T_820 = _T_815 - 4'h1;
  assign _T_821 = $unsigned(_T_820);
  assign _T_822 = _T_821[3:0];
  assign _T_823 = _T_817 ? _T_818 : _T_822;
  assign _T_824 = ~ _T_823;
  assign _T_827 = ~ _T_824;
  assign _GEN_22 = _T_817 ? _T_681 : _T_836;
  assign _T_839 = _GEN_22 == 1'h0;
  assign _T_840 = io_out_2_a_ready & io_out_2_a_valid;
  assign _GEN_23 = _T_840 ? _T_827 : _T_815;
  assign _T_842 = _T_810 == 1'h0;
  assign _T_844 = _T_827 != 4'h0;
  assign _T_845 = _T_842 & _T_844;
  assign _GEN_45 = {{2'd0}, _T_823};
  assign _T_846 = _GEN_45 << 2;
  assign _T_847 = ~ _T_802;
  assign _T_848 = _T_846 | _T_847;
  assign _GEN_46 = {{4'd0}, _T_807};
  assign _T_849 = _T_848 | _GEN_46;
  assign _T_851 = _T_849 | 6'h3;
  assign _T_852 = ~ _T_851;
  assign _GEN_47 = {{6'd0}, _T_852};
  assign _T_853 = Repeater_2_io_deq_bits_address | _GEN_47;
  assign _T_854 = {Repeater_2_io_deq_bits_source,_T_839};
  assign _T_855 = {_T_854,_T_827};
  assign _T_857 = Repeater_2_io_full == 1'h0;
  assign _T_860 = _T_857 | _T_842;
  assign _T_861 = _T_860 | reset;
  assign _T_863 = _T_861 == 1'h0;
  assign _T_867 = Repeater_2_io_deq_bits_mask == 4'hf;
  assign _T_868 = _T_857 | _T_867;
  assign _T_869 = _T_868 | reset;
  assign _T_871 = _T_869 == 1'h0;
  assign _T_872 = Repeater_2_io_full ? 4'hf : io_in_2_a_bits_mask;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_266 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_268 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_271 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_345 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_405 = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_426 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_471 = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_473 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_476 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_550 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_610 = _RAND_10[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_631 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_676 = _RAND_12[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_678 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_681 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_755 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_815 = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_836 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_266 <= 4'h0;
    end else begin
      if (_T_326) begin
        if (_T_274) begin
          _T_266 <= _T_272;
        end else begin
          _T_266 <= _T_329;
        end
      end
    end
    if (_T_326) begin
      if (_T_274) begin
        _T_268 <= _T_325;
      end
    end
    if (reset) begin
      _T_271 <= 1'h0;
    end else begin
      if (_T_326) begin
        if (_T_274) begin
          _T_271 <= _T_331;
        end
      end
    end
    if (reset) begin
      _T_345 <= 1'h0;
    end else begin
      if (_T_326) begin
        if (_T_336) begin
          _T_345 <= _T_346;
        end else begin
          _T_345 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_405 <= 4'h0;
    end else begin
      if (_T_430) begin
        _T_405 <= _T_417;
      end
    end
    if (_T_407) begin
      _T_426 <= _T_271;
    end
    if (reset) begin
      _T_471 <= 4'h0;
    end else begin
      if (_T_531) begin
        if (_T_479) begin
          _T_471 <= _T_477;
        end else begin
          _T_471 <= _T_534;
        end
      end
    end
    if (_T_531) begin
      if (_T_479) begin
        _T_473 <= _T_530;
      end
    end
    if (reset) begin
      _T_476 <= 1'h0;
    end else begin
      if (_T_531) begin
        if (_T_479) begin
          _T_476 <= _T_536;
        end
      end
    end
    if (reset) begin
      _T_550 <= 1'h0;
    end else begin
      if (_T_531) begin
        if (_T_541) begin
          _T_550 <= _T_551;
        end else begin
          _T_550 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_610 <= 4'h0;
    end else begin
      if (_T_635) begin
        _T_610 <= _T_622;
      end
    end
    if (_T_612) begin
      _T_631 <= _T_476;
    end
    if (reset) begin
      _T_676 <= 4'h0;
    end else begin
      if (_T_736) begin
        if (_T_684) begin
          _T_676 <= _T_682;
        end else begin
          _T_676 <= _T_739;
        end
      end
    end
    if (_T_736) begin
      if (_T_684) begin
        _T_678 <= _T_735;
      end
    end
    if (reset) begin
      _T_681 <= 1'h0;
    end else begin
      if (_T_736) begin
        if (_T_684) begin
          _T_681 <= _T_741;
        end
      end
    end
    if (reset) begin
      _T_755 <= 1'h0;
    end else begin
      if (_T_736) begin
        if (_T_746) begin
          _T_755 <= _T_756;
        end else begin
          _T_755 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_815 <= 4'h0;
    end else begin
      if (_T_840) begin
        _T_815 <= _T_827;
      end
    end
    if (_T_817) begin
      _T_836 <= _T_681;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:174 assert (!out.d.valid || (acknum_fragment & acknum_size) === UInt(0))\n");
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
        if (_T_453) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:273 assert (!repeater.io.full || !aHasData)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_453) begin
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
        if (_T_461) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:276 assert (!repeater.io.full || in_a.bits.mask === fullMask)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_461) begin
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
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:174 assert (!out.d.valid || (acknum_fragment & acknum_size) === UInt(0))\n");
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
        if (_T_658) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:273 assert (!repeater.io.full || !aHasData)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_658) begin
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
        if (_T_666) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:276 assert (!repeater.io.full || in_a.bits.mask === fullMask)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_666) begin
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
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:174 assert (!out.d.valid || (acknum_fragment & acknum_size) === UInt(0))\n");
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
        if (_T_863) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:273 assert (!repeater.io.full || !aHasData)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_863) begin
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
        if (_T_871) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:276 assert (!repeater.io.full || in_a.bits.mask === fullMask)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_871) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
