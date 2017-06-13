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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_UNCORE(
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
  output  io_tiles_cached_0_acquire_ready,
  input   io_tiles_cached_0_acquire_valid,
  input  [25:0] io_tiles_cached_0_acquire_bits_addr_block,
  input   io_tiles_cached_0_acquire_bits_client_xact_id,
  input  [2:0] io_tiles_cached_0_acquire_bits_addr_beat,
  input   io_tiles_cached_0_acquire_bits_is_builtin_type,
  input  [2:0] io_tiles_cached_0_acquire_bits_a_type,
  input  [11:0] io_tiles_cached_0_acquire_bits_union,
  input  [63:0] io_tiles_cached_0_acquire_bits_data,
  input   io_tiles_cached_0_probe_ready,
  output  io_tiles_cached_0_probe_valid,
  output [25:0] io_tiles_cached_0_probe_bits_addr_block,
  output [1:0] io_tiles_cached_0_probe_bits_p_type,
  output  io_tiles_cached_0_release_ready,
  input   io_tiles_cached_0_release_valid,
  input  [2:0] io_tiles_cached_0_release_bits_addr_beat,
  input  [25:0] io_tiles_cached_0_release_bits_addr_block,
  input   io_tiles_cached_0_release_bits_client_xact_id,
  input   io_tiles_cached_0_release_bits_voluntary,
  input  [2:0] io_tiles_cached_0_release_bits_r_type,
  input  [63:0] io_tiles_cached_0_release_bits_data,
  input   io_tiles_cached_0_grant_ready,
  output  io_tiles_cached_0_grant_valid,
  output [2:0] io_tiles_cached_0_grant_bits_addr_beat,
  output  io_tiles_cached_0_grant_bits_client_xact_id,
  output [1:0] io_tiles_cached_0_grant_bits_manager_xact_id,
  output  io_tiles_cached_0_grant_bits_is_builtin_type,
  output [3:0] io_tiles_cached_0_grant_bits_g_type,
  output [63:0] io_tiles_cached_0_grant_bits_data,
  output  io_tiles_cached_0_grant_bits_manager_id,
  output  io_tiles_cached_0_finish_ready,
  input   io_tiles_cached_0_finish_valid,
  input  [1:0] io_tiles_cached_0_finish_bits_manager_xact_id,
  input   io_tiles_cached_0_finish_bits_manager_id,
  output  io_tiles_uncached_0_acquire_ready,
  input   io_tiles_uncached_0_acquire_valid,
  input  [25:0] io_tiles_uncached_0_acquire_bits_addr_block,
  input   io_tiles_uncached_0_acquire_bits_client_xact_id,
  input  [2:0] io_tiles_uncached_0_acquire_bits_addr_beat,
  input   io_tiles_uncached_0_acquire_bits_is_builtin_type,
  input  [2:0] io_tiles_uncached_0_acquire_bits_a_type,
  input  [11:0] io_tiles_uncached_0_acquire_bits_union,
  input  [63:0] io_tiles_uncached_0_acquire_bits_data,
  input   io_tiles_uncached_0_grant_ready,
  output  io_tiles_uncached_0_grant_valid,
  output [2:0] io_tiles_uncached_0_grant_bits_addr_beat,
  output  io_tiles_uncached_0_grant_bits_client_xact_id,
  output [1:0] io_tiles_uncached_0_grant_bits_manager_xact_id,
  output  io_tiles_uncached_0_grant_bits_is_builtin_type,
  output [3:0] io_tiles_uncached_0_grant_bits_g_type,
  output [63:0] io_tiles_uncached_0_grant_bits_data,
  output  io_prci_0_reset,
  output  io_prci_0_id,
  output  io_prci_0_interrupts_meip,
  output  io_prci_0_interrupts_seip,
  output  io_prci_0_interrupts_debug,
  output  io_prci_0_interrupts_mtip,
  output  io_prci_0_interrupts_msip,
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
  output  io_debugBus_req_ready,
  input   io_debugBus_req_valid,
  input  [4:0] io_debugBus_req_bits_addr,
  input  [1:0] io_debugBus_req_bits_op,
  input  [33:0] io_debugBus_req_bits_data,
  input   io_debugBus_resp_ready,
  output  io_debugBus_resp_valid,
  output [1:0] io_debugBus_resp_bits_resp,
  output [33:0] io_debugBus_resp_bits_data
);
  wire  outmemsys_clk;
  wire  outmemsys_reset;
  wire  outmemsys_io_tiles_cached_0_acquire_ready;
  wire  outmemsys_io_tiles_cached_0_acquire_valid;
  wire [25:0] outmemsys_io_tiles_cached_0_acquire_bits_addr_block;
  wire  outmemsys_io_tiles_cached_0_acquire_bits_client_xact_id;
  wire [2:0] outmemsys_io_tiles_cached_0_acquire_bits_addr_beat;
  wire  outmemsys_io_tiles_cached_0_acquire_bits_is_builtin_type;
  wire [2:0] outmemsys_io_tiles_cached_0_acquire_bits_a_type;
  wire [11:0] outmemsys_io_tiles_cached_0_acquire_bits_union;
  wire [63:0] outmemsys_io_tiles_cached_0_acquire_bits_data;
  wire  outmemsys_io_tiles_cached_0_probe_ready;
  wire  outmemsys_io_tiles_cached_0_probe_valid;
  wire [25:0] outmemsys_io_tiles_cached_0_probe_bits_addr_block;
  wire [1:0] outmemsys_io_tiles_cached_0_probe_bits_p_type;
  wire  outmemsys_io_tiles_cached_0_release_ready;
  wire  outmemsys_io_tiles_cached_0_release_valid;
  wire [2:0] outmemsys_io_tiles_cached_0_release_bits_addr_beat;
  wire [25:0] outmemsys_io_tiles_cached_0_release_bits_addr_block;
  wire  outmemsys_io_tiles_cached_0_release_bits_client_xact_id;
  wire  outmemsys_io_tiles_cached_0_release_bits_voluntary;
  wire [2:0] outmemsys_io_tiles_cached_0_release_bits_r_type;
  wire [63:0] outmemsys_io_tiles_cached_0_release_bits_data;
  wire  outmemsys_io_tiles_cached_0_grant_ready;
  wire  outmemsys_io_tiles_cached_0_grant_valid;
  wire [2:0] outmemsys_io_tiles_cached_0_grant_bits_addr_beat;
  wire  outmemsys_io_tiles_cached_0_grant_bits_client_xact_id;
  wire [1:0] outmemsys_io_tiles_cached_0_grant_bits_manager_xact_id;
  wire  outmemsys_io_tiles_cached_0_grant_bits_is_builtin_type;
  wire [3:0] outmemsys_io_tiles_cached_0_grant_bits_g_type;
  wire [63:0] outmemsys_io_tiles_cached_0_grant_bits_data;
  wire  outmemsys_io_tiles_cached_0_grant_bits_manager_id;
  wire  outmemsys_io_tiles_cached_0_finish_ready;
  wire  outmemsys_io_tiles_cached_0_finish_valid;
  wire [1:0] outmemsys_io_tiles_cached_0_finish_bits_manager_xact_id;
  wire  outmemsys_io_tiles_cached_0_finish_bits_manager_id;
  wire  outmemsys_io_tiles_uncached_0_acquire_ready;
  wire  outmemsys_io_tiles_uncached_0_acquire_valid;
  wire [25:0] outmemsys_io_tiles_uncached_0_acquire_bits_addr_block;
  wire  outmemsys_io_tiles_uncached_0_acquire_bits_client_xact_id;
  wire [2:0] outmemsys_io_tiles_uncached_0_acquire_bits_addr_beat;
  wire  outmemsys_io_tiles_uncached_0_acquire_bits_is_builtin_type;
  wire [2:0] outmemsys_io_tiles_uncached_0_acquire_bits_a_type;
  wire [11:0] outmemsys_io_tiles_uncached_0_acquire_bits_union;
  wire [63:0] outmemsys_io_tiles_uncached_0_acquire_bits_data;
  wire  outmemsys_io_tiles_uncached_0_grant_ready;
  wire  outmemsys_io_tiles_uncached_0_grant_valid;
  wire [2:0] outmemsys_io_tiles_uncached_0_grant_bits_addr_beat;
  wire  outmemsys_io_tiles_uncached_0_grant_bits_client_xact_id;
  wire [1:0] outmemsys_io_tiles_uncached_0_grant_bits_manager_xact_id;
  wire  outmemsys_io_tiles_uncached_0_grant_bits_is_builtin_type;
  wire [3:0] outmemsys_io_tiles_uncached_0_grant_bits_g_type;
  wire [63:0] outmemsys_io_tiles_uncached_0_grant_bits_data;
  wire  outmemsys_io_incoherent_0;
  wire  outmemsys_io_mem_axi_0_aw_ready;
  wire  outmemsys_io_mem_axi_0_aw_valid;
  wire [31:0] outmemsys_io_mem_axi_0_aw_bits_addr;
  wire [7:0] outmemsys_io_mem_axi_0_aw_bits_len;
  wire [2:0] outmemsys_io_mem_axi_0_aw_bits_size;
  wire [1:0] outmemsys_io_mem_axi_0_aw_bits_burst;
  wire  outmemsys_io_mem_axi_0_aw_bits_lock;
  wire [3:0] outmemsys_io_mem_axi_0_aw_bits_cache;
  wire [2:0] outmemsys_io_mem_axi_0_aw_bits_prot;
  wire [3:0] outmemsys_io_mem_axi_0_aw_bits_qos;
  wire [3:0] outmemsys_io_mem_axi_0_aw_bits_region;
  wire [4:0] outmemsys_io_mem_axi_0_aw_bits_id;
  wire  outmemsys_io_mem_axi_0_aw_bits_user;
  wire  outmemsys_io_mem_axi_0_w_ready;
  wire  outmemsys_io_mem_axi_0_w_valid;
  wire [63:0] outmemsys_io_mem_axi_0_w_bits_data;
  wire  outmemsys_io_mem_axi_0_w_bits_last;
  wire [4:0] outmemsys_io_mem_axi_0_w_bits_id;
  wire [7:0] outmemsys_io_mem_axi_0_w_bits_strb;
  wire  outmemsys_io_mem_axi_0_w_bits_user;
  wire  outmemsys_io_mem_axi_0_b_ready;
  wire  outmemsys_io_mem_axi_0_b_valid;
  wire [1:0] outmemsys_io_mem_axi_0_b_bits_resp;
  wire [4:0] outmemsys_io_mem_axi_0_b_bits_id;
  wire  outmemsys_io_mem_axi_0_b_bits_user;
  wire  outmemsys_io_mem_axi_0_ar_ready;
  wire  outmemsys_io_mem_axi_0_ar_valid;
  wire [31:0] outmemsys_io_mem_axi_0_ar_bits_addr;
  wire [7:0] outmemsys_io_mem_axi_0_ar_bits_len;
  wire [2:0] outmemsys_io_mem_axi_0_ar_bits_size;
  wire [1:0] outmemsys_io_mem_axi_0_ar_bits_burst;
  wire  outmemsys_io_mem_axi_0_ar_bits_lock;
  wire [3:0] outmemsys_io_mem_axi_0_ar_bits_cache;
  wire [2:0] outmemsys_io_mem_axi_0_ar_bits_prot;
  wire [3:0] outmemsys_io_mem_axi_0_ar_bits_qos;
  wire [3:0] outmemsys_io_mem_axi_0_ar_bits_region;
  wire [4:0] outmemsys_io_mem_axi_0_ar_bits_id;
  wire  outmemsys_io_mem_axi_0_ar_bits_user;
  wire  outmemsys_io_mem_axi_0_r_ready;
  wire  outmemsys_io_mem_axi_0_r_valid;
  wire [1:0] outmemsys_io_mem_axi_0_r_bits_resp;
  wire [63:0] outmemsys_io_mem_axi_0_r_bits_data;
  wire  outmemsys_io_mem_axi_0_r_bits_last;
  wire [4:0] outmemsys_io_mem_axi_0_r_bits_id;
  wire  outmemsys_io_mem_axi_0_r_bits_user;
  wire  outmemsys_io_mmio_acquire_ready;
  wire  outmemsys_io_mmio_acquire_valid;
  wire [25:0] outmemsys_io_mmio_acquire_bits_addr_block;
  wire [1:0] outmemsys_io_mmio_acquire_bits_client_xact_id;
  wire [2:0] outmemsys_io_mmio_acquire_bits_addr_beat;
  wire  outmemsys_io_mmio_acquire_bits_is_builtin_type;
  wire [2:0] outmemsys_io_mmio_acquire_bits_a_type;
  wire [11:0] outmemsys_io_mmio_acquire_bits_union;
  wire [63:0] outmemsys_io_mmio_acquire_bits_data;
  wire  outmemsys_io_mmio_grant_ready;
  wire  outmemsys_io_mmio_grant_valid;
  wire [2:0] outmemsys_io_mmio_grant_bits_addr_beat;
  wire [1:0] outmemsys_io_mmio_grant_bits_client_xact_id;
  wire  outmemsys_io_mmio_grant_bits_manager_xact_id;
  wire  outmemsys_io_mmio_grant_bits_is_builtin_type;
  wire [3:0] outmemsys_io_mmio_grant_bits_g_type;
  wire [63:0] outmemsys_io_mmio_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_clk;
  wire  TileLinkRecursiveInterconnect_2_reset;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_acquire_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_grant_ready;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_data;
  wire  PLIC_1_clk;
  wire  PLIC_1_reset;
  wire  PLIC_1_io_devices_0_valid;
  wire  PLIC_1_io_devices_0_ready;
  wire  PLIC_1_io_devices_0_complete;
  wire  PLIC_1_io_devices_1_valid;
  wire  PLIC_1_io_devices_1_ready;
  wire  PLIC_1_io_devices_1_complete;
  wire  PLIC_1_io_devices_2_valid;
  wire  PLIC_1_io_devices_2_ready;
  wire  PLIC_1_io_devices_2_complete;
  wire  PLIC_1_io_devices_3_valid;
  wire  PLIC_1_io_devices_3_ready;
  wire  PLIC_1_io_devices_3_complete;
  wire  PLIC_1_io_devices_4_valid;
  wire  PLIC_1_io_devices_4_ready;
  wire  PLIC_1_io_devices_4_complete;
  wire  PLIC_1_io_devices_5_valid;
  wire  PLIC_1_io_devices_5_ready;
  wire  PLIC_1_io_devices_5_complete;
  wire  PLIC_1_io_devices_6_valid;
  wire  PLIC_1_io_devices_6_ready;
  wire  PLIC_1_io_devices_6_complete;
  wire  PLIC_1_io_devices_7_valid;
  wire  PLIC_1_io_devices_7_ready;
  wire  PLIC_1_io_devices_7_complete;
  wire  PLIC_1_io_devices_8_valid;
  wire  PLIC_1_io_devices_8_ready;
  wire  PLIC_1_io_devices_8_complete;
  wire  PLIC_1_io_devices_9_valid;
  wire  PLIC_1_io_devices_9_ready;
  wire  PLIC_1_io_devices_9_complete;
  wire  PLIC_1_io_devices_10_valid;
  wire  PLIC_1_io_devices_10_ready;
  wire  PLIC_1_io_devices_10_complete;
  wire  PLIC_1_io_devices_11_valid;
  wire  PLIC_1_io_devices_11_ready;
  wire  PLIC_1_io_devices_11_complete;
  wire  PLIC_1_io_devices_12_valid;
  wire  PLIC_1_io_devices_12_ready;
  wire  PLIC_1_io_devices_12_complete;
  wire  PLIC_1_io_devices_13_valid;
  wire  PLIC_1_io_devices_13_ready;
  wire  PLIC_1_io_devices_13_complete;
  wire  PLIC_1_io_devices_14_valid;
  wire  PLIC_1_io_devices_14_ready;
  wire  PLIC_1_io_devices_14_complete;
  wire  PLIC_1_io_devices_15_valid;
  wire  PLIC_1_io_devices_15_ready;
  wire  PLIC_1_io_devices_15_complete;
  wire  PLIC_1_io_devices_16_valid;
  wire  PLIC_1_io_devices_16_ready;
  wire  PLIC_1_io_devices_16_complete;
  wire  PLIC_1_io_devices_17_valid;
  wire  PLIC_1_io_devices_17_ready;
  wire  PLIC_1_io_devices_17_complete;
  wire  PLIC_1_io_devices_18_valid;
  wire  PLIC_1_io_devices_18_ready;
  wire  PLIC_1_io_devices_18_complete;
  wire  PLIC_1_io_devices_19_valid;
  wire  PLIC_1_io_devices_19_ready;
  wire  PLIC_1_io_devices_19_complete;
  wire  PLIC_1_io_devices_20_valid;
  wire  PLIC_1_io_devices_20_ready;
  wire  PLIC_1_io_devices_20_complete;
  wire  PLIC_1_io_devices_21_valid;
  wire  PLIC_1_io_devices_21_ready;
  wire  PLIC_1_io_devices_21_complete;
  wire  PLIC_1_io_devices_22_valid;
  wire  PLIC_1_io_devices_22_ready;
  wire  PLIC_1_io_devices_22_complete;
  wire  PLIC_1_io_devices_23_valid;
  wire  PLIC_1_io_devices_23_ready;
  wire  PLIC_1_io_devices_23_complete;
  wire  PLIC_1_io_devices_24_valid;
  wire  PLIC_1_io_devices_24_ready;
  wire  PLIC_1_io_devices_24_complete;
  wire  PLIC_1_io_devices_25_valid;
  wire  PLIC_1_io_devices_25_ready;
  wire  PLIC_1_io_devices_25_complete;
  wire  PLIC_1_io_devices_26_valid;
  wire  PLIC_1_io_devices_26_ready;
  wire  PLIC_1_io_devices_26_complete;
  wire  PLIC_1_io_devices_27_valid;
  wire  PLIC_1_io_devices_27_ready;
  wire  PLIC_1_io_devices_27_complete;
  wire  PLIC_1_io_devices_28_valid;
  wire  PLIC_1_io_devices_28_ready;
  wire  PLIC_1_io_devices_28_complete;
  wire  PLIC_1_io_devices_29_valid;
  wire  PLIC_1_io_devices_29_ready;
  wire  PLIC_1_io_devices_29_complete;
  wire  PLIC_1_io_devices_30_valid;
  wire  PLIC_1_io_devices_30_ready;
  wire  PLIC_1_io_devices_30_complete;
  wire  PLIC_1_io_harts_0;
  wire  PLIC_1_io_tl_acquire_ready;
  wire  PLIC_1_io_tl_acquire_valid;
  wire [25:0] PLIC_1_io_tl_acquire_bits_addr_block;
  wire [1:0] PLIC_1_io_tl_acquire_bits_client_xact_id;
  wire [2:0] PLIC_1_io_tl_acquire_bits_addr_beat;
  wire  PLIC_1_io_tl_acquire_bits_is_builtin_type;
  wire [2:0] PLIC_1_io_tl_acquire_bits_a_type;
  wire [11:0] PLIC_1_io_tl_acquire_bits_union;
  wire [63:0] PLIC_1_io_tl_acquire_bits_data;
  wire  PLIC_1_io_tl_grant_ready;
  wire  PLIC_1_io_tl_grant_valid;
  wire [2:0] PLIC_1_io_tl_grant_bits_addr_beat;
  wire [1:0] PLIC_1_io_tl_grant_bits_client_xact_id;
  wire  PLIC_1_io_tl_grant_bits_manager_xact_id;
  wire  PLIC_1_io_tl_grant_bits_is_builtin_type;
  wire [3:0] PLIC_1_io_tl_grant_bits_g_type;
  wire [63:0] PLIC_1_io_tl_grant_bits_data;
  wire  LevelGateway_31_clk;
  wire  LevelGateway_31_reset;
  wire  LevelGateway_31_io_interrupt;
  wire  LevelGateway_31_io_plic_valid;
  wire  LevelGateway_31_io_plic_ready;
  wire  LevelGateway_31_io_plic_complete;
  wire  LevelGateway_1_1_clk;
  wire  LevelGateway_1_1_reset;
  wire  LevelGateway_1_1_io_interrupt;
  wire  LevelGateway_1_1_io_plic_valid;
  wire  LevelGateway_1_1_io_plic_ready;
  wire  LevelGateway_1_1_io_plic_complete;
  wire  LevelGateway_2_1_clk;
  wire  LevelGateway_2_1_reset;
  wire  LevelGateway_2_1_io_interrupt;
  wire  LevelGateway_2_1_io_plic_valid;
  wire  LevelGateway_2_1_io_plic_ready;
  wire  LevelGateway_2_1_io_plic_complete;
  wire  LevelGateway_3_1_clk;
  wire  LevelGateway_3_1_reset;
  wire  LevelGateway_3_1_io_interrupt;
  wire  LevelGateway_3_1_io_plic_valid;
  wire  LevelGateway_3_1_io_plic_ready;
  wire  LevelGateway_3_1_io_plic_complete;
  wire  LevelGateway_4_1_clk;
  wire  LevelGateway_4_1_reset;
  wire  LevelGateway_4_1_io_interrupt;
  wire  LevelGateway_4_1_io_plic_valid;
  wire  LevelGateway_4_1_io_plic_ready;
  wire  LevelGateway_4_1_io_plic_complete;
  wire  LevelGateway_5_1_clk;
  wire  LevelGateway_5_1_reset;
  wire  LevelGateway_5_1_io_interrupt;
  wire  LevelGateway_5_1_io_plic_valid;
  wire  LevelGateway_5_1_io_plic_ready;
  wire  LevelGateway_5_1_io_plic_complete;
  wire  LevelGateway_6_1_clk;
  wire  LevelGateway_6_1_reset;
  wire  LevelGateway_6_1_io_interrupt;
  wire  LevelGateway_6_1_io_plic_valid;
  wire  LevelGateway_6_1_io_plic_ready;
  wire  LevelGateway_6_1_io_plic_complete;
  wire  LevelGateway_7_1_clk;
  wire  LevelGateway_7_1_reset;
  wire  LevelGateway_7_1_io_interrupt;
  wire  LevelGateway_7_1_io_plic_valid;
  wire  LevelGateway_7_1_io_plic_ready;
  wire  LevelGateway_7_1_io_plic_complete;
  wire  LevelGateway_8_1_clk;
  wire  LevelGateway_8_1_reset;
  wire  LevelGateway_8_1_io_interrupt;
  wire  LevelGateway_8_1_io_plic_valid;
  wire  LevelGateway_8_1_io_plic_ready;
  wire  LevelGateway_8_1_io_plic_complete;
  wire  LevelGateway_9_1_clk;
  wire  LevelGateway_9_1_reset;
  wire  LevelGateway_9_1_io_interrupt;
  wire  LevelGateway_9_1_io_plic_valid;
  wire  LevelGateway_9_1_io_plic_ready;
  wire  LevelGateway_9_1_io_plic_complete;
  wire  LevelGateway_10_1_clk;
  wire  LevelGateway_10_1_reset;
  wire  LevelGateway_10_1_io_interrupt;
  wire  LevelGateway_10_1_io_plic_valid;
  wire  LevelGateway_10_1_io_plic_ready;
  wire  LevelGateway_10_1_io_plic_complete;
  wire  LevelGateway_11_1_clk;
  wire  LevelGateway_11_1_reset;
  wire  LevelGateway_11_1_io_interrupt;
  wire  LevelGateway_11_1_io_plic_valid;
  wire  LevelGateway_11_1_io_plic_ready;
  wire  LevelGateway_11_1_io_plic_complete;
  wire  LevelGateway_12_1_clk;
  wire  LevelGateway_12_1_reset;
  wire  LevelGateway_12_1_io_interrupt;
  wire  LevelGateway_12_1_io_plic_valid;
  wire  LevelGateway_12_1_io_plic_ready;
  wire  LevelGateway_12_1_io_plic_complete;
  wire  LevelGateway_13_1_clk;
  wire  LevelGateway_13_1_reset;
  wire  LevelGateway_13_1_io_interrupt;
  wire  LevelGateway_13_1_io_plic_valid;
  wire  LevelGateway_13_1_io_plic_ready;
  wire  LevelGateway_13_1_io_plic_complete;
  wire  LevelGateway_14_1_clk;
  wire  LevelGateway_14_1_reset;
  wire  LevelGateway_14_1_io_interrupt;
  wire  LevelGateway_14_1_io_plic_valid;
  wire  LevelGateway_14_1_io_plic_ready;
  wire  LevelGateway_14_1_io_plic_complete;
  wire  LevelGateway_15_1_clk;
  wire  LevelGateway_15_1_reset;
  wire  LevelGateway_15_1_io_interrupt;
  wire  LevelGateway_15_1_io_plic_valid;
  wire  LevelGateway_15_1_io_plic_ready;
  wire  LevelGateway_15_1_io_plic_complete;
  wire  LevelGateway_16_1_clk;
  wire  LevelGateway_16_1_reset;
  wire  LevelGateway_16_1_io_interrupt;
  wire  LevelGateway_16_1_io_plic_valid;
  wire  LevelGateway_16_1_io_plic_ready;
  wire  LevelGateway_16_1_io_plic_complete;
  wire  LevelGateway_17_1_clk;
  wire  LevelGateway_17_1_reset;
  wire  LevelGateway_17_1_io_interrupt;
  wire  LevelGateway_17_1_io_plic_valid;
  wire  LevelGateway_17_1_io_plic_ready;
  wire  LevelGateway_17_1_io_plic_complete;
  wire  LevelGateway_18_1_clk;
  wire  LevelGateway_18_1_reset;
  wire  LevelGateway_18_1_io_interrupt;
  wire  LevelGateway_18_1_io_plic_valid;
  wire  LevelGateway_18_1_io_plic_ready;
  wire  LevelGateway_18_1_io_plic_complete;
  wire  LevelGateway_19_1_clk;
  wire  LevelGateway_19_1_reset;
  wire  LevelGateway_19_1_io_interrupt;
  wire  LevelGateway_19_1_io_plic_valid;
  wire  LevelGateway_19_1_io_plic_ready;
  wire  LevelGateway_19_1_io_plic_complete;
  wire  LevelGateway_20_1_clk;
  wire  LevelGateway_20_1_reset;
  wire  LevelGateway_20_1_io_interrupt;
  wire  LevelGateway_20_1_io_plic_valid;
  wire  LevelGateway_20_1_io_plic_ready;
  wire  LevelGateway_20_1_io_plic_complete;
  wire  LevelGateway_21_1_clk;
  wire  LevelGateway_21_1_reset;
  wire  LevelGateway_21_1_io_interrupt;
  wire  LevelGateway_21_1_io_plic_valid;
  wire  LevelGateway_21_1_io_plic_ready;
  wire  LevelGateway_21_1_io_plic_complete;
  wire  LevelGateway_22_1_clk;
  wire  LevelGateway_22_1_reset;
  wire  LevelGateway_22_1_io_interrupt;
  wire  LevelGateway_22_1_io_plic_valid;
  wire  LevelGateway_22_1_io_plic_ready;
  wire  LevelGateway_22_1_io_plic_complete;
  wire  LevelGateway_23_1_clk;
  wire  LevelGateway_23_1_reset;
  wire  LevelGateway_23_1_io_interrupt;
  wire  LevelGateway_23_1_io_plic_valid;
  wire  LevelGateway_23_1_io_plic_ready;
  wire  LevelGateway_23_1_io_plic_complete;
  wire  LevelGateway_24_1_clk;
  wire  LevelGateway_24_1_reset;
  wire  LevelGateway_24_1_io_interrupt;
  wire  LevelGateway_24_1_io_plic_valid;
  wire  LevelGateway_24_1_io_plic_ready;
  wire  LevelGateway_24_1_io_plic_complete;
  wire  LevelGateway_25_1_clk;
  wire  LevelGateway_25_1_reset;
  wire  LevelGateway_25_1_io_interrupt;
  wire  LevelGateway_25_1_io_plic_valid;
  wire  LevelGateway_25_1_io_plic_ready;
  wire  LevelGateway_25_1_io_plic_complete;
  wire  LevelGateway_26_1_clk;
  wire  LevelGateway_26_1_reset;
  wire  LevelGateway_26_1_io_interrupt;
  wire  LevelGateway_26_1_io_plic_valid;
  wire  LevelGateway_26_1_io_plic_ready;
  wire  LevelGateway_26_1_io_plic_complete;
  wire  LevelGateway_27_1_clk;
  wire  LevelGateway_27_1_reset;
  wire  LevelGateway_27_1_io_interrupt;
  wire  LevelGateway_27_1_io_plic_valid;
  wire  LevelGateway_27_1_io_plic_ready;
  wire  LevelGateway_27_1_io_plic_complete;
  wire  LevelGateway_28_1_clk;
  wire  LevelGateway_28_1_reset;
  wire  LevelGateway_28_1_io_interrupt;
  wire  LevelGateway_28_1_io_plic_valid;
  wire  LevelGateway_28_1_io_plic_ready;
  wire  LevelGateway_28_1_io_plic_complete;
  wire  LevelGateway_29_1_clk;
  wire  LevelGateway_29_1_reset;
  wire  LevelGateway_29_1_io_interrupt;
  wire  LevelGateway_29_1_io_plic_valid;
  wire  LevelGateway_29_1_io_plic_ready;
  wire  LevelGateway_29_1_io_plic_complete;
  wire  LevelGateway_30_1_clk;
  wire  LevelGateway_30_1_reset;
  wire  LevelGateway_30_1_io_interrupt;
  wire  LevelGateway_30_1_io_plic_valid;
  wire  LevelGateway_30_1_io_plic_ready;
  wire  LevelGateway_30_1_io_plic_complete;
  wire  DebugModule_1_clk;
  wire  DebugModule_1_reset;
  wire  DebugModule_1_io_db_req_ready;
  wire  DebugModule_1_io_db_req_valid;
  wire [4:0] DebugModule_1_io_db_req_bits_addr;
  wire [1:0] DebugModule_1_io_db_req_bits_op;
  wire [33:0] DebugModule_1_io_db_req_bits_data;
  wire  DebugModule_1_io_db_resp_ready;
  wire  DebugModule_1_io_db_resp_valid;
  wire [1:0] DebugModule_1_io_db_resp_bits_resp;
  wire [33:0] DebugModule_1_io_db_resp_bits_data;
  wire  DebugModule_1_io_debugInterrupts_0;
  wire  DebugModule_1_io_tl_acquire_ready;
  wire  DebugModule_1_io_tl_acquire_valid;
  wire [25:0] DebugModule_1_io_tl_acquire_bits_addr_block;
  wire [1:0] DebugModule_1_io_tl_acquire_bits_client_xact_id;
  wire [2:0] DebugModule_1_io_tl_acquire_bits_addr_beat;
  wire  DebugModule_1_io_tl_acquire_bits_is_builtin_type;
  wire [2:0] DebugModule_1_io_tl_acquire_bits_a_type;
  wire [11:0] DebugModule_1_io_tl_acquire_bits_union;
  wire [63:0] DebugModule_1_io_tl_acquire_bits_data;
  wire  DebugModule_1_io_tl_grant_ready;
  wire  DebugModule_1_io_tl_grant_valid;
  wire [2:0] DebugModule_1_io_tl_grant_bits_addr_beat;
  wire [1:0] DebugModule_1_io_tl_grant_bits_client_xact_id;
  wire  DebugModule_1_io_tl_grant_bits_manager_xact_id;
  wire  DebugModule_1_io_tl_grant_bits_is_builtin_type;
  wire [3:0] DebugModule_1_io_tl_grant_bits_g_type;
  wire [63:0] DebugModule_1_io_tl_grant_bits_data;
  wire  DebugModule_1_io_ndreset;
  wire  DebugModule_1_io_fullreset;
  wire  PRCI_1_clk;
  wire  PRCI_1_reset;
  wire  PRCI_1_io_interrupts_0_meip;
  wire  PRCI_1_io_interrupts_0_seip;
  wire  PRCI_1_io_interrupts_0_debug;
  wire  PRCI_1_io_tl_acquire_ready;
  wire  PRCI_1_io_tl_acquire_valid;
  wire [25:0] PRCI_1_io_tl_acquire_bits_addr_block;
  wire [1:0] PRCI_1_io_tl_acquire_bits_client_xact_id;
  wire [2:0] PRCI_1_io_tl_acquire_bits_addr_beat;
  wire  PRCI_1_io_tl_acquire_bits_is_builtin_type;
  wire [2:0] PRCI_1_io_tl_acquire_bits_a_type;
  wire [11:0] PRCI_1_io_tl_acquire_bits_union;
  wire [63:0] PRCI_1_io_tl_acquire_bits_data;
  wire  PRCI_1_io_tl_grant_ready;
  wire  PRCI_1_io_tl_grant_valid;
  wire [2:0] PRCI_1_io_tl_grant_bits_addr_beat;
  wire [1:0] PRCI_1_io_tl_grant_bits_client_xact_id;
  wire  PRCI_1_io_tl_grant_bits_manager_xact_id;
  wire  PRCI_1_io_tl_grant_bits_is_builtin_type;
  wire [3:0] PRCI_1_io_tl_grant_bits_g_type;
  wire [63:0] PRCI_1_io_tl_grant_bits_data;
  wire  PRCI_1_io_tiles_0_reset;
  wire  PRCI_1_io_tiles_0_id;
  wire  PRCI_1_io_tiles_0_interrupts_meip;
  wire  PRCI_1_io_tiles_0_interrupts_seip;
  wire  PRCI_1_io_tiles_0_interrupts_debug;
  wire  PRCI_1_io_tiles_0_interrupts_mtip;
  wire  PRCI_1_io_tiles_0_interrupts_msip;
  wire  PRCI_1_io_rtcTick;
  reg [6:0] T_10389;
  reg [31:0] GEN_2;
  wire  T_10391;
  wire [7:0] T_10393;
  wire [6:0] T_10394;
  wire [6:0] GEN_0;
  wire  ROMSlave_1_clk;
  wire  ROMSlave_1_reset;
  wire  ROMSlave_1_io_acquire_ready;
  wire  ROMSlave_1_io_acquire_valid;
  wire [25:0] ROMSlave_1_io_acquire_bits_addr_block;
  wire [1:0] ROMSlave_1_io_acquire_bits_client_xact_id;
  wire [2:0] ROMSlave_1_io_acquire_bits_addr_beat;
  wire  ROMSlave_1_io_acquire_bits_is_builtin_type;
  wire [2:0] ROMSlave_1_io_acquire_bits_a_type;
  wire [11:0] ROMSlave_1_io_acquire_bits_union;
  wire [63:0] ROMSlave_1_io_acquire_bits_data;
  wire  ROMSlave_1_io_grant_ready;
  wire  ROMSlave_1_io_grant_valid;
  wire [2:0] ROMSlave_1_io_grant_bits_addr_beat;
  wire [1:0] ROMSlave_1_io_grant_bits_client_xact_id;
  wire  ROMSlave_1_io_grant_bits_manager_xact_id;
  wire  ROMSlave_1_io_grant_bits_is_builtin_type;
  wire [3:0] ROMSlave_1_io_grant_bits_g_type;
  wire [63:0] ROMSlave_1_io_grant_bits_data;
  wire  NastiIOTileLinkIOConverter_1_1_clk;
  wire  NastiIOTileLinkIOConverter_1_1_reset;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_acquire_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_acquire_valid;
  wire [25:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_block;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_client_xact_id;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_beat;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_is_builtin_type;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_a_type;
  wire [11:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_union;
  wire [63:0] NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_data;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_grant_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_grant_valid;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_addr_beat;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_client_xact_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_manager_xact_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_is_builtin_type;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_g_type;
  wire [63:0] NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_data;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_aw_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_aw_valid;
  wire [31:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_addr;
  wire [7:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_len;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_size;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_burst;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_lock;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_cache;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_prot;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_qos;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_region;
  wire [4:0] NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_user;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_w_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_w_valid;
  wire [63:0] NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_data;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_last;
  wire [4:0] NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_id;
  wire [7:0] NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_strb;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_user;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_b_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_b_valid;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_resp;
  wire [4:0] NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_user;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_ar_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_ar_valid;
  wire [31:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_addr;
  wire [7:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_len;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_size;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_burst;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_lock;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_cache;
  wire [2:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_prot;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_qos;
  wire [3:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_region;
  wire [4:0] NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_user;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_r_ready;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_r_valid;
  wire [1:0] NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_resp;
  wire [63:0] NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_data;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_last;
  wire [4:0] NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_id;
  wire  NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_user;
  wire  Queue_18_1_clk;
  wire  Queue_18_1_reset;
  wire  Queue_18_1_io_enq_ready;
  wire  Queue_18_1_io_enq_valid;
  wire [31:0] Queue_18_1_io_enq_bits_addr;
  wire [7:0] Queue_18_1_io_enq_bits_len;
  wire [2:0] Queue_18_1_io_enq_bits_size;
  wire [1:0] Queue_18_1_io_enq_bits_burst;
  wire  Queue_18_1_io_enq_bits_lock;
  wire [3:0] Queue_18_1_io_enq_bits_cache;
  wire [2:0] Queue_18_1_io_enq_bits_prot;
  wire [3:0] Queue_18_1_io_enq_bits_qos;
  wire [3:0] Queue_18_1_io_enq_bits_region;
  wire [4:0] Queue_18_1_io_enq_bits_id;
  wire  Queue_18_1_io_enq_bits_user;
  wire  Queue_18_1_io_deq_ready;
  wire  Queue_18_1_io_deq_valid;
  wire [31:0] Queue_18_1_io_deq_bits_addr;
  wire [7:0] Queue_18_1_io_deq_bits_len;
  wire [2:0] Queue_18_1_io_deq_bits_size;
  wire [1:0] Queue_18_1_io_deq_bits_burst;
  wire  Queue_18_1_io_deq_bits_lock;
  wire [3:0] Queue_18_1_io_deq_bits_cache;
  wire [2:0] Queue_18_1_io_deq_bits_prot;
  wire [3:0] Queue_18_1_io_deq_bits_qos;
  wire [3:0] Queue_18_1_io_deq_bits_region;
  wire [4:0] Queue_18_1_io_deq_bits_id;
  wire  Queue_18_1_io_deq_bits_user;
  wire  Queue_18_1_io_count;
  wire  Queue_19_1_clk;
  wire  Queue_19_1_reset;
  wire  Queue_19_1_io_enq_ready;
  wire  Queue_19_1_io_enq_valid;
  wire [31:0] Queue_19_1_io_enq_bits_addr;
  wire [7:0] Queue_19_1_io_enq_bits_len;
  wire [2:0] Queue_19_1_io_enq_bits_size;
  wire [1:0] Queue_19_1_io_enq_bits_burst;
  wire  Queue_19_1_io_enq_bits_lock;
  wire [3:0] Queue_19_1_io_enq_bits_cache;
  wire [2:0] Queue_19_1_io_enq_bits_prot;
  wire [3:0] Queue_19_1_io_enq_bits_qos;
  wire [3:0] Queue_19_1_io_enq_bits_region;
  wire [4:0] Queue_19_1_io_enq_bits_id;
  wire  Queue_19_1_io_enq_bits_user;
  wire  Queue_19_1_io_deq_ready;
  wire  Queue_19_1_io_deq_valid;
  wire [31:0] Queue_19_1_io_deq_bits_addr;
  wire [7:0] Queue_19_1_io_deq_bits_len;
  wire [2:0] Queue_19_1_io_deq_bits_size;
  wire [1:0] Queue_19_1_io_deq_bits_burst;
  wire  Queue_19_1_io_deq_bits_lock;
  wire [3:0] Queue_19_1_io_deq_bits_cache;
  wire [2:0] Queue_19_1_io_deq_bits_prot;
  wire [3:0] Queue_19_1_io_deq_bits_qos;
  wire [3:0] Queue_19_1_io_deq_bits_region;
  wire [4:0] Queue_19_1_io_deq_bits_id;
  wire  Queue_19_1_io_deq_bits_user;
  wire  Queue_19_1_io_count;
  wire  Queue_20_1_clk;
  wire  Queue_20_1_reset;
  wire  Queue_20_1_io_enq_ready;
  wire  Queue_20_1_io_enq_valid;
  wire [63:0] Queue_20_1_io_enq_bits_data;
  wire  Queue_20_1_io_enq_bits_last;
  wire [4:0] Queue_20_1_io_enq_bits_id;
  wire [7:0] Queue_20_1_io_enq_bits_strb;
  wire  Queue_20_1_io_enq_bits_user;
  wire  Queue_20_1_io_deq_ready;
  wire  Queue_20_1_io_deq_valid;
  wire [63:0] Queue_20_1_io_deq_bits_data;
  wire  Queue_20_1_io_deq_bits_last;
  wire [4:0] Queue_20_1_io_deq_bits_id;
  wire [7:0] Queue_20_1_io_deq_bits_strb;
  wire  Queue_20_1_io_deq_bits_user;
  wire [1:0] Queue_20_1_io_count;
  wire  Queue_21_1_clk;
  wire  Queue_21_1_reset;
  wire  Queue_21_1_io_enq_ready;
  wire  Queue_21_1_io_enq_valid;
  wire [1:0] Queue_21_1_io_enq_bits_resp;
  wire [63:0] Queue_21_1_io_enq_bits_data;
  wire  Queue_21_1_io_enq_bits_last;
  wire [4:0] Queue_21_1_io_enq_bits_id;
  wire  Queue_21_1_io_enq_bits_user;
  wire  Queue_21_1_io_deq_ready;
  wire  Queue_21_1_io_deq_valid;
  wire [1:0] Queue_21_1_io_deq_bits_resp;
  wire [63:0] Queue_21_1_io_deq_bits_data;
  wire  Queue_21_1_io_deq_bits_last;
  wire [4:0] Queue_21_1_io_deq_bits_id;
  wire  Queue_21_1_io_deq_bits_user;
  wire [1:0] Queue_21_1_io_count;
  wire  Queue_22_1_clk;
  wire  Queue_22_1_reset;
  wire  Queue_22_1_io_enq_ready;
  wire  Queue_22_1_io_enq_valid;
  wire [1:0] Queue_22_1_io_enq_bits_resp;
  wire [4:0] Queue_22_1_io_enq_bits_id;
  wire  Queue_22_1_io_enq_bits_user;
  wire  Queue_22_1_io_deq_ready;
  wire  Queue_22_1_io_deq_valid;
  wire [1:0] Queue_22_1_io_deq_bits_resp;
  wire [4:0] Queue_22_1_io_deq_bits_id;
  wire  Queue_22_1_io_deq_bits_user;
  wire  Queue_22_1_io_count;
  reg  GEN_1;
  reg [31:0] GEN_3;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_OUTER_MEMORY_SYSTEM outmemsys (
    .clk(outmemsys_clk),
    .reset(outmemsys_reset),
    .io_tiles_cached_0_acquire_ready(outmemsys_io_tiles_cached_0_acquire_ready),
    .io_tiles_cached_0_acquire_valid(outmemsys_io_tiles_cached_0_acquire_valid),
    .io_tiles_cached_0_acquire_bits_addr_block(outmemsys_io_tiles_cached_0_acquire_bits_addr_block),
    .io_tiles_cached_0_acquire_bits_client_xact_id(outmemsys_io_tiles_cached_0_acquire_bits_client_xact_id),
    .io_tiles_cached_0_acquire_bits_addr_beat(outmemsys_io_tiles_cached_0_acquire_bits_addr_beat),
    .io_tiles_cached_0_acquire_bits_is_builtin_type(outmemsys_io_tiles_cached_0_acquire_bits_is_builtin_type),
    .io_tiles_cached_0_acquire_bits_a_type(outmemsys_io_tiles_cached_0_acquire_bits_a_type),
    .io_tiles_cached_0_acquire_bits_union(outmemsys_io_tiles_cached_0_acquire_bits_union),
    .io_tiles_cached_0_acquire_bits_data(outmemsys_io_tiles_cached_0_acquire_bits_data),
    .io_tiles_cached_0_probe_ready(outmemsys_io_tiles_cached_0_probe_ready),
    .io_tiles_cached_0_probe_valid(outmemsys_io_tiles_cached_0_probe_valid),
    .io_tiles_cached_0_probe_bits_addr_block(outmemsys_io_tiles_cached_0_probe_bits_addr_block),
    .io_tiles_cached_0_probe_bits_p_type(outmemsys_io_tiles_cached_0_probe_bits_p_type),
    .io_tiles_cached_0_release_ready(outmemsys_io_tiles_cached_0_release_ready),
    .io_tiles_cached_0_release_valid(outmemsys_io_tiles_cached_0_release_valid),
    .io_tiles_cached_0_release_bits_addr_beat(outmemsys_io_tiles_cached_0_release_bits_addr_beat),
    .io_tiles_cached_0_release_bits_addr_block(outmemsys_io_tiles_cached_0_release_bits_addr_block),
    .io_tiles_cached_0_release_bits_client_xact_id(outmemsys_io_tiles_cached_0_release_bits_client_xact_id),
    .io_tiles_cached_0_release_bits_voluntary(outmemsys_io_tiles_cached_0_release_bits_voluntary),
    .io_tiles_cached_0_release_bits_r_type(outmemsys_io_tiles_cached_0_release_bits_r_type),
    .io_tiles_cached_0_release_bits_data(outmemsys_io_tiles_cached_0_release_bits_data),
    .io_tiles_cached_0_grant_ready(outmemsys_io_tiles_cached_0_grant_ready),
    .io_tiles_cached_0_grant_valid(outmemsys_io_tiles_cached_0_grant_valid),
    .io_tiles_cached_0_grant_bits_addr_beat(outmemsys_io_tiles_cached_0_grant_bits_addr_beat),
    .io_tiles_cached_0_grant_bits_client_xact_id(outmemsys_io_tiles_cached_0_grant_bits_client_xact_id),
    .io_tiles_cached_0_grant_bits_manager_xact_id(outmemsys_io_tiles_cached_0_grant_bits_manager_xact_id),
    .io_tiles_cached_0_grant_bits_is_builtin_type(outmemsys_io_tiles_cached_0_grant_bits_is_builtin_type),
    .io_tiles_cached_0_grant_bits_g_type(outmemsys_io_tiles_cached_0_grant_bits_g_type),
    .io_tiles_cached_0_grant_bits_data(outmemsys_io_tiles_cached_0_grant_bits_data),
    .io_tiles_cached_0_grant_bits_manager_id(outmemsys_io_tiles_cached_0_grant_bits_manager_id),
    .io_tiles_cached_0_finish_ready(outmemsys_io_tiles_cached_0_finish_ready),
    .io_tiles_cached_0_finish_valid(outmemsys_io_tiles_cached_0_finish_valid),
    .io_tiles_cached_0_finish_bits_manager_xact_id(outmemsys_io_tiles_cached_0_finish_bits_manager_xact_id),
    .io_tiles_cached_0_finish_bits_manager_id(outmemsys_io_tiles_cached_0_finish_bits_manager_id),
    .io_tiles_uncached_0_acquire_ready(outmemsys_io_tiles_uncached_0_acquire_ready),
    .io_tiles_uncached_0_acquire_valid(outmemsys_io_tiles_uncached_0_acquire_valid),
    .io_tiles_uncached_0_acquire_bits_addr_block(outmemsys_io_tiles_uncached_0_acquire_bits_addr_block),
    .io_tiles_uncached_0_acquire_bits_client_xact_id(outmemsys_io_tiles_uncached_0_acquire_bits_client_xact_id),
    .io_tiles_uncached_0_acquire_bits_addr_beat(outmemsys_io_tiles_uncached_0_acquire_bits_addr_beat),
    .io_tiles_uncached_0_acquire_bits_is_builtin_type(outmemsys_io_tiles_uncached_0_acquire_bits_is_builtin_type),
    .io_tiles_uncached_0_acquire_bits_a_type(outmemsys_io_tiles_uncached_0_acquire_bits_a_type),
    .io_tiles_uncached_0_acquire_bits_union(outmemsys_io_tiles_uncached_0_acquire_bits_union),
    .io_tiles_uncached_0_acquire_bits_data(outmemsys_io_tiles_uncached_0_acquire_bits_data),
    .io_tiles_uncached_0_grant_ready(outmemsys_io_tiles_uncached_0_grant_ready),
    .io_tiles_uncached_0_grant_valid(outmemsys_io_tiles_uncached_0_grant_valid),
    .io_tiles_uncached_0_grant_bits_addr_beat(outmemsys_io_tiles_uncached_0_grant_bits_addr_beat),
    .io_tiles_uncached_0_grant_bits_client_xact_id(outmemsys_io_tiles_uncached_0_grant_bits_client_xact_id),
    .io_tiles_uncached_0_grant_bits_manager_xact_id(outmemsys_io_tiles_uncached_0_grant_bits_manager_xact_id),
    .io_tiles_uncached_0_grant_bits_is_builtin_type(outmemsys_io_tiles_uncached_0_grant_bits_is_builtin_type),
    .io_tiles_uncached_0_grant_bits_g_type(outmemsys_io_tiles_uncached_0_grant_bits_g_type),
    .io_tiles_uncached_0_grant_bits_data(outmemsys_io_tiles_uncached_0_grant_bits_data),
    .io_incoherent_0(outmemsys_io_incoherent_0),
    .io_mem_axi_0_aw_ready(outmemsys_io_mem_axi_0_aw_ready),
    .io_mem_axi_0_aw_valid(outmemsys_io_mem_axi_0_aw_valid),
    .io_mem_axi_0_aw_bits_addr(outmemsys_io_mem_axi_0_aw_bits_addr),
    .io_mem_axi_0_aw_bits_len(outmemsys_io_mem_axi_0_aw_bits_len),
    .io_mem_axi_0_aw_bits_size(outmemsys_io_mem_axi_0_aw_bits_size),
    .io_mem_axi_0_aw_bits_burst(outmemsys_io_mem_axi_0_aw_bits_burst),
    .io_mem_axi_0_aw_bits_lock(outmemsys_io_mem_axi_0_aw_bits_lock),
    .io_mem_axi_0_aw_bits_cache(outmemsys_io_mem_axi_0_aw_bits_cache),
    .io_mem_axi_0_aw_bits_prot(outmemsys_io_mem_axi_0_aw_bits_prot),
    .io_mem_axi_0_aw_bits_qos(outmemsys_io_mem_axi_0_aw_bits_qos),
    .io_mem_axi_0_aw_bits_region(outmemsys_io_mem_axi_0_aw_bits_region),
    .io_mem_axi_0_aw_bits_id(outmemsys_io_mem_axi_0_aw_bits_id),
    .io_mem_axi_0_aw_bits_user(outmemsys_io_mem_axi_0_aw_bits_user),
    .io_mem_axi_0_w_ready(outmemsys_io_mem_axi_0_w_ready),
    .io_mem_axi_0_w_valid(outmemsys_io_mem_axi_0_w_valid),
    .io_mem_axi_0_w_bits_data(outmemsys_io_mem_axi_0_w_bits_data),
    .io_mem_axi_0_w_bits_last(outmemsys_io_mem_axi_0_w_bits_last),
    .io_mem_axi_0_w_bits_id(outmemsys_io_mem_axi_0_w_bits_id),
    .io_mem_axi_0_w_bits_strb(outmemsys_io_mem_axi_0_w_bits_strb),
    .io_mem_axi_0_w_bits_user(outmemsys_io_mem_axi_0_w_bits_user),
    .io_mem_axi_0_b_ready(outmemsys_io_mem_axi_0_b_ready),
    .io_mem_axi_0_b_valid(outmemsys_io_mem_axi_0_b_valid),
    .io_mem_axi_0_b_bits_resp(outmemsys_io_mem_axi_0_b_bits_resp),
    .io_mem_axi_0_b_bits_id(outmemsys_io_mem_axi_0_b_bits_id),
    .io_mem_axi_0_b_bits_user(outmemsys_io_mem_axi_0_b_bits_user),
    .io_mem_axi_0_ar_ready(outmemsys_io_mem_axi_0_ar_ready),
    .io_mem_axi_0_ar_valid(outmemsys_io_mem_axi_0_ar_valid),
    .io_mem_axi_0_ar_bits_addr(outmemsys_io_mem_axi_0_ar_bits_addr),
    .io_mem_axi_0_ar_bits_len(outmemsys_io_mem_axi_0_ar_bits_len),
    .io_mem_axi_0_ar_bits_size(outmemsys_io_mem_axi_0_ar_bits_size),
    .io_mem_axi_0_ar_bits_burst(outmemsys_io_mem_axi_0_ar_bits_burst),
    .io_mem_axi_0_ar_bits_lock(outmemsys_io_mem_axi_0_ar_bits_lock),
    .io_mem_axi_0_ar_bits_cache(outmemsys_io_mem_axi_0_ar_bits_cache),
    .io_mem_axi_0_ar_bits_prot(outmemsys_io_mem_axi_0_ar_bits_prot),
    .io_mem_axi_0_ar_bits_qos(outmemsys_io_mem_axi_0_ar_bits_qos),
    .io_mem_axi_0_ar_bits_region(outmemsys_io_mem_axi_0_ar_bits_region),
    .io_mem_axi_0_ar_bits_id(outmemsys_io_mem_axi_0_ar_bits_id),
    .io_mem_axi_0_ar_bits_user(outmemsys_io_mem_axi_0_ar_bits_user),
    .io_mem_axi_0_r_ready(outmemsys_io_mem_axi_0_r_ready),
    .io_mem_axi_0_r_valid(outmemsys_io_mem_axi_0_r_valid),
    .io_mem_axi_0_r_bits_resp(outmemsys_io_mem_axi_0_r_bits_resp),
    .io_mem_axi_0_r_bits_data(outmemsys_io_mem_axi_0_r_bits_data),
    .io_mem_axi_0_r_bits_last(outmemsys_io_mem_axi_0_r_bits_last),
    .io_mem_axi_0_r_bits_id(outmemsys_io_mem_axi_0_r_bits_id),
    .io_mem_axi_0_r_bits_user(outmemsys_io_mem_axi_0_r_bits_user),
    .io_mmio_acquire_ready(outmemsys_io_mmio_acquire_ready),
    .io_mmio_acquire_valid(outmemsys_io_mmio_acquire_valid),
    .io_mmio_acquire_bits_addr_block(outmemsys_io_mmio_acquire_bits_addr_block),
    .io_mmio_acquire_bits_client_xact_id(outmemsys_io_mmio_acquire_bits_client_xact_id),
    .io_mmio_acquire_bits_addr_beat(outmemsys_io_mmio_acquire_bits_addr_beat),
    .io_mmio_acquire_bits_is_builtin_type(outmemsys_io_mmio_acquire_bits_is_builtin_type),
    .io_mmio_acquire_bits_a_type(outmemsys_io_mmio_acquire_bits_a_type),
    .io_mmio_acquire_bits_union(outmemsys_io_mmio_acquire_bits_union),
    .io_mmio_acquire_bits_data(outmemsys_io_mmio_acquire_bits_data),
    .io_mmio_grant_ready(outmemsys_io_mmio_grant_ready),
    .io_mmio_grant_valid(outmemsys_io_mmio_grant_valid),
    .io_mmio_grant_bits_addr_beat(outmemsys_io_mmio_grant_bits_addr_beat),
    .io_mmio_grant_bits_client_xact_id(outmemsys_io_mmio_grant_bits_client_xact_id),
    .io_mmio_grant_bits_manager_xact_id(outmemsys_io_mmio_grant_bits_manager_xact_id),
    .io_mmio_grant_bits_is_builtin_type(outmemsys_io_mmio_grant_bits_is_builtin_type),
    .io_mmio_grant_bits_g_type(outmemsys_io_mmio_grant_bits_g_type),
    .io_mmio_grant_bits_data(outmemsys_io_mmio_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_RECURSIVE_INTERCONNECT TileLinkRecursiveInterconnect_2 (
    .clk(TileLinkRecursiveInterconnect_2_clk),
    .reset(TileLinkRecursiveInterconnect_2_reset),
    .io_in_0_acquire_ready(TileLinkRecursiveInterconnect_2_io_in_0_acquire_ready),
    .io_in_0_acquire_valid(TileLinkRecursiveInterconnect_2_io_in_0_acquire_valid),
    .io_in_0_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_block),
    .io_in_0_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_client_xact_id),
    .io_in_0_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_beat),
    .io_in_0_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_is_builtin_type),
    .io_in_0_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_a_type),
    .io_in_0_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_union),
    .io_in_0_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_data),
    .io_in_0_grant_ready(TileLinkRecursiveInterconnect_2_io_in_0_grant_ready),
    .io_in_0_grant_valid(TileLinkRecursiveInterconnect_2_io_in_0_grant_valid),
    .io_in_0_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_addr_beat),
    .io_in_0_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_client_xact_id),
    .io_in_0_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_manager_xact_id),
    .io_in_0_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_is_builtin_type),
    .io_in_0_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_g_type),
    .io_in_0_grant_bits_data(TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_data),
    .io_out_0_acquire_ready(TileLinkRecursiveInterconnect_2_io_out_0_acquire_ready),
    .io_out_0_acquire_valid(TileLinkRecursiveInterconnect_2_io_out_0_acquire_valid),
    .io_out_0_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_block),
    .io_out_0_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_client_xact_id),
    .io_out_0_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_beat),
    .io_out_0_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_is_builtin_type),
    .io_out_0_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_a_type),
    .io_out_0_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_union),
    .io_out_0_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_data),
    .io_out_0_grant_ready(TileLinkRecursiveInterconnect_2_io_out_0_grant_ready),
    .io_out_0_grant_valid(TileLinkRecursiveInterconnect_2_io_out_0_grant_valid),
    .io_out_0_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_addr_beat),
    .io_out_0_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_client_xact_id),
    .io_out_0_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_manager_xact_id),
    .io_out_0_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_is_builtin_type),
    .io_out_0_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_g_type),
    .io_out_0_grant_bits_data(TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_data),
    .io_out_1_acquire_ready(TileLinkRecursiveInterconnect_2_io_out_1_acquire_ready),
    .io_out_1_acquire_valid(TileLinkRecursiveInterconnect_2_io_out_1_acquire_valid),
    .io_out_1_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_block),
    .io_out_1_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_client_xact_id),
    .io_out_1_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_beat),
    .io_out_1_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_is_builtin_type),
    .io_out_1_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_a_type),
    .io_out_1_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_union),
    .io_out_1_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_data),
    .io_out_1_grant_ready(TileLinkRecursiveInterconnect_2_io_out_1_grant_ready),
    .io_out_1_grant_valid(TileLinkRecursiveInterconnect_2_io_out_1_grant_valid),
    .io_out_1_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_addr_beat),
    .io_out_1_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_client_xact_id),
    .io_out_1_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_manager_xact_id),
    .io_out_1_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_is_builtin_type),
    .io_out_1_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_g_type),
    .io_out_1_grant_bits_data(TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_data),
    .io_out_2_acquire_ready(TileLinkRecursiveInterconnect_2_io_out_2_acquire_ready),
    .io_out_2_acquire_valid(TileLinkRecursiveInterconnect_2_io_out_2_acquire_valid),
    .io_out_2_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_block),
    .io_out_2_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_client_xact_id),
    .io_out_2_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_beat),
    .io_out_2_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_is_builtin_type),
    .io_out_2_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_a_type),
    .io_out_2_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_union),
    .io_out_2_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_data),
    .io_out_2_grant_ready(TileLinkRecursiveInterconnect_2_io_out_2_grant_ready),
    .io_out_2_grant_valid(TileLinkRecursiveInterconnect_2_io_out_2_grant_valid),
    .io_out_2_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_addr_beat),
    .io_out_2_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_client_xact_id),
    .io_out_2_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_manager_xact_id),
    .io_out_2_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_is_builtin_type),
    .io_out_2_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_g_type),
    .io_out_2_grant_bits_data(TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_data),
    .io_out_3_acquire_ready(TileLinkRecursiveInterconnect_2_io_out_3_acquire_ready),
    .io_out_3_acquire_valid(TileLinkRecursiveInterconnect_2_io_out_3_acquire_valid),
    .io_out_3_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_block),
    .io_out_3_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_client_xact_id),
    .io_out_3_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_beat),
    .io_out_3_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_is_builtin_type),
    .io_out_3_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_a_type),
    .io_out_3_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_union),
    .io_out_3_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_data),
    .io_out_3_grant_ready(TileLinkRecursiveInterconnect_2_io_out_3_grant_ready),
    .io_out_3_grant_valid(TileLinkRecursiveInterconnect_2_io_out_3_grant_valid),
    .io_out_3_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_addr_beat),
    .io_out_3_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_client_xact_id),
    .io_out_3_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_manager_xact_id),
    .io_out_3_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_is_builtin_type),
    .io_out_3_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_g_type),
    .io_out_3_grant_bits_data(TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_data),
    .io_out_4_acquire_ready(TileLinkRecursiveInterconnect_2_io_out_4_acquire_ready),
    .io_out_4_acquire_valid(TileLinkRecursiveInterconnect_2_io_out_4_acquire_valid),
    .io_out_4_acquire_bits_addr_block(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_block),
    .io_out_4_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_client_xact_id),
    .io_out_4_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_beat),
    .io_out_4_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_is_builtin_type),
    .io_out_4_acquire_bits_a_type(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_a_type),
    .io_out_4_acquire_bits_union(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_union),
    .io_out_4_acquire_bits_data(TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_data),
    .io_out_4_grant_ready(TileLinkRecursiveInterconnect_2_io_out_4_grant_ready),
    .io_out_4_grant_valid(TileLinkRecursiveInterconnect_2_io_out_4_grant_valid),
    .io_out_4_grant_bits_addr_beat(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_addr_beat),
    .io_out_4_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_client_xact_id),
    .io_out_4_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_manager_xact_id),
    .io_out_4_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_is_builtin_type),
    .io_out_4_grant_bits_g_type(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_g_type),
    .io_out_4_grant_bits_data(TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_PLIC PLIC_1 (
    .clk(PLIC_1_clk),
    .reset(PLIC_1_reset),
    .io_devices_0_valid(PLIC_1_io_devices_0_valid),
    .io_devices_0_ready(PLIC_1_io_devices_0_ready),
    .io_devices_0_complete(PLIC_1_io_devices_0_complete),
    .io_devices_1_valid(PLIC_1_io_devices_1_valid),
    .io_devices_1_ready(PLIC_1_io_devices_1_ready),
    .io_devices_1_complete(PLIC_1_io_devices_1_complete),
    .io_devices_2_valid(PLIC_1_io_devices_2_valid),
    .io_devices_2_ready(PLIC_1_io_devices_2_ready),
    .io_devices_2_complete(PLIC_1_io_devices_2_complete),
    .io_devices_3_valid(PLIC_1_io_devices_3_valid),
    .io_devices_3_ready(PLIC_1_io_devices_3_ready),
    .io_devices_3_complete(PLIC_1_io_devices_3_complete),
    .io_devices_4_valid(PLIC_1_io_devices_4_valid),
    .io_devices_4_ready(PLIC_1_io_devices_4_ready),
    .io_devices_4_complete(PLIC_1_io_devices_4_complete),
    .io_devices_5_valid(PLIC_1_io_devices_5_valid),
    .io_devices_5_ready(PLIC_1_io_devices_5_ready),
    .io_devices_5_complete(PLIC_1_io_devices_5_complete),
    .io_devices_6_valid(PLIC_1_io_devices_6_valid),
    .io_devices_6_ready(PLIC_1_io_devices_6_ready),
    .io_devices_6_complete(PLIC_1_io_devices_6_complete),
    .io_devices_7_valid(PLIC_1_io_devices_7_valid),
    .io_devices_7_ready(PLIC_1_io_devices_7_ready),
    .io_devices_7_complete(PLIC_1_io_devices_7_complete),
    .io_devices_8_valid(PLIC_1_io_devices_8_valid),
    .io_devices_8_ready(PLIC_1_io_devices_8_ready),
    .io_devices_8_complete(PLIC_1_io_devices_8_complete),
    .io_devices_9_valid(PLIC_1_io_devices_9_valid),
    .io_devices_9_ready(PLIC_1_io_devices_9_ready),
    .io_devices_9_complete(PLIC_1_io_devices_9_complete),
    .io_devices_10_valid(PLIC_1_io_devices_10_valid),
    .io_devices_10_ready(PLIC_1_io_devices_10_ready),
    .io_devices_10_complete(PLIC_1_io_devices_10_complete),
    .io_devices_11_valid(PLIC_1_io_devices_11_valid),
    .io_devices_11_ready(PLIC_1_io_devices_11_ready),
    .io_devices_11_complete(PLIC_1_io_devices_11_complete),
    .io_devices_12_valid(PLIC_1_io_devices_12_valid),
    .io_devices_12_ready(PLIC_1_io_devices_12_ready),
    .io_devices_12_complete(PLIC_1_io_devices_12_complete),
    .io_devices_13_valid(PLIC_1_io_devices_13_valid),
    .io_devices_13_ready(PLIC_1_io_devices_13_ready),
    .io_devices_13_complete(PLIC_1_io_devices_13_complete),
    .io_devices_14_valid(PLIC_1_io_devices_14_valid),
    .io_devices_14_ready(PLIC_1_io_devices_14_ready),
    .io_devices_14_complete(PLIC_1_io_devices_14_complete),
    .io_devices_15_valid(PLIC_1_io_devices_15_valid),
    .io_devices_15_ready(PLIC_1_io_devices_15_ready),
    .io_devices_15_complete(PLIC_1_io_devices_15_complete),
    .io_devices_16_valid(PLIC_1_io_devices_16_valid),
    .io_devices_16_ready(PLIC_1_io_devices_16_ready),
    .io_devices_16_complete(PLIC_1_io_devices_16_complete),
    .io_devices_17_valid(PLIC_1_io_devices_17_valid),
    .io_devices_17_ready(PLIC_1_io_devices_17_ready),
    .io_devices_17_complete(PLIC_1_io_devices_17_complete),
    .io_devices_18_valid(PLIC_1_io_devices_18_valid),
    .io_devices_18_ready(PLIC_1_io_devices_18_ready),
    .io_devices_18_complete(PLIC_1_io_devices_18_complete),
    .io_devices_19_valid(PLIC_1_io_devices_19_valid),
    .io_devices_19_ready(PLIC_1_io_devices_19_ready),
    .io_devices_19_complete(PLIC_1_io_devices_19_complete),
    .io_devices_20_valid(PLIC_1_io_devices_20_valid),
    .io_devices_20_ready(PLIC_1_io_devices_20_ready),
    .io_devices_20_complete(PLIC_1_io_devices_20_complete),
    .io_devices_21_valid(PLIC_1_io_devices_21_valid),
    .io_devices_21_ready(PLIC_1_io_devices_21_ready),
    .io_devices_21_complete(PLIC_1_io_devices_21_complete),
    .io_devices_22_valid(PLIC_1_io_devices_22_valid),
    .io_devices_22_ready(PLIC_1_io_devices_22_ready),
    .io_devices_22_complete(PLIC_1_io_devices_22_complete),
    .io_devices_23_valid(PLIC_1_io_devices_23_valid),
    .io_devices_23_ready(PLIC_1_io_devices_23_ready),
    .io_devices_23_complete(PLIC_1_io_devices_23_complete),
    .io_devices_24_valid(PLIC_1_io_devices_24_valid),
    .io_devices_24_ready(PLIC_1_io_devices_24_ready),
    .io_devices_24_complete(PLIC_1_io_devices_24_complete),
    .io_devices_25_valid(PLIC_1_io_devices_25_valid),
    .io_devices_25_ready(PLIC_1_io_devices_25_ready),
    .io_devices_25_complete(PLIC_1_io_devices_25_complete),
    .io_devices_26_valid(PLIC_1_io_devices_26_valid),
    .io_devices_26_ready(PLIC_1_io_devices_26_ready),
    .io_devices_26_complete(PLIC_1_io_devices_26_complete),
    .io_devices_27_valid(PLIC_1_io_devices_27_valid),
    .io_devices_27_ready(PLIC_1_io_devices_27_ready),
    .io_devices_27_complete(PLIC_1_io_devices_27_complete),
    .io_devices_28_valid(PLIC_1_io_devices_28_valid),
    .io_devices_28_ready(PLIC_1_io_devices_28_ready),
    .io_devices_28_complete(PLIC_1_io_devices_28_complete),
    .io_devices_29_valid(PLIC_1_io_devices_29_valid),
    .io_devices_29_ready(PLIC_1_io_devices_29_ready),
    .io_devices_29_complete(PLIC_1_io_devices_29_complete),
    .io_devices_30_valid(PLIC_1_io_devices_30_valid),
    .io_devices_30_ready(PLIC_1_io_devices_30_ready),
    .io_devices_30_complete(PLIC_1_io_devices_30_complete),
    .io_harts_0(PLIC_1_io_harts_0),
    .io_tl_acquire_ready(PLIC_1_io_tl_acquire_ready),
    .io_tl_acquire_valid(PLIC_1_io_tl_acquire_valid),
    .io_tl_acquire_bits_addr_block(PLIC_1_io_tl_acquire_bits_addr_block),
    .io_tl_acquire_bits_client_xact_id(PLIC_1_io_tl_acquire_bits_client_xact_id),
    .io_tl_acquire_bits_addr_beat(PLIC_1_io_tl_acquire_bits_addr_beat),
    .io_tl_acquire_bits_is_builtin_type(PLIC_1_io_tl_acquire_bits_is_builtin_type),
    .io_tl_acquire_bits_a_type(PLIC_1_io_tl_acquire_bits_a_type),
    .io_tl_acquire_bits_union(PLIC_1_io_tl_acquire_bits_union),
    .io_tl_acquire_bits_data(PLIC_1_io_tl_acquire_bits_data),
    .io_tl_grant_ready(PLIC_1_io_tl_grant_ready),
    .io_tl_grant_valid(PLIC_1_io_tl_grant_valid),
    .io_tl_grant_bits_addr_beat(PLIC_1_io_tl_grant_bits_addr_beat),
    .io_tl_grant_bits_client_xact_id(PLIC_1_io_tl_grant_bits_client_xact_id),
    .io_tl_grant_bits_manager_xact_id(PLIC_1_io_tl_grant_bits_manager_xact_id),
    .io_tl_grant_bits_is_builtin_type(PLIC_1_io_tl_grant_bits_is_builtin_type),
    .io_tl_grant_bits_g_type(PLIC_1_io_tl_grant_bits_g_type),
    .io_tl_grant_bits_data(PLIC_1_io_tl_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_31 (
    .clk(LevelGateway_31_clk),
    .reset(LevelGateway_31_reset),
    .io_interrupt(LevelGateway_31_io_interrupt),
    .io_plic_valid(LevelGateway_31_io_plic_valid),
    .io_plic_ready(LevelGateway_31_io_plic_ready),
    .io_plic_complete(LevelGateway_31_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_1_1 (
    .clk(LevelGateway_1_1_clk),
    .reset(LevelGateway_1_1_reset),
    .io_interrupt(LevelGateway_1_1_io_interrupt),
    .io_plic_valid(LevelGateway_1_1_io_plic_valid),
    .io_plic_ready(LevelGateway_1_1_io_plic_ready),
    .io_plic_complete(LevelGateway_1_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_2_1 (
    .clk(LevelGateway_2_1_clk),
    .reset(LevelGateway_2_1_reset),
    .io_interrupt(LevelGateway_2_1_io_interrupt),
    .io_plic_valid(LevelGateway_2_1_io_plic_valid),
    .io_plic_ready(LevelGateway_2_1_io_plic_ready),
    .io_plic_complete(LevelGateway_2_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_3_1 (
    .clk(LevelGateway_3_1_clk),
    .reset(LevelGateway_3_1_reset),
    .io_interrupt(LevelGateway_3_1_io_interrupt),
    .io_plic_valid(LevelGateway_3_1_io_plic_valid),
    .io_plic_ready(LevelGateway_3_1_io_plic_ready),
    .io_plic_complete(LevelGateway_3_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_4_1 (
    .clk(LevelGateway_4_1_clk),
    .reset(LevelGateway_4_1_reset),
    .io_interrupt(LevelGateway_4_1_io_interrupt),
    .io_plic_valid(LevelGateway_4_1_io_plic_valid),
    .io_plic_ready(LevelGateway_4_1_io_plic_ready),
    .io_plic_complete(LevelGateway_4_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_5_1 (
    .clk(LevelGateway_5_1_clk),
    .reset(LevelGateway_5_1_reset),
    .io_interrupt(LevelGateway_5_1_io_interrupt),
    .io_plic_valid(LevelGateway_5_1_io_plic_valid),
    .io_plic_ready(LevelGateway_5_1_io_plic_ready),
    .io_plic_complete(LevelGateway_5_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_6_1 (
    .clk(LevelGateway_6_1_clk),
    .reset(LevelGateway_6_1_reset),
    .io_interrupt(LevelGateway_6_1_io_interrupt),
    .io_plic_valid(LevelGateway_6_1_io_plic_valid),
    .io_plic_ready(LevelGateway_6_1_io_plic_ready),
    .io_plic_complete(LevelGateway_6_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_7_1 (
    .clk(LevelGateway_7_1_clk),
    .reset(LevelGateway_7_1_reset),
    .io_interrupt(LevelGateway_7_1_io_interrupt),
    .io_plic_valid(LevelGateway_7_1_io_plic_valid),
    .io_plic_ready(LevelGateway_7_1_io_plic_ready),
    .io_plic_complete(LevelGateway_7_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_8_1 (
    .clk(LevelGateway_8_1_clk),
    .reset(LevelGateway_8_1_reset),
    .io_interrupt(LevelGateway_8_1_io_interrupt),
    .io_plic_valid(LevelGateway_8_1_io_plic_valid),
    .io_plic_ready(LevelGateway_8_1_io_plic_ready),
    .io_plic_complete(LevelGateway_8_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_9_1 (
    .clk(LevelGateway_9_1_clk),
    .reset(LevelGateway_9_1_reset),
    .io_interrupt(LevelGateway_9_1_io_interrupt),
    .io_plic_valid(LevelGateway_9_1_io_plic_valid),
    .io_plic_ready(LevelGateway_9_1_io_plic_ready),
    .io_plic_complete(LevelGateway_9_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_10_1 (
    .clk(LevelGateway_10_1_clk),
    .reset(LevelGateway_10_1_reset),
    .io_interrupt(LevelGateway_10_1_io_interrupt),
    .io_plic_valid(LevelGateway_10_1_io_plic_valid),
    .io_plic_ready(LevelGateway_10_1_io_plic_ready),
    .io_plic_complete(LevelGateway_10_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_11_1 (
    .clk(LevelGateway_11_1_clk),
    .reset(LevelGateway_11_1_reset),
    .io_interrupt(LevelGateway_11_1_io_interrupt),
    .io_plic_valid(LevelGateway_11_1_io_plic_valid),
    .io_plic_ready(LevelGateway_11_1_io_plic_ready),
    .io_plic_complete(LevelGateway_11_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_12_1 (
    .clk(LevelGateway_12_1_clk),
    .reset(LevelGateway_12_1_reset),
    .io_interrupt(LevelGateway_12_1_io_interrupt),
    .io_plic_valid(LevelGateway_12_1_io_plic_valid),
    .io_plic_ready(LevelGateway_12_1_io_plic_ready),
    .io_plic_complete(LevelGateway_12_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_13_1 (
    .clk(LevelGateway_13_1_clk),
    .reset(LevelGateway_13_1_reset),
    .io_interrupt(LevelGateway_13_1_io_interrupt),
    .io_plic_valid(LevelGateway_13_1_io_plic_valid),
    .io_plic_ready(LevelGateway_13_1_io_plic_ready),
    .io_plic_complete(LevelGateway_13_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_14_1 (
    .clk(LevelGateway_14_1_clk),
    .reset(LevelGateway_14_1_reset),
    .io_interrupt(LevelGateway_14_1_io_interrupt),
    .io_plic_valid(LevelGateway_14_1_io_plic_valid),
    .io_plic_ready(LevelGateway_14_1_io_plic_ready),
    .io_plic_complete(LevelGateway_14_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_15_1 (
    .clk(LevelGateway_15_1_clk),
    .reset(LevelGateway_15_1_reset),
    .io_interrupt(LevelGateway_15_1_io_interrupt),
    .io_plic_valid(LevelGateway_15_1_io_plic_valid),
    .io_plic_ready(LevelGateway_15_1_io_plic_ready),
    .io_plic_complete(LevelGateway_15_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_16_1 (
    .clk(LevelGateway_16_1_clk),
    .reset(LevelGateway_16_1_reset),
    .io_interrupt(LevelGateway_16_1_io_interrupt),
    .io_plic_valid(LevelGateway_16_1_io_plic_valid),
    .io_plic_ready(LevelGateway_16_1_io_plic_ready),
    .io_plic_complete(LevelGateway_16_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_17_1 (
    .clk(LevelGateway_17_1_clk),
    .reset(LevelGateway_17_1_reset),
    .io_interrupt(LevelGateway_17_1_io_interrupt),
    .io_plic_valid(LevelGateway_17_1_io_plic_valid),
    .io_plic_ready(LevelGateway_17_1_io_plic_ready),
    .io_plic_complete(LevelGateway_17_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_18_1 (
    .clk(LevelGateway_18_1_clk),
    .reset(LevelGateway_18_1_reset),
    .io_interrupt(LevelGateway_18_1_io_interrupt),
    .io_plic_valid(LevelGateway_18_1_io_plic_valid),
    .io_plic_ready(LevelGateway_18_1_io_plic_ready),
    .io_plic_complete(LevelGateway_18_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_19_1 (
    .clk(LevelGateway_19_1_clk),
    .reset(LevelGateway_19_1_reset),
    .io_interrupt(LevelGateway_19_1_io_interrupt),
    .io_plic_valid(LevelGateway_19_1_io_plic_valid),
    .io_plic_ready(LevelGateway_19_1_io_plic_ready),
    .io_plic_complete(LevelGateway_19_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_20_1 (
    .clk(LevelGateway_20_1_clk),
    .reset(LevelGateway_20_1_reset),
    .io_interrupt(LevelGateway_20_1_io_interrupt),
    .io_plic_valid(LevelGateway_20_1_io_plic_valid),
    .io_plic_ready(LevelGateway_20_1_io_plic_ready),
    .io_plic_complete(LevelGateway_20_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_21_1 (
    .clk(LevelGateway_21_1_clk),
    .reset(LevelGateway_21_1_reset),
    .io_interrupt(LevelGateway_21_1_io_interrupt),
    .io_plic_valid(LevelGateway_21_1_io_plic_valid),
    .io_plic_ready(LevelGateway_21_1_io_plic_ready),
    .io_plic_complete(LevelGateway_21_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_22_1 (
    .clk(LevelGateway_22_1_clk),
    .reset(LevelGateway_22_1_reset),
    .io_interrupt(LevelGateway_22_1_io_interrupt),
    .io_plic_valid(LevelGateway_22_1_io_plic_valid),
    .io_plic_ready(LevelGateway_22_1_io_plic_ready),
    .io_plic_complete(LevelGateway_22_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_23_1 (
    .clk(LevelGateway_23_1_clk),
    .reset(LevelGateway_23_1_reset),
    .io_interrupt(LevelGateway_23_1_io_interrupt),
    .io_plic_valid(LevelGateway_23_1_io_plic_valid),
    .io_plic_ready(LevelGateway_23_1_io_plic_ready),
    .io_plic_complete(LevelGateway_23_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_24_1 (
    .clk(LevelGateway_24_1_clk),
    .reset(LevelGateway_24_1_reset),
    .io_interrupt(LevelGateway_24_1_io_interrupt),
    .io_plic_valid(LevelGateway_24_1_io_plic_valid),
    .io_plic_ready(LevelGateway_24_1_io_plic_ready),
    .io_plic_complete(LevelGateway_24_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_25_1 (
    .clk(LevelGateway_25_1_clk),
    .reset(LevelGateway_25_1_reset),
    .io_interrupt(LevelGateway_25_1_io_interrupt),
    .io_plic_valid(LevelGateway_25_1_io_plic_valid),
    .io_plic_ready(LevelGateway_25_1_io_plic_ready),
    .io_plic_complete(LevelGateway_25_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_26_1 (
    .clk(LevelGateway_26_1_clk),
    .reset(LevelGateway_26_1_reset),
    .io_interrupt(LevelGateway_26_1_io_interrupt),
    .io_plic_valid(LevelGateway_26_1_io_plic_valid),
    .io_plic_ready(LevelGateway_26_1_io_plic_ready),
    .io_plic_complete(LevelGateway_26_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_27_1 (
    .clk(LevelGateway_27_1_clk),
    .reset(LevelGateway_27_1_reset),
    .io_interrupt(LevelGateway_27_1_io_interrupt),
    .io_plic_valid(LevelGateway_27_1_io_plic_valid),
    .io_plic_ready(LevelGateway_27_1_io_plic_ready),
    .io_plic_complete(LevelGateway_27_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_28_1 (
    .clk(LevelGateway_28_1_clk),
    .reset(LevelGateway_28_1_reset),
    .io_interrupt(LevelGateway_28_1_io_interrupt),
    .io_plic_valid(LevelGateway_28_1_io_plic_valid),
    .io_plic_ready(LevelGateway_28_1_io_plic_ready),
    .io_plic_complete(LevelGateway_28_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_29_1 (
    .clk(LevelGateway_29_1_clk),
    .reset(LevelGateway_29_1_reset),
    .io_interrupt(LevelGateway_29_1_io_interrupt),
    .io_plic_valid(LevelGateway_29_1_io_plic_valid),
    .io_plic_ready(LevelGateway_29_1_io_plic_ready),
    .io_plic_complete(LevelGateway_29_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LEVEL_GATEWAY LevelGateway_30_1 (
    .clk(LevelGateway_30_1_clk),
    .reset(LevelGateway_30_1_reset),
    .io_interrupt(LevelGateway_30_1_io_interrupt),
    .io_plic_valid(LevelGateway_30_1_io_plic_valid),
    .io_plic_ready(LevelGateway_30_1_io_plic_ready),
    .io_plic_complete(LevelGateway_30_1_io_plic_complete)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_DEBUG_MODULE DebugModule_1 (
    .clk(DebugModule_1_clk),
    .reset(DebugModule_1_reset),
    .io_db_req_ready(DebugModule_1_io_db_req_ready),
    .io_db_req_valid(DebugModule_1_io_db_req_valid),
    .io_db_req_bits_addr(DebugModule_1_io_db_req_bits_addr),
    .io_db_req_bits_op(DebugModule_1_io_db_req_bits_op),
    .io_db_req_bits_data(DebugModule_1_io_db_req_bits_data),
    .io_db_resp_ready(DebugModule_1_io_db_resp_ready),
    .io_db_resp_valid(DebugModule_1_io_db_resp_valid),
    .io_db_resp_bits_resp(DebugModule_1_io_db_resp_bits_resp),
    .io_db_resp_bits_data(DebugModule_1_io_db_resp_bits_data),
    .io_debugInterrupts_0(DebugModule_1_io_debugInterrupts_0),
    .io_tl_acquire_ready(DebugModule_1_io_tl_acquire_ready),
    .io_tl_acquire_valid(DebugModule_1_io_tl_acquire_valid),
    .io_tl_acquire_bits_addr_block(DebugModule_1_io_tl_acquire_bits_addr_block),
    .io_tl_acquire_bits_client_xact_id(DebugModule_1_io_tl_acquire_bits_client_xact_id),
    .io_tl_acquire_bits_addr_beat(DebugModule_1_io_tl_acquire_bits_addr_beat),
    .io_tl_acquire_bits_is_builtin_type(DebugModule_1_io_tl_acquire_bits_is_builtin_type),
    .io_tl_acquire_bits_a_type(DebugModule_1_io_tl_acquire_bits_a_type),
    .io_tl_acquire_bits_union(DebugModule_1_io_tl_acquire_bits_union),
    .io_tl_acquire_bits_data(DebugModule_1_io_tl_acquire_bits_data),
    .io_tl_grant_ready(DebugModule_1_io_tl_grant_ready),
    .io_tl_grant_valid(DebugModule_1_io_tl_grant_valid),
    .io_tl_grant_bits_addr_beat(DebugModule_1_io_tl_grant_bits_addr_beat),
    .io_tl_grant_bits_client_xact_id(DebugModule_1_io_tl_grant_bits_client_xact_id),
    .io_tl_grant_bits_manager_xact_id(DebugModule_1_io_tl_grant_bits_manager_xact_id),
    .io_tl_grant_bits_is_builtin_type(DebugModule_1_io_tl_grant_bits_is_builtin_type),
    .io_tl_grant_bits_g_type(DebugModule_1_io_tl_grant_bits_g_type),
    .io_tl_grant_bits_data(DebugModule_1_io_tl_grant_bits_data),
    .io_ndreset(DebugModule_1_io_ndreset),
    .io_fullreset(DebugModule_1_io_fullreset)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_PRCI PRCI_1 (
    .clk(PRCI_1_clk),
    .reset(PRCI_1_reset),
    .io_interrupts_0_meip(PRCI_1_io_interrupts_0_meip),
    .io_interrupts_0_seip(PRCI_1_io_interrupts_0_seip),
    .io_interrupts_0_debug(PRCI_1_io_interrupts_0_debug),
    .io_tl_acquire_ready(PRCI_1_io_tl_acquire_ready),
    .io_tl_acquire_valid(PRCI_1_io_tl_acquire_valid),
    .io_tl_acquire_bits_addr_block(PRCI_1_io_tl_acquire_bits_addr_block),
    .io_tl_acquire_bits_client_xact_id(PRCI_1_io_tl_acquire_bits_client_xact_id),
    .io_tl_acquire_bits_addr_beat(PRCI_1_io_tl_acquire_bits_addr_beat),
    .io_tl_acquire_bits_is_builtin_type(PRCI_1_io_tl_acquire_bits_is_builtin_type),
    .io_tl_acquire_bits_a_type(PRCI_1_io_tl_acquire_bits_a_type),
    .io_tl_acquire_bits_union(PRCI_1_io_tl_acquire_bits_union),
    .io_tl_acquire_bits_data(PRCI_1_io_tl_acquire_bits_data),
    .io_tl_grant_ready(PRCI_1_io_tl_grant_ready),
    .io_tl_grant_valid(PRCI_1_io_tl_grant_valid),
    .io_tl_grant_bits_addr_beat(PRCI_1_io_tl_grant_bits_addr_beat),
    .io_tl_grant_bits_client_xact_id(PRCI_1_io_tl_grant_bits_client_xact_id),
    .io_tl_grant_bits_manager_xact_id(PRCI_1_io_tl_grant_bits_manager_xact_id),
    .io_tl_grant_bits_is_builtin_type(PRCI_1_io_tl_grant_bits_is_builtin_type),
    .io_tl_grant_bits_g_type(PRCI_1_io_tl_grant_bits_g_type),
    .io_tl_grant_bits_data(PRCI_1_io_tl_grant_bits_data),
    .io_tiles_0_reset(PRCI_1_io_tiles_0_reset),
    .io_tiles_0_id(PRCI_1_io_tiles_0_id),
    .io_tiles_0_interrupts_meip(PRCI_1_io_tiles_0_interrupts_meip),
    .io_tiles_0_interrupts_seip(PRCI_1_io_tiles_0_interrupts_seip),
    .io_tiles_0_interrupts_debug(PRCI_1_io_tiles_0_interrupts_debug),
    .io_tiles_0_interrupts_mtip(PRCI_1_io_tiles_0_interrupts_mtip),
    .io_tiles_0_interrupts_msip(PRCI_1_io_tiles_0_interrupts_msip),
    .io_rtcTick(PRCI_1_io_rtcTick)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ROM_SLAVE ROMSlave_1 (
    .clk(ROMSlave_1_clk),
    .reset(ROMSlave_1_reset),
    .io_acquire_ready(ROMSlave_1_io_acquire_ready),
    .io_acquire_valid(ROMSlave_1_io_acquire_valid),
    .io_acquire_bits_addr_block(ROMSlave_1_io_acquire_bits_addr_block),
    .io_acquire_bits_client_xact_id(ROMSlave_1_io_acquire_bits_client_xact_id),
    .io_acquire_bits_addr_beat(ROMSlave_1_io_acquire_bits_addr_beat),
    .io_acquire_bits_is_builtin_type(ROMSlave_1_io_acquire_bits_is_builtin_type),
    .io_acquire_bits_a_type(ROMSlave_1_io_acquire_bits_a_type),
    .io_acquire_bits_union(ROMSlave_1_io_acquire_bits_union),
    .io_acquire_bits_data(ROMSlave_1_io_acquire_bits_data),
    .io_grant_ready(ROMSlave_1_io_grant_ready),
    .io_grant_valid(ROMSlave_1_io_grant_valid),
    .io_grant_bits_addr_beat(ROMSlave_1_io_grant_bits_addr_beat),
    .io_grant_bits_client_xact_id(ROMSlave_1_io_grant_bits_client_xact_id),
    .io_grant_bits_manager_xact_id(ROMSlave_1_io_grant_bits_manager_xact_id),
    .io_grant_bits_is_builtin_type(ROMSlave_1_io_grant_bits_is_builtin_type),
    .io_grant_bits_g_type(ROMSlave_1_io_grant_bits_g_type),
    .io_grant_bits_data(ROMSlave_1_io_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_NASTI_IO_TILE_LINK_IO_CONVERTER_1 NastiIOTileLinkIOConverter_1_1 (
    .clk(NastiIOTileLinkIOConverter_1_1_clk),
    .reset(NastiIOTileLinkIOConverter_1_1_reset),
    .io_tl_acquire_ready(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_ready),
    .io_tl_acquire_valid(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_valid),
    .io_tl_acquire_bits_addr_block(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_block),
    .io_tl_acquire_bits_client_xact_id(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_client_xact_id),
    .io_tl_acquire_bits_addr_beat(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_beat),
    .io_tl_acquire_bits_is_builtin_type(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_is_builtin_type),
    .io_tl_acquire_bits_a_type(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_a_type),
    .io_tl_acquire_bits_union(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_union),
    .io_tl_acquire_bits_data(NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_data),
    .io_tl_grant_ready(NastiIOTileLinkIOConverter_1_1_io_tl_grant_ready),
    .io_tl_grant_valid(NastiIOTileLinkIOConverter_1_1_io_tl_grant_valid),
    .io_tl_grant_bits_addr_beat(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_addr_beat),
    .io_tl_grant_bits_client_xact_id(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_client_xact_id),
    .io_tl_grant_bits_manager_xact_id(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_manager_xact_id),
    .io_tl_grant_bits_is_builtin_type(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_is_builtin_type),
    .io_tl_grant_bits_g_type(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_g_type),
    .io_tl_grant_bits_data(NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_data),
    .io_nasti_aw_ready(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_ready),
    .io_nasti_aw_valid(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_valid),
    .io_nasti_aw_bits_addr(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_addr),
    .io_nasti_aw_bits_len(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_len),
    .io_nasti_aw_bits_size(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_size),
    .io_nasti_aw_bits_burst(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_burst),
    .io_nasti_aw_bits_lock(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_lock),
    .io_nasti_aw_bits_cache(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_cache),
    .io_nasti_aw_bits_prot(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_prot),
    .io_nasti_aw_bits_qos(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_qos),
    .io_nasti_aw_bits_region(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_region),
    .io_nasti_aw_bits_id(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_id),
    .io_nasti_aw_bits_user(NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_user),
    .io_nasti_w_ready(NastiIOTileLinkIOConverter_1_1_io_nasti_w_ready),
    .io_nasti_w_valid(NastiIOTileLinkIOConverter_1_1_io_nasti_w_valid),
    .io_nasti_w_bits_data(NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_data),
    .io_nasti_w_bits_last(NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_last),
    .io_nasti_w_bits_id(NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_id),
    .io_nasti_w_bits_strb(NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_strb),
    .io_nasti_w_bits_user(NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_user),
    .io_nasti_b_ready(NastiIOTileLinkIOConverter_1_1_io_nasti_b_ready),
    .io_nasti_b_valid(NastiIOTileLinkIOConverter_1_1_io_nasti_b_valid),
    .io_nasti_b_bits_resp(NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_resp),
    .io_nasti_b_bits_id(NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_id),
    .io_nasti_b_bits_user(NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_user),
    .io_nasti_ar_ready(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_ready),
    .io_nasti_ar_valid(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_valid),
    .io_nasti_ar_bits_addr(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_addr),
    .io_nasti_ar_bits_len(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_len),
    .io_nasti_ar_bits_size(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_size),
    .io_nasti_ar_bits_burst(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_burst),
    .io_nasti_ar_bits_lock(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_lock),
    .io_nasti_ar_bits_cache(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_cache),
    .io_nasti_ar_bits_prot(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_prot),
    .io_nasti_ar_bits_qos(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_qos),
    .io_nasti_ar_bits_region(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_region),
    .io_nasti_ar_bits_id(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_id),
    .io_nasti_ar_bits_user(NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_user),
    .io_nasti_r_ready(NastiIOTileLinkIOConverter_1_1_io_nasti_r_ready),
    .io_nasti_r_valid(NastiIOTileLinkIOConverter_1_1_io_nasti_r_valid),
    .io_nasti_r_bits_resp(NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_resp),
    .io_nasti_r_bits_data(NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_data),
    .io_nasti_r_bits_last(NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_last),
    .io_nasti_r_bits_id(NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_id),
    .io_nasti_r_bits_user(NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_user)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_10 Queue_18_1 (
    .clk(Queue_18_1_clk),
    .reset(Queue_18_1_reset),
    .io_enq_ready(Queue_18_1_io_enq_ready),
    .io_enq_valid(Queue_18_1_io_enq_valid),
    .io_enq_bits_addr(Queue_18_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_18_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_18_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_18_1_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_18_1_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_18_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_18_1_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_18_1_io_enq_bits_qos),
    .io_enq_bits_region(Queue_18_1_io_enq_bits_region),
    .io_enq_bits_id(Queue_18_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_18_1_io_enq_bits_user),
    .io_deq_ready(Queue_18_1_io_deq_ready),
    .io_deq_valid(Queue_18_1_io_deq_valid),
    .io_deq_bits_addr(Queue_18_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_18_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_18_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_18_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_18_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_18_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_18_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_18_1_io_deq_bits_qos),
    .io_deq_bits_region(Queue_18_1_io_deq_bits_region),
    .io_deq_bits_id(Queue_18_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_18_1_io_deq_bits_user),
    .io_count(Queue_18_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_10 Queue_19_1 (
    .clk(Queue_19_1_clk),
    .reset(Queue_19_1_reset),
    .io_enq_ready(Queue_19_1_io_enq_ready),
    .io_enq_valid(Queue_19_1_io_enq_valid),
    .io_enq_bits_addr(Queue_19_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_19_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_19_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_19_1_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_19_1_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_19_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_19_1_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_19_1_io_enq_bits_qos),
    .io_enq_bits_region(Queue_19_1_io_enq_bits_region),
    .io_enq_bits_id(Queue_19_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_19_1_io_enq_bits_user),
    .io_deq_ready(Queue_19_1_io_deq_ready),
    .io_deq_valid(Queue_19_1_io_deq_valid),
    .io_deq_bits_addr(Queue_19_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_19_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_19_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_19_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_19_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_19_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_19_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_19_1_io_deq_bits_qos),
    .io_deq_bits_region(Queue_19_1_io_deq_bits_region),
    .io_deq_bits_id(Queue_19_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_19_1_io_deq_bits_user),
    .io_count(Queue_19_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_12 Queue_20_1 (
    .clk(Queue_20_1_clk),
    .reset(Queue_20_1_reset),
    .io_enq_ready(Queue_20_1_io_enq_ready),
    .io_enq_valid(Queue_20_1_io_enq_valid),
    .io_enq_bits_data(Queue_20_1_io_enq_bits_data),
    .io_enq_bits_last(Queue_20_1_io_enq_bits_last),
    .io_enq_bits_id(Queue_20_1_io_enq_bits_id),
    .io_enq_bits_strb(Queue_20_1_io_enq_bits_strb),
    .io_enq_bits_user(Queue_20_1_io_enq_bits_user),
    .io_deq_ready(Queue_20_1_io_deq_ready),
    .io_deq_valid(Queue_20_1_io_deq_valid),
    .io_deq_bits_data(Queue_20_1_io_deq_bits_data),
    .io_deq_bits_last(Queue_20_1_io_deq_bits_last),
    .io_deq_bits_id(Queue_20_1_io_deq_bits_id),
    .io_deq_bits_strb(Queue_20_1_io_deq_bits_strb),
    .io_deq_bits_user(Queue_20_1_io_deq_bits_user),
    .io_count(Queue_20_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_13 Queue_21_1 (
    .clk(Queue_21_1_clk),
    .reset(Queue_21_1_reset),
    .io_enq_ready(Queue_21_1_io_enq_ready),
    .io_enq_valid(Queue_21_1_io_enq_valid),
    .io_enq_bits_resp(Queue_21_1_io_enq_bits_resp),
    .io_enq_bits_data(Queue_21_1_io_enq_bits_data),
    .io_enq_bits_last(Queue_21_1_io_enq_bits_last),
    .io_enq_bits_id(Queue_21_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_21_1_io_enq_bits_user),
    .io_deq_ready(Queue_21_1_io_deq_ready),
    .io_deq_valid(Queue_21_1_io_deq_valid),
    .io_deq_bits_resp(Queue_21_1_io_deq_bits_resp),
    .io_deq_bits_data(Queue_21_1_io_deq_bits_data),
    .io_deq_bits_last(Queue_21_1_io_deq_bits_last),
    .io_deq_bits_id(Queue_21_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_21_1_io_deq_bits_user),
    .io_count(Queue_21_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_14 Queue_22_1 (
    .clk(Queue_22_1_clk),
    .reset(Queue_22_1_reset),
    .io_enq_ready(Queue_22_1_io_enq_ready),
    .io_enq_valid(Queue_22_1_io_enq_valid),
    .io_enq_bits_resp(Queue_22_1_io_enq_bits_resp),
    .io_enq_bits_id(Queue_22_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_22_1_io_enq_bits_user),
    .io_deq_ready(Queue_22_1_io_deq_ready),
    .io_deq_valid(Queue_22_1_io_deq_valid),
    .io_deq_bits_resp(Queue_22_1_io_deq_bits_resp),
    .io_deq_bits_id(Queue_22_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_22_1_io_deq_bits_user),
    .io_count(Queue_22_1_io_count)
  );
  assign io_mem_axi_0_aw_valid = outmemsys_io_mem_axi_0_aw_valid;
  assign io_mem_axi_0_aw_bits_addr = outmemsys_io_mem_axi_0_aw_bits_addr;
  assign io_mem_axi_0_aw_bits_len = outmemsys_io_mem_axi_0_aw_bits_len;
  assign io_mem_axi_0_aw_bits_size = outmemsys_io_mem_axi_0_aw_bits_size;
  assign io_mem_axi_0_aw_bits_burst = outmemsys_io_mem_axi_0_aw_bits_burst;
  assign io_mem_axi_0_aw_bits_lock = outmemsys_io_mem_axi_0_aw_bits_lock;
  assign io_mem_axi_0_aw_bits_cache = outmemsys_io_mem_axi_0_aw_bits_cache;
  assign io_mem_axi_0_aw_bits_prot = outmemsys_io_mem_axi_0_aw_bits_prot;
  assign io_mem_axi_0_aw_bits_qos = outmemsys_io_mem_axi_0_aw_bits_qos;
  assign io_mem_axi_0_aw_bits_region = outmemsys_io_mem_axi_0_aw_bits_region;
  assign io_mem_axi_0_aw_bits_id = outmemsys_io_mem_axi_0_aw_bits_id;
  assign io_mem_axi_0_aw_bits_user = outmemsys_io_mem_axi_0_aw_bits_user;
  assign io_mem_axi_0_w_valid = outmemsys_io_mem_axi_0_w_valid;
  assign io_mem_axi_0_w_bits_data = outmemsys_io_mem_axi_0_w_bits_data;
  assign io_mem_axi_0_w_bits_last = outmemsys_io_mem_axi_0_w_bits_last;
  assign io_mem_axi_0_w_bits_id = outmemsys_io_mem_axi_0_w_bits_id;
  assign io_mem_axi_0_w_bits_strb = outmemsys_io_mem_axi_0_w_bits_strb;
  assign io_mem_axi_0_w_bits_user = outmemsys_io_mem_axi_0_w_bits_user;
  assign io_mem_axi_0_b_ready = outmemsys_io_mem_axi_0_b_ready;
  assign io_mem_axi_0_ar_valid = outmemsys_io_mem_axi_0_ar_valid;
  assign io_mem_axi_0_ar_bits_addr = outmemsys_io_mem_axi_0_ar_bits_addr;
  assign io_mem_axi_0_ar_bits_len = outmemsys_io_mem_axi_0_ar_bits_len;
  assign io_mem_axi_0_ar_bits_size = outmemsys_io_mem_axi_0_ar_bits_size;
  assign io_mem_axi_0_ar_bits_burst = outmemsys_io_mem_axi_0_ar_bits_burst;
  assign io_mem_axi_0_ar_bits_lock = outmemsys_io_mem_axi_0_ar_bits_lock;
  assign io_mem_axi_0_ar_bits_cache = outmemsys_io_mem_axi_0_ar_bits_cache;
  assign io_mem_axi_0_ar_bits_prot = outmemsys_io_mem_axi_0_ar_bits_prot;
  assign io_mem_axi_0_ar_bits_qos = outmemsys_io_mem_axi_0_ar_bits_qos;
  assign io_mem_axi_0_ar_bits_region = outmemsys_io_mem_axi_0_ar_bits_region;
  assign io_mem_axi_0_ar_bits_id = outmemsys_io_mem_axi_0_ar_bits_id;
  assign io_mem_axi_0_ar_bits_user = outmemsys_io_mem_axi_0_ar_bits_user;
  assign io_mem_axi_0_r_ready = outmemsys_io_mem_axi_0_r_ready;
  assign io_tiles_cached_0_acquire_ready = outmemsys_io_tiles_cached_0_acquire_ready;
  assign io_tiles_cached_0_probe_valid = outmemsys_io_tiles_cached_0_probe_valid;
  assign io_tiles_cached_0_probe_bits_addr_block = outmemsys_io_tiles_cached_0_probe_bits_addr_block;
  assign io_tiles_cached_0_probe_bits_p_type = outmemsys_io_tiles_cached_0_probe_bits_p_type;
  assign io_tiles_cached_0_release_ready = outmemsys_io_tiles_cached_0_release_ready;
  assign io_tiles_cached_0_grant_valid = outmemsys_io_tiles_cached_0_grant_valid;
  assign io_tiles_cached_0_grant_bits_addr_beat = outmemsys_io_tiles_cached_0_grant_bits_addr_beat;
  assign io_tiles_cached_0_grant_bits_client_xact_id = outmemsys_io_tiles_cached_0_grant_bits_client_xact_id;
  assign io_tiles_cached_0_grant_bits_manager_xact_id = outmemsys_io_tiles_cached_0_grant_bits_manager_xact_id;
  assign io_tiles_cached_0_grant_bits_is_builtin_type = outmemsys_io_tiles_cached_0_grant_bits_is_builtin_type;
  assign io_tiles_cached_0_grant_bits_g_type = outmemsys_io_tiles_cached_0_grant_bits_g_type;
  assign io_tiles_cached_0_grant_bits_data = outmemsys_io_tiles_cached_0_grant_bits_data;
  assign io_tiles_cached_0_grant_bits_manager_id = outmemsys_io_tiles_cached_0_grant_bits_manager_id;
  assign io_tiles_cached_0_finish_ready = outmemsys_io_tiles_cached_0_finish_ready;
  assign io_tiles_uncached_0_acquire_ready = outmemsys_io_tiles_uncached_0_acquire_ready;
  assign io_tiles_uncached_0_grant_valid = outmemsys_io_tiles_uncached_0_grant_valid;
  assign io_tiles_uncached_0_grant_bits_addr_beat = outmemsys_io_tiles_uncached_0_grant_bits_addr_beat;
  assign io_tiles_uncached_0_grant_bits_client_xact_id = outmemsys_io_tiles_uncached_0_grant_bits_client_xact_id;
  assign io_tiles_uncached_0_grant_bits_manager_xact_id = outmemsys_io_tiles_uncached_0_grant_bits_manager_xact_id;
  assign io_tiles_uncached_0_grant_bits_is_builtin_type = outmemsys_io_tiles_uncached_0_grant_bits_is_builtin_type;
  assign io_tiles_uncached_0_grant_bits_g_type = outmemsys_io_tiles_uncached_0_grant_bits_g_type;
  assign io_tiles_uncached_0_grant_bits_data = outmemsys_io_tiles_uncached_0_grant_bits_data;
  assign io_prci_0_reset = reset;
  assign io_prci_0_id = PRCI_1_io_tiles_0_id;
  assign io_prci_0_interrupts_meip = PRCI_1_io_tiles_0_interrupts_meip;
  assign io_prci_0_interrupts_seip = PRCI_1_io_tiles_0_interrupts_seip;
  assign io_prci_0_interrupts_debug = PRCI_1_io_tiles_0_interrupts_debug;
  assign io_prci_0_interrupts_mtip = PRCI_1_io_tiles_0_interrupts_mtip;
  assign io_prci_0_interrupts_msip = PRCI_1_io_tiles_0_interrupts_msip;
  assign io_mmio_axi_0_aw_valid = Queue_19_1_io_deq_valid;
  assign io_mmio_axi_0_aw_bits_addr = Queue_19_1_io_deq_bits_addr;
  assign io_mmio_axi_0_aw_bits_len = Queue_19_1_io_deq_bits_len;
  assign io_mmio_axi_0_aw_bits_size = Queue_19_1_io_deq_bits_size;
  assign io_mmio_axi_0_aw_bits_burst = Queue_19_1_io_deq_bits_burst;
  assign io_mmio_axi_0_aw_bits_lock = Queue_19_1_io_deq_bits_lock;
  assign io_mmio_axi_0_aw_bits_cache = Queue_19_1_io_deq_bits_cache;
  assign io_mmio_axi_0_aw_bits_prot = Queue_19_1_io_deq_bits_prot;
  assign io_mmio_axi_0_aw_bits_qos = Queue_19_1_io_deq_bits_qos;
  assign io_mmio_axi_0_aw_bits_region = Queue_19_1_io_deq_bits_region;
  assign io_mmio_axi_0_aw_bits_id = Queue_19_1_io_deq_bits_id;
  assign io_mmio_axi_0_aw_bits_user = Queue_19_1_io_deq_bits_user;
  assign io_mmio_axi_0_w_valid = Queue_20_1_io_deq_valid;
  assign io_mmio_axi_0_w_bits_data = Queue_20_1_io_deq_bits_data;
  assign io_mmio_axi_0_w_bits_last = Queue_20_1_io_deq_bits_last;
  assign io_mmio_axi_0_w_bits_id = Queue_20_1_io_deq_bits_id;
  assign io_mmio_axi_0_w_bits_strb = Queue_20_1_io_deq_bits_strb;
  assign io_mmio_axi_0_w_bits_user = Queue_20_1_io_deq_bits_user;
  assign io_mmio_axi_0_b_ready = Queue_22_1_io_enq_ready;
  assign io_mmio_axi_0_ar_valid = Queue_18_1_io_deq_valid;
  assign io_mmio_axi_0_ar_bits_addr = Queue_18_1_io_deq_bits_addr;
  assign io_mmio_axi_0_ar_bits_len = Queue_18_1_io_deq_bits_len;
  assign io_mmio_axi_0_ar_bits_size = Queue_18_1_io_deq_bits_size;
  assign io_mmio_axi_0_ar_bits_burst = Queue_18_1_io_deq_bits_burst;
  assign io_mmio_axi_0_ar_bits_lock = Queue_18_1_io_deq_bits_lock;
  assign io_mmio_axi_0_ar_bits_cache = Queue_18_1_io_deq_bits_cache;
  assign io_mmio_axi_0_ar_bits_prot = Queue_18_1_io_deq_bits_prot;
  assign io_mmio_axi_0_ar_bits_qos = Queue_18_1_io_deq_bits_qos;
  assign io_mmio_axi_0_ar_bits_region = Queue_18_1_io_deq_bits_region;
  assign io_mmio_axi_0_ar_bits_id = Queue_18_1_io_deq_bits_id;
  assign io_mmio_axi_0_ar_bits_user = Queue_18_1_io_deq_bits_user;
  assign io_mmio_axi_0_r_ready = Queue_21_1_io_enq_ready;
  assign io_debugBus_req_ready = DebugModule_1_io_db_req_ready;
  assign io_debugBus_resp_valid = DebugModule_1_io_db_resp_valid;
  assign io_debugBus_resp_bits_resp = DebugModule_1_io_db_resp_bits_resp;
  assign io_debugBus_resp_bits_data = DebugModule_1_io_db_resp_bits_data;
  assign outmemsys_clk = clk;
  assign outmemsys_reset = reset;
  assign outmemsys_io_tiles_cached_0_acquire_valid = io_tiles_cached_0_acquire_valid;
  assign outmemsys_io_tiles_cached_0_acquire_bits_addr_block = io_tiles_cached_0_acquire_bits_addr_block;
  assign outmemsys_io_tiles_cached_0_acquire_bits_client_xact_id = io_tiles_cached_0_acquire_bits_client_xact_id;
  assign outmemsys_io_tiles_cached_0_acquire_bits_addr_beat = io_tiles_cached_0_acquire_bits_addr_beat;
  assign outmemsys_io_tiles_cached_0_acquire_bits_is_builtin_type = io_tiles_cached_0_acquire_bits_is_builtin_type;
  assign outmemsys_io_tiles_cached_0_acquire_bits_a_type = io_tiles_cached_0_acquire_bits_a_type;
  assign outmemsys_io_tiles_cached_0_acquire_bits_union = io_tiles_cached_0_acquire_bits_union;
  assign outmemsys_io_tiles_cached_0_acquire_bits_data = io_tiles_cached_0_acquire_bits_data;
  assign outmemsys_io_tiles_cached_0_probe_ready = io_tiles_cached_0_probe_ready;
  assign outmemsys_io_tiles_cached_0_release_valid = io_tiles_cached_0_release_valid;
  assign outmemsys_io_tiles_cached_0_release_bits_addr_beat = io_tiles_cached_0_release_bits_addr_beat;
  assign outmemsys_io_tiles_cached_0_release_bits_addr_block = io_tiles_cached_0_release_bits_addr_block;
  assign outmemsys_io_tiles_cached_0_release_bits_client_xact_id = io_tiles_cached_0_release_bits_client_xact_id;
  assign outmemsys_io_tiles_cached_0_release_bits_voluntary = io_tiles_cached_0_release_bits_voluntary;
  assign outmemsys_io_tiles_cached_0_release_bits_r_type = io_tiles_cached_0_release_bits_r_type;
  assign outmemsys_io_tiles_cached_0_release_bits_data = io_tiles_cached_0_release_bits_data;
  assign outmemsys_io_tiles_cached_0_grant_ready = io_tiles_cached_0_grant_ready;
  assign outmemsys_io_tiles_cached_0_finish_valid = io_tiles_cached_0_finish_valid;
  assign outmemsys_io_tiles_cached_0_finish_bits_manager_xact_id = io_tiles_cached_0_finish_bits_manager_xact_id;
  assign outmemsys_io_tiles_cached_0_finish_bits_manager_id = io_tiles_cached_0_finish_bits_manager_id;
  assign outmemsys_io_tiles_uncached_0_acquire_valid = io_tiles_uncached_0_acquire_valid;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_addr_block = io_tiles_uncached_0_acquire_bits_addr_block;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_client_xact_id = io_tiles_uncached_0_acquire_bits_client_xact_id;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_addr_beat = io_tiles_uncached_0_acquire_bits_addr_beat;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_is_builtin_type = io_tiles_uncached_0_acquire_bits_is_builtin_type;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_a_type = io_tiles_uncached_0_acquire_bits_a_type;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_union = io_tiles_uncached_0_acquire_bits_union;
  assign outmemsys_io_tiles_uncached_0_acquire_bits_data = io_tiles_uncached_0_acquire_bits_data;
  assign outmemsys_io_tiles_uncached_0_grant_ready = io_tiles_uncached_0_grant_ready;
  assign outmemsys_io_incoherent_0 = 1'h0;
  assign outmemsys_io_mem_axi_0_aw_ready = io_mem_axi_0_aw_ready;
  assign outmemsys_io_mem_axi_0_w_ready = io_mem_axi_0_w_ready;
  assign outmemsys_io_mem_axi_0_b_valid = io_mem_axi_0_b_valid;
  assign outmemsys_io_mem_axi_0_b_bits_resp = io_mem_axi_0_b_bits_resp;
  assign outmemsys_io_mem_axi_0_b_bits_id = io_mem_axi_0_b_bits_id;
  assign outmemsys_io_mem_axi_0_b_bits_user = io_mem_axi_0_b_bits_user;
  assign outmemsys_io_mem_axi_0_ar_ready = io_mem_axi_0_ar_ready;
  assign outmemsys_io_mem_axi_0_r_valid = io_mem_axi_0_r_valid;
  assign outmemsys_io_mem_axi_0_r_bits_resp = io_mem_axi_0_r_bits_resp;
  assign outmemsys_io_mem_axi_0_r_bits_data = io_mem_axi_0_r_bits_data;
  assign outmemsys_io_mem_axi_0_r_bits_last = io_mem_axi_0_r_bits_last;
  assign outmemsys_io_mem_axi_0_r_bits_id = io_mem_axi_0_r_bits_id;
  assign outmemsys_io_mem_axi_0_r_bits_user = io_mem_axi_0_r_bits_user;
  assign outmemsys_io_mmio_acquire_ready = TileLinkRecursiveInterconnect_2_io_in_0_acquire_ready;
  assign outmemsys_io_mmio_grant_valid = TileLinkRecursiveInterconnect_2_io_in_0_grant_valid;
  assign outmemsys_io_mmio_grant_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_addr_beat;
  assign outmemsys_io_mmio_grant_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_client_xact_id;
  assign outmemsys_io_mmio_grant_bits_manager_xact_id = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_manager_xact_id;
  assign outmemsys_io_mmio_grant_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_is_builtin_type;
  assign outmemsys_io_mmio_grant_bits_g_type = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_g_type;
  assign outmemsys_io_mmio_grant_bits_data = TileLinkRecursiveInterconnect_2_io_in_0_grant_bits_data;
  assign TileLinkRecursiveInterconnect_2_clk = clk;
  assign TileLinkRecursiveInterconnect_2_reset = reset;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_valid = outmemsys_io_mmio_acquire_valid;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_block = outmemsys_io_mmio_acquire_bits_addr_block;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_client_xact_id = outmemsys_io_mmio_acquire_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_addr_beat = outmemsys_io_mmio_acquire_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_is_builtin_type = outmemsys_io_mmio_acquire_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_a_type = outmemsys_io_mmio_acquire_bits_a_type;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_union = outmemsys_io_mmio_acquire_bits_union;
  assign TileLinkRecursiveInterconnect_2_io_in_0_acquire_bits_data = outmemsys_io_mmio_acquire_bits_data;
  assign TileLinkRecursiveInterconnect_2_io_in_0_grant_ready = outmemsys_io_mmio_grant_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_0_acquire_ready = DebugModule_1_io_tl_acquire_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_valid = DebugModule_1_io_tl_grant_valid;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_addr_beat = DebugModule_1_io_tl_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_client_xact_id = DebugModule_1_io_tl_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_manager_xact_id = DebugModule_1_io_tl_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_is_builtin_type = DebugModule_1_io_tl_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_g_type = DebugModule_1_io_tl_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_2_io_out_0_grant_bits_data = DebugModule_1_io_tl_grant_bits_data;
  assign TileLinkRecursiveInterconnect_2_io_out_1_acquire_ready = ROMSlave_1_io_acquire_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_valid = ROMSlave_1_io_grant_valid;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_addr_beat = ROMSlave_1_io_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_client_xact_id = ROMSlave_1_io_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_manager_xact_id = ROMSlave_1_io_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_is_builtin_type = ROMSlave_1_io_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_g_type = ROMSlave_1_io_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_2_io_out_1_grant_bits_data = ROMSlave_1_io_grant_bits_data;
  assign TileLinkRecursiveInterconnect_2_io_out_2_acquire_ready = PLIC_1_io_tl_acquire_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_valid = PLIC_1_io_tl_grant_valid;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_addr_beat = PLIC_1_io_tl_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_client_xact_id = PLIC_1_io_tl_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_manager_xact_id = PLIC_1_io_tl_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_is_builtin_type = PLIC_1_io_tl_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_g_type = PLIC_1_io_tl_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_2_io_out_2_grant_bits_data = PLIC_1_io_tl_grant_bits_data;
  assign TileLinkRecursiveInterconnect_2_io_out_3_acquire_ready = PRCI_1_io_tl_acquire_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_valid = PRCI_1_io_tl_grant_valid;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_addr_beat = PRCI_1_io_tl_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_client_xact_id = PRCI_1_io_tl_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_manager_xact_id = PRCI_1_io_tl_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_is_builtin_type = PRCI_1_io_tl_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_g_type = PRCI_1_io_tl_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_2_io_out_3_grant_bits_data = PRCI_1_io_tl_grant_bits_data;
  assign TileLinkRecursiveInterconnect_2_io_out_4_acquire_ready = NastiIOTileLinkIOConverter_1_1_io_tl_acquire_ready;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_valid = NastiIOTileLinkIOConverter_1_1_io_tl_grant_valid;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_addr_beat = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_client_xact_id = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_manager_xact_id = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_is_builtin_type = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_g_type = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_2_io_out_4_grant_bits_data = NastiIOTileLinkIOConverter_1_1_io_tl_grant_bits_data;
  assign PLIC_1_clk = clk;
  assign PLIC_1_reset = reset;
  assign PLIC_1_io_devices_0_valid = LevelGateway_31_io_plic_valid;
  assign PLIC_1_io_devices_1_valid = LevelGateway_1_1_io_plic_valid;
  assign PLIC_1_io_devices_2_valid = LevelGateway_2_1_io_plic_valid;
  assign PLIC_1_io_devices_3_valid = LevelGateway_3_1_io_plic_valid;
  assign PLIC_1_io_devices_4_valid = LevelGateway_4_1_io_plic_valid;
  assign PLIC_1_io_devices_5_valid = LevelGateway_5_1_io_plic_valid;
  assign PLIC_1_io_devices_6_valid = LevelGateway_6_1_io_plic_valid;
  assign PLIC_1_io_devices_7_valid = LevelGateway_7_1_io_plic_valid;
  assign PLIC_1_io_devices_8_valid = LevelGateway_8_1_io_plic_valid;
  assign PLIC_1_io_devices_9_valid = LevelGateway_9_1_io_plic_valid;
  assign PLIC_1_io_devices_10_valid = LevelGateway_10_1_io_plic_valid;
  assign PLIC_1_io_devices_11_valid = LevelGateway_11_1_io_plic_valid;
  assign PLIC_1_io_devices_12_valid = LevelGateway_12_1_io_plic_valid;
  assign PLIC_1_io_devices_13_valid = LevelGateway_13_1_io_plic_valid;
  assign PLIC_1_io_devices_14_valid = LevelGateway_14_1_io_plic_valid;
  assign PLIC_1_io_devices_15_valid = LevelGateway_15_1_io_plic_valid;
  assign PLIC_1_io_devices_16_valid = LevelGateway_16_1_io_plic_valid;
  assign PLIC_1_io_devices_17_valid = LevelGateway_17_1_io_plic_valid;
  assign PLIC_1_io_devices_18_valid = LevelGateway_18_1_io_plic_valid;
  assign PLIC_1_io_devices_19_valid = LevelGateway_19_1_io_plic_valid;
  assign PLIC_1_io_devices_20_valid = LevelGateway_20_1_io_plic_valid;
  assign PLIC_1_io_devices_21_valid = LevelGateway_21_1_io_plic_valid;
  assign PLIC_1_io_devices_22_valid = LevelGateway_22_1_io_plic_valid;
  assign PLIC_1_io_devices_23_valid = LevelGateway_23_1_io_plic_valid;
  assign PLIC_1_io_devices_24_valid = LevelGateway_24_1_io_plic_valid;
  assign PLIC_1_io_devices_25_valid = LevelGateway_25_1_io_plic_valid;
  assign PLIC_1_io_devices_26_valid = LevelGateway_26_1_io_plic_valid;
  assign PLIC_1_io_devices_27_valid = LevelGateway_27_1_io_plic_valid;
  assign PLIC_1_io_devices_28_valid = LevelGateway_28_1_io_plic_valid;
  assign PLIC_1_io_devices_29_valid = LevelGateway_29_1_io_plic_valid;
  assign PLIC_1_io_devices_30_valid = LevelGateway_30_1_io_plic_valid;
  assign PLIC_1_io_tl_acquire_valid = TileLinkRecursiveInterconnect_2_io_out_2_acquire_valid;
  assign PLIC_1_io_tl_acquire_bits_addr_block = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_block;
  assign PLIC_1_io_tl_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_client_xact_id;
  assign PLIC_1_io_tl_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_addr_beat;
  assign PLIC_1_io_tl_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_is_builtin_type;
  assign PLIC_1_io_tl_acquire_bits_a_type = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_a_type;
  assign PLIC_1_io_tl_acquire_bits_union = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_union;
  assign PLIC_1_io_tl_acquire_bits_data = TileLinkRecursiveInterconnect_2_io_out_2_acquire_bits_data;
  assign PLIC_1_io_tl_grant_ready = TileLinkRecursiveInterconnect_2_io_out_2_grant_ready;
  assign LevelGateway_31_clk = clk;
  assign LevelGateway_31_reset = reset;
  assign LevelGateway_31_io_interrupt = io_interrupts_0;
  assign LevelGateway_31_io_plic_ready = PLIC_1_io_devices_0_ready;
  assign LevelGateway_31_io_plic_complete = PLIC_1_io_devices_0_complete;
  assign LevelGateway_1_1_clk = clk;
  assign LevelGateway_1_1_reset = reset;
  assign LevelGateway_1_1_io_interrupt = io_interrupts_1;
  assign LevelGateway_1_1_io_plic_ready = PLIC_1_io_devices_1_ready;
  assign LevelGateway_1_1_io_plic_complete = PLIC_1_io_devices_1_complete;
  assign LevelGateway_2_1_clk = clk;
  assign LevelGateway_2_1_reset = reset;
  assign LevelGateway_2_1_io_interrupt = io_interrupts_2;
  assign LevelGateway_2_1_io_plic_ready = PLIC_1_io_devices_2_ready;
  assign LevelGateway_2_1_io_plic_complete = PLIC_1_io_devices_2_complete;
  assign LevelGateway_3_1_clk = clk;
  assign LevelGateway_3_1_reset = reset;
  assign LevelGateway_3_1_io_interrupt = io_interrupts_3;
  assign LevelGateway_3_1_io_plic_ready = PLIC_1_io_devices_3_ready;
  assign LevelGateway_3_1_io_plic_complete = PLIC_1_io_devices_3_complete;
  assign LevelGateway_4_1_clk = clk;
  assign LevelGateway_4_1_reset = reset;
  assign LevelGateway_4_1_io_interrupt = io_interrupts_4;
  assign LevelGateway_4_1_io_plic_ready = PLIC_1_io_devices_4_ready;
  assign LevelGateway_4_1_io_plic_complete = PLIC_1_io_devices_4_complete;
  assign LevelGateway_5_1_clk = clk;
  assign LevelGateway_5_1_reset = reset;
  assign LevelGateway_5_1_io_interrupt = io_interrupts_5;
  assign LevelGateway_5_1_io_plic_ready = PLIC_1_io_devices_5_ready;
  assign LevelGateway_5_1_io_plic_complete = PLIC_1_io_devices_5_complete;
  assign LevelGateway_6_1_clk = clk;
  assign LevelGateway_6_1_reset = reset;
  assign LevelGateway_6_1_io_interrupt = io_interrupts_6;
  assign LevelGateway_6_1_io_plic_ready = PLIC_1_io_devices_6_ready;
  assign LevelGateway_6_1_io_plic_complete = PLIC_1_io_devices_6_complete;
  assign LevelGateway_7_1_clk = clk;
  assign LevelGateway_7_1_reset = reset;
  assign LevelGateway_7_1_io_interrupt = io_interrupts_7;
  assign LevelGateway_7_1_io_plic_ready = PLIC_1_io_devices_7_ready;
  assign LevelGateway_7_1_io_plic_complete = PLIC_1_io_devices_7_complete;
  assign LevelGateway_8_1_clk = clk;
  assign LevelGateway_8_1_reset = reset;
  assign LevelGateway_8_1_io_interrupt = io_interrupts_8;
  assign LevelGateway_8_1_io_plic_ready = PLIC_1_io_devices_8_ready;
  assign LevelGateway_8_1_io_plic_complete = PLIC_1_io_devices_8_complete;
  assign LevelGateway_9_1_clk = clk;
  assign LevelGateway_9_1_reset = reset;
  assign LevelGateway_9_1_io_interrupt = io_interrupts_9;
  assign LevelGateway_9_1_io_plic_ready = PLIC_1_io_devices_9_ready;
  assign LevelGateway_9_1_io_plic_complete = PLIC_1_io_devices_9_complete;
  assign LevelGateway_10_1_clk = clk;
  assign LevelGateway_10_1_reset = reset;
  assign LevelGateway_10_1_io_interrupt = io_interrupts_10;
  assign LevelGateway_10_1_io_plic_ready = PLIC_1_io_devices_10_ready;
  assign LevelGateway_10_1_io_plic_complete = PLIC_1_io_devices_10_complete;
  assign LevelGateway_11_1_clk = clk;
  assign LevelGateway_11_1_reset = reset;
  assign LevelGateway_11_1_io_interrupt = io_interrupts_11;
  assign LevelGateway_11_1_io_plic_ready = PLIC_1_io_devices_11_ready;
  assign LevelGateway_11_1_io_plic_complete = PLIC_1_io_devices_11_complete;
  assign LevelGateway_12_1_clk = clk;
  assign LevelGateway_12_1_reset = reset;
  assign LevelGateway_12_1_io_interrupt = io_interrupts_12;
  assign LevelGateway_12_1_io_plic_ready = PLIC_1_io_devices_12_ready;
  assign LevelGateway_12_1_io_plic_complete = PLIC_1_io_devices_12_complete;
  assign LevelGateway_13_1_clk = clk;
  assign LevelGateway_13_1_reset = reset;
  assign LevelGateway_13_1_io_interrupt = io_interrupts_13;
  assign LevelGateway_13_1_io_plic_ready = PLIC_1_io_devices_13_ready;
  assign LevelGateway_13_1_io_plic_complete = PLIC_1_io_devices_13_complete;
  assign LevelGateway_14_1_clk = clk;
  assign LevelGateway_14_1_reset = reset;
  assign LevelGateway_14_1_io_interrupt = io_interrupts_14;
  assign LevelGateway_14_1_io_plic_ready = PLIC_1_io_devices_14_ready;
  assign LevelGateway_14_1_io_plic_complete = PLIC_1_io_devices_14_complete;
  assign LevelGateway_15_1_clk = clk;
  assign LevelGateway_15_1_reset = reset;
  assign LevelGateway_15_1_io_interrupt = io_interrupts_15;
  assign LevelGateway_15_1_io_plic_ready = PLIC_1_io_devices_15_ready;
  assign LevelGateway_15_1_io_plic_complete = PLIC_1_io_devices_15_complete;
  assign LevelGateway_16_1_clk = clk;
  assign LevelGateway_16_1_reset = reset;
  assign LevelGateway_16_1_io_interrupt = io_interrupts_16;
  assign LevelGateway_16_1_io_plic_ready = PLIC_1_io_devices_16_ready;
  assign LevelGateway_16_1_io_plic_complete = PLIC_1_io_devices_16_complete;
  assign LevelGateway_17_1_clk = clk;
  assign LevelGateway_17_1_reset = reset;
  assign LevelGateway_17_1_io_interrupt = io_interrupts_17;
  assign LevelGateway_17_1_io_plic_ready = PLIC_1_io_devices_17_ready;
  assign LevelGateway_17_1_io_plic_complete = PLIC_1_io_devices_17_complete;
  assign LevelGateway_18_1_clk = clk;
  assign LevelGateway_18_1_reset = reset;
  assign LevelGateway_18_1_io_interrupt = io_interrupts_18;
  assign LevelGateway_18_1_io_plic_ready = PLIC_1_io_devices_18_ready;
  assign LevelGateway_18_1_io_plic_complete = PLIC_1_io_devices_18_complete;
  assign LevelGateway_19_1_clk = clk;
  assign LevelGateway_19_1_reset = reset;
  assign LevelGateway_19_1_io_interrupt = io_interrupts_19;
  assign LevelGateway_19_1_io_plic_ready = PLIC_1_io_devices_19_ready;
  assign LevelGateway_19_1_io_plic_complete = PLIC_1_io_devices_19_complete;
  assign LevelGateway_20_1_clk = clk;
  assign LevelGateway_20_1_reset = reset;
  assign LevelGateway_20_1_io_interrupt = io_interrupts_20;
  assign LevelGateway_20_1_io_plic_ready = PLIC_1_io_devices_20_ready;
  assign LevelGateway_20_1_io_plic_complete = PLIC_1_io_devices_20_complete;
  assign LevelGateway_21_1_clk = clk;
  assign LevelGateway_21_1_reset = reset;
  assign LevelGateway_21_1_io_interrupt = io_interrupts_21;
  assign LevelGateway_21_1_io_plic_ready = PLIC_1_io_devices_21_ready;
  assign LevelGateway_21_1_io_plic_complete = PLIC_1_io_devices_21_complete;
  assign LevelGateway_22_1_clk = clk;
  assign LevelGateway_22_1_reset = reset;
  assign LevelGateway_22_1_io_interrupt = io_interrupts_22;
  assign LevelGateway_22_1_io_plic_ready = PLIC_1_io_devices_22_ready;
  assign LevelGateway_22_1_io_plic_complete = PLIC_1_io_devices_22_complete;
  assign LevelGateway_23_1_clk = clk;
  assign LevelGateway_23_1_reset = reset;
  assign LevelGateway_23_1_io_interrupt = io_interrupts_23;
  assign LevelGateway_23_1_io_plic_ready = PLIC_1_io_devices_23_ready;
  assign LevelGateway_23_1_io_plic_complete = PLIC_1_io_devices_23_complete;
  assign LevelGateway_24_1_clk = clk;
  assign LevelGateway_24_1_reset = reset;
  assign LevelGateway_24_1_io_interrupt = io_interrupts_24;
  assign LevelGateway_24_1_io_plic_ready = PLIC_1_io_devices_24_ready;
  assign LevelGateway_24_1_io_plic_complete = PLIC_1_io_devices_24_complete;
  assign LevelGateway_25_1_clk = clk;
  assign LevelGateway_25_1_reset = reset;
  assign LevelGateway_25_1_io_interrupt = io_interrupts_25;
  assign LevelGateway_25_1_io_plic_ready = PLIC_1_io_devices_25_ready;
  assign LevelGateway_25_1_io_plic_complete = PLIC_1_io_devices_25_complete;
  assign LevelGateway_26_1_clk = clk;
  assign LevelGateway_26_1_reset = reset;
  assign LevelGateway_26_1_io_interrupt = io_interrupts_26;
  assign LevelGateway_26_1_io_plic_ready = PLIC_1_io_devices_26_ready;
  assign LevelGateway_26_1_io_plic_complete = PLIC_1_io_devices_26_complete;
  assign LevelGateway_27_1_clk = clk;
  assign LevelGateway_27_1_reset = reset;
  assign LevelGateway_27_1_io_interrupt = io_interrupts_27;
  assign LevelGateway_27_1_io_plic_ready = PLIC_1_io_devices_27_ready;
  assign LevelGateway_27_1_io_plic_complete = PLIC_1_io_devices_27_complete;
  assign LevelGateway_28_1_clk = clk;
  assign LevelGateway_28_1_reset = reset;
  assign LevelGateway_28_1_io_interrupt = io_interrupts_28;
  assign LevelGateway_28_1_io_plic_ready = PLIC_1_io_devices_28_ready;
  assign LevelGateway_28_1_io_plic_complete = PLIC_1_io_devices_28_complete;
  assign LevelGateway_29_1_clk = clk;
  assign LevelGateway_29_1_reset = reset;
  assign LevelGateway_29_1_io_interrupt = io_interrupts_29;
  assign LevelGateway_29_1_io_plic_ready = PLIC_1_io_devices_29_ready;
  assign LevelGateway_29_1_io_plic_complete = PLIC_1_io_devices_29_complete;
  assign LevelGateway_30_1_clk = clk;
  assign LevelGateway_30_1_reset = reset;
  assign LevelGateway_30_1_io_interrupt = io_interrupts_30;
  assign LevelGateway_30_1_io_plic_ready = PLIC_1_io_devices_30_ready;
  assign LevelGateway_30_1_io_plic_complete = PLIC_1_io_devices_30_complete;
  assign DebugModule_1_clk = clk;
  assign DebugModule_1_reset = reset;
  assign DebugModule_1_io_db_req_valid = io_debugBus_req_valid;
  assign DebugModule_1_io_db_req_bits_addr = io_debugBus_req_bits_addr;
  assign DebugModule_1_io_db_req_bits_op = io_debugBus_req_bits_op;
  assign DebugModule_1_io_db_req_bits_data = io_debugBus_req_bits_data;
  assign DebugModule_1_io_db_resp_ready = io_debugBus_resp_ready;
  assign DebugModule_1_io_tl_acquire_valid = TileLinkRecursiveInterconnect_2_io_out_0_acquire_valid;
  assign DebugModule_1_io_tl_acquire_bits_addr_block = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_block;
  assign DebugModule_1_io_tl_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_client_xact_id;
  assign DebugModule_1_io_tl_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_addr_beat;
  assign DebugModule_1_io_tl_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_is_builtin_type;
  assign DebugModule_1_io_tl_acquire_bits_a_type = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_a_type;
  assign DebugModule_1_io_tl_acquire_bits_union = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_union;
  assign DebugModule_1_io_tl_acquire_bits_data = TileLinkRecursiveInterconnect_2_io_out_0_acquire_bits_data;
  assign DebugModule_1_io_tl_grant_ready = TileLinkRecursiveInterconnect_2_io_out_0_grant_ready;
  assign PRCI_1_clk = clk;
  assign PRCI_1_reset = reset;
  assign PRCI_1_io_interrupts_0_meip = PLIC_1_io_harts_0;
  assign PRCI_1_io_interrupts_0_seip = GEN_1;
  assign PRCI_1_io_interrupts_0_debug = DebugModule_1_io_debugInterrupts_0;
  assign PRCI_1_io_tl_acquire_valid = TileLinkRecursiveInterconnect_2_io_out_3_acquire_valid;
  assign PRCI_1_io_tl_acquire_bits_addr_block = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_block;
  assign PRCI_1_io_tl_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_client_xact_id;
  assign PRCI_1_io_tl_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_addr_beat;
  assign PRCI_1_io_tl_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_is_builtin_type;
  assign PRCI_1_io_tl_acquire_bits_a_type = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_a_type;
  assign PRCI_1_io_tl_acquire_bits_union = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_union;
  assign PRCI_1_io_tl_acquire_bits_data = TileLinkRecursiveInterconnect_2_io_out_3_acquire_bits_data;
  assign PRCI_1_io_tl_grant_ready = TileLinkRecursiveInterconnect_2_io_out_3_grant_ready;
  assign PRCI_1_io_rtcTick = T_10391;
  assign T_10391 = T_10389 == 7'h63;
  assign T_10393 = T_10389 + 7'h1;
  assign T_10394 = T_10393[6:0];
  assign GEN_0 = T_10391 ? 7'h0 : T_10394;
  assign ROMSlave_1_clk = clk;
  assign ROMSlave_1_reset = reset;
  assign ROMSlave_1_io_acquire_valid = TileLinkRecursiveInterconnect_2_io_out_1_acquire_valid;
  assign ROMSlave_1_io_acquire_bits_addr_block = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_block;
  assign ROMSlave_1_io_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_client_xact_id;
  assign ROMSlave_1_io_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_addr_beat;
  assign ROMSlave_1_io_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_is_builtin_type;
  assign ROMSlave_1_io_acquire_bits_a_type = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_a_type;
  assign ROMSlave_1_io_acquire_bits_union = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_union;
  assign ROMSlave_1_io_acquire_bits_data = TileLinkRecursiveInterconnect_2_io_out_1_acquire_bits_data;
  assign ROMSlave_1_io_grant_ready = TileLinkRecursiveInterconnect_2_io_out_1_grant_ready;
  assign NastiIOTileLinkIOConverter_1_1_clk = clk;
  assign NastiIOTileLinkIOConverter_1_1_reset = reset;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_valid = TileLinkRecursiveInterconnect_2_io_out_4_acquire_valid;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_block = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_block;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_client_xact_id;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_addr_beat;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_is_builtin_type;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_a_type = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_a_type;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_union = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_union;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_acquire_bits_data = TileLinkRecursiveInterconnect_2_io_out_4_acquire_bits_data;
  assign NastiIOTileLinkIOConverter_1_1_io_tl_grant_ready = TileLinkRecursiveInterconnect_2_io_out_4_grant_ready;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_aw_ready = Queue_19_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_w_ready = Queue_20_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_b_valid = Queue_22_1_io_deq_valid;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_resp = Queue_22_1_io_deq_bits_resp;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_id = Queue_22_1_io_deq_bits_id;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_b_bits_user = Queue_22_1_io_deq_bits_user;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_ar_ready = Queue_18_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_valid = Queue_21_1_io_deq_valid;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_resp = Queue_21_1_io_deq_bits_resp;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_data = Queue_21_1_io_deq_bits_data;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_last = Queue_21_1_io_deq_bits_last;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_id = Queue_21_1_io_deq_bits_id;
  assign NastiIOTileLinkIOConverter_1_1_io_nasti_r_bits_user = Queue_21_1_io_deq_bits_user;
  assign Queue_18_1_clk = clk;
  assign Queue_18_1_reset = reset;
  assign Queue_18_1_io_enq_valid = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_valid;
  assign Queue_18_1_io_enq_bits_addr = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_addr;
  assign Queue_18_1_io_enq_bits_len = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_len;
  assign Queue_18_1_io_enq_bits_size = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_size;
  assign Queue_18_1_io_enq_bits_burst = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_burst;
  assign Queue_18_1_io_enq_bits_lock = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_lock;
  assign Queue_18_1_io_enq_bits_cache = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_cache;
  assign Queue_18_1_io_enq_bits_prot = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_prot;
  assign Queue_18_1_io_enq_bits_qos = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_qos;
  assign Queue_18_1_io_enq_bits_region = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_region;
  assign Queue_18_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_id;
  assign Queue_18_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_1_io_nasti_ar_bits_user;
  assign Queue_18_1_io_deq_ready = io_mmio_axi_0_ar_ready;
  assign Queue_19_1_clk = clk;
  assign Queue_19_1_reset = reset;
  assign Queue_19_1_io_enq_valid = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_valid;
  assign Queue_19_1_io_enq_bits_addr = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_addr;
  assign Queue_19_1_io_enq_bits_len = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_len;
  assign Queue_19_1_io_enq_bits_size = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_size;
  assign Queue_19_1_io_enq_bits_burst = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_burst;
  assign Queue_19_1_io_enq_bits_lock = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_lock;
  assign Queue_19_1_io_enq_bits_cache = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_cache;
  assign Queue_19_1_io_enq_bits_prot = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_prot;
  assign Queue_19_1_io_enq_bits_qos = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_qos;
  assign Queue_19_1_io_enq_bits_region = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_region;
  assign Queue_19_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_id;
  assign Queue_19_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_1_io_nasti_aw_bits_user;
  assign Queue_19_1_io_deq_ready = io_mmio_axi_0_aw_ready;
  assign Queue_20_1_clk = clk;
  assign Queue_20_1_reset = reset;
  assign Queue_20_1_io_enq_valid = NastiIOTileLinkIOConverter_1_1_io_nasti_w_valid;
  assign Queue_20_1_io_enq_bits_data = NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_data;
  assign Queue_20_1_io_enq_bits_last = NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_last;
  assign Queue_20_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_id;
  assign Queue_20_1_io_enq_bits_strb = NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_strb;
  assign Queue_20_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_1_io_nasti_w_bits_user;
  assign Queue_20_1_io_deq_ready = io_mmio_axi_0_w_ready;
  assign Queue_21_1_clk = clk;
  assign Queue_21_1_reset = reset;
  assign Queue_21_1_io_enq_valid = io_mmio_axi_0_r_valid;
  assign Queue_21_1_io_enq_bits_resp = io_mmio_axi_0_r_bits_resp;
  assign Queue_21_1_io_enq_bits_data = io_mmio_axi_0_r_bits_data;
  assign Queue_21_1_io_enq_bits_last = io_mmio_axi_0_r_bits_last;
  assign Queue_21_1_io_enq_bits_id = io_mmio_axi_0_r_bits_id;
  assign Queue_21_1_io_enq_bits_user = io_mmio_axi_0_r_bits_user;
  assign Queue_21_1_io_deq_ready = NastiIOTileLinkIOConverter_1_1_io_nasti_r_ready;
  assign Queue_22_1_clk = clk;
  assign Queue_22_1_reset = reset;
  assign Queue_22_1_io_enq_valid = io_mmio_axi_0_b_valid;
  assign Queue_22_1_io_enq_bits_resp = io_mmio_axi_0_b_bits_resp;
  assign Queue_22_1_io_enq_bits_id = io_mmio_axi_0_b_bits_id;
  assign Queue_22_1_io_enq_bits_user = io_mmio_axi_0_b_bits_user;
  assign Queue_22_1_io_deq_ready = NastiIOTileLinkIOConverter_1_1_io_nasti_b_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_2 = {1{$random}};
  T_10389 = GEN_2[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_3 = {1{$random}};
  GEN_1 = GEN_3[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_10389 <= 7'h0;
    end else begin
      if(T_10391) begin
        T_10389 <= 7'h0;
      end else begin
        T_10389 <= T_10394;
      end
    end
  end
endmodule
