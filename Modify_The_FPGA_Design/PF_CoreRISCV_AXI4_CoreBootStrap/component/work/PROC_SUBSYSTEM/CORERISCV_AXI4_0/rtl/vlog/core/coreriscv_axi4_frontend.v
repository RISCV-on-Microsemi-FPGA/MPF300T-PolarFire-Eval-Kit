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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FRONTEND(
  input   clk,
  input   reset,
  input   io_cpu_req_valid,
  input  [31:0] io_cpu_req_bits_pc,
  input   io_cpu_req_bits_speculative,
  input   io_cpu_resp_ready,
  output  io_cpu_resp_valid,
  output [31:0] io_cpu_resp_bits_pc,
  output [31:0] io_cpu_resp_bits_data_0,
  output  io_cpu_resp_bits_mask,
  output  io_cpu_resp_bits_xcpt_if,
  output  io_cpu_resp_bits_replay,
  output  io_cpu_btb_resp_valid,
  output  io_cpu_btb_resp_bits_taken,
  output  io_cpu_btb_resp_bits_mask,
  output  io_cpu_btb_resp_bits_bridx,
  output [31:0] io_cpu_btb_resp_bits_target,
  output  io_cpu_btb_resp_bits_entry,
  output  io_cpu_btb_resp_bits_bht_history,
  output [1:0] io_cpu_btb_resp_bits_bht_value,
  input   io_cpu_btb_update_valid,
  input   io_cpu_btb_update_bits_prediction_valid,
  input   io_cpu_btb_update_bits_prediction_bits_taken,
  input   io_cpu_btb_update_bits_prediction_bits_mask,
  input   io_cpu_btb_update_bits_prediction_bits_bridx,
  input  [31:0] io_cpu_btb_update_bits_prediction_bits_target,
  input   io_cpu_btb_update_bits_prediction_bits_entry,
  input   io_cpu_btb_update_bits_prediction_bits_bht_history,
  input  [1:0] io_cpu_btb_update_bits_prediction_bits_bht_value,
  input  [31:0] io_cpu_btb_update_bits_pc,
  input  [31:0] io_cpu_btb_update_bits_target,
  input   io_cpu_btb_update_bits_taken,
  input   io_cpu_btb_update_bits_isJump,
  input   io_cpu_btb_update_bits_isReturn,
  input  [31:0] io_cpu_btb_update_bits_br_pc,
  input   io_cpu_bht_update_valid,
  input   io_cpu_bht_update_bits_prediction_valid,
  input   io_cpu_bht_update_bits_prediction_bits_taken,
  input   io_cpu_bht_update_bits_prediction_bits_mask,
  input   io_cpu_bht_update_bits_prediction_bits_bridx,
  input  [31:0] io_cpu_bht_update_bits_prediction_bits_target,
  input   io_cpu_bht_update_bits_prediction_bits_entry,
  input   io_cpu_bht_update_bits_prediction_bits_bht_history,
  input  [1:0] io_cpu_bht_update_bits_prediction_bits_bht_value,
  input  [31:0] io_cpu_bht_update_bits_pc,
  input   io_cpu_bht_update_bits_taken,
  input   io_cpu_bht_update_bits_mispredict,
  input   io_cpu_ras_update_valid,
  input   io_cpu_ras_update_bits_isCall,
  input   io_cpu_ras_update_bits_isReturn,
  input  [31:0] io_cpu_ras_update_bits_returnAddr,
  input   io_cpu_ras_update_bits_prediction_valid,
  input   io_cpu_ras_update_bits_prediction_bits_taken,
  input   io_cpu_ras_update_bits_prediction_bits_mask,
  input   io_cpu_ras_update_bits_prediction_bits_bridx,
  input  [31:0] io_cpu_ras_update_bits_prediction_bits_target,
  input   io_cpu_ras_update_bits_prediction_bits_entry,
  input   io_cpu_ras_update_bits_prediction_bits_bht_history,
  input  [1:0] io_cpu_ras_update_bits_prediction_bits_bht_value,
  input   io_cpu_flush_icache,
  input   io_cpu_flush_tlb,
  output [31:0] io_cpu_npc,
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
  output  io_mem_grant_ready,
  input   io_mem_grant_valid,
  input  [2:0] io_mem_grant_bits_addr_beat,
  input   io_mem_grant_bits_client_xact_id,
  input  [1:0] io_mem_grant_bits_manager_xact_id,
  input   io_mem_grant_bits_is_builtin_type,
  input  [3:0] io_mem_grant_bits_g_type,
  input  [63:0] io_mem_grant_bits_data
);
//<CJ> RESET_VECTOR_ADDR
  parameter RESET_VECTOR_ADDR = 60000000;

  wire  icache_clk;
  wire  icache_reset;
  wire  icache_io_req_valid;
  wire [31:0] icache_io_req_bits_addr;
  wire [19:0] icache_io_s1_ppn;
  wire  icache_io_s1_kill;
  wire  icache_io_s2_kill;
  wire  icache_io_resp_ready;
  wire  icache_io_resp_valid;
  wire [31:0] icache_io_resp_bits_data;
  wire [63:0] icache_io_resp_bits_datablock;
  wire  icache_io_invalidate;
  wire  icache_io_mem_acquire_ready;
  wire  icache_io_mem_acquire_valid;
  wire [25:0] icache_io_mem_acquire_bits_addr_block;
  wire  icache_io_mem_acquire_bits_client_xact_id;
  wire [2:0] icache_io_mem_acquire_bits_addr_beat;
  wire  icache_io_mem_acquire_bits_is_builtin_type;
  wire [2:0] icache_io_mem_acquire_bits_a_type;
  wire [11:0] icache_io_mem_acquire_bits_union;
  wire [63:0] icache_io_mem_acquire_bits_data;
  wire  icache_io_mem_grant_ready;
  wire  icache_io_mem_grant_valid;
  wire [2:0] icache_io_mem_grant_bits_addr_beat;
  wire  icache_io_mem_grant_bits_client_xact_id;
  wire [1:0] icache_io_mem_grant_bits_manager_xact_id;
  wire  icache_io_mem_grant_bits_is_builtin_type;
  wire [3:0] icache_io_mem_grant_bits_g_type;
  wire [63:0] icache_io_mem_grant_bits_data;
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
  reg [31:0] s1_pc_;
  reg [31:0] GEN_15;
  wire [31:0] T_1315;
  wire [31:0] T_1317;
  wire [31:0] s1_pc;
  reg  s1_speculative;
  reg [31:0] GEN_16;
  reg  s1_same_block;
  reg [31:0] GEN_17;
  reg  s2_valid;
  reg [31:0] GEN_18;
  reg [31:0] s2_pc;
  reg [31:0] GEN_19;
  reg  s2_btb_resp_valid;
  reg [31:0] GEN_20;
  reg  s2_btb_resp_bits_taken;
  reg [31:0] GEN_21;
  reg  s2_btb_resp_bits_mask;
  reg [31:0] GEN_22;
  reg  s2_btb_resp_bits_bridx;
  reg [31:0] GEN_23;
  reg [31:0] s2_btb_resp_bits_target;
  reg [31:0] GEN_24;
  reg  s2_btb_resp_bits_entry;
  reg [31:0] GEN_25;
  reg  s2_btb_resp_bits_bht_history;
  reg [31:0] GEN_26;
  reg [1:0] s2_btb_resp_bits_bht_value;
  reg [31:0] GEN_27;
  reg  s2_xcpt_if;
  reg [31:0] GEN_28;
  reg  s2_speculative;
  reg [31:0] GEN_29;
  wire [31:0] T_1342;
  wire [31:0] T_1344;
  wire [31:0] T_1345;
  wire [32:0] T_1347;
  wire [31:0] ntpc;
  wire [31:0] predicted_npc;
  wire  T_1349;
  wire  icmiss;
  wire [31:0] npc;
  wire  T_1351;
  wire  T_1353;
  wire  T_1354;
  wire [31:0] T_1356;
  wire [31:0] T_1358;
  wire  T_1359;
  wire  T_1360;
  wire  s0_same_block;
  wire  T_1362;
  wire  stall;
  wire  T_1364;
  wire  T_1366;
  wire  T_1367;
  wire  T_1369;
  wire  T_1375;
  wire  T_1376;
  wire [31:0] GEN_0;
  wire  GEN_1;
  wire  GEN_2;
  wire  GEN_3;
  wire [31:0] GEN_4;
  wire  GEN_5;
  wire  GEN_6;
  wire [31:0] GEN_7;
  wire  GEN_8;
  wire  GEN_9;
  wire  GEN_10;
  wire [31:0] GEN_11;
  wire  GEN_12;
  wire  GEN_13;
  wire  T_1383;
  wire [19:0] T_1384;
  wire  T_1391;
  wire  T_1392;
  wire  T_1393;
  wire  T_1394;
  wire  T_1395;
  wire  T_1396;
  wire  T_1400;
  wire  T_1401;
  wire  T_1402;
  wire  T_1403;
  wire  T_1404;
  wire [31:0] T_1405;
  wire  T_1406;
  wire [5:0] GEN_14;
  wire [5:0] T_1407;
  wire [63:0] fetch_data;
  wire [31:0] T_1408;
  wire [1:0] T_1411;
  wire  T_1414;
  wire  T_1416;
  wire  T_1417;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_I_CACHE icache (
    .clk(icache_clk),
    .reset(icache_reset),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_ppn(icache_io_s1_ppn),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_ready(icache_io_resp_ready),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_datablock(icache_io_resp_bits_datablock),
    .io_invalidate(icache_io_invalidate),
    .io_mem_acquire_ready(icache_io_mem_acquire_ready),
    .io_mem_acquire_valid(icache_io_mem_acquire_valid),
    .io_mem_acquire_bits_addr_block(icache_io_mem_acquire_bits_addr_block),
    .io_mem_acquire_bits_client_xact_id(icache_io_mem_acquire_bits_client_xact_id),
    .io_mem_acquire_bits_addr_beat(icache_io_mem_acquire_bits_addr_beat),
    .io_mem_acquire_bits_is_builtin_type(icache_io_mem_acquire_bits_is_builtin_type),
    .io_mem_acquire_bits_a_type(icache_io_mem_acquire_bits_a_type),
    .io_mem_acquire_bits_union(icache_io_mem_acquire_bits_union),
    .io_mem_acquire_bits_data(icache_io_mem_acquire_bits_data),
    .io_mem_grant_ready(icache_io_mem_grant_ready),
    .io_mem_grant_valid(icache_io_mem_grant_valid),
    .io_mem_grant_bits_addr_beat(icache_io_mem_grant_bits_addr_beat),
    .io_mem_grant_bits_client_xact_id(icache_io_mem_grant_bits_client_xact_id),
    .io_mem_grant_bits_manager_xact_id(icache_io_mem_grant_bits_manager_xact_id),
    .io_mem_grant_bits_is_builtin_type(icache_io_mem_grant_bits_is_builtin_type),
    .io_mem_grant_bits_g_type(icache_io_mem_grant_bits_g_type),
    .io_mem_grant_bits_data(icache_io_mem_grant_bits_data)
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
  assign io_cpu_resp_valid = T_1404;
  assign io_cpu_resp_bits_pc = s2_pc;
  assign io_cpu_resp_bits_data_0 = T_1408;
  assign io_cpu_resp_bits_mask = T_1411[0];
  assign io_cpu_resp_bits_xcpt_if = s2_xcpt_if;
  assign io_cpu_resp_bits_replay = T_1417;
  assign io_cpu_btb_resp_valid = s2_btb_resp_valid;
  assign io_cpu_btb_resp_bits_taken = s2_btb_resp_bits_taken;
  assign io_cpu_btb_resp_bits_mask = s2_btb_resp_bits_mask;
  assign io_cpu_btb_resp_bits_bridx = s2_btb_resp_bits_bridx;
  assign io_cpu_btb_resp_bits_target = s2_btb_resp_bits_target;
  assign io_cpu_btb_resp_bits_entry = s2_btb_resp_bits_entry;
  assign io_cpu_btb_resp_bits_bht_history = s2_btb_resp_bits_bht_history;
  assign io_cpu_btb_resp_bits_bht_value = s2_btb_resp_bits_bht_value;
  assign io_cpu_npc = T_1405;
  assign io_ptw_req_valid = tlb_io_ptw_req_valid;
  assign io_ptw_req_bits_prv = tlb_io_ptw_req_bits_prv;
  assign io_ptw_req_bits_pum = tlb_io_ptw_req_bits_pum;
  assign io_ptw_req_bits_mxr = tlb_io_ptw_req_bits_mxr;
  assign io_ptw_req_bits_addr = tlb_io_ptw_req_bits_addr;
  assign io_ptw_req_bits_store = tlb_io_ptw_req_bits_store;
  assign io_ptw_req_bits_fetch = tlb_io_ptw_req_bits_fetch;
  assign io_mem_acquire_valid = icache_io_mem_acquire_valid;
  assign io_mem_acquire_bits_addr_block = icache_io_mem_acquire_bits_addr_block;
  assign io_mem_acquire_bits_client_xact_id = icache_io_mem_acquire_bits_client_xact_id;
  assign io_mem_acquire_bits_addr_beat = icache_io_mem_acquire_bits_addr_beat;
  assign io_mem_acquire_bits_is_builtin_type = icache_io_mem_acquire_bits_is_builtin_type;
  assign io_mem_acquire_bits_a_type = icache_io_mem_acquire_bits_a_type;
  assign io_mem_acquire_bits_union = icache_io_mem_acquire_bits_union;
  assign io_mem_acquire_bits_data = icache_io_mem_acquire_bits_data;
  assign io_mem_grant_ready = icache_io_mem_grant_ready;
  assign icache_clk = clk;
  assign icache_reset = reset;
  assign icache_io_req_valid = T_1392;
  assign icache_io_req_bits_addr = io_cpu_npc;
  assign icache_io_s1_ppn = tlb_io_resp_ppn;
  assign icache_io_s1_kill = T_1396;
  assign icache_io_s2_kill = s2_speculative;
  assign icache_io_resp_ready = T_1401;
  assign icache_io_invalidate = io_cpu_flush_icache;
  assign icache_io_mem_acquire_ready = io_mem_acquire_ready;
  assign icache_io_mem_grant_valid = io_mem_grant_valid;
  assign icache_io_mem_grant_bits_addr_beat = io_mem_grant_bits_addr_beat;
  assign icache_io_mem_grant_bits_client_xact_id = io_mem_grant_bits_client_xact_id;
  assign icache_io_mem_grant_bits_manager_xact_id = io_mem_grant_bits_manager_xact_id;
  assign icache_io_mem_grant_bits_is_builtin_type = io_mem_grant_bits_is_builtin_type;
  assign icache_io_mem_grant_bits_g_type = io_mem_grant_bits_g_type;
  assign icache_io_mem_grant_bits_data = io_mem_grant_bits_data;
  assign tlb_clk = clk;
  assign tlb_reset = reset;
  assign tlb_io_req_valid = T_1383;
  assign tlb_io_req_bits_vpn = T_1384;
  assign tlb_io_req_bits_passthrough = 1'h0;
  assign tlb_io_req_bits_instruction = 1'h1;
  assign tlb_io_req_bits_store = 1'h0;
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
  assign T_1315 = ~ s1_pc_;
  assign T_1317 = T_1315 | 32'h3;
  assign s1_pc = ~ T_1317;
  assign T_1342 = ~ s1_pc;
  assign T_1344 = T_1342 | 32'h3;
  assign T_1345 = ~ T_1344;
  assign T_1347 = T_1345 + 32'h4;
  assign ntpc = T_1347[31:0];
  assign predicted_npc = ntpc;
  assign T_1349 = icache_io_resp_valid == 1'h0;
  assign icmiss = s2_valid & T_1349;
  assign npc = icmiss ? s2_pc : predicted_npc;
  assign T_1351 = icmiss == 1'h0;
  assign T_1353 = io_cpu_req_valid == 1'h0;
  assign T_1354 = T_1351 & T_1353;
  assign T_1356 = ntpc & 32'h8;
  assign T_1358 = s1_pc & 32'h8;
  assign T_1359 = T_1356 == T_1358;
  assign T_1360 = T_1354 & T_1359;
  assign s0_same_block = T_1360;
  assign T_1362 = io_cpu_resp_ready == 1'h0;
  assign stall = io_cpu_resp_valid & T_1362;
  assign T_1364 = stall == 1'h0;
  assign T_1366 = tlb_io_resp_miss == 1'h0;
  assign T_1367 = s0_same_block & T_1366;
  assign T_1369 = icmiss ? s2_speculative : 1'h1;
  assign T_1375 = tlb_io_resp_cacheable == 1'h0;
  assign T_1376 = s1_speculative & T_1375;
  assign GEN_0 = T_1351 ? s1_pc : s2_pc;
  assign GEN_1 = T_1351 ? T_1376 : s2_speculative;
  assign GEN_2 = T_1351 ? tlb_io_resp_xcpt_if : s2_xcpt_if;
  assign GEN_3 = T_1364 ? T_1367 : s1_same_block;
  assign GEN_4 = T_1364 ? npc : s1_pc_;
  assign GEN_5 = T_1364 ? T_1369 : s1_speculative;
  assign GEN_6 = T_1364 ? T_1351 : s2_valid;
  assign GEN_7 = T_1364 ? GEN_0 : s2_pc;
  assign GEN_8 = T_1364 ? GEN_1 : s2_speculative;
  assign GEN_9 = T_1364 ? GEN_2 : s2_xcpt_if;
  assign GEN_10 = io_cpu_req_valid ? 1'h0 : GEN_3;
  assign GEN_11 = io_cpu_req_valid ? io_cpu_req_bits_pc : GEN_4;
  assign GEN_12 = io_cpu_req_valid ? io_cpu_req_bits_speculative : GEN_5;
  assign GEN_13 = io_cpu_req_valid ? 1'h0 : GEN_6;
  assign T_1383 = T_1364 & T_1351;
  assign T_1384 = s1_pc[31:12];
  assign T_1391 = s0_same_block == 1'h0;
  assign T_1392 = T_1364 & T_1391;
  assign T_1393 = io_cpu_req_valid | tlb_io_resp_miss;
  assign T_1394 = T_1393 | tlb_io_resp_xcpt_if;
  assign T_1395 = T_1394 | icmiss;
  assign T_1396 = T_1395 | io_cpu_flush_tlb;
  assign T_1400 = s1_same_block == 1'h0;
  assign T_1401 = T_1364 & T_1400;
  assign T_1402 = icache_io_resp_valid | s2_speculative;
  assign T_1403 = T_1402 | s2_xcpt_if;
  assign T_1404 = s2_valid & T_1403;
  assign T_1405 = io_cpu_req_valid ? io_cpu_req_bits_pc : npc;
  assign T_1406 = s2_pc[2];
  assign GEN_14 = {{5'd0}, T_1406};
  assign T_1407 = GEN_14 << 5;
  assign fetch_data = icache_io_resp_bits_datablock >> T_1407;
  assign T_1408 = fetch_data[31:0];
  assign T_1411 = 2'h1 << T_1406;
  assign T_1414 = s2_speculative & T_1349;
  assign T_1416 = s2_xcpt_if == 1'h0;
  assign T_1417 = T_1414 & T_1416;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_15 = {1{$random}};
  s1_pc_ = GEN_15[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_16 = {1{$random}};
  s1_speculative = GEN_16[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_17 = {1{$random}};
  s1_same_block = GEN_17[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_18 = {1{$random}};
  s2_valid = GEN_18[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_19 = {1{$random}};
  s2_pc = GEN_19[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_20 = {1{$random}};
  s2_btb_resp_valid = GEN_20[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_21 = {1{$random}};
  s2_btb_resp_bits_taken = GEN_21[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_22 = {1{$random}};
  s2_btb_resp_bits_mask = GEN_22[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_23 = {1{$random}};
  s2_btb_resp_bits_bridx = GEN_23[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_24 = {1{$random}};
  s2_btb_resp_bits_target = GEN_24[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_25 = {1{$random}};
  s2_btb_resp_bits_entry = GEN_25[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_26 = {1{$random}};
  s2_btb_resp_bits_bht_history = GEN_26[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_27 = {1{$random}};
  s2_btb_resp_bits_bht_value = GEN_27[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_28 = {1{$random}};
  s2_xcpt_if = GEN_28[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_29 = {1{$random}};
  s2_speculative = GEN_29[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(io_cpu_req_valid) begin
        s1_pc_ <= io_cpu_req_bits_pc;
      end else begin
        if(T_1364) begin
          if(icmiss) begin
            s1_pc_ <= s2_pc;
          end else begin
            s1_pc_ <= predicted_npc;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_cpu_req_valid) begin
        s1_speculative <= io_cpu_req_bits_speculative;
      end else begin
        if(T_1364) begin
          if(icmiss) begin
            s1_speculative <= s2_speculative;
          end else begin
            s1_speculative <= 1'h1;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_cpu_req_valid) begin
        s1_same_block <= 1'h0;
      end else begin
        if(T_1364) begin
          s1_same_block <= T_1367;
        end
      end
    end
    if(reset) begin
      s2_valid <= 1'h1;
    end else begin
      if(io_cpu_req_valid) begin
        s2_valid <= 1'h0;
      end else begin
        if(T_1364) begin
          s2_valid <= T_1351;
        end
      end
    end
    if(reset) begin
//<CJ>      s2_pc <= 32'h60000000;
      s2_pc <= RESET_VECTOR_ADDR;
    end else begin
      if(T_1364) begin
        if(T_1351) begin
          s2_pc <= s1_pc;
        end
      end
    end
    if(reset) begin
      s2_btb_resp_valid <= 1'h0;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(reset) begin
      s2_xcpt_if <= 1'h0;
    end else begin
      if(T_1364) begin
        if(T_1351) begin
          s2_xcpt_if <= tlb_io_resp_xcpt_if;
        end
      end
    end
    if(reset) begin
      s2_speculative <= 1'h0;
    end else begin
      if(T_1364) begin
        if(T_1351) begin
          s2_speculative <= T_1376;
        end
      end
    end
  end
endmodule
