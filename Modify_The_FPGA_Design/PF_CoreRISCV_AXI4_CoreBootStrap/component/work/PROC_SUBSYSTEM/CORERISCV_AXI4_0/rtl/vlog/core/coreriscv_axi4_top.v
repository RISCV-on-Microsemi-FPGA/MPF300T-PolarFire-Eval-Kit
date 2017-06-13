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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TOP(
  input   clk,
  input   reset,
  input   io_mem_axi_0_aw_ready,
  output  io_mem_axi_0_aw_valid,
  output [31:0] io_mem_axi_0_aw_bits_addr,
  output [7:0] io_mem_axi_0_aw_bits_len,
  output [2:0] io_mem_axi_0_aw_bits_size,
  output [1:0] io_mem_axi_0_aw_bits_burst,
  output  io_mem_axi_0_aw_bits_lock,
  output [3:0] io_mem_axi_0_aw_bits_cache,
  output [2:0] io_mem_axi_0_aw_bits_prot,
  output [3:0] io_mem_axi_0_aw_bits_qos,
  output [3:0] io_mem_axi_0_aw_bits_region,
  output [4:0] io_mem_axi_0_aw_bits_id,
  output  io_mem_axi_0_aw_bits_user,
  input   io_mem_axi_0_w_ready,
  output  io_mem_axi_0_w_valid,
  output [63:0] io_mem_axi_0_w_bits_data,
  output  io_mem_axi_0_w_bits_last,
  output [4:0] io_mem_axi_0_w_bits_id,
  output [7:0] io_mem_axi_0_w_bits_strb,
  output  io_mem_axi_0_w_bits_user,
  output  io_mem_axi_0_b_ready,
  input   io_mem_axi_0_b_valid,
  input  [1:0] io_mem_axi_0_b_bits_resp,
  input  [4:0] io_mem_axi_0_b_bits_id,
  input   io_mem_axi_0_b_bits_user,
  input   io_mem_axi_0_ar_ready,
  output  io_mem_axi_0_ar_valid,
  output [31:0] io_mem_axi_0_ar_bits_addr,
  output [7:0] io_mem_axi_0_ar_bits_len,
  output [2:0] io_mem_axi_0_ar_bits_size,
  output [1:0] io_mem_axi_0_ar_bits_burst,
  output  io_mem_axi_0_ar_bits_lock,
  output [3:0] io_mem_axi_0_ar_bits_cache,
  output [2:0] io_mem_axi_0_ar_bits_prot,
  output [3:0] io_mem_axi_0_ar_bits_qos,
  output [3:0] io_mem_axi_0_ar_bits_region,
  output [4:0] io_mem_axi_0_ar_bits_id,
  output  io_mem_axi_0_ar_bits_user,
  output  io_mem_axi_0_r_ready,
  input   io_mem_axi_0_r_valid,
  input  [1:0] io_mem_axi_0_r_bits_resp,
  input  [63:0] io_mem_axi_0_r_bits_data,
  input   io_mem_axi_0_r_bits_last,
  input  [4:0] io_mem_axi_0_r_bits_id,
  input   io_mem_axi_0_r_bits_user,
  input   io_interrupts_0,
  input   io_interrupts_1,
  input   io_interrupts_2,
  input   io_interrupts_3,
  input   io_interrupts_4,
  input   io_interrupts_5,
  input   io_interrupts_6,
  input   io_interrupts_7,
  input   io_interrupts_8,
  input   io_interrupts_9,
  input   io_interrupts_10,
  input   io_interrupts_11,
  input   io_interrupts_12,
  input   io_interrupts_13,
  input   io_interrupts_14,
  input   io_interrupts_15,
  input   io_interrupts_16,
  input   io_interrupts_17,
  input   io_interrupts_18,
  input   io_interrupts_19,
  input   io_interrupts_20,
  input   io_interrupts_21,
  input   io_interrupts_22,
  input   io_interrupts_23,
  input   io_interrupts_24,
  input   io_interrupts_25,
  input   io_interrupts_26,
  input   io_interrupts_27,
  input   io_interrupts_28,
  input   io_interrupts_29,
  input   io_interrupts_30,
  input   io_mmio_axi_0_aw_ready,
  output  io_mmio_axi_0_aw_valid,
  output [31:0] io_mmio_axi_0_aw_bits_addr,
  output [7:0] io_mmio_axi_0_aw_bits_len,
  output [2:0] io_mmio_axi_0_aw_bits_size,
  output [1:0] io_mmio_axi_0_aw_bits_burst,
  output  io_mmio_axi_0_aw_bits_lock,
  output [3:0] io_mmio_axi_0_aw_bits_cache,
  output [2:0] io_mmio_axi_0_aw_bits_prot,
  output [3:0] io_mmio_axi_0_aw_bits_qos,
  output [3:0] io_mmio_axi_0_aw_bits_region,
  output [4:0] io_mmio_axi_0_aw_bits_id,
  output  io_mmio_axi_0_aw_bits_user,
  input   io_mmio_axi_0_w_ready,
  output  io_mmio_axi_0_w_valid,
  output [63:0] io_mmio_axi_0_w_bits_data,
  output  io_mmio_axi_0_w_bits_last,
  output [4:0] io_mmio_axi_0_w_bits_id,
  output [7:0] io_mmio_axi_0_w_bits_strb,
  output  io_mmio_axi_0_w_bits_user,
  output  io_mmio_axi_0_b_ready,
  input   io_mmio_axi_0_b_valid,
  input  [1:0] io_mmio_axi_0_b_bits_resp,
  input  [4:0] io_mmio_axi_0_b_bits_id,
  input   io_mmio_axi_0_b_bits_user,
  input   io_mmio_axi_0_ar_ready,
  output  io_mmio_axi_0_ar_valid,
  output [31:0] io_mmio_axi_0_ar_bits_addr,
  output [7:0] io_mmio_axi_0_ar_bits_len,
  output [2:0] io_mmio_axi_0_ar_bits_size,
  output [1:0] io_mmio_axi_0_ar_bits_burst,
  output  io_mmio_axi_0_ar_bits_lock,
  output [3:0] io_mmio_axi_0_ar_bits_cache,
  output [2:0] io_mmio_axi_0_ar_bits_prot,
  output [3:0] io_mmio_axi_0_ar_bits_qos,
  output [3:0] io_mmio_axi_0_ar_bits_region,
  output [4:0] io_mmio_axi_0_ar_bits_id,
  output  io_mmio_axi_0_ar_bits_user,
  output  io_mmio_axi_0_r_ready,
  input   io_mmio_axi_0_r_valid,
  input  [1:0] io_mmio_axi_0_r_bits_resp,
  input  [63:0] io_mmio_axi_0_r_bits_data,
  input   io_mmio_axi_0_r_bits_last,
  input  [4:0] io_mmio_axi_0_r_bits_id,
  input   io_mmio_axi_0_r_bits_user,
  output  io_debug_req_ready,
  input   io_debug_req_valid,
  input  [4:0] io_debug_req_bits_addr,
  input  [1:0] io_debug_req_bits_op,
  input  [33:0] io_debug_req_bits_data,
  input   io_debug_resp_ready,
  output  io_debug_resp_valid,
  output [1:0] io_debug_resp_bits_resp,
  output [33:0] io_debug_resp_bits_data
);
//<CJ> RESET_VECTOR_ADDR
  parameter RESET_VECTOR_ADDR = 60000000;

  wire  tileResets_0;
  wire  RocketTile_1_clk;
  wire  RocketTile_1_reset;
  wire  RocketTile_1_io_cached_0_acquire_ready;
  wire  RocketTile_1_io_cached_0_acquire_valid;
  wire [25:0] RocketTile_1_io_cached_0_acquire_bits_addr_block;
  wire  RocketTile_1_io_cached_0_acquire_bits_client_xact_id;
  wire [2:0] RocketTile_1_io_cached_0_acquire_bits_addr_beat;
  wire  RocketTile_1_io_cached_0_acquire_bits_is_builtin_type;
  wire [2:0] RocketTile_1_io_cached_0_acquire_bits_a_type;
  wire [11:0] RocketTile_1_io_cached_0_acquire_bits_union;
  wire [63:0] RocketTile_1_io_cached_0_acquire_bits_data;
  wire  RocketTile_1_io_cached_0_probe_ready;
  wire  RocketTile_1_io_cached_0_probe_valid;
  wire [25:0] RocketTile_1_io_cached_0_probe_bits_addr_block;
  wire [1:0] RocketTile_1_io_cached_0_probe_bits_p_type;
  wire  RocketTile_1_io_cached_0_release_ready;
  wire  RocketTile_1_io_cached_0_release_valid;
  wire [2:0] RocketTile_1_io_cached_0_release_bits_addr_beat;
  wire [25:0] RocketTile_1_io_cached_0_release_bits_addr_block;
  wire  RocketTile_1_io_cached_0_release_bits_client_xact_id;
  wire  RocketTile_1_io_cached_0_release_bits_voluntary;
  wire [2:0] RocketTile_1_io_cached_0_release_bits_r_type;
  wire [63:0] RocketTile_1_io_cached_0_release_bits_data;
  wire  RocketTile_1_io_cached_0_grant_ready;
  wire  RocketTile_1_io_cached_0_grant_valid;
  wire [2:0] RocketTile_1_io_cached_0_grant_bits_addr_beat;
  wire  RocketTile_1_io_cached_0_grant_bits_client_xact_id;
  wire [1:0] RocketTile_1_io_cached_0_grant_bits_manager_xact_id;
  wire  RocketTile_1_io_cached_0_grant_bits_is_builtin_type;
  wire [3:0] RocketTile_1_io_cached_0_grant_bits_g_type;
  wire [63:0] RocketTile_1_io_cached_0_grant_bits_data;
  wire  RocketTile_1_io_cached_0_grant_bits_manager_id;
  wire  RocketTile_1_io_cached_0_finish_ready;
  wire  RocketTile_1_io_cached_0_finish_valid;
  wire [1:0] RocketTile_1_io_cached_0_finish_bits_manager_xact_id;
  wire  RocketTile_1_io_cached_0_finish_bits_manager_id;
  wire  RocketTile_1_io_uncached_0_acquire_ready;
  wire  RocketTile_1_io_uncached_0_acquire_valid;
  wire [25:0] RocketTile_1_io_uncached_0_acquire_bits_addr_block;
  wire  RocketTile_1_io_uncached_0_acquire_bits_client_xact_id;
  wire [2:0] RocketTile_1_io_uncached_0_acquire_bits_addr_beat;
  wire  RocketTile_1_io_uncached_0_acquire_bits_is_builtin_type;
  wire [2:0] RocketTile_1_io_uncached_0_acquire_bits_a_type;
  wire [11:0] RocketTile_1_io_uncached_0_acquire_bits_union;
  wire [63:0] RocketTile_1_io_uncached_0_acquire_bits_data;
  wire  RocketTile_1_io_uncached_0_grant_ready;
  wire  RocketTile_1_io_uncached_0_grant_valid;
  wire [2:0] RocketTile_1_io_uncached_0_grant_bits_addr_beat;
  wire  RocketTile_1_io_uncached_0_grant_bits_client_xact_id;
  wire [1:0] RocketTile_1_io_uncached_0_grant_bits_manager_xact_id;
  wire  RocketTile_1_io_uncached_0_grant_bits_is_builtin_type;
  wire [3:0] RocketTile_1_io_uncached_0_grant_bits_g_type;
  wire [63:0] RocketTile_1_io_uncached_0_grant_bits_data;
  wire  RocketTile_1_io_prci_reset;
  wire  RocketTile_1_io_prci_id;
  wire  RocketTile_1_io_prci_interrupts_meip;
  wire  RocketTile_1_io_prci_interrupts_seip;
  wire  RocketTile_1_io_prci_interrupts_debug;
  wire  RocketTile_1_io_prci_interrupts_mtip;
  wire  RocketTile_1_io_prci_interrupts_msip;
  wire  uncore_clk;
  wire  uncore_reset;
  wire  uncore_io_mem_axi_0_aw_ready;
  wire  uncore_io_mem_axi_0_aw_valid;
  wire [31:0] uncore_io_mem_axi_0_aw_bits_addr;
  wire [7:0] uncore_io_mem_axi_0_aw_bits_len;
  wire [2:0] uncore_io_mem_axi_0_aw_bits_size;
  wire [1:0] uncore_io_mem_axi_0_aw_bits_burst;
  wire  uncore_io_mem_axi_0_aw_bits_lock;
  wire [3:0] uncore_io_mem_axi_0_aw_bits_cache;
  wire [2:0] uncore_io_mem_axi_0_aw_bits_prot;
  wire [3:0] uncore_io_mem_axi_0_aw_bits_qos;
  wire [3:0] uncore_io_mem_axi_0_aw_bits_region;
  wire [4:0] uncore_io_mem_axi_0_aw_bits_id;
  wire  uncore_io_mem_axi_0_aw_bits_user;
  wire  uncore_io_mem_axi_0_w_ready;
  wire  uncore_io_mem_axi_0_w_valid;
  wire [63:0] uncore_io_mem_axi_0_w_bits_data;
  wire  uncore_io_mem_axi_0_w_bits_last;
  wire [4:0] uncore_io_mem_axi_0_w_bits_id;
  wire [7:0] uncore_io_mem_axi_0_w_bits_strb;
  wire  uncore_io_mem_axi_0_w_bits_user;
  wire  uncore_io_mem_axi_0_b_ready;
  wire  uncore_io_mem_axi_0_b_valid;
  wire [1:0] uncore_io_mem_axi_0_b_bits_resp;
  wire [4:0] uncore_io_mem_axi_0_b_bits_id;
  wire  uncore_io_mem_axi_0_b_bits_user;
  wire  uncore_io_mem_axi_0_ar_ready;
  wire  uncore_io_mem_axi_0_ar_valid;
  wire [31:0] uncore_io_mem_axi_0_ar_bits_addr;
  wire [7:0] uncore_io_mem_axi_0_ar_bits_len;
  wire [2:0] uncore_io_mem_axi_0_ar_bits_size;
  wire [1:0] uncore_io_mem_axi_0_ar_bits_burst;
  wire  uncore_io_mem_axi_0_ar_bits_lock;
  wire [3:0] uncore_io_mem_axi_0_ar_bits_cache;
  wire [2:0] uncore_io_mem_axi_0_ar_bits_prot;
  wire [3:0] uncore_io_mem_axi_0_ar_bits_qos;
  wire [3:0] uncore_io_mem_axi_0_ar_bits_region;
  wire [4:0] uncore_io_mem_axi_0_ar_bits_id;
  wire  uncore_io_mem_axi_0_ar_bits_user;
  wire  uncore_io_mem_axi_0_r_ready;
  wire  uncore_io_mem_axi_0_r_valid;
  wire [1:0] uncore_io_mem_axi_0_r_bits_resp;
  wire [63:0] uncore_io_mem_axi_0_r_bits_data;
  wire  uncore_io_mem_axi_0_r_bits_last;
  wire [4:0] uncore_io_mem_axi_0_r_bits_id;
  wire  uncore_io_mem_axi_0_r_bits_user;
  wire  uncore_io_tiles_cached_0_acquire_ready;
  wire  uncore_io_tiles_cached_0_acquire_valid;
  wire [25:0] uncore_io_tiles_cached_0_acquire_bits_addr_block;
  wire  uncore_io_tiles_cached_0_acquire_bits_client_xact_id;
  wire [2:0] uncore_io_tiles_cached_0_acquire_bits_addr_beat;
  wire  uncore_io_tiles_cached_0_acquire_bits_is_builtin_type;
  wire [2:0] uncore_io_tiles_cached_0_acquire_bits_a_type;
  wire [11:0] uncore_io_tiles_cached_0_acquire_bits_union;
  wire [63:0] uncore_io_tiles_cached_0_acquire_bits_data;
  wire  uncore_io_tiles_cached_0_probe_ready;
  wire  uncore_io_tiles_cached_0_probe_valid;
  wire [25:0] uncore_io_tiles_cached_0_probe_bits_addr_block;
  wire [1:0] uncore_io_tiles_cached_0_probe_bits_p_type;
  wire  uncore_io_tiles_cached_0_release_ready;
  wire  uncore_io_tiles_cached_0_release_valid;
  wire [2:0] uncore_io_tiles_cached_0_release_bits_addr_beat;
  wire [25:0] uncore_io_tiles_cached_0_release_bits_addr_block;
  wire  uncore_io_tiles_cached_0_release_bits_client_xact_id;
  wire  uncore_io_tiles_cached_0_release_bits_voluntary;
  wire [2:0] uncore_io_tiles_cached_0_release_bits_r_type;
  wire [63:0] uncore_io_tiles_cached_0_release_bits_data;
  wire  uncore_io_tiles_cached_0_grant_ready;
  wire  uncore_io_tiles_cached_0_grant_valid;
  wire [2:0] uncore_io_tiles_cached_0_grant_bits_addr_beat;
  wire  uncore_io_tiles_cached_0_grant_bits_client_xact_id;
  wire [1:0] uncore_io_tiles_cached_0_grant_bits_manager_xact_id;
  wire  uncore_io_tiles_cached_0_grant_bits_is_builtin_type;
  wire [3:0] uncore_io_tiles_cached_0_grant_bits_g_type;
  wire [63:0] uncore_io_tiles_cached_0_grant_bits_data;
  wire  uncore_io_tiles_cached_0_grant_bits_manager_id;
  wire  uncore_io_tiles_cached_0_finish_ready;
  wire  uncore_io_tiles_cached_0_finish_valid;
  wire [1:0] uncore_io_tiles_cached_0_finish_bits_manager_xact_id;
  wire  uncore_io_tiles_cached_0_finish_bits_manager_id;
  wire  uncore_io_tiles_uncached_0_acquire_ready;
  wire  uncore_io_tiles_uncached_0_acquire_valid;
  wire [25:0] uncore_io_tiles_uncached_0_acquire_bits_addr_block;
  wire  uncore_io_tiles_uncached_0_acquire_bits_client_xact_id;
  wire [2:0] uncore_io_tiles_uncached_0_acquire_bits_addr_beat;
  wire  uncore_io_tiles_uncached_0_acquire_bits_is_builtin_type;
  wire [2:0] uncore_io_tiles_uncached_0_acquire_bits_a_type;
  wire [11:0] uncore_io_tiles_uncached_0_acquire_bits_union;
  wire [63:0] uncore_io_tiles_uncached_0_acquire_bits_data;
  wire  uncore_io_tiles_uncached_0_grant_ready;
  wire  uncore_io_tiles_uncached_0_grant_valid;
  wire [2:0] uncore_io_tiles_uncached_0_grant_bits_addr_beat;
  wire  uncore_io_tiles_uncached_0_grant_bits_client_xact_id;
  wire [1:0] uncore_io_tiles_uncached_0_grant_bits_manager_xact_id;
  wire  uncore_io_tiles_uncached_0_grant_bits_is_builtin_type;
  wire [3:0] uncore_io_tiles_uncached_0_grant_bits_g_type;
  wire [63:0] uncore_io_tiles_uncached_0_grant_bits_data;
  wire  uncore_io_prci_0_reset;
  wire  uncore_io_prci_0_id;
  wire  uncore_io_prci_0_interrupts_meip;
  wire  uncore_io_prci_0_interrupts_seip;
  wire  uncore_io_prci_0_interrupts_debug;
  wire  uncore_io_prci_0_interrupts_mtip;
  wire  uncore_io_prci_0_interrupts_msip;
  wire  uncore_io_mmio_axi_0_aw_ready;
  wire  uncore_io_mmio_axi_0_aw_valid;
  wire [31:0] uncore_io_mmio_axi_0_aw_bits_addr;
  wire [7:0] uncore_io_mmio_axi_0_aw_bits_len;
  wire [2:0] uncore_io_mmio_axi_0_aw_bits_size;
  wire [1:0] uncore_io_mmio_axi_0_aw_bits_burst;
  wire  uncore_io_mmio_axi_0_aw_bits_lock;
  wire [3:0] uncore_io_mmio_axi_0_aw_bits_cache;
  wire [2:0] uncore_io_mmio_axi_0_aw_bits_prot;
  wire [3:0] uncore_io_mmio_axi_0_aw_bits_qos;
  wire [3:0] uncore_io_mmio_axi_0_aw_bits_region;
  wire [4:0] uncore_io_mmio_axi_0_aw_bits_id;
  wire  uncore_io_mmio_axi_0_aw_bits_user;
  wire  uncore_io_mmio_axi_0_w_ready;
  wire  uncore_io_mmio_axi_0_w_valid;
  wire [63:0] uncore_io_mmio_axi_0_w_bits_data;
  wire  uncore_io_mmio_axi_0_w_bits_last;
  wire [4:0] uncore_io_mmio_axi_0_w_bits_id;
  wire [7:0] uncore_io_mmio_axi_0_w_bits_strb;
  wire  uncore_io_mmio_axi_0_w_bits_user;
  wire  uncore_io_mmio_axi_0_b_ready;
  wire  uncore_io_mmio_axi_0_b_valid;
  wire [1:0] uncore_io_mmio_axi_0_b_bits_resp;
  wire [4:0] uncore_io_mmio_axi_0_b_bits_id;
  wire  uncore_io_mmio_axi_0_b_bits_user;
  wire  uncore_io_mmio_axi_0_ar_ready;
  wire  uncore_io_mmio_axi_0_ar_valid;
  wire [31:0] uncore_io_mmio_axi_0_ar_bits_addr;
  wire [7:0] uncore_io_mmio_axi_0_ar_bits_len;
  wire [2:0] uncore_io_mmio_axi_0_ar_bits_size;
  wire [1:0] uncore_io_mmio_axi_0_ar_bits_burst;
  wire  uncore_io_mmio_axi_0_ar_bits_lock;
  wire [3:0] uncore_io_mmio_axi_0_ar_bits_cache;
  wire [2:0] uncore_io_mmio_axi_0_ar_bits_prot;
  wire [3:0] uncore_io_mmio_axi_0_ar_bits_qos;
  wire [3:0] uncore_io_mmio_axi_0_ar_bits_region;
  wire [4:0] uncore_io_mmio_axi_0_ar_bits_id;
  wire  uncore_io_mmio_axi_0_ar_bits_user;
  wire  uncore_io_mmio_axi_0_r_ready;
  wire  uncore_io_mmio_axi_0_r_valid;
  wire [1:0] uncore_io_mmio_axi_0_r_bits_resp;
  wire [63:0] uncore_io_mmio_axi_0_r_bits_data;
  wire  uncore_io_mmio_axi_0_r_bits_last;
  wire [4:0] uncore_io_mmio_axi_0_r_bits_id;
  wire  uncore_io_mmio_axi_0_r_bits_user;
  wire  uncore_io_interrupts_0;
  wire  uncore_io_interrupts_1;
  wire  uncore_io_interrupts_2;
  wire  uncore_io_interrupts_3;
  wire  uncore_io_interrupts_4;
  wire  uncore_io_interrupts_5;
  wire  uncore_io_interrupts_6;
  wire  uncore_io_interrupts_7;
  wire  uncore_io_interrupts_8;
  wire  uncore_io_interrupts_9;
  wire  uncore_io_interrupts_10;
  wire  uncore_io_interrupts_11;
  wire  uncore_io_interrupts_12;
  wire  uncore_io_interrupts_13;
  wire  uncore_io_interrupts_14;
  wire  uncore_io_interrupts_15;
  wire  uncore_io_interrupts_16;
  wire  uncore_io_interrupts_17;
  wire  uncore_io_interrupts_18;
  wire  uncore_io_interrupts_19;
  wire  uncore_io_interrupts_20;
  wire  uncore_io_interrupts_21;
  wire  uncore_io_interrupts_22;
  wire  uncore_io_interrupts_23;
  wire  uncore_io_interrupts_24;
  wire  uncore_io_interrupts_25;
  wire  uncore_io_interrupts_26;
  wire  uncore_io_interrupts_27;
  wire  uncore_io_interrupts_28;
  wire  uncore_io_interrupts_29;
  wire  uncore_io_interrupts_30;
  wire  uncore_io_debugBus_req_ready;
  wire  uncore_io_debugBus_req_valid;
  wire [4:0] uncore_io_debugBus_req_bits_addr;
  wire [1:0] uncore_io_debugBus_req_bits_op;
  wire [33:0] uncore_io_debugBus_req_bits_data;
  wire  uncore_io_debugBus_resp_ready;
  wire  uncore_io_debugBus_resp_valid;
  wire [1:0] uncore_io_debugBus_resp_bits_resp;
  wire [33:0] uncore_io_debugBus_resp_bits_data;
  
  //<CJ> RESET_VECTOR_ADDR
   defparam RocketTile_1.RESET_VECTOR_ADDR = RESET_VECTOR_ADDR;

  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ROCKET_TILE RocketTile_1 (
    .clk(RocketTile_1_clk),
    .reset(RocketTile_1_reset),
    .io_cached_0_acquire_ready(RocketTile_1_io_cached_0_acquire_ready),
    .io_cached_0_acquire_valid(RocketTile_1_io_cached_0_acquire_valid),
    .io_cached_0_acquire_bits_addr_block(RocketTile_1_io_cached_0_acquire_bits_addr_block),
    .io_cached_0_acquire_bits_client_xact_id(RocketTile_1_io_cached_0_acquire_bits_client_xact_id),
    .io_cached_0_acquire_bits_addr_beat(RocketTile_1_io_cached_0_acquire_bits_addr_beat),
    .io_cached_0_acquire_bits_is_builtin_type(RocketTile_1_io_cached_0_acquire_bits_is_builtin_type),
    .io_cached_0_acquire_bits_a_type(RocketTile_1_io_cached_0_acquire_bits_a_type),
    .io_cached_0_acquire_bits_union(RocketTile_1_io_cached_0_acquire_bits_union),
    .io_cached_0_acquire_bits_data(RocketTile_1_io_cached_0_acquire_bits_data),
    .io_cached_0_probe_ready(RocketTile_1_io_cached_0_probe_ready),
    .io_cached_0_probe_valid(RocketTile_1_io_cached_0_probe_valid),
    .io_cached_0_probe_bits_addr_block(RocketTile_1_io_cached_0_probe_bits_addr_block),
    .io_cached_0_probe_bits_p_type(RocketTile_1_io_cached_0_probe_bits_p_type),
    .io_cached_0_release_ready(RocketTile_1_io_cached_0_release_ready),
    .io_cached_0_release_valid(RocketTile_1_io_cached_0_release_valid),
    .io_cached_0_release_bits_addr_beat(RocketTile_1_io_cached_0_release_bits_addr_beat),
    .io_cached_0_release_bits_addr_block(RocketTile_1_io_cached_0_release_bits_addr_block),
    .io_cached_0_release_bits_client_xact_id(RocketTile_1_io_cached_0_release_bits_client_xact_id),
    .io_cached_0_release_bits_voluntary(RocketTile_1_io_cached_0_release_bits_voluntary),
    .io_cached_0_release_bits_r_type(RocketTile_1_io_cached_0_release_bits_r_type),
    .io_cached_0_release_bits_data(RocketTile_1_io_cached_0_release_bits_data),
    .io_cached_0_grant_ready(RocketTile_1_io_cached_0_grant_ready),
    .io_cached_0_grant_valid(RocketTile_1_io_cached_0_grant_valid),
    .io_cached_0_grant_bits_addr_beat(RocketTile_1_io_cached_0_grant_bits_addr_beat),
    .io_cached_0_grant_bits_client_xact_id(RocketTile_1_io_cached_0_grant_bits_client_xact_id),
    .io_cached_0_grant_bits_manager_xact_id(RocketTile_1_io_cached_0_grant_bits_manager_xact_id),
    .io_cached_0_grant_bits_is_builtin_type(RocketTile_1_io_cached_0_grant_bits_is_builtin_type),
    .io_cached_0_grant_bits_g_type(RocketTile_1_io_cached_0_grant_bits_g_type),
    .io_cached_0_grant_bits_data(RocketTile_1_io_cached_0_grant_bits_data),
    .io_cached_0_grant_bits_manager_id(RocketTile_1_io_cached_0_grant_bits_manager_id),
    .io_cached_0_finish_ready(RocketTile_1_io_cached_0_finish_ready),
    .io_cached_0_finish_valid(RocketTile_1_io_cached_0_finish_valid),
    .io_cached_0_finish_bits_manager_xact_id(RocketTile_1_io_cached_0_finish_bits_manager_xact_id),
    .io_cached_0_finish_bits_manager_id(RocketTile_1_io_cached_0_finish_bits_manager_id),
    .io_uncached_0_acquire_ready(RocketTile_1_io_uncached_0_acquire_ready),
    .io_uncached_0_acquire_valid(RocketTile_1_io_uncached_0_acquire_valid),
    .io_uncached_0_acquire_bits_addr_block(RocketTile_1_io_uncached_0_acquire_bits_addr_block),
    .io_uncached_0_acquire_bits_client_xact_id(RocketTile_1_io_uncached_0_acquire_bits_client_xact_id),
    .io_uncached_0_acquire_bits_addr_beat(RocketTile_1_io_uncached_0_acquire_bits_addr_beat),
    .io_uncached_0_acquire_bits_is_builtin_type(RocketTile_1_io_uncached_0_acquire_bits_is_builtin_type),
    .io_uncached_0_acquire_bits_a_type(RocketTile_1_io_uncached_0_acquire_bits_a_type),
    .io_uncached_0_acquire_bits_union(RocketTile_1_io_uncached_0_acquire_bits_union),
    .io_uncached_0_acquire_bits_data(RocketTile_1_io_uncached_0_acquire_bits_data),
    .io_uncached_0_grant_ready(RocketTile_1_io_uncached_0_grant_ready),
    .io_uncached_0_grant_valid(RocketTile_1_io_uncached_0_grant_valid),
    .io_uncached_0_grant_bits_addr_beat(RocketTile_1_io_uncached_0_grant_bits_addr_beat),
    .io_uncached_0_grant_bits_client_xact_id(RocketTile_1_io_uncached_0_grant_bits_client_xact_id),
    .io_uncached_0_grant_bits_manager_xact_id(RocketTile_1_io_uncached_0_grant_bits_manager_xact_id),
    .io_uncached_0_grant_bits_is_builtin_type(RocketTile_1_io_uncached_0_grant_bits_is_builtin_type),
    .io_uncached_0_grant_bits_g_type(RocketTile_1_io_uncached_0_grant_bits_g_type),
    .io_uncached_0_grant_bits_data(RocketTile_1_io_uncached_0_grant_bits_data),
    .io_prci_reset(RocketTile_1_io_prci_reset),
    .io_prci_id(RocketTile_1_io_prci_id),
    .io_prci_interrupts_meip(RocketTile_1_io_prci_interrupts_meip),
    .io_prci_interrupts_seip(RocketTile_1_io_prci_interrupts_seip),
    .io_prci_interrupts_debug(RocketTile_1_io_prci_interrupts_debug),
    .io_prci_interrupts_mtip(RocketTile_1_io_prci_interrupts_mtip),
    .io_prci_interrupts_msip(RocketTile_1_io_prci_interrupts_msip)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_UNCORE uncore (
    .clk(uncore_clk),
    .reset(uncore_reset),
    .io_mem_axi_0_aw_ready(uncore_io_mem_axi_0_aw_ready),
    .io_mem_axi_0_aw_valid(uncore_io_mem_axi_0_aw_valid),
    .io_mem_axi_0_aw_bits_addr(uncore_io_mem_axi_0_aw_bits_addr),
    .io_mem_axi_0_aw_bits_len(uncore_io_mem_axi_0_aw_bits_len),
    .io_mem_axi_0_aw_bits_size(uncore_io_mem_axi_0_aw_bits_size),
    .io_mem_axi_0_aw_bits_burst(uncore_io_mem_axi_0_aw_bits_burst),
    .io_mem_axi_0_aw_bits_lock(uncore_io_mem_axi_0_aw_bits_lock),
    .io_mem_axi_0_aw_bits_cache(uncore_io_mem_axi_0_aw_bits_cache),
    .io_mem_axi_0_aw_bits_prot(uncore_io_mem_axi_0_aw_bits_prot),
    .io_mem_axi_0_aw_bits_qos(uncore_io_mem_axi_0_aw_bits_qos),
    .io_mem_axi_0_aw_bits_region(uncore_io_mem_axi_0_aw_bits_region),
    .io_mem_axi_0_aw_bits_id(uncore_io_mem_axi_0_aw_bits_id),
    .io_mem_axi_0_aw_bits_user(uncore_io_mem_axi_0_aw_bits_user),
    .io_mem_axi_0_w_ready(uncore_io_mem_axi_0_w_ready),
    .io_mem_axi_0_w_valid(uncore_io_mem_axi_0_w_valid),
    .io_mem_axi_0_w_bits_data(uncore_io_mem_axi_0_w_bits_data),
    .io_mem_axi_0_w_bits_last(uncore_io_mem_axi_0_w_bits_last),
    .io_mem_axi_0_w_bits_id(uncore_io_mem_axi_0_w_bits_id),
    .io_mem_axi_0_w_bits_strb(uncore_io_mem_axi_0_w_bits_strb),
    .io_mem_axi_0_w_bits_user(uncore_io_mem_axi_0_w_bits_user),
    .io_mem_axi_0_b_ready(uncore_io_mem_axi_0_b_ready),
    .io_mem_axi_0_b_valid(uncore_io_mem_axi_0_b_valid),
    .io_mem_axi_0_b_bits_resp(uncore_io_mem_axi_0_b_bits_resp),
    .io_mem_axi_0_b_bits_id(uncore_io_mem_axi_0_b_bits_id),
    .io_mem_axi_0_b_bits_user(uncore_io_mem_axi_0_b_bits_user),
    .io_mem_axi_0_ar_ready(uncore_io_mem_axi_0_ar_ready),
    .io_mem_axi_0_ar_valid(uncore_io_mem_axi_0_ar_valid),
    .io_mem_axi_0_ar_bits_addr(uncore_io_mem_axi_0_ar_bits_addr),
    .io_mem_axi_0_ar_bits_len(uncore_io_mem_axi_0_ar_bits_len),
    .io_mem_axi_0_ar_bits_size(uncore_io_mem_axi_0_ar_bits_size),
    .io_mem_axi_0_ar_bits_burst(uncore_io_mem_axi_0_ar_bits_burst),
    .io_mem_axi_0_ar_bits_lock(uncore_io_mem_axi_0_ar_bits_lock),
    .io_mem_axi_0_ar_bits_cache(uncore_io_mem_axi_0_ar_bits_cache),
    .io_mem_axi_0_ar_bits_prot(uncore_io_mem_axi_0_ar_bits_prot),
    .io_mem_axi_0_ar_bits_qos(uncore_io_mem_axi_0_ar_bits_qos),
    .io_mem_axi_0_ar_bits_region(uncore_io_mem_axi_0_ar_bits_region),
    .io_mem_axi_0_ar_bits_id(uncore_io_mem_axi_0_ar_bits_id),
    .io_mem_axi_0_ar_bits_user(uncore_io_mem_axi_0_ar_bits_user),
    .io_mem_axi_0_r_ready(uncore_io_mem_axi_0_r_ready),
    .io_mem_axi_0_r_valid(uncore_io_mem_axi_0_r_valid),
    .io_mem_axi_0_r_bits_resp(uncore_io_mem_axi_0_r_bits_resp),
    .io_mem_axi_0_r_bits_data(uncore_io_mem_axi_0_r_bits_data),
    .io_mem_axi_0_r_bits_last(uncore_io_mem_axi_0_r_bits_last),
    .io_mem_axi_0_r_bits_id(uncore_io_mem_axi_0_r_bits_id),
    .io_mem_axi_0_r_bits_user(uncore_io_mem_axi_0_r_bits_user),
    .io_tiles_cached_0_acquire_ready(uncore_io_tiles_cached_0_acquire_ready),
    .io_tiles_cached_0_acquire_valid(uncore_io_tiles_cached_0_acquire_valid),
    .io_tiles_cached_0_acquire_bits_addr_block(uncore_io_tiles_cached_0_acquire_bits_addr_block),
    .io_tiles_cached_0_acquire_bits_client_xact_id(uncore_io_tiles_cached_0_acquire_bits_client_xact_id),
    .io_tiles_cached_0_acquire_bits_addr_beat(uncore_io_tiles_cached_0_acquire_bits_addr_beat),
    .io_tiles_cached_0_acquire_bits_is_builtin_type(uncore_io_tiles_cached_0_acquire_bits_is_builtin_type),
    .io_tiles_cached_0_acquire_bits_a_type(uncore_io_tiles_cached_0_acquire_bits_a_type),
    .io_tiles_cached_0_acquire_bits_union(uncore_io_tiles_cached_0_acquire_bits_union),
    .io_tiles_cached_0_acquire_bits_data(uncore_io_tiles_cached_0_acquire_bits_data),
    .io_tiles_cached_0_probe_ready(uncore_io_tiles_cached_0_probe_ready),
    .io_tiles_cached_0_probe_valid(uncore_io_tiles_cached_0_probe_valid),
    .io_tiles_cached_0_probe_bits_addr_block(uncore_io_tiles_cached_0_probe_bits_addr_block),
    .io_tiles_cached_0_probe_bits_p_type(uncore_io_tiles_cached_0_probe_bits_p_type),
    .io_tiles_cached_0_release_ready(uncore_io_tiles_cached_0_release_ready),
    .io_tiles_cached_0_release_valid(uncore_io_tiles_cached_0_release_valid),
    .io_tiles_cached_0_release_bits_addr_beat(uncore_io_tiles_cached_0_release_bits_addr_beat),
    .io_tiles_cached_0_release_bits_addr_block(uncore_io_tiles_cached_0_release_bits_addr_block),
    .io_tiles_cached_0_release_bits_client_xact_id(uncore_io_tiles_cached_0_release_bits_client_xact_id),
    .io_tiles_cached_0_release_bits_voluntary(uncore_io_tiles_cached_0_release_bits_voluntary),
    .io_tiles_cached_0_release_bits_r_type(uncore_io_tiles_cached_0_release_bits_r_type),
    .io_tiles_cached_0_release_bits_data(uncore_io_tiles_cached_0_release_bits_data),
    .io_tiles_cached_0_grant_ready(uncore_io_tiles_cached_0_grant_ready),
    .io_tiles_cached_0_grant_valid(uncore_io_tiles_cached_0_grant_valid),
    .io_tiles_cached_0_grant_bits_addr_beat(uncore_io_tiles_cached_0_grant_bits_addr_beat),
    .io_tiles_cached_0_grant_bits_client_xact_id(uncore_io_tiles_cached_0_grant_bits_client_xact_id),
    .io_tiles_cached_0_grant_bits_manager_xact_id(uncore_io_tiles_cached_0_grant_bits_manager_xact_id),
    .io_tiles_cached_0_grant_bits_is_builtin_type(uncore_io_tiles_cached_0_grant_bits_is_builtin_type),
    .io_tiles_cached_0_grant_bits_g_type(uncore_io_tiles_cached_0_grant_bits_g_type),
    .io_tiles_cached_0_grant_bits_data(uncore_io_tiles_cached_0_grant_bits_data),
    .io_tiles_cached_0_grant_bits_manager_id(uncore_io_tiles_cached_0_grant_bits_manager_id),
    .io_tiles_cached_0_finish_ready(uncore_io_tiles_cached_0_finish_ready),
    .io_tiles_cached_0_finish_valid(uncore_io_tiles_cached_0_finish_valid),
    .io_tiles_cached_0_finish_bits_manager_xact_id(uncore_io_tiles_cached_0_finish_bits_manager_xact_id),
    .io_tiles_cached_0_finish_bits_manager_id(uncore_io_tiles_cached_0_finish_bits_manager_id),
    .io_tiles_uncached_0_acquire_ready(uncore_io_tiles_uncached_0_acquire_ready),
    .io_tiles_uncached_0_acquire_valid(uncore_io_tiles_uncached_0_acquire_valid),
    .io_tiles_uncached_0_acquire_bits_addr_block(uncore_io_tiles_uncached_0_acquire_bits_addr_block),
    .io_tiles_uncached_0_acquire_bits_client_xact_id(uncore_io_tiles_uncached_0_acquire_bits_client_xact_id),
    .io_tiles_uncached_0_acquire_bits_addr_beat(uncore_io_tiles_uncached_0_acquire_bits_addr_beat),
    .io_tiles_uncached_0_acquire_bits_is_builtin_type(uncore_io_tiles_uncached_0_acquire_bits_is_builtin_type),
    .io_tiles_uncached_0_acquire_bits_a_type(uncore_io_tiles_uncached_0_acquire_bits_a_type),
    .io_tiles_uncached_0_acquire_bits_union(uncore_io_tiles_uncached_0_acquire_bits_union),
    .io_tiles_uncached_0_acquire_bits_data(uncore_io_tiles_uncached_0_acquire_bits_data),
    .io_tiles_uncached_0_grant_ready(uncore_io_tiles_uncached_0_grant_ready),
    .io_tiles_uncached_0_grant_valid(uncore_io_tiles_uncached_0_grant_valid),
    .io_tiles_uncached_0_grant_bits_addr_beat(uncore_io_tiles_uncached_0_grant_bits_addr_beat),
    .io_tiles_uncached_0_grant_bits_client_xact_id(uncore_io_tiles_uncached_0_grant_bits_client_xact_id),
    .io_tiles_uncached_0_grant_bits_manager_xact_id(uncore_io_tiles_uncached_0_grant_bits_manager_xact_id),
    .io_tiles_uncached_0_grant_bits_is_builtin_type(uncore_io_tiles_uncached_0_grant_bits_is_builtin_type),
    .io_tiles_uncached_0_grant_bits_g_type(uncore_io_tiles_uncached_0_grant_bits_g_type),
    .io_tiles_uncached_0_grant_bits_data(uncore_io_tiles_uncached_0_grant_bits_data),
    .io_prci_0_reset(uncore_io_prci_0_reset),
    .io_prci_0_id(uncore_io_prci_0_id),
    .io_prci_0_interrupts_meip(uncore_io_prci_0_interrupts_meip),
    .io_prci_0_interrupts_seip(uncore_io_prci_0_interrupts_seip),
    .io_prci_0_interrupts_debug(uncore_io_prci_0_interrupts_debug),
    .io_prci_0_interrupts_mtip(uncore_io_prci_0_interrupts_mtip),
    .io_prci_0_interrupts_msip(uncore_io_prci_0_interrupts_msip),
    .io_mmio_axi_0_aw_ready(uncore_io_mmio_axi_0_aw_ready),
    .io_mmio_axi_0_aw_valid(uncore_io_mmio_axi_0_aw_valid),
    .io_mmio_axi_0_aw_bits_addr(uncore_io_mmio_axi_0_aw_bits_addr),
    .io_mmio_axi_0_aw_bits_len(uncore_io_mmio_axi_0_aw_bits_len),
    .io_mmio_axi_0_aw_bits_size(uncore_io_mmio_axi_0_aw_bits_size),
    .io_mmio_axi_0_aw_bits_burst(uncore_io_mmio_axi_0_aw_bits_burst),
    .io_mmio_axi_0_aw_bits_lock(uncore_io_mmio_axi_0_aw_bits_lock),
    .io_mmio_axi_0_aw_bits_cache(uncore_io_mmio_axi_0_aw_bits_cache),
    .io_mmio_axi_0_aw_bits_prot(uncore_io_mmio_axi_0_aw_bits_prot),
    .io_mmio_axi_0_aw_bits_qos(uncore_io_mmio_axi_0_aw_bits_qos),
    .io_mmio_axi_0_aw_bits_region(uncore_io_mmio_axi_0_aw_bits_region),
    .io_mmio_axi_0_aw_bits_id(uncore_io_mmio_axi_0_aw_bits_id),
    .io_mmio_axi_0_aw_bits_user(uncore_io_mmio_axi_0_aw_bits_user),
    .io_mmio_axi_0_w_ready(uncore_io_mmio_axi_0_w_ready),
    .io_mmio_axi_0_w_valid(uncore_io_mmio_axi_0_w_valid),
    .io_mmio_axi_0_w_bits_data(uncore_io_mmio_axi_0_w_bits_data),
    .io_mmio_axi_0_w_bits_last(uncore_io_mmio_axi_0_w_bits_last),
    .io_mmio_axi_0_w_bits_id(uncore_io_mmio_axi_0_w_bits_id),
    .io_mmio_axi_0_w_bits_strb(uncore_io_mmio_axi_0_w_bits_strb),
    .io_mmio_axi_0_w_bits_user(uncore_io_mmio_axi_0_w_bits_user),
    .io_mmio_axi_0_b_ready(uncore_io_mmio_axi_0_b_ready),
    .io_mmio_axi_0_b_valid(uncore_io_mmio_axi_0_b_valid),
    .io_mmio_axi_0_b_bits_resp(uncore_io_mmio_axi_0_b_bits_resp),
    .io_mmio_axi_0_b_bits_id(uncore_io_mmio_axi_0_b_bits_id),
    .io_mmio_axi_0_b_bits_user(uncore_io_mmio_axi_0_b_bits_user),
    .io_mmio_axi_0_ar_ready(uncore_io_mmio_axi_0_ar_ready),
    .io_mmio_axi_0_ar_valid(uncore_io_mmio_axi_0_ar_valid),
    .io_mmio_axi_0_ar_bits_addr(uncore_io_mmio_axi_0_ar_bits_addr),
    .io_mmio_axi_0_ar_bits_len(uncore_io_mmio_axi_0_ar_bits_len),
    .io_mmio_axi_0_ar_bits_size(uncore_io_mmio_axi_0_ar_bits_size),
    .io_mmio_axi_0_ar_bits_burst(uncore_io_mmio_axi_0_ar_bits_burst),
    .io_mmio_axi_0_ar_bits_lock(uncore_io_mmio_axi_0_ar_bits_lock),
    .io_mmio_axi_0_ar_bits_cache(uncore_io_mmio_axi_0_ar_bits_cache),
    .io_mmio_axi_0_ar_bits_prot(uncore_io_mmio_axi_0_ar_bits_prot),
    .io_mmio_axi_0_ar_bits_qos(uncore_io_mmio_axi_0_ar_bits_qos),
    .io_mmio_axi_0_ar_bits_region(uncore_io_mmio_axi_0_ar_bits_region),
    .io_mmio_axi_0_ar_bits_id(uncore_io_mmio_axi_0_ar_bits_id),
    .io_mmio_axi_0_ar_bits_user(uncore_io_mmio_axi_0_ar_bits_user),
    .io_mmio_axi_0_r_ready(uncore_io_mmio_axi_0_r_ready),
    .io_mmio_axi_0_r_valid(uncore_io_mmio_axi_0_r_valid),
    .io_mmio_axi_0_r_bits_resp(uncore_io_mmio_axi_0_r_bits_resp),
    .io_mmio_axi_0_r_bits_data(uncore_io_mmio_axi_0_r_bits_data),
    .io_mmio_axi_0_r_bits_last(uncore_io_mmio_axi_0_r_bits_last),
    .io_mmio_axi_0_r_bits_id(uncore_io_mmio_axi_0_r_bits_id),
    .io_mmio_axi_0_r_bits_user(uncore_io_mmio_axi_0_r_bits_user),
    .io_interrupts_0(uncore_io_interrupts_0),
    .io_interrupts_1(uncore_io_interrupts_1),
    .io_interrupts_2(uncore_io_interrupts_2),
    .io_interrupts_3(uncore_io_interrupts_3),
    .io_interrupts_4(uncore_io_interrupts_4),
    .io_interrupts_5(uncore_io_interrupts_5),
    .io_interrupts_6(uncore_io_interrupts_6),
    .io_interrupts_7(uncore_io_interrupts_7),
    .io_interrupts_8(uncore_io_interrupts_8),
    .io_interrupts_9(uncore_io_interrupts_9),
    .io_interrupts_10(uncore_io_interrupts_10),
    .io_interrupts_11(uncore_io_interrupts_11),
    .io_interrupts_12(uncore_io_interrupts_12),
    .io_interrupts_13(uncore_io_interrupts_13),
    .io_interrupts_14(uncore_io_interrupts_14),
    .io_interrupts_15(uncore_io_interrupts_15),
    .io_interrupts_16(uncore_io_interrupts_16),
    .io_interrupts_17(uncore_io_interrupts_17),
    .io_interrupts_18(uncore_io_interrupts_18),
    .io_interrupts_19(uncore_io_interrupts_19),
    .io_interrupts_20(uncore_io_interrupts_20),
    .io_interrupts_21(uncore_io_interrupts_21),
    .io_interrupts_22(uncore_io_interrupts_22),
    .io_interrupts_23(uncore_io_interrupts_23),
    .io_interrupts_24(uncore_io_interrupts_24),
    .io_interrupts_25(uncore_io_interrupts_25),
    .io_interrupts_26(uncore_io_interrupts_26),
    .io_interrupts_27(uncore_io_interrupts_27),
    .io_interrupts_28(uncore_io_interrupts_28),
    .io_interrupts_29(uncore_io_interrupts_29),
    .io_interrupts_30(uncore_io_interrupts_30),
    .io_debugBus_req_ready(uncore_io_debugBus_req_ready),
    .io_debugBus_req_valid(uncore_io_debugBus_req_valid),
    .io_debugBus_req_bits_addr(uncore_io_debugBus_req_bits_addr),
    .io_debugBus_req_bits_op(uncore_io_debugBus_req_bits_op),
    .io_debugBus_req_bits_data(uncore_io_debugBus_req_bits_data),
    .io_debugBus_resp_ready(uncore_io_debugBus_resp_ready),
    .io_debugBus_resp_valid(uncore_io_debugBus_resp_valid),
    .io_debugBus_resp_bits_resp(uncore_io_debugBus_resp_bits_resp),
    .io_debugBus_resp_bits_data(uncore_io_debugBus_resp_bits_data)
  );
  assign io_mem_axi_0_aw_valid = uncore_io_mem_axi_0_aw_valid;
  assign io_mem_axi_0_aw_bits_addr = uncore_io_mem_axi_0_aw_bits_addr;
  assign io_mem_axi_0_aw_bits_len = uncore_io_mem_axi_0_aw_bits_len;
  assign io_mem_axi_0_aw_bits_size = uncore_io_mem_axi_0_aw_bits_size;
  assign io_mem_axi_0_aw_bits_burst = uncore_io_mem_axi_0_aw_bits_burst;
  assign io_mem_axi_0_aw_bits_lock = uncore_io_mem_axi_0_aw_bits_lock;
  assign io_mem_axi_0_aw_bits_cache = uncore_io_mem_axi_0_aw_bits_cache;
  assign io_mem_axi_0_aw_bits_prot = uncore_io_mem_axi_0_aw_bits_prot;
  assign io_mem_axi_0_aw_bits_qos = uncore_io_mem_axi_0_aw_bits_qos;
  assign io_mem_axi_0_aw_bits_region = uncore_io_mem_axi_0_aw_bits_region;
  assign io_mem_axi_0_aw_bits_id = uncore_io_mem_axi_0_aw_bits_id;
  assign io_mem_axi_0_aw_bits_user = uncore_io_mem_axi_0_aw_bits_user;
  assign io_mem_axi_0_w_valid = uncore_io_mem_axi_0_w_valid;
  assign io_mem_axi_0_w_bits_data = uncore_io_mem_axi_0_w_bits_data;
  assign io_mem_axi_0_w_bits_last = uncore_io_mem_axi_0_w_bits_last;
  assign io_mem_axi_0_w_bits_id = uncore_io_mem_axi_0_w_bits_id;
  assign io_mem_axi_0_w_bits_strb = uncore_io_mem_axi_0_w_bits_strb;
  assign io_mem_axi_0_w_bits_user = uncore_io_mem_axi_0_w_bits_user;
  assign io_mem_axi_0_b_ready = uncore_io_mem_axi_0_b_ready;
  assign io_mem_axi_0_ar_valid = uncore_io_mem_axi_0_ar_valid;
  assign io_mem_axi_0_ar_bits_addr = uncore_io_mem_axi_0_ar_bits_addr;
  assign io_mem_axi_0_ar_bits_len = uncore_io_mem_axi_0_ar_bits_len;
  assign io_mem_axi_0_ar_bits_size = uncore_io_mem_axi_0_ar_bits_size;
  assign io_mem_axi_0_ar_bits_burst = uncore_io_mem_axi_0_ar_bits_burst;
  assign io_mem_axi_0_ar_bits_lock = uncore_io_mem_axi_0_ar_bits_lock;
  assign io_mem_axi_0_ar_bits_cache = uncore_io_mem_axi_0_ar_bits_cache;
  assign io_mem_axi_0_ar_bits_prot = uncore_io_mem_axi_0_ar_bits_prot;
  assign io_mem_axi_0_ar_bits_qos = uncore_io_mem_axi_0_ar_bits_qos;
  assign io_mem_axi_0_ar_bits_region = uncore_io_mem_axi_0_ar_bits_region;
  assign io_mem_axi_0_ar_bits_id = uncore_io_mem_axi_0_ar_bits_id;
  assign io_mem_axi_0_ar_bits_user = uncore_io_mem_axi_0_ar_bits_user;
  assign io_mem_axi_0_r_ready = uncore_io_mem_axi_0_r_ready;
  assign io_mmio_axi_0_aw_valid = uncore_io_mmio_axi_0_aw_valid;
  assign io_mmio_axi_0_aw_bits_addr = uncore_io_mmio_axi_0_aw_bits_addr;
  assign io_mmio_axi_0_aw_bits_len = uncore_io_mmio_axi_0_aw_bits_len;
  assign io_mmio_axi_0_aw_bits_size = uncore_io_mmio_axi_0_aw_bits_size;
  assign io_mmio_axi_0_aw_bits_burst = uncore_io_mmio_axi_0_aw_bits_burst;
  assign io_mmio_axi_0_aw_bits_lock = uncore_io_mmio_axi_0_aw_bits_lock;
  assign io_mmio_axi_0_aw_bits_cache = uncore_io_mmio_axi_0_aw_bits_cache;
  assign io_mmio_axi_0_aw_bits_prot = uncore_io_mmio_axi_0_aw_bits_prot;
  assign io_mmio_axi_0_aw_bits_qos = uncore_io_mmio_axi_0_aw_bits_qos;
  assign io_mmio_axi_0_aw_bits_region = uncore_io_mmio_axi_0_aw_bits_region;
  assign io_mmio_axi_0_aw_bits_id = uncore_io_mmio_axi_0_aw_bits_id;
  assign io_mmio_axi_0_aw_bits_user = uncore_io_mmio_axi_0_aw_bits_user;
  assign io_mmio_axi_0_w_valid = uncore_io_mmio_axi_0_w_valid;
  assign io_mmio_axi_0_w_bits_data = uncore_io_mmio_axi_0_w_bits_data;
  assign io_mmio_axi_0_w_bits_last = uncore_io_mmio_axi_0_w_bits_last;
  assign io_mmio_axi_0_w_bits_id = uncore_io_mmio_axi_0_w_bits_id;
  assign io_mmio_axi_0_w_bits_strb = uncore_io_mmio_axi_0_w_bits_strb;
  assign io_mmio_axi_0_w_bits_user = uncore_io_mmio_axi_0_w_bits_user;
  assign io_mmio_axi_0_b_ready = uncore_io_mmio_axi_0_b_ready;
  assign io_mmio_axi_0_ar_valid = uncore_io_mmio_axi_0_ar_valid;
  assign io_mmio_axi_0_ar_bits_addr = uncore_io_mmio_axi_0_ar_bits_addr;
  assign io_mmio_axi_0_ar_bits_len = uncore_io_mmio_axi_0_ar_bits_len;
  assign io_mmio_axi_0_ar_bits_size = uncore_io_mmio_axi_0_ar_bits_size;
  assign io_mmio_axi_0_ar_bits_burst = uncore_io_mmio_axi_0_ar_bits_burst;
  assign io_mmio_axi_0_ar_bits_lock = uncore_io_mmio_axi_0_ar_bits_lock;
  assign io_mmio_axi_0_ar_bits_cache = uncore_io_mmio_axi_0_ar_bits_cache;
  assign io_mmio_axi_0_ar_bits_prot = uncore_io_mmio_axi_0_ar_bits_prot;
  assign io_mmio_axi_0_ar_bits_qos = uncore_io_mmio_axi_0_ar_bits_qos;
  assign io_mmio_axi_0_ar_bits_region = uncore_io_mmio_axi_0_ar_bits_region;
  assign io_mmio_axi_0_ar_bits_id = uncore_io_mmio_axi_0_ar_bits_id;
  assign io_mmio_axi_0_ar_bits_user = uncore_io_mmio_axi_0_ar_bits_user;
  assign io_mmio_axi_0_r_ready = uncore_io_mmio_axi_0_r_ready;
  assign io_debug_req_ready = uncore_io_debugBus_req_ready;
  assign io_debug_resp_valid = uncore_io_debugBus_resp_valid;
  assign io_debug_resp_bits_resp = uncore_io_debugBus_resp_bits_resp;
  assign io_debug_resp_bits_data = uncore_io_debugBus_resp_bits_data;
  assign tileResets_0 = uncore_io_prci_0_reset;
  assign RocketTile_1_clk = clk;
  assign RocketTile_1_reset = tileResets_0;
  assign RocketTile_1_io_cached_0_acquire_ready = uncore_io_tiles_cached_0_acquire_ready;
  assign RocketTile_1_io_cached_0_probe_valid = uncore_io_tiles_cached_0_probe_valid;
  assign RocketTile_1_io_cached_0_probe_bits_addr_block = uncore_io_tiles_cached_0_probe_bits_addr_block;
  assign RocketTile_1_io_cached_0_probe_bits_p_type = uncore_io_tiles_cached_0_probe_bits_p_type;
  assign RocketTile_1_io_cached_0_release_ready = uncore_io_tiles_cached_0_release_ready;
  assign RocketTile_1_io_cached_0_grant_valid = uncore_io_tiles_cached_0_grant_valid;
  assign RocketTile_1_io_cached_0_grant_bits_addr_beat = uncore_io_tiles_cached_0_grant_bits_addr_beat;
  assign RocketTile_1_io_cached_0_grant_bits_client_xact_id = uncore_io_tiles_cached_0_grant_bits_client_xact_id;
  assign RocketTile_1_io_cached_0_grant_bits_manager_xact_id = uncore_io_tiles_cached_0_grant_bits_manager_xact_id;
  assign RocketTile_1_io_cached_0_grant_bits_is_builtin_type = uncore_io_tiles_cached_0_grant_bits_is_builtin_type;
  assign RocketTile_1_io_cached_0_grant_bits_g_type = uncore_io_tiles_cached_0_grant_bits_g_type;
  assign RocketTile_1_io_cached_0_grant_bits_data = uncore_io_tiles_cached_0_grant_bits_data;
  assign RocketTile_1_io_cached_0_grant_bits_manager_id = uncore_io_tiles_cached_0_grant_bits_manager_id;
  assign RocketTile_1_io_cached_0_finish_ready = uncore_io_tiles_cached_0_finish_ready;
  assign RocketTile_1_io_uncached_0_acquire_ready = uncore_io_tiles_uncached_0_acquire_ready;
  assign RocketTile_1_io_uncached_0_grant_valid = uncore_io_tiles_uncached_0_grant_valid;
  assign RocketTile_1_io_uncached_0_grant_bits_addr_beat = uncore_io_tiles_uncached_0_grant_bits_addr_beat;
  assign RocketTile_1_io_uncached_0_grant_bits_client_xact_id = uncore_io_tiles_uncached_0_grant_bits_client_xact_id;
  assign RocketTile_1_io_uncached_0_grant_bits_manager_xact_id = uncore_io_tiles_uncached_0_grant_bits_manager_xact_id;
  assign RocketTile_1_io_uncached_0_grant_bits_is_builtin_type = uncore_io_tiles_uncached_0_grant_bits_is_builtin_type;
  assign RocketTile_1_io_uncached_0_grant_bits_g_type = uncore_io_tiles_uncached_0_grant_bits_g_type;
  assign RocketTile_1_io_uncached_0_grant_bits_data = uncore_io_tiles_uncached_0_grant_bits_data;
  assign RocketTile_1_io_prci_reset = uncore_io_prci_0_reset;
  assign RocketTile_1_io_prci_id = uncore_io_prci_0_id;
  assign RocketTile_1_io_prci_interrupts_meip = uncore_io_prci_0_interrupts_meip;
  assign RocketTile_1_io_prci_interrupts_seip = uncore_io_prci_0_interrupts_seip;
  assign RocketTile_1_io_prci_interrupts_debug = uncore_io_prci_0_interrupts_debug;
  assign RocketTile_1_io_prci_interrupts_mtip = uncore_io_prci_0_interrupts_mtip;
  assign RocketTile_1_io_prci_interrupts_msip = uncore_io_prci_0_interrupts_msip;
  assign uncore_clk = clk;
  assign uncore_reset = reset;
  assign uncore_io_mem_axi_0_aw_ready = io_mem_axi_0_aw_ready;
  assign uncore_io_mem_axi_0_w_ready = io_mem_axi_0_w_ready;
  assign uncore_io_mem_axi_0_b_valid = io_mem_axi_0_b_valid;
  assign uncore_io_mem_axi_0_b_bits_resp = io_mem_axi_0_b_bits_resp;
  assign uncore_io_mem_axi_0_b_bits_id = io_mem_axi_0_b_bits_id;
  assign uncore_io_mem_axi_0_b_bits_user = io_mem_axi_0_b_bits_user;
  assign uncore_io_mem_axi_0_ar_ready = io_mem_axi_0_ar_ready;
  assign uncore_io_mem_axi_0_r_valid = io_mem_axi_0_r_valid;
  assign uncore_io_mem_axi_0_r_bits_resp = io_mem_axi_0_r_bits_resp;
  assign uncore_io_mem_axi_0_r_bits_data = io_mem_axi_0_r_bits_data;
  assign uncore_io_mem_axi_0_r_bits_last = io_mem_axi_0_r_bits_last;
  assign uncore_io_mem_axi_0_r_bits_id = io_mem_axi_0_r_bits_id;
  assign uncore_io_mem_axi_0_r_bits_user = io_mem_axi_0_r_bits_user;
  assign uncore_io_tiles_cached_0_acquire_valid = RocketTile_1_io_cached_0_acquire_valid;
  assign uncore_io_tiles_cached_0_acquire_bits_addr_block = RocketTile_1_io_cached_0_acquire_bits_addr_block;
  assign uncore_io_tiles_cached_0_acquire_bits_client_xact_id = RocketTile_1_io_cached_0_acquire_bits_client_xact_id;
  assign uncore_io_tiles_cached_0_acquire_bits_addr_beat = RocketTile_1_io_cached_0_acquire_bits_addr_beat;
  assign uncore_io_tiles_cached_0_acquire_bits_is_builtin_type = RocketTile_1_io_cached_0_acquire_bits_is_builtin_type;
  assign uncore_io_tiles_cached_0_acquire_bits_a_type = RocketTile_1_io_cached_0_acquire_bits_a_type;
  assign uncore_io_tiles_cached_0_acquire_bits_union = RocketTile_1_io_cached_0_acquire_bits_union;
  assign uncore_io_tiles_cached_0_acquire_bits_data = RocketTile_1_io_cached_0_acquire_bits_data;
  assign uncore_io_tiles_cached_0_probe_ready = RocketTile_1_io_cached_0_probe_ready;
  assign uncore_io_tiles_cached_0_release_valid = RocketTile_1_io_cached_0_release_valid;
  assign uncore_io_tiles_cached_0_release_bits_addr_beat = RocketTile_1_io_cached_0_release_bits_addr_beat;
  assign uncore_io_tiles_cached_0_release_bits_addr_block = RocketTile_1_io_cached_0_release_bits_addr_block;
  assign uncore_io_tiles_cached_0_release_bits_client_xact_id = RocketTile_1_io_cached_0_release_bits_client_xact_id;
  assign uncore_io_tiles_cached_0_release_bits_voluntary = RocketTile_1_io_cached_0_release_bits_voluntary;
  assign uncore_io_tiles_cached_0_release_bits_r_type = RocketTile_1_io_cached_0_release_bits_r_type;
  assign uncore_io_tiles_cached_0_release_bits_data = RocketTile_1_io_cached_0_release_bits_data;
  assign uncore_io_tiles_cached_0_grant_ready = RocketTile_1_io_cached_0_grant_ready;
  assign uncore_io_tiles_cached_0_finish_valid = RocketTile_1_io_cached_0_finish_valid;
  assign uncore_io_tiles_cached_0_finish_bits_manager_xact_id = RocketTile_1_io_cached_0_finish_bits_manager_xact_id;
  assign uncore_io_tiles_cached_0_finish_bits_manager_id = RocketTile_1_io_cached_0_finish_bits_manager_id;
  assign uncore_io_tiles_uncached_0_acquire_valid = RocketTile_1_io_uncached_0_acquire_valid;
  assign uncore_io_tiles_uncached_0_acquire_bits_addr_block = RocketTile_1_io_uncached_0_acquire_bits_addr_block;
  assign uncore_io_tiles_uncached_0_acquire_bits_client_xact_id = RocketTile_1_io_uncached_0_acquire_bits_client_xact_id;
  assign uncore_io_tiles_uncached_0_acquire_bits_addr_beat = RocketTile_1_io_uncached_0_acquire_bits_addr_beat;
  assign uncore_io_tiles_uncached_0_acquire_bits_is_builtin_type = RocketTile_1_io_uncached_0_acquire_bits_is_builtin_type;
  assign uncore_io_tiles_uncached_0_acquire_bits_a_type = RocketTile_1_io_uncached_0_acquire_bits_a_type;
  assign uncore_io_tiles_uncached_0_acquire_bits_union = RocketTile_1_io_uncached_0_acquire_bits_union;
  assign uncore_io_tiles_uncached_0_acquire_bits_data = RocketTile_1_io_uncached_0_acquire_bits_data;
  assign uncore_io_tiles_uncached_0_grant_ready = RocketTile_1_io_uncached_0_grant_ready;
  assign uncore_io_mmio_axi_0_aw_ready = io_mmio_axi_0_aw_ready;
  assign uncore_io_mmio_axi_0_w_ready = io_mmio_axi_0_w_ready;
  assign uncore_io_mmio_axi_0_b_valid = io_mmio_axi_0_b_valid;
  assign uncore_io_mmio_axi_0_b_bits_resp = io_mmio_axi_0_b_bits_resp;
  assign uncore_io_mmio_axi_0_b_bits_id = io_mmio_axi_0_b_bits_id;
  assign uncore_io_mmio_axi_0_b_bits_user = io_mmio_axi_0_b_bits_user;
  assign uncore_io_mmio_axi_0_ar_ready = io_mmio_axi_0_ar_ready;
  assign uncore_io_mmio_axi_0_r_valid = io_mmio_axi_0_r_valid;
  assign uncore_io_mmio_axi_0_r_bits_resp = io_mmio_axi_0_r_bits_resp;
  assign uncore_io_mmio_axi_0_r_bits_data = io_mmio_axi_0_r_bits_data;
  assign uncore_io_mmio_axi_0_r_bits_last = io_mmio_axi_0_r_bits_last;
  assign uncore_io_mmio_axi_0_r_bits_id = io_mmio_axi_0_r_bits_id;
  assign uncore_io_mmio_axi_0_r_bits_user = io_mmio_axi_0_r_bits_user;
  assign uncore_io_interrupts_0 = io_interrupts_0;
  assign uncore_io_interrupts_1 = io_interrupts_1;
  assign uncore_io_interrupts_2 = io_interrupts_2;
  assign uncore_io_interrupts_3 = io_interrupts_3;
  assign uncore_io_interrupts_4 = io_interrupts_4;
  assign uncore_io_interrupts_5 = io_interrupts_5;
  assign uncore_io_interrupts_6 = io_interrupts_6;
  assign uncore_io_interrupts_7 = io_interrupts_7;
  assign uncore_io_interrupts_8 = io_interrupts_8;
  assign uncore_io_interrupts_9 = io_interrupts_9;
  assign uncore_io_interrupts_10 = io_interrupts_10;
  assign uncore_io_interrupts_11 = io_interrupts_11;
  assign uncore_io_interrupts_12 = io_interrupts_12;
  assign uncore_io_interrupts_13 = io_interrupts_13;
  assign uncore_io_interrupts_14 = io_interrupts_14;
  assign uncore_io_interrupts_15 = io_interrupts_15;
  assign uncore_io_interrupts_16 = io_interrupts_16;
  assign uncore_io_interrupts_17 = io_interrupts_17;
  assign uncore_io_interrupts_18 = io_interrupts_18;
  assign uncore_io_interrupts_19 = io_interrupts_19;
  assign uncore_io_interrupts_20 = io_interrupts_20;
  assign uncore_io_interrupts_21 = io_interrupts_21;
  assign uncore_io_interrupts_22 = io_interrupts_22;
  assign uncore_io_interrupts_23 = io_interrupts_23;
  assign uncore_io_interrupts_24 = io_interrupts_24;
  assign uncore_io_interrupts_25 = io_interrupts_25;
  assign uncore_io_interrupts_26 = io_interrupts_26;
  assign uncore_io_interrupts_27 = io_interrupts_27;
  assign uncore_io_interrupts_28 = io_interrupts_28;
  assign uncore_io_interrupts_29 = io_interrupts_29;
  assign uncore_io_interrupts_30 = io_interrupts_30;
  assign uncore_io_debugBus_req_valid = io_debug_req_valid;
  assign uncore_io_debugBus_req_bits_addr = io_debug_req_bits_addr;
  assign uncore_io_debugBus_req_bits_op = io_debug_req_bits_op;
  assign uncore_io_debugBus_req_bits_data = io_debug_req_bits_data;
  assign uncore_io_debugBus_resp_ready = io_debug_resp_ready;
endmodule
