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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_D_CACHE(
  input   clk,
  input   reset,
  output  io_cpu_req_ready,
  input   io_cpu_req_valid,
  input  [31:0] io_cpu_req_bits_addr,
  input  [8:0] io_cpu_req_bits_tag,
  input  [4:0] io_cpu_req_bits_cmd,
  input  [2:0] io_cpu_req_bits_typ,
  input   io_cpu_req_bits_phys,
  input  [31:0] io_cpu_req_bits_data,
  input   io_cpu_s1_kill,
  input  [31:0] io_cpu_s1_data,
  output  io_cpu_s2_nack,
  output  io_cpu_resp_valid,
  output [31:0] io_cpu_resp_bits_addr,
  output [8:0] io_cpu_resp_bits_tag,
  output [4:0] io_cpu_resp_bits_cmd,
  output [2:0] io_cpu_resp_bits_typ,
  output [31:0] io_cpu_resp_bits_data,
  output  io_cpu_resp_bits_replay,
  output  io_cpu_resp_bits_has_data,
  output [31:0] io_cpu_resp_bits_data_word_bypass,
  output [31:0] io_cpu_resp_bits_store_data,
  output  io_cpu_replay_next,
  output  io_cpu_xcpt_ma_ld,
  output  io_cpu_xcpt_ma_st,
  output  io_cpu_xcpt_pf_ld,
  output  io_cpu_xcpt_pf_st,
  input   io_cpu_invalidate_lr,
  output  io_cpu_ordered,
  input   io_ptw_req_ready,
  output  io_ptw_req_valid,
  output [1:0] io_ptw_req_bits_prv,
  output  io_ptw_req_bits_pum,
  output  io_ptw_req_bits_mxr,
  output [19:0] io_ptw_req_bits_addr,
  output  io_ptw_req_bits_store,
  output  io_ptw_req_bits_fetch,
  input   io_ptw_resp_valid,
  input  [15:0] io_ptw_resp_bits_pte_reserved_for_hardware,
  input  [37:0] io_ptw_resp_bits_pte_ppn,
  input  [1:0] io_ptw_resp_bits_pte_reserved_for_software,
  input   io_ptw_resp_bits_pte_d,
  input   io_ptw_resp_bits_pte_a,
  input   io_ptw_resp_bits_pte_g,
  input   io_ptw_resp_bits_pte_u,
  input   io_ptw_resp_bits_pte_x,
  input   io_ptw_resp_bits_pte_w,
  input   io_ptw_resp_bits_pte_r,
  input   io_ptw_resp_bits_pte_v,
  input  [6:0] io_ptw_ptbr_asid,
  input  [21:0] io_ptw_ptbr_ppn,
  input   io_ptw_invalidate,
  input   io_ptw_status_debug,
  input  [1:0] io_ptw_status_prv,
  input   io_ptw_status_sd,
  input  [30:0] io_ptw_status_zero3,
  input   io_ptw_status_sd_rv32,
  input  [1:0] io_ptw_status_zero2,
  input  [4:0] io_ptw_status_vm,
  input  [3:0] io_ptw_status_zero1,
  input   io_ptw_status_mxr,
  input   io_ptw_status_pum,
  input   io_ptw_status_mprv,
  input  [1:0] io_ptw_status_xs,
  input  [1:0] io_ptw_status_fs,
  input  [1:0] io_ptw_status_mpp,
  input  [1:0] io_ptw_status_hpp,
  input   io_ptw_status_spp,
  input   io_ptw_status_mpie,
  input   io_ptw_status_hpie,
  input   io_ptw_status_spie,
  input   io_ptw_status_upie,
  input   io_ptw_status_mie,
  input   io_ptw_status_hie,
  input   io_ptw_status_sie,
  input   io_ptw_status_uie,
  input   io_mem_acquire_ready,
  output  io_mem_acquire_valid,
  output [25:0] io_mem_acquire_bits_addr_block,
  output  io_mem_acquire_bits_client_xact_id,
  output [2:0] io_mem_acquire_bits_addr_beat,
  output  io_mem_acquire_bits_is_builtin_type,
  output [2:0] io_mem_acquire_bits_a_type,
  output [11:0] io_mem_acquire_bits_union,
  output [63:0] io_mem_acquire_bits_data,
  output  io_mem_probe_ready,
  input   io_mem_probe_valid,
  input  [25:0] io_mem_probe_bits_addr_block,
  input  [1:0] io_mem_probe_bits_p_type,
  input   io_mem_release_ready,
  output  io_mem_release_valid,
  output [2:0] io_mem_release_bits_addr_beat,
  output [25:0] io_mem_release_bits_addr_block,
  output  io_mem_release_bits_client_xact_id,
  output  io_mem_release_bits_voluntary,
  output [2:0] io_mem_release_bits_r_type,
  output [63:0] io_mem_release_bits_data,
  output  io_mem_grant_ready,
  input   io_mem_grant_valid,
  input  [2:0] io_mem_grant_bits_addr_beat,
  input   io_mem_grant_bits_client_xact_id,
  input  [1:0] io_mem_grant_bits_manager_xact_id,
  input   io_mem_grant_bits_is_builtin_type,
  input  [3:0] io_mem_grant_bits_g_type,
  input  [63:0] io_mem_grant_bits_data,
  input   io_mem_grant_bits_manager_id,
  input   io_mem_finish_ready,
  output  io_mem_finish_valid,
  output [1:0] io_mem_finish_bits_manager_xact_id,
  output  io_mem_finish_bits_manager_id
);
  wire  fq_clk;
  wire  fq_reset;
  wire  fq_io_enq_ready;
  wire  fq_io_enq_valid;
  wire [1:0] fq_io_enq_bits_manager_xact_id;
  wire  fq_io_enq_bits_manager_id;
  wire  fq_io_deq_ready;
  wire  fq_io_deq_valid;
  wire [1:0] fq_io_deq_bits_manager_xact_id;
  wire  fq_io_deq_bits_manager_id;
  wire  fq_io_count;
  wire  T_1924;
  reg [15:0] T_1927;
  reg [31:0] GEN_48;
  wire  T_1928;
  wire  T_1929;
  wire  T_1930;
  wire  T_1931;
  wire  T_1932;
  wire  T_1933;
  wire  T_1934;
  wire [14:0] T_1935;
  wire [15:0] T_1936;
  wire [15:0] GEN_2;
  wire  meta_clk;
  wire  meta_reset;
  wire  meta_io_read_ready;
  wire  meta_io_read_valid;
  wire [6:0] meta_io_read_bits_idx;
  wire  meta_io_read_bits_way_en;
  wire  meta_io_write_ready;
  wire  meta_io_write_valid;
  wire [6:0] meta_io_write_bits_idx;
  wire  meta_io_write_bits_way_en;
  wire [18:0] meta_io_write_bits_data_tag;
  wire [1:0] meta_io_write_bits_data_coh_state;
  wire [18:0] meta_io_resp_0_tag;
  wire [1:0] meta_io_resp_0_coh_state;
  wire  metaReadArb_clk;
  wire  metaReadArb_reset;
  wire  metaReadArb_io_in_0_ready;
  wire  metaReadArb_io_in_0_valid;
  wire [6:0] metaReadArb_io_in_0_bits_idx;
  wire  metaReadArb_io_in_0_bits_way_en;
  wire  metaReadArb_io_in_1_ready;
  wire  metaReadArb_io_in_1_valid;
  wire [6:0] metaReadArb_io_in_1_bits_idx;
  wire  metaReadArb_io_in_1_bits_way_en;
  wire  metaReadArb_io_in_2_ready;
  wire  metaReadArb_io_in_2_valid;
  wire [6:0] metaReadArb_io_in_2_bits_idx;
  wire  metaReadArb_io_in_2_bits_way_en;
  wire  metaReadArb_io_out_ready;
  wire  metaReadArb_io_out_valid;
  wire [6:0] metaReadArb_io_out_bits_idx;
  wire  metaReadArb_io_out_bits_way_en;
  wire [1:0] metaReadArb_io_chosen;
  wire  metaWriteArb_clk;
  wire  metaWriteArb_reset;
  wire  metaWriteArb_io_in_0_ready;
  wire  metaWriteArb_io_in_0_valid;
  wire [6:0] metaWriteArb_io_in_0_bits_idx;
  wire  metaWriteArb_io_in_0_bits_way_en;
  wire [18:0] metaWriteArb_io_in_0_bits_data_tag;
  wire [1:0] metaWriteArb_io_in_0_bits_data_coh_state;
  wire  metaWriteArb_io_in_1_ready;
  wire  metaWriteArb_io_in_1_valid;
  wire [6:0] metaWriteArb_io_in_1_bits_idx;
  wire  metaWriteArb_io_in_1_bits_way_en;
  wire [18:0] metaWriteArb_io_in_1_bits_data_tag;
  wire [1:0] metaWriteArb_io_in_1_bits_data_coh_state;
  wire  metaWriteArb_io_in_2_ready;
  wire  metaWriteArb_io_in_2_valid;
  wire [6:0] metaWriteArb_io_in_2_bits_idx;
  wire  metaWriteArb_io_in_2_bits_way_en;
  wire [18:0] metaWriteArb_io_in_2_bits_data_tag;
  wire [1:0] metaWriteArb_io_in_2_bits_data_coh_state;
  wire  metaWriteArb_io_out_ready;
  wire  metaWriteArb_io_out_valid;
  wire [6:0] metaWriteArb_io_out_bits_idx;
  wire  metaWriteArb_io_out_bits_way_en;
  wire [18:0] metaWriteArb_io_out_bits_data_tag;
  wire [1:0] metaWriteArb_io_out_bits_data_coh_state;
  wire [1:0] metaWriteArb_io_chosen;
  wire  data_clk;
  wire  data_reset;
  wire  data_io_req_valid;
  wire [12:0] data_io_req_bits_addr;
  wire  data_io_req_bits_write;
  wire [63:0] data_io_req_bits_wdata;
  wire [7:0] data_io_req_bits_wmask;
  wire  data_io_req_bits_way_en;
  wire [63:0] data_io_resp_0;
  wire  dataArb_clk;
  wire  dataArb_reset;
  wire  dataArb_io_in_0_ready;
  wire  dataArb_io_in_0_valid;
  wire [12:0] dataArb_io_in_0_bits_addr;
  wire  dataArb_io_in_0_bits_write;
  wire [63:0] dataArb_io_in_0_bits_wdata;
  wire [7:0] dataArb_io_in_0_bits_wmask;
  wire  dataArb_io_in_0_bits_way_en;
  wire  dataArb_io_in_1_ready;
  wire  dataArb_io_in_1_valid;
  wire [12:0] dataArb_io_in_1_bits_addr;
  wire  dataArb_io_in_1_bits_write;
  wire [63:0] dataArb_io_in_1_bits_wdata;
  wire [7:0] dataArb_io_in_1_bits_wmask;
  wire  dataArb_io_in_1_bits_way_en;
  wire  dataArb_io_in_2_ready;
  wire  dataArb_io_in_2_valid;
  wire [12:0] dataArb_io_in_2_bits_addr;
  wire  dataArb_io_in_2_bits_write;
  wire [63:0] dataArb_io_in_2_bits_wdata;
  wire [7:0] dataArb_io_in_2_bits_wmask;
  wire  dataArb_io_in_2_bits_way_en;
  wire  dataArb_io_in_3_ready;
  wire  dataArb_io_in_3_valid;
  wire [12:0] dataArb_io_in_3_bits_addr;
  wire  dataArb_io_in_3_bits_write;
  wire [63:0] dataArb_io_in_3_bits_wdata;
  wire [7:0] dataArb_io_in_3_bits_wmask;
  wire  dataArb_io_in_3_bits_way_en;
  wire  dataArb_io_out_ready;
  wire  dataArb_io_out_valid;
  wire [12:0] dataArb_io_out_bits_addr;
  wire  dataArb_io_out_bits_write;
  wire [63:0] dataArb_io_out_bits_wdata;
  wire [7:0] dataArb_io_out_bits_wmask;
  wire  dataArb_io_out_bits_way_en;
  wire [1:0] dataArb_io_chosen;
  wire  T_2218;
  reg  s1_valid;
  reg [31:0] GEN_49;
  wire  T_2220;
  reg  s1_probe;
  reg [31:0] GEN_50;
  reg [25:0] probe_bits_addr_block;
  reg [31:0] GEN_51;
  reg [1:0] probe_bits_p_type;
  reg [31:0] GEN_52;
  wire [25:0] GEN_3;
  wire [1:0] GEN_4;
  wire  s1_nack;
  wire  T_2247;
  wire  s1_valid_masked;
  wire  T_2249;
  wire  s1_valid_not_nacked;
  reg [31:0] s1_req_addr;
  reg [31:0] GEN_53;
  reg [8:0] s1_req_tag;
  reg [31:0] GEN_75;
  reg [4:0] s1_req_cmd;
  reg [31:0] GEN_88;
  reg [2:0] s1_req_typ;
  reg [31:0] GEN_89;
  reg  s1_req_phys;
  reg [31:0] GEN_93;
  reg [31:0] s1_req_data;
  reg [31:0] GEN_97;
  wire [18:0] T_2316;
  wire [5:0] T_2317;
  wire [25:0] T_2318;
  wire [31:0] T_2319;
  wire [31:0] GEN_5;
  wire [8:0] GEN_6;
  wire [4:0] GEN_7;
  wire [2:0] GEN_8;
  wire  GEN_9;
  wire [31:0] GEN_10;
  wire  T_2320;
  wire  T_2321;
  wire  T_2322;
  wire  T_2323;
  wire  T_2324;
  wire  T_2325;
  wire  T_2326;
  wire  T_2327;
  wire  s1_read;
  wire  T_2328;
  wire  T_2330;
  wire  s1_write;
  wire  s1_readwrite;
  reg  s1_flush_valid;
  reg [31:0] GEN_98;
  reg  grant_wait;
  reg [31:0] GEN_102;
  reg  release_ack_wait;
  reg [31:0] GEN_110;
  reg [2:0] release_state;
  reg [31:0] GEN_119;
  wire  pstore1_valid;
  reg  pstore2_valid;
  reg [31:0] GEN_133;
  wire  T_2340;
  wire  T_2341;
  wire  inWriteback;
  wire [1:0] releaseWay;
  wire  T_2343;
  wire  T_2345;
  wire  T_2346;
  wire  T_2349;
  wire  T_2350;
  wire  T_2351;
  wire  T_2352;
  wire  T_2353;
  wire  T_2354;
  wire  T_2355;
  wire  T_2356;
  wire  T_2357;
  wire  T_2358;
  wire  T_2359;
  wire  T_2364;
  wire  T_2374;
  wire  GEN_11;
  wire [6:0] T_2376;
  wire  T_2380;
  wire  GEN_12;
  wire  tlb_clk;
  wire  tlb_reset;
  wire  tlb_io_req_ready;
  wire  tlb_io_req_valid;
  wire [19:0] tlb_io_req_bits_vpn;
  wire  tlb_io_req_bits_passthrough;
  wire  tlb_io_req_bits_instruction;
  wire  tlb_io_req_bits_store;
  wire  tlb_io_resp_miss;
  wire [19:0] tlb_io_resp_ppn;
  wire  tlb_io_resp_xcpt_ld;
  wire  tlb_io_resp_xcpt_st;
  wire  tlb_io_resp_xcpt_if;
  wire  tlb_io_resp_cacheable;
  wire  tlb_io_ptw_req_ready;
  wire  tlb_io_ptw_req_valid;
  wire [1:0] tlb_io_ptw_req_bits_prv;
  wire  tlb_io_ptw_req_bits_pum;
  wire  tlb_io_ptw_req_bits_mxr;
  wire [19:0] tlb_io_ptw_req_bits_addr;
  wire  tlb_io_ptw_req_bits_store;
  wire  tlb_io_ptw_req_bits_fetch;
  wire  tlb_io_ptw_resp_valid;
  wire [15:0] tlb_io_ptw_resp_bits_pte_reserved_for_hardware;
  wire [37:0] tlb_io_ptw_resp_bits_pte_ppn;
  wire [1:0] tlb_io_ptw_resp_bits_pte_reserved_for_software;
  wire  tlb_io_ptw_resp_bits_pte_d;
  wire  tlb_io_ptw_resp_bits_pte_a;
  wire  tlb_io_ptw_resp_bits_pte_g;
  wire  tlb_io_ptw_resp_bits_pte_u;
  wire  tlb_io_ptw_resp_bits_pte_x;
  wire  tlb_io_ptw_resp_bits_pte_w;
  wire  tlb_io_ptw_resp_bits_pte_r;
  wire  tlb_io_ptw_resp_bits_pte_v;
  wire [6:0] tlb_io_ptw_ptbr_asid;
  wire [21:0] tlb_io_ptw_ptbr_ppn;
  wire  tlb_io_ptw_invalidate;
  wire  tlb_io_ptw_status_debug;
  wire [1:0] tlb_io_ptw_status_prv;
  wire  tlb_io_ptw_status_sd;
  wire [30:0] tlb_io_ptw_status_zero3;
  wire  tlb_io_ptw_status_sd_rv32;
  wire [1:0] tlb_io_ptw_status_zero2;
  wire [4:0] tlb_io_ptw_status_vm;
  wire [3:0] tlb_io_ptw_status_zero1;
  wire  tlb_io_ptw_status_mxr;
  wire  tlb_io_ptw_status_pum;
  wire  tlb_io_ptw_status_mprv;
  wire [1:0] tlb_io_ptw_status_xs;
  wire [1:0] tlb_io_ptw_status_fs;
  wire [1:0] tlb_io_ptw_status_mpp;
  wire [1:0] tlb_io_ptw_status_hpp;
  wire  tlb_io_ptw_status_spp;
  wire  tlb_io_ptw_status_mpie;
  wire  tlb_io_ptw_status_hpie;
  wire  tlb_io_ptw_status_spie;
  wire  tlb_io_ptw_status_upie;
  wire  tlb_io_ptw_status_mie;
  wire  tlb_io_ptw_status_hie;
  wire  tlb_io_ptw_status_sie;
  wire  tlb_io_ptw_status_uie;
  wire  T_2382;
  wire [19:0] T_2383;
  wire  T_2386;
  wire  T_2388;
  wire  T_2389;
  wire  GEN_13;
  wire  T_2391;
  wire  T_2392;
  wire [11:0] T_2394;
  wire [31:0] s1_paddr;
  wire [18:0] T_2395;
  wire [18:0] T_2396;
  wire [18:0] s1_tag;
  wire  T_2397;
  wire  T_2398;
  wire  s1_hit_way;
  wire [1:0] T_2422_state;
  wire [1:0] T_2446;
  wire [1:0] s1_hit_state_state;
  wire  s1_victim_way;
  reg  s2_valid;
  reg [31:0] GEN_134;
  reg  s2_probe;
  reg [31:0] GEN_135;
  wire  T_2496;
  wire  T_2497;
  wire  releaseInFlight;
  reg  T_2500;
  reg [31:0] GEN_136;
  wire  s2_valid_masked;
  reg [31:0] s2_req_addr;
  reg [31:0] GEN_137;
  reg [8:0] s2_req_tag;
  reg [31:0] GEN_138;
  reg [4:0] s2_req_cmd;
  reg [31:0] GEN_139;
  reg [2:0] s2_req_typ;
  reg [31:0] GEN_140;
  reg  s2_req_phys;
  reg [31:0] GEN_141;
  reg [31:0] s2_req_data;
  reg [31:0] GEN_142;
  reg  s2_uncached;
  reg [31:0] GEN_143;
  wire  T_2568;
  wire  T_2570;
  wire [31:0] GEN_15;
  wire [8:0] GEN_16;
  wire [4:0] GEN_17;
  wire [2:0] GEN_18;
  wire  GEN_19;
  wire [31:0] GEN_20;
  wire  GEN_21;
  wire  T_2571;
  wire  T_2572;
  wire  T_2573;
  wire  T_2574;
  wire  T_2575;
  wire  T_2576;
  wire  T_2577;
  wire  T_2578;
  wire  s2_read;
  wire  T_2579;
  wire  T_2581;
  wire  s2_write;
  wire  s2_readwrite;
  reg  s2_flush_valid;
  reg [31:0] GEN_144;
  wire  T_2585;
  reg [63:0] s2_data;
  reg [63:0] GEN_145;
  wire [63:0] GEN_22;
  reg  s2_probe_way;
  reg [31:0] GEN_146;
  wire  GEN_23;
  reg [1:0] s2_probe_state_state;
  reg [31:0] GEN_147;
  wire [1:0] GEN_24;
  reg  s2_hit_way;
  reg [31:0] GEN_148;
  wire  GEN_25;
  reg [1:0] s2_hit_state_state;
  reg [31:0] GEN_149;
  wire [1:0] GEN_26;
  wire  T_2635;
  wire  T_2636;
  wire  T_2638;
  wire  T_2639;
  wire  T_2640;
  wire  T_2641;
  wire  s2_hit;
  wire  T_2645;
  wire  s2_valid_hit;
  wire  T_2648;
  wire  T_2649;
  wire  T_2650;
  wire  T_2652;
  wire  T_2653;
  wire  T_2655;
  wire  s2_valid_miss;
  wire  T_2657;
  wire  s2_valid_cached_miss;
  wire  s2_victimize;
  wire  s2_valid_uncached;
  wire  T_2658;
  wire  T_2660;
  wire  T_2661;
  reg  T_2663;
  reg [31:0] GEN_150;
  wire  GEN_27;
  wire [1:0] T_2665;
  wire [1:0] s2_victim_way;
  reg [18:0] s2_victim_tag;
  reg [31:0] GEN_151;
  wire [18:0] GEN_0;
  wire [18:0] GEN_28;
  wire [18:0] GEN_29;
  reg [1:0] T_2839_state;
  reg [31:0] GEN_152;
  wire [1:0] GEN_1;
  wire [1:0] GEN_30;
  wire [1:0] GEN_31;
  wire [1:0] s2_victim_state_state;
  wire  s2_victim_dirty;
  wire  T_2883;
  wire  T_2884;
  wire  T_2885;
  wire  T_2887;
  wire  T_2888;
  wire  GEN_32;
  wire [1:0] T_2894;
  wire [3:0] T_2896;
  wire [4:0] T_2898;
  wire [3:0] T_2899;
  wire [1:0] T_2900;
  wire [31:0] GEN_123;
  wire [31:0] T_2901;
  wire  misaligned;
  wire  T_2903;
  wire  T_2904;
  wire  T_2905;
  wire  T_2906;
  wire  T_2907;
  wire  T_2908;
  wire  T_2909;
  reg  T_2910;
  reg [31:0] GEN_153;
  wire  T_2911;
  wire  T_2913;
  wire  T_2914;
  wire  T_2916;
  reg [4:0] lrscCount;
  reg [31:0] GEN_154;
  wire  lrscValid;
  reg [25:0] lrscAddr;
  reg [31:0] GEN_155;
  wire [5:0] T_2933;
  wire [4:0] T_2934;
  wire [4:0] GEN_35;
  wire [4:0] GEN_36;
  wire  T_2938;
  reg [4:0] pstore1_cmd;
  reg [31:0] GEN_156;
  wire [4:0] GEN_37;
  reg [2:0] pstore1_typ;
  reg [31:0] GEN_157;
  wire [2:0] GEN_38;
  reg [31:0] pstore1_addr;
  reg [31:0] GEN_158;
  wire [31:0] GEN_39;
  reg [31:0] pstore1_data;
  reg [31:0] GEN_159;
  wire [31:0] GEN_40;
  reg  pstore1_way;
  reg [31:0] GEN_160;
  wire  GEN_41;
  wire [1:0] T_2943;
  wire  T_2945;
  wire [7:0] T_2946;
  wire [15:0] T_2947;
  wire [31:0] T_2948;
  wire  T_2950;
  wire [15:0] T_2951;
  wire [31:0] T_2952;
  wire [31:0] T_2953;
  wire [31:0] T_2954;
  wire [31:0] pstore1_storegen_data;
  wire  pstore_drain_opportunistic;
  wire  pstore_drain_on_miss;
  wire  T_2985;
  wire  T_2986;
  wire  T_2987;
  reg  T_2992;
  reg [31:0] GEN_161;
  wire  T_2994;
  wire  T_2996;
  wire  T_2997;
  wire  T_2998;
  wire  T_3000;
  wire  T_3001;
  wire  T_3002;
  wire  T_3004;
  wire  T_3005;
  wire  T_3007;
  wire  advance_pstore1;
  wire  T_3010;
  wire  T_3011;
  reg [31:0] pstore2_addr;
  reg [31:0] GEN_162;
  wire [31:0] GEN_42;
  reg  pstore2_way;
  reg [31:0] GEN_163;
  wire  GEN_43;
  reg [31:0] pstore2_storegen_data;
  reg [31:0] GEN_164;
  wire [31:0] GEN_44;
  wire  T_3013;
  wire  T_3017;
  wire  T_3021;
  wire  T_3024;
  wire [1:0] T_3025;
  wire  T_3026;
  wire [1:0] T_3028;
  wire  T_3030;
  wire [1:0] T_3033;
  wire [1:0] T_3034;
  wire [1:0] T_3037;
  wire [3:0] T_3038;
  reg [3:0] pstore2_storegen_mask;
  reg [31:0] GEN_165;
  wire [3:0] GEN_45;
  wire [31:0] T_3040;
  wire  T_3041;
  wire [31:0] T_3042;
  wire [63:0] T_3043;
  wire  T_3045;
  wire [2:0] GEN_124;
  wire [2:0] pstore_mask_shift;
  wire [3:0] T_3073;
  wire [10:0] GEN_125;
  wire [10:0] T_3074;
  wire [10:0] s1_idx;
  wire [10:0] T_3075;
  wire  T_3076;
  wire  T_3077;
  wire [10:0] T_3078;
  wire  T_3079;
  wire  T_3080;
  wire  T_3081;
  wire  s1_raw_hazard;
  wire  T_3082;
  wire  GEN_46;
  wire [1:0] T_3091;
  wire [1:0] s2_new_hit_state_state;
  wire  T_3135;
  wire  T_3137;
  wire  T_3138;
  wire  T_3140;
  wire  T_3141;
  wire  T_3142;
  wire [6:0] T_3143;
  wire [1:0] T_3167_state;
  wire [1:0] T_3189_state;
  wire [18:0] T_3211;
  wire [25:0] T_3213;
  wire [5:0] T_3228;
  wire [25:0] cachedGetMessage_addr_block;
  wire  cachedGetMessage_client_xact_id;
  wire [2:0] cachedGetMessage_addr_beat;
  wire  cachedGetMessage_is_builtin_type;
  wire [2:0] cachedGetMessage_a_type;
  wire [11:0] cachedGetMessage_union;
  wire [63:0] cachedGetMessage_data;
  wire [2:0] T_3288;
  wire [2:0] T_3289;
  wire [5:0] T_3330;
  wire [11:0] T_3331;
  wire [25:0] uncachedGetMessage_addr_block;
  wire  uncachedGetMessage_client_xact_id;
  wire [2:0] uncachedGetMessage_addr_beat;
  wire  uncachedGetMessage_is_builtin_type;
  wire [2:0] uncachedGetMessage_a_type;
  wire [11:0] uncachedGetMessage_union;
  wire [63:0] uncachedGetMessage_data;
  wire  uncachedPutOffset;
  wire [63:0] T_3430;
  wire [2:0] GEN_126;
  wire [2:0] T_3458;
  wire [10:0] GEN_127;
  wire [10:0] T_3459;
  wire [7:0] T_3496;
  wire [8:0] T_3506;
  wire [11:0] T_3526;
  wire [25:0] uncachedPutMessage_addr_block;
  wire  uncachedPutMessage_client_xact_id;
  wire [2:0] uncachedPutMessage_addr_beat;
  wire  uncachedPutMessage_is_builtin_type;
  wire [2:0] uncachedPutMessage_a_type;
  wire [11:0] uncachedPutMessage_union;
  wire [63:0] uncachedPutMessage_data;
  wire [11:0] T_3642;
  wire [25:0] uncachedPutAtomicMessage_addr_block;
  wire  uncachedPutAtomicMessage_client_xact_id;
  wire [2:0] uncachedPutAtomicMessage_addr_beat;
  wire  uncachedPutAtomicMessage_is_builtin_type;
  wire [2:0] uncachedPutAtomicMessage_a_type;
  wire [11:0] uncachedPutAtomicMessage_union;
  wire [63:0] uncachedPutAtomicMessage_data;
  wire  T_3729;
  wire  T_3730;
  wire  T_3731;
  wire  T_3733;
  wire  T_3736;
  wire  T_3737;
  wire  T_3738;
  wire  T_3740;
  wire [25:0] GEN_54;
  wire  GEN_55;
  wire [2:0] GEN_56;
  wire  GEN_57;
  wire [2:0] GEN_58;
  wire [11:0] GEN_59;
  wire [63:0] GEN_60;
  wire [25:0] GEN_61;
  wire  GEN_62;
  wire [2:0] GEN_63;
  wire  GEN_64;
  wire [2:0] GEN_65;
  wire [11:0] GEN_66;
  wire [63:0] GEN_67;
  wire  T_3741;
  wire  GEN_68;
  wire [2:0] T_3750_0;
  wire [3:0] GEN_128;
  wire  T_3752;
  wire  T_3753;
  wire  T_3754;
  wire  grantIsVoluntary;
  wire  T_3758;
  wire  T_3760;
  wire  grantIsUncached;
  wire  T_3761;
  wire  T_3762;
  wire  T_3763;
  wire  T_3765;
  wire [63:0] GEN_69;
  wire  GEN_70;
  wire [63:0] GEN_71;
  wire  GEN_72;
  wire  T_3767;
  wire  T_3768;
  reg [2:0] refillCount;
  reg [31:0] GEN_166;
  wire  T_3771;
  wire [3:0] T_3773;
  wire [2:0] T_3774;
  wire [2:0] GEN_73;
  wire  refillDone;
  wire  grantDone;
  wire  T_3776;
  wire  GEN_74;
  wire  T_3778;
  wire  T_3781;
  wire  T_3782;
  wire  T_3783;
  wire  T_3785;
  wire [28:0] T_3788;
  wire [31:0] GEN_129;
  wire [31:0] T_3789;
  wire  T_3793;
  wire  T_3794;
  wire  T_3795;
  wire  T_3797;
  wire [1:0] T_3806;
  wire [1:0] T_3807;
  wire [1:0] T_3830_state;
  wire  T_3863;
  wire  T_3866;
  wire  T_3867;
  wire [1:0] T_3891_manager_xact_id;
  wire  T_3891_manager_id;
  wire  T_3914;
  wire  T_3916;
  wire  T_3918;
  wire  T_3921;
  wire  T_3922;
  wire  T_3925;
  wire  T_3927;
  wire  T_3928;
  wire  T_3930;
  wire  T_3931;
  wire  T_3932;
  wire  T_3935;
  wire  T_3936;
  reg [2:0] writebackCount;
  reg [31:0] GEN_167;
  wire  T_3939;
  wire [3:0] T_3941;
  wire [2:0] T_3942;
  wire [2:0] GEN_76;
  wire  writebackDone;
  wire  T_3945;
  wire  T_3946;
  wire  releaseDone;
  wire  T_3948;
  wire  releaseRejected;
  wire  T_3949;
  reg  s1_release_data_valid;
  reg [31:0] GEN_168;
  wire  T_3951;
  wire  T_3952;
  reg  s2_release_data_valid;
  reg [31:0] GEN_169;
  wire [3:0] T_3954;
  wire [1:0] T_3957;
  wire [1:0] GEN_130;
  wire [2:0] T_3958;
  wire [1:0] T_3959;
  wire [1:0] T_3960;
  wire [3:0] GEN_131;
  wire [4:0] T_3961;
  wire [3:0] releaseDataBeat;
  wire [1:0] T_3985_state;
  wire  T_4010;
  wire [2:0] T_4011;
  wire  T_4040;
  wire [2:0] T_4041;
  wire  T_4042;
  wire [2:0] T_4043;
  wire  T_4044;
  wire [2:0] T_4045;
  wire [2:0] T_4074_addr_beat;
  wire [25:0] T_4074_addr_block;
  wire  T_4074_client_xact_id;
  wire  T_4074_voluntary;
  wire [2:0] T_4074_r_type;
  wire [63:0] T_4074_data;
  wire [2:0] T_4107;
  wire [2:0] voluntaryReleaseMessage_addr_beat;
  wire [25:0] voluntaryReleaseMessage_addr_block;
  wire  voluntaryReleaseMessage_client_xact_id;
  wire  voluntaryReleaseMessage_voluntary;
  wire [2:0] voluntaryReleaseMessage_r_type;
  wire [63:0] voluntaryReleaseMessage_data;
  wire [1:0] voluntaryNewCoh_state;
  wire  T_4221;
  wire [2:0] T_4222;
  wire [2:0] T_4252;
  wire [2:0] T_4254;
  wire [2:0] T_4256;
  wire [2:0] probeResponseMessage_addr_beat;
  wire [25:0] probeResponseMessage_addr_block;
  wire  probeResponseMessage_client_xact_id;
  wire  probeResponseMessage_voluntary;
  wire [2:0] probeResponseMessage_r_type;
  wire [63:0] probeResponseMessage_data;
  wire [1:0] T_4312;
  wire [1:0] T_4314;
  wire [1:0] T_4316;
  wire [1:0] probeNewCoh_state;
  wire [1:0] newCoh_state;
  wire  T_4381;
  wire  T_4385;
  wire  T_4387;
  wire [25:0] T_4389;
  wire [2:0] GEN_77;
  wire [25:0] GEN_78;
  wire [2:0] GEN_79;
  wire  T_4391;
  wire  T_4393;
  wire  T_4394;
  wire [2:0] GEN_80;
  wire  T_4398;
  wire  T_4399;
  wire  GEN_81;
  wire [2:0] GEN_82;
  wire [2:0] GEN_83;
  wire  GEN_84;
  wire [2:0] GEN_85;
  wire  T_4401;
  wire  T_4402;
  wire  T_4403;
  wire  GEN_86;
  wire  T_4407;
  wire [2:0] GEN_87;
  wire  GEN_90;
  wire  GEN_91;
  wire [2:0] GEN_92;
  wire [2:0] GEN_94;
  wire  T_4409;
  wire  T_4410;
  wire [2:0] GEN_95;
  wire  GEN_96;
  wire  GEN_99;
  wire  GEN_100;
  wire [2:0] GEN_101;
  wire [1:0] GEN_103;
  wire [1:0] GEN_104;
  wire [2:0] GEN_105;
  wire  GEN_106;
  wire  T_4414;
  wire  T_4415;
  wire  GEN_107;
  wire  T_4418;
  wire  T_4419;
  wire [2:0] T_4421;
  wire [28:0] T_4422;
  wire [31:0] GEN_132;
  wire [31:0] T_4423;
  wire  T_4427;
  wire  T_4428;
  wire [28:0] T_4430;
  wire [31:0] T_4431;
  wire [6:0] T_4432;
  wire [18:0] T_4436;
  wire  T_4437;
  wire [2:0] GEN_108;
  wire  T_4439;
  wire  T_4440;
  wire  T_4442;
  wire  T_4443;
  reg  doUncachedResp;
  reg [31:0] GEN_170;
  wire  T_4446;
  wire  T_4448;
  wire  GEN_109;
  wire [5:0] T_4452;
  wire [63:0] s2_data_word;
  wire [1:0] T_4453;
  wire [2:0] T_4454;
  wire  T_4456;
  wire  T_4457;
  wire [15:0] T_4458;
  wire [15:0] T_4459;
  wire [15:0] T_4460;
  wire  T_4466;
  wire  T_4468;
  wire  T_4469;
  wire [15:0] T_4473;
  wire [15:0] T_4475;
  wire [31:0] T_4476;
  wire  T_4477;
  wire [7:0] T_4478;
  wire [7:0] T_4479;
  wire [7:0] T_4480;
  wire  T_4486;
  wire  T_4488;
  wire  T_4489;
  wire [23:0] T_4493;
  wire [23:0] T_4494;
  wire [23:0] T_4495;
  wire [31:0] T_4496;
  wire  T_4498;
  wire  T_4499;
  wire  T_4501;
  wire  T_4502;
  wire  T_4504;
  reg  flushed;
  reg [31:0] GEN_171;
  reg  flushing;
  reg [31:0] GEN_172;
  reg [6:0] T_4508;
  reg [31:0] GEN_173;
  wire  GEN_111;
  wire  T_4511;
  wire  T_4512;
  wire  T_4514;
  wire  GEN_112;
  wire  GEN_113;
  wire  GEN_114;
  wire  T_4519;
  wire  T_4521;
  wire  T_4522;
  wire  T_4525;
  wire  T_4527;
  wire  T_4530;
  wire  T_4535;
  wire [7:0] T_4537;
  wire [6:0] T_4538;
  wire  GEN_115;
  wire [6:0] GEN_116;
  wire  GEN_117;
  wire  T_4541;
  wire  T_4544;
  wire  GEN_118;
  wire [6:0] GEN_120;
  wire  GEN_121;
  wire  GEN_122;
  reg [63:0] GEN_14;
  reg [63:0] GEN_174;
  reg [7:0] GEN_33;
  reg [31:0] GEN_175;
  reg [63:0] GEN_34;
  reg [63:0] GEN_176;
  reg [7:0] GEN_47;
  reg [31:0] GEN_177;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_QUEUE fq (
    .clk(fq_clk),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_manager_xact_id(fq_io_enq_bits_manager_xact_id),
    .io_enq_bits_manager_id(fq_io_enq_bits_manager_id),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_manager_xact_id(fq_io_deq_bits_manager_xact_id),
    .io_deq_bits_manager_id(fq_io_deq_bits_manager_id),
    .io_count(fq_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_METADATA_ARRAY meta (
    .clk(meta_clk),
    .reset(meta_reset),
    .io_read_ready(meta_io_read_ready),
    .io_read_valid(meta_io_read_valid),
    .io_read_bits_idx(meta_io_read_bits_idx),
    .io_read_bits_way_en(meta_io_read_bits_way_en),
    .io_write_ready(meta_io_write_ready),
    .io_write_valid(meta_io_write_valid),
    .io_write_bits_idx(meta_io_write_bits_idx),
    .io_write_bits_way_en(meta_io_write_bits_way_en),
    .io_write_bits_data_tag(meta_io_write_bits_data_tag),
    .io_write_bits_data_coh_state(meta_io_write_bits_data_coh_state),
    .io_resp_0_tag(meta_io_resp_0_tag),
    .io_resp_0_coh_state(meta_io_resp_0_coh_state)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ARBITER metaReadArb (
    .clk(metaReadArb_clk),
    .reset(metaReadArb_reset),
    .io_in_0_ready(metaReadArb_io_in_0_ready),
    .io_in_0_valid(metaReadArb_io_in_0_valid),
    .io_in_0_bits_idx(metaReadArb_io_in_0_bits_idx),
    .io_in_0_bits_way_en(metaReadArb_io_in_0_bits_way_en),
    .io_in_1_ready(metaReadArb_io_in_1_ready),
    .io_in_1_valid(metaReadArb_io_in_1_valid),
    .io_in_1_bits_idx(metaReadArb_io_in_1_bits_idx),
    .io_in_1_bits_way_en(metaReadArb_io_in_1_bits_way_en),
    .io_in_2_ready(metaReadArb_io_in_2_ready),
    .io_in_2_valid(metaReadArb_io_in_2_valid),
    .io_in_2_bits_idx(metaReadArb_io_in_2_bits_idx),
    .io_in_2_bits_way_en(metaReadArb_io_in_2_bits_way_en),
    .io_out_ready(metaReadArb_io_out_ready),
    .io_out_valid(metaReadArb_io_out_valid),
    .io_out_bits_idx(metaReadArb_io_out_bits_idx),
    .io_out_bits_way_en(metaReadArb_io_out_bits_way_en),
    .io_chosen(metaReadArb_io_chosen)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ARBITER_1 metaWriteArb (
    .clk(metaWriteArb_clk),
    .reset(metaWriteArb_reset),
    .io_in_0_ready(metaWriteArb_io_in_0_ready),
    .io_in_0_valid(metaWriteArb_io_in_0_valid),
    .io_in_0_bits_idx(metaWriteArb_io_in_0_bits_idx),
    .io_in_0_bits_way_en(metaWriteArb_io_in_0_bits_way_en),
    .io_in_0_bits_data_tag(metaWriteArb_io_in_0_bits_data_tag),
    .io_in_0_bits_data_coh_state(metaWriteArb_io_in_0_bits_data_coh_state),
    .io_in_1_ready(metaWriteArb_io_in_1_ready),
    .io_in_1_valid(metaWriteArb_io_in_1_valid),
    .io_in_1_bits_idx(metaWriteArb_io_in_1_bits_idx),
    .io_in_1_bits_way_en(metaWriteArb_io_in_1_bits_way_en),
    .io_in_1_bits_data_tag(metaWriteArb_io_in_1_bits_data_tag),
    .io_in_1_bits_data_coh_state(metaWriteArb_io_in_1_bits_data_coh_state),
    .io_in_2_ready(metaWriteArb_io_in_2_ready),
    .io_in_2_valid(metaWriteArb_io_in_2_valid),
    .io_in_2_bits_idx(metaWriteArb_io_in_2_bits_idx),
    .io_in_2_bits_way_en(metaWriteArb_io_in_2_bits_way_en),
    .io_in_2_bits_data_tag(metaWriteArb_io_in_2_bits_data_tag),
    .io_in_2_bits_data_coh_state(metaWriteArb_io_in_2_bits_data_coh_state),
    .io_out_ready(metaWriteArb_io_out_ready),
    .io_out_valid(metaWriteArb_io_out_valid),
    .io_out_bits_idx(metaWriteArb_io_out_bits_idx),
    .io_out_bits_way_en(metaWriteArb_io_out_bits_way_en),
    .io_out_bits_data_tag(metaWriteArb_io_out_bits_data_tag),
    .io_out_bits_data_coh_state(metaWriteArb_io_out_bits_data_coh_state),
    .io_chosen(metaWriteArb_io_chosen)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_D_CACHE_DATA_ARRAY data (
    .clk(data_clk),
    .reset(data_reset),
    .io_req_valid(data_io_req_valid),
    .io_req_bits_addr(data_io_req_bits_addr),
    .io_req_bits_write(data_io_req_bits_write),
    .io_req_bits_wdata(data_io_req_bits_wdata),
    .io_req_bits_wmask(data_io_req_bits_wmask),
    .io_req_bits_way_en(data_io_req_bits_way_en),
    .io_resp_0(data_io_resp_0)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ARBITER_2 dataArb (
    .clk(dataArb_clk),
    .reset(dataArb_reset),
    .io_in_0_ready(dataArb_io_in_0_ready),
    .io_in_0_valid(dataArb_io_in_0_valid),
    .io_in_0_bits_addr(dataArb_io_in_0_bits_addr),
    .io_in_0_bits_write(dataArb_io_in_0_bits_write),
    .io_in_0_bits_wdata(dataArb_io_in_0_bits_wdata),
    .io_in_0_bits_wmask(dataArb_io_in_0_bits_wmask),
    .io_in_0_bits_way_en(dataArb_io_in_0_bits_way_en),
    .io_in_1_ready(dataArb_io_in_1_ready),
    .io_in_1_valid(dataArb_io_in_1_valid),
    .io_in_1_bits_addr(dataArb_io_in_1_bits_addr),
    .io_in_1_bits_write(dataArb_io_in_1_bits_write),
    .io_in_1_bits_wdata(dataArb_io_in_1_bits_wdata),
    .io_in_1_bits_wmask(dataArb_io_in_1_bits_wmask),
    .io_in_1_bits_way_en(dataArb_io_in_1_bits_way_en),
    .io_in_2_ready(dataArb_io_in_2_ready),
    .io_in_2_valid(dataArb_io_in_2_valid),
    .io_in_2_bits_addr(dataArb_io_in_2_bits_addr),
    .io_in_2_bits_write(dataArb_io_in_2_bits_write),
    .io_in_2_bits_wdata(dataArb_io_in_2_bits_wdata),
    .io_in_2_bits_wmask(dataArb_io_in_2_bits_wmask),
    .io_in_2_bits_way_en(dataArb_io_in_2_bits_way_en),
    .io_in_3_ready(dataArb_io_in_3_ready),
    .io_in_3_valid(dataArb_io_in_3_valid),
    .io_in_3_bits_addr(dataArb_io_in_3_bits_addr),
    .io_in_3_bits_write(dataArb_io_in_3_bits_write),
    .io_in_3_bits_wdata(dataArb_io_in_3_bits_wdata),
    .io_in_3_bits_wmask(dataArb_io_in_3_bits_wmask),
    .io_in_3_bits_way_en(dataArb_io_in_3_bits_way_en),
    .io_out_ready(dataArb_io_out_ready),
    .io_out_valid(dataArb_io_out_valid),
    .io_out_bits_addr(dataArb_io_out_bits_addr),
    .io_out_bits_write(dataArb_io_out_bits_write),
    .io_out_bits_wdata(dataArb_io_out_bits_wdata),
    .io_out_bits_wmask(dataArb_io_out_bits_wmask),
    .io_out_bits_way_en(dataArb_io_out_bits_way_en),
    .io_chosen(dataArb_io_chosen)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TLB tlb (
    .clk(tlb_clk),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vpn(tlb_io_req_bits_vpn),
    .io_req_bits_passthrough(tlb_io_req_bits_passthrough),
    .io_req_bits_instruction(tlb_io_req_bits_instruction),
    .io_req_bits_store(tlb_io_req_bits_store),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_ppn(tlb_io_resp_ppn),
    .io_resp_xcpt_ld(tlb_io_resp_xcpt_ld),
    .io_resp_xcpt_st(tlb_io_resp_xcpt_st),
    .io_resp_xcpt_if(tlb_io_resp_xcpt_if),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_prv(tlb_io_ptw_req_bits_prv),
    .io_ptw_req_bits_pum(tlb_io_ptw_req_bits_pum),
    .io_ptw_req_bits_mxr(tlb_io_ptw_req_bits_mxr),
    .io_ptw_req_bits_addr(tlb_io_ptw_req_bits_addr),
    .io_ptw_req_bits_store(tlb_io_ptw_req_bits_store),
    .io_ptw_req_bits_fetch(tlb_io_ptw_req_bits_fetch),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_resp_bits_pte_reserved_for_hardware(tlb_io_ptw_resp_bits_pte_reserved_for_hardware),
    .io_ptw_resp_bits_pte_ppn(tlb_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_reserved_for_software(tlb_io_ptw_resp_bits_pte_reserved_for_software),
    .io_ptw_resp_bits_pte_d(tlb_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(tlb_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(tlb_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(tlb_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(tlb_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(tlb_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(tlb_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(tlb_io_ptw_resp_bits_pte_v),
    .io_ptw_ptbr_asid(tlb_io_ptw_ptbr_asid),
    .io_ptw_ptbr_ppn(tlb_io_ptw_ptbr_ppn),
    .io_ptw_invalidate(tlb_io_ptw_invalidate),
    .io_ptw_status_debug(tlb_io_ptw_status_debug),
    .io_ptw_status_prv(tlb_io_ptw_status_prv),
    .io_ptw_status_sd(tlb_io_ptw_status_sd),
    .io_ptw_status_zero3(tlb_io_ptw_status_zero3),
    .io_ptw_status_sd_rv32(tlb_io_ptw_status_sd_rv32),
    .io_ptw_status_zero2(tlb_io_ptw_status_zero2),
    .io_ptw_status_vm(tlb_io_ptw_status_vm),
    .io_ptw_status_zero1(tlb_io_ptw_status_zero1),
    .io_ptw_status_mxr(tlb_io_ptw_status_mxr),
    .io_ptw_status_pum(tlb_io_ptw_status_pum),
    .io_ptw_status_mprv(tlb_io_ptw_status_mprv),
    .io_ptw_status_xs(tlb_io_ptw_status_xs),
    .io_ptw_status_fs(tlb_io_ptw_status_fs),
    .io_ptw_status_mpp(tlb_io_ptw_status_mpp),
    .io_ptw_status_hpp(tlb_io_ptw_status_hpp),
    .io_ptw_status_spp(tlb_io_ptw_status_spp),
    .io_ptw_status_mpie(tlb_io_ptw_status_mpie),
    .io_ptw_status_hpie(tlb_io_ptw_status_hpie),
    .io_ptw_status_spie(tlb_io_ptw_status_spie),
    .io_ptw_status_upie(tlb_io_ptw_status_upie),
    .io_ptw_status_mie(tlb_io_ptw_status_mie),
    .io_ptw_status_hie(tlb_io_ptw_status_hie),
    .io_ptw_status_sie(tlb_io_ptw_status_sie),
    .io_ptw_status_uie(tlb_io_ptw_status_uie)
  );
  assign io_cpu_req_ready = GEN_13;
  assign io_cpu_s2_nack = GEN_113;
  assign io_cpu_resp_valid = GEN_109;
  assign io_cpu_resp_bits_addr = s2_req_addr;
  assign io_cpu_resp_bits_tag = s2_req_tag;
  assign io_cpu_resp_bits_cmd = s2_req_cmd;
  assign io_cpu_resp_bits_typ = s2_req_typ;
  assign io_cpu_resp_bits_data = T_4496;
  assign io_cpu_resp_bits_replay = doUncachedResp;
  assign io_cpu_resp_bits_has_data = s2_read;
  assign io_cpu_resp_bits_data_word_bypass = s2_data_word[31:0];
  assign io_cpu_resp_bits_store_data = pstore1_data;
  assign io_cpu_replay_next = T_4443;
  assign io_cpu_xcpt_ma_ld = T_2903;
  assign io_cpu_xcpt_ma_st = T_2904;
  assign io_cpu_xcpt_pf_ld = T_2905;
  assign io_cpu_xcpt_pf_st = T_2906;
  assign io_cpu_ordered = T_4442;
  assign io_ptw_req_valid = tlb_io_ptw_req_valid;
  assign io_ptw_req_bits_prv = tlb_io_ptw_req_bits_prv;
  assign io_ptw_req_bits_pum = tlb_io_ptw_req_bits_pum;
  assign io_ptw_req_bits_mxr = tlb_io_ptw_req_bits_mxr;
  assign io_ptw_req_bits_addr = tlb_io_ptw_req_bits_addr;
  assign io_ptw_req_bits_store = tlb_io_ptw_req_bits_store;
  assign io_ptw_req_bits_fetch = tlb_io_ptw_req_bits_fetch;
  assign io_mem_acquire_valid = T_3731;
  assign io_mem_acquire_bits_addr_block = GEN_61;
  assign io_mem_acquire_bits_client_xact_id = GEN_62;
  assign io_mem_acquire_bits_addr_beat = GEN_63;
  assign io_mem_acquire_bits_is_builtin_type = GEN_64;
  assign io_mem_acquire_bits_a_type = GEN_65;
  assign io_mem_acquire_bits_union = GEN_66;
  assign io_mem_acquire_bits_data = GEN_67;
  assign io_mem_probe_ready = T_3932;
  assign io_mem_release_valid = GEN_86;
  assign io_mem_release_bits_addr_beat = writebackCount;
  assign io_mem_release_bits_addr_block = probe_bits_addr_block;
  assign io_mem_release_bits_client_xact_id = GEN_99;
  assign io_mem_release_bits_voluntary = GEN_100;
  assign io_mem_release_bits_r_type = GEN_101;
  assign io_mem_release_bits_data = s2_data;
  assign io_mem_grant_ready = 1'h1;
  assign io_mem_finish_valid = fq_io_deq_valid;
  assign io_mem_finish_bits_manager_xact_id = fq_io_deq_bits_manager_xact_id;
  assign io_mem_finish_bits_manager_id = fq_io_deq_bits_manager_id;
  assign fq_clk = clk;
  assign fq_reset = reset;
  assign fq_io_enq_valid = T_3867;
  assign fq_io_enq_bits_manager_xact_id = T_3891_manager_xact_id;
  assign fq_io_enq_bits_manager_id = T_3891_manager_id;
  assign fq_io_deq_ready = io_mem_finish_ready;
  assign T_1924 = refillDone;
  assign T_1928 = T_1927[0];
  assign T_1929 = T_1927[2];
  assign T_1930 = T_1928 ^ T_1929;
  assign T_1931 = T_1927[3];
  assign T_1932 = T_1930 ^ T_1931;
  assign T_1933 = T_1927[5];
  assign T_1934 = T_1932 ^ T_1933;
  assign T_1935 = T_1927[15:1];
  assign T_1936 = {T_1934,T_1935};
  assign GEN_2 = T_1924 ? T_1936 : T_1927;
  assign meta_clk = clk;
  assign meta_reset = reset;
  assign meta_io_read_valid = metaReadArb_io_out_valid;
  assign meta_io_read_bits_idx = metaReadArb_io_out_bits_idx;
  assign meta_io_read_bits_way_en = metaReadArb_io_out_bits_way_en;
  assign meta_io_write_valid = metaWriteArb_io_out_valid;
  assign meta_io_write_bits_idx = metaWriteArb_io_out_bits_idx;
  assign meta_io_write_bits_way_en = metaWriteArb_io_out_bits_way_en;
  assign meta_io_write_bits_data_tag = metaWriteArb_io_out_bits_data_tag;
  assign meta_io_write_bits_data_coh_state = metaWriteArb_io_out_bits_data_coh_state;
  assign metaReadArb_clk = clk;
  assign metaReadArb_reset = reset;
  assign metaReadArb_io_in_0_valid = flushing;
  assign metaReadArb_io_in_0_bits_idx = T_4508;
  assign metaReadArb_io_in_0_bits_way_en = 1'h1;
  assign metaReadArb_io_in_1_valid = T_3922;
  assign metaReadArb_io_in_1_bits_idx = io_mem_probe_bits_addr_block[6:0];
  assign metaReadArb_io_in_1_bits_way_en = 1'h1;
  assign metaReadArb_io_in_2_valid = io_cpu_req_valid;
  assign metaReadArb_io_in_2_bits_idx = T_2376;
  assign metaReadArb_io_in_2_bits_way_en = 1'h1;
  assign metaReadArb_io_out_ready = meta_io_read_ready;
  assign metaWriteArb_clk = clk;
  assign metaWriteArb_reset = reset;
  assign metaWriteArb_io_in_0_valid = T_3142;
  assign metaWriteArb_io_in_0_bits_idx = T_3143;
  assign metaWriteArb_io_in_0_bits_way_en = s2_victim_way[0];
  assign metaWriteArb_io_in_0_bits_data_tag = T_3211;
  assign metaWriteArb_io_in_0_bits_data_coh_state = T_3189_state;
  assign metaWriteArb_io_in_1_valid = refillDone;
  assign metaWriteArb_io_in_1_bits_idx = T_3143;
  assign metaWriteArb_io_in_1_bits_way_en = s2_victim_way[0];
  assign metaWriteArb_io_in_1_bits_data_tag = T_3211;
  assign metaWriteArb_io_in_1_bits_data_coh_state = T_3830_state;
  assign metaWriteArb_io_in_2_valid = T_4428;
  assign metaWriteArb_io_in_2_bits_idx = T_4432;
  assign metaWriteArb_io_in_2_bits_way_en = releaseWay[0];
  assign metaWriteArb_io_in_2_bits_data_tag = T_4436;
  assign metaWriteArb_io_in_2_bits_data_coh_state = newCoh_state;
  assign metaWriteArb_io_out_ready = meta_io_write_ready;
  assign data_clk = clk;
  assign data_reset = reset;
  assign data_io_req_valid = dataArb_io_out_valid;
  assign data_io_req_bits_addr = dataArb_io_out_bits_addr;
  assign data_io_req_bits_write = dataArb_io_out_bits_write;
  assign data_io_req_bits_wdata = dataArb_io_out_bits_wdata;
  assign data_io_req_bits_wmask = dataArb_io_out_bits_wmask;
  assign data_io_req_bits_way_en = dataArb_io_out_bits_way_en;
  assign dataArb_clk = clk;
  assign dataArb_reset = reset;
  assign dataArb_io_in_0_valid = T_2986;
  assign dataArb_io_in_0_bits_addr = T_3040[12:0];
  assign dataArb_io_in_0_bits_write = 1'h1;
  assign dataArb_io_in_0_bits_wdata = T_3043;
  assign dataArb_io_in_0_bits_wmask = T_3074[7:0];
  assign dataArb_io_in_0_bits_way_en = T_3041;
  assign dataArb_io_in_1_valid = T_3778;
  assign dataArb_io_in_1_bits_addr = T_3789[12:0];
  assign dataArb_io_in_1_bits_write = 1'h1;
  assign dataArb_io_in_1_bits_wdata = io_mem_grant_bits_data;
  assign dataArb_io_in_1_bits_wmask = 8'hff;
  assign dataArb_io_in_1_bits_way_en = s2_victim_way[0];
  assign dataArb_io_in_2_valid = T_4419;
  assign dataArb_io_in_2_bits_addr = T_4423[12:0];
  assign dataArb_io_in_2_bits_write = 1'h0;
  assign dataArb_io_in_2_bits_wdata = GEN_14;
  assign dataArb_io_in_2_bits_wmask = GEN_33;
  assign dataArb_io_in_2_bits_way_en = 1'h1;
  assign dataArb_io_in_3_valid = T_2359;
  assign dataArb_io_in_3_bits_addr = io_cpu_req_bits_addr[12:0];
  assign dataArb_io_in_3_bits_write = 1'h0;
  assign dataArb_io_in_3_bits_wdata = GEN_34;
  assign dataArb_io_in_3_bits_wmask = GEN_47;
  assign dataArb_io_in_3_bits_way_en = 1'h1;
  assign dataArb_io_out_ready = 1'h1;
  assign T_2218 = io_cpu_req_ready & io_cpu_req_valid;
  assign T_2220 = io_mem_probe_ready & io_mem_probe_valid;
  assign GEN_3 = T_2220 ? io_mem_probe_bits_addr_block : probe_bits_addr_block;
  assign GEN_4 = T_2220 ? io_mem_probe_bits_p_type : probe_bits_p_type;
  assign s1_nack = GEN_107;
  assign T_2247 = io_cpu_s1_kill == 1'h0;
  assign s1_valid_masked = s1_valid & T_2247;
  assign T_2249 = s1_nack == 1'h0;
  assign s1_valid_not_nacked = s1_valid_masked & T_2249;
  assign T_2316 = io_cpu_req_bits_addr[31:13];
  assign T_2317 = io_cpu_req_bits_addr[5:0];
  assign T_2318 = {T_2316,metaReadArb_io_out_bits_idx};
  assign T_2319 = {T_2318,T_2317};
  assign GEN_5 = metaReadArb_io_out_valid ? T_2319 : s1_req_addr;
  assign GEN_6 = metaReadArb_io_out_valid ? io_cpu_req_bits_tag : s1_req_tag;
  assign GEN_7 = metaReadArb_io_out_valid ? io_cpu_req_bits_cmd : s1_req_cmd;
  assign GEN_8 = metaReadArb_io_out_valid ? io_cpu_req_bits_typ : s1_req_typ;
  assign GEN_9 = metaReadArb_io_out_valid ? io_cpu_req_bits_phys : s1_req_phys;
  assign GEN_10 = metaReadArb_io_out_valid ? io_cpu_req_bits_data : s1_req_data;
  assign T_2320 = s1_req_cmd == 5'h0;
  assign T_2321 = s1_req_cmd == 5'h6;
  assign T_2322 = T_2320 | T_2321;
  assign T_2323 = s1_req_cmd == 5'h7;
  assign T_2324 = T_2322 | T_2323;
  assign T_2325 = s1_req_cmd[3];
  assign T_2326 = s1_req_cmd == 5'h4;
  assign T_2327 = T_2325 | T_2326;
  assign s1_read = T_2324 | T_2327;
  assign T_2328 = s1_req_cmd == 5'h1;
  assign T_2330 = T_2328 | T_2323;
  assign s1_write = T_2330 | T_2327;
  assign s1_readwrite = s1_read | s1_write;
  assign pstore1_valid = T_3001;
  assign T_2340 = release_state == 3'h2;
  assign T_2341 = release_state == 3'h3;
  assign inWriteback = T_2340 | T_2341;
  assign releaseWay = GEN_104;
  assign T_2343 = release_state == 3'h0;
  assign T_2345 = grant_wait == 1'h0;
  assign T_2346 = T_2343 & T_2345;
  assign T_2349 = T_2346 & T_2249;
  assign T_2350 = io_cpu_req_bits_cmd == 5'h0;
  assign T_2351 = io_cpu_req_bits_cmd == 5'h6;
  assign T_2352 = T_2350 | T_2351;
  assign T_2353 = io_cpu_req_bits_cmd == 5'h7;
  assign T_2354 = T_2352 | T_2353;
  assign T_2355 = io_cpu_req_bits_cmd[3];
  assign T_2356 = io_cpu_req_bits_cmd == 5'h4;
  assign T_2357 = T_2355 | T_2356;
  assign T_2358 = T_2354 | T_2357;
  assign T_2359 = io_cpu_req_valid & T_2358;
  assign T_2364 = dataArb_io_in_3_ready == 1'h0;
  assign T_2374 = T_2364 & T_2358;
  assign GEN_11 = T_2374 ? 1'h0 : T_2349;
  assign T_2376 = io_cpu_req_bits_addr[12:6];
  assign T_2380 = metaReadArb_io_in_2_ready == 1'h0;
  assign GEN_12 = T_2380 ? 1'h0 : GEN_11;
  assign tlb_clk = clk;
  assign tlb_reset = reset;
  assign tlb_io_req_valid = T_2382;
  assign tlb_io_req_bits_vpn = T_2383;
  assign tlb_io_req_bits_passthrough = s1_req_phys;
  assign tlb_io_req_bits_instruction = 1'h0;
  assign tlb_io_req_bits_store = s1_write;
  assign tlb_io_ptw_req_ready = io_ptw_req_ready;
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid;
  assign tlb_io_ptw_resp_bits_pte_reserved_for_hardware = io_ptw_resp_bits_pte_reserved_for_hardware;
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn;
  assign tlb_io_ptw_resp_bits_pte_reserved_for_software = io_ptw_resp_bits_pte_reserved_for_software;
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d;
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a;
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g;
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u;
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x;
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w;
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r;
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v;
  assign tlb_io_ptw_ptbr_asid = io_ptw_ptbr_asid;
  assign tlb_io_ptw_ptbr_ppn = io_ptw_ptbr_ppn;
  assign tlb_io_ptw_invalidate = io_ptw_invalidate;
  assign tlb_io_ptw_status_debug = io_ptw_status_debug;
  assign tlb_io_ptw_status_prv = io_ptw_status_prv;
  assign tlb_io_ptw_status_sd = io_ptw_status_sd;
  assign tlb_io_ptw_status_zero3 = io_ptw_status_zero3;
  assign tlb_io_ptw_status_sd_rv32 = io_ptw_status_sd_rv32;
  assign tlb_io_ptw_status_zero2 = io_ptw_status_zero2;
  assign tlb_io_ptw_status_vm = io_ptw_status_vm;
  assign tlb_io_ptw_status_zero1 = io_ptw_status_zero1;
  assign tlb_io_ptw_status_mxr = io_ptw_status_mxr;
  assign tlb_io_ptw_status_pum = io_ptw_status_pum;
  assign tlb_io_ptw_status_mprv = io_ptw_status_mprv;
  assign tlb_io_ptw_status_xs = io_ptw_status_xs;
  assign tlb_io_ptw_status_fs = io_ptw_status_fs;
  assign tlb_io_ptw_status_mpp = io_ptw_status_mpp;
  assign tlb_io_ptw_status_hpp = io_ptw_status_hpp;
  assign tlb_io_ptw_status_spp = io_ptw_status_spp;
  assign tlb_io_ptw_status_mpie = io_ptw_status_mpie;
  assign tlb_io_ptw_status_hpie = io_ptw_status_hpie;
  assign tlb_io_ptw_status_spie = io_ptw_status_spie;
  assign tlb_io_ptw_status_upie = io_ptw_status_upie;
  assign tlb_io_ptw_status_mie = io_ptw_status_mie;
  assign tlb_io_ptw_status_hie = io_ptw_status_hie;
  assign tlb_io_ptw_status_sie = io_ptw_status_sie;
  assign tlb_io_ptw_status_uie = io_ptw_status_uie;
  assign T_2382 = s1_valid_masked & s1_readwrite;
  assign T_2383 = s1_req_addr[31:12];
  assign T_2386 = tlb_io_req_ready == 1'h0;
  assign T_2388 = io_cpu_req_bits_phys == 1'h0;
  assign T_2389 = T_2386 & T_2388;
  assign GEN_13 = T_2389 ? 1'h0 : GEN_12;
  assign T_2391 = s1_valid & s1_readwrite;
  assign T_2392 = T_2391 & tlb_io_resp_miss;
  assign T_2394 = s1_req_addr[11:0];
  assign s1_paddr = {tlb_io_resp_ppn,T_2394};
  assign T_2395 = probe_bits_addr_block[25:7];
  assign T_2396 = s1_paddr[31:13];
  assign s1_tag = s1_probe ? T_2395 : T_2396;
  assign T_2397 = meta_io_resp_0_coh_state != 2'h0;
  assign T_2398 = meta_io_resp_0_tag == s1_tag;
  assign s1_hit_way = T_2397 & T_2398;
  assign T_2422_state = 2'h0;
  assign T_2446 = T_2398 ? meta_io_resp_0_coh_state : 2'h0;
  assign s1_hit_state_state = T_2446;
  assign s1_victim_way = 1'h0;
  assign T_2496 = s1_probe | s2_probe;
  assign T_2497 = release_state != 3'h0;
  assign releaseInFlight = T_2496 | T_2497;
  assign s2_valid_masked = s2_valid & T_2500;
  assign T_2568 = s1_valid_not_nacked | s1_flush_valid;
  assign T_2570 = tlb_io_resp_cacheable == 1'h0;
  assign GEN_15 = T_2568 ? s1_paddr : s2_req_addr;
  assign GEN_16 = T_2568 ? s1_req_tag : s2_req_tag;
  assign GEN_17 = T_2568 ? s1_req_cmd : s2_req_cmd;
  assign GEN_18 = T_2568 ? s1_req_typ : s2_req_typ;
  assign GEN_19 = T_2568 ? s1_req_phys : s2_req_phys;
  assign GEN_20 = T_2568 ? s1_req_data : s2_req_data;
  assign GEN_21 = T_2568 ? T_2570 : s2_uncached;
  assign T_2571 = s2_req_cmd == 5'h0;
  assign T_2572 = s2_req_cmd == 5'h6;
  assign T_2573 = T_2571 | T_2572;
  assign T_2574 = s2_req_cmd == 5'h7;
  assign T_2575 = T_2573 | T_2574;
  assign T_2576 = s2_req_cmd[3];
  assign T_2577 = s2_req_cmd == 5'h4;
  assign T_2578 = T_2576 | T_2577;
  assign s2_read = T_2575 | T_2578;
  assign T_2579 = s2_req_cmd == 5'h1;
  assign T_2581 = T_2579 | T_2574;
  assign s2_write = T_2581 | T_2578;
  assign s2_readwrite = s2_read | s2_write;
  assign T_2585 = s1_valid | inWriteback;
  assign GEN_22 = T_2585 ? data_io_resp_0 : s2_data;
  assign GEN_23 = s1_probe ? s1_hit_way : s2_probe_way;
  assign GEN_24 = s1_probe ? s1_hit_state_state : s2_probe_state_state;
  assign GEN_25 = s1_valid_not_nacked ? s1_hit_way : s2_hit_way;
  assign GEN_26 = s1_valid_not_nacked ? s1_hit_state_state : s2_hit_state_state;
  assign T_2635 = s2_req_cmd == 5'h3;
  assign T_2636 = s2_write | T_2635;
  assign T_2638 = T_2636 | T_2572;
  assign T_2639 = s2_hit_state_state == 2'h1;
  assign T_2640 = s2_hit_state_state == 2'h2;
  assign T_2641 = T_2639 | T_2640;
  assign s2_hit = T_2638 ? T_2641 : T_2641;
  assign T_2645 = s2_valid_masked & s2_readwrite;
  assign s2_valid_hit = T_2645 & s2_hit;
  assign T_2648 = s2_hit == 1'h0;
  assign T_2649 = T_2645 & T_2648;
  assign T_2650 = pstore1_valid | pstore2_valid;
  assign T_2652 = T_2650 == 1'h0;
  assign T_2653 = T_2649 & T_2652;
  assign T_2655 = release_ack_wait == 1'h0;
  assign s2_valid_miss = T_2653 & T_2655;
  assign T_2657 = s2_uncached == 1'h0;
  assign s2_valid_cached_miss = s2_valid_miss & T_2657;
  assign s2_victimize = s2_valid_cached_miss | s2_flush_valid;
  assign s2_valid_uncached = s2_valid_miss & s2_uncached;
  assign T_2658 = s2_hit_state_state != 2'h0;
  assign T_2660 = s2_flush_valid == 1'h0;
  assign T_2661 = T_2658 & T_2660;
  assign GEN_27 = T_2568 ? s1_victim_way : T_2663;
  assign T_2665 = 2'h1 << T_2663;
  assign s2_victim_way = T_2661 ? {{1'd0}, s2_hit_way} : T_2665;
  assign GEN_0 = GEN_28;
  assign GEN_28 = meta_io_resp_0_tag;
  assign GEN_29 = T_2568 ? GEN_0 : s2_victim_tag;
  assign GEN_1 = GEN_30;
  assign GEN_30 = meta_io_resp_0_coh_state;
  assign GEN_31 = T_2568 ? GEN_1 : T_2839_state;
  assign s2_victim_state_state = T_2661 ? s2_hit_state_state : T_2839_state;
  assign s2_victim_dirty = s2_victim_state_state == 2'h2;
  assign T_2883 = s2_valid_hit == 1'h0;
  assign T_2884 = s2_valid & T_2883;
  assign T_2885 = s2_valid_uncached & io_mem_acquire_ready;
  assign T_2887 = T_2885 == 1'h0;
  assign T_2888 = T_2884 & T_2887;
  assign GEN_32 = T_2884 ? 1'h1 : T_2392;
  assign T_2894 = s1_req_typ[1:0];
  assign T_2896 = 4'h1 << T_2894;
  assign T_2898 = T_2896 - 4'h1;
  assign T_2899 = T_2898[3:0];
  assign T_2900 = T_2899[1:0];
  assign GEN_123 = {{30'd0}, T_2900};
  assign T_2901 = s1_req_addr & GEN_123;
  assign misaligned = T_2901 != 32'h0;
  assign T_2903 = s1_read & misaligned;
  assign T_2904 = s1_write & misaligned;
  assign T_2905 = s1_read & tlb_io_resp_xcpt_ld;
  assign T_2906 = s1_write & tlb_io_resp_xcpt_st;
  assign T_2907 = io_cpu_xcpt_ma_ld | io_cpu_xcpt_ma_st;
  assign T_2908 = T_2907 | io_cpu_xcpt_pf_ld;
  assign T_2909 = T_2908 | io_cpu_xcpt_pf_st;
  assign T_2911 = T_2910 & s2_valid_masked;
  assign T_2913 = T_2911 == 1'h0;
  assign T_2914 = T_2913 | reset;
  assign T_2916 = T_2914 == 1'h0;
  assign lrscValid = lrscCount > 5'h0;
  assign T_2933 = lrscCount - 5'h1;
  assign T_2934 = T_2933[4:0];
  assign GEN_35 = lrscValid ? T_2934 : lrscCount;
  assign GEN_36 = io_cpu_invalidate_lr ? 5'h0 : GEN_35;
  assign T_2938 = s1_valid_not_nacked & s1_write;
  assign GEN_37 = T_2938 ? s1_req_cmd : pstore1_cmd;
  assign GEN_38 = T_2938 ? s1_req_typ : pstore1_typ;
  assign GEN_39 = T_2938 ? s1_paddr : pstore1_addr;
  assign GEN_40 = T_2938 ? io_cpu_s1_data : pstore1_data;
  assign GEN_41 = T_2938 ? s1_hit_way : pstore1_way;
  assign T_2943 = pstore1_typ[1:0];
  assign T_2945 = T_2943 == 2'h0;
  assign T_2946 = pstore1_data[7:0];
  assign T_2947 = {T_2946,T_2946};
  assign T_2948 = {T_2947,T_2947};
  assign T_2950 = T_2943 == 2'h1;
  assign T_2951 = pstore1_data[15:0];
  assign T_2952 = {T_2951,T_2951};
  assign T_2953 = T_2950 ? T_2952 : pstore1_data;
  assign T_2954 = T_2945 ? T_2948 : T_2953;
  assign pstore1_storegen_data = T_2954;
  assign pstore_drain_opportunistic = T_2359 == 1'h0;
  assign pstore_drain_on_miss = releaseInFlight | io_cpu_s2_nack;
  assign T_2985 = pstore_drain_opportunistic | pstore_drain_on_miss;
  assign T_2986 = T_2650 & T_2985;
  assign T_2987 = s2_valid_hit & s2_write;
  assign T_2994 = T_2987 == 1'h0;
  assign T_2996 = T_2992 == 1'h0;
  assign T_2997 = T_2994 | T_2996;
  assign T_2998 = T_2997 | reset;
  assign T_3000 = T_2998 == 1'h0;
  assign T_3001 = T_2987 | T_2992;
  assign T_3002 = T_3001 & pstore2_valid;
  assign T_3004 = T_2986 == 1'h0;
  assign T_3005 = T_3002 & T_3004;
  assign T_3007 = pstore2_valid == T_2986;
  assign advance_pstore1 = pstore1_valid & T_3007;
  assign T_3010 = pstore2_valid & T_3004;
  assign T_3011 = T_3010 | advance_pstore1;
  assign GEN_42 = advance_pstore1 ? pstore1_addr : pstore2_addr;
  assign GEN_43 = advance_pstore1 ? pstore1_way : pstore2_way;
  assign GEN_44 = advance_pstore1 ? pstore1_storegen_data : pstore2_storegen_data;
  assign T_3013 = pstore1_addr[0];
  assign T_3017 = T_2943 >= 2'h1;
  assign T_3021 = T_3013 | T_3017;
  assign T_3024 = T_3013 ? 1'h0 : 1'h1;
  assign T_3025 = {T_3021,T_3024};
  assign T_3026 = pstore1_addr[1];
  assign T_3028 = T_3026 ? T_3025 : 2'h0;
  assign T_3030 = T_2943 >= 2'h2;
  assign T_3033 = T_3030 ? 2'h3 : 2'h0;
  assign T_3034 = T_3028 | T_3033;
  assign T_3037 = T_3026 ? 2'h0 : T_3025;
  assign T_3038 = {T_3034,T_3037};
  assign GEN_45 = advance_pstore1 ? T_3038 : pstore2_storegen_mask;
  assign T_3040 = pstore2_valid ? pstore2_addr : pstore1_addr;
  assign T_3041 = pstore2_valid ? pstore2_way : pstore1_way;
  assign T_3042 = pstore2_valid ? pstore2_storegen_data : pstore1_storegen_data;
  assign T_3043 = {T_3042,T_3042};
  assign T_3045 = T_3040[2];
  assign GEN_124 = {{2'd0}, T_3045};
  assign pstore_mask_shift = GEN_124 << 2;
  assign T_3073 = pstore2_valid ? pstore2_storegen_mask : T_3038;
  assign GEN_125 = {{7'd0}, T_3073};
  assign T_3074 = GEN_125 << pstore_mask_shift;
  assign s1_idx = s1_req_addr[12:2];
  assign T_3075 = pstore1_addr[12:2];
  assign T_3076 = T_3075 == s1_idx;
  assign T_3077 = pstore1_valid & T_3076;
  assign T_3078 = pstore2_addr[12:2];
  assign T_3079 = T_3078 == s1_idx;
  assign T_3080 = pstore2_valid & T_3079;
  assign T_3081 = T_3077 | T_3080;
  assign s1_raw_hazard = s1_read & T_3081;
  assign T_3082 = s1_valid & s1_raw_hazard;
  assign GEN_46 = T_3082 ? 1'h1 : GEN_32;
  assign T_3091 = s2_write ? 2'h2 : s2_hit_state_state;
  assign s2_new_hit_state_state = T_3091;
  assign T_3135 = s2_hit_state_state == s2_new_hit_state_state;
  assign T_3137 = T_3135 == 1'h0;
  assign T_3138 = s2_valid_hit & T_3137;
  assign T_3140 = s2_victim_dirty == 1'h0;
  assign T_3141 = s2_victimize & T_3140;
  assign T_3142 = T_3138 | T_3141;
  assign T_3143 = s2_req_addr[12:6];
  assign T_3167_state = 2'h0;
  assign T_3189_state = s2_hit ? s2_new_hit_state_state : T_3167_state;
  assign T_3211 = s2_req_addr[31:13];
  assign T_3213 = s2_req_addr[31:6];
  assign T_3228 = {s2_req_cmd,1'h1};
  assign cachedGetMessage_addr_block = T_3213;
  assign cachedGetMessage_client_xact_id = 1'h0;
  assign cachedGetMessage_addr_beat = 3'h0;
  assign cachedGetMessage_is_builtin_type = 1'h0;
  assign cachedGetMessage_a_type = {{2'd0}, T_2638};
  assign cachedGetMessage_union = {{6'd0}, T_3228};
  assign cachedGetMessage_data = 64'h0;
  assign T_3288 = s2_req_addr[5:3];
  assign T_3289 = s2_req_addr[2:0];
  assign T_3330 = {T_3289,s2_req_typ};
  assign T_3331 = {T_3330,6'h0};
  assign uncachedGetMessage_addr_block = T_3213;
  assign uncachedGetMessage_client_xact_id = 1'h0;
  assign uncachedGetMessage_addr_beat = T_3288;
  assign uncachedGetMessage_is_builtin_type = 1'h1;
  assign uncachedGetMessage_a_type = 3'h0;
  assign uncachedGetMessage_union = T_3331;
  assign uncachedGetMessage_data = 64'h0;
  assign uncachedPutOffset = s2_req_addr[2];
  assign T_3430 = {T_2954,T_2954};
  assign GEN_126 = {{2'd0}, uncachedPutOffset};
  assign T_3458 = GEN_126 << 2;
  assign GEN_127 = {{7'd0}, T_3038};
  assign T_3459 = GEN_127 << T_3458;
  assign T_3496 = T_3459[7:0];
  assign T_3506 = {T_3496,1'h0};
  assign T_3526 = {{3'd0}, T_3506};
  assign uncachedPutMessage_addr_block = T_3213;
  assign uncachedPutMessage_client_xact_id = 1'h0;
  assign uncachedPutMessage_addr_beat = T_3288;
  assign uncachedPutMessage_is_builtin_type = 1'h1;
  assign uncachedPutMessage_a_type = 3'h2;
  assign uncachedPutMessage_union = T_3526;
  assign uncachedPutMessage_data = T_3430;
  assign T_3642 = {T_3330,T_3228};
  assign uncachedPutAtomicMessage_addr_block = T_3213;
  assign uncachedPutAtomicMessage_client_xact_id = 1'h0;
  assign uncachedPutAtomicMessage_addr_beat = T_3288;
  assign uncachedPutAtomicMessage_is_builtin_type = 1'h1;
  assign uncachedPutAtomicMessage_a_type = 3'h4;
  assign uncachedPutAtomicMessage_union = T_3642;
  assign uncachedPutAtomicMessage_data = T_3430;
  assign T_3729 = s2_valid_cached_miss & T_3140;
  assign T_3730 = T_3729 | s2_valid_uncached;
  assign T_3731 = T_3730 & fq_io_enq_ready;
  assign T_3733 = s2_valid_masked == 1'h0;
  assign T_3736 = T_2658 == 1'h0;
  assign T_3737 = T_3733 | T_3736;
  assign T_3738 = T_3737 | reset;
  assign T_3740 = T_3738 == 1'h0;
  assign GEN_54 = s2_write ? uncachedPutMessage_addr_block : uncachedGetMessage_addr_block;
  assign GEN_55 = s2_write ? uncachedPutMessage_client_xact_id : uncachedGetMessage_client_xact_id;
  assign GEN_56 = s2_write ? uncachedPutMessage_addr_beat : uncachedGetMessage_addr_beat;
  assign GEN_57 = s2_write ? uncachedPutMessage_is_builtin_type : uncachedGetMessage_is_builtin_type;
  assign GEN_58 = s2_write ? uncachedPutMessage_a_type : uncachedGetMessage_a_type;
  assign GEN_59 = s2_write ? uncachedPutMessage_union : uncachedGetMessage_union;
  assign GEN_60 = s2_write ? uncachedPutMessage_data : uncachedGetMessage_data;
  assign GEN_61 = s2_uncached ? GEN_54 : cachedGetMessage_addr_block;
  assign GEN_62 = s2_uncached ? GEN_55 : cachedGetMessage_client_xact_id;
  assign GEN_63 = s2_uncached ? GEN_56 : cachedGetMessage_addr_beat;
  assign GEN_64 = s2_uncached ? GEN_57 : cachedGetMessage_is_builtin_type;
  assign GEN_65 = s2_uncached ? GEN_58 : cachedGetMessage_a_type;
  assign GEN_66 = s2_uncached ? GEN_59 : cachedGetMessage_union;
  assign GEN_67 = s2_uncached ? GEN_60 : cachedGetMessage_data;
  assign T_3741 = io_mem_acquire_ready & io_mem_acquire_valid;
  assign GEN_68 = T_3741 ? 1'h1 : grant_wait;
  assign T_3750_0 = 3'h5;
  assign GEN_128 = {{1'd0}, T_3750_0};
  assign T_3752 = io_mem_grant_bits_g_type == GEN_128;
  assign T_3753 = io_mem_grant_bits_g_type == 4'h0;
  assign T_3754 = io_mem_grant_bits_is_builtin_type ? T_3752 : T_3753;
  assign grantIsVoluntary = io_mem_grant_bits_is_builtin_type & T_3753;
  assign T_3758 = T_3754 == 1'h0;
  assign T_3760 = grantIsVoluntary == 1'h0;
  assign grantIsUncached = T_3758 & T_3760;
  assign T_3761 = grantIsVoluntary & release_ack_wait;
  assign T_3762 = grant_wait | T_3761;
  assign T_3763 = T_3762 | reset;
  assign T_3765 = T_3763 == 1'h0;
  assign GEN_69 = grantIsUncached ? io_mem_grant_bits_data : GEN_22;
  assign GEN_70 = grantIsVoluntary ? 1'h0 : release_ack_wait;
  assign GEN_71 = io_mem_grant_valid ? GEN_69 : GEN_22;
  assign GEN_72 = io_mem_grant_valid ? GEN_70 : release_ack_wait;
  assign T_3767 = io_mem_grant_ready & io_mem_grant_valid;
  assign T_3768 = T_3767 & T_3754;
  assign T_3771 = refillCount == 3'h7;
  assign T_3773 = refillCount + 3'h1;
  assign T_3774 = T_3773[2:0];
  assign GEN_73 = T_3768 ? T_3774 : refillCount;
  assign refillDone = T_3768 & T_3771;
  assign grantDone = refillDone | grantIsUncached;
  assign T_3776 = T_3767 & grantDone;
  assign GEN_74 = T_3776 ? 1'h0 : GEN_68;
  assign T_3778 = T_3754 & io_mem_grant_valid;
  assign T_3781 = dataArb_io_in_1_valid == 1'h0;
  assign T_3782 = dataArb_io_in_1_ready | T_3781;
  assign T_3783 = T_3782 | reset;
  assign T_3785 = T_3783 == 1'h0;
  assign T_3788 = {T_3213,io_mem_grant_bits_addr_beat};
  assign GEN_129 = {{3'd0}, T_3788};
  assign T_3789 = GEN_129 << 3;
  assign T_3793 = metaWriteArb_io_in_1_valid == 1'h0;
  assign T_3794 = T_3793 | metaWriteArb_io_in_1_ready;
  assign T_3795 = T_3794 | reset;
  assign T_3797 = T_3795 == 1'h0;
  assign T_3806 = s2_write ? 2'h2 : 2'h1;
  assign T_3807 = io_mem_grant_bits_is_builtin_type ? 2'h0 : T_3806;
  assign T_3830_state = T_3807;
  assign T_3863 = T_3767 & T_3760;
  assign T_3866 = T_3758 | refillDone;
  assign T_3867 = T_3863 & T_3866;
  assign T_3891_manager_xact_id = io_mem_grant_bits_manager_xact_id;
  assign T_3891_manager_id = io_mem_grant_bits_manager_id;
  assign T_3914 = fq_io_enq_ready | reset;
  assign T_3916 = T_3914 == 1'h0;
  assign T_3918 = releaseInFlight | lrscValid;
  assign T_3921 = T_3918 == 1'h0;
  assign T_3922 = io_mem_probe_valid & T_3921;
  assign T_3925 = metaReadArb_io_in_1_ready & T_3921;
  assign T_3927 = s1_valid == 1'h0;
  assign T_3928 = T_3925 & T_3927;
  assign T_3930 = s2_valid == 1'h0;
  assign T_3931 = T_3930 | s2_valid_hit;
  assign T_3932 = T_3928 & T_3931;
  assign T_3935 = io_mem_release_ready & io_mem_release_valid;
  assign T_3936 = T_3935 & inWriteback;
  assign T_3939 = writebackCount == 3'h7;
  assign T_3941 = writebackCount + 3'h1;
  assign T_3942 = T_3941[2:0];
  assign GEN_76 = T_3936 ? T_3942 : writebackCount;
  assign writebackDone = T_3936 & T_3939;
  assign T_3945 = inWriteback == 1'h0;
  assign T_3946 = T_3935 & T_3945;
  assign releaseDone = writebackDone | T_3946;
  assign T_3948 = io_mem_release_ready == 1'h0;
  assign releaseRejected = io_mem_release_valid & T_3948;
  assign T_3949 = dataArb_io_in_2_ready & dataArb_io_in_2_valid;
  assign T_3951 = releaseRejected == 1'h0;
  assign T_3952 = s1_release_data_valid & T_3951;
  assign T_3954 = {1'h0,writebackCount};
  assign T_3957 = {1'h0,s2_release_data_valid};
  assign GEN_130 = {{1'd0}, s1_release_data_valid};
  assign T_3958 = GEN_130 + T_3957;
  assign T_3959 = T_3958[1:0];
  assign T_3960 = releaseRejected ? 2'h0 : T_3959;
  assign GEN_131 = {{2'd0}, T_3960};
  assign T_3961 = T_3954 + GEN_131;
  assign releaseDataBeat = T_3961[3:0];
  assign T_3985_state = 2'h0;
  assign T_4010 = T_3985_state == 2'h2;
  assign T_4011 = T_4010 ? 3'h0 : 3'h3;
  assign T_4040 = 2'h2 == probe_bits_p_type;
  assign T_4041 = T_4040 ? T_4011 : 3'h3;
  assign T_4042 = 2'h1 == probe_bits_p_type;
  assign T_4043 = T_4042 ? T_4011 : T_4041;
  assign T_4044 = 2'h0 == probe_bits_p_type;
  assign T_4045 = T_4044 ? T_4011 : T_4043;
  assign T_4074_addr_beat = 3'h0;
  assign T_4074_addr_block = probe_bits_addr_block;
  assign T_4074_client_xact_id = 1'h0;
  assign T_4074_voluntary = 1'h0;
  assign T_4074_r_type = T_4045;
  assign T_4074_data = 64'h0;
  assign T_4107 = s2_victim_dirty ? 3'h0 : 3'h3;
  assign voluntaryReleaseMessage_addr_beat = 3'h0;
  assign voluntaryReleaseMessage_addr_block = 26'h0;
  assign voluntaryReleaseMessage_client_xact_id = 1'h0;
  assign voluntaryReleaseMessage_voluntary = 1'h1;
  assign voluntaryReleaseMessage_r_type = T_4107;
  assign voluntaryReleaseMessage_data = 64'h0;
  assign voluntaryNewCoh_state = 2'h0;
  assign T_4221 = s2_probe_state_state == 2'h2;
  assign T_4222 = T_4221 ? 3'h0 : 3'h3;
  assign T_4252 = T_4040 ? T_4222 : 3'h3;
  assign T_4254 = T_4042 ? T_4222 : T_4252;
  assign T_4256 = T_4044 ? T_4222 : T_4254;
  assign probeResponseMessage_addr_beat = 3'h0;
  assign probeResponseMessage_addr_block = probe_bits_addr_block;
  assign probeResponseMessage_client_xact_id = 1'h0;
  assign probeResponseMessage_voluntary = 1'h0;
  assign probeResponseMessage_r_type = T_4256;
  assign probeResponseMessage_data = 64'h0;
  assign T_4312 = T_4040 ? 2'h0 : s2_probe_state_state;
  assign T_4314 = T_4042 ? 2'h0 : T_4312;
  assign T_4316 = T_4044 ? 2'h0 : T_4314;
  assign probeNewCoh_state = T_4316;
  assign newCoh_state = GEN_103;
  assign T_4381 = s2_victimize & s2_victim_dirty;
  assign T_4385 = T_3736 | reset;
  assign T_4387 = T_4385 == 1'h0;
  assign T_4389 = {s2_victim_tag,T_3143};
  assign GEN_77 = T_4381 ? 3'h2 : release_state;
  assign GEN_78 = T_4381 ? T_4389 : GEN_3;
  assign GEN_79 = T_4221 ? 3'h3 : GEN_77;
  assign T_4391 = s2_probe_state_state != 2'h0;
  assign T_4393 = T_4221 == 1'h0;
  assign T_4394 = T_4393 & T_4391;
  assign GEN_80 = T_4394 ? 3'h4 : GEN_79;
  assign T_4398 = T_4391 == 1'h0;
  assign T_4399 = T_4393 & T_4398;
  assign GEN_81 = T_4399 ? 1'h1 : s2_release_data_valid;
  assign GEN_82 = T_4399 ? 3'h5 : GEN_80;
  assign GEN_83 = s2_probe ? GEN_82 : GEN_77;
  assign GEN_84 = s2_probe ? GEN_81 : s2_release_data_valid;
  assign GEN_85 = releaseDone ? 3'h0 : GEN_83;
  assign T_4401 = release_state == 3'h5;
  assign T_4402 = release_state == 3'h4;
  assign T_4403 = T_4401 | T_4402;
  assign GEN_86 = T_4403 ? 1'h1 : GEN_84;
  assign T_4407 = T_4402 | T_2341;
  assign GEN_87 = releaseDone ? 3'h7 : GEN_85;
  assign GEN_90 = T_4407 ? probeResponseMessage_client_xact_id : T_4074_client_xact_id;
  assign GEN_91 = T_4407 ? probeResponseMessage_voluntary : T_4074_voluntary;
  assign GEN_92 = T_4407 ? probeResponseMessage_r_type : T_4074_r_type;
  assign GEN_94 = T_4407 ? GEN_87 : GEN_85;
  assign T_4409 = release_state == 3'h6;
  assign T_4410 = T_2340 | T_4409;
  assign GEN_95 = releaseDone ? 3'h6 : GEN_94;
  assign GEN_96 = releaseDone ? 1'h1 : GEN_72;
  assign GEN_99 = T_4410 ? voluntaryReleaseMessage_client_xact_id : GEN_90;
  assign GEN_100 = T_4410 ? voluntaryReleaseMessage_voluntary : GEN_91;
  assign GEN_101 = T_4410 ? voluntaryReleaseMessage_r_type : GEN_92;
  assign GEN_103 = T_4410 ? voluntaryNewCoh_state : probeNewCoh_state;
  assign GEN_104 = T_4410 ? s2_victim_way : {{1'd0}, s2_probe_way};
  assign GEN_105 = T_4410 ? GEN_95 : GEN_94;
  assign GEN_106 = T_4410 ? GEN_96 : GEN_72;
  assign T_4414 = T_3935 == 1'h0;
  assign T_4415 = s2_probe & T_4414;
  assign GEN_107 = T_4415 ? 1'h1 : GEN_46;
  assign T_4418 = releaseDataBeat < 4'h8;
  assign T_4419 = inWriteback & T_4418;
  assign T_4421 = releaseDataBeat[2:0];
  assign T_4422 = {io_mem_release_bits_addr_block,T_4421};
  assign GEN_132 = {{3'd0}, T_4422};
  assign T_4423 = GEN_132 << 3;
  assign T_4427 = release_state == 3'h7;
  assign T_4428 = T_4409 | T_4427;
  assign T_4430 = {io_mem_release_bits_addr_block,io_mem_release_bits_addr_beat};
  assign T_4431 = {T_4430,3'h0};
  assign T_4432 = T_4431[12:6];
  assign T_4436 = T_4431[31:13];
  assign T_4437 = metaWriteArb_io_in_2_ready & metaWriteArb_io_in_2_valid;
  assign GEN_108 = T_4437 ? 3'h0 : GEN_105;
  assign T_4439 = s1_valid | s2_valid;
  assign T_4440 = T_4439 | grant_wait;
  assign T_4442 = T_4440 == 1'h0;
  assign T_4443 = io_mem_grant_valid & grantIsUncached;
  assign T_4446 = T_2883 | reset;
  assign T_4448 = T_4446 == 1'h0;
  assign GEN_109 = doUncachedResp ? 1'h1 : s2_valid_hit;
  assign T_4452 = {uncachedPutOffset,5'h0};
  assign s2_data_word = s2_data >> T_4452;
  assign T_4453 = s2_req_typ[1:0];
  assign T_4454 = $signed(s2_req_typ);
  assign T_4456 = $signed(T_4454) >= $signed(3'sh0);
  assign T_4457 = s2_req_addr[1];
  assign T_4458 = s2_data_word[31:16];
  assign T_4459 = s2_data_word[15:0];
  assign T_4460 = T_4457 ? T_4458 : T_4459;
  assign T_4466 = T_4453 == 2'h1;
  assign T_4468 = T_4460[15];
  assign T_4469 = T_4456 & T_4468;
  assign T_4473 = T_4469 ? 16'hffff : 16'h0;
  assign T_4475 = T_4466 ? T_4473 : T_4458;
  assign T_4476 = {T_4475,T_4460};
  assign T_4477 = s2_req_addr[0];
  assign T_4478 = T_4476[15:8];
  assign T_4479 = T_4476[7:0];
  assign T_4480 = T_4477 ? T_4478 : T_4479;
  assign T_4486 = T_4453 == 2'h0;
  assign T_4488 = T_4480[7];
  assign T_4489 = T_4456 & T_4488;
  assign T_4493 = T_4489 ? 24'hffffff : 24'h0;
  assign T_4494 = T_4476[31:8];
  assign T_4495 = T_4486 ? T_4493 : T_4494;
  assign T_4496 = {T_4495,T_4480};
  assign T_4498 = s1_valid_masked & s1_read;
  assign T_4499 = T_4498 & s1_write;
  assign T_4501 = T_4499 == 1'h0;
  assign T_4502 = T_4501 | reset;
  assign T_4504 = T_4502 == 1'h0;
  assign GEN_111 = T_3741 ? 1'h0 : flushed;
  assign T_4511 = s2_req_cmd == 5'h5;
  assign T_4512 = s2_valid_masked & T_4511;
  assign T_4514 = flushed == 1'h0;
  assign GEN_112 = T_4514 ? T_2655 : flushing;
  assign GEN_113 = T_4512 ? T_4514 : T_2888;
  assign GEN_114 = T_4512 ? GEN_112 : flushing;
  assign T_4519 = metaReadArb_io_in_0_ready & metaReadArb_io_in_0_valid;
  assign T_4521 = s1_flush_valid == 1'h0;
  assign T_4522 = T_4519 & T_4521;
  assign T_4525 = T_4522 & T_2660;
  assign T_4527 = T_4525 & T_2343;
  assign T_4530 = T_4527 & T_2655;
  assign T_4535 = T_4508 == 7'h7f;
  assign T_4537 = T_4508 + 7'h1;
  assign T_4538 = T_4537[6:0];
  assign GEN_115 = T_4535 ? 1'h1 : GEN_111;
  assign GEN_116 = s2_flush_valid ? T_4538 : T_4508;
  assign GEN_117 = s2_flush_valid ? GEN_115 : GEN_111;
  assign T_4541 = flushed & T_2343;
  assign T_4544 = T_4541 & T_2655;
  assign GEN_118 = T_4544 ? 1'h0 : GEN_114;
  assign GEN_120 = flushing ? GEN_116 : T_4508;
  assign GEN_121 = flushing ? GEN_117 : GEN_111;
  assign GEN_122 = flushing ? GEN_118 : GEN_114;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_48 = {1{$random}};
  T_1927 = GEN_48[15:0];
  `endif
  `ifdef RANDOMIZE
  GEN_49 = {1{$random}};
  s1_valid = GEN_49[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_50 = {1{$random}};
  s1_probe = GEN_50[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_51 = {1{$random}};
  probe_bits_addr_block = GEN_51[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_52 = {1{$random}};
  probe_bits_p_type = GEN_52[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_53 = {1{$random}};
  s1_req_addr = GEN_53[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_75 = {1{$random}};
  s1_req_tag = GEN_75[8:0];
  `endif
  `ifdef RANDOMIZE
  GEN_88 = {1{$random}};
  s1_req_cmd = GEN_88[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_89 = {1{$random}};
  s1_req_typ = GEN_89[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_93 = {1{$random}};
  s1_req_phys = GEN_93[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_97 = {1{$random}};
  s1_req_data = GEN_97[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_98 = {1{$random}};
  s1_flush_valid = GEN_98[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_102 = {1{$random}};
  grant_wait = GEN_102[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_110 = {1{$random}};
  release_ack_wait = GEN_110[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_119 = {1{$random}};
  release_state = GEN_119[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_133 = {1{$random}};
  pstore2_valid = GEN_133[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_134 = {1{$random}};
  s2_valid = GEN_134[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_135 = {1{$random}};
  s2_probe = GEN_135[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_136 = {1{$random}};
  T_2500 = GEN_136[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_137 = {1{$random}};
  s2_req_addr = GEN_137[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_138 = {1{$random}};
  s2_req_tag = GEN_138[8:0];
  `endif
  `ifdef RANDOMIZE
  GEN_139 = {1{$random}};
  s2_req_cmd = GEN_139[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_140 = {1{$random}};
  s2_req_typ = GEN_140[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_141 = {1{$random}};
  s2_req_phys = GEN_141[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_142 = {1{$random}};
  s2_req_data = GEN_142[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_143 = {1{$random}};
  s2_uncached = GEN_143[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_144 = {1{$random}};
  s2_flush_valid = GEN_144[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_145 = {2{$random}};
  s2_data = GEN_145[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_146 = {1{$random}};
  s2_probe_way = GEN_146[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_147 = {1{$random}};
  s2_probe_state_state = GEN_147[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_148 = {1{$random}};
  s2_hit_way = GEN_148[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_149 = {1{$random}};
  s2_hit_state_state = GEN_149[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_150 = {1{$random}};
  T_2663 = GEN_150[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_151 = {1{$random}};
  s2_victim_tag = GEN_151[18:0];
  `endif
  `ifdef RANDOMIZE
  GEN_152 = {1{$random}};
  T_2839_state = GEN_152[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_153 = {1{$random}};
  T_2910 = GEN_153[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_154 = {1{$random}};
  lrscCount = GEN_154[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_155 = {1{$random}};
  lrscAddr = GEN_155[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_156 = {1{$random}};
  pstore1_cmd = GEN_156[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_157 = {1{$random}};
  pstore1_typ = GEN_157[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_158 = {1{$random}};
  pstore1_addr = GEN_158[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_159 = {1{$random}};
  pstore1_data = GEN_159[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_160 = {1{$random}};
  pstore1_way = GEN_160[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_161 = {1{$random}};
  T_2992 = GEN_161[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_162 = {1{$random}};
  pstore2_addr = GEN_162[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_163 = {1{$random}};
  pstore2_way = GEN_163[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_164 = {1{$random}};
  pstore2_storegen_data = GEN_164[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_165 = {1{$random}};
  pstore2_storegen_mask = GEN_165[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_166 = {1{$random}};
  refillCount = GEN_166[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_167 = {1{$random}};
  writebackCount = GEN_167[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_168 = {1{$random}};
  s1_release_data_valid = GEN_168[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_169 = {1{$random}};
  s2_release_data_valid = GEN_169[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_170 = {1{$random}};
  doUncachedResp = GEN_170[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_171 = {1{$random}};
  flushed = GEN_171[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_172 = {1{$random}};
  flushing = GEN_172[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_173 = {1{$random}};
  T_4508 = GEN_173[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_174 = {2{$random}};
  GEN_14 = GEN_174[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_175 = {1{$random}};
  GEN_33 = GEN_175[7:0];
  `endif
  `ifdef RANDOMIZE
  GEN_176 = {2{$random}};
  GEN_34 = GEN_176[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_177 = {1{$random}};
  GEN_47 = GEN_177[7:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_1927 <= 16'h1;
    end else begin
      if(T_1924) begin
        T_1927 <= T_1936;
      end
    end
    if(reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= T_2218;
    end
    if(reset) begin
      s1_probe <= 1'h0;
    end else begin
      s1_probe <= T_2220;
    end
    if(1'h0) begin
    end else begin
      if(T_4381) begin
        probe_bits_addr_block <= T_4389;
      end else begin
        if(T_2220) begin
          probe_bits_addr_block <= io_mem_probe_bits_addr_block;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2220) begin
        probe_bits_p_type <= io_mem_probe_bits_p_type;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_addr <= T_2319;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_tag <= io_cpu_req_bits_tag;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_cmd <= io_cpu_req_bits_cmd;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_typ <= io_cpu_req_bits_typ;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_phys <= io_cpu_req_bits_phys;
      end
    end
    if(1'h0) begin
    end else begin
      if(metaReadArb_io_out_valid) begin
        s1_req_data <= io_cpu_req_bits_data;
      end
    end
    if(1'h0) begin
    end else begin
      s1_flush_valid <= T_4530;
    end
    if(reset) begin
      grant_wait <= 1'h0;
    end else begin
      if(T_3776) begin
        grant_wait <= 1'h0;
      end else begin
        if(T_3741) begin
          grant_wait <= 1'h1;
        end
      end
    end
    if(reset) begin
      release_ack_wait <= 1'h0;
    end else begin
      if(T_4410) begin
        if(releaseDone) begin
          release_ack_wait <= 1'h1;
        end else begin
          if(io_mem_grant_valid) begin
            if(grantIsVoluntary) begin
              release_ack_wait <= 1'h0;
            end
          end
        end
      end else begin
        if(io_mem_grant_valid) begin
          if(grantIsVoluntary) begin
            release_ack_wait <= 1'h0;
          end
        end
      end
    end
    if(reset) begin
      release_state <= 3'h0;
    end else begin
      if(T_4437) begin
        release_state <= 3'h0;
      end else begin
        if(T_4410) begin
          if(releaseDone) begin
            release_state <= 3'h6;
          end else begin
            if(T_4407) begin
              if(releaseDone) begin
                release_state <= 3'h7;
              end else begin
                if(releaseDone) begin
                  release_state <= 3'h0;
                end else begin
                  if(s2_probe) begin
                    if(T_4399) begin
                      release_state <= 3'h5;
                    end else begin
                      if(T_4394) begin
                        release_state <= 3'h4;
                      end else begin
                        if(T_4221) begin
                          release_state <= 3'h3;
                        end else begin
                          if(T_4381) begin
                            release_state <= 3'h2;
                          end
                        end
                      end
                    end
                  end else begin
                    if(T_4381) begin
                      release_state <= 3'h2;
                    end
                  end
                end
              end
            end else begin
              if(releaseDone) begin
                release_state <= 3'h0;
              end else begin
                if(s2_probe) begin
                  if(T_4399) begin
                    release_state <= 3'h5;
                  end else begin
                    if(T_4394) begin
                      release_state <= 3'h4;
                    end else begin
                      if(T_4221) begin
                        release_state <= 3'h3;
                      end else begin
                        if(T_4381) begin
                          release_state <= 3'h2;
                        end
                      end
                    end
                  end
                end else begin
                  if(T_4381) begin
                    release_state <= 3'h2;
                  end
                end
              end
            end
          end
        end else begin
          if(T_4407) begin
            if(releaseDone) begin
              release_state <= 3'h7;
            end else begin
              if(releaseDone) begin
                release_state <= 3'h0;
              end else begin
                if(s2_probe) begin
                  if(T_4399) begin
                    release_state <= 3'h5;
                  end else begin
                    if(T_4394) begin
                      release_state <= 3'h4;
                    end else begin
                      if(T_4221) begin
                        release_state <= 3'h3;
                      end else begin
                        release_state <= GEN_77;
                      end
                    end
                  end
                end else begin
                  release_state <= GEN_77;
                end
              end
            end
          end else begin
            if(releaseDone) begin
              release_state <= 3'h0;
            end else begin
              if(s2_probe) begin
                if(T_4399) begin
                  release_state <= 3'h5;
                end else begin
                  if(T_4394) begin
                    release_state <= 3'h4;
                  end else begin
                    if(T_4221) begin
                      release_state <= 3'h3;
                    end else begin
                      release_state <= GEN_77;
                    end
                  end
                end
              end else begin
                release_state <= GEN_77;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      pstore2_valid <= T_3011;
    end
    if(reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= s1_valid_masked;
    end
    if(reset) begin
      s2_probe <= 1'h0;
    end else begin
      s2_probe <= s1_probe;
    end
    if(1'h0) begin
    end else begin
      T_2500 <= T_2249;
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_addr <= s1_paddr;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_tag <= s1_req_tag;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_cmd <= s1_req_cmd;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_typ <= s1_req_typ;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_phys <= s1_req_phys;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_req_data <= s1_req_data;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_uncached <= T_2570;
      end
    end
    if(1'h0) begin
    end else begin
      s2_flush_valid <= s1_flush_valid;
    end
    if(1'h0) begin
    end else begin
      if(io_mem_grant_valid) begin
        if(grantIsUncached) begin
          s2_data <= io_mem_grant_bits_data;
        end else begin
          if(T_2585) begin
            s2_data <= data_io_resp_0;
          end
        end
      end else begin
        if(T_2585) begin
          s2_data <= data_io_resp_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(s1_probe) begin
        s2_probe_way <= s1_hit_way;
      end
    end
    if(1'h0) begin
    end else begin
      if(s1_probe) begin
        s2_probe_state_state <= s1_hit_state_state;
      end
    end
    if(1'h0) begin
    end else begin
      if(s1_valid_not_nacked) begin
        s2_hit_way <= s1_hit_way;
      end
    end
    if(1'h0) begin
    end else begin
      if(s1_valid_not_nacked) begin
        s2_hit_state_state <= s1_hit_state_state;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        T_2663 <= s1_victim_way;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        s2_victim_tag <= GEN_0;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2568) begin
        T_2839_state <= GEN_1;
      end
    end
    if(1'h0) begin
    end else begin
      T_2910 <= T_2909;
    end
    if(reset) begin
      lrscCount <= 5'h0;
    end else begin
      if(io_cpu_invalidate_lr) begin
        lrscCount <= 5'h0;
      end else begin
        if(lrscValid) begin
          lrscCount <= T_2934;
        end
      end
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      if(T_2938) begin
        pstore1_cmd <= s1_req_cmd;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2938) begin
        pstore1_typ <= s1_req_typ;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2938) begin
        pstore1_addr <= s1_paddr;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2938) begin
        pstore1_data <= io_cpu_s1_data;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_2938) begin
        pstore1_way <= s1_hit_way;
      end
    end
    if(1'h0) begin
    end else begin
      T_2992 <= T_3005;
    end
    if(1'h0) begin
    end else begin
      if(advance_pstore1) begin
        pstore2_addr <= pstore1_addr;
      end
    end
    if(1'h0) begin
    end else begin
      if(advance_pstore1) begin
        pstore2_way <= pstore1_way;
      end
    end
    if(1'h0) begin
    end else begin
      if(advance_pstore1) begin
        pstore2_storegen_data <= pstore1_storegen_data;
      end
    end
    if(1'h0) begin
    end else begin
      if(advance_pstore1) begin
        pstore2_storegen_mask <= T_3038;
      end
    end
    if(reset) begin
      refillCount <= 3'h0;
    end else begin
      if(T_3768) begin
        refillCount <= T_3774;
      end
    end
    if(reset) begin
      writebackCount <= 3'h0;
    end else begin
      if(T_3936) begin
        writebackCount <= T_3942;
      end
    end
    if(1'h0) begin
    end else begin
      s1_release_data_valid <= T_3949;
    end
    if(1'h0) begin
    end else begin
      s2_release_data_valid <= T_3952;
    end
    if(1'h0) begin
    end else begin
      doUncachedResp <= io_cpu_replay_next;
    end
    if(reset) begin
      flushed <= 1'h1;
    end else begin
      if(flushing) begin
        if(s2_flush_valid) begin
          if(T_4535) begin
            flushed <= 1'h1;
          end else begin
            if(T_3741) begin
              flushed <= 1'h0;
            end
          end
        end else begin
          if(T_3741) begin
            flushed <= 1'h0;
          end
        end
      end else begin
        if(T_3741) begin
          flushed <= 1'h0;
        end
      end
    end
    if(reset) begin
      flushing <= 1'h0;
    end else begin
      if(flushing) begin
        if(T_4544) begin
          flushing <= 1'h0;
        end else begin
          if(T_4512) begin
            if(T_4514) begin
              flushing <= T_2655;
            end
          end
        end
      end else begin
        if(T_4512) begin
          if(T_4514) begin
            flushing <= T_2655;
          end
        end
      end
    end
    if(reset) begin
      T_4508 <= 7'h0;
    end else begin
      if(flushing) begin
        if(s2_flush_valid) begin
          T_4508 <= T_4538;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_2916) begin
          $fwrite(32'h80000002,"Assertion failed: PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_D_CACHE exception occurred - cache response not killed.\n    at dcache.scala:167 assert(!(Reg(next=\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_2916) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_3000) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:204 assert(!s2_store_valid || !pstore1_held)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_3000) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (s2_uncached & T_3740) begin
          $fwrite(32'h80000002,"Assertion failed: cache hit on uncached access\n    at dcache.scala:267 assert(!s2_valid_masked || !s2_hit_state.isValid(), ---cache hit on uncached access---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (s2_uncached & T_3740) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_mem_grant_valid & T_3765) begin
          $fwrite(32'h80000002,"Assertion failed: unexpected grant\n    at dcache.scala:283 assert(grant_wait || grantIsVoluntary && release_ack_wait, ---unexpected grant---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_mem_grant_valid & T_3765) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_3785) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:294 assert(dataArb.io.in(1).ready || !dataArb.io.in(1).valid)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_3785) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_3797) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:302 assert(!metaWriteArb.io.in(1).valid || metaWriteArb.io.in(1).ready)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_3797) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (fq_io_enq_valid & T_3916) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:312 when (fq.io.enq.valid) { assert(fq.io.enq.ready) }\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (fq_io_enq_valid & T_3916) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_4381 & T_4387) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:338 assert(!s2_hit_state.isValid())\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_4381 & T_4387) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (doUncachedResp & T_4448) begin
          $fwrite(32'h80000002,"Assertion failed\n    at dcache.scala:395 assert(!s2_valid_hit)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (doUncachedResp & T_4448) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_4504) begin
          $fwrite(32'h80000002,"Assertion failed: unsupported D$ operation\n    at dcache.scala:418 assert(!(s1_valid_masked && s1_read && s1_write), ---unsupported D$ operation---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_4504) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
