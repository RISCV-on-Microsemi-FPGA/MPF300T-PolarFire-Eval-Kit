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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_D_CACHE_DCACHE(
  input         clock,
  input         reset,
  output        io_cpu_req_ready,
  input         io_cpu_req_valid,
  input  [31:0] io_cpu_req_bits_addr,
  input  [5:0]  io_cpu_req_bits_tag,
  input  [4:0]  io_cpu_req_bits_cmd,
  input  [2:0]  io_cpu_req_bits_typ,
  input         io_cpu_req_bits_phys,
  input         io_cpu_s1_kill,
  input  [31:0] io_cpu_s1_data_data,
  input  [3:0]  io_cpu_s1_data_mask,
  output        io_cpu_s2_nack,
  output        io_cpu_resp_valid,
  output [5:0]  io_cpu_resp_bits_tag,
  output [31:0] io_cpu_resp_bits_data,
  output        io_cpu_resp_bits_replay,
  output        io_cpu_resp_bits_has_data,
  output [31:0] io_cpu_resp_bits_data_word_bypass,
  output        io_cpu_replay_next,
  output        io_cpu_s2_xcpt_ma_ld,
  output        io_cpu_s2_xcpt_ma_st,
  output        io_cpu_s2_xcpt_pf_ld,
  output        io_cpu_s2_xcpt_pf_st,
  output        io_cpu_s2_xcpt_ae_ld,
  output        io_cpu_s2_xcpt_ae_st,
  input         io_cpu_invalidate_lr,
  output        io_cpu_ordered,
  output        io_ptw_req_valid,
  output [19:0] io_ptw_req_bits_addr,
  input         io_ptw_resp_valid,
  input  [1:0]  io_ptw_status_dprv,
  input         io_ptw_status_mxr,
  input         io_ptw_status_sum,
  input         io_mem_0_a_ready,
  output        io_mem_0_a_valid,
  output [2:0]  io_mem_0_a_bits_opcode,
  output [2:0]  io_mem_0_a_bits_param,
  output [3:0]  io_mem_0_a_bits_size,
  output        io_mem_0_a_bits_source,
  output [31:0] io_mem_0_a_bits_address,
  output [3:0]  io_mem_0_a_bits_mask,
  output [31:0] io_mem_0_a_bits_data,
  output        io_mem_0_b_ready,
  input         io_mem_0_b_valid,
  input  [1:0]  io_mem_0_b_bits_param,
  input  [3:0]  io_mem_0_b_bits_size,
  input         io_mem_0_b_bits_source,
  input  [31:0] io_mem_0_b_bits_address,
  input         io_mem_0_c_ready,
  output        io_mem_0_c_valid,
  output [2:0]  io_mem_0_c_bits_opcode,
  output [2:0]  io_mem_0_c_bits_param,
  output [3:0]  io_mem_0_c_bits_size,
  output        io_mem_0_c_bits_source,
  output [31:0] io_mem_0_c_bits_address,
  output [31:0] io_mem_0_c_bits_data,
  output        io_mem_0_d_ready,
  input         io_mem_0_d_valid,
  input  [2:0]  io_mem_0_d_bits_opcode,
  input  [1:0]  io_mem_0_d_bits_param,
  input  [3:0]  io_mem_0_d_bits_size,
  input         io_mem_0_d_bits_source,
  input  [1:0]  io_mem_0_d_bits_sink,
  input  [31:0] io_mem_0_d_bits_data,
  input         io_mem_0_e_ready,
  output        io_mem_0_e_valid,
  output [1:0]  io_mem_0_e_bits_sink
);
  wire  metaArb_io_in_0_valid;
  wire  metaArb_io_in_0_bits_write;
  wire [31:0] metaArb_io_in_0_bits_addr;
  wire [1:0] metaArb_io_in_0_bits_data_coh_state;
  wire [18:0] metaArb_io_in_0_bits_data_tag;
  wire  metaArb_io_in_1_valid;
  wire  metaArb_io_in_1_bits_write;
  wire [31:0] metaArb_io_in_1_bits_addr;
  wire [1:0] metaArb_io_in_1_bits_data_coh_state;
  wire [18:0] metaArb_io_in_1_bits_data_tag;
  wire  metaArb_io_in_2_valid;
  wire  metaArb_io_in_2_bits_write;
  wire [31:0] metaArb_io_in_2_bits_addr;
  wire [1:0] metaArb_io_in_2_bits_data_coh_state;
  wire [18:0] metaArb_io_in_2_bits_data_tag;
  wire  metaArb_io_in_3_ready;
  wire  metaArb_io_in_3_valid;
  wire  metaArb_io_in_3_bits_write;
  wire [31:0] metaArb_io_in_3_bits_addr;
  wire [1:0] metaArb_io_in_3_bits_data_coh_state;
  wire [18:0] metaArb_io_in_3_bits_data_tag;
  wire  metaArb_io_in_4_ready;
  wire  metaArb_io_in_4_valid;
  wire  metaArb_io_in_4_bits_write;
  wire [31:0] metaArb_io_in_4_bits_addr;
  wire [1:0] metaArb_io_in_4_bits_data_coh_state;
  wire [18:0] metaArb_io_in_4_bits_data_tag;
  wire  metaArb_io_in_5_ready;
  wire  metaArb_io_in_5_valid;
  wire  metaArb_io_in_5_bits_write;
  wire [31:0] metaArb_io_in_5_bits_addr;
  wire [1:0] metaArb_io_in_5_bits_data_coh_state;
  wire [18:0] metaArb_io_in_5_bits_data_tag;
  wire  metaArb_io_in_6_ready;
  wire  metaArb_io_in_6_valid;
  wire  metaArb_io_in_6_bits_write;
  wire [31:0] metaArb_io_in_6_bits_addr;
  wire [1:0] metaArb_io_in_6_bits_data_coh_state;
  wire [18:0] metaArb_io_in_6_bits_data_tag;
  wire  metaArb_io_in_7_ready;
  wire  metaArb_io_in_7_valid;
  wire  metaArb_io_in_7_bits_write;
  wire [31:0] metaArb_io_in_7_bits_addr;
  wire [1:0] metaArb_io_in_7_bits_data_coh_state;
  wire [18:0] metaArb_io_in_7_bits_data_tag;
  wire  metaArb_io_out_ready;
  wire  metaArb_io_out_valid;
  wire  metaArb_io_out_bits_write;
  wire [31:0] metaArb_io_out_bits_addr;
  wire [1:0] metaArb_io_out_bits_data_coh_state;
  wire [18:0] metaArb_io_out_bits_data_tag;
  reg [20:0] tag_array_0 [0:127];
  reg [31:0] _RAND_0;
  wire [20:0] tag_array_0_s1_meta_data;
  wire [6:0] tag_array_0_s1_meta_addr;
  wire [20:0] tag_array_0__T_405_data;
  wire [6:0] tag_array_0__T_405_addr;
  wire  tag_array_0__T_405_mask;
  wire  tag_array_0__T_405_en;
  wire  _GEN_243;
  reg [6:0] tag_array_0_s1_meta_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  data_clock;
  wire  data_io_req_valid;
  wire [12:0] data_io_req_bits_addr;
  wire  data_io_req_bits_write;
  wire [31:0] data_io_req_bits_wdata;
  wire [3:0] data_io_req_bits_eccMask;
  wire [31:0] data_io_resp_0;
  wire  dataArb_io_in_0_valid;
  wire [12:0] dataArb_io_in_0_bits_addr;
  wire  dataArb_io_in_0_bits_write;
  wire [31:0] dataArb_io_in_0_bits_wdata;
  wire [3:0] dataArb_io_in_0_bits_eccMask;
  wire  dataArb_io_in_1_ready;
  wire  dataArb_io_in_1_valid;
  wire [12:0] dataArb_io_in_1_bits_addr;
  wire  dataArb_io_in_1_bits_write;
  wire [31:0] dataArb_io_in_1_bits_wdata;
  wire [3:0] dataArb_io_in_1_bits_eccMask;
  wire  dataArb_io_in_2_ready;
  wire  dataArb_io_in_2_valid;
  wire [12:0] dataArb_io_in_2_bits_addr;
  wire  dataArb_io_in_2_bits_write;
  wire [31:0] dataArb_io_in_2_bits_wdata;
  wire [3:0] dataArb_io_in_2_bits_eccMask;
  wire  dataArb_io_in_3_ready;
  wire  dataArb_io_in_3_valid;
  wire [12:0] dataArb_io_in_3_bits_addr;
  wire  dataArb_io_in_3_bits_write;
  wire [31:0] dataArb_io_in_3_bits_wdata;
  wire [3:0] dataArb_io_in_3_bits_eccMask;
  wire  dataArb_io_out_ready;
  wire  dataArb_io_out_valid;
  wire [12:0] dataArb_io_out_bits_addr;
  wire  dataArb_io_out_bits_write;
  wire [31:0] dataArb_io_out_bits_wdata;
  wire [3:0] dataArb_io_out_bits_eccMask;
  wire [31:0] _T_109;
  wire [7:0] _T_110;
  wire [7:0] _T_111;
  wire [7:0] _T_112;
  wire [7:0] _T_113;
  wire [15:0] _T_114;
  wire [15:0] _T_115;
  wire [31:0] _T_116;
  wire  _T_125;
  reg  s1_valid;
  reg [31:0] _RAND_2;
  wire  _T_128;
  reg  s1_probe;
  reg [31:0] _RAND_3;
  reg [1:0] probe_bits_param;
  reg [31:0] _RAND_4;
  reg [3:0] probe_bits_size;
  reg [31:0] _RAND_5;
  reg  probe_bits_source;
  reg [31:0] _RAND_6;
  reg [31:0] probe_bits_address;
  reg [31:0] _RAND_7;
  wire [1:0] _GEN_2;
  wire [3:0] _GEN_3;
  wire  _GEN_4;
  wire [31:0] _GEN_5;
  wire  _T_136;
  wire  s1_valid_masked;
  wire  _T_138;
  wire  s1_valid_not_nacked;
  reg [31:0] s1_req_addr;
  reg [31:0] _RAND_8;
  reg [5:0] s1_req_tag;
  reg [31:0] _RAND_9;
  reg [4:0] s1_req_cmd;
  reg [31:0] _RAND_10;
  reg [2:0] s1_req_typ;
  reg [31:0] _RAND_11;
  wire  _T_140;
  wire  _T_141;
  wire [25:0] _T_142;
  wire [5:0] _T_143;
  wire [31:0] _T_144;
  wire  _T_146;
  wire [31:0] _GEN_9;
  wire [5:0] _GEN_10;
  wire [4:0] _GEN_11;
  wire [2:0] _GEN_12;
  wire  _T_149;
  wire  _T_151;
  wire  _T_152;
  wire  _T_154;
  wire  _T_155;
  wire  _T_160;
  wire  _T_161;
  wire  _T_162;
  wire  _T_163;
  wire  _T_164;
  wire  _T_165;
  wire  _T_166;
  wire  _T_172;
  wire  _T_173;
  wire  _T_174;
  wire  _T_175;
  wire  _T_176;
  wire  _T_177;
  wire  _T_178;
  wire  _T_179;
  wire  _T_180;
  wire  _T_181;
  wire  s1_read;
  wire  _T_183;
  wire  _T_185;
  wire  _T_186;
  wire  _T_189;
  wire  s1_write;
  wire  s1_readwrite;
  wire  s1_sfence;
  reg  s1_flush_valid;
  reg [31:0] _RAND_12;
  reg  cached_grant_wait;
  reg [31:0] _RAND_13;
  reg  release_ack_wait;
  reg [31:0] _RAND_14;
  reg [2:0] release_state;
  reg [31:0] _RAND_15;
  wire  _T_226;
  wire  _T_227;
  wire  inWriteback;
  wire  _T_229;
  wire  _T_231;
  wire  _T_232;
  wire  _T_235;
  reg  uncachedInFlight_0;
  reg [31:0] _RAND_16;
  reg [31:0] uncachedReqs_0_addr;
  reg [31:0] _RAND_17;
  reg [5:0] uncachedReqs_0_tag;
  reg [31:0] _RAND_18;
  reg [2:0] uncachedReqs_0_typ;
  reg [31:0] _RAND_19;
  wire  _T_240;
  wire  _T_242;
  wire  _T_243;
  wire  _T_245;
  wire  _T_246;
  wire  _T_251;
  wire  _T_252;
  wire  _T_253;
  wire  _T_254;
  wire  _T_255;
  wire  _T_256;
  wire  _T_257;
  wire  _T_263;
  wire  _T_264;
  wire  _T_265;
  wire  _T_266;
  wire  _T_267;
  wire  _T_268;
  wire  _T_269;
  wire  _T_270;
  wire  _T_271;
  wire  _T_272;
  wire  _T_273;
  wire  _T_275;
  wire  _T_277;
  wire  _T_278;
  wire  _T_281;
  wire  _T_308;
  wire  _T_315;
  wire  s0_needsRead;
  wire  _T_350;
  wire  _T_358;
  wire  _T_359;
  wire  _GEN_15;
  wire  _GEN_17;
  wire  tlb_clock;
  wire  tlb_reset;
  wire  tlb_io_req_ready;
  wire  tlb_io_req_valid;
  wire [31:0] tlb_io_req_bits_vaddr;
  wire [1:0] tlb_io_req_bits_size;
  wire [4:0] tlb_io_req_bits_cmd;
  wire  tlb_io_resp_miss;
  wire [31:0] tlb_io_resp_paddr;
  wire  tlb_io_resp_pf_ld;
  wire  tlb_io_resp_pf_st;
  wire  tlb_io_resp_ae_ld;
  wire  tlb_io_resp_ae_st;
  wire  tlb_io_resp_ma_ld;
  wire  tlb_io_resp_ma_st;
  wire  tlb_io_resp_cacheable;
  wire  tlb_io_ptw_req_valid;
  wire [19:0] tlb_io_ptw_req_bits_addr;
  wire  tlb_io_ptw_resp_valid;
  wire [1:0] tlb_io_ptw_status_dprv;
  wire  tlb_io_ptw_status_mxr;
  wire  tlb_io_ptw_status_sum;
  wire  _T_377;
  wire  _T_378;
  wire  _T_382;
  wire  _T_384;
  wire  _T_385;
  wire  _T_387;
  wire  _T_388;
  wire  _GEN_18;
  wire  _T_390;
  wire  _T_391;
  wire [6:0] _T_395;
  wire  _T_396;
  wire [20:0] _T_397;
  wire  _T_413;
  wire [20:0] _T_427;
  wire [18:0] _T_428;
  wire [1:0] _T_429;
  wire [18:0] _T_430;
  wire  _T_432;
  wire  _T_433;
  wire  s1_hit_way;
  wire [1:0] _T_439;
  wire [1:0] _T_444;
  wire [7:0] _T_446;
  wire [7:0] _T_447;
  wire [7:0] _T_448;
  wire [7:0] _T_449;
  wire [15:0] _T_450;
  wire [15:0] _T_451;
  wire [31:0] _T_452;
  wire [31:0] s1_all_data_ways_0;
  wire [1:0] _T_462;
  wire  _T_464;
  wire  _T_468;
  wire  _T_472;
  wire  _T_475;
  wire [1:0] _T_476;
  wire  _T_477;
  wire [1:0] _T_479;
  wire  _T_481;
  wire [1:0] _T_484;
  wire [1:0] _T_485;
  wire [1:0] _T_488;
  wire [3:0] _T_489;
  wire [3:0] s1_mask;
  wire  _T_491;
  wire  _T_492;
  reg  _T_495;
  reg [31:0] _RAND_20;
  wire [1:0] _T_496;
  wire [2:0] _T_497;
  wire [1:0] _T_498;
  wire [2:0] _T_499;
  wire [5:0] _T_500;
  wire  _T_502;
  wire  _T_504;
  wire  s2_valid;
  reg  s2_probe;
  reg [31:0] _RAND_21;
  wire  _T_507;
  wire  _T_508;
  wire  releaseInFlight;
  reg  _T_512;
  reg [31:0] _RAND_22;
  wire  s2_valid_masked;
  reg [31:0] s2_req_addr;
  reg [31:0] _RAND_23;
  reg [5:0] s2_req_tag;
  reg [31:0] _RAND_24;
  reg [4:0] s2_req_cmd;
  reg [31:0] _RAND_25;
  reg [2:0] s2_req_typ;
  reg [31:0] _RAND_26;
  wire [25:0] _T_513;
  wire [31:0] _GEN_249;
  wire [31:0] acquire_address;
  reg  s2_uncached;
  reg [31:0] _RAND_27;
  wire  _T_516;
  wire  _T_518;
  wire [31:0] _GEN_31;
  wire [5:0] _GEN_32;
  wire [4:0] _GEN_33;
  wire [2:0] _GEN_34;
  wire  _GEN_37;
  wire  _T_520;
  wire  _T_522;
  wire  _T_523;
  wire  _T_525;
  wire  _T_526;
  wire  _T_531;
  wire  _T_532;
  wire  _T_533;
  wire  _T_534;
  wire  _T_535;
  wire  _T_536;
  wire  _T_537;
  wire  _T_543;
  wire  _T_544;
  wire  _T_545;
  wire  _T_546;
  wire  _T_547;
  wire  _T_548;
  wire  _T_549;
  wire  _T_550;
  wire  _T_551;
  wire  _T_552;
  wire  s2_read;
  wire  _T_554;
  wire  _T_556;
  wire  _T_557;
  wire  _T_560;
  wire  s2_write;
  wire  s2_readwrite;
  reg  s2_flush_valid_pre_tag_ecc;
  reg [31:0] _RAND_28;
  wire  s1_meta_clk_en;
  reg  s2_meta_errors;
  reg [31:0] _RAND_29;
  wire  _GEN_38;
  reg [20:0] _T_594;
  reg [31:0] _RAND_30;
  wire [20:0] _GEN_39;
  wire [18:0] _T_599;
  wire [1:0] _T_600;
  wire  _T_603;
  wire  s2_flush_valid;
  wire  _T_604;
  wire  _T_605;
  wire  _T_606;
  wire  _T_607;
  wire  _T_608;
  wire [31:0] _T_611;
  wire [31:0] _T_613;
  wire [31:0] _T_614;
  reg [31:0] s2_data;
  reg [31:0] _RAND_31;
  wire [31:0] _GEN_40;
  reg  s2_probe_way;
  reg [31:0] _RAND_32;
  wire  _GEN_41;
  reg [1:0] s2_probe_state_state;
  reg [31:0] _RAND_33;
  wire [1:0] _GEN_42;
  reg  s2_hit_way;
  reg [31:0] _RAND_34;
  wire  _GEN_43;
  reg [1:0] s2_hit_state_state;
  reg [31:0] _RAND_35;
  wire [1:0] _GEN_44;
  reg  s2_waw_hazard;
  reg [31:0] _RAND_36;
  wire  _GEN_45;
  wire  s2_hit_valid;
  wire  _T_696;
  wire  _T_697;
  wire  _T_700;
  wire [1:0] _T_701;
  wire [3:0] _T_702;
  wire  _T_789;
  wire [1:0] _T_791;
  wire  _T_792;
  wire [1:0] _T_794;
  wire  _T_795;
  wire [1:0] _T_797;
  wire  _T_798;
  wire [1:0] _T_800;
  wire  _T_801;
  wire [1:0] _T_803;
  wire  _T_804;
  wire [1:0] _T_806;
  wire  _T_807;
  wire  _T_808;
  wire [1:0] _T_809;
  wire  _T_810;
  wire  _T_811;
  wire [1:0] _T_812;
  wire  _T_813;
  wire  _T_814;
  wire [1:0] _T_815;
  wire  _T_816;
  wire  _T_817;
  wire [1:0] _T_818;
  wire  _T_819;
  wire  _T_820;
  wire [1:0] _T_821;
  wire  _T_822;
  wire  s2_hit;
  wire [1:0] s2_grow_param;
  wire [7:0] _T_824;
  wire [7:0] _T_825;
  wire [7:0] _T_826;
  wire [7:0] _T_827;
  wire [1:0] _T_900;
  wire [15:0] _T_921;
  wire [15:0] _T_922;
  wire [31:0] s2_data_corrected;
  wire  _T_925;
  wire  _T_928;
  wire  s2_valid_hit_pre_data_ecc;
  wire  _T_933;
  wire  s2_valid_hit;
  wire  _T_940;
  wire  _T_941;
  wire  _T_943;
  wire  s2_valid_miss;
  wire  _T_945;
  wire  _T_946;
  wire  _T_950;
  wire  s2_valid_cached_miss;
  wire  _T_953;
  wire  _T_954;
  wire  _T_955;
  wire  _T_957;
  wire  _T_959;
  wire  s2_valid_uncached_pending;
  wire  _T_961;
  wire  _T_962;
  reg  _T_965;
  reg [31:0] _RAND_37;
  wire  _GEN_46;
  wire [1:0] _T_967;
  wire [1:0] s2_victim_way;
  wire [18:0] _T_968;
  reg [18:0] _T_971;
  reg [31:0] _RAND_38;
  wire [18:0] _GEN_47;
  wire  _T_973;
  wire  _T_974;
  reg [1:0] _T_977_state;
  reg [31:0] _RAND_39;
  wire [1:0] _GEN_48;
  wire [1:0] s2_victim_state_state;
  wire [3:0] _T_978;
  wire  _T_1054;
  wire [2:0] _T_1056;
  wire  _T_1058;
  wire [2:0] _T_1060;
  wire  _T_1062;
  wire [2:0] _T_1064;
  wire  _T_1066;
  wire [2:0] _T_1068;
  wire  _T_1070;
  wire  _T_1071;
  wire [2:0] _T_1072;
  wire  _T_1074;
  wire  _T_1075;
  wire [2:0] _T_1076;
  wire [1:0] _T_1077;
  wire  _T_1078;
  wire  _T_1079;
  wire [2:0] _T_1080;
  wire [1:0] _T_1081;
  wire  _T_1082;
  wire  _T_1083;
  wire [2:0] _T_1084;
  wire [1:0] _T_1085;
  wire  _T_1086;
  wire  _T_1087;
  wire [2:0] _T_1088;
  wire [1:0] _T_1089;
  wire  _T_1090;
  wire  _T_1091;
  wire [2:0] _T_1092;
  wire [1:0] _T_1093;
  wire  _T_1094;
  wire  _T_1095;
  wire [2:0] _T_1096;
  wire [1:0] _T_1097;
  wire  _T_1098;
  wire  s2_prb_ack_data;
  wire [2:0] s2_report_param;
  wire [1:0] _T_1099;
  wire [3:0] _T_1115;
  wire  _T_1191;
  wire [2:0] _T_1193;
  wire  _T_1195;
  wire [2:0] _T_1197;
  wire  _T_1199;
  wire [2:0] _T_1201;
  wire  _T_1203;
  wire [2:0] _T_1205;
  wire  _T_1207;
  wire  _T_1208;
  wire [2:0] _T_1209;
  wire  _T_1211;
  wire  _T_1212;
  wire [2:0] _T_1213;
  wire [1:0] _T_1214;
  wire  _T_1215;
  wire  _T_1216;
  wire [2:0] _T_1217;
  wire [1:0] _T_1218;
  wire  _T_1219;
  wire  _T_1220;
  wire [2:0] _T_1221;
  wire [1:0] _T_1222;
  wire  _T_1223;
  wire  _T_1224;
  wire [2:0] _T_1225;
  wire [1:0] _T_1226;
  wire  _T_1227;
  wire  _T_1228;
  wire [2:0] _T_1229;
  wire [1:0] _T_1230;
  wire  _T_1231;
  wire  _T_1232;
  wire [2:0] _T_1233;
  wire [1:0] _T_1234;
  wire  _T_1235;
  wire  s2_victim_dirty;
  wire [2:0] s2_shrink_param;
  wire [1:0] _T_1236;
  wire  _T_1238;
  wire  s2_update_meta;
  wire  _T_1241;
  wire  _T_1242;
  wire  _T_1243;
  wire  _T_1245;
  wire  _T_1246;
  wire  _T_1247;
  wire  _T_1248;
  wire  _GEN_49;
  wire  _T_1250;
  wire  _T_1251;
  wire  _T_1252;
  wire [18:0] _T_1259;
  wire [31:0] _T_1260;
  wire [12:0] _T_1261;
  wire [31:0] _T_1262;
  wire  _T_1266;
  wire  _T_1267;
  wire  _T_1268;
  wire [12:0] _T_1271;
  wire [31:0] _T_1272;
  wire [1:0] _T_1276_state;
  reg [4:0] lrscCount;
  reg [31:0] _RAND_40;
  wire  lrscValid;
  reg [25:0] lrscAddr;
  reg [31:0] _RAND_41;
  wire  _T_1289;
  wire  _T_1290;
  wire  _T_1292;
  wire  s2_sc_fail;
  wire  _T_1293;
  wire [4:0] _GEN_50;
  wire [25:0] _GEN_51;
  wire  _T_1297;
  wire [5:0] _T_1299;
  wire [5:0] _T_1300;
  wire [4:0] _T_1301;
  wire [4:0] _GEN_52;
  wire  _T_1304;
  wire  _T_1305;
  wire [4:0] _GEN_53;
  wire  _T_1311;
  reg [4:0] pstore1_cmd;
  reg [31:0] _RAND_42;
  wire [4:0] _GEN_54;
  reg [31:0] pstore1_addr;
  reg [31:0] _RAND_43;
  wire [31:0] _GEN_55;
  reg [31:0] a_data;
  reg [31:0] _RAND_44;
  wire [31:0] _GEN_56;
  reg [3:0] pstore1_mask;
  reg [31:0] _RAND_45;
  wire [3:0] _GEN_58;
  wire  _T_1399;
  wire  _T_1400;
  reg  _T_1403;
  reg [31:0] _RAND_46;
  wire  _GEN_59;
  reg  pstore2_valid;
  reg [31:0] _RAND_47;
  wire  _T_1408;
  wire  _T_1409;
  wire  _T_1410;
  wire  pstore_drain_structural;
  wire  pstore_drain_opportunistic;
  wire  _T_1417;
  wire  _T_1418;
  wire  pstore_drain_on_miss;
  wire  _T_1424;
  wire  _T_1425;
  wire  _T_1426;
  wire  _T_1427;
  wire  _T_1428;
  wire  _T_1429;
  wire  _T_1430;
  wire  _T_1432;
  wire  _T_1433;
  reg  _T_1436;
  reg [31:0] _RAND_48;
  wire  _T_1438;
  wire  _T_1440;
  wire  _T_1441;
  wire  _T_1442;
  wire  _T_1444;
  wire  _T_1448;
  wire  _T_1449;
  wire  _T_1451;
  wire  _T_1452;
  wire  _T_1453;
  wire  _T_1455;
  wire  advance_pstore1;
  wire  _T_1458;
  wire  _T_1459;
  reg [31:0] pstore2_addr;
  reg [31:0] _RAND_49;
  wire [31:0] _GEN_60;
  wire [7:0] _T_1464;
  wire  _T_1465;
  reg [7:0] _T_1469;
  reg [31:0] _RAND_50;
  wire [7:0] _GEN_62;
  wire [7:0] _T_1470;
  wire  _T_1471;
  reg [7:0] _T_1475;
  reg [31:0] _RAND_51;
  wire [7:0] _GEN_63;
  wire [7:0] _T_1476;
  wire  _T_1477;
  reg [7:0] _T_1481;
  reg [31:0] _RAND_52;
  wire [7:0] _GEN_64;
  wire [7:0] _T_1482;
  wire  _T_1483;
  reg [7:0] _T_1487;
  reg [31:0] _RAND_53;
  wire [7:0] _GEN_65;
  wire [15:0] _T_1488;
  wire [15:0] _T_1489;
  wire [31:0] pstore2_storegen_data;
  reg [3:0] pstore2_storegen_mask;
  reg [31:0] _RAND_54;
  wire [3:0] _T_1496;
  wire [3:0] _T_1498;
  wire [3:0] _GEN_66;
  wire  _T_1499;
  wire  _T_1500;
  wire  _T_1501;
  wire  _T_1502;
  wire [1:0] _T_1511;
  wire [1:0] _T_1512;
  wire [3:0] _T_1513;
  wire [1:0] _T_1526;
  wire [1:0] _T_1527;
  wire [3:0] _T_1528;
  wire [10:0] _T_1535;
  wire [31:0] _T_1546;
  wire [31:0] _T_1548;
  wire [3:0] _T_1553;
  wire  _T_1554;
  wire  _T_1555;
  wire  _T_1556;
  wire  _T_1557;
  wire [1:0] _T_1566;
  wire [1:0] _T_1567;
  wire [3:0] _T_1568;
  wire [10:0] _T_1569;
  wire [10:0] _T_1570;
  wire  _T_1571;
  wire  _T_1587;
  wire  _T_1588;
  wire  _T_1589;
  wire  _T_1590;
  wire [1:0] _T_1591;
  wire [1:0] _T_1592;
  wire [3:0] _T_1593;
  wire  _T_1594;
  wire  _T_1595;
  wire  _T_1596;
  wire  _T_1597;
  wire [1:0] _T_1606;
  wire [1:0] _T_1607;
  wire [3:0] _T_1608;
  wire  _T_1609;
  wire  _T_1610;
  wire  _T_1611;
  wire  _T_1612;
  wire [1:0] _T_1613;
  wire [1:0] _T_1614;
  wire [3:0] _T_1615;
  wire [3:0] _T_1616;
  wire  _T_1618;
  wire [3:0] _T_1619;
  wire  _T_1621;
  wire  _T_1622;
  wire  _T_1623;
  wire  _T_1624;
  wire  _T_1627;
  wire  _T_1643;
  wire  _T_1644;
  wire  _T_1645;
  wire  _T_1646;
  wire [1:0] _T_1647;
  wire [1:0] _T_1648;
  wire [3:0] _T_1649;
  wire [3:0] _T_1672;
  wire  _T_1674;
  wire [3:0] _T_1675;
  wire  _T_1677;
  wire  _T_1678;
  wire  _T_1679;
  wire  _T_1680;
  wire  s1_hazard;
  wire  s1_raw_hazard;
  wire  _T_1685;
  wire  _GEN_67;
  wire [1:0] _GEN_250;
  wire [1:0] _T_1688;
  wire  _T_1689;
  wire  a_source;
  wire [2:0] acquire__param;
  wire [3:0] get_size;
  wire  _T_1858;
  wire [1:0] _T_1860;
  wire [1:0] _T_1863;
  wire  _T_1865;
  wire  _T_1867;
  wire  _T_1868;
  wire  _T_1870;
  wire  _T_1872;
  wire  _T_1873;
  wire  _T_1875;
  wire  _T_1876;
  wire  _T_1877;
  wire  _T_1878;
  wire  _T_1880;
  wire  _T_1881;
  wire  _T_1882;
  wire  _T_1883;
  wire  _T_1884;
  wire  _T_1885;
  wire  _T_1886;
  wire  _T_1887;
  wire  _T_1888;
  wire  _T_1889;
  wire  _T_1890;
  wire  _T_1891;
  wire  _T_1892;
  wire [1:0] _T_1893;
  wire [1:0] _T_1894;
  wire [3:0] _T_1895;
  wire [3:0] put_size;
  wire [3:0] _T_2071_size;
  wire [3:0] _T_2180_size;
  wire [3:0] _T_2289_size;
  wire [3:0] _T_2398_size;
  wire [3:0] _T_2507_size;
  wire [3:0] _T_2616_size;
  wire [3:0] _T_2725_size;
  wire [3:0] _T_2834_size;
  wire [3:0] _T_2943_size;
  wire  _T_2983;
  wire [2:0] _T_2984_opcode;
  wire [2:0] _T_2984_param;
  wire [3:0] _T_2984_size;
  wire  _T_2984_source;
  wire [31:0] _T_2984_address;
  wire [3:0] _T_2984_mask;
  wire [31:0] _T_2984_data;
  wire  _T_2985;
  wire [2:0] _T_2986_opcode;
  wire [2:0] _T_2986_param;
  wire [3:0] _T_2986_size;
  wire  _T_2986_source;
  wire [31:0] _T_2986_address;
  wire [3:0] _T_2986_mask;
  wire [31:0] _T_2986_data;
  wire  _T_2987;
  wire [2:0] _T_2988_opcode;
  wire [2:0] _T_2988_param;
  wire [3:0] _T_2988_size;
  wire  _T_2988_source;
  wire [31:0] _T_2988_address;
  wire [3:0] _T_2988_mask;
  wire [31:0] _T_2988_data;
  wire  _T_2989;
  wire [2:0] _T_2990_opcode;
  wire [2:0] _T_2990_param;
  wire [3:0] _T_2990_size;
  wire  _T_2990_source;
  wire [31:0] _T_2990_address;
  wire [3:0] _T_2990_mask;
  wire [31:0] _T_2990_data;
  wire  _T_2991;
  wire [2:0] _T_2992_opcode;
  wire [2:0] _T_2992_param;
  wire [3:0] _T_2992_size;
  wire  _T_2992_source;
  wire [31:0] _T_2992_address;
  wire [3:0] _T_2992_mask;
  wire [31:0] _T_2992_data;
  wire  _T_2993;
  wire [2:0] _T_2994_opcode;
  wire [2:0] _T_2994_param;
  wire [3:0] _T_2994_size;
  wire  _T_2994_source;
  wire [31:0] _T_2994_address;
  wire [3:0] _T_2994_mask;
  wire [31:0] _T_2994_data;
  wire  _T_2995;
  wire [2:0] _T_2996_opcode;
  wire [2:0] _T_2996_param;
  wire [3:0] _T_2996_size;
  wire  _T_2996_source;
  wire [31:0] _T_2996_address;
  wire [3:0] _T_2996_mask;
  wire [31:0] _T_2996_data;
  wire  _T_2997;
  wire [2:0] _T_2998_opcode;
  wire [2:0] _T_2998_param;
  wire [3:0] _T_2998_size;
  wire  _T_2998_source;
  wire [31:0] _T_2998_address;
  wire [3:0] _T_2998_mask;
  wire [31:0] _T_2998_data;
  wire  _T_2999;
  wire [2:0] atomics_opcode;
  wire [2:0] atomics_param;
  wire [3:0] atomics_size;
  wire  atomics_source;
  wire [31:0] atomics_address;
  wire [3:0] atomics_mask;
  wire [31:0] atomics_data;
  wire  _T_3004;
  wire  _T_3005;
  wire  _T_3009;
  wire  _T_3011;
  wire [2:0] _T_3012_opcode;
  wire [2:0] _T_3012_param;
  wire [3:0] _T_3012_size;
  wire  _T_3012_source;
  wire [31:0] _T_3012_address;
  wire [3:0] _T_3012_mask;
  wire [31:0] _T_3012_data;
  wire [2:0] _T_3013_opcode;
  wire [2:0] _T_3013_param;
  wire [3:0] _T_3013_size;
  wire  _T_3013_source;
  wire [31:0] _T_3013_address;
  wire [3:0] _T_3013_mask;
  wire [31:0] _T_3013_data;
  wire [2:0] _T_3014_opcode;
  wire [2:0] _T_3014_param;
  wire [3:0] _T_3014_size;
  wire  _T_3014_source;
  wire [31:0] _T_3014_address;
  wire [3:0] _T_3014_mask;
  wire [31:0] _T_3014_data;
  wire [1:0] _T_3017;
  wire  a_sel;
  wire  _T_3019;
  wire  _GEN_68;
  wire [31:0] _GEN_69;
  wire [5:0] _GEN_70;
  wire [2:0] _GEN_72;
  wire  _GEN_75;
  wire [31:0] _GEN_76;
  wire [5:0] _GEN_77;
  wire [2:0] _GEN_79;
  wire  _GEN_82;
  wire  _GEN_83;
  wire [31:0] _GEN_84;
  wire [5:0] _GEN_85;
  wire [2:0] _GEN_87;
  wire  _GEN_90;
  wire [26:0] _T_3028;
  wire [11:0] _T_3029;
  wire [11:0] _T_3030;
  wire [9:0] _T_3031;
  wire  _T_3032;
  wire [9:0] _T_3034;
  reg [9:0] _T_3037;
  reg [31:0] _RAND_55;
  wire [10:0] _T_3039;
  wire [10:0] _T_3040;
  wire [9:0] _T_3041;
  wire  d_first;
  wire  _T_3044;
  wire  _T_3046;
  wire  d_last;
  wire  d_done;
  wire [9:0] _T_3047;
  wire [9:0] _T_3048;
  wire [9:0] _T_3049;
  wire [9:0] _GEN_91;
  wire [11:0] _GEN_251;
  wire [11:0] d_address_inc;
  wire  _T_3052;
  wire  _T_3053;
  wire  grantIsCached;
  wire  _T_3057;
  wire  _T_3058;
  wire  _T_3059;
  wire  _T_3060;
  wire  grantIsUncached;
  wire  grantIsVoluntary;
  reg  grantInProgress;
  reg [31:0] _RAND_56;
  reg [2:0] blockProbeAfterGrantCount;
  reg [31:0] _RAND_57;
  wire  _T_3069;
  wire [3:0] _T_3071;
  wire [3:0] _T_3072;
  wire [2:0] _T_3073;
  wire [2:0] _GEN_92;
  wire  _T_3075;
  wire  _T_3076;
  wire  _T_3079;
  wire  _T_3082;
  wire  _T_3084;
  wire  _GEN_93;
  wire  _GEN_94;
  wire [2:0] _GEN_95;
  wire  _GEN_97;
  wire  _GEN_98;
  wire [2:0] _GEN_99;
  wire  _T_3090;
  wire  _T_3091;
  wire [1:0] _T_3094;
  wire  _T_3096;
  wire  _T_3099;
  wire  _T_3100;
  wire  _T_3102;
  wire  _GEN_101;
  wire [29:0] _T_3107;
  wire [1:0] _T_3108;
  wire [31:0] _T_3109;
  wire [1:0] _GEN_102;
  wire [4:0] _GEN_103;
  wire [2:0] _GEN_104;
  wire [5:0] _GEN_105;
  wire [31:0] _GEN_106;
  wire  _GEN_108;
  wire [1:0] _GEN_109;
  wire [4:0] _GEN_110;
  wire [2:0] _GEN_111;
  wire [5:0] _GEN_112;
  wire [31:0] _GEN_113;
  wire  _T_3113;
  wire  _T_3114;
  wire  _T_3115;
  wire  _T_3116;
  wire  _T_3118;
  wire  _GEN_115;
  wire  _GEN_116;
  wire  _GEN_117;
  wire [2:0] _GEN_118;
  wire  _GEN_120;
  wire [1:0] _GEN_121;
  wire [4:0] _GEN_122;
  wire [2:0] _GEN_123;
  wire [5:0] _GEN_124;
  wire [31:0] _GEN_125;
  wire  _GEN_127;
  wire  _T_3120;
  wire  _T_3121;
  wire  _T_3125;
  wire  _T_3127;
  wire  _T_3128;
  wire  _T_3129;
  wire  _T_3130;
  wire  _T_3132;
  wire  _T_3133;
  wire  _T_3136;
  wire  _T_3137;
  wire  _GEN_128;
  wire  _GEN_129;
  wire [31:0] _GEN_252;
  wire [31:0] _T_3141;
  wire  _T_3146;
  wire  _T_3148;
  wire  _T_3149;
  wire  _T_3150;
  wire  _T_3152;
  wire [3:0] _T_3234;
  wire  _T_3260;
  wire [1:0] _T_3261;
  wire  _T_3262;
  wire [1:0] _T_3263;
  wire  _T_3264;
  wire [1:0] _T_3265;
  wire  _T_3266;
  wire [1:0] _T_3267;
  reg  blockUncachedGrant;
  reg [31:0] _RAND_58;
  wire  _T_3272;
  wire  _T_3273;
  wire  _GEN_130;
  wire  _GEN_131;
  wire  _GEN_132;
  wire  _GEN_133;
  wire  _GEN_134;
  wire  _GEN_135;
  wire  _GEN_136;
  wire  _GEN_137;
  wire  _GEN_138;
  wire  _T_3280;
  wire  _T_3283;
  wire  _T_3284;
  wire  block_probe;
  wire  _T_3287;
  wire  _T_3288;
  wire  _T_3291;
  wire  _T_3293;
  wire  _T_3294;
  wire  _T_3296;
  wire  _T_3297;
  wire  _T_3298;
  wire [32:0] _T_3301;
  wire  _T_3304;
  wire [26:0] _T_3307;
  wire [11:0] _T_3308;
  wire [11:0] _T_3309;
  wire [9:0] _T_3310;
  wire  _T_3311;
  wire [9:0] _T_3313;
  reg [9:0] _T_3316;
  reg [31:0] _RAND_59;
  wire [10:0] _T_3318;
  wire [10:0] _T_3319;
  wire [9:0] _T_3320;
  wire  c_first;
  wire  _T_3323;
  wire  _T_3325;
  wire  c_last;
  wire  releaseDone;
  wire [9:0] _T_3326;
  wire [9:0] c_count;
  wire [9:0] _T_3327;
  wire [9:0] _GEN_139;
  wire  _T_3329;
  wire  releaseRejected;
  wire  _T_3330;
  reg  s1_release_data_valid;
  reg [31:0] _RAND_60;
  wire  _T_3333;
  wire  _T_3334;
  reg  s2_release_data_valid;
  reg [31:0] _RAND_61;
  wire [10:0] _T_3337;
  wire [1:0] _T_3340;
  wire [1:0] _GEN_253;
  wire [2:0] _T_3341;
  wire [1:0] _T_3342;
  wire [1:0] _T_3343;
  wire [10:0] _GEN_254;
  wire [11:0] _T_3344;
  wire [10:0] releaseDataBeat;
  wire  _T_3359;
  wire  _T_3360;
  wire  _T_3365;
  wire  _T_3366;
  wire  _T_3368;
  wire [6:0] _T_3369;
  wire [25:0] _T_3370;
  wire [31:0] _GEN_255;
  wire [31:0] _T_3371;
  wire [2:0] _GEN_140;
  wire [31:0] _GEN_141;
  wire [2:0] _GEN_142;
  wire  _T_3377;
  wire [2:0] _GEN_143;
  wire  _T_3379;
  wire  _T_3383;
  wire  _T_3384;
  wire  _T_3385;
  wire [2:0] _T_3387;
  wire  _GEN_144;
  wire [2:0] _GEN_146;
  wire [2:0] _GEN_152;
  wire  _T_3394;
  wire  _T_3395;
  wire  _T_3398;
  wire [2:0] _T_3399;
  wire  _GEN_153;
  wire  _GEN_154;
  wire [2:0] _GEN_155;
  wire  _GEN_156;
  wire [2:0] _GEN_157;
  wire  _GEN_158;
  wire [2:0] _GEN_160;
  wire  _GEN_166;
  wire  _T_3401;
  wire [32:0] _T_3404;
  wire [2:0] _GEN_167;
  wire  _GEN_168;
  wire  _GEN_169;
  wire [32:0] _GEN_170;
  wire [2:0] _GEN_171;
  wire  _GEN_172;
  wire  _T_3406;
  wire [2:0] _GEN_173;
  wire  _GEN_174;
  wire [2:0] _GEN_175;
  wire  _T_3408;
  wire [2:0] _GEN_176;
  wire  _GEN_177;
  wire [2:0] _GEN_179;
  wire [2:0] _GEN_185;
  wire [2:0] _GEN_186;
  wire [2:0] _GEN_187;
  wire [2:0] _GEN_188;
  wire [2:0] _GEN_194;
  wire  _T_3412;
  wire  _T_3413;
  wire [2:0] _GEN_195;
  wire  _T_3480;
  wire  _GEN_196;
  wire [2:0] _GEN_197;
  wire [2:0] _GEN_198;
  wire [3:0] _GEN_199;
  wire  _GEN_200;
  wire [1:0] _GEN_204;
  wire [1:0] _GEN_205;
  wire [2:0] _GEN_206;
  wire  _GEN_207;
  wire  _T_3483;
  wire  _T_3484;
  wire [3:0] _T_3486;
  wire [5:0] _GEN_259;
  wire [5:0] _T_3487;
  wire [31:0] _GEN_260;
  wire [31:0] _T_3488;
  wire  _T_3494;
  wire  _T_3495;
  wire [12:0] _T_3498;
  wire [31:0] _T_3499;
  wire [18:0] _T_3500;
  wire  _T_3501;
  wire [2:0] _GEN_208;
  wire  _T_3503;
  wire  _T_3504;
  wire  _T_3507;
  wire  _T_3509;
  wire  s1_xcpt_valid;
  reg  _T_3513;
  reg [31:0] _RAND_62;
  reg  _T_3515_pf_ld;
  reg [31:0] _RAND_63;
  reg  _T_3515_pf_st;
  reg [31:0] _RAND_64;
  reg  _T_3515_ae_ld;
  reg [31:0] _RAND_65;
  reg  _T_3515_ae_st;
  reg [31:0] _RAND_66;
  reg  _T_3515_ma_ld;
  reg [31:0] _RAND_67;
  reg  _T_3515_ma_st;
  reg [31:0] _RAND_68;
  wire  _GEN_211;
  wire  _GEN_212;
  wire  _GEN_214;
  wire  _GEN_215;
  wire  _GEN_217;
  wire  _GEN_218;
  wire  _T_3534_pf_ld;
  wire  _T_3534_pf_st;
  wire  _T_3534_ae_ld;
  wire  _T_3534_ae_st;
  wire  _T_3534_ma_ld;
  wire  _T_3534_ma_st;
  wire  _T_3536;
  reg  doUncachedResp;
  reg [31:0] _RAND_69;
  wire  _T_3540;
  wire  _T_3542;
  wire  _GEN_222;
  wire  _T_3545;
  wire  _T_3547;
  wire [15:0] _T_3550;
  wire [15:0] _T_3551;
  wire [15:0] _T_3552;
  wire  _T_3558;
  wire  _T_3560;
  wire  _T_3561;
  wire [15:0] _T_3565;
  wire [15:0] _T_3567;
  wire [31:0] _T_3568;
  wire [7:0] _T_3570;
  wire [7:0] _T_3571;
  wire [7:0] _T_3572;
  wire [7:0] _T_3576;
  wire  _T_3578;
  wire  _T_3579;
  wire  _T_3580;
  wire  _T_3581;
  wire [23:0] _T_3585;
  wire [23:0] _T_3586;
  wire [23:0] _T_3587;
  wire [31:0] _T_3588;
  wire [31:0] _GEN_261;
  wire [31:0] _T_3589;
  wire [3:0] AMOALU_io_mask;
  wire [4:0] AMOALU_io_cmd;
  wire [31:0] AMOALU_io_lhs;
  wire [31:0] AMOALU_io_rhs;
  wire [31:0] AMOALU_io_out;
  wire [31:0] _GEN_225;
  reg  resetting;
  reg [31:0] _RAND_70;
  reg  flushed;
  reg [31:0] _RAND_71;
  reg  flushing;
  reg [31:0] _RAND_72;
  reg [6:0] flushCounter;
  reg [31:0] _RAND_73;
  wire [7:0] flushCounterNext;
  wire  _T_3599;
  wire  _T_3602;
  wire  _T_3603;
  wire  _T_3605;
  wire  _T_3614;
  wire  _GEN_226;
  wire  _GEN_227;
  wire  _GEN_228;
  wire  _T_3615;
  wire  _T_3617;
  wire  _T_3618;
  wire  _T_3621;
  wire  _T_3623;
  wire  _T_3626;
  wire [12:0] _GEN_262;
  wire [12:0] _T_3630;
  wire [31:0] _T_3631;
  wire  _T_3637;
  wire  _GEN_229;
  wire  _GEN_230;
  wire [7:0] _GEN_231;
  wire  _GEN_232;
  wire  _T_3642;
  wire  _T_3645;
  wire  _GEN_233;
  wire [7:0] _GEN_235;
  wire  _GEN_236;
  wire  _GEN_237;
  wire  _GEN_238;
  wire [7:0] _GEN_239;
  wire  _GEN_240;
  wire  _GEN_263;
  wire  _GEN_265;
  wire  _GEN_266;
  wire  _GEN_269;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ARBITER metaArb (
    .io_in_0_valid(metaArb_io_in_0_valid),
    .io_in_0_bits_write(metaArb_io_in_0_bits_write),
    .io_in_0_bits_addr(metaArb_io_in_0_bits_addr),
    .io_in_0_bits_data_coh_state(metaArb_io_in_0_bits_data_coh_state),
    .io_in_0_bits_data_tag(metaArb_io_in_0_bits_data_tag),
    .io_in_1_valid(metaArb_io_in_1_valid),
    .io_in_1_bits_write(metaArb_io_in_1_bits_write),
    .io_in_1_bits_addr(metaArb_io_in_1_bits_addr),
    .io_in_1_bits_data_coh_state(metaArb_io_in_1_bits_data_coh_state),
    .io_in_1_bits_data_tag(metaArb_io_in_1_bits_data_tag),
    .io_in_2_valid(metaArb_io_in_2_valid),
    .io_in_2_bits_write(metaArb_io_in_2_bits_write),
    .io_in_2_bits_addr(metaArb_io_in_2_bits_addr),
    .io_in_2_bits_data_coh_state(metaArb_io_in_2_bits_data_coh_state),
    .io_in_2_bits_data_tag(metaArb_io_in_2_bits_data_tag),
    .io_in_3_ready(metaArb_io_in_3_ready),
    .io_in_3_valid(metaArb_io_in_3_valid),
    .io_in_3_bits_write(metaArb_io_in_3_bits_write),
    .io_in_3_bits_addr(metaArb_io_in_3_bits_addr),
    .io_in_3_bits_data_coh_state(metaArb_io_in_3_bits_data_coh_state),
    .io_in_3_bits_data_tag(metaArb_io_in_3_bits_data_tag),
    .io_in_4_ready(metaArb_io_in_4_ready),
    .io_in_4_valid(metaArb_io_in_4_valid),
    .io_in_4_bits_write(metaArb_io_in_4_bits_write),
    .io_in_4_bits_addr(metaArb_io_in_4_bits_addr),
    .io_in_4_bits_data_coh_state(metaArb_io_in_4_bits_data_coh_state),
    .io_in_4_bits_data_tag(metaArb_io_in_4_bits_data_tag),
    .io_in_5_ready(metaArb_io_in_5_ready),
    .io_in_5_valid(metaArb_io_in_5_valid),
    .io_in_5_bits_write(metaArb_io_in_5_bits_write),
    .io_in_5_bits_addr(metaArb_io_in_5_bits_addr),
    .io_in_5_bits_data_coh_state(metaArb_io_in_5_bits_data_coh_state),
    .io_in_5_bits_data_tag(metaArb_io_in_5_bits_data_tag),
    .io_in_6_ready(metaArb_io_in_6_ready),
    .io_in_6_valid(metaArb_io_in_6_valid),
    .io_in_6_bits_write(metaArb_io_in_6_bits_write),
    .io_in_6_bits_addr(metaArb_io_in_6_bits_addr),
    .io_in_6_bits_data_coh_state(metaArb_io_in_6_bits_data_coh_state),
    .io_in_6_bits_data_tag(metaArb_io_in_6_bits_data_tag),
    .io_in_7_ready(metaArb_io_in_7_ready),
    .io_in_7_valid(metaArb_io_in_7_valid),
    .io_in_7_bits_write(metaArb_io_in_7_bits_write),
    .io_in_7_bits_addr(metaArb_io_in_7_bits_addr),
    .io_in_7_bits_data_coh_state(metaArb_io_in_7_bits_data_coh_state),
    .io_in_7_bits_data_tag(metaArb_io_in_7_bits_data_tag),
    .io_out_ready(metaArb_io_out_ready),
    .io_out_valid(metaArb_io_out_valid),
    .io_out_bits_write(metaArb_io_out_bits_write),
    .io_out_bits_addr(metaArb_io_out_bits_addr),
    .io_out_bits_data_coh_state(metaArb_io_out_bits_data_coh_state),
    .io_out_bits_data_tag(metaArb_io_out_bits_data_tag)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_D_CACHE_DATA_ARRAY data (
    .clock(data_clock),
    .io_req_valid(data_io_req_valid),
    .io_req_bits_addr(data_io_req_bits_addr),
    .io_req_bits_write(data_io_req_bits_write),
    .io_req_bits_wdata(data_io_req_bits_wdata),
    .io_req_bits_eccMask(data_io_req_bits_eccMask),
    .io_resp_0(data_io_resp_0)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ARBITER_1 dataArb (
    .io_in_0_valid(dataArb_io_in_0_valid),
    .io_in_0_bits_addr(dataArb_io_in_0_bits_addr),
    .io_in_0_bits_write(dataArb_io_in_0_bits_write),
    .io_in_0_bits_wdata(dataArb_io_in_0_bits_wdata),
    .io_in_0_bits_eccMask(dataArb_io_in_0_bits_eccMask),
    .io_in_1_ready(dataArb_io_in_1_ready),
    .io_in_1_valid(dataArb_io_in_1_valid),
    .io_in_1_bits_addr(dataArb_io_in_1_bits_addr),
    .io_in_1_bits_write(dataArb_io_in_1_bits_write),
    .io_in_1_bits_wdata(dataArb_io_in_1_bits_wdata),
    .io_in_1_bits_eccMask(dataArb_io_in_1_bits_eccMask),
    .io_in_2_ready(dataArb_io_in_2_ready),
    .io_in_2_valid(dataArb_io_in_2_valid),
    .io_in_2_bits_addr(dataArb_io_in_2_bits_addr),
    .io_in_2_bits_write(dataArb_io_in_2_bits_write),
    .io_in_2_bits_wdata(dataArb_io_in_2_bits_wdata),
    .io_in_2_bits_eccMask(dataArb_io_in_2_bits_eccMask),
    .io_in_3_ready(dataArb_io_in_3_ready),
    .io_in_3_valid(dataArb_io_in_3_valid),
    .io_in_3_bits_addr(dataArb_io_in_3_bits_addr),
    .io_in_3_bits_write(dataArb_io_in_3_bits_write),
    .io_in_3_bits_wdata(dataArb_io_in_3_bits_wdata),
    .io_in_3_bits_eccMask(dataArb_io_in_3_bits_eccMask),
    .io_out_ready(dataArb_io_out_ready),
    .io_out_valid(dataArb_io_out_valid),
    .io_out_bits_addr(dataArb_io_out_bits_addr),
    .io_out_bits_write(dataArb_io_out_bits_write),
    .io_out_bits_wdata(dataArb_io_out_bits_wdata),
    .io_out_bits_eccMask(dataArb_io_out_bits_eccMask)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TLB tlb (
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_req_bits_size(tlb_io_req_bits_size),
    .io_req_bits_cmd(tlb_io_req_bits_cmd),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_ld(tlb_io_resp_pf_ld),
    .io_resp_pf_st(tlb_io_resp_pf_st),
    .io_resp_ae_ld(tlb_io_resp_ae_ld),
    .io_resp_ae_st(tlb_io_resp_ae_st),
    .io_resp_ma_ld(tlb_io_resp_ma_ld),
    .io_resp_ma_st(tlb_io_resp_ma_st),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_addr(tlb_io_ptw_req_bits_addr),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_status_dprv(tlb_io_ptw_status_dprv),
    .io_ptw_status_mxr(tlb_io_ptw_status_mxr),
    .io_ptw_status_sum(tlb_io_ptw_status_sum)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_AMOALU MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_AMOALU (
    .io_mask(AMOALU_io_mask),
    .io_cmd(AMOALU_io_cmd),
    .io_lhs(AMOALU_io_lhs),
    .io_rhs(AMOALU_io_rhs),
    .io_out(AMOALU_io_out)
  );
  assign io_cpu_req_ready = _GEN_135;
  assign io_cpu_s2_nack = _GEN_227;
  assign io_cpu_resp_valid = _GEN_222;
  assign io_cpu_resp_bits_tag = s2_req_tag;
  assign io_cpu_resp_bits_data = _T_3589;
  assign io_cpu_resp_bits_replay = doUncachedResp;
  assign io_cpu_resp_bits_has_data = s2_read;
  assign io_cpu_resp_bits_data_word_bypass = s2_data_corrected;
  assign io_cpu_replay_next = _T_3536;
  assign io_cpu_s2_xcpt_ma_ld = _T_3534_ma_ld;
  assign io_cpu_s2_xcpt_ma_st = _T_3534_ma_st;
  assign io_cpu_s2_xcpt_pf_ld = _T_3534_pf_ld;
  assign io_cpu_s2_xcpt_pf_st = _T_3534_pf_st;
  assign io_cpu_s2_xcpt_ae_ld = _T_3534_ae_ld;
  assign io_cpu_s2_xcpt_ae_st = _T_3534_ae_st;
  assign io_cpu_ordered = _T_3509;
  assign io_ptw_req_valid = tlb_io_ptw_req_valid;
  assign io_ptw_req_bits_addr = tlb_io_ptw_req_bits_addr;
  assign io_mem_0_a_valid = _T_3005;
  assign io_mem_0_a_bits_opcode = _T_3014_opcode;
  assign io_mem_0_a_bits_param = _T_3014_param;
  assign io_mem_0_a_bits_size = _T_3014_size;
  assign io_mem_0_a_bits_source = _T_3014_source;
  assign io_mem_0_a_bits_address = _T_3014_address;
  assign io_mem_0_a_bits_mask = _T_3014_mask;
  assign io_mem_0_a_bits_data = _T_3014_data;
  assign io_mem_0_b_ready = _T_3298;
  assign io_mem_0_c_valid = _GEN_177;
  assign io_mem_0_c_bits_opcode = _GEN_197;
  assign io_mem_0_c_bits_param = _GEN_198;
  assign io_mem_0_c_bits_size = _GEN_199;
  assign io_mem_0_c_bits_source = _GEN_200;
  assign io_mem_0_c_bits_address = probe_bits_address;
  assign io_mem_0_c_bits_data = s2_data_corrected;
  assign io_mem_0_d_ready = _GEN_134;
  assign io_mem_0_e_valid = _GEN_128;
  assign io_mem_0_e_bits_sink = io_mem_0_d_bits_sink;
  assign metaArb_io_in_0_valid = resetting;
  assign metaArb_io_in_0_bits_write = 1'h1;
  assign metaArb_io_in_0_bits_addr = metaArb_io_in_5_bits_addr;
  assign metaArb_io_in_0_bits_data_coh_state = 2'h0;
  assign metaArb_io_in_0_bits_data_tag = _T_968;
  assign metaArb_io_in_1_valid = _T_1252;
  assign metaArb_io_in_1_bits_write = 1'h1;
  assign metaArb_io_in_1_bits_addr = _T_1262;
  assign metaArb_io_in_1_bits_data_coh_state = _T_600;
  assign metaArb_io_in_1_bits_data_tag = _T_599;
  assign metaArb_io_in_2_valid = _T_1268;
  assign metaArb_io_in_2_bits_write = 1'h1;
  assign metaArb_io_in_2_bits_addr = _T_1272;
  assign metaArb_io_in_2_bits_data_coh_state = _T_1276_state;
  assign metaArb_io_in_2_bits_data_tag = _T_968;
  assign metaArb_io_in_3_valid = _T_3146;
  assign metaArb_io_in_3_bits_write = 1'h1;
  assign metaArb_io_in_3_bits_addr = _T_1272;
  assign metaArb_io_in_3_bits_data_coh_state = _T_3267;
  assign metaArb_io_in_3_bits_data_tag = _T_968;
  assign metaArb_io_in_4_valid = _T_3495;
  assign metaArb_io_in_4_bits_write = 1'h1;
  assign metaArb_io_in_4_bits_addr = _T_3499;
  assign metaArb_io_in_4_bits_data_coh_state = _GEN_204;
  assign metaArb_io_in_4_bits_data_tag = _T_3500;
  assign metaArb_io_in_5_valid = flushing;
  assign metaArb_io_in_5_bits_write = 1'h0;
  assign metaArb_io_in_5_bits_addr = _T_3631;
  assign metaArb_io_in_5_bits_data_coh_state = metaArb_io_in_4_bits_data_coh_state;
  assign metaArb_io_in_5_bits_data_tag = metaArb_io_in_4_bits_data_tag;
  assign metaArb_io_in_6_valid = _GEN_169;
  assign metaArb_io_in_6_bits_write = 1'h0;
  assign metaArb_io_in_6_bits_addr = _GEN_170[31:0];
  assign metaArb_io_in_6_bits_data_coh_state = metaArb_io_in_4_bits_data_coh_state;
  assign metaArb_io_in_6_bits_data_tag = metaArb_io_in_4_bits_data_tag;
  assign metaArb_io_in_7_valid = io_cpu_req_valid;
  assign metaArb_io_in_7_bits_write = 1'h0;
  assign metaArb_io_in_7_bits_addr = io_cpu_req_bits_addr;
  assign metaArb_io_in_7_bits_data_coh_state = metaArb_io_in_4_bits_data_coh_state;
  assign metaArb_io_in_7_bits_data_tag = metaArb_io_in_4_bits_data_tag;
  assign metaArb_io_out_ready = 1'h1;
  assign tag_array_0_s1_meta_addr = tag_array_0_s1_meta_addr_pipe_0;
  assign tag_array_0_s1_meta_data = tag_array_0[tag_array_0_s1_meta_addr];
  assign tag_array_0__T_405_data = _T_397;
  assign tag_array_0__T_405_addr = _T_395;
  assign tag_array_0__T_405_mask = _T_396;
  assign tag_array_0__T_405_en = _T_396;
  assign _GEN_243 = _T_413;
  assign data_clock = clock;
  assign data_io_req_valid = dataArb_io_out_valid;
  assign data_io_req_bits_addr = dataArb_io_out_bits_addr;
  assign data_io_req_bits_write = dataArb_io_out_bits_write;
  assign data_io_req_bits_wdata = _T_116;
  assign data_io_req_bits_eccMask = dataArb_io_out_bits_eccMask;
  assign dataArb_io_in_0_valid = _T_1429;
  assign dataArb_io_in_0_bits_addr = _T_1546[12:0];
  assign dataArb_io_in_0_bits_write = 1'h1;
  assign dataArb_io_in_0_bits_wdata = _T_1548;
  assign dataArb_io_in_0_bits_eccMask = _T_1568;
  assign dataArb_io_in_1_valid = _GEN_136;
  assign dataArb_io_in_1_bits_addr = _T_3141[12:0];
  assign dataArb_io_in_1_bits_write = _GEN_137;
  assign dataArb_io_in_1_bits_wdata = io_mem_0_d_bits_data;
  assign dataArb_io_in_1_bits_eccMask = 4'hf;
  assign dataArb_io_in_2_valid = _T_3484;
  assign dataArb_io_in_2_bits_addr = _T_3488[12:0];
  assign dataArb_io_in_2_bits_write = 1'h0;
  assign dataArb_io_in_2_bits_wdata = 32'h0;
  assign dataArb_io_in_2_bits_eccMask = 4'h0;
  assign dataArb_io_in_3_valid = _T_350;
  assign dataArb_io_in_3_bits_addr = io_cpu_req_bits_addr[12:0];
  assign dataArb_io_in_3_bits_write = 1'h0;
  assign dataArb_io_in_3_bits_wdata = 32'h0;
  assign dataArb_io_in_3_bits_eccMask = 4'h0;
  assign dataArb_io_out_ready = 1'h1;
  assign _T_109 = dataArb_io_out_bits_wdata;
  assign _T_110 = _T_109[7:0];
  assign _T_111 = _T_109[15:8];
  assign _T_112 = _T_109[23:16];
  assign _T_113 = _T_109[31:24];
  assign _T_114 = {_T_111,_T_110};
  assign _T_115 = {_T_113,_T_112};
  assign _T_116 = {_T_115,_T_114};
  assign _T_125 = io_cpu_req_ready & io_cpu_req_valid;
  assign _T_128 = io_mem_0_b_ready & io_mem_0_b_valid;
  assign _GEN_2 = _T_128 ? io_mem_0_b_bits_param : probe_bits_param;
  assign _GEN_3 = _T_128 ? io_mem_0_b_bits_size : probe_bits_size;
  assign _GEN_4 = _T_128 ? io_mem_0_b_bits_source : probe_bits_source;
  assign _GEN_5 = _T_128 ? io_mem_0_b_bits_address : probe_bits_address;
  assign _T_136 = io_cpu_s1_kill == 1'h0;
  assign s1_valid_masked = s1_valid & _T_136;
  assign _T_138 = _GEN_166 == 1'h0;
  assign s1_valid_not_nacked = s1_valid & _T_138;
  assign _T_140 = metaArb_io_out_bits_write == 1'h0;
  assign _T_141 = metaArb_io_out_valid & _T_140;
  assign _T_142 = metaArb_io_out_bits_addr[31:6];
  assign _T_143 = io_cpu_req_bits_addr[5:0];
  assign _T_144 = {_T_142,_T_143};
  assign _T_146 = metaArb_io_in_7_ready == 1'h0;
  assign _GEN_9 = _T_141 ? _T_144 : s1_req_addr;
  assign _GEN_10 = _T_141 ? io_cpu_req_bits_tag : s1_req_tag;
  assign _GEN_11 = _T_141 ? io_cpu_req_bits_cmd : s1_req_cmd;
  assign _GEN_12 = _T_141 ? io_cpu_req_bits_typ : s1_req_typ;
  assign _T_149 = s1_req_cmd == 5'h0;
  assign _T_151 = s1_req_cmd == 5'h6;
  assign _T_152 = _T_149 | _T_151;
  assign _T_154 = s1_req_cmd == 5'h7;
  assign _T_155 = _T_152 | _T_154;
  assign _T_160 = s1_req_cmd == 5'h4;
  assign _T_161 = s1_req_cmd == 5'h9;
  assign _T_162 = s1_req_cmd == 5'ha;
  assign _T_163 = s1_req_cmd == 5'hb;
  assign _T_164 = _T_160 | _T_161;
  assign _T_165 = _T_164 | _T_162;
  assign _T_166 = _T_165 | _T_163;
  assign _T_172 = s1_req_cmd == 5'h8;
  assign _T_173 = s1_req_cmd == 5'hc;
  assign _T_174 = s1_req_cmd == 5'hd;
  assign _T_175 = s1_req_cmd == 5'he;
  assign _T_176 = s1_req_cmd == 5'hf;
  assign _T_177 = _T_172 | _T_173;
  assign _T_178 = _T_177 | _T_174;
  assign _T_179 = _T_178 | _T_175;
  assign _T_180 = _T_179 | _T_176;
  assign _T_181 = _T_166 | _T_180;
  assign s1_read = _T_155 | _T_181;
  assign _T_183 = s1_req_cmd == 5'h1;
  assign _T_185 = s1_req_cmd == 5'h11;
  assign _T_186 = _T_183 | _T_185;
  assign _T_189 = _T_186 | _T_154;
  assign s1_write = _T_189 | _T_181;
  assign s1_readwrite = s1_read | s1_write;
  assign s1_sfence = s1_req_cmd == 5'h14;
  assign _T_226 = release_state == 3'h1;
  assign _T_227 = release_state == 3'h2;
  assign inWriteback = _T_226 | _T_227;
  assign _T_229 = release_state == 3'h0;
  assign _T_231 = cached_grant_wait == 1'h0;
  assign _T_232 = _T_229 & _T_231;
  assign _T_235 = _T_232 & _T_138;
  assign _T_240 = io_cpu_req_bits_cmd == 5'h0;
  assign _T_242 = io_cpu_req_bits_cmd == 5'h6;
  assign _T_243 = _T_240 | _T_242;
  assign _T_245 = io_cpu_req_bits_cmd == 5'h7;
  assign _T_246 = _T_243 | _T_245;
  assign _T_251 = io_cpu_req_bits_cmd == 5'h4;
  assign _T_252 = io_cpu_req_bits_cmd == 5'h9;
  assign _T_253 = io_cpu_req_bits_cmd == 5'ha;
  assign _T_254 = io_cpu_req_bits_cmd == 5'hb;
  assign _T_255 = _T_251 | _T_252;
  assign _T_256 = _T_255 | _T_253;
  assign _T_257 = _T_256 | _T_254;
  assign _T_263 = io_cpu_req_bits_cmd == 5'h8;
  assign _T_264 = io_cpu_req_bits_cmd == 5'hc;
  assign _T_265 = io_cpu_req_bits_cmd == 5'hd;
  assign _T_266 = io_cpu_req_bits_cmd == 5'he;
  assign _T_267 = io_cpu_req_bits_cmd == 5'hf;
  assign _T_268 = _T_263 | _T_264;
  assign _T_269 = _T_268 | _T_265;
  assign _T_270 = _T_269 | _T_266;
  assign _T_271 = _T_270 | _T_267;
  assign _T_272 = _T_257 | _T_271;
  assign _T_273 = _T_246 | _T_272;
  assign _T_275 = io_cpu_req_bits_cmd == 5'h1;
  assign _T_277 = io_cpu_req_bits_cmd == 5'h11;
  assign _T_278 = _T_275 | _T_277;
  assign _T_281 = _T_278 | _T_245;
  assign _T_308 = _T_281 | _T_272;
  assign _T_315 = _T_308 & _T_277;
  assign s0_needsRead = _T_273 | _T_315;
  assign _T_350 = io_cpu_req_valid & s0_needsRead;
  assign _T_358 = dataArb_io_in_3_ready == 1'h0;
  assign _T_359 = _T_358 & _T_273;
  assign _GEN_15 = _T_359 ? 1'h0 : _T_235;
  assign _GEN_17 = _T_146 ? 1'h0 : _GEN_15;
  assign tlb_clock = clock;
  assign tlb_reset = reset;
  assign tlb_io_req_valid = _T_378;
  assign tlb_io_req_bits_vaddr = s1_req_addr;
  assign tlb_io_req_bits_size = s1_req_typ[1:0];
  assign tlb_io_req_bits_cmd = s1_req_cmd;
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid;
  assign tlb_io_ptw_status_dprv = io_ptw_status_dprv;
  assign tlb_io_ptw_status_mxr = io_ptw_status_mxr;
  assign tlb_io_ptw_status_sum = io_ptw_status_sum;
  assign _T_377 = s1_readwrite | s1_sfence;
  assign _T_378 = s1_valid_masked & _T_377;
  assign _T_382 = tlb_io_req_ready == 1'h0;
  assign _T_384 = tlb_io_ptw_resp_valid == 1'h0;
  assign _T_385 = _T_382 & _T_384;
  assign _T_387 = io_cpu_req_bits_phys == 1'h0;
  assign _T_388 = _T_385 & _T_387;
  assign _GEN_18 = _T_388 ? 1'h0 : _GEN_17;
  assign _T_390 = s1_valid & s1_readwrite;
  assign _T_391 = _T_390 & tlb_io_resp_miss;
  assign _T_395 = metaArb_io_out_bits_addr[12:6];
  assign _T_396 = metaArb_io_out_valid & metaArb_io_out_bits_write;
  assign _T_397 = {metaArb_io_out_bits_data_coh_state,metaArb_io_out_bits_data_tag};
  assign _T_413 = metaArb_io_out_valid & _T_140;
  assign _T_427 = tag_array_0_s1_meta_data;
  assign _T_428 = _T_427[18:0];
  assign _T_429 = _T_427[20:19];
  assign _T_430 = tlb_io_resp_paddr[31:13];
  assign _T_432 = _T_429 > 2'h0;
  assign _T_433 = _T_428 == _T_430;
  assign s1_hit_way = _T_432 & _T_433;
  assign _T_439 = _T_433 ? _T_429 : 2'h0;
  assign _T_444 = inWriteback ? _GEN_205 : {{1'd0}, s1_hit_way};
  assign _T_446 = io_mem_0_d_bits_data[7:0];
  assign _T_447 = io_mem_0_d_bits_data[15:8];
  assign _T_448 = io_mem_0_d_bits_data[23:16];
  assign _T_449 = io_mem_0_d_bits_data[31:24];
  assign _T_450 = {_T_447,_T_446};
  assign _T_451 = {_T_449,_T_448};
  assign _T_452 = {_T_451,_T_450};
  assign s1_all_data_ways_0 = data_io_resp_0;
  assign _T_462 = s1_req_typ[1:0];
  assign _T_464 = s1_req_addr[0];
  assign _T_468 = _T_462 >= 2'h1;
  assign _T_472 = _T_464 | _T_468;
  assign _T_475 = _T_464 ? 1'h0 : 1'h1;
  assign _T_476 = {_T_472,_T_475};
  assign _T_477 = s1_req_addr[1];
  assign _T_479 = _T_477 ? _T_476 : 2'h0;
  assign _T_481 = _T_462 >= 2'h2;
  assign _T_484 = _T_481 ? 2'h3 : 2'h0;
  assign _T_485 = _T_479 | _T_484;
  assign _T_488 = _T_477 ? 2'h0 : _T_476;
  assign _T_489 = {_T_485,_T_488};
  assign s1_mask = _T_185 ? io_cpu_s1_data_mask : _T_489;
  assign _T_491 = s1_sfence == 1'h0;
  assign _T_492 = s1_valid_masked & _T_491;
  assign _T_496 = {io_cpu_s2_xcpt_pf_st,io_cpu_s2_xcpt_ae_ld};
  assign _T_497 = {_T_496,io_cpu_s2_xcpt_ae_st};
  assign _T_498 = {io_cpu_s2_xcpt_ma_ld,io_cpu_s2_xcpt_ma_st};
  assign _T_499 = {_T_498,io_cpu_s2_xcpt_pf_ld};
  assign _T_500 = {_T_499,_T_497};
  assign _T_502 = _T_500 != 6'h0;
  assign _T_504 = _T_502 == 1'h0;
  assign s2_valid = _T_495 & _T_504;
  assign _T_507 = s1_probe | s2_probe;
  assign _T_508 = release_state != 3'h0;
  assign releaseInFlight = _T_507 | _T_508;
  assign s2_valid_masked = s2_valid & _T_512;
  assign _T_513 = s2_req_addr[31:6];
  assign _GEN_249 = {{6'd0}, _T_513};
  assign acquire_address = _GEN_249 << 6;
  assign _T_516 = s1_valid_not_nacked | s1_flush_valid;
  assign _T_518 = tlb_io_resp_cacheable == 1'h0;
  assign _GEN_31 = _T_516 ? tlb_io_resp_paddr : s2_req_addr;
  assign _GEN_32 = _T_516 ? s1_req_tag : s2_req_tag;
  assign _GEN_33 = _T_516 ? s1_req_cmd : s2_req_cmd;
  assign _GEN_34 = _T_516 ? s1_req_typ : s2_req_typ;
  assign _GEN_37 = _T_516 ? _T_518 : s2_uncached;
  assign _T_520 = s2_req_cmd == 5'h0;
  assign _T_522 = s2_req_cmd == 5'h6;
  assign _T_523 = _T_520 | _T_522;
  assign _T_525 = s2_req_cmd == 5'h7;
  assign _T_526 = _T_523 | _T_525;
  assign _T_531 = s2_req_cmd == 5'h4;
  assign _T_532 = s2_req_cmd == 5'h9;
  assign _T_533 = s2_req_cmd == 5'ha;
  assign _T_534 = s2_req_cmd == 5'hb;
  assign _T_535 = _T_531 | _T_532;
  assign _T_536 = _T_535 | _T_533;
  assign _T_537 = _T_536 | _T_534;
  assign _T_543 = s2_req_cmd == 5'h8;
  assign _T_544 = s2_req_cmd == 5'hc;
  assign _T_545 = s2_req_cmd == 5'hd;
  assign _T_546 = s2_req_cmd == 5'he;
  assign _T_547 = s2_req_cmd == 5'hf;
  assign _T_548 = _T_543 | _T_544;
  assign _T_549 = _T_548 | _T_545;
  assign _T_550 = _T_549 | _T_546;
  assign _T_551 = _T_550 | _T_547;
  assign _T_552 = _T_537 | _T_551;
  assign s2_read = _T_526 | _T_552;
  assign _T_554 = s2_req_cmd == 5'h1;
  assign _T_556 = s2_req_cmd == 5'h11;
  assign _T_557 = _T_554 | _T_556;
  assign _T_560 = _T_557 | _T_525;
  assign s2_write = _T_560 | _T_552;
  assign s2_readwrite = s2_read | s2_write;
  assign s1_meta_clk_en = _T_516 | s1_probe;
  assign _GEN_38 = s1_meta_clk_en ? 1'h0 : s2_meta_errors;
  assign _GEN_39 = s1_meta_clk_en ? tag_array_0_s1_meta_data : _T_594;
  assign _T_599 = _T_594[18:0];
  assign _T_600 = _T_594[20:19];
  assign _T_603 = s2_meta_errors == 1'h0;
  assign s2_flush_valid = s2_flush_valid_pre_tag_ecc & _T_603;
  assign _T_604 = s1_valid | inWriteback;
  assign _T_605 = io_mem_0_d_ready & io_mem_0_d_valid;
  assign _T_606 = _T_604 | _T_605;
  assign _T_607 = _GEN_121[0];
  assign _T_608 = _GEN_121[1];
  assign _T_611 = _T_607 ? s1_all_data_ways_0 : 32'h0;
  assign _T_613 = _T_608 ? _T_452 : 32'h0;
  assign _T_614 = _T_611 | _T_613;
  assign _GEN_40 = _T_606 ? _T_614 : s2_data;
  assign _GEN_41 = s1_probe ? s1_hit_way : s2_probe_way;
  assign _GEN_42 = s1_probe ? _T_439 : s2_probe_state_state;
  assign _GEN_43 = s1_valid_not_nacked ? s1_hit_way : s2_hit_way;
  assign _GEN_44 = s1_valid_not_nacked ? _T_439 : s2_hit_state_state;
  assign _GEN_45 = s1_valid_not_nacked ? 1'h0 : s2_waw_hazard;
  assign s2_hit_valid = s2_hit_state_state > 2'h0;
  assign _T_696 = s2_req_cmd == 5'h3;
  assign _T_697 = s2_write | _T_696;
  assign _T_700 = _T_697 | _T_522;
  assign _T_701 = {s2_write,_T_700};
  assign _T_702 = {_T_701,s2_hit_state_state};
  assign _T_789 = 4'hc == _T_702;
  assign _T_791 = _T_789 ? 2'h1 : 2'h0;
  assign _T_792 = 4'hd == _T_702;
  assign _T_794 = _T_792 ? 2'h2 : _T_791;
  assign _T_795 = 4'h4 == _T_702;
  assign _T_797 = _T_795 ? 2'h1 : _T_794;
  assign _T_798 = 4'h5 == _T_702;
  assign _T_800 = _T_798 ? 2'h2 : _T_797;
  assign _T_801 = 4'h0 == _T_702;
  assign _T_803 = _T_801 ? 2'h0 : _T_800;
  assign _T_804 = 4'he == _T_702;
  assign _T_806 = _T_804 ? 2'h3 : _T_803;
  assign _T_807 = 4'hf == _T_702;
  assign _T_808 = _T_807 ? 1'h1 : _T_804;
  assign _T_809 = _T_807 ? 2'h3 : _T_806;
  assign _T_810 = 4'h6 == _T_702;
  assign _T_811 = _T_810 ? 1'h1 : _T_808;
  assign _T_812 = _T_810 ? 2'h2 : _T_809;
  assign _T_813 = 4'h7 == _T_702;
  assign _T_814 = _T_813 ? 1'h1 : _T_811;
  assign _T_815 = _T_813 ? 2'h3 : _T_812;
  assign _T_816 = 4'h1 == _T_702;
  assign _T_817 = _T_816 ? 1'h1 : _T_814;
  assign _T_818 = _T_816 ? 2'h1 : _T_815;
  assign _T_819 = 4'h2 == _T_702;
  assign _T_820 = _T_819 ? 1'h1 : _T_817;
  assign _T_821 = _T_819 ? 2'h2 : _T_818;
  assign _T_822 = 4'h3 == _T_702;
  assign s2_hit = _T_822 ? 1'h1 : _T_820;
  assign s2_grow_param = _T_822 ? 2'h3 : _T_821;
  assign _T_824 = s2_data[7:0];
  assign _T_825 = s2_data[15:8];
  assign _T_826 = s2_data[23:16];
  assign _T_827 = s2_data[31:24];
  assign _T_900 = s2_req_typ[1:0];
  assign _T_921 = {_T_825,_T_824};
  assign _T_922 = {_T_827,_T_826};
  assign s2_data_corrected = {_T_922,_T_921};
  assign _T_925 = s2_valid_masked & s2_readwrite;
  assign _T_928 = _T_925 & _T_603;
  assign s2_valid_hit_pre_data_ecc = _T_928 & s2_hit;
  assign _T_933 = s2_waw_hazard == 1'h0;
  assign s2_valid_hit = s2_valid_hit_pre_data_ecc & _T_933;
  assign _T_940 = s2_hit == 1'h0;
  assign _T_941 = _T_928 & _T_940;
  assign _T_943 = release_ack_wait == 1'h0;
  assign s2_valid_miss = _T_941 & _T_943;
  assign _T_945 = s2_uncached == 1'h0;
  assign _T_946 = s2_valid_miss & _T_945;
  assign _T_950 = uncachedInFlight_0 == 1'h0;
  assign s2_valid_cached_miss = _T_946 & _T_950;
  assign _T_953 = s2_valid_cached_miss | s2_flush_valid;
  assign _T_954 = s2_valid_miss & s2_uncached;
  assign _T_955 = ~ uncachedInFlight_0;
  assign _T_957 = _T_955 == 1'h0;
  assign _T_959 = _T_957 == 1'h0;
  assign s2_valid_uncached_pending = _T_954 & _T_959;
  assign _T_961 = s2_flush_valid_pre_tag_ecc == 1'h0;
  assign _T_962 = s2_hit_valid & _T_961;
  assign _GEN_46 = _T_516 ? 1'h0 : _T_965;
  assign _T_967 = 2'h1 << _T_965;
  assign s2_victim_way = _T_962 ? {{1'd0}, s2_hit_way} : _T_967;
  assign _T_968 = s2_req_addr[31:13];
  assign _GEN_47 = _T_516 ? _T_428 : _T_971;
  assign _T_973 = s2_flush_valid == 1'h0;
  assign _T_974 = s2_hit_valid & _T_973;
  assign _GEN_48 = _T_516 ? _T_429 : _T_977_state;
  assign s2_victim_state_state = _T_974 ? s2_hit_state_state : _T_977_state;
  assign _T_978 = {probe_bits_param,s2_probe_state_state};
  assign _T_1054 = 4'h8 == _T_978;
  assign _T_1056 = _T_1054 ? 3'h5 : 3'h0;
  assign _T_1058 = 4'h9 == _T_978;
  assign _T_1060 = _T_1058 ? 3'h2 : _T_1056;
  assign _T_1062 = 4'ha == _T_978;
  assign _T_1064 = _T_1062 ? 3'h1 : _T_1060;
  assign _T_1066 = 4'hb == _T_978;
  assign _T_1068 = _T_1066 ? 3'h1 : _T_1064;
  assign _T_1070 = 4'h4 == _T_978;
  assign _T_1071 = _T_1070 ? 1'h0 : _T_1066;
  assign _T_1072 = _T_1070 ? 3'h2 : _T_1068;
  assign _T_1074 = 4'h5 == _T_978;
  assign _T_1075 = _T_1074 ? 1'h0 : _T_1071;
  assign _T_1076 = _T_1074 ? 3'h4 : _T_1072;
  assign _T_1077 = _T_1074 ? 2'h1 : 2'h0;
  assign _T_1078 = 4'h6 == _T_978;
  assign _T_1079 = _T_1078 ? 1'h0 : _T_1075;
  assign _T_1080 = _T_1078 ? 3'h0 : _T_1076;
  assign _T_1081 = _T_1078 ? 2'h1 : _T_1077;
  assign _T_1082 = 4'h7 == _T_978;
  assign _T_1083 = _T_1082 ? 1'h1 : _T_1079;
  assign _T_1084 = _T_1082 ? 3'h0 : _T_1080;
  assign _T_1085 = _T_1082 ? 2'h1 : _T_1081;
  assign _T_1086 = 4'h0 == _T_978;
  assign _T_1087 = _T_1086 ? 1'h0 : _T_1083;
  assign _T_1088 = _T_1086 ? 3'h5 : _T_1084;
  assign _T_1089 = _T_1086 ? 2'h0 : _T_1085;
  assign _T_1090 = 4'h1 == _T_978;
  assign _T_1091 = _T_1090 ? 1'h0 : _T_1087;
  assign _T_1092 = _T_1090 ? 3'h4 : _T_1088;
  assign _T_1093 = _T_1090 ? 2'h1 : _T_1089;
  assign _T_1094 = 4'h2 == _T_978;
  assign _T_1095 = _T_1094 ? 1'h0 : _T_1091;
  assign _T_1096 = _T_1094 ? 3'h3 : _T_1092;
  assign _T_1097 = _T_1094 ? 2'h2 : _T_1093;
  assign _T_1098 = 4'h3 == _T_978;
  assign s2_prb_ack_data = _T_1098 ? 1'h1 : _T_1095;
  assign s2_report_param = _T_1098 ? 3'h3 : _T_1096;
  assign _T_1099 = _T_1098 ? 2'h2 : _T_1097;
  assign _T_1115 = {2'h2,s2_victim_state_state};
  assign _T_1191 = 4'h8 == _T_1115;
  assign _T_1193 = _T_1191 ? 3'h5 : 3'h0;
  assign _T_1195 = 4'h9 == _T_1115;
  assign _T_1197 = _T_1195 ? 3'h2 : _T_1193;
  assign _T_1199 = 4'ha == _T_1115;
  assign _T_1201 = _T_1199 ? 3'h1 : _T_1197;
  assign _T_1203 = 4'hb == _T_1115;
  assign _T_1205 = _T_1203 ? 3'h1 : _T_1201;
  assign _T_1207 = 4'h4 == _T_1115;
  assign _T_1208 = _T_1207 ? 1'h0 : _T_1203;
  assign _T_1209 = _T_1207 ? 3'h2 : _T_1205;
  assign _T_1211 = 4'h5 == _T_1115;
  assign _T_1212 = _T_1211 ? 1'h0 : _T_1208;
  assign _T_1213 = _T_1211 ? 3'h4 : _T_1209;
  assign _T_1214 = _T_1211 ? 2'h1 : 2'h0;
  assign _T_1215 = 4'h6 == _T_1115;
  assign _T_1216 = _T_1215 ? 1'h0 : _T_1212;
  assign _T_1217 = _T_1215 ? 3'h0 : _T_1213;
  assign _T_1218 = _T_1215 ? 2'h1 : _T_1214;
  assign _T_1219 = 4'h7 == _T_1115;
  assign _T_1220 = _T_1219 ? 1'h1 : _T_1216;
  assign _T_1221 = _T_1219 ? 3'h0 : _T_1217;
  assign _T_1222 = _T_1219 ? 2'h1 : _T_1218;
  assign _T_1223 = 4'h0 == _T_1115;
  assign _T_1224 = _T_1223 ? 1'h0 : _T_1220;
  assign _T_1225 = _T_1223 ? 3'h5 : _T_1221;
  assign _T_1226 = _T_1223 ? 2'h0 : _T_1222;
  assign _T_1227 = 4'h1 == _T_1115;
  assign _T_1228 = _T_1227 ? 1'h0 : _T_1224;
  assign _T_1229 = _T_1227 ? 3'h4 : _T_1225;
  assign _T_1230 = _T_1227 ? 2'h1 : _T_1226;
  assign _T_1231 = 4'h2 == _T_1115;
  assign _T_1232 = _T_1231 ? 1'h0 : _T_1228;
  assign _T_1233 = _T_1231 ? 3'h3 : _T_1229;
  assign _T_1234 = _T_1231 ? 2'h2 : _T_1230;
  assign _T_1235 = 4'h3 == _T_1115;
  assign s2_victim_dirty = _T_1235 ? 1'h1 : _T_1232;
  assign s2_shrink_param = _T_1235 ? 3'h3 : _T_1233;
  assign _T_1236 = _T_1235 ? 2'h2 : _T_1234;
  assign _T_1238 = s2_hit_state_state == s2_grow_param;
  assign s2_update_meta = _T_1238 == 1'h0;
  assign _T_1241 = s2_valid_hit == 1'h0;
  assign _T_1242 = s2_valid & _T_1241;
  assign _T_1243 = s2_valid_uncached_pending & io_mem_0_a_ready;
  assign _T_1245 = _T_1243 == 1'h0;
  assign _T_1246 = _T_1242 & _T_1245;
  assign _T_1247 = s2_valid_hit & s2_update_meta;
  assign _T_1248 = io_cpu_s2_nack | _T_1247;
  assign _GEN_49 = _T_1248 ? 1'h1 : _T_391;
  assign _T_1250 = s2_valid_masked | s2_flush_valid_pre_tag_ecc;
  assign _T_1251 = _T_1250 | s2_probe;
  assign _T_1252 = s2_meta_errors & _T_1251;
  assign _T_1259 = io_cpu_req_bits_addr[31:13];
  assign _T_1260 = s2_probe ? probe_bits_address : s2_req_addr;
  assign _T_1261 = _T_1260[12:0];
  assign _T_1262 = {_T_1259,_T_1261};
  assign _T_1266 = s2_victim_dirty == 1'h0;
  assign _T_1267 = _T_953 & _T_1266;
  assign _T_1268 = _T_1247 | _T_1267;
  assign _T_1271 = s2_req_addr[12:0];
  assign _T_1272 = {_T_1259,_T_1271};
  assign _T_1276_state = s2_valid_hit ? s2_grow_param : 2'h0;
  assign lrscValid = lrscCount > 5'h3;
  assign _T_1289 = lrscAddr == _T_513;
  assign _T_1290 = lrscValid & _T_1289;
  assign _T_1292 = _T_1290 == 1'h0;
  assign s2_sc_fail = _T_525 & _T_1292;
  assign _T_1293 = s2_valid_hit & _T_522;
  assign _GEN_50 = _T_1293 ? 5'h1f : lrscCount;
  assign _GEN_51 = _T_1293 ? _T_513 : lrscAddr;
  assign _T_1297 = lrscCount > 5'h0;
  assign _T_1299 = lrscCount - 5'h1;
  assign _T_1300 = $unsigned(_T_1299);
  assign _T_1301 = _T_1300[4:0];
  assign _GEN_52 = _T_1297 ? _T_1301 : _GEN_50;
  assign _T_1304 = s2_valid_masked & _T_1297;
  assign _T_1305 = _T_1304 | io_cpu_invalidate_lr;
  assign _GEN_53 = _T_1305 ? 5'h0 : _GEN_52;
  assign _T_1311 = s1_valid_not_nacked & s1_write;
  assign _GEN_54 = _T_1311 ? s1_req_cmd : pstore1_cmd;
  assign _GEN_55 = _T_1311 ? tlb_io_resp_paddr : pstore1_addr;
  assign _GEN_56 = _T_1311 ? io_cpu_s1_data_data : a_data;
  assign _GEN_58 = _T_1311 ? s1_mask : pstore1_mask;
  assign _T_1399 = s1_write & _T_185;
  assign _T_1400 = s1_read | _T_1399;
  assign _GEN_59 = _T_1311 ? _T_1400 : _T_1403;
  assign _T_1408 = _T_1453 & pstore2_valid;
  assign _T_1409 = s1_valid & s1_write;
  assign _T_1410 = _T_1409 | _T_1403;
  assign pstore_drain_structural = _T_1408 & _T_1410;
  assign pstore_drain_opportunistic = _T_350 == 1'h0;
  assign _T_1417 = s2_valid_uncached_pending == 1'h0;
  assign _T_1418 = _T_1242 & _T_1417;
  assign pstore_drain_on_miss = releaseInFlight | _T_1418;
  assign _T_1424 = _T_1403 == 1'h0;
  assign _T_1425 = _T_1453 & _T_1424;
  assign _T_1426 = _T_1425 | pstore2_valid;
  assign _T_1427 = pstore_drain_opportunistic | pstore_drain_on_miss;
  assign _T_1428 = _T_1426 & _T_1427;
  assign _T_1429 = pstore_drain_structural | _T_1428;
  assign _T_1430 = s2_valid_hit & s2_write;
  assign _T_1432 = s2_sc_fail == 1'h0;
  assign _T_1433 = _T_1430 & _T_1432;
  assign _T_1438 = _T_1433 == 1'h0;
  assign _T_1440 = _T_1436 == 1'h0;
  assign _T_1441 = _T_1438 | _T_1440;
  assign _T_1442 = _T_1441 | reset;
  assign _T_1444 = _T_1442 == 1'h0;
  assign _T_1448 = _T_1433 | _T_1436;
  assign _T_1449 = _T_1448 & pstore2_valid;
  assign _T_1451 = _T_1429 == 1'h0;
  assign _T_1452 = _T_1449 & _T_1451;
  assign _T_1453 = _T_1433 | _T_1436;
  assign _T_1455 = pstore2_valid == _T_1429;
  assign advance_pstore1 = _T_1448 & _T_1455;
  assign _T_1458 = pstore2_valid & _T_1451;
  assign _T_1459 = _T_1458 | advance_pstore1;
  assign _GEN_60 = advance_pstore1 ? pstore1_addr : pstore2_addr;
  assign _T_1464 = _GEN_225[7:0];
  assign _T_1465 = pstore1_mask[0];
  assign _GEN_62 = advance_pstore1 ? _T_1464 : _T_1469;
  assign _T_1470 = _GEN_225[15:8];
  assign _T_1471 = pstore1_mask[1];
  assign _GEN_63 = advance_pstore1 ? _T_1470 : _T_1475;
  assign _T_1476 = _GEN_225[23:16];
  assign _T_1477 = pstore1_mask[2];
  assign _GEN_64 = advance_pstore1 ? _T_1476 : _T_1481;
  assign _T_1482 = _GEN_225[31:24];
  assign _T_1483 = pstore1_mask[3];
  assign _GEN_65 = advance_pstore1 ? _T_1482 : _T_1487;
  assign _T_1488 = {_T_1475,_T_1469};
  assign _T_1489 = {_T_1487,_T_1481};
  assign pstore2_storegen_data = {_T_1489,_T_1488};
  assign _T_1496 = ~ pstore1_mask;
  assign _T_1498 = ~ _T_1496;
  assign _GEN_66 = advance_pstore1 ? _T_1498 : pstore2_storegen_mask;
  assign _T_1499 = pstore2_storegen_mask[0];
  assign _T_1500 = pstore2_storegen_mask[1];
  assign _T_1501 = pstore2_storegen_mask[2];
  assign _T_1502 = pstore2_storegen_mask[3];
  assign _T_1511 = {_T_1500,_T_1499};
  assign _T_1512 = {_T_1502,_T_1501};
  assign _T_1513 = {_T_1512,_T_1511};
  assign _T_1526 = {_T_1471,_T_1465};
  assign _T_1527 = {_T_1483,_T_1477};
  assign _T_1528 = {_T_1527,_T_1526};
  assign _T_1535 = pstore2_addr[12:2];
  assign _T_1546 = pstore2_valid ? pstore2_addr : pstore1_addr;
  assign _T_1548 = pstore2_valid ? pstore2_storegen_data : a_data;
  assign _T_1553 = pstore2_valid ? pstore2_storegen_mask : pstore1_mask;
  assign _T_1554 = _T_1553[0];
  assign _T_1555 = _T_1553[1];
  assign _T_1556 = _T_1553[2];
  assign _T_1557 = _T_1553[3];
  assign _T_1566 = {_T_1555,_T_1554};
  assign _T_1567 = {_T_1557,_T_1556};
  assign _T_1568 = {_T_1567,_T_1566};
  assign _T_1569 = pstore1_addr[12:2];
  assign _T_1570 = s1_req_addr[12:2];
  assign _T_1571 = _T_1569 == _T_1570;
  assign _T_1587 = _T_1528[0];
  assign _T_1588 = _T_1528[1];
  assign _T_1589 = _T_1528[2];
  assign _T_1590 = _T_1528[3];
  assign _T_1591 = {_T_1588,_T_1587};
  assign _T_1592 = {_T_1590,_T_1589};
  assign _T_1593 = {_T_1592,_T_1591};
  assign _T_1594 = s1_mask[0];
  assign _T_1595 = s1_mask[1];
  assign _T_1596 = s1_mask[2];
  assign _T_1597 = s1_mask[3];
  assign _T_1606 = {_T_1595,_T_1594};
  assign _T_1607 = {_T_1597,_T_1596};
  assign _T_1608 = {_T_1607,_T_1606};
  assign _T_1609 = _T_1608[0];
  assign _T_1610 = _T_1608[1];
  assign _T_1611 = _T_1608[2];
  assign _T_1612 = _T_1608[3];
  assign _T_1613 = {_T_1610,_T_1609};
  assign _T_1614 = {_T_1612,_T_1611};
  assign _T_1615 = {_T_1614,_T_1613};
  assign _T_1616 = _T_1593 & _T_1615;
  assign _T_1618 = _T_1616 != 4'h0;
  assign _T_1619 = pstore1_mask & s1_mask;
  assign _T_1621 = _T_1619 != 4'h0;
  assign _T_1622 = s1_write ? _T_1618 : _T_1621;
  assign _T_1623 = _T_1571 & _T_1622;
  assign _T_1624 = _T_1448 & _T_1623;
  assign _T_1627 = _T_1535 == _T_1570;
  assign _T_1643 = _T_1513[0];
  assign _T_1644 = _T_1513[1];
  assign _T_1645 = _T_1513[2];
  assign _T_1646 = _T_1513[3];
  assign _T_1647 = {_T_1644,_T_1643};
  assign _T_1648 = {_T_1646,_T_1645};
  assign _T_1649 = {_T_1648,_T_1647};
  assign _T_1672 = _T_1649 & _T_1615;
  assign _T_1674 = _T_1672 != 4'h0;
  assign _T_1675 = pstore2_storegen_mask & s1_mask;
  assign _T_1677 = _T_1675 != 4'h0;
  assign _T_1678 = s1_write ? _T_1674 : _T_1677;
  assign _T_1679 = _T_1627 & _T_1678;
  assign _T_1680 = pstore2_valid & _T_1679;
  assign s1_hazard = _T_1624 | _T_1680;
  assign s1_raw_hazard = s1_read & s1_hazard;
  assign _T_1685 = s1_valid & s1_raw_hazard;
  assign _GEN_67 = _T_1685 ? 1'h1 : _GEN_49;
  assign _GEN_250 = {{1'd0}, _T_955};
  assign _T_1688 = _GEN_250 << 1;
  assign _T_1689 = _T_1688[0];
  assign a_source = _T_1689 ? 1'h0 : 1'h1;
  assign acquire__param = {{1'd0}, s2_grow_param};
  assign get_size = {{2'd0}, _T_900};
  assign _T_1858 = _T_900[0];
  assign _T_1860 = 2'h1 << _T_1858;
  assign _T_1863 = _T_1860 | 2'h1;
  assign _T_1865 = _T_900 >= 2'h2;
  assign _T_1867 = _T_1863[1];
  assign _T_1868 = s2_req_addr[1];
  assign _T_1870 = _T_1868 == 1'h0;
  assign _T_1872 = _T_1867 & _T_1870;
  assign _T_1873 = _T_1865 | _T_1872;
  assign _T_1875 = _T_1867 & _T_1868;
  assign _T_1876 = _T_1865 | _T_1875;
  assign _T_1877 = _T_1863[0];
  assign _T_1878 = s2_req_addr[0];
  assign _T_1880 = _T_1878 == 1'h0;
  assign _T_1881 = _T_1870 & _T_1880;
  assign _T_1882 = _T_1877 & _T_1881;
  assign _T_1883 = _T_1873 | _T_1882;
  assign _T_1884 = _T_1870 & _T_1878;
  assign _T_1885 = _T_1877 & _T_1884;
  assign _T_1886 = _T_1873 | _T_1885;
  assign _T_1887 = _T_1868 & _T_1880;
  assign _T_1888 = _T_1877 & _T_1887;
  assign _T_1889 = _T_1876 | _T_1888;
  assign _T_1890 = _T_1868 & _T_1878;
  assign _T_1891 = _T_1877 & _T_1890;
  assign _T_1892 = _T_1876 | _T_1891;
  assign _T_1893 = {_T_1886,_T_1883};
  assign _T_1894 = {_T_1892,_T_1889};
  assign _T_1895 = {_T_1894,_T_1893};
  assign put_size = {{2'd0}, _T_900};
  assign _T_2071_size = {{2'd0}, _T_900};
  assign _T_2180_size = {{2'd0}, _T_900};
  assign _T_2289_size = {{2'd0}, _T_900};
  assign _T_2398_size = {{2'd0}, _T_900};
  assign _T_2507_size = {{2'd0}, _T_900};
  assign _T_2616_size = {{2'd0}, _T_900};
  assign _T_2725_size = {{2'd0}, _T_900};
  assign _T_2834_size = {{2'd0}, _T_900};
  assign _T_2943_size = {{2'd0}, _T_900};
  assign _T_2983 = 5'hf == s2_req_cmd;
  assign _T_2984_opcode = _T_2983 ? 3'h2 : 3'h0;
  assign _T_2984_param = _T_2983 ? 3'h3 : 3'h0;
  assign _T_2984_size = _T_2983 ? _T_2943_size : 4'h0;
  assign _T_2984_source = _T_2983 ? a_source : 1'h0;
  assign _T_2984_address = _T_2983 ? s2_req_addr : 32'h0;
  assign _T_2984_mask = _T_2983 ? _T_1895 : 4'h0;
  assign _T_2984_data = _T_2983 ? a_data : 32'h0;
  assign _T_2985 = 5'he == s2_req_cmd;
  assign _T_2986_opcode = _T_2985 ? 3'h2 : _T_2984_opcode;
  assign _T_2986_param = _T_2985 ? 3'h2 : _T_2984_param;
  assign _T_2986_size = _T_2985 ? _T_2834_size : _T_2984_size;
  assign _T_2986_source = _T_2985 ? a_source : _T_2984_source;
  assign _T_2986_address = _T_2985 ? s2_req_addr : _T_2984_address;
  assign _T_2986_mask = _T_2985 ? _T_1895 : _T_2984_mask;
  assign _T_2986_data = _T_2985 ? a_data : _T_2984_data;
  assign _T_2987 = 5'hd == s2_req_cmd;
  assign _T_2988_opcode = _T_2987 ? 3'h2 : _T_2986_opcode;
  assign _T_2988_param = _T_2987 ? 3'h1 : _T_2986_param;
  assign _T_2988_size = _T_2987 ? _T_2725_size : _T_2986_size;
  assign _T_2988_source = _T_2987 ? a_source : _T_2986_source;
  assign _T_2988_address = _T_2987 ? s2_req_addr : _T_2986_address;
  assign _T_2988_mask = _T_2987 ? _T_1895 : _T_2986_mask;
  assign _T_2988_data = _T_2987 ? a_data : _T_2986_data;
  assign _T_2989 = 5'hc == s2_req_cmd;
  assign _T_2990_opcode = _T_2989 ? 3'h2 : _T_2988_opcode;
  assign _T_2990_param = _T_2989 ? 3'h0 : _T_2988_param;
  assign _T_2990_size = _T_2989 ? _T_2616_size : _T_2988_size;
  assign _T_2990_source = _T_2989 ? a_source : _T_2988_source;
  assign _T_2990_address = _T_2989 ? s2_req_addr : _T_2988_address;
  assign _T_2990_mask = _T_2989 ? _T_1895 : _T_2988_mask;
  assign _T_2990_data = _T_2989 ? a_data : _T_2988_data;
  assign _T_2991 = 5'h8 == s2_req_cmd;
  assign _T_2992_opcode = _T_2991 ? 3'h2 : _T_2990_opcode;
  assign _T_2992_param = _T_2991 ? 3'h4 : _T_2990_param;
  assign _T_2992_size = _T_2991 ? _T_2507_size : _T_2990_size;
  assign _T_2992_source = _T_2991 ? a_source : _T_2990_source;
  assign _T_2992_address = _T_2991 ? s2_req_addr : _T_2990_address;
  assign _T_2992_mask = _T_2991 ? _T_1895 : _T_2990_mask;
  assign _T_2992_data = _T_2991 ? a_data : _T_2990_data;
  assign _T_2993 = 5'hb == s2_req_cmd;
  assign _T_2994_opcode = _T_2993 ? 3'h3 : _T_2992_opcode;
  assign _T_2994_param = _T_2993 ? 3'h2 : _T_2992_param;
  assign _T_2994_size = _T_2993 ? _T_2398_size : _T_2992_size;
  assign _T_2994_source = _T_2993 ? a_source : _T_2992_source;
  assign _T_2994_address = _T_2993 ? s2_req_addr : _T_2992_address;
  assign _T_2994_mask = _T_2993 ? _T_1895 : _T_2992_mask;
  assign _T_2994_data = _T_2993 ? a_data : _T_2992_data;
  assign _T_2995 = 5'ha == s2_req_cmd;
  assign _T_2996_opcode = _T_2995 ? 3'h3 : _T_2994_opcode;
  assign _T_2996_param = _T_2995 ? 3'h1 : _T_2994_param;
  assign _T_2996_size = _T_2995 ? _T_2289_size : _T_2994_size;
  assign _T_2996_source = _T_2995 ? a_source : _T_2994_source;
  assign _T_2996_address = _T_2995 ? s2_req_addr : _T_2994_address;
  assign _T_2996_mask = _T_2995 ? _T_1895 : _T_2994_mask;
  assign _T_2996_data = _T_2995 ? a_data : _T_2994_data;
  assign _T_2997 = 5'h9 == s2_req_cmd;
  assign _T_2998_opcode = _T_2997 ? 3'h3 : _T_2996_opcode;
  assign _T_2998_param = _T_2997 ? 3'h0 : _T_2996_param;
  assign _T_2998_size = _T_2997 ? _T_2180_size : _T_2996_size;
  assign _T_2998_source = _T_2997 ? a_source : _T_2996_source;
  assign _T_2998_address = _T_2997 ? s2_req_addr : _T_2996_address;
  assign _T_2998_mask = _T_2997 ? _T_1895 : _T_2996_mask;
  assign _T_2998_data = _T_2997 ? a_data : _T_2996_data;
  assign _T_2999 = 5'h4 == s2_req_cmd;
  assign atomics_opcode = _T_2999 ? 3'h3 : _T_2998_opcode;
  assign atomics_param = _T_2999 ? 3'h3 : _T_2998_param;
  assign atomics_size = _T_2999 ? _T_2071_size : _T_2998_size;
  assign atomics_source = _T_2999 ? a_source : _T_2998_source;
  assign atomics_address = _T_2999 ? s2_req_addr : _T_2998_address;
  assign atomics_mask = _T_2999 ? _T_1895 : _T_2998_mask;
  assign atomics_data = _T_2999 ? a_data : _T_2998_data;
  assign _T_3004 = s2_valid_cached_miss & _T_1266;
  assign _T_3005 = _T_3004 | s2_valid_uncached_pending;
  assign _T_3009 = s2_write == 1'h0;
  assign _T_3011 = s2_read == 1'h0;
  assign _T_3012_opcode = _T_3011 ? 3'h0 : atomics_opcode;
  assign _T_3012_param = _T_3011 ? 3'h0 : atomics_param;
  assign _T_3012_size = _T_3011 ? put_size : atomics_size;
  assign _T_3012_source = _T_3011 ? a_source : atomics_source;
  assign _T_3012_address = _T_3011 ? s2_req_addr : atomics_address;
  assign _T_3012_mask = _T_3011 ? _T_1895 : atomics_mask;
  assign _T_3012_data = _T_3011 ? a_data : atomics_data;
  assign _T_3013_opcode = _T_3009 ? 3'h4 : _T_3012_opcode;
  assign _T_3013_param = _T_3009 ? 3'h0 : _T_3012_param;
  assign _T_3013_size = _T_3009 ? get_size : _T_3012_size;
  assign _T_3013_source = _T_3009 ? a_source : _T_3012_source;
  assign _T_3013_address = _T_3009 ? s2_req_addr : _T_3012_address;
  assign _T_3013_mask = _T_3009 ? _T_1895 : _T_3012_mask;
  assign _T_3013_data = _T_3009 ? 32'h0 : _T_3012_data;
  assign _T_3014_opcode = _T_945 ? 3'h6 : _T_3013_opcode;
  assign _T_3014_param = _T_945 ? acquire__param : _T_3013_param;
  assign _T_3014_size = _T_945 ? 4'h6 : _T_3013_size;
  assign _T_3014_source = _T_945 ? 1'h0 : _T_3013_source;
  assign _T_3014_address = _T_945 ? acquire_address : _T_3013_address;
  assign _T_3014_mask = _T_945 ? 4'hf : _T_3013_mask;
  assign _T_3014_data = _T_945 ? 32'h0 : _T_3013_data;
  assign _T_3017 = 2'h1 << a_source;
  assign a_sel = _T_3017[1:1];
  assign _T_3019 = io_mem_0_a_ready & _T_3005;
  assign _GEN_68 = a_sel ? 1'h1 : uncachedInFlight_0;
  assign _GEN_69 = a_sel ? s2_req_addr : uncachedReqs_0_addr;
  assign _GEN_70 = a_sel ? s2_req_tag : uncachedReqs_0_tag;
  assign _GEN_72 = a_sel ? s2_req_typ : uncachedReqs_0_typ;
  assign _GEN_75 = s2_uncached ? _GEN_68 : uncachedInFlight_0;
  assign _GEN_76 = s2_uncached ? _GEN_69 : uncachedReqs_0_addr;
  assign _GEN_77 = s2_uncached ? _GEN_70 : uncachedReqs_0_tag;
  assign _GEN_79 = s2_uncached ? _GEN_72 : uncachedReqs_0_typ;
  assign _GEN_82 = _T_945 ? 1'h1 : cached_grant_wait;
  assign _GEN_83 = _T_3019 ? _GEN_75 : uncachedInFlight_0;
  assign _GEN_84 = _T_3019 ? _GEN_76 : uncachedReqs_0_addr;
  assign _GEN_85 = _T_3019 ? _GEN_77 : uncachedReqs_0_tag;
  assign _GEN_87 = _T_3019 ? _GEN_79 : uncachedReqs_0_typ;
  assign _GEN_90 = _T_3019 ? _GEN_82 : cached_grant_wait;
  assign _T_3028 = 27'hfff << io_mem_0_d_bits_size;
  assign _T_3029 = _T_3028[11:0];
  assign _T_3030 = ~ _T_3029;
  assign _T_3031 = _T_3030[11:2];
  assign _T_3032 = io_mem_0_d_bits_opcode[0];
  assign _T_3034 = _T_3032 ? _T_3031 : 10'h0;
  assign _T_3039 = _T_3037 - 10'h1;
  assign _T_3040 = $unsigned(_T_3039);
  assign _T_3041 = _T_3040[9:0];
  assign d_first = _T_3037 == 10'h0;
  assign _T_3044 = _T_3037 == 10'h1;
  assign _T_3046 = _T_3034 == 10'h0;
  assign d_last = _T_3044 | _T_3046;
  assign d_done = d_last & _T_605;
  assign _T_3047 = ~ _T_3041;
  assign _T_3048 = _T_3034 & _T_3047;
  assign _T_3049 = d_first ? _T_3034 : _T_3041;
  assign _GEN_91 = _T_605 ? _T_3049 : _T_3037;
  assign _GEN_251 = {{2'd0}, _T_3048};
  assign d_address_inc = _GEN_251 << 2;
  assign _T_3052 = io_mem_0_d_bits_opcode == 3'h4;
  assign _T_3053 = io_mem_0_d_bits_opcode == 3'h5;
  assign grantIsCached = _T_3052 | _T_3053;
  assign _T_3057 = io_mem_0_d_bits_opcode == 3'h0;
  assign _T_3058 = io_mem_0_d_bits_opcode == 3'h1;
  assign _T_3059 = io_mem_0_d_bits_opcode == 3'h2;
  assign _T_3060 = _T_3057 | _T_3058;
  assign grantIsUncached = _T_3060 | _T_3059;
  assign grantIsVoluntary = io_mem_0_d_bits_opcode == 3'h6;
  assign _T_3069 = blockProbeAfterGrantCount > 3'h0;
  assign _T_3071 = blockProbeAfterGrantCount - 3'h1;
  assign _T_3072 = $unsigned(_T_3071);
  assign _T_3073 = _T_3072[2:0];
  assign _GEN_92 = _T_3069 ? _T_3073 : blockProbeAfterGrantCount;
  assign _T_3075 = d_first == 1'h0;
  assign _T_3076 = _T_3075 | io_mem_0_e_ready;
  assign _T_3079 = grantIsCached ? _T_3076 : 1'h1;
  assign _T_3082 = cached_grant_wait | reset;
  assign _T_3084 = _T_3082 == 1'h0;
  assign _GEN_93 = d_last ? 1'h0 : _GEN_90;
  assign _GEN_94 = d_last ? 1'h0 : 1'h1;
  assign _GEN_95 = d_last ? 3'h7 : _GEN_92;
  assign _GEN_97 = grantIsCached ? _GEN_94 : grantInProgress;
  assign _GEN_98 = grantIsCached ? _GEN_93 : _GEN_90;
  assign _GEN_99 = grantIsCached ? _GEN_95 : _GEN_92;
  assign _T_3090 = grantIsCached == 1'h0;
  assign _T_3091 = _T_3090 & grantIsUncached;
  assign _T_3094 = 2'h1 << io_mem_0_d_bits_source;
  assign _T_3096 = _T_3094[1:1];
  assign _T_3099 = _T_3096 & d_last;
  assign _T_3100 = uncachedInFlight_0 | reset;
  assign _T_3102 = _T_3100 == 1'h0;
  assign _GEN_101 = _T_3099 ? 1'h0 : _GEN_83;
  assign _T_3107 = tlb_io_resp_paddr[31:2];
  assign _T_3108 = uncachedReqs_0_addr[1:0];
  assign _T_3109 = {_T_3107,_T_3108};
  assign _GEN_102 = _T_3058 ? 2'h2 : _T_444;
  assign _GEN_103 = _T_3058 ? 5'h0 : _GEN_33;
  assign _GEN_104 = _T_3058 ? uncachedReqs_0_typ : _GEN_34;
  assign _GEN_105 = _T_3058 ? uncachedReqs_0_tag : _GEN_32;
  assign _GEN_106 = _T_3058 ? _T_3109 : _GEN_31;
  assign _GEN_108 = _T_3091 ? _GEN_101 : _GEN_83;
  assign _GEN_109 = _T_3091 ? _GEN_102 : _T_444;
  assign _GEN_110 = _T_3091 ? _GEN_103 : _GEN_33;
  assign _GEN_111 = _T_3091 ? _GEN_104 : _GEN_34;
  assign _GEN_112 = _T_3091 ? _GEN_105 : _GEN_32;
  assign _GEN_113 = _T_3091 ? _GEN_106 : _GEN_31;
  assign _T_3113 = grantIsUncached == 1'h0;
  assign _T_3114 = _T_3090 & _T_3113;
  assign _T_3115 = _T_3114 & grantIsVoluntary;
  assign _T_3116 = release_ack_wait | reset;
  assign _T_3118 = _T_3116 == 1'h0;
  assign _GEN_115 = _T_3115 ? 1'h0 : release_ack_wait;
  assign _GEN_116 = _T_605 ? _GEN_97 : grantInProgress;
  assign _GEN_117 = _T_605 ? _GEN_98 : _GEN_90;
  assign _GEN_118 = _T_605 ? _GEN_99 : _GEN_92;
  assign _GEN_120 = _T_605 ? _GEN_108 : _GEN_83;
  assign _GEN_121 = _T_605 ? _GEN_109 : _T_444;
  assign _GEN_122 = _T_605 ? _GEN_110 : _GEN_33;
  assign _GEN_123 = _T_605 ? _GEN_111 : _GEN_34;
  assign _GEN_124 = _T_605 ? _GEN_112 : _GEN_32;
  assign _GEN_125 = _T_605 ? _GEN_113 : _GEN_31;
  assign _GEN_127 = _T_605 ? _GEN_115 : release_ack_wait;
  assign _T_3120 = io_mem_0_d_valid & d_first;
  assign _T_3121 = _T_3120 & grantIsCached;
  assign _T_3125 = io_mem_0_e_ready & io_mem_0_e_valid;
  assign _T_3127 = _T_605 & d_first;
  assign _T_3128 = _T_3127 & grantIsCached;
  assign _T_3129 = _T_3125 == _T_3128;
  assign _T_3130 = _T_3129 | reset;
  assign _T_3132 = _T_3130 == 1'h0;
  assign _T_3133 = io_mem_0_d_valid & _T_3053;
  assign _T_3136 = dataArb_io_in_1_ready == 1'h0;
  assign _T_3137 = _T_3053 & _T_3136;
  assign _GEN_128 = _T_3137 ? 1'h0 : _T_3121;
  assign _GEN_129 = _T_3137 ? 1'h0 : _T_3079;
  assign _GEN_252 = {{20'd0}, d_address_inc};
  assign _T_3141 = acquire_address | _GEN_252;
  assign _T_3146 = grantIsCached & d_done;
  assign _T_3148 = metaArb_io_in_3_valid == 1'h0;
  assign _T_3149 = _T_3148 | metaArb_io_in_3_ready;
  assign _T_3150 = _T_3149 | reset;
  assign _T_3152 = _T_3150 == 1'h0;
  assign _T_3234 = {_T_701,io_mem_0_d_bits_param};
  assign _T_3260 = 4'hc == _T_3234;
  assign _T_3261 = _T_3260 ? 2'h3 : 2'h0;
  assign _T_3262 = 4'h4 == _T_3234;
  assign _T_3263 = _T_3262 ? 2'h2 : _T_3261;
  assign _T_3264 = 4'h0 == _T_3234;
  assign _T_3265 = _T_3264 ? 2'h2 : _T_3263;
  assign _T_3266 = 4'h1 == _T_3234;
  assign _T_3267 = _T_3266 ? 2'h1 : _T_3265;
  assign _T_3272 = blockUncachedGrant | s1_valid;
  assign _T_3273 = _T_3058 & _T_3272;
  assign _GEN_130 = io_mem_0_d_valid ? 1'h0 : _GEN_18;
  assign _GEN_131 = io_mem_0_d_valid ? 1'h1 : _T_3133;
  assign _GEN_132 = io_mem_0_d_valid ? 1'h0 : 1'h1;
  assign _GEN_133 = io_mem_0_d_valid ? _T_3136 : dataArb_io_out_valid;
  assign _GEN_134 = _T_3273 ? 1'h0 : _GEN_129;
  assign _GEN_135 = _T_3273 ? _GEN_130 : _GEN_18;
  assign _GEN_136 = _T_3273 ? _GEN_131 : _T_3133;
  assign _GEN_137 = _T_3273 ? _GEN_132 : 1'h1;
  assign _GEN_138 = _T_3273 ? _GEN_133 : dataArb_io_out_valid;
  assign _T_3280 = releaseInFlight | grantInProgress;
  assign _T_3283 = _T_3280 | _T_3069;
  assign _T_3284 = _T_3283 | lrscValid;
  assign block_probe = _T_3284 | _T_1293;
  assign _T_3287 = block_probe == 1'h0;
  assign _T_3288 = io_mem_0_b_valid & _T_3287;
  assign _T_3291 = metaArb_io_in_6_ready & _T_3287;
  assign _T_3293 = s1_valid == 1'h0;
  assign _T_3294 = _T_3291 & _T_3293;
  assign _T_3296 = s2_valid == 1'h0;
  assign _T_3297 = _T_3296 | s2_valid_hit;
  assign _T_3298 = _T_3294 & _T_3297;
  assign _T_3301 = {1'h0,io_mem_0_b_bits_address};
  assign _T_3304 = io_mem_0_c_ready & io_mem_0_c_valid;
  assign _T_3307 = 27'hfff << io_mem_0_c_bits_size;
  assign _T_3308 = _T_3307[11:0];
  assign _T_3309 = ~ _T_3308;
  assign _T_3310 = _T_3309[11:2];
  assign _T_3311 = io_mem_0_c_bits_opcode[0];
  assign _T_3313 = _T_3311 ? _T_3310 : 10'h0;
  assign _T_3318 = _T_3316 - 10'h1;
  assign _T_3319 = $unsigned(_T_3318);
  assign _T_3320 = _T_3319[9:0];
  assign c_first = _T_3316 == 10'h0;
  assign _T_3323 = _T_3316 == 10'h1;
  assign _T_3325 = _T_3313 == 10'h0;
  assign c_last = _T_3323 | _T_3325;
  assign releaseDone = c_last & _T_3304;
  assign _T_3326 = ~ _T_3320;
  assign c_count = _T_3313 & _T_3326;
  assign _T_3327 = c_first ? _T_3313 : _T_3320;
  assign _GEN_139 = _T_3304 ? _T_3327 : _T_3316;
  assign _T_3329 = io_mem_0_c_ready == 1'h0;
  assign releaseRejected = io_mem_0_c_valid & _T_3329;
  assign _T_3330 = dataArb_io_in_2_ready & dataArb_io_in_2_valid;
  assign _T_3333 = releaseRejected == 1'h0;
  assign _T_3334 = s1_release_data_valid & _T_3333;
  assign _T_3337 = {1'h0,c_count};
  assign _T_3340 = {1'h0,s2_release_data_valid};
  assign _GEN_253 = {{1'd0}, s1_release_data_valid};
  assign _T_3341 = _GEN_253 + _T_3340;
  assign _T_3342 = _T_3341[1:0];
  assign _T_3343 = releaseRejected ? 2'h0 : _T_3342;
  assign _GEN_254 = {{9'd0}, _T_3343};
  assign _T_3344 = _T_3337 + _GEN_254;
  assign releaseDataBeat = _T_3344[10:0];
  assign _T_3359 = _T_953 & s2_victim_dirty;
  assign _T_3360 = s2_valid & s2_hit_valid;
  assign _T_3365 = _T_3360 == 1'h0;
  assign _T_3366 = _T_3365 | reset;
  assign _T_3368 = _T_3366 == 1'h0;
  assign _T_3369 = s2_req_addr[12:6];
  assign _T_3370 = {_T_971,_T_3369};
  assign _GEN_255 = {{6'd0}, _T_3370};
  assign _T_3371 = _GEN_255 << 6;
  assign _GEN_140 = _T_3359 ? 3'h1 : release_state;
  assign _GEN_141 = _T_3359 ? _T_3371 : _GEN_5;
  assign _GEN_142 = s2_meta_errors ? 3'h4 : _GEN_140;
  assign _T_3377 = _T_603 & s2_prb_ack_data;
  assign _GEN_143 = _T_3377 ? 3'h2 : _GEN_142;
  assign _T_3379 = s2_probe_state_state > 2'h0;
  assign _T_3383 = s2_prb_ack_data == 1'h0;
  assign _T_3384 = _T_603 & _T_3383;
  assign _T_3385 = _T_3384 & _T_3379;
  assign _T_3387 = releaseDone ? 3'h7 : 3'h3;
  assign _GEN_144 = _T_3385 ? 1'h1 : s2_release_data_valid;
  assign _GEN_146 = _T_3385 ? s2_report_param : 3'h5;
  assign _GEN_152 = _T_3385 ? _T_3387 : _GEN_143;
  assign _T_3394 = _T_3379 == 1'h0;
  assign _T_3395 = _T_3384 & _T_3394;
  assign _T_3398 = releaseDone == 1'h0;
  assign _T_3399 = releaseDone ? 3'h0 : 3'h5;
  assign _GEN_153 = _T_3395 ? 1'h1 : _GEN_144;
  assign _GEN_154 = _T_3395 ? _T_3398 : 1'h1;
  assign _GEN_155 = _T_3395 ? _T_3399 : _GEN_152;
  assign _GEN_156 = _GEN_154 ? 1'h1 : _GEN_67;
  assign _GEN_157 = s2_probe ? _GEN_155 : _GEN_140;
  assign _GEN_158 = s2_probe ? _GEN_153 : s2_release_data_valid;
  assign _GEN_160 = s2_probe ? _GEN_146 : 3'h5;
  assign _GEN_166 = s2_probe ? _GEN_156 : _GEN_67;
  assign _T_3401 = release_state == 3'h4;
  assign _T_3404 = {1'h0,probe_bits_address};
  assign _GEN_167 = metaArb_io_in_6_ready ? 3'h0 : _GEN_157;
  assign _GEN_168 = metaArb_io_in_6_ready ? 1'h1 : _T_128;
  assign _GEN_169 = _T_3401 ? 1'h1 : _T_3288;
  assign _GEN_170 = _T_3401 ? _T_3404 : _T_3301;
  assign _GEN_171 = _T_3401 ? _GEN_167 : _GEN_157;
  assign _GEN_172 = _T_3401 ? _GEN_168 : _T_128;
  assign _T_3406 = release_state == 3'h5;
  assign _GEN_173 = releaseDone ? 3'h0 : _GEN_171;
  assign _GEN_174 = _T_3406 ? 1'h1 : _GEN_158;
  assign _GEN_175 = _T_3406 ? _GEN_173 : _GEN_171;
  assign _T_3408 = release_state == 3'h3;
  assign _GEN_176 = releaseDone ? 3'h7 : _GEN_175;
  assign _GEN_177 = _T_3408 ? 1'h1 : _GEN_174;
  assign _GEN_179 = _T_3408 ? s2_report_param : _GEN_160;
  assign _GEN_185 = _T_3408 ? _GEN_176 : _GEN_175;
  assign _GEN_186 = releaseDone ? 3'h7 : _GEN_185;
  assign _GEN_187 = _T_227 ? 3'h5 : 3'h4;
  assign _GEN_188 = _T_227 ? s2_report_param : _GEN_179;
  assign _GEN_194 = _T_227 ? _GEN_186 : _GEN_185;
  assign _T_3412 = release_state == 3'h6;
  assign _T_3413 = _T_226 | _T_3412;
  assign _GEN_195 = releaseDone ? 3'h6 : _GEN_194;
  assign _T_3480 = _T_3304 & c_first;
  assign _GEN_196 = _T_3480 ? 1'h1 : _GEN_127;
  assign _GEN_197 = _T_3413 ? 3'h7 : _GEN_187;
  assign _GEN_198 = _T_3413 ? s2_shrink_param : _GEN_188;
  assign _GEN_199 = _T_3413 ? 4'h6 : probe_bits_size;
  assign _GEN_200 = _T_3413 ? 1'h0 : probe_bits_source;
  assign _GEN_204 = _T_3413 ? _T_1236 : _T_1099;
  assign _GEN_205 = _T_3413 ? s2_victim_way : {{1'd0}, s2_probe_way};
  assign _GEN_206 = _T_3413 ? _GEN_195 : _GEN_194;
  assign _GEN_207 = _T_3413 ? _GEN_196 : _GEN_127;
  assign _T_3483 = releaseDataBeat < 11'h10;
  assign _T_3484 = inWriteback & _T_3483;
  assign _T_3486 = releaseDataBeat[3:0];
  assign _GEN_259 = {{2'd0}, _T_3486};
  assign _T_3487 = _GEN_259 << 2;
  assign _GEN_260 = {{26'd0}, _T_3487};
  assign _T_3488 = io_mem_0_c_bits_address | _GEN_260;
  assign _T_3494 = release_state == 3'h7;
  assign _T_3495 = _T_3412 | _T_3494;
  assign _T_3498 = io_mem_0_c_bits_address[12:0];
  assign _T_3499 = {_T_1259,_T_3498};
  assign _T_3500 = io_mem_0_c_bits_address[31:13];
  assign _T_3501 = metaArb_io_in_4_ready & metaArb_io_in_4_valid;
  assign _GEN_208 = _T_3501 ? 3'h0 : _GEN_206;
  assign _T_3503 = s1_valid | s2_valid;
  assign _T_3504 = _T_3503 | cached_grant_wait;
  assign _T_3507 = _T_3504 | uncachedInFlight_0;
  assign _T_3509 = _T_3507 == 1'h0;
  assign s1_xcpt_valid = tlb_io_req_valid & _T_138;
  assign _GEN_211 = s1_valid_not_nacked ? tlb_io_resp_pf_ld : _T_3515_pf_ld;
  assign _GEN_212 = s1_valid_not_nacked ? tlb_io_resp_pf_st : _T_3515_pf_st;
  assign _GEN_214 = s1_valid_not_nacked ? tlb_io_resp_ae_ld : _T_3515_ae_ld;
  assign _GEN_215 = s1_valid_not_nacked ? tlb_io_resp_ae_st : _T_3515_ae_st;
  assign _GEN_217 = s1_valid_not_nacked ? tlb_io_resp_ma_ld : _T_3515_ma_ld;
  assign _GEN_218 = s1_valid_not_nacked ? tlb_io_resp_ma_st : _T_3515_ma_st;
  assign _T_3534_pf_ld = _T_3513 ? _T_3515_pf_ld : 1'h0;
  assign _T_3534_pf_st = _T_3513 ? _T_3515_pf_st : 1'h0;
  assign _T_3534_ae_ld = _T_3513 ? _T_3515_ae_ld : 1'h0;
  assign _T_3534_ae_st = _T_3513 ? _T_3515_ae_st : 1'h0;
  assign _T_3534_ma_ld = _T_3513 ? _T_3515_ma_ld : 1'h0;
  assign _T_3534_ma_st = _T_3513 ? _T_3515_ma_st : 1'h0;
  assign _T_3536 = _T_605 & _T_3058;
  assign _T_3540 = _T_1241 | reset;
  assign _T_3542 = _T_3540 == 1'h0;
  assign _GEN_222 = doUncachedResp ? 1'h1 : s2_valid_hit;
  assign _T_3545 = s2_req_typ[2];
  assign _T_3547 = _T_3545 == 1'h0;
  assign _T_3550 = s2_data_corrected[31:16];
  assign _T_3551 = s2_data_corrected[15:0];
  assign _T_3552 = _T_1868 ? _T_3550 : _T_3551;
  assign _T_3558 = _T_900 == 2'h1;
  assign _T_3560 = _T_3552[15];
  assign _T_3561 = _T_3547 & _T_3560;
  assign _T_3565 = _T_3561 ? 16'hffff : 16'h0;
  assign _T_3567 = _T_3558 ? _T_3565 : _T_3550;
  assign _T_3568 = {_T_3567,_T_3552};
  assign _T_3570 = _T_3568[15:8];
  assign _T_3571 = _T_3568[7:0];
  assign _T_3572 = _T_1878 ? _T_3570 : _T_3571;
  assign _T_3576 = _T_525 ? 8'h0 : _T_3572;
  assign _T_3578 = _T_900 == 2'h0;
  assign _T_3579 = _T_3578 | _T_525;
  assign _T_3580 = _T_3576[7];
  assign _T_3581 = _T_3547 & _T_3580;
  assign _T_3585 = _T_3581 ? 24'hffffff : 24'h0;
  assign _T_3586 = _T_3568[31:8];
  assign _T_3587 = _T_3579 ? _T_3585 : _T_3586;
  assign _T_3588 = {_T_3587,_T_3576};
  assign _GEN_261 = {{31'd0}, s2_sc_fail};
  assign _T_3589 = _T_3588 | _GEN_261;
  assign AMOALU_io_mask = pstore1_mask;
  assign AMOALU_io_cmd = pstore1_cmd;
  assign AMOALU_io_lhs = s2_data_corrected;
  assign AMOALU_io_rhs = a_data;
  assign _GEN_225 = AMOALU_io_out;
  assign flushCounterNext = flushCounter + 7'h1;
  assign _T_3599 = flushCounterNext[7:7];
  assign _T_3602 = s2_req_cmd == 5'h5;
  assign _T_3603 = s2_valid_masked & _T_3602;
  assign _T_3605 = flushed == 1'h0;
  assign _T_3614 = _T_943 & _T_950;
  assign _GEN_226 = _T_3605 ? _T_3614 : flushing;
  assign _GEN_227 = _T_3603 ? _T_3605 : _T_1246;
  assign _GEN_228 = _T_3603 ? _GEN_226 : flushing;
  assign _T_3615 = metaArb_io_in_5_ready & metaArb_io_in_5_valid;
  assign _T_3617 = s1_flush_valid == 1'h0;
  assign _T_3618 = _T_3615 & _T_3617;
  assign _T_3621 = _T_3618 & _T_961;
  assign _T_3623 = _T_3621 & _T_229;
  assign _T_3626 = _T_3623 & _T_943;
  assign _GEN_262 = {{6'd0}, flushCounter};
  assign _T_3630 = _GEN_262 << 6;
  assign _T_3631 = {_T_1259,_T_3630};
  assign _T_3637 = _T_3019 & _T_945;
  assign _GEN_229 = _T_3637 ? 1'h0 : flushed;
  assign _GEN_230 = _T_3599 ? 1'h1 : _GEN_229;
  assign _GEN_231 = s2_flush_valid ? flushCounterNext : {{1'd0}, flushCounter};
  assign _GEN_232 = s2_flush_valid ? _GEN_230 : _GEN_229;
  assign _T_3642 = flushed & _T_229;
  assign _T_3645 = _T_3642 & _T_943;
  assign _GEN_233 = _T_3645 ? 1'h0 : _GEN_228;
  assign _GEN_235 = flushing ? _GEN_231 : {{1'd0}, flushCounter};
  assign _GEN_236 = flushing ? _GEN_232 : _GEN_229;
  assign _GEN_237 = flushing ? _GEN_233 : _GEN_228;
  assign _GEN_238 = _T_3599 ? 1'h0 : resetting;
  assign _GEN_239 = resetting ? flushCounterNext : _GEN_235;
  assign _GEN_240 = resetting ? _GEN_238 : resetting;
  assign _GEN_263 = _T_605 & grantIsCached;
  assign _GEN_265 = _T_605 & _T_3091;
  assign _GEN_266 = _GEN_265 & _T_3099;
  assign _GEN_269 = _T_605 & _T_3115;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    tag_array_0[initvar] = _RAND_0[20:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  tag_array_0_s1_meta_addr_pipe_0 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  s1_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  s1_probe = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  probe_bits_param = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  probe_bits_size = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  probe_bits_source = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  probe_bits_address = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  s1_req_addr = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  s1_req_tag = _RAND_9[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  s1_req_cmd = _RAND_10[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  s1_req_typ = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  s1_flush_valid = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  cached_grant_wait = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  release_ack_wait = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  release_state = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  uncachedInFlight_0 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  uncachedReqs_0_addr = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  uncachedReqs_0_tag = _RAND_18[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  uncachedReqs_0_typ = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  _T_495 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  s2_probe = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  _T_512 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  s2_req_addr = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  s2_req_tag = _RAND_24[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  s2_req_cmd = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  s2_req_typ = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  s2_uncached = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  s2_flush_valid_pre_tag_ecc = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  s2_meta_errors = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  _T_594 = _RAND_30[20:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  s2_data = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  s2_probe_way = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  s2_probe_state_state = _RAND_33[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  s2_hit_way = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  s2_hit_state_state = _RAND_35[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  s2_waw_hazard = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  _T_965 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  _T_971 = _RAND_38[18:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  _T_977_state = _RAND_39[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  lrscCount = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  lrscAddr = _RAND_41[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  pstore1_cmd = _RAND_42[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  pstore1_addr = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  a_data = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  pstore1_mask = _RAND_45[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  _T_1403 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  pstore2_valid = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  _T_1436 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  pstore2_addr = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  _T_1469 = _RAND_50[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  _T_1475 = _RAND_51[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  _T_1481 = _RAND_52[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  _T_1487 = _RAND_53[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  pstore2_storegen_mask = _RAND_54[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  _T_3037 = _RAND_55[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  grantInProgress = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  blockProbeAfterGrantCount = _RAND_57[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  blockUncachedGrant = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  _T_3316 = _RAND_59[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  s1_release_data_valid = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  s2_release_data_valid = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  _T_3513 = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  _T_3515_pf_ld = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  _T_3515_pf_st = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  _T_3515_ae_ld = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  _T_3515_ae_st = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  _T_3515_ma_ld = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  _T_3515_ma_st = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  doUncachedResp = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  resetting = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  flushed = _RAND_71[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  flushing = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  flushCounter = _RAND_73[6:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(tag_array_0__T_405_en & tag_array_0__T_405_mask) begin
      tag_array_0[tag_array_0__T_405_addr] <= tag_array_0__T_405_data;
    end
    if (_GEN_243) begin
      tag_array_0_s1_meta_addr_pipe_0 <= _T_395;
    end
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= _T_125;
    end
    if (reset) begin
      s1_probe <= 1'h0;
    end else begin
      if (_T_3401) begin
        if (metaArb_io_in_6_ready) begin
          s1_probe <= 1'h1;
        end else begin
          s1_probe <= _T_128;
        end
      end else begin
        s1_probe <= _T_128;
      end
    end
    if (_T_128) begin
      probe_bits_param <= io_mem_0_b_bits_param;
    end
    if (_T_128) begin
      probe_bits_size <= io_mem_0_b_bits_size;
    end
    if (_T_128) begin
      probe_bits_source <= io_mem_0_b_bits_source;
    end
    if (_T_3359) begin
      probe_bits_address <= _T_3371;
    end else begin
      if (_T_128) begin
        probe_bits_address <= io_mem_0_b_bits_address;
      end
    end
    if (_T_141) begin
      s1_req_addr <= _T_144;
    end
    if (_T_141) begin
      s1_req_tag <= io_cpu_req_bits_tag;
    end
    if (_T_141) begin
      s1_req_cmd <= io_cpu_req_bits_cmd;
    end
    if (_T_141) begin
      s1_req_typ <= io_cpu_req_bits_typ;
    end
    s1_flush_valid <= _T_3626;
    if (reset) begin
      cached_grant_wait <= 1'h0;
    end else begin
      if (_T_605) begin
        if (grantIsCached) begin
          if (d_last) begin
            cached_grant_wait <= 1'h0;
          end else begin
            if (_T_3019) begin
              if (_T_945) begin
                cached_grant_wait <= 1'h1;
              end
            end
          end
        end else begin
          if (_T_3019) begin
            if (_T_945) begin
              cached_grant_wait <= 1'h1;
            end
          end
        end
      end else begin
        if (_T_3019) begin
          if (_T_945) begin
            cached_grant_wait <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      release_ack_wait <= 1'h0;
    end else begin
      if (_T_3413) begin
        if (_T_3480) begin
          release_ack_wait <= 1'h1;
        end else begin
          if (_T_605) begin
            if (_T_3115) begin
              release_ack_wait <= 1'h0;
            end
          end
        end
      end else begin
        if (_T_605) begin
          if (_T_3115) begin
            release_ack_wait <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      release_state <= 3'h0;
    end else begin
      if (_T_3501) begin
        release_state <= 3'h0;
      end else begin
        if (_T_3413) begin
          if (releaseDone) begin
            release_state <= 3'h6;
          end else begin
            if (_T_227) begin
              if (releaseDone) begin
                release_state <= 3'h7;
              end else begin
                if (_T_3408) begin
                  if (releaseDone) begin
                    release_state <= 3'h7;
                  end else begin
                    if (_T_3406) begin
                      if (releaseDone) begin
                        release_state <= 3'h0;
                      end else begin
                        if (_T_3401) begin
                          if (metaArb_io_in_6_ready) begin
                            release_state <= 3'h0;
                          end else begin
                            if (s2_probe) begin
                              if (_T_3395) begin
                                if (releaseDone) begin
                                  release_state <= 3'h0;
                                end else begin
                                  release_state <= 3'h5;
                                end
                              end else begin
                                if (_T_3385) begin
                                  if (releaseDone) begin
                                    release_state <= 3'h7;
                                  end else begin
                                    release_state <= 3'h3;
                                  end
                                end else begin
                                  if (_T_3377) begin
                                    release_state <= 3'h2;
                                  end else begin
                                    if (s2_meta_errors) begin
                                      release_state <= 3'h4;
                                    end else begin
                                      if (_T_3359) begin
                                        release_state <= 3'h1;
                                      end
                                    end
                                  end
                                end
                              end
                            end else begin
                              if (_T_3359) begin
                                release_state <= 3'h1;
                              end
                            end
                          end
                        end else begin
                          if (s2_probe) begin
                            if (_T_3395) begin
                              if (releaseDone) begin
                                release_state <= 3'h0;
                              end else begin
                                release_state <= 3'h5;
                              end
                            end else begin
                              if (_T_3385) begin
                                if (releaseDone) begin
                                  release_state <= 3'h7;
                                end else begin
                                  release_state <= 3'h3;
                                end
                              end else begin
                                if (_T_3377) begin
                                  release_state <= 3'h2;
                                end else begin
                                  if (s2_meta_errors) begin
                                    release_state <= 3'h4;
                                  end else begin
                                    if (_T_3359) begin
                                      release_state <= 3'h1;
                                    end
                                  end
                                end
                              end
                            end
                          end else begin
                            if (_T_3359) begin
                              release_state <= 3'h1;
                            end
                          end
                        end
                      end
                    end else begin
                      if (_T_3401) begin
                        if (metaArb_io_in_6_ready) begin
                          release_state <= 3'h0;
                        end else begin
                          if (s2_probe) begin
                            if (_T_3395) begin
                              if (releaseDone) begin
                                release_state <= 3'h0;
                              end else begin
                                release_state <= 3'h5;
                              end
                            end else begin
                              if (_T_3385) begin
                                if (releaseDone) begin
                                  release_state <= 3'h7;
                                end else begin
                                  release_state <= 3'h3;
                                end
                              end else begin
                                if (_T_3377) begin
                                  release_state <= 3'h2;
                                end else begin
                                  if (s2_meta_errors) begin
                                    release_state <= 3'h4;
                                  end else begin
                                    release_state <= _GEN_140;
                                  end
                                end
                              end
                            end
                          end else begin
                            release_state <= _GEN_140;
                          end
                        end
                      end else begin
                        if (s2_probe) begin
                          if (_T_3395) begin
                            if (releaseDone) begin
                              release_state <= 3'h0;
                            end else begin
                              release_state <= 3'h5;
                            end
                          end else begin
                            if (_T_3385) begin
                              if (releaseDone) begin
                                release_state <= 3'h7;
                              end else begin
                                release_state <= 3'h3;
                              end
                            end else begin
                              if (_T_3377) begin
                                release_state <= 3'h2;
                              end else begin
                                if (s2_meta_errors) begin
                                  release_state <= 3'h4;
                                end else begin
                                  release_state <= _GEN_140;
                                end
                              end
                            end
                          end
                        end else begin
                          release_state <= _GEN_140;
                        end
                      end
                    end
                  end
                end else begin
                  if (_T_3406) begin
                    if (releaseDone) begin
                      release_state <= 3'h0;
                    end else begin
                      if (_T_3401) begin
                        if (metaArb_io_in_6_ready) begin
                          release_state <= 3'h0;
                        end else begin
                          release_state <= _GEN_157;
                        end
                      end else begin
                        release_state <= _GEN_157;
                      end
                    end
                  end else begin
                    if (_T_3401) begin
                      if (metaArb_io_in_6_ready) begin
                        release_state <= 3'h0;
                      end else begin
                        release_state <= _GEN_157;
                      end
                    end else begin
                      release_state <= _GEN_157;
                    end
                  end
                end
              end
            end else begin
              if (_T_3408) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  if (_T_3406) begin
                    if (releaseDone) begin
                      release_state <= 3'h0;
                    end else begin
                      release_state <= _GEN_171;
                    end
                  end else begin
                    release_state <= _GEN_171;
                  end
                end
              end else begin
                if (_T_3406) begin
                  if (releaseDone) begin
                    release_state <= 3'h0;
                  end else begin
                    release_state <= _GEN_171;
                  end
                end else begin
                  release_state <= _GEN_171;
                end
              end
            end
          end
        end else begin
          if (_T_227) begin
            if (releaseDone) begin
              release_state <= 3'h7;
            end else begin
              if (_T_3408) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  release_state <= _GEN_175;
                end
              end else begin
                release_state <= _GEN_175;
              end
            end
          end else begin
            if (_T_3408) begin
              if (releaseDone) begin
                release_state <= 3'h7;
              end else begin
                release_state <= _GEN_175;
              end
            end else begin
              release_state <= _GEN_175;
            end
          end
        end
      end
    end
    if (reset) begin
      uncachedInFlight_0 <= 1'h0;
    end else begin
      if (_T_605) begin
        if (_T_3091) begin
          if (_T_3099) begin
            uncachedInFlight_0 <= 1'h0;
          end else begin
            if (_T_3019) begin
              if (s2_uncached) begin
                if (a_sel) begin
                  uncachedInFlight_0 <= 1'h1;
                end
              end
            end
          end
        end else begin
          if (_T_3019) begin
            if (s2_uncached) begin
              if (a_sel) begin
                uncachedInFlight_0 <= 1'h1;
              end
            end
          end
        end
      end else begin
        if (_T_3019) begin
          if (s2_uncached) begin
            if (a_sel) begin
              uncachedInFlight_0 <= 1'h1;
            end
          end
        end
      end
    end
    if (_T_3019) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_addr <= s2_req_addr;
        end
      end
    end
    if (_T_3019) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_tag <= s2_req_tag;
        end
      end
    end
    if (_T_3019) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_typ <= s2_req_typ;
        end
      end
    end
    if (reset) begin
      _T_495 <= 1'h0;
    end else begin
      _T_495 <= _T_492;
    end
    if (reset) begin
      s2_probe <= 1'h0;
    end else begin
      s2_probe <= s1_probe;
    end
    _T_512 <= _T_138;
    if (_T_605) begin
      if (_T_3091) begin
        if (_T_3058) begin
          s2_req_addr <= _T_3109;
        end else begin
          if (_T_516) begin
            s2_req_addr <= tlb_io_resp_paddr;
          end
        end
      end else begin
        if (_T_516) begin
          s2_req_addr <= tlb_io_resp_paddr;
        end
      end
    end else begin
      if (_T_516) begin
        s2_req_addr <= tlb_io_resp_paddr;
      end
    end
    if (_T_605) begin
      if (_T_3091) begin
        if (_T_3058) begin
          s2_req_tag <= uncachedReqs_0_tag;
        end else begin
          if (_T_516) begin
            s2_req_tag <= s1_req_tag;
          end
        end
      end else begin
        if (_T_516) begin
          s2_req_tag <= s1_req_tag;
        end
      end
    end else begin
      if (_T_516) begin
        s2_req_tag <= s1_req_tag;
      end
    end
    if (_T_605) begin
      if (_T_3091) begin
        if (_T_3058) begin
          s2_req_cmd <= 5'h0;
        end else begin
          if (_T_516) begin
            s2_req_cmd <= s1_req_cmd;
          end
        end
      end else begin
        if (_T_516) begin
          s2_req_cmd <= s1_req_cmd;
        end
      end
    end else begin
      if (_T_516) begin
        s2_req_cmd <= s1_req_cmd;
      end
    end
    if (_T_605) begin
      if (_T_3091) begin
        if (_T_3058) begin
          s2_req_typ <= uncachedReqs_0_typ;
        end else begin
          if (_T_516) begin
            s2_req_typ <= s1_req_typ;
          end
        end
      end else begin
        if (_T_516) begin
          s2_req_typ <= s1_req_typ;
        end
      end
    end else begin
      if (_T_516) begin
        s2_req_typ <= s1_req_typ;
      end
    end
    if (_T_516) begin
      s2_uncached <= _T_518;
    end
    s2_flush_valid_pre_tag_ecc <= s1_flush_valid;
    if (s1_meta_clk_en) begin
      s2_meta_errors <= 1'h0;
    end
    if (s1_meta_clk_en) begin
      _T_594 <= tag_array_0_s1_meta_data;
    end
    if (_T_606) begin
      s2_data <= _T_614;
    end
    if (s1_probe) begin
      s2_probe_way <= s1_hit_way;
    end
    if (s1_probe) begin
      if (_T_433) begin
        s2_probe_state_state <= _T_429;
      end else begin
        s2_probe_state_state <= 2'h0;
      end
    end
    if (s1_valid_not_nacked) begin
      s2_hit_way <= s1_hit_way;
    end
    if (s1_valid_not_nacked) begin
      if (_T_433) begin
        s2_hit_state_state <= _T_429;
      end else begin
        s2_hit_state_state <= 2'h0;
      end
    end
    if (s1_valid_not_nacked) begin
      s2_waw_hazard <= 1'h0;
    end
    if (_T_516) begin
      _T_965 <= 1'h0;
    end
    if (_T_516) begin
      _T_971 <= _T_428;
    end
    if (_T_516) begin
      _T_977_state <= _T_429;
    end
    if (reset) begin
      lrscCount <= 5'h0;
    end else begin
      if (_T_1305) begin
        lrscCount <= 5'h0;
      end else begin
        if (_T_1297) begin
          lrscCount <= _T_1301;
        end else begin
          if (_T_1293) begin
            lrscCount <= 5'h1f;
          end
        end
      end
    end
    if (_T_1293) begin
      lrscAddr <= _T_513;
    end
    if (_T_1311) begin
      pstore1_cmd <= s1_req_cmd;
    end
    if (_T_1311) begin
      pstore1_addr <= tlb_io_resp_paddr;
    end
    if (_T_1311) begin
      a_data <= io_cpu_s1_data_data;
    end
    if (_T_1311) begin
      if (_T_185) begin
        pstore1_mask <= io_cpu_s1_data_mask;
      end else begin
        pstore1_mask <= _T_489;
      end
    end
    if (_T_1311) begin
      _T_1403 <= _T_1400;
    end
    if (reset) begin
      pstore2_valid <= 1'h0;
    end else begin
      pstore2_valid <= _T_1459;
    end
    _T_1436 <= _T_1452;
    if (advance_pstore1) begin
      pstore2_addr <= pstore1_addr;
    end
    if (advance_pstore1) begin
      _T_1469 <= _T_1464;
    end
    if (advance_pstore1) begin
      _T_1475 <= _T_1470;
    end
    if (advance_pstore1) begin
      _T_1481 <= _T_1476;
    end
    if (advance_pstore1) begin
      _T_1487 <= _T_1482;
    end
    if (advance_pstore1) begin
      pstore2_storegen_mask <= _T_1498;
    end
    if (reset) begin
      _T_3037 <= 10'h0;
    end else begin
      if (_T_605) begin
        if (d_first) begin
          if (_T_3032) begin
            _T_3037 <= _T_3031;
          end else begin
            _T_3037 <= 10'h0;
          end
        end else begin
          _T_3037 <= _T_3041;
        end
      end
    end
    if (reset) begin
      grantInProgress <= 1'h0;
    end else begin
      if (_T_605) begin
        if (grantIsCached) begin
          if (d_last) begin
            grantInProgress <= 1'h0;
          end else begin
            grantInProgress <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      blockProbeAfterGrantCount <= 3'h0;
    end else begin
      if (_T_605) begin
        if (grantIsCached) begin
          if (d_last) begin
            blockProbeAfterGrantCount <= 3'h7;
          end else begin
            if (_T_3069) begin
              blockProbeAfterGrantCount <= _T_3073;
            end
          end
        end else begin
          if (_T_3069) begin
            blockProbeAfterGrantCount <= _T_3073;
          end
        end
      end else begin
        if (_T_3069) begin
          blockProbeAfterGrantCount <= _T_3073;
        end
      end
    end
    if (_T_3273) begin
      if (io_mem_0_d_valid) begin
        blockUncachedGrant <= _T_3136;
      end else begin
        blockUncachedGrant <= dataArb_io_out_valid;
      end
    end else begin
      blockUncachedGrant <= dataArb_io_out_valid;
    end
    if (reset) begin
      _T_3316 <= 10'h0;
    end else begin
      if (_T_3304) begin
        if (c_first) begin
          if (_T_3311) begin
            _T_3316 <= _T_3310;
          end else begin
            _T_3316 <= 10'h0;
          end
        end else begin
          _T_3316 <= _T_3320;
        end
      end
    end
    s1_release_data_valid <= _T_3330;
    s2_release_data_valid <= _T_3334;
    _T_3513 <= s1_xcpt_valid;
    if (s1_valid_not_nacked) begin
      _T_3515_pf_ld <= tlb_io_resp_pf_ld;
    end
    if (s1_valid_not_nacked) begin
      _T_3515_pf_st <= tlb_io_resp_pf_st;
    end
    if (s1_valid_not_nacked) begin
      _T_3515_ae_ld <= tlb_io_resp_ae_ld;
    end
    if (s1_valid_not_nacked) begin
      _T_3515_ae_st <= tlb_io_resp_ae_st;
    end
    if (s1_valid_not_nacked) begin
      _T_3515_ma_ld <= tlb_io_resp_ma_ld;
    end
    if (s1_valid_not_nacked) begin
      _T_3515_ma_st <= tlb_io_resp_ma_st;
    end
    doUncachedResp <= io_cpu_replay_next;
    if (reset) begin
      resetting <= 1'h1;
    end else begin
      if (resetting) begin
        if (_T_3599) begin
          resetting <= 1'h0;
        end
      end
    end
    if (reset) begin
      flushed <= 1'h1;
    end else begin
      if (flushing) begin
        if (s2_flush_valid) begin
          if (_T_3599) begin
            flushed <= 1'h1;
          end else begin
            if (_T_3637) begin
              flushed <= 1'h0;
            end
          end
        end else begin
          if (_T_3637) begin
            flushed <= 1'h0;
          end
        end
      end else begin
        if (_T_3637) begin
          flushed <= 1'h0;
        end
      end
    end
    if (reset) begin
      flushing <= 1'h0;
    end else begin
      if (flushing) begin
        if (_T_3645) begin
          flushing <= 1'h0;
        end else begin
          if (_T_3603) begin
            if (_T_3605) begin
              flushing <= _T_3614;
            end
          end
        end
      end else begin
        if (_T_3603) begin
          if (_T_3605) begin
            flushing <= _T_3614;
          end
        end
      end
    end
    if (reset) begin
      flushCounter <= 7'h0;
    end else begin
      flushCounter <= _GEN_239[6:0];
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1444) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:318 assert(!s2_store_valid || !pstore1_held)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1444) begin
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
        if (_GEN_263 & _T_3084) begin
          $fwrite(32'h80000002,"Assertion failed: A GrantData was unexpected by the dcache.\n    at DCache.scala:430 assert(cached_grant_wait, \"A GrantData was unexpected by the dcache.\")\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_263 & _T_3084) begin
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
        if (_GEN_266 & _T_3102) begin
          $fwrite(32'h80000002,"Assertion failed: An AccessAck was unexpected by the dcache.\n    at DCache.scala:442 assert(f, \"An AccessAck was unexpected by the dcache.\") // TODO must handle Ack coming back on same cycle!\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_266 & _T_3102) begin
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
        if (_GEN_269 & _T_3118) begin
          $fwrite(32'h80000002,"Assertion failed: A ReleaseAck was unexpected by the dcache.\n    at DCache.scala:455 assert(release_ack_wait, \"A ReleaseAck was unexpected by the dcache.\") // TODO should handle Ack coming back on same cycle!\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_269 & _T_3118) begin
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
        if (_T_3132) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:463 assert(tl_out.e.fire() === (tl_out.d.fire() && d_first && grantIsCached))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_3132) begin
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
        if (_T_3152) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:481 assert(!metaArb.io.in(3).valid || metaArb.io.in(3).ready)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_3152) begin
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
        if (_T_3359 & _T_3368) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:527 assert(!(s2_valid && s2_hit_valid && !s2_data_error))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_3359 & _T_3368) begin
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
        if (doUncachedResp & _T_3542) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:623 assert(!s2_valid_hit)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (doUncachedResp & _T_3542) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
