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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_OUTER_MEMORY_SYSTEM(
  input   clk,
  input   reset,
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
  input   io_incoherent_0,
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
  input   io_mmio_acquire_ready,
  output  io_mmio_acquire_valid,
  output [25:0] io_mmio_acquire_bits_addr_block,
  output [1:0] io_mmio_acquire_bits_client_xact_id,
  output [2:0] io_mmio_acquire_bits_addr_beat,
  output  io_mmio_acquire_bits_is_builtin_type,
  output [2:0] io_mmio_acquire_bits_a_type,
  output [11:0] io_mmio_acquire_bits_union,
  output [63:0] io_mmio_acquire_bits_data,
  output  io_mmio_grant_ready,
  input   io_mmio_grant_valid,
  input  [2:0] io_mmio_grant_bits_addr_beat,
  input  [1:0] io_mmio_grant_bits_client_xact_id,
  input   io_mmio_grant_bits_manager_xact_id,
  input   io_mmio_grant_bits_is_builtin_type,
  input  [3:0] io_mmio_grant_bits_g_type,
  input  [63:0] io_mmio_grant_bits_data
);
  wire  l1tol2net_clk;
  wire  l1tol2net_reset;
  wire  l1tol2net_io_clients_cached_0_acquire_ready;
  wire  l1tol2net_io_clients_cached_0_acquire_valid;
  wire [25:0] l1tol2net_io_clients_cached_0_acquire_bits_addr_block;
  wire  l1tol2net_io_clients_cached_0_acquire_bits_client_xact_id;
  wire [2:0] l1tol2net_io_clients_cached_0_acquire_bits_addr_beat;
  wire  l1tol2net_io_clients_cached_0_acquire_bits_is_builtin_type;
  wire [2:0] l1tol2net_io_clients_cached_0_acquire_bits_a_type;
  wire [11:0] l1tol2net_io_clients_cached_0_acquire_bits_union;
  wire [63:0] l1tol2net_io_clients_cached_0_acquire_bits_data;
  wire  l1tol2net_io_clients_cached_0_probe_ready;
  wire  l1tol2net_io_clients_cached_0_probe_valid;
  wire [25:0] l1tol2net_io_clients_cached_0_probe_bits_addr_block;
  wire [1:0] l1tol2net_io_clients_cached_0_probe_bits_p_type;
  wire  l1tol2net_io_clients_cached_0_release_ready;
  wire  l1tol2net_io_clients_cached_0_release_valid;
  wire [2:0] l1tol2net_io_clients_cached_0_release_bits_addr_beat;
  wire [25:0] l1tol2net_io_clients_cached_0_release_bits_addr_block;
  wire  l1tol2net_io_clients_cached_0_release_bits_client_xact_id;
  wire  l1tol2net_io_clients_cached_0_release_bits_voluntary;
  wire [2:0] l1tol2net_io_clients_cached_0_release_bits_r_type;
  wire [63:0] l1tol2net_io_clients_cached_0_release_bits_data;
  wire  l1tol2net_io_clients_cached_0_grant_ready;
  wire  l1tol2net_io_clients_cached_0_grant_valid;
  wire [2:0] l1tol2net_io_clients_cached_0_grant_bits_addr_beat;
  wire  l1tol2net_io_clients_cached_0_grant_bits_client_xact_id;
  wire [1:0] l1tol2net_io_clients_cached_0_grant_bits_manager_xact_id;
  wire  l1tol2net_io_clients_cached_0_grant_bits_is_builtin_type;
  wire [3:0] l1tol2net_io_clients_cached_0_grant_bits_g_type;
  wire [63:0] l1tol2net_io_clients_cached_0_grant_bits_data;
  wire  l1tol2net_io_clients_cached_0_grant_bits_manager_id;
  wire  l1tol2net_io_clients_cached_0_finish_ready;
  wire  l1tol2net_io_clients_cached_0_finish_valid;
  wire [1:0] l1tol2net_io_clients_cached_0_finish_bits_manager_xact_id;
  wire  l1tol2net_io_clients_cached_0_finish_bits_manager_id;
  wire  l1tol2net_io_clients_uncached_0_acquire_ready;
  wire  l1tol2net_io_clients_uncached_0_acquire_valid;
  wire [25:0] l1tol2net_io_clients_uncached_0_acquire_bits_addr_block;
  wire  l1tol2net_io_clients_uncached_0_acquire_bits_client_xact_id;
  wire [2:0] l1tol2net_io_clients_uncached_0_acquire_bits_addr_beat;
  wire  l1tol2net_io_clients_uncached_0_acquire_bits_is_builtin_type;
  wire [2:0] l1tol2net_io_clients_uncached_0_acquire_bits_a_type;
  wire [11:0] l1tol2net_io_clients_uncached_0_acquire_bits_union;
  wire [63:0] l1tol2net_io_clients_uncached_0_acquire_bits_data;
  wire  l1tol2net_io_clients_uncached_0_grant_ready;
  wire  l1tol2net_io_clients_uncached_0_grant_valid;
  wire [2:0] l1tol2net_io_clients_uncached_0_grant_bits_addr_beat;
  wire  l1tol2net_io_clients_uncached_0_grant_bits_client_xact_id;
  wire [1:0] l1tol2net_io_clients_uncached_0_grant_bits_manager_xact_id;
  wire  l1tol2net_io_clients_uncached_0_grant_bits_is_builtin_type;
  wire [3:0] l1tol2net_io_clients_uncached_0_grant_bits_g_type;
  wire [63:0] l1tol2net_io_clients_uncached_0_grant_bits_data;
  wire  l1tol2net_io_managers_0_acquire_ready;
  wire  l1tol2net_io_managers_0_acquire_valid;
  wire [25:0] l1tol2net_io_managers_0_acquire_bits_addr_block;
  wire  l1tol2net_io_managers_0_acquire_bits_client_xact_id;
  wire [2:0] l1tol2net_io_managers_0_acquire_bits_addr_beat;
  wire  l1tol2net_io_managers_0_acquire_bits_is_builtin_type;
  wire [2:0] l1tol2net_io_managers_0_acquire_bits_a_type;
  wire [11:0] l1tol2net_io_managers_0_acquire_bits_union;
  wire [63:0] l1tol2net_io_managers_0_acquire_bits_data;
  wire  l1tol2net_io_managers_0_acquire_bits_client_id;
  wire  l1tol2net_io_managers_0_grant_ready;
  wire  l1tol2net_io_managers_0_grant_valid;
  wire [2:0] l1tol2net_io_managers_0_grant_bits_addr_beat;
  wire  l1tol2net_io_managers_0_grant_bits_client_xact_id;
  wire [1:0] l1tol2net_io_managers_0_grant_bits_manager_xact_id;
  wire  l1tol2net_io_managers_0_grant_bits_is_builtin_type;
  wire [3:0] l1tol2net_io_managers_0_grant_bits_g_type;
  wire [63:0] l1tol2net_io_managers_0_grant_bits_data;
  wire  l1tol2net_io_managers_0_grant_bits_client_id;
  wire  l1tol2net_io_managers_0_finish_ready;
  wire  l1tol2net_io_managers_0_finish_valid;
  wire [1:0] l1tol2net_io_managers_0_finish_bits_manager_xact_id;
  wire  l1tol2net_io_managers_0_probe_ready;
  wire  l1tol2net_io_managers_0_probe_valid;
  wire [25:0] l1tol2net_io_managers_0_probe_bits_addr_block;
  wire [1:0] l1tol2net_io_managers_0_probe_bits_p_type;
  wire  l1tol2net_io_managers_0_probe_bits_client_id;
  wire  l1tol2net_io_managers_0_release_ready;
  wire  l1tol2net_io_managers_0_release_valid;
  wire [2:0] l1tol2net_io_managers_0_release_bits_addr_beat;
  wire [25:0] l1tol2net_io_managers_0_release_bits_addr_block;
  wire  l1tol2net_io_managers_0_release_bits_client_xact_id;
  wire  l1tol2net_io_managers_0_release_bits_voluntary;
  wire [2:0] l1tol2net_io_managers_0_release_bits_r_type;
  wire [63:0] l1tol2net_io_managers_0_release_bits_data;
  wire  l1tol2net_io_managers_0_release_bits_client_id;
  wire  l1tol2net_io_managers_1_acquire_ready;
  wire  l1tol2net_io_managers_1_acquire_valid;
  wire [25:0] l1tol2net_io_managers_1_acquire_bits_addr_block;
  wire  l1tol2net_io_managers_1_acquire_bits_client_xact_id;
  wire [2:0] l1tol2net_io_managers_1_acquire_bits_addr_beat;
  wire  l1tol2net_io_managers_1_acquire_bits_is_builtin_type;
  wire [2:0] l1tol2net_io_managers_1_acquire_bits_a_type;
  wire [11:0] l1tol2net_io_managers_1_acquire_bits_union;
  wire [63:0] l1tol2net_io_managers_1_acquire_bits_data;
  wire  l1tol2net_io_managers_1_acquire_bits_client_id;
  wire  l1tol2net_io_managers_1_grant_ready;
  wire  l1tol2net_io_managers_1_grant_valid;
  wire [2:0] l1tol2net_io_managers_1_grant_bits_addr_beat;
  wire  l1tol2net_io_managers_1_grant_bits_client_xact_id;
  wire [1:0] l1tol2net_io_managers_1_grant_bits_manager_xact_id;
  wire  l1tol2net_io_managers_1_grant_bits_is_builtin_type;
  wire [3:0] l1tol2net_io_managers_1_grant_bits_g_type;
  wire [63:0] l1tol2net_io_managers_1_grant_bits_data;
  wire  l1tol2net_io_managers_1_grant_bits_client_id;
  wire  l1tol2net_io_managers_1_finish_ready;
  wire  l1tol2net_io_managers_1_finish_valid;
  wire [1:0] l1tol2net_io_managers_1_finish_bits_manager_xact_id;
  wire  l1tol2net_io_managers_1_probe_ready;
  wire  l1tol2net_io_managers_1_probe_valid;
  wire [25:0] l1tol2net_io_managers_1_probe_bits_addr_block;
  wire [1:0] l1tol2net_io_managers_1_probe_bits_p_type;
  wire  l1tol2net_io_managers_1_probe_bits_client_id;
  wire  l1tol2net_io_managers_1_release_ready;
  wire  l1tol2net_io_managers_1_release_valid;
  wire [2:0] l1tol2net_io_managers_1_release_bits_addr_beat;
  wire [25:0] l1tol2net_io_managers_1_release_bits_addr_block;
  wire  l1tol2net_io_managers_1_release_bits_client_xact_id;
  wire  l1tol2net_io_managers_1_release_bits_voluntary;
  wire [2:0] l1tol2net_io_managers_1_release_bits_r_type;
  wire [63:0] l1tol2net_io_managers_1_release_bits_data;
  wire  l1tol2net_io_managers_1_release_bits_client_id;
  wire  ManagerToClientStatelessBridge_1_clk;
  wire  ManagerToClientStatelessBridge_1_reset;
  wire  ManagerToClientStatelessBridge_1_io_inner_acquire_ready;
  wire  ManagerToClientStatelessBridge_1_io_inner_acquire_valid;
  wire [25:0] ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_block;
  wire  ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_xact_id;
  wire [2:0] ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_beat;
  wire  ManagerToClientStatelessBridge_1_io_inner_acquire_bits_is_builtin_type;
  wire [2:0] ManagerToClientStatelessBridge_1_io_inner_acquire_bits_a_type;
  wire [11:0] ManagerToClientStatelessBridge_1_io_inner_acquire_bits_union;
  wire [63:0] ManagerToClientStatelessBridge_1_io_inner_acquire_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_grant_ready;
  wire  ManagerToClientStatelessBridge_1_io_inner_grant_valid;
  wire [2:0] ManagerToClientStatelessBridge_1_io_inner_grant_bits_addr_beat;
  wire  ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_xact_id;
  wire [1:0] ManagerToClientStatelessBridge_1_io_inner_grant_bits_manager_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_grant_bits_is_builtin_type;
  wire [3:0] ManagerToClientStatelessBridge_1_io_inner_grant_bits_g_type;
  wire [63:0] ManagerToClientStatelessBridge_1_io_inner_grant_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_finish_ready;
  wire  ManagerToClientStatelessBridge_1_io_inner_finish_valid;
  wire [1:0] ManagerToClientStatelessBridge_1_io_inner_finish_bits_manager_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_probe_ready;
  wire  ManagerToClientStatelessBridge_1_io_inner_probe_valid;
  wire [25:0] ManagerToClientStatelessBridge_1_io_inner_probe_bits_addr_block;
  wire [1:0] ManagerToClientStatelessBridge_1_io_inner_probe_bits_p_type;
  wire  ManagerToClientStatelessBridge_1_io_inner_probe_bits_client_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_release_ready;
  wire  ManagerToClientStatelessBridge_1_io_inner_release_valid;
  wire [2:0] ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_beat;
  wire [25:0] ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_block;
  wire  ManagerToClientStatelessBridge_1_io_inner_release_bits_client_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_inner_release_bits_voluntary;
  wire [2:0] ManagerToClientStatelessBridge_1_io_inner_release_bits_r_type;
  wire [63:0] ManagerToClientStatelessBridge_1_io_inner_release_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_inner_release_bits_client_id;
  wire  ManagerToClientStatelessBridge_1_io_incoherent_0;
  wire  ManagerToClientStatelessBridge_1_io_outer_acquire_ready;
  wire  ManagerToClientStatelessBridge_1_io_outer_acquire_valid;
  wire [25:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_block;
  wire [1:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_client_xact_id;
  wire [2:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_beat;
  wire  ManagerToClientStatelessBridge_1_io_outer_acquire_bits_is_builtin_type;
  wire [2:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_a_type;
  wire [11:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_union;
  wire [63:0] ManagerToClientStatelessBridge_1_io_outer_acquire_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_outer_probe_ready;
  wire  ManagerToClientStatelessBridge_1_io_outer_probe_valid;
  wire [25:0] ManagerToClientStatelessBridge_1_io_outer_probe_bits_addr_block;
  wire [1:0] ManagerToClientStatelessBridge_1_io_outer_probe_bits_p_type;
  wire  ManagerToClientStatelessBridge_1_io_outer_release_ready;
  wire  ManagerToClientStatelessBridge_1_io_outer_release_valid;
  wire [2:0] ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_beat;
  wire [25:0] ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_block;
  wire [1:0] ManagerToClientStatelessBridge_1_io_outer_release_bits_client_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_outer_release_bits_voluntary;
  wire [2:0] ManagerToClientStatelessBridge_1_io_outer_release_bits_r_type;
  wire [63:0] ManagerToClientStatelessBridge_1_io_outer_release_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_outer_grant_ready;
  wire  ManagerToClientStatelessBridge_1_io_outer_grant_valid;
  wire [2:0] ManagerToClientStatelessBridge_1_io_outer_grant_bits_addr_beat;
  wire [1:0] ManagerToClientStatelessBridge_1_io_outer_grant_bits_client_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_outer_grant_bits_is_builtin_type;
  wire [3:0] ManagerToClientStatelessBridge_1_io_outer_grant_bits_g_type;
  wire [63:0] ManagerToClientStatelessBridge_1_io_outer_grant_bits_data;
  wire  ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_id;
  wire  ManagerToClientStatelessBridge_1_io_outer_finish_ready;
  wire  ManagerToClientStatelessBridge_1_io_outer_finish_valid;
  wire  ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_xact_id;
  wire  ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_id;
  wire  mmioManager_clk;
  wire  mmioManager_reset;
  wire  mmioManager_io_inner_acquire_ready;
  wire  mmioManager_io_inner_acquire_valid;
  wire [25:0] mmioManager_io_inner_acquire_bits_addr_block;
  wire  mmioManager_io_inner_acquire_bits_client_xact_id;
  wire [2:0] mmioManager_io_inner_acquire_bits_addr_beat;
  wire  mmioManager_io_inner_acquire_bits_is_builtin_type;
  wire [2:0] mmioManager_io_inner_acquire_bits_a_type;
  wire [11:0] mmioManager_io_inner_acquire_bits_union;
  wire [63:0] mmioManager_io_inner_acquire_bits_data;
  wire  mmioManager_io_inner_acquire_bits_client_id;
  wire  mmioManager_io_inner_grant_ready;
  wire  mmioManager_io_inner_grant_valid;
  wire [2:0] mmioManager_io_inner_grant_bits_addr_beat;
  wire  mmioManager_io_inner_grant_bits_client_xact_id;
  wire [1:0] mmioManager_io_inner_grant_bits_manager_xact_id;
  wire  mmioManager_io_inner_grant_bits_is_builtin_type;
  wire [3:0] mmioManager_io_inner_grant_bits_g_type;
  wire [63:0] mmioManager_io_inner_grant_bits_data;
  wire  mmioManager_io_inner_grant_bits_client_id;
  wire  mmioManager_io_inner_finish_ready;
  wire  mmioManager_io_inner_finish_valid;
  wire [1:0] mmioManager_io_inner_finish_bits_manager_xact_id;
  wire  mmioManager_io_inner_probe_ready;
  wire  mmioManager_io_inner_probe_valid;
  wire [25:0] mmioManager_io_inner_probe_bits_addr_block;
  wire [1:0] mmioManager_io_inner_probe_bits_p_type;
  wire  mmioManager_io_inner_probe_bits_client_id;
  wire  mmioManager_io_inner_release_ready;
  wire  mmioManager_io_inner_release_valid;
  wire [2:0] mmioManager_io_inner_release_bits_addr_beat;
  wire [25:0] mmioManager_io_inner_release_bits_addr_block;
  wire  mmioManager_io_inner_release_bits_client_xact_id;
  wire  mmioManager_io_inner_release_bits_voluntary;
  wire [2:0] mmioManager_io_inner_release_bits_r_type;
  wire [63:0] mmioManager_io_inner_release_bits_data;
  wire  mmioManager_io_inner_release_bits_client_id;
  wire  mmioManager_io_incoherent_0;
  wire  mmioManager_io_outer_acquire_ready;
  wire  mmioManager_io_outer_acquire_valid;
  wire [25:0] mmioManager_io_outer_acquire_bits_addr_block;
  wire [1:0] mmioManager_io_outer_acquire_bits_client_xact_id;
  wire [2:0] mmioManager_io_outer_acquire_bits_addr_beat;
  wire  mmioManager_io_outer_acquire_bits_is_builtin_type;
  wire [2:0] mmioManager_io_outer_acquire_bits_a_type;
  wire [11:0] mmioManager_io_outer_acquire_bits_union;
  wire [63:0] mmioManager_io_outer_acquire_bits_data;
  wire  mmioManager_io_outer_grant_ready;
  wire  mmioManager_io_outer_grant_valid;
  wire [2:0] mmioManager_io_outer_grant_bits_addr_beat;
  wire [1:0] mmioManager_io_outer_grant_bits_client_xact_id;
  wire  mmioManager_io_outer_grant_bits_manager_xact_id;
  wire  mmioManager_io_outer_grant_bits_is_builtin_type;
  wire [3:0] mmioManager_io_outer_grant_bits_g_type;
  wire [63:0] mmioManager_io_outer_grant_bits_data;
  wire  Queue_8_1_clk;
  wire  Queue_8_1_reset;
  wire  Queue_8_1_io_enq_ready;
  wire  Queue_8_1_io_enq_valid;
  wire [25:0] Queue_8_1_io_enq_bits_addr_block;
  wire [1:0] Queue_8_1_io_enq_bits_client_xact_id;
  wire [2:0] Queue_8_1_io_enq_bits_addr_beat;
  wire  Queue_8_1_io_enq_bits_is_builtin_type;
  wire [2:0] Queue_8_1_io_enq_bits_a_type;
  wire [11:0] Queue_8_1_io_enq_bits_union;
  wire [63:0] Queue_8_1_io_enq_bits_data;
  wire  Queue_8_1_io_deq_ready;
  wire  Queue_8_1_io_deq_valid;
  wire [25:0] Queue_8_1_io_deq_bits_addr_block;
  wire [1:0] Queue_8_1_io_deq_bits_client_xact_id;
  wire [2:0] Queue_8_1_io_deq_bits_addr_beat;
  wire  Queue_8_1_io_deq_bits_is_builtin_type;
  wire [2:0] Queue_8_1_io_deq_bits_a_type;
  wire [11:0] Queue_8_1_io_deq_bits_union;
  wire [63:0] Queue_8_1_io_deq_bits_data;
  wire  Queue_8_1_io_count;
  wire  Queue_9_1_clk;
  wire  Queue_9_1_reset;
  wire  Queue_9_1_io_enq_ready;
  wire  Queue_9_1_io_enq_valid;
  wire [2:0] Queue_9_1_io_enq_bits_addr_beat;
  wire [1:0] Queue_9_1_io_enq_bits_client_xact_id;
  wire  Queue_9_1_io_enq_bits_manager_xact_id;
  wire  Queue_9_1_io_enq_bits_is_builtin_type;
  wire [3:0] Queue_9_1_io_enq_bits_g_type;
  wire [63:0] Queue_9_1_io_enq_bits_data;
  wire  Queue_9_1_io_deq_ready;
  wire  Queue_9_1_io_deq_valid;
  wire [2:0] Queue_9_1_io_deq_bits_addr_beat;
  wire [1:0] Queue_9_1_io_deq_bits_client_xact_id;
  wire  Queue_9_1_io_deq_bits_manager_xact_id;
  wire  Queue_9_1_io_deq_bits_is_builtin_type;
  wire [3:0] Queue_9_1_io_deq_bits_g_type;
  wire [63:0] Queue_9_1_io_deq_bits_data;
  wire  Queue_9_1_io_count;
  wire  mem_ic_clk;
  wire  mem_ic_reset;
  wire  mem_ic_io_in_0_acquire_ready;
  wire  mem_ic_io_in_0_acquire_valid;
  wire [25:0] mem_ic_io_in_0_acquire_bits_addr_block;
  wire [1:0] mem_ic_io_in_0_acquire_bits_client_xact_id;
  wire [2:0] mem_ic_io_in_0_acquire_bits_addr_beat;
  wire  mem_ic_io_in_0_acquire_bits_is_builtin_type;
  wire [2:0] mem_ic_io_in_0_acquire_bits_a_type;
  wire [11:0] mem_ic_io_in_0_acquire_bits_union;
  wire [63:0] mem_ic_io_in_0_acquire_bits_data;
  wire  mem_ic_io_in_0_grant_ready;
  wire  mem_ic_io_in_0_grant_valid;
  wire [2:0] mem_ic_io_in_0_grant_bits_addr_beat;
  wire [1:0] mem_ic_io_in_0_grant_bits_client_xact_id;
  wire  mem_ic_io_in_0_grant_bits_manager_xact_id;
  wire  mem_ic_io_in_0_grant_bits_is_builtin_type;
  wire [3:0] mem_ic_io_in_0_grant_bits_g_type;
  wire [63:0] mem_ic_io_in_0_grant_bits_data;
  wire  mem_ic_io_out_0_acquire_ready;
  wire  mem_ic_io_out_0_acquire_valid;
  wire [25:0] mem_ic_io_out_0_acquire_bits_addr_block;
  wire [1:0] mem_ic_io_out_0_acquire_bits_client_xact_id;
  wire [2:0] mem_ic_io_out_0_acquire_bits_addr_beat;
  wire  mem_ic_io_out_0_acquire_bits_is_builtin_type;
  wire [2:0] mem_ic_io_out_0_acquire_bits_a_type;
  wire [11:0] mem_ic_io_out_0_acquire_bits_union;
  wire [63:0] mem_ic_io_out_0_acquire_bits_data;
  wire  mem_ic_io_out_0_grant_ready;
  wire  mem_ic_io_out_0_grant_valid;
  wire [2:0] mem_ic_io_out_0_grant_bits_addr_beat;
  wire [1:0] mem_ic_io_out_0_grant_bits_client_xact_id;
  wire  mem_ic_io_out_0_grant_bits_manager_xact_id;
  wire  mem_ic_io_out_0_grant_bits_is_builtin_type;
  wire [3:0] mem_ic_io_out_0_grant_bits_g_type;
  wire [63:0] mem_ic_io_out_0_grant_bits_data;
  wire  ClientTileLinkIOUnwrapper_1_clk;
  wire  ClientTileLinkIOUnwrapper_1_reset;
  wire  ClientTileLinkIOUnwrapper_1_io_in_acquire_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_in_acquire_valid;
  wire [25:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_block;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_client_xact_id;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_beat;
  wire  ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_is_builtin_type;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_a_type;
  wire [11:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_union;
  wire [63:0] ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_data;
  wire  ClientTileLinkIOUnwrapper_1_io_in_probe_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_in_probe_valid;
  wire [25:0] ClientTileLinkIOUnwrapper_1_io_in_probe_bits_addr_block;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_in_probe_bits_p_type;
  wire  ClientTileLinkIOUnwrapper_1_io_in_release_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_in_release_valid;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_beat;
  wire [25:0] ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_block;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_in_release_bits_client_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_in_release_bits_voluntary;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_in_release_bits_r_type;
  wire [63:0] ClientTileLinkIOUnwrapper_1_io_in_release_bits_data;
  wire  ClientTileLinkIOUnwrapper_1_io_in_grant_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_in_grant_valid;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_in_grant_bits_addr_beat;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_in_grant_bits_client_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_in_grant_bits_is_builtin_type;
  wire [3:0] ClientTileLinkIOUnwrapper_1_io_in_grant_bits_g_type;
  wire [63:0] ClientTileLinkIOUnwrapper_1_io_in_grant_bits_data;
  wire  ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_id;
  wire  ClientTileLinkIOUnwrapper_1_io_in_finish_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_in_finish_valid;
  wire  ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_id;
  wire  ClientTileLinkIOUnwrapper_1_io_out_acquire_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_out_acquire_valid;
  wire [25:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_block;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_client_xact_id;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_beat;
  wire  ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_is_builtin_type;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_a_type;
  wire [11:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_union;
  wire [63:0] ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_data;
  wire  ClientTileLinkIOUnwrapper_1_io_out_grant_ready;
  wire  ClientTileLinkIOUnwrapper_1_io_out_grant_valid;
  wire [2:0] ClientTileLinkIOUnwrapper_1_io_out_grant_bits_addr_beat;
  wire [1:0] ClientTileLinkIOUnwrapper_1_io_out_grant_bits_client_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_out_grant_bits_manager_xact_id;
  wire  ClientTileLinkIOUnwrapper_1_io_out_grant_bits_is_builtin_type;
  wire [3:0] ClientTileLinkIOUnwrapper_1_io_out_grant_bits_g_type;
  wire [63:0] ClientTileLinkIOUnwrapper_1_io_out_grant_bits_data;
  wire  ClientTileLinkEnqueuer_1_clk;
  wire  ClientTileLinkEnqueuer_1_reset;
  wire  ClientTileLinkEnqueuer_1_io_inner_acquire_ready;
  wire  ClientTileLinkEnqueuer_1_io_inner_acquire_valid;
  wire [25:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_client_xact_id;
  wire [2:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_beat;
  wire  ClientTileLinkEnqueuer_1_io_inner_acquire_bits_is_builtin_type;
  wire [2:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_a_type;
  wire [11:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_union;
  wire [63:0] ClientTileLinkEnqueuer_1_io_inner_acquire_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_inner_probe_ready;
  wire  ClientTileLinkEnqueuer_1_io_inner_probe_valid;
  wire [25:0] ClientTileLinkEnqueuer_1_io_inner_probe_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_inner_probe_bits_p_type;
  wire  ClientTileLinkEnqueuer_1_io_inner_release_ready;
  wire  ClientTileLinkEnqueuer_1_io_inner_release_valid;
  wire [2:0] ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_beat;
  wire [25:0] ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_inner_release_bits_client_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_inner_release_bits_voluntary;
  wire [2:0] ClientTileLinkEnqueuer_1_io_inner_release_bits_r_type;
  wire [63:0] ClientTileLinkEnqueuer_1_io_inner_release_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_inner_grant_ready;
  wire  ClientTileLinkEnqueuer_1_io_inner_grant_valid;
  wire [2:0] ClientTileLinkEnqueuer_1_io_inner_grant_bits_addr_beat;
  wire [1:0] ClientTileLinkEnqueuer_1_io_inner_grant_bits_client_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_inner_grant_bits_is_builtin_type;
  wire [3:0] ClientTileLinkEnqueuer_1_io_inner_grant_bits_g_type;
  wire [63:0] ClientTileLinkEnqueuer_1_io_inner_grant_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_id;
  wire  ClientTileLinkEnqueuer_1_io_inner_finish_ready;
  wire  ClientTileLinkEnqueuer_1_io_inner_finish_valid;
  wire  ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_acquire_ready;
  wire  ClientTileLinkEnqueuer_1_io_outer_acquire_valid;
  wire [25:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_client_xact_id;
  wire [2:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_beat;
  wire  ClientTileLinkEnqueuer_1_io_outer_acquire_bits_is_builtin_type;
  wire [2:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_a_type;
  wire [11:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_union;
  wire [63:0] ClientTileLinkEnqueuer_1_io_outer_acquire_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_outer_probe_ready;
  wire  ClientTileLinkEnqueuer_1_io_outer_probe_valid;
  wire [25:0] ClientTileLinkEnqueuer_1_io_outer_probe_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_outer_probe_bits_p_type;
  wire  ClientTileLinkEnqueuer_1_io_outer_release_ready;
  wire  ClientTileLinkEnqueuer_1_io_outer_release_valid;
  wire [2:0] ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_beat;
  wire [25:0] ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_block;
  wire [1:0] ClientTileLinkEnqueuer_1_io_outer_release_bits_client_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_release_bits_voluntary;
  wire [2:0] ClientTileLinkEnqueuer_1_io_outer_release_bits_r_type;
  wire [63:0] ClientTileLinkEnqueuer_1_io_outer_release_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_outer_grant_ready;
  wire  ClientTileLinkEnqueuer_1_io_outer_grant_valid;
  wire [2:0] ClientTileLinkEnqueuer_1_io_outer_grant_bits_addr_beat;
  wire [1:0] ClientTileLinkEnqueuer_1_io_outer_grant_bits_client_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_grant_bits_is_builtin_type;
  wire [3:0] ClientTileLinkEnqueuer_1_io_outer_grant_bits_g_type;
  wire [63:0] ClientTileLinkEnqueuer_1_io_outer_grant_bits_data;
  wire  ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_finish_ready;
  wire  ClientTileLinkEnqueuer_1_io_outer_finish_valid;
  wire  ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_xact_id;
  wire  ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_id;
  wire  NastiIOTileLinkIOConverter_1_clk;
  wire  NastiIOTileLinkIOConverter_1_reset;
  wire  NastiIOTileLinkIOConverter_1_io_tl_acquire_ready;
  wire  NastiIOTileLinkIOConverter_1_io_tl_acquire_valid;
  wire [25:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_block;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_client_xact_id;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_beat;
  wire  NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_is_builtin_type;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_a_type;
  wire [11:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_union;
  wire [63:0] NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_data;
  wire  NastiIOTileLinkIOConverter_1_io_tl_grant_ready;
  wire  NastiIOTileLinkIOConverter_1_io_tl_grant_valid;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_tl_grant_bits_addr_beat;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_tl_grant_bits_client_xact_id;
  wire  NastiIOTileLinkIOConverter_1_io_tl_grant_bits_manager_xact_id;
  wire  NastiIOTileLinkIOConverter_1_io_tl_grant_bits_is_builtin_type;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_tl_grant_bits_g_type;
  wire [63:0] NastiIOTileLinkIOConverter_1_io_tl_grant_bits_data;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_aw_ready;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_aw_valid;
  wire [31:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_addr;
  wire [7:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_len;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_size;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_burst;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_lock;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_cache;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_prot;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_qos;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_region;
  wire [4:0] NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_id;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_user;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_w_ready;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_w_valid;
  wire [63:0] NastiIOTileLinkIOConverter_1_io_nasti_w_bits_data;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_w_bits_last;
  wire [4:0] NastiIOTileLinkIOConverter_1_io_nasti_w_bits_id;
  wire [7:0] NastiIOTileLinkIOConverter_1_io_nasti_w_bits_strb;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_w_bits_user;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_b_ready;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_b_valid;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_nasti_b_bits_resp;
  wire [4:0] NastiIOTileLinkIOConverter_1_io_nasti_b_bits_id;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_b_bits_user;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_ar_ready;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_ar_valid;
  wire [31:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_addr;
  wire [7:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_len;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_size;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_burst;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_lock;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_cache;
  wire [2:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_prot;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_qos;
  wire [3:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_region;
  wire [4:0] NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_id;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_user;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_r_ready;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_r_valid;
  wire [1:0] NastiIOTileLinkIOConverter_1_io_nasti_r_bits_resp;
  wire [63:0] NastiIOTileLinkIOConverter_1_io_nasti_r_bits_data;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_r_bits_last;
  wire [4:0] NastiIOTileLinkIOConverter_1_io_nasti_r_bits_id;
  wire  NastiIOTileLinkIOConverter_1_io_nasti_r_bits_user;
  wire  Queue_10_1_clk;
  wire  Queue_10_1_reset;
  wire  Queue_10_1_io_enq_ready;
  wire  Queue_10_1_io_enq_valid;
  wire [31:0] Queue_10_1_io_enq_bits_addr;
  wire [7:0] Queue_10_1_io_enq_bits_len;
  wire [2:0] Queue_10_1_io_enq_bits_size;
  wire [1:0] Queue_10_1_io_enq_bits_burst;
  wire  Queue_10_1_io_enq_bits_lock;
  wire [3:0] Queue_10_1_io_enq_bits_cache;
  wire [2:0] Queue_10_1_io_enq_bits_prot;
  wire [3:0] Queue_10_1_io_enq_bits_qos;
  wire [3:0] Queue_10_1_io_enq_bits_region;
  wire [4:0] Queue_10_1_io_enq_bits_id;
  wire  Queue_10_1_io_enq_bits_user;
  wire  Queue_10_1_io_deq_ready;
  wire  Queue_10_1_io_deq_valid;
  wire [31:0] Queue_10_1_io_deq_bits_addr;
  wire [7:0] Queue_10_1_io_deq_bits_len;
  wire [2:0] Queue_10_1_io_deq_bits_size;
  wire [1:0] Queue_10_1_io_deq_bits_burst;
  wire  Queue_10_1_io_deq_bits_lock;
  wire [3:0] Queue_10_1_io_deq_bits_cache;
  wire [2:0] Queue_10_1_io_deq_bits_prot;
  wire [3:0] Queue_10_1_io_deq_bits_qos;
  wire [3:0] Queue_10_1_io_deq_bits_region;
  wire [4:0] Queue_10_1_io_deq_bits_id;
  wire  Queue_10_1_io_deq_bits_user;
  wire  Queue_10_1_io_count;
  wire  Queue_11_1_clk;
  wire  Queue_11_1_reset;
  wire  Queue_11_1_io_enq_ready;
  wire  Queue_11_1_io_enq_valid;
  wire [31:0] Queue_11_1_io_enq_bits_addr;
  wire [7:0] Queue_11_1_io_enq_bits_len;
  wire [2:0] Queue_11_1_io_enq_bits_size;
  wire [1:0] Queue_11_1_io_enq_bits_burst;
  wire  Queue_11_1_io_enq_bits_lock;
  wire [3:0] Queue_11_1_io_enq_bits_cache;
  wire [2:0] Queue_11_1_io_enq_bits_prot;
  wire [3:0] Queue_11_1_io_enq_bits_qos;
  wire [3:0] Queue_11_1_io_enq_bits_region;
  wire [4:0] Queue_11_1_io_enq_bits_id;
  wire  Queue_11_1_io_enq_bits_user;
  wire  Queue_11_1_io_deq_ready;
  wire  Queue_11_1_io_deq_valid;
  wire [31:0] Queue_11_1_io_deq_bits_addr;
  wire [7:0] Queue_11_1_io_deq_bits_len;
  wire [2:0] Queue_11_1_io_deq_bits_size;
  wire [1:0] Queue_11_1_io_deq_bits_burst;
  wire  Queue_11_1_io_deq_bits_lock;
  wire [3:0] Queue_11_1_io_deq_bits_cache;
  wire [2:0] Queue_11_1_io_deq_bits_prot;
  wire [3:0] Queue_11_1_io_deq_bits_qos;
  wire [3:0] Queue_11_1_io_deq_bits_region;
  wire [4:0] Queue_11_1_io_deq_bits_id;
  wire  Queue_11_1_io_deq_bits_user;
  wire  Queue_11_1_io_count;
  wire  Queue_12_1_clk;
  wire  Queue_12_1_reset;
  wire  Queue_12_1_io_enq_ready;
  wire  Queue_12_1_io_enq_valid;
  wire [63:0] Queue_12_1_io_enq_bits_data;
  wire  Queue_12_1_io_enq_bits_last;
  wire [4:0] Queue_12_1_io_enq_bits_id;
  wire [7:0] Queue_12_1_io_enq_bits_strb;
  wire  Queue_12_1_io_enq_bits_user;
  wire  Queue_12_1_io_deq_ready;
  wire  Queue_12_1_io_deq_valid;
  wire [63:0] Queue_12_1_io_deq_bits_data;
  wire  Queue_12_1_io_deq_bits_last;
  wire [4:0] Queue_12_1_io_deq_bits_id;
  wire [7:0] Queue_12_1_io_deq_bits_strb;
  wire  Queue_12_1_io_deq_bits_user;
  wire [1:0] Queue_12_1_io_count;
  wire  Queue_13_1_clk;
  wire  Queue_13_1_reset;
  wire  Queue_13_1_io_enq_ready;
  wire  Queue_13_1_io_enq_valid;
  wire [1:0] Queue_13_1_io_enq_bits_resp;
  wire [63:0] Queue_13_1_io_enq_bits_data;
  wire  Queue_13_1_io_enq_bits_last;
  wire [4:0] Queue_13_1_io_enq_bits_id;
  wire  Queue_13_1_io_enq_bits_user;
  wire  Queue_13_1_io_deq_ready;
  wire  Queue_13_1_io_deq_valid;
  wire [1:0] Queue_13_1_io_deq_bits_resp;
  wire [63:0] Queue_13_1_io_deq_bits_data;
  wire  Queue_13_1_io_deq_bits_last;
  wire [4:0] Queue_13_1_io_deq_bits_id;
  wire  Queue_13_1_io_deq_bits_user;
  wire [1:0] Queue_13_1_io_count;
  wire  Queue_14_1_clk;
  wire  Queue_14_1_reset;
  wire  Queue_14_1_io_enq_ready;
  wire  Queue_14_1_io_enq_valid;
  wire [1:0] Queue_14_1_io_enq_bits_resp;
  wire [4:0] Queue_14_1_io_enq_bits_id;
  wire  Queue_14_1_io_enq_bits_user;
  wire  Queue_14_1_io_deq_ready;
  wire  Queue_14_1_io_deq_valid;
  wire [1:0] Queue_14_1_io_deq_bits_resp;
  wire [4:0] Queue_14_1_io_deq_bits_id;
  wire  Queue_14_1_io_deq_bits_user;
  wire  Queue_14_1_io_count;
  reg  GEN_0;
  reg [31:0] GEN_1;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_PORTED_TILE_LINK_CROSSBAR l1tol2net (
    .clk(l1tol2net_clk),
    .reset(l1tol2net_reset),
    .io_clients_cached_0_acquire_ready(l1tol2net_io_clients_cached_0_acquire_ready),
    .io_clients_cached_0_acquire_valid(l1tol2net_io_clients_cached_0_acquire_valid),
    .io_clients_cached_0_acquire_bits_addr_block(l1tol2net_io_clients_cached_0_acquire_bits_addr_block),
    .io_clients_cached_0_acquire_bits_client_xact_id(l1tol2net_io_clients_cached_0_acquire_bits_client_xact_id),
    .io_clients_cached_0_acquire_bits_addr_beat(l1tol2net_io_clients_cached_0_acquire_bits_addr_beat),
    .io_clients_cached_0_acquire_bits_is_builtin_type(l1tol2net_io_clients_cached_0_acquire_bits_is_builtin_type),
    .io_clients_cached_0_acquire_bits_a_type(l1tol2net_io_clients_cached_0_acquire_bits_a_type),
    .io_clients_cached_0_acquire_bits_union(l1tol2net_io_clients_cached_0_acquire_bits_union),
    .io_clients_cached_0_acquire_bits_data(l1tol2net_io_clients_cached_0_acquire_bits_data),
    .io_clients_cached_0_probe_ready(l1tol2net_io_clients_cached_0_probe_ready),
    .io_clients_cached_0_probe_valid(l1tol2net_io_clients_cached_0_probe_valid),
    .io_clients_cached_0_probe_bits_addr_block(l1tol2net_io_clients_cached_0_probe_bits_addr_block),
    .io_clients_cached_0_probe_bits_p_type(l1tol2net_io_clients_cached_0_probe_bits_p_type),
    .io_clients_cached_0_release_ready(l1tol2net_io_clients_cached_0_release_ready),
    .io_clients_cached_0_release_valid(l1tol2net_io_clients_cached_0_release_valid),
    .io_clients_cached_0_release_bits_addr_beat(l1tol2net_io_clients_cached_0_release_bits_addr_beat),
    .io_clients_cached_0_release_bits_addr_block(l1tol2net_io_clients_cached_0_release_bits_addr_block),
    .io_clients_cached_0_release_bits_client_xact_id(l1tol2net_io_clients_cached_0_release_bits_client_xact_id),
    .io_clients_cached_0_release_bits_voluntary(l1tol2net_io_clients_cached_0_release_bits_voluntary),
    .io_clients_cached_0_release_bits_r_type(l1tol2net_io_clients_cached_0_release_bits_r_type),
    .io_clients_cached_0_release_bits_data(l1tol2net_io_clients_cached_0_release_bits_data),
    .io_clients_cached_0_grant_ready(l1tol2net_io_clients_cached_0_grant_ready),
    .io_clients_cached_0_grant_valid(l1tol2net_io_clients_cached_0_grant_valid),
    .io_clients_cached_0_grant_bits_addr_beat(l1tol2net_io_clients_cached_0_grant_bits_addr_beat),
    .io_clients_cached_0_grant_bits_client_xact_id(l1tol2net_io_clients_cached_0_grant_bits_client_xact_id),
    .io_clients_cached_0_grant_bits_manager_xact_id(l1tol2net_io_clients_cached_0_grant_bits_manager_xact_id),
    .io_clients_cached_0_grant_bits_is_builtin_type(l1tol2net_io_clients_cached_0_grant_bits_is_builtin_type),
    .io_clients_cached_0_grant_bits_g_type(l1tol2net_io_clients_cached_0_grant_bits_g_type),
    .io_clients_cached_0_grant_bits_data(l1tol2net_io_clients_cached_0_grant_bits_data),
    .io_clients_cached_0_grant_bits_manager_id(l1tol2net_io_clients_cached_0_grant_bits_manager_id),
    .io_clients_cached_0_finish_ready(l1tol2net_io_clients_cached_0_finish_ready),
    .io_clients_cached_0_finish_valid(l1tol2net_io_clients_cached_0_finish_valid),
    .io_clients_cached_0_finish_bits_manager_xact_id(l1tol2net_io_clients_cached_0_finish_bits_manager_xact_id),
    .io_clients_cached_0_finish_bits_manager_id(l1tol2net_io_clients_cached_0_finish_bits_manager_id),
    .io_clients_uncached_0_acquire_ready(l1tol2net_io_clients_uncached_0_acquire_ready),
    .io_clients_uncached_0_acquire_valid(l1tol2net_io_clients_uncached_0_acquire_valid),
    .io_clients_uncached_0_acquire_bits_addr_block(l1tol2net_io_clients_uncached_0_acquire_bits_addr_block),
    .io_clients_uncached_0_acquire_bits_client_xact_id(l1tol2net_io_clients_uncached_0_acquire_bits_client_xact_id),
    .io_clients_uncached_0_acquire_bits_addr_beat(l1tol2net_io_clients_uncached_0_acquire_bits_addr_beat),
    .io_clients_uncached_0_acquire_bits_is_builtin_type(l1tol2net_io_clients_uncached_0_acquire_bits_is_builtin_type),
    .io_clients_uncached_0_acquire_bits_a_type(l1tol2net_io_clients_uncached_0_acquire_bits_a_type),
    .io_clients_uncached_0_acquire_bits_union(l1tol2net_io_clients_uncached_0_acquire_bits_union),
    .io_clients_uncached_0_acquire_bits_data(l1tol2net_io_clients_uncached_0_acquire_bits_data),
    .io_clients_uncached_0_grant_ready(l1tol2net_io_clients_uncached_0_grant_ready),
    .io_clients_uncached_0_grant_valid(l1tol2net_io_clients_uncached_0_grant_valid),
    .io_clients_uncached_0_grant_bits_addr_beat(l1tol2net_io_clients_uncached_0_grant_bits_addr_beat),
    .io_clients_uncached_0_grant_bits_client_xact_id(l1tol2net_io_clients_uncached_0_grant_bits_client_xact_id),
    .io_clients_uncached_0_grant_bits_manager_xact_id(l1tol2net_io_clients_uncached_0_grant_bits_manager_xact_id),
    .io_clients_uncached_0_grant_bits_is_builtin_type(l1tol2net_io_clients_uncached_0_grant_bits_is_builtin_type),
    .io_clients_uncached_0_grant_bits_g_type(l1tol2net_io_clients_uncached_0_grant_bits_g_type),
    .io_clients_uncached_0_grant_bits_data(l1tol2net_io_clients_uncached_0_grant_bits_data),
    .io_managers_0_acquire_ready(l1tol2net_io_managers_0_acquire_ready),
    .io_managers_0_acquire_valid(l1tol2net_io_managers_0_acquire_valid),
    .io_managers_0_acquire_bits_addr_block(l1tol2net_io_managers_0_acquire_bits_addr_block),
    .io_managers_0_acquire_bits_client_xact_id(l1tol2net_io_managers_0_acquire_bits_client_xact_id),
    .io_managers_0_acquire_bits_addr_beat(l1tol2net_io_managers_0_acquire_bits_addr_beat),
    .io_managers_0_acquire_bits_is_builtin_type(l1tol2net_io_managers_0_acquire_bits_is_builtin_type),
    .io_managers_0_acquire_bits_a_type(l1tol2net_io_managers_0_acquire_bits_a_type),
    .io_managers_0_acquire_bits_union(l1tol2net_io_managers_0_acquire_bits_union),
    .io_managers_0_acquire_bits_data(l1tol2net_io_managers_0_acquire_bits_data),
    .io_managers_0_acquire_bits_client_id(l1tol2net_io_managers_0_acquire_bits_client_id),
    .io_managers_0_grant_ready(l1tol2net_io_managers_0_grant_ready),
    .io_managers_0_grant_valid(l1tol2net_io_managers_0_grant_valid),
    .io_managers_0_grant_bits_addr_beat(l1tol2net_io_managers_0_grant_bits_addr_beat),
    .io_managers_0_grant_bits_client_xact_id(l1tol2net_io_managers_0_grant_bits_client_xact_id),
    .io_managers_0_grant_bits_manager_xact_id(l1tol2net_io_managers_0_grant_bits_manager_xact_id),
    .io_managers_0_grant_bits_is_builtin_type(l1tol2net_io_managers_0_grant_bits_is_builtin_type),
    .io_managers_0_grant_bits_g_type(l1tol2net_io_managers_0_grant_bits_g_type),
    .io_managers_0_grant_bits_data(l1tol2net_io_managers_0_grant_bits_data),
    .io_managers_0_grant_bits_client_id(l1tol2net_io_managers_0_grant_bits_client_id),
    .io_managers_0_finish_ready(l1tol2net_io_managers_0_finish_ready),
    .io_managers_0_finish_valid(l1tol2net_io_managers_0_finish_valid),
    .io_managers_0_finish_bits_manager_xact_id(l1tol2net_io_managers_0_finish_bits_manager_xact_id),
    .io_managers_0_probe_ready(l1tol2net_io_managers_0_probe_ready),
    .io_managers_0_probe_valid(l1tol2net_io_managers_0_probe_valid),
    .io_managers_0_probe_bits_addr_block(l1tol2net_io_managers_0_probe_bits_addr_block),
    .io_managers_0_probe_bits_p_type(l1tol2net_io_managers_0_probe_bits_p_type),
    .io_managers_0_probe_bits_client_id(l1tol2net_io_managers_0_probe_bits_client_id),
    .io_managers_0_release_ready(l1tol2net_io_managers_0_release_ready),
    .io_managers_0_release_valid(l1tol2net_io_managers_0_release_valid),
    .io_managers_0_release_bits_addr_beat(l1tol2net_io_managers_0_release_bits_addr_beat),
    .io_managers_0_release_bits_addr_block(l1tol2net_io_managers_0_release_bits_addr_block),
    .io_managers_0_release_bits_client_xact_id(l1tol2net_io_managers_0_release_bits_client_xact_id),
    .io_managers_0_release_bits_voluntary(l1tol2net_io_managers_0_release_bits_voluntary),
    .io_managers_0_release_bits_r_type(l1tol2net_io_managers_0_release_bits_r_type),
    .io_managers_0_release_bits_data(l1tol2net_io_managers_0_release_bits_data),
    .io_managers_0_release_bits_client_id(l1tol2net_io_managers_0_release_bits_client_id),
    .io_managers_1_acquire_ready(l1tol2net_io_managers_1_acquire_ready),
    .io_managers_1_acquire_valid(l1tol2net_io_managers_1_acquire_valid),
    .io_managers_1_acquire_bits_addr_block(l1tol2net_io_managers_1_acquire_bits_addr_block),
    .io_managers_1_acquire_bits_client_xact_id(l1tol2net_io_managers_1_acquire_bits_client_xact_id),
    .io_managers_1_acquire_bits_addr_beat(l1tol2net_io_managers_1_acquire_bits_addr_beat),
    .io_managers_1_acquire_bits_is_builtin_type(l1tol2net_io_managers_1_acquire_bits_is_builtin_type),
    .io_managers_1_acquire_bits_a_type(l1tol2net_io_managers_1_acquire_bits_a_type),
    .io_managers_1_acquire_bits_union(l1tol2net_io_managers_1_acquire_bits_union),
    .io_managers_1_acquire_bits_data(l1tol2net_io_managers_1_acquire_bits_data),
    .io_managers_1_acquire_bits_client_id(l1tol2net_io_managers_1_acquire_bits_client_id),
    .io_managers_1_grant_ready(l1tol2net_io_managers_1_grant_ready),
    .io_managers_1_grant_valid(l1tol2net_io_managers_1_grant_valid),
    .io_managers_1_grant_bits_addr_beat(l1tol2net_io_managers_1_grant_bits_addr_beat),
    .io_managers_1_grant_bits_client_xact_id(l1tol2net_io_managers_1_grant_bits_client_xact_id),
    .io_managers_1_grant_bits_manager_xact_id(l1tol2net_io_managers_1_grant_bits_manager_xact_id),
    .io_managers_1_grant_bits_is_builtin_type(l1tol2net_io_managers_1_grant_bits_is_builtin_type),
    .io_managers_1_grant_bits_g_type(l1tol2net_io_managers_1_grant_bits_g_type),
    .io_managers_1_grant_bits_data(l1tol2net_io_managers_1_grant_bits_data),
    .io_managers_1_grant_bits_client_id(l1tol2net_io_managers_1_grant_bits_client_id),
    .io_managers_1_finish_ready(l1tol2net_io_managers_1_finish_ready),
    .io_managers_1_finish_valid(l1tol2net_io_managers_1_finish_valid),
    .io_managers_1_finish_bits_manager_xact_id(l1tol2net_io_managers_1_finish_bits_manager_xact_id),
    .io_managers_1_probe_ready(l1tol2net_io_managers_1_probe_ready),
    .io_managers_1_probe_valid(l1tol2net_io_managers_1_probe_valid),
    .io_managers_1_probe_bits_addr_block(l1tol2net_io_managers_1_probe_bits_addr_block),
    .io_managers_1_probe_bits_p_type(l1tol2net_io_managers_1_probe_bits_p_type),
    .io_managers_1_probe_bits_client_id(l1tol2net_io_managers_1_probe_bits_client_id),
    .io_managers_1_release_ready(l1tol2net_io_managers_1_release_ready),
    .io_managers_1_release_valid(l1tol2net_io_managers_1_release_valid),
    .io_managers_1_release_bits_addr_beat(l1tol2net_io_managers_1_release_bits_addr_beat),
    .io_managers_1_release_bits_addr_block(l1tol2net_io_managers_1_release_bits_addr_block),
    .io_managers_1_release_bits_client_xact_id(l1tol2net_io_managers_1_release_bits_client_xact_id),
    .io_managers_1_release_bits_voluntary(l1tol2net_io_managers_1_release_bits_voluntary),
    .io_managers_1_release_bits_r_type(l1tol2net_io_managers_1_release_bits_r_type),
    .io_managers_1_release_bits_data(l1tol2net_io_managers_1_release_bits_data),
    .io_managers_1_release_bits_client_id(l1tol2net_io_managers_1_release_bits_client_id)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MANAGER_TO_CLIENT_STATELESS_BRIDGE ManagerToClientStatelessBridge_1 (
    .clk(ManagerToClientStatelessBridge_1_clk),
    .reset(ManagerToClientStatelessBridge_1_reset),
    .io_inner_acquire_ready(ManagerToClientStatelessBridge_1_io_inner_acquire_ready),
    .io_inner_acquire_valid(ManagerToClientStatelessBridge_1_io_inner_acquire_valid),
    .io_inner_acquire_bits_addr_block(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_block),
    .io_inner_acquire_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_xact_id),
    .io_inner_acquire_bits_addr_beat(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_beat),
    .io_inner_acquire_bits_is_builtin_type(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_is_builtin_type),
    .io_inner_acquire_bits_a_type(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_a_type),
    .io_inner_acquire_bits_union(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_union),
    .io_inner_acquire_bits_data(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_data),
    .io_inner_acquire_bits_client_id(ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_id),
    .io_inner_grant_ready(ManagerToClientStatelessBridge_1_io_inner_grant_ready),
    .io_inner_grant_valid(ManagerToClientStatelessBridge_1_io_inner_grant_valid),
    .io_inner_grant_bits_addr_beat(ManagerToClientStatelessBridge_1_io_inner_grant_bits_addr_beat),
    .io_inner_grant_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_xact_id),
    .io_inner_grant_bits_manager_xact_id(ManagerToClientStatelessBridge_1_io_inner_grant_bits_manager_xact_id),
    .io_inner_grant_bits_is_builtin_type(ManagerToClientStatelessBridge_1_io_inner_grant_bits_is_builtin_type),
    .io_inner_grant_bits_g_type(ManagerToClientStatelessBridge_1_io_inner_grant_bits_g_type),
    .io_inner_grant_bits_data(ManagerToClientStatelessBridge_1_io_inner_grant_bits_data),
    .io_inner_grant_bits_client_id(ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_id),
    .io_inner_finish_ready(ManagerToClientStatelessBridge_1_io_inner_finish_ready),
    .io_inner_finish_valid(ManagerToClientStatelessBridge_1_io_inner_finish_valid),
    .io_inner_finish_bits_manager_xact_id(ManagerToClientStatelessBridge_1_io_inner_finish_bits_manager_xact_id),
    .io_inner_probe_ready(ManagerToClientStatelessBridge_1_io_inner_probe_ready),
    .io_inner_probe_valid(ManagerToClientStatelessBridge_1_io_inner_probe_valid),
    .io_inner_probe_bits_addr_block(ManagerToClientStatelessBridge_1_io_inner_probe_bits_addr_block),
    .io_inner_probe_bits_p_type(ManagerToClientStatelessBridge_1_io_inner_probe_bits_p_type),
    .io_inner_probe_bits_client_id(ManagerToClientStatelessBridge_1_io_inner_probe_bits_client_id),
    .io_inner_release_ready(ManagerToClientStatelessBridge_1_io_inner_release_ready),
    .io_inner_release_valid(ManagerToClientStatelessBridge_1_io_inner_release_valid),
    .io_inner_release_bits_addr_beat(ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_beat),
    .io_inner_release_bits_addr_block(ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_block),
    .io_inner_release_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_inner_release_bits_client_xact_id),
    .io_inner_release_bits_voluntary(ManagerToClientStatelessBridge_1_io_inner_release_bits_voluntary),
    .io_inner_release_bits_r_type(ManagerToClientStatelessBridge_1_io_inner_release_bits_r_type),
    .io_inner_release_bits_data(ManagerToClientStatelessBridge_1_io_inner_release_bits_data),
    .io_inner_release_bits_client_id(ManagerToClientStatelessBridge_1_io_inner_release_bits_client_id),
    .io_incoherent_0(ManagerToClientStatelessBridge_1_io_incoherent_0),
    .io_outer_acquire_ready(ManagerToClientStatelessBridge_1_io_outer_acquire_ready),
    .io_outer_acquire_valid(ManagerToClientStatelessBridge_1_io_outer_acquire_valid),
    .io_outer_acquire_bits_addr_block(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_block),
    .io_outer_acquire_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_client_xact_id),
    .io_outer_acquire_bits_addr_beat(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_beat),
    .io_outer_acquire_bits_is_builtin_type(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_is_builtin_type),
    .io_outer_acquire_bits_a_type(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_a_type),
    .io_outer_acquire_bits_union(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_union),
    .io_outer_acquire_bits_data(ManagerToClientStatelessBridge_1_io_outer_acquire_bits_data),
    .io_outer_probe_ready(ManagerToClientStatelessBridge_1_io_outer_probe_ready),
    .io_outer_probe_valid(ManagerToClientStatelessBridge_1_io_outer_probe_valid),
    .io_outer_probe_bits_addr_block(ManagerToClientStatelessBridge_1_io_outer_probe_bits_addr_block),
    .io_outer_probe_bits_p_type(ManagerToClientStatelessBridge_1_io_outer_probe_bits_p_type),
    .io_outer_release_ready(ManagerToClientStatelessBridge_1_io_outer_release_ready),
    .io_outer_release_valid(ManagerToClientStatelessBridge_1_io_outer_release_valid),
    .io_outer_release_bits_addr_beat(ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_beat),
    .io_outer_release_bits_addr_block(ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_block),
    .io_outer_release_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_outer_release_bits_client_xact_id),
    .io_outer_release_bits_voluntary(ManagerToClientStatelessBridge_1_io_outer_release_bits_voluntary),
    .io_outer_release_bits_r_type(ManagerToClientStatelessBridge_1_io_outer_release_bits_r_type),
    .io_outer_release_bits_data(ManagerToClientStatelessBridge_1_io_outer_release_bits_data),
    .io_outer_grant_ready(ManagerToClientStatelessBridge_1_io_outer_grant_ready),
    .io_outer_grant_valid(ManagerToClientStatelessBridge_1_io_outer_grant_valid),
    .io_outer_grant_bits_addr_beat(ManagerToClientStatelessBridge_1_io_outer_grant_bits_addr_beat),
    .io_outer_grant_bits_client_xact_id(ManagerToClientStatelessBridge_1_io_outer_grant_bits_client_xact_id),
    .io_outer_grant_bits_manager_xact_id(ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_xact_id),
    .io_outer_grant_bits_is_builtin_type(ManagerToClientStatelessBridge_1_io_outer_grant_bits_is_builtin_type),
    .io_outer_grant_bits_g_type(ManagerToClientStatelessBridge_1_io_outer_grant_bits_g_type),
    .io_outer_grant_bits_data(ManagerToClientStatelessBridge_1_io_outer_grant_bits_data),
    .io_outer_grant_bits_manager_id(ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_id),
    .io_outer_finish_ready(ManagerToClientStatelessBridge_1_io_outer_finish_ready),
    .io_outer_finish_valid(ManagerToClientStatelessBridge_1_io_outer_finish_valid),
    .io_outer_finish_bits_manager_xact_id(ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_xact_id),
    .io_outer_finish_bits_manager_id(ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_id)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MMIO_TILE_LINK_MANAGER mmioManager (
    .clk(mmioManager_clk),
    .reset(mmioManager_reset),
    .io_inner_acquire_ready(mmioManager_io_inner_acquire_ready),
    .io_inner_acquire_valid(mmioManager_io_inner_acquire_valid),
    .io_inner_acquire_bits_addr_block(mmioManager_io_inner_acquire_bits_addr_block),
    .io_inner_acquire_bits_client_xact_id(mmioManager_io_inner_acquire_bits_client_xact_id),
    .io_inner_acquire_bits_addr_beat(mmioManager_io_inner_acquire_bits_addr_beat),
    .io_inner_acquire_bits_is_builtin_type(mmioManager_io_inner_acquire_bits_is_builtin_type),
    .io_inner_acquire_bits_a_type(mmioManager_io_inner_acquire_bits_a_type),
    .io_inner_acquire_bits_union(mmioManager_io_inner_acquire_bits_union),
    .io_inner_acquire_bits_data(mmioManager_io_inner_acquire_bits_data),
    .io_inner_acquire_bits_client_id(mmioManager_io_inner_acquire_bits_client_id),
    .io_inner_grant_ready(mmioManager_io_inner_grant_ready),
    .io_inner_grant_valid(mmioManager_io_inner_grant_valid),
    .io_inner_grant_bits_addr_beat(mmioManager_io_inner_grant_bits_addr_beat),
    .io_inner_grant_bits_client_xact_id(mmioManager_io_inner_grant_bits_client_xact_id),
    .io_inner_grant_bits_manager_xact_id(mmioManager_io_inner_grant_bits_manager_xact_id),
    .io_inner_grant_bits_is_builtin_type(mmioManager_io_inner_grant_bits_is_builtin_type),
    .io_inner_grant_bits_g_type(mmioManager_io_inner_grant_bits_g_type),
    .io_inner_grant_bits_data(mmioManager_io_inner_grant_bits_data),
    .io_inner_grant_bits_client_id(mmioManager_io_inner_grant_bits_client_id),
    .io_inner_finish_ready(mmioManager_io_inner_finish_ready),
    .io_inner_finish_valid(mmioManager_io_inner_finish_valid),
    .io_inner_finish_bits_manager_xact_id(mmioManager_io_inner_finish_bits_manager_xact_id),
    .io_inner_probe_ready(mmioManager_io_inner_probe_ready),
    .io_inner_probe_valid(mmioManager_io_inner_probe_valid),
    .io_inner_probe_bits_addr_block(mmioManager_io_inner_probe_bits_addr_block),
    .io_inner_probe_bits_p_type(mmioManager_io_inner_probe_bits_p_type),
    .io_inner_probe_bits_client_id(mmioManager_io_inner_probe_bits_client_id),
    .io_inner_release_ready(mmioManager_io_inner_release_ready),
    .io_inner_release_valid(mmioManager_io_inner_release_valid),
    .io_inner_release_bits_addr_beat(mmioManager_io_inner_release_bits_addr_beat),
    .io_inner_release_bits_addr_block(mmioManager_io_inner_release_bits_addr_block),
    .io_inner_release_bits_client_xact_id(mmioManager_io_inner_release_bits_client_xact_id),
    .io_inner_release_bits_voluntary(mmioManager_io_inner_release_bits_voluntary),
    .io_inner_release_bits_r_type(mmioManager_io_inner_release_bits_r_type),
    .io_inner_release_bits_data(mmioManager_io_inner_release_bits_data),
    .io_inner_release_bits_client_id(mmioManager_io_inner_release_bits_client_id),
    .io_incoherent_0(mmioManager_io_incoherent_0),
    .io_outer_acquire_ready(mmioManager_io_outer_acquire_ready),
    .io_outer_acquire_valid(mmioManager_io_outer_acquire_valid),
    .io_outer_acquire_bits_addr_block(mmioManager_io_outer_acquire_bits_addr_block),
    .io_outer_acquire_bits_client_xact_id(mmioManager_io_outer_acquire_bits_client_xact_id),
    .io_outer_acquire_bits_addr_beat(mmioManager_io_outer_acquire_bits_addr_beat),
    .io_outer_acquire_bits_is_builtin_type(mmioManager_io_outer_acquire_bits_is_builtin_type),
    .io_outer_acquire_bits_a_type(mmioManager_io_outer_acquire_bits_a_type),
    .io_outer_acquire_bits_union(mmioManager_io_outer_acquire_bits_union),
    .io_outer_acquire_bits_data(mmioManager_io_outer_acquire_bits_data),
    .io_outer_grant_ready(mmioManager_io_outer_grant_ready),
    .io_outer_grant_valid(mmioManager_io_outer_grant_valid),
    .io_outer_grant_bits_addr_beat(mmioManager_io_outer_grant_bits_addr_beat),
    .io_outer_grant_bits_client_xact_id(mmioManager_io_outer_grant_bits_client_xact_id),
    .io_outer_grant_bits_manager_xact_id(mmioManager_io_outer_grant_bits_manager_xact_id),
    .io_outer_grant_bits_is_builtin_type(mmioManager_io_outer_grant_bits_is_builtin_type),
    .io_outer_grant_bits_g_type(mmioManager_io_outer_grant_bits_g_type),
    .io_outer_grant_bits_data(mmioManager_io_outer_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_8 Queue_8_1 (
    .clk(Queue_8_1_clk),
    .reset(Queue_8_1_reset),
    .io_enq_ready(Queue_8_1_io_enq_ready),
    .io_enq_valid(Queue_8_1_io_enq_valid),
    .io_enq_bits_addr_block(Queue_8_1_io_enq_bits_addr_block),
    .io_enq_bits_client_xact_id(Queue_8_1_io_enq_bits_client_xact_id),
    .io_enq_bits_addr_beat(Queue_8_1_io_enq_bits_addr_beat),
    .io_enq_bits_is_builtin_type(Queue_8_1_io_enq_bits_is_builtin_type),
    .io_enq_bits_a_type(Queue_8_1_io_enq_bits_a_type),
    .io_enq_bits_union(Queue_8_1_io_enq_bits_union),
    .io_enq_bits_data(Queue_8_1_io_enq_bits_data),
    .io_deq_ready(Queue_8_1_io_deq_ready),
    .io_deq_valid(Queue_8_1_io_deq_valid),
    .io_deq_bits_addr_block(Queue_8_1_io_deq_bits_addr_block),
    .io_deq_bits_client_xact_id(Queue_8_1_io_deq_bits_client_xact_id),
    .io_deq_bits_addr_beat(Queue_8_1_io_deq_bits_addr_beat),
    .io_deq_bits_is_builtin_type(Queue_8_1_io_deq_bits_is_builtin_type),
    .io_deq_bits_a_type(Queue_8_1_io_deq_bits_a_type),
    .io_deq_bits_union(Queue_8_1_io_deq_bits_union),
    .io_deq_bits_data(Queue_8_1_io_deq_bits_data),
    .io_count(Queue_8_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_9 Queue_9_1 (
    .clk(Queue_9_1_clk),
    .reset(Queue_9_1_reset),
    .io_enq_ready(Queue_9_1_io_enq_ready),
    .io_enq_valid(Queue_9_1_io_enq_valid),
    .io_enq_bits_addr_beat(Queue_9_1_io_enq_bits_addr_beat),
    .io_enq_bits_client_xact_id(Queue_9_1_io_enq_bits_client_xact_id),
    .io_enq_bits_manager_xact_id(Queue_9_1_io_enq_bits_manager_xact_id),
    .io_enq_bits_is_builtin_type(Queue_9_1_io_enq_bits_is_builtin_type),
    .io_enq_bits_g_type(Queue_9_1_io_enq_bits_g_type),
    .io_enq_bits_data(Queue_9_1_io_enq_bits_data),
    .io_deq_ready(Queue_9_1_io_deq_ready),
    .io_deq_valid(Queue_9_1_io_deq_valid),
    .io_deq_bits_addr_beat(Queue_9_1_io_deq_bits_addr_beat),
    .io_deq_bits_client_xact_id(Queue_9_1_io_deq_bits_client_xact_id),
    .io_deq_bits_manager_xact_id(Queue_9_1_io_deq_bits_manager_xact_id),
    .io_deq_bits_is_builtin_type(Queue_9_1_io_deq_bits_is_builtin_type),
    .io_deq_bits_g_type(Queue_9_1_io_deq_bits_g_type),
    .io_deq_bits_data(Queue_9_1_io_deq_bits_data),
    .io_count(Queue_9_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_MEMORY_INTERCONNECT mem_ic (
    .clk(mem_ic_clk),
    .reset(mem_ic_reset),
    .io_in_0_acquire_ready(mem_ic_io_in_0_acquire_ready),
    .io_in_0_acquire_valid(mem_ic_io_in_0_acquire_valid),
    .io_in_0_acquire_bits_addr_block(mem_ic_io_in_0_acquire_bits_addr_block),
    .io_in_0_acquire_bits_client_xact_id(mem_ic_io_in_0_acquire_bits_client_xact_id),
    .io_in_0_acquire_bits_addr_beat(mem_ic_io_in_0_acquire_bits_addr_beat),
    .io_in_0_acquire_bits_is_builtin_type(mem_ic_io_in_0_acquire_bits_is_builtin_type),
    .io_in_0_acquire_bits_a_type(mem_ic_io_in_0_acquire_bits_a_type),
    .io_in_0_acquire_bits_union(mem_ic_io_in_0_acquire_bits_union),
    .io_in_0_acquire_bits_data(mem_ic_io_in_0_acquire_bits_data),
    .io_in_0_grant_ready(mem_ic_io_in_0_grant_ready),
    .io_in_0_grant_valid(mem_ic_io_in_0_grant_valid),
    .io_in_0_grant_bits_addr_beat(mem_ic_io_in_0_grant_bits_addr_beat),
    .io_in_0_grant_bits_client_xact_id(mem_ic_io_in_0_grant_bits_client_xact_id),
    .io_in_0_grant_bits_manager_xact_id(mem_ic_io_in_0_grant_bits_manager_xact_id),
    .io_in_0_grant_bits_is_builtin_type(mem_ic_io_in_0_grant_bits_is_builtin_type),
    .io_in_0_grant_bits_g_type(mem_ic_io_in_0_grant_bits_g_type),
    .io_in_0_grant_bits_data(mem_ic_io_in_0_grant_bits_data),
    .io_out_0_acquire_ready(mem_ic_io_out_0_acquire_ready),
    .io_out_0_acquire_valid(mem_ic_io_out_0_acquire_valid),
    .io_out_0_acquire_bits_addr_block(mem_ic_io_out_0_acquire_bits_addr_block),
    .io_out_0_acquire_bits_client_xact_id(mem_ic_io_out_0_acquire_bits_client_xact_id),
    .io_out_0_acquire_bits_addr_beat(mem_ic_io_out_0_acquire_bits_addr_beat),
    .io_out_0_acquire_bits_is_builtin_type(mem_ic_io_out_0_acquire_bits_is_builtin_type),
    .io_out_0_acquire_bits_a_type(mem_ic_io_out_0_acquire_bits_a_type),
    .io_out_0_acquire_bits_union(mem_ic_io_out_0_acquire_bits_union),
    .io_out_0_acquire_bits_data(mem_ic_io_out_0_acquire_bits_data),
    .io_out_0_grant_ready(mem_ic_io_out_0_grant_ready),
    .io_out_0_grant_valid(mem_ic_io_out_0_grant_valid),
    .io_out_0_grant_bits_addr_beat(mem_ic_io_out_0_grant_bits_addr_beat),
    .io_out_0_grant_bits_client_xact_id(mem_ic_io_out_0_grant_bits_client_xact_id),
    .io_out_0_grant_bits_manager_xact_id(mem_ic_io_out_0_grant_bits_manager_xact_id),
    .io_out_0_grant_bits_is_builtin_type(mem_ic_io_out_0_grant_bits_is_builtin_type),
    .io_out_0_grant_bits_g_type(mem_ic_io_out_0_grant_bits_g_type),
    .io_out_0_grant_bits_data(mem_ic_io_out_0_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_IO_UNWRAPPER ClientTileLinkIOUnwrapper_1 (
    .clk(ClientTileLinkIOUnwrapper_1_clk),
    .reset(ClientTileLinkIOUnwrapper_1_reset),
    .io_in_acquire_ready(ClientTileLinkIOUnwrapper_1_io_in_acquire_ready),
    .io_in_acquire_valid(ClientTileLinkIOUnwrapper_1_io_in_acquire_valid),
    .io_in_acquire_bits_addr_block(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_block),
    .io_in_acquire_bits_client_xact_id(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_client_xact_id),
    .io_in_acquire_bits_addr_beat(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_beat),
    .io_in_acquire_bits_is_builtin_type(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_is_builtin_type),
    .io_in_acquire_bits_a_type(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_a_type),
    .io_in_acquire_bits_union(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_union),
    .io_in_acquire_bits_data(ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_data),
    .io_in_probe_ready(ClientTileLinkIOUnwrapper_1_io_in_probe_ready),
    .io_in_probe_valid(ClientTileLinkIOUnwrapper_1_io_in_probe_valid),
    .io_in_probe_bits_addr_block(ClientTileLinkIOUnwrapper_1_io_in_probe_bits_addr_block),
    .io_in_probe_bits_p_type(ClientTileLinkIOUnwrapper_1_io_in_probe_bits_p_type),
    .io_in_release_ready(ClientTileLinkIOUnwrapper_1_io_in_release_ready),
    .io_in_release_valid(ClientTileLinkIOUnwrapper_1_io_in_release_valid),
    .io_in_release_bits_addr_beat(ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_beat),
    .io_in_release_bits_addr_block(ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_block),
    .io_in_release_bits_client_xact_id(ClientTileLinkIOUnwrapper_1_io_in_release_bits_client_xact_id),
    .io_in_release_bits_voluntary(ClientTileLinkIOUnwrapper_1_io_in_release_bits_voluntary),
    .io_in_release_bits_r_type(ClientTileLinkIOUnwrapper_1_io_in_release_bits_r_type),
    .io_in_release_bits_data(ClientTileLinkIOUnwrapper_1_io_in_release_bits_data),
    .io_in_grant_ready(ClientTileLinkIOUnwrapper_1_io_in_grant_ready),
    .io_in_grant_valid(ClientTileLinkIOUnwrapper_1_io_in_grant_valid),
    .io_in_grant_bits_addr_beat(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_addr_beat),
    .io_in_grant_bits_client_xact_id(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_client_xact_id),
    .io_in_grant_bits_manager_xact_id(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_xact_id),
    .io_in_grant_bits_is_builtin_type(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_is_builtin_type),
    .io_in_grant_bits_g_type(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_g_type),
    .io_in_grant_bits_data(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_data),
    .io_in_grant_bits_manager_id(ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_id),
    .io_in_finish_ready(ClientTileLinkIOUnwrapper_1_io_in_finish_ready),
    .io_in_finish_valid(ClientTileLinkIOUnwrapper_1_io_in_finish_valid),
    .io_in_finish_bits_manager_xact_id(ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_xact_id),
    .io_in_finish_bits_manager_id(ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_id),
    .io_out_acquire_ready(ClientTileLinkIOUnwrapper_1_io_out_acquire_ready),
    .io_out_acquire_valid(ClientTileLinkIOUnwrapper_1_io_out_acquire_valid),
    .io_out_acquire_bits_addr_block(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_block),
    .io_out_acquire_bits_client_xact_id(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_client_xact_id),
    .io_out_acquire_bits_addr_beat(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_beat),
    .io_out_acquire_bits_is_builtin_type(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_is_builtin_type),
    .io_out_acquire_bits_a_type(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_a_type),
    .io_out_acquire_bits_union(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_union),
    .io_out_acquire_bits_data(ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_data),
    .io_out_grant_ready(ClientTileLinkIOUnwrapper_1_io_out_grant_ready),
    .io_out_grant_valid(ClientTileLinkIOUnwrapper_1_io_out_grant_valid),
    .io_out_grant_bits_addr_beat(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_addr_beat),
    .io_out_grant_bits_client_xact_id(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_client_xact_id),
    .io_out_grant_bits_manager_xact_id(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_manager_xact_id),
    .io_out_grant_bits_is_builtin_type(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_is_builtin_type),
    .io_out_grant_bits_g_type(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_g_type),
    .io_out_grant_bits_data(ClientTileLinkIOUnwrapper_1_io_out_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_ENQUEUER ClientTileLinkEnqueuer_1 (
    .clk(ClientTileLinkEnqueuer_1_clk),
    .reset(ClientTileLinkEnqueuer_1_reset),
    .io_inner_acquire_ready(ClientTileLinkEnqueuer_1_io_inner_acquire_ready),
    .io_inner_acquire_valid(ClientTileLinkEnqueuer_1_io_inner_acquire_valid),
    .io_inner_acquire_bits_addr_block(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_block),
    .io_inner_acquire_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_client_xact_id),
    .io_inner_acquire_bits_addr_beat(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_beat),
    .io_inner_acquire_bits_is_builtin_type(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_is_builtin_type),
    .io_inner_acquire_bits_a_type(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_a_type),
    .io_inner_acquire_bits_union(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_union),
    .io_inner_acquire_bits_data(ClientTileLinkEnqueuer_1_io_inner_acquire_bits_data),
    .io_inner_probe_ready(ClientTileLinkEnqueuer_1_io_inner_probe_ready),
    .io_inner_probe_valid(ClientTileLinkEnqueuer_1_io_inner_probe_valid),
    .io_inner_probe_bits_addr_block(ClientTileLinkEnqueuer_1_io_inner_probe_bits_addr_block),
    .io_inner_probe_bits_p_type(ClientTileLinkEnqueuer_1_io_inner_probe_bits_p_type),
    .io_inner_release_ready(ClientTileLinkEnqueuer_1_io_inner_release_ready),
    .io_inner_release_valid(ClientTileLinkEnqueuer_1_io_inner_release_valid),
    .io_inner_release_bits_addr_beat(ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_beat),
    .io_inner_release_bits_addr_block(ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_block),
    .io_inner_release_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_inner_release_bits_client_xact_id),
    .io_inner_release_bits_voluntary(ClientTileLinkEnqueuer_1_io_inner_release_bits_voluntary),
    .io_inner_release_bits_r_type(ClientTileLinkEnqueuer_1_io_inner_release_bits_r_type),
    .io_inner_release_bits_data(ClientTileLinkEnqueuer_1_io_inner_release_bits_data),
    .io_inner_grant_ready(ClientTileLinkEnqueuer_1_io_inner_grant_ready),
    .io_inner_grant_valid(ClientTileLinkEnqueuer_1_io_inner_grant_valid),
    .io_inner_grant_bits_addr_beat(ClientTileLinkEnqueuer_1_io_inner_grant_bits_addr_beat),
    .io_inner_grant_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_inner_grant_bits_client_xact_id),
    .io_inner_grant_bits_manager_xact_id(ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_xact_id),
    .io_inner_grant_bits_is_builtin_type(ClientTileLinkEnqueuer_1_io_inner_grant_bits_is_builtin_type),
    .io_inner_grant_bits_g_type(ClientTileLinkEnqueuer_1_io_inner_grant_bits_g_type),
    .io_inner_grant_bits_data(ClientTileLinkEnqueuer_1_io_inner_grant_bits_data),
    .io_inner_grant_bits_manager_id(ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_id),
    .io_inner_finish_ready(ClientTileLinkEnqueuer_1_io_inner_finish_ready),
    .io_inner_finish_valid(ClientTileLinkEnqueuer_1_io_inner_finish_valid),
    .io_inner_finish_bits_manager_xact_id(ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_xact_id),
    .io_inner_finish_bits_manager_id(ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_id),
    .io_outer_acquire_ready(ClientTileLinkEnqueuer_1_io_outer_acquire_ready),
    .io_outer_acquire_valid(ClientTileLinkEnqueuer_1_io_outer_acquire_valid),
    .io_outer_acquire_bits_addr_block(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_block),
    .io_outer_acquire_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_client_xact_id),
    .io_outer_acquire_bits_addr_beat(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_beat),
    .io_outer_acquire_bits_is_builtin_type(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_is_builtin_type),
    .io_outer_acquire_bits_a_type(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_a_type),
    .io_outer_acquire_bits_union(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_union),
    .io_outer_acquire_bits_data(ClientTileLinkEnqueuer_1_io_outer_acquire_bits_data),
    .io_outer_probe_ready(ClientTileLinkEnqueuer_1_io_outer_probe_ready),
    .io_outer_probe_valid(ClientTileLinkEnqueuer_1_io_outer_probe_valid),
    .io_outer_probe_bits_addr_block(ClientTileLinkEnqueuer_1_io_outer_probe_bits_addr_block),
    .io_outer_probe_bits_p_type(ClientTileLinkEnqueuer_1_io_outer_probe_bits_p_type),
    .io_outer_release_ready(ClientTileLinkEnqueuer_1_io_outer_release_ready),
    .io_outer_release_valid(ClientTileLinkEnqueuer_1_io_outer_release_valid),
    .io_outer_release_bits_addr_beat(ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_beat),
    .io_outer_release_bits_addr_block(ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_block),
    .io_outer_release_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_outer_release_bits_client_xact_id),
    .io_outer_release_bits_voluntary(ClientTileLinkEnqueuer_1_io_outer_release_bits_voluntary),
    .io_outer_release_bits_r_type(ClientTileLinkEnqueuer_1_io_outer_release_bits_r_type),
    .io_outer_release_bits_data(ClientTileLinkEnqueuer_1_io_outer_release_bits_data),
    .io_outer_grant_ready(ClientTileLinkEnqueuer_1_io_outer_grant_ready),
    .io_outer_grant_valid(ClientTileLinkEnqueuer_1_io_outer_grant_valid),
    .io_outer_grant_bits_addr_beat(ClientTileLinkEnqueuer_1_io_outer_grant_bits_addr_beat),
    .io_outer_grant_bits_client_xact_id(ClientTileLinkEnqueuer_1_io_outer_grant_bits_client_xact_id),
    .io_outer_grant_bits_manager_xact_id(ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_xact_id),
    .io_outer_grant_bits_is_builtin_type(ClientTileLinkEnqueuer_1_io_outer_grant_bits_is_builtin_type),
    .io_outer_grant_bits_g_type(ClientTileLinkEnqueuer_1_io_outer_grant_bits_g_type),
    .io_outer_grant_bits_data(ClientTileLinkEnqueuer_1_io_outer_grant_bits_data),
    .io_outer_grant_bits_manager_id(ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_id),
    .io_outer_finish_ready(ClientTileLinkEnqueuer_1_io_outer_finish_ready),
    .io_outer_finish_valid(ClientTileLinkEnqueuer_1_io_outer_finish_valid),
    .io_outer_finish_bits_manager_xact_id(ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_xact_id),
    .io_outer_finish_bits_manager_id(ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_id)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_NASTI_IO_TILE_LINK_IO_CONVERTER PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_NASTI_IO_TILE_LINK_IO_CONVERTER_1 (
    .clk(NastiIOTileLinkIOConverter_1_clk),
    .reset(NastiIOTileLinkIOConverter_1_reset),
    .io_tl_acquire_ready(NastiIOTileLinkIOConverter_1_io_tl_acquire_ready),
    .io_tl_acquire_valid(NastiIOTileLinkIOConverter_1_io_tl_acquire_valid),
    .io_tl_acquire_bits_addr_block(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_block),
    .io_tl_acquire_bits_client_xact_id(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_client_xact_id),
    .io_tl_acquire_bits_addr_beat(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_beat),
    .io_tl_acquire_bits_is_builtin_type(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_is_builtin_type),
    .io_tl_acquire_bits_a_type(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_a_type),
    .io_tl_acquire_bits_union(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_union),
    .io_tl_acquire_bits_data(NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_data),
    .io_tl_grant_ready(NastiIOTileLinkIOConverter_1_io_tl_grant_ready),
    .io_tl_grant_valid(NastiIOTileLinkIOConverter_1_io_tl_grant_valid),
    .io_tl_grant_bits_addr_beat(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_addr_beat),
    .io_tl_grant_bits_client_xact_id(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_client_xact_id),
    .io_tl_grant_bits_manager_xact_id(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_manager_xact_id),
    .io_tl_grant_bits_is_builtin_type(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_is_builtin_type),
    .io_tl_grant_bits_g_type(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_g_type),
    .io_tl_grant_bits_data(NastiIOTileLinkIOConverter_1_io_tl_grant_bits_data),
    .io_nasti_aw_ready(NastiIOTileLinkIOConverter_1_io_nasti_aw_ready),
    .io_nasti_aw_valid(NastiIOTileLinkIOConverter_1_io_nasti_aw_valid),
    .io_nasti_aw_bits_addr(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_addr),
    .io_nasti_aw_bits_len(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_len),
    .io_nasti_aw_bits_size(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_size),
    .io_nasti_aw_bits_burst(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_burst),
    .io_nasti_aw_bits_lock(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_lock),
    .io_nasti_aw_bits_cache(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_cache),
    .io_nasti_aw_bits_prot(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_prot),
    .io_nasti_aw_bits_qos(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_qos),
    .io_nasti_aw_bits_region(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_region),
    .io_nasti_aw_bits_id(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_id),
    .io_nasti_aw_bits_user(NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_user),
    .io_nasti_w_ready(NastiIOTileLinkIOConverter_1_io_nasti_w_ready),
    .io_nasti_w_valid(NastiIOTileLinkIOConverter_1_io_nasti_w_valid),
    .io_nasti_w_bits_data(NastiIOTileLinkIOConverter_1_io_nasti_w_bits_data),
    .io_nasti_w_bits_last(NastiIOTileLinkIOConverter_1_io_nasti_w_bits_last),
    .io_nasti_w_bits_id(NastiIOTileLinkIOConverter_1_io_nasti_w_bits_id),
    .io_nasti_w_bits_strb(NastiIOTileLinkIOConverter_1_io_nasti_w_bits_strb),
    .io_nasti_w_bits_user(NastiIOTileLinkIOConverter_1_io_nasti_w_bits_user),
    .io_nasti_b_ready(NastiIOTileLinkIOConverter_1_io_nasti_b_ready),
    .io_nasti_b_valid(NastiIOTileLinkIOConverter_1_io_nasti_b_valid),
    .io_nasti_b_bits_resp(NastiIOTileLinkIOConverter_1_io_nasti_b_bits_resp),
    .io_nasti_b_bits_id(NastiIOTileLinkIOConverter_1_io_nasti_b_bits_id),
    .io_nasti_b_bits_user(NastiIOTileLinkIOConverter_1_io_nasti_b_bits_user),
    .io_nasti_ar_ready(NastiIOTileLinkIOConverter_1_io_nasti_ar_ready),
    .io_nasti_ar_valid(NastiIOTileLinkIOConverter_1_io_nasti_ar_valid),
    .io_nasti_ar_bits_addr(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_addr),
    .io_nasti_ar_bits_len(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_len),
    .io_nasti_ar_bits_size(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_size),
    .io_nasti_ar_bits_burst(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_burst),
    .io_nasti_ar_bits_lock(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_lock),
    .io_nasti_ar_bits_cache(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_cache),
    .io_nasti_ar_bits_prot(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_prot),
    .io_nasti_ar_bits_qos(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_qos),
    .io_nasti_ar_bits_region(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_region),
    .io_nasti_ar_bits_id(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_id),
    .io_nasti_ar_bits_user(NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_user),
    .io_nasti_r_ready(NastiIOTileLinkIOConverter_1_io_nasti_r_ready),
    .io_nasti_r_valid(NastiIOTileLinkIOConverter_1_io_nasti_r_valid),
    .io_nasti_r_bits_resp(NastiIOTileLinkIOConverter_1_io_nasti_r_bits_resp),
    .io_nasti_r_bits_data(NastiIOTileLinkIOConverter_1_io_nasti_r_bits_data),
    .io_nasti_r_bits_last(NastiIOTileLinkIOConverter_1_io_nasti_r_bits_last),
    .io_nasti_r_bits_id(NastiIOTileLinkIOConverter_1_io_nasti_r_bits_id),
    .io_nasti_r_bits_user(NastiIOTileLinkIOConverter_1_io_nasti_r_bits_user)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_10 Queue_10_1 (
    .clk(Queue_10_1_clk),
    .reset(Queue_10_1_reset),
    .io_enq_ready(Queue_10_1_io_enq_ready),
    .io_enq_valid(Queue_10_1_io_enq_valid),
    .io_enq_bits_addr(Queue_10_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_10_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_10_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_10_1_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_10_1_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_10_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_10_1_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_10_1_io_enq_bits_qos),
    .io_enq_bits_region(Queue_10_1_io_enq_bits_region),
    .io_enq_bits_id(Queue_10_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_10_1_io_enq_bits_user),
    .io_deq_ready(Queue_10_1_io_deq_ready),
    .io_deq_valid(Queue_10_1_io_deq_valid),
    .io_deq_bits_addr(Queue_10_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_10_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_10_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_10_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_10_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_10_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_10_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_10_1_io_deq_bits_qos),
    .io_deq_bits_region(Queue_10_1_io_deq_bits_region),
    .io_deq_bits_id(Queue_10_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_10_1_io_deq_bits_user),
    .io_count(Queue_10_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_10 Queue_11_1 (
    .clk(Queue_11_1_clk),
    .reset(Queue_11_1_reset),
    .io_enq_ready(Queue_11_1_io_enq_ready),
    .io_enq_valid(Queue_11_1_io_enq_valid),
    .io_enq_bits_addr(Queue_11_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_11_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_11_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_11_1_io_enq_bits_burst),
    .io_enq_bits_lock(Queue_11_1_io_enq_bits_lock),
    .io_enq_bits_cache(Queue_11_1_io_enq_bits_cache),
    .io_enq_bits_prot(Queue_11_1_io_enq_bits_prot),
    .io_enq_bits_qos(Queue_11_1_io_enq_bits_qos),
    .io_enq_bits_region(Queue_11_1_io_enq_bits_region),
    .io_enq_bits_id(Queue_11_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_11_1_io_enq_bits_user),
    .io_deq_ready(Queue_11_1_io_deq_ready),
    .io_deq_valid(Queue_11_1_io_deq_valid),
    .io_deq_bits_addr(Queue_11_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_11_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_11_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_11_1_io_deq_bits_burst),
    .io_deq_bits_lock(Queue_11_1_io_deq_bits_lock),
    .io_deq_bits_cache(Queue_11_1_io_deq_bits_cache),
    .io_deq_bits_prot(Queue_11_1_io_deq_bits_prot),
    .io_deq_bits_qos(Queue_11_1_io_deq_bits_qos),
    .io_deq_bits_region(Queue_11_1_io_deq_bits_region),
    .io_deq_bits_id(Queue_11_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_11_1_io_deq_bits_user),
    .io_count(Queue_11_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_12 Queue_12_1 (
    .clk(Queue_12_1_clk),
    .reset(Queue_12_1_reset),
    .io_enq_ready(Queue_12_1_io_enq_ready),
    .io_enq_valid(Queue_12_1_io_enq_valid),
    .io_enq_bits_data(Queue_12_1_io_enq_bits_data),
    .io_enq_bits_last(Queue_12_1_io_enq_bits_last),
    .io_enq_bits_id(Queue_12_1_io_enq_bits_id),
    .io_enq_bits_strb(Queue_12_1_io_enq_bits_strb),
    .io_enq_bits_user(Queue_12_1_io_enq_bits_user),
    .io_deq_ready(Queue_12_1_io_deq_ready),
    .io_deq_valid(Queue_12_1_io_deq_valid),
    .io_deq_bits_data(Queue_12_1_io_deq_bits_data),
    .io_deq_bits_last(Queue_12_1_io_deq_bits_last),
    .io_deq_bits_id(Queue_12_1_io_deq_bits_id),
    .io_deq_bits_strb(Queue_12_1_io_deq_bits_strb),
    .io_deq_bits_user(Queue_12_1_io_deq_bits_user),
    .io_count(Queue_12_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_13 Queue_13_1 (
    .clk(Queue_13_1_clk),
    .reset(Queue_13_1_reset),
    .io_enq_ready(Queue_13_1_io_enq_ready),
    .io_enq_valid(Queue_13_1_io_enq_valid),
    .io_enq_bits_resp(Queue_13_1_io_enq_bits_resp),
    .io_enq_bits_data(Queue_13_1_io_enq_bits_data),
    .io_enq_bits_last(Queue_13_1_io_enq_bits_last),
    .io_enq_bits_id(Queue_13_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_13_1_io_enq_bits_user),
    .io_deq_ready(Queue_13_1_io_deq_ready),
    .io_deq_valid(Queue_13_1_io_deq_valid),
    .io_deq_bits_resp(Queue_13_1_io_deq_bits_resp),
    .io_deq_bits_data(Queue_13_1_io_deq_bits_data),
    .io_deq_bits_last(Queue_13_1_io_deq_bits_last),
    .io_deq_bits_id(Queue_13_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_13_1_io_deq_bits_user),
    .io_count(Queue_13_1_io_count)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_14 Queue_14_1 (
    .clk(Queue_14_1_clk),
    .reset(Queue_14_1_reset),
    .io_enq_ready(Queue_14_1_io_enq_ready),
    .io_enq_valid(Queue_14_1_io_enq_valid),
    .io_enq_bits_resp(Queue_14_1_io_enq_bits_resp),
    .io_enq_bits_id(Queue_14_1_io_enq_bits_id),
    .io_enq_bits_user(Queue_14_1_io_enq_bits_user),
    .io_deq_ready(Queue_14_1_io_deq_ready),
    .io_deq_valid(Queue_14_1_io_deq_valid),
    .io_deq_bits_resp(Queue_14_1_io_deq_bits_resp),
    .io_deq_bits_id(Queue_14_1_io_deq_bits_id),
    .io_deq_bits_user(Queue_14_1_io_deq_bits_user),
    .io_count(Queue_14_1_io_count)
  );
  assign io_tiles_cached_0_acquire_ready = l1tol2net_io_clients_cached_0_acquire_ready;
  assign io_tiles_cached_0_probe_valid = l1tol2net_io_clients_cached_0_probe_valid;
  assign io_tiles_cached_0_probe_bits_addr_block = l1tol2net_io_clients_cached_0_probe_bits_addr_block;
  assign io_tiles_cached_0_probe_bits_p_type = l1tol2net_io_clients_cached_0_probe_bits_p_type;
  assign io_tiles_cached_0_release_ready = l1tol2net_io_clients_cached_0_release_ready;
  assign io_tiles_cached_0_grant_valid = l1tol2net_io_clients_cached_0_grant_valid;
  assign io_tiles_cached_0_grant_bits_addr_beat = l1tol2net_io_clients_cached_0_grant_bits_addr_beat;
  assign io_tiles_cached_0_grant_bits_client_xact_id = l1tol2net_io_clients_cached_0_grant_bits_client_xact_id;
  assign io_tiles_cached_0_grant_bits_manager_xact_id = l1tol2net_io_clients_cached_0_grant_bits_manager_xact_id;
  assign io_tiles_cached_0_grant_bits_is_builtin_type = l1tol2net_io_clients_cached_0_grant_bits_is_builtin_type;
  assign io_tiles_cached_0_grant_bits_g_type = l1tol2net_io_clients_cached_0_grant_bits_g_type;
  assign io_tiles_cached_0_grant_bits_data = l1tol2net_io_clients_cached_0_grant_bits_data;
  assign io_tiles_cached_0_grant_bits_manager_id = l1tol2net_io_clients_cached_0_grant_bits_manager_id;
  assign io_tiles_cached_0_finish_ready = l1tol2net_io_clients_cached_0_finish_ready;
  assign io_tiles_uncached_0_acquire_ready = l1tol2net_io_clients_uncached_0_acquire_ready;
  assign io_tiles_uncached_0_grant_valid = l1tol2net_io_clients_uncached_0_grant_valid;
  assign io_tiles_uncached_0_grant_bits_addr_beat = l1tol2net_io_clients_uncached_0_grant_bits_addr_beat;
  assign io_tiles_uncached_0_grant_bits_client_xact_id = l1tol2net_io_clients_uncached_0_grant_bits_client_xact_id;
  assign io_tiles_uncached_0_grant_bits_manager_xact_id = l1tol2net_io_clients_uncached_0_grant_bits_manager_xact_id;
  assign io_tiles_uncached_0_grant_bits_is_builtin_type = l1tol2net_io_clients_uncached_0_grant_bits_is_builtin_type;
  assign io_tiles_uncached_0_grant_bits_g_type = l1tol2net_io_clients_uncached_0_grant_bits_g_type;
  assign io_tiles_uncached_0_grant_bits_data = l1tol2net_io_clients_uncached_0_grant_bits_data;
  assign io_mem_axi_0_aw_valid = Queue_11_1_io_deq_valid;
  assign io_mem_axi_0_aw_bits_addr = Queue_11_1_io_deq_bits_addr;
  assign io_mem_axi_0_aw_bits_len = Queue_11_1_io_deq_bits_len;
  assign io_mem_axi_0_aw_bits_size = Queue_11_1_io_deq_bits_size;
  assign io_mem_axi_0_aw_bits_burst = Queue_11_1_io_deq_bits_burst;
  assign io_mem_axi_0_aw_bits_lock = Queue_11_1_io_deq_bits_lock;
  assign io_mem_axi_0_aw_bits_cache = 4'h3;
  assign io_mem_axi_0_aw_bits_prot = Queue_11_1_io_deq_bits_prot;
  assign io_mem_axi_0_aw_bits_qos = Queue_11_1_io_deq_bits_qos;
  assign io_mem_axi_0_aw_bits_region = Queue_11_1_io_deq_bits_region;
  assign io_mem_axi_0_aw_bits_id = Queue_11_1_io_deq_bits_id;
  assign io_mem_axi_0_aw_bits_user = Queue_11_1_io_deq_bits_user;
  assign io_mem_axi_0_w_valid = Queue_12_1_io_deq_valid;
  assign io_mem_axi_0_w_bits_data = Queue_12_1_io_deq_bits_data;
  assign io_mem_axi_0_w_bits_last = Queue_12_1_io_deq_bits_last;
  assign io_mem_axi_0_w_bits_id = Queue_12_1_io_deq_bits_id;
  assign io_mem_axi_0_w_bits_strb = Queue_12_1_io_deq_bits_strb;
  assign io_mem_axi_0_w_bits_user = Queue_12_1_io_deq_bits_user;
  assign io_mem_axi_0_b_ready = Queue_14_1_io_enq_ready;
  assign io_mem_axi_0_ar_valid = Queue_10_1_io_deq_valid;
  assign io_mem_axi_0_ar_bits_addr = Queue_10_1_io_deq_bits_addr;
  assign io_mem_axi_0_ar_bits_len = Queue_10_1_io_deq_bits_len;
  assign io_mem_axi_0_ar_bits_size = Queue_10_1_io_deq_bits_size;
  assign io_mem_axi_0_ar_bits_burst = Queue_10_1_io_deq_bits_burst;
  assign io_mem_axi_0_ar_bits_lock = Queue_10_1_io_deq_bits_lock;
  assign io_mem_axi_0_ar_bits_cache = 4'h3;
  assign io_mem_axi_0_ar_bits_prot = Queue_10_1_io_deq_bits_prot;
  assign io_mem_axi_0_ar_bits_qos = Queue_10_1_io_deq_bits_qos;
  assign io_mem_axi_0_ar_bits_region = Queue_10_1_io_deq_bits_region;
  assign io_mem_axi_0_ar_bits_id = Queue_10_1_io_deq_bits_id;
  assign io_mem_axi_0_ar_bits_user = Queue_10_1_io_deq_bits_user;
  assign io_mem_axi_0_r_ready = Queue_13_1_io_enq_ready;
  assign io_mmio_acquire_valid = Queue_8_1_io_deq_valid;
  assign io_mmio_acquire_bits_addr_block = Queue_8_1_io_deq_bits_addr_block;
  assign io_mmio_acquire_bits_client_xact_id = Queue_8_1_io_deq_bits_client_xact_id;
  assign io_mmio_acquire_bits_addr_beat = Queue_8_1_io_deq_bits_addr_beat;
  assign io_mmio_acquire_bits_is_builtin_type = Queue_8_1_io_deq_bits_is_builtin_type;
  assign io_mmio_acquire_bits_a_type = Queue_8_1_io_deq_bits_a_type;
  assign io_mmio_acquire_bits_union = Queue_8_1_io_deq_bits_union;
  assign io_mmio_acquire_bits_data = Queue_8_1_io_deq_bits_data;
  assign io_mmio_grant_ready = Queue_9_1_io_enq_ready;
  assign l1tol2net_clk = clk;
  assign l1tol2net_reset = reset;
  assign l1tol2net_io_clients_cached_0_acquire_valid = io_tiles_cached_0_acquire_valid;
  assign l1tol2net_io_clients_cached_0_acquire_bits_addr_block = io_tiles_cached_0_acquire_bits_addr_block;
  assign l1tol2net_io_clients_cached_0_acquire_bits_client_xact_id = io_tiles_cached_0_acquire_bits_client_xact_id;
  assign l1tol2net_io_clients_cached_0_acquire_bits_addr_beat = io_tiles_cached_0_acquire_bits_addr_beat;
  assign l1tol2net_io_clients_cached_0_acquire_bits_is_builtin_type = io_tiles_cached_0_acquire_bits_is_builtin_type;
  assign l1tol2net_io_clients_cached_0_acquire_bits_a_type = io_tiles_cached_0_acquire_bits_a_type;
  assign l1tol2net_io_clients_cached_0_acquire_bits_union = io_tiles_cached_0_acquire_bits_union;
  assign l1tol2net_io_clients_cached_0_acquire_bits_data = io_tiles_cached_0_acquire_bits_data;
  assign l1tol2net_io_clients_cached_0_probe_ready = io_tiles_cached_0_probe_ready;
  assign l1tol2net_io_clients_cached_0_release_valid = io_tiles_cached_0_release_valid;
  assign l1tol2net_io_clients_cached_0_release_bits_addr_beat = io_tiles_cached_0_release_bits_addr_beat;
  assign l1tol2net_io_clients_cached_0_release_bits_addr_block = io_tiles_cached_0_release_bits_addr_block;
  assign l1tol2net_io_clients_cached_0_release_bits_client_xact_id = io_tiles_cached_0_release_bits_client_xact_id;
  assign l1tol2net_io_clients_cached_0_release_bits_voluntary = io_tiles_cached_0_release_bits_voluntary;
  assign l1tol2net_io_clients_cached_0_release_bits_r_type = io_tiles_cached_0_release_bits_r_type;
  assign l1tol2net_io_clients_cached_0_release_bits_data = io_tiles_cached_0_release_bits_data;
  assign l1tol2net_io_clients_cached_0_grant_ready = io_tiles_cached_0_grant_ready;
  assign l1tol2net_io_clients_cached_0_finish_valid = io_tiles_cached_0_finish_valid;
  assign l1tol2net_io_clients_cached_0_finish_bits_manager_xact_id = io_tiles_cached_0_finish_bits_manager_xact_id;
  assign l1tol2net_io_clients_cached_0_finish_bits_manager_id = io_tiles_cached_0_finish_bits_manager_id;
  assign l1tol2net_io_clients_uncached_0_acquire_valid = io_tiles_uncached_0_acquire_valid;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_addr_block = io_tiles_uncached_0_acquire_bits_addr_block;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_client_xact_id = io_tiles_uncached_0_acquire_bits_client_xact_id;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_addr_beat = io_tiles_uncached_0_acquire_bits_addr_beat;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_is_builtin_type = io_tiles_uncached_0_acquire_bits_is_builtin_type;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_a_type = io_tiles_uncached_0_acquire_bits_a_type;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_union = io_tiles_uncached_0_acquire_bits_union;
  assign l1tol2net_io_clients_uncached_0_acquire_bits_data = io_tiles_uncached_0_acquire_bits_data;
  assign l1tol2net_io_clients_uncached_0_grant_ready = io_tiles_uncached_0_grant_ready;
  assign l1tol2net_io_managers_0_acquire_ready = ManagerToClientStatelessBridge_1_io_inner_acquire_ready;
  assign l1tol2net_io_managers_0_grant_valid = ManagerToClientStatelessBridge_1_io_inner_grant_valid;
  assign l1tol2net_io_managers_0_grant_bits_addr_beat = ManagerToClientStatelessBridge_1_io_inner_grant_bits_addr_beat;
  assign l1tol2net_io_managers_0_grant_bits_client_xact_id = ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_xact_id;
  assign l1tol2net_io_managers_0_grant_bits_manager_xact_id = ManagerToClientStatelessBridge_1_io_inner_grant_bits_manager_xact_id;
  assign l1tol2net_io_managers_0_grant_bits_is_builtin_type = ManagerToClientStatelessBridge_1_io_inner_grant_bits_is_builtin_type;
  assign l1tol2net_io_managers_0_grant_bits_g_type = ManagerToClientStatelessBridge_1_io_inner_grant_bits_g_type;
  assign l1tol2net_io_managers_0_grant_bits_data = ManagerToClientStatelessBridge_1_io_inner_grant_bits_data;
  assign l1tol2net_io_managers_0_grant_bits_client_id = ManagerToClientStatelessBridge_1_io_inner_grant_bits_client_id;
  assign l1tol2net_io_managers_0_finish_ready = ManagerToClientStatelessBridge_1_io_inner_finish_ready;
  assign l1tol2net_io_managers_0_probe_valid = ManagerToClientStatelessBridge_1_io_inner_probe_valid;
  assign l1tol2net_io_managers_0_probe_bits_addr_block = ManagerToClientStatelessBridge_1_io_inner_probe_bits_addr_block;
  assign l1tol2net_io_managers_0_probe_bits_p_type = ManagerToClientStatelessBridge_1_io_inner_probe_bits_p_type;
  assign l1tol2net_io_managers_0_probe_bits_client_id = ManagerToClientStatelessBridge_1_io_inner_probe_bits_client_id;
  assign l1tol2net_io_managers_0_release_ready = ManagerToClientStatelessBridge_1_io_inner_release_ready;
  assign l1tol2net_io_managers_1_acquire_ready = mmioManager_io_inner_acquire_ready;
  assign l1tol2net_io_managers_1_grant_valid = mmioManager_io_inner_grant_valid;
  assign l1tol2net_io_managers_1_grant_bits_addr_beat = mmioManager_io_inner_grant_bits_addr_beat;
  assign l1tol2net_io_managers_1_grant_bits_client_xact_id = mmioManager_io_inner_grant_bits_client_xact_id;
  assign l1tol2net_io_managers_1_grant_bits_manager_xact_id = mmioManager_io_inner_grant_bits_manager_xact_id;
  assign l1tol2net_io_managers_1_grant_bits_is_builtin_type = mmioManager_io_inner_grant_bits_is_builtin_type;
  assign l1tol2net_io_managers_1_grant_bits_g_type = mmioManager_io_inner_grant_bits_g_type;
  assign l1tol2net_io_managers_1_grant_bits_data = mmioManager_io_inner_grant_bits_data;
  assign l1tol2net_io_managers_1_grant_bits_client_id = mmioManager_io_inner_grant_bits_client_id;
  assign l1tol2net_io_managers_1_finish_ready = mmioManager_io_inner_finish_ready;
  assign l1tol2net_io_managers_1_probe_valid = mmioManager_io_inner_probe_valid;
  assign l1tol2net_io_managers_1_probe_bits_addr_block = mmioManager_io_inner_probe_bits_addr_block;
  assign l1tol2net_io_managers_1_probe_bits_p_type = mmioManager_io_inner_probe_bits_p_type;
  assign l1tol2net_io_managers_1_probe_bits_client_id = mmioManager_io_inner_probe_bits_client_id;
  assign l1tol2net_io_managers_1_release_ready = mmioManager_io_inner_release_ready;
  assign ManagerToClientStatelessBridge_1_clk = clk;
  assign ManagerToClientStatelessBridge_1_reset = reset;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_valid = l1tol2net_io_managers_0_acquire_valid;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_block = l1tol2net_io_managers_0_acquire_bits_addr_block;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_xact_id = l1tol2net_io_managers_0_acquire_bits_client_xact_id;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_addr_beat = l1tol2net_io_managers_0_acquire_bits_addr_beat;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_is_builtin_type = l1tol2net_io_managers_0_acquire_bits_is_builtin_type;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_a_type = l1tol2net_io_managers_0_acquire_bits_a_type;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_union = l1tol2net_io_managers_0_acquire_bits_union;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_data = l1tol2net_io_managers_0_acquire_bits_data;
  assign ManagerToClientStatelessBridge_1_io_inner_acquire_bits_client_id = l1tol2net_io_managers_0_acquire_bits_client_id;
  assign ManagerToClientStatelessBridge_1_io_inner_grant_ready = l1tol2net_io_managers_0_grant_ready;
  assign ManagerToClientStatelessBridge_1_io_inner_finish_valid = l1tol2net_io_managers_0_finish_valid;
  assign ManagerToClientStatelessBridge_1_io_inner_finish_bits_manager_xact_id = l1tol2net_io_managers_0_finish_bits_manager_xact_id;
  assign ManagerToClientStatelessBridge_1_io_inner_probe_ready = l1tol2net_io_managers_0_probe_ready;
  assign ManagerToClientStatelessBridge_1_io_inner_release_valid = l1tol2net_io_managers_0_release_valid;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_beat = l1tol2net_io_managers_0_release_bits_addr_beat;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_addr_block = l1tol2net_io_managers_0_release_bits_addr_block;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_client_xact_id = l1tol2net_io_managers_0_release_bits_client_xact_id;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_voluntary = l1tol2net_io_managers_0_release_bits_voluntary;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_r_type = l1tol2net_io_managers_0_release_bits_r_type;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_data = l1tol2net_io_managers_0_release_bits_data;
  assign ManagerToClientStatelessBridge_1_io_inner_release_bits_client_id = l1tol2net_io_managers_0_release_bits_client_id;
  assign ManagerToClientStatelessBridge_1_io_incoherent_0 = io_incoherent_0;
  assign ManagerToClientStatelessBridge_1_io_outer_acquire_ready = ClientTileLinkEnqueuer_1_io_inner_acquire_ready;
  assign ManagerToClientStatelessBridge_1_io_outer_probe_valid = ClientTileLinkEnqueuer_1_io_inner_probe_valid;
  assign ManagerToClientStatelessBridge_1_io_outer_probe_bits_addr_block = ClientTileLinkEnqueuer_1_io_inner_probe_bits_addr_block;
  assign ManagerToClientStatelessBridge_1_io_outer_probe_bits_p_type = ClientTileLinkEnqueuer_1_io_inner_probe_bits_p_type;
  assign ManagerToClientStatelessBridge_1_io_outer_release_ready = ClientTileLinkEnqueuer_1_io_inner_release_ready;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_valid = ClientTileLinkEnqueuer_1_io_inner_grant_valid;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_addr_beat = ClientTileLinkEnqueuer_1_io_inner_grant_bits_addr_beat;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_client_xact_id = ClientTileLinkEnqueuer_1_io_inner_grant_bits_client_xact_id;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_xact_id = ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_xact_id;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_is_builtin_type = ClientTileLinkEnqueuer_1_io_inner_grant_bits_is_builtin_type;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_g_type = ClientTileLinkEnqueuer_1_io_inner_grant_bits_g_type;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_data = ClientTileLinkEnqueuer_1_io_inner_grant_bits_data;
  assign ManagerToClientStatelessBridge_1_io_outer_grant_bits_manager_id = ClientTileLinkEnqueuer_1_io_inner_grant_bits_manager_id;
  assign ManagerToClientStatelessBridge_1_io_outer_finish_ready = ClientTileLinkEnqueuer_1_io_inner_finish_ready;
  assign mmioManager_clk = clk;
  assign mmioManager_reset = reset;
  assign mmioManager_io_inner_acquire_valid = l1tol2net_io_managers_1_acquire_valid;
  assign mmioManager_io_inner_acquire_bits_addr_block = l1tol2net_io_managers_1_acquire_bits_addr_block;
  assign mmioManager_io_inner_acquire_bits_client_xact_id = l1tol2net_io_managers_1_acquire_bits_client_xact_id;
  assign mmioManager_io_inner_acquire_bits_addr_beat = l1tol2net_io_managers_1_acquire_bits_addr_beat;
  assign mmioManager_io_inner_acquire_bits_is_builtin_type = l1tol2net_io_managers_1_acquire_bits_is_builtin_type;
  assign mmioManager_io_inner_acquire_bits_a_type = l1tol2net_io_managers_1_acquire_bits_a_type;
  assign mmioManager_io_inner_acquire_bits_union = l1tol2net_io_managers_1_acquire_bits_union;
  assign mmioManager_io_inner_acquire_bits_data = l1tol2net_io_managers_1_acquire_bits_data;
  assign mmioManager_io_inner_acquire_bits_client_id = l1tol2net_io_managers_1_acquire_bits_client_id;
  assign mmioManager_io_inner_grant_ready = l1tol2net_io_managers_1_grant_ready;
  assign mmioManager_io_inner_finish_valid = l1tol2net_io_managers_1_finish_valid;
  assign mmioManager_io_inner_finish_bits_manager_xact_id = l1tol2net_io_managers_1_finish_bits_manager_xact_id;
  assign mmioManager_io_inner_probe_ready = l1tol2net_io_managers_1_probe_ready;
  assign mmioManager_io_inner_release_valid = l1tol2net_io_managers_1_release_valid;
  assign mmioManager_io_inner_release_bits_addr_beat = l1tol2net_io_managers_1_release_bits_addr_beat;
  assign mmioManager_io_inner_release_bits_addr_block = l1tol2net_io_managers_1_release_bits_addr_block;
  assign mmioManager_io_inner_release_bits_client_xact_id = l1tol2net_io_managers_1_release_bits_client_xact_id;
  assign mmioManager_io_inner_release_bits_voluntary = l1tol2net_io_managers_1_release_bits_voluntary;
  assign mmioManager_io_inner_release_bits_r_type = l1tol2net_io_managers_1_release_bits_r_type;
  assign mmioManager_io_inner_release_bits_data = l1tol2net_io_managers_1_release_bits_data;
  assign mmioManager_io_inner_release_bits_client_id = l1tol2net_io_managers_1_release_bits_client_id;
  assign mmioManager_io_incoherent_0 = GEN_0;
  assign mmioManager_io_outer_acquire_ready = Queue_8_1_io_enq_ready;
  assign mmioManager_io_outer_grant_valid = Queue_9_1_io_deq_valid;
  assign mmioManager_io_outer_grant_bits_addr_beat = Queue_9_1_io_deq_bits_addr_beat;
  assign mmioManager_io_outer_grant_bits_client_xact_id = Queue_9_1_io_deq_bits_client_xact_id;
  assign mmioManager_io_outer_grant_bits_manager_xact_id = Queue_9_1_io_deq_bits_manager_xact_id;
  assign mmioManager_io_outer_grant_bits_is_builtin_type = Queue_9_1_io_deq_bits_is_builtin_type;
  assign mmioManager_io_outer_grant_bits_g_type = Queue_9_1_io_deq_bits_g_type;
  assign mmioManager_io_outer_grant_bits_data = Queue_9_1_io_deq_bits_data;
  assign Queue_8_1_clk = clk;
  assign Queue_8_1_reset = reset;
  assign Queue_8_1_io_enq_valid = mmioManager_io_outer_acquire_valid;
  assign Queue_8_1_io_enq_bits_addr_block = mmioManager_io_outer_acquire_bits_addr_block;
  assign Queue_8_1_io_enq_bits_client_xact_id = mmioManager_io_outer_acquire_bits_client_xact_id;
  assign Queue_8_1_io_enq_bits_addr_beat = mmioManager_io_outer_acquire_bits_addr_beat;
  assign Queue_8_1_io_enq_bits_is_builtin_type = mmioManager_io_outer_acquire_bits_is_builtin_type;
  assign Queue_8_1_io_enq_bits_a_type = mmioManager_io_outer_acquire_bits_a_type;
  assign Queue_8_1_io_enq_bits_union = mmioManager_io_outer_acquire_bits_union;
  assign Queue_8_1_io_enq_bits_data = mmioManager_io_outer_acquire_bits_data;
  assign Queue_8_1_io_deq_ready = io_mmio_acquire_ready;
  assign Queue_9_1_clk = clk;
  assign Queue_9_1_reset = reset;
  assign Queue_9_1_io_enq_valid = io_mmio_grant_valid;
  assign Queue_9_1_io_enq_bits_addr_beat = io_mmio_grant_bits_addr_beat;
  assign Queue_9_1_io_enq_bits_client_xact_id = io_mmio_grant_bits_client_xact_id;
  assign Queue_9_1_io_enq_bits_manager_xact_id = io_mmio_grant_bits_manager_xact_id;
  assign Queue_9_1_io_enq_bits_is_builtin_type = io_mmio_grant_bits_is_builtin_type;
  assign Queue_9_1_io_enq_bits_g_type = io_mmio_grant_bits_g_type;
  assign Queue_9_1_io_enq_bits_data = io_mmio_grant_bits_data;
  assign Queue_9_1_io_deq_ready = mmioManager_io_outer_grant_ready;
  assign mem_ic_clk = clk;
  assign mem_ic_reset = reset;
  assign mem_ic_io_in_0_acquire_valid = ClientTileLinkIOUnwrapper_1_io_out_acquire_valid;
  assign mem_ic_io_in_0_acquire_bits_addr_block = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_block;
  assign mem_ic_io_in_0_acquire_bits_client_xact_id = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_client_xact_id;
  assign mem_ic_io_in_0_acquire_bits_addr_beat = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_addr_beat;
  assign mem_ic_io_in_0_acquire_bits_is_builtin_type = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_is_builtin_type;
  assign mem_ic_io_in_0_acquire_bits_a_type = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_a_type;
  assign mem_ic_io_in_0_acquire_bits_union = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_union;
  assign mem_ic_io_in_0_acquire_bits_data = ClientTileLinkIOUnwrapper_1_io_out_acquire_bits_data;
  assign mem_ic_io_in_0_grant_ready = ClientTileLinkIOUnwrapper_1_io_out_grant_ready;
  assign mem_ic_io_out_0_acquire_ready = NastiIOTileLinkIOConverter_1_io_tl_acquire_ready;
  assign mem_ic_io_out_0_grant_valid = NastiIOTileLinkIOConverter_1_io_tl_grant_valid;
  assign mem_ic_io_out_0_grant_bits_addr_beat = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_addr_beat;
  assign mem_ic_io_out_0_grant_bits_client_xact_id = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_client_xact_id;
  assign mem_ic_io_out_0_grant_bits_manager_xact_id = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_manager_xact_id;
  assign mem_ic_io_out_0_grant_bits_is_builtin_type = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_is_builtin_type;
  assign mem_ic_io_out_0_grant_bits_g_type = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_g_type;
  assign mem_ic_io_out_0_grant_bits_data = NastiIOTileLinkIOConverter_1_io_tl_grant_bits_data;
  assign ClientTileLinkIOUnwrapper_1_clk = clk;
  assign ClientTileLinkIOUnwrapper_1_reset = reset;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_valid = ClientTileLinkEnqueuer_1_io_outer_acquire_valid;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_block = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_block;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_client_xact_id = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_client_xact_id;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_addr_beat = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_addr_beat;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_is_builtin_type = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_is_builtin_type;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_a_type = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_a_type;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_union = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_union;
  assign ClientTileLinkIOUnwrapper_1_io_in_acquire_bits_data = ClientTileLinkEnqueuer_1_io_outer_acquire_bits_data;
  assign ClientTileLinkIOUnwrapper_1_io_in_probe_ready = ClientTileLinkEnqueuer_1_io_outer_probe_ready;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_valid = ClientTileLinkEnqueuer_1_io_outer_release_valid;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_beat = ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_beat;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_addr_block = ClientTileLinkEnqueuer_1_io_outer_release_bits_addr_block;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_client_xact_id = ClientTileLinkEnqueuer_1_io_outer_release_bits_client_xact_id;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_voluntary = ClientTileLinkEnqueuer_1_io_outer_release_bits_voluntary;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_r_type = ClientTileLinkEnqueuer_1_io_outer_release_bits_r_type;
  assign ClientTileLinkIOUnwrapper_1_io_in_release_bits_data = ClientTileLinkEnqueuer_1_io_outer_release_bits_data;
  assign ClientTileLinkIOUnwrapper_1_io_in_grant_ready = ClientTileLinkEnqueuer_1_io_outer_grant_ready;
  assign ClientTileLinkIOUnwrapper_1_io_in_finish_valid = ClientTileLinkEnqueuer_1_io_outer_finish_valid;
  assign ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_xact_id = ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_xact_id;
  assign ClientTileLinkIOUnwrapper_1_io_in_finish_bits_manager_id = ClientTileLinkEnqueuer_1_io_outer_finish_bits_manager_id;
  assign ClientTileLinkIOUnwrapper_1_io_out_acquire_ready = mem_ic_io_in_0_acquire_ready;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_valid = mem_ic_io_in_0_grant_valid;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_addr_beat = mem_ic_io_in_0_grant_bits_addr_beat;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_client_xact_id = mem_ic_io_in_0_grant_bits_client_xact_id;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_manager_xact_id = mem_ic_io_in_0_grant_bits_manager_xact_id;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_is_builtin_type = mem_ic_io_in_0_grant_bits_is_builtin_type;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_g_type = mem_ic_io_in_0_grant_bits_g_type;
  assign ClientTileLinkIOUnwrapper_1_io_out_grant_bits_data = mem_ic_io_in_0_grant_bits_data;
  assign ClientTileLinkEnqueuer_1_clk = clk;
  assign ClientTileLinkEnqueuer_1_reset = reset;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_valid = ManagerToClientStatelessBridge_1_io_outer_acquire_valid;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_block = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_block;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_client_xact_id = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_client_xact_id;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_addr_beat = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_addr_beat;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_is_builtin_type = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_is_builtin_type;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_a_type = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_a_type;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_union = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_union;
  assign ClientTileLinkEnqueuer_1_io_inner_acquire_bits_data = ManagerToClientStatelessBridge_1_io_outer_acquire_bits_data;
  assign ClientTileLinkEnqueuer_1_io_inner_probe_ready = ManagerToClientStatelessBridge_1_io_outer_probe_ready;
  assign ClientTileLinkEnqueuer_1_io_inner_release_valid = ManagerToClientStatelessBridge_1_io_outer_release_valid;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_beat = ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_beat;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_addr_block = ManagerToClientStatelessBridge_1_io_outer_release_bits_addr_block;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_client_xact_id = ManagerToClientStatelessBridge_1_io_outer_release_bits_client_xact_id;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_voluntary = ManagerToClientStatelessBridge_1_io_outer_release_bits_voluntary;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_r_type = ManagerToClientStatelessBridge_1_io_outer_release_bits_r_type;
  assign ClientTileLinkEnqueuer_1_io_inner_release_bits_data = ManagerToClientStatelessBridge_1_io_outer_release_bits_data;
  assign ClientTileLinkEnqueuer_1_io_inner_grant_ready = ManagerToClientStatelessBridge_1_io_outer_grant_ready;
  assign ClientTileLinkEnqueuer_1_io_inner_finish_valid = ManagerToClientStatelessBridge_1_io_outer_finish_valid;
  assign ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_xact_id = ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_xact_id;
  assign ClientTileLinkEnqueuer_1_io_inner_finish_bits_manager_id = ManagerToClientStatelessBridge_1_io_outer_finish_bits_manager_id;
  assign ClientTileLinkEnqueuer_1_io_outer_acquire_ready = ClientTileLinkIOUnwrapper_1_io_in_acquire_ready;
  assign ClientTileLinkEnqueuer_1_io_outer_probe_valid = ClientTileLinkIOUnwrapper_1_io_in_probe_valid;
  assign ClientTileLinkEnqueuer_1_io_outer_probe_bits_addr_block = ClientTileLinkIOUnwrapper_1_io_in_probe_bits_addr_block;
  assign ClientTileLinkEnqueuer_1_io_outer_probe_bits_p_type = ClientTileLinkIOUnwrapper_1_io_in_probe_bits_p_type;
  assign ClientTileLinkEnqueuer_1_io_outer_release_ready = ClientTileLinkIOUnwrapper_1_io_in_release_ready;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_valid = ClientTileLinkIOUnwrapper_1_io_in_grant_valid;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_addr_beat = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_addr_beat;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_client_xact_id = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_client_xact_id;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_xact_id = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_xact_id;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_is_builtin_type = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_is_builtin_type;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_g_type = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_g_type;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_data = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_data;
  assign ClientTileLinkEnqueuer_1_io_outer_grant_bits_manager_id = ClientTileLinkIOUnwrapper_1_io_in_grant_bits_manager_id;
  assign ClientTileLinkEnqueuer_1_io_outer_finish_ready = ClientTileLinkIOUnwrapper_1_io_in_finish_ready;
  assign NastiIOTileLinkIOConverter_1_clk = clk;
  assign NastiIOTileLinkIOConverter_1_reset = reset;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_valid = mem_ic_io_out_0_acquire_valid;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_block = mem_ic_io_out_0_acquire_bits_addr_block;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_client_xact_id = mem_ic_io_out_0_acquire_bits_client_xact_id;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_addr_beat = mem_ic_io_out_0_acquire_bits_addr_beat;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_is_builtin_type = mem_ic_io_out_0_acquire_bits_is_builtin_type;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_a_type = mem_ic_io_out_0_acquire_bits_a_type;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_union = mem_ic_io_out_0_acquire_bits_union;
  assign NastiIOTileLinkIOConverter_1_io_tl_acquire_bits_data = mem_ic_io_out_0_acquire_bits_data;
  assign NastiIOTileLinkIOConverter_1_io_tl_grant_ready = mem_ic_io_out_0_grant_ready;
  assign NastiIOTileLinkIOConverter_1_io_nasti_aw_ready = Queue_11_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_io_nasti_w_ready = Queue_12_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_io_nasti_b_valid = Queue_14_1_io_deq_valid;
  assign NastiIOTileLinkIOConverter_1_io_nasti_b_bits_resp = Queue_14_1_io_deq_bits_resp;
  assign NastiIOTileLinkIOConverter_1_io_nasti_b_bits_id = Queue_14_1_io_deq_bits_id;
  assign NastiIOTileLinkIOConverter_1_io_nasti_b_bits_user = Queue_14_1_io_deq_bits_user;
  assign NastiIOTileLinkIOConverter_1_io_nasti_ar_ready = Queue_10_1_io_enq_ready;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_valid = Queue_13_1_io_deq_valid;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_bits_resp = Queue_13_1_io_deq_bits_resp;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_bits_data = Queue_13_1_io_deq_bits_data;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_bits_last = Queue_13_1_io_deq_bits_last;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_bits_id = Queue_13_1_io_deq_bits_id;
  assign NastiIOTileLinkIOConverter_1_io_nasti_r_bits_user = Queue_13_1_io_deq_bits_user;
  assign Queue_10_1_clk = clk;
  assign Queue_10_1_reset = reset;
  assign Queue_10_1_io_enq_valid = NastiIOTileLinkIOConverter_1_io_nasti_ar_valid;
  assign Queue_10_1_io_enq_bits_addr = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_addr;
  assign Queue_10_1_io_enq_bits_len = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_len;
  assign Queue_10_1_io_enq_bits_size = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_size;
  assign Queue_10_1_io_enq_bits_burst = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_burst;
  assign Queue_10_1_io_enq_bits_lock = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_lock;
  assign Queue_10_1_io_enq_bits_cache = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_cache;
  assign Queue_10_1_io_enq_bits_prot = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_prot;
  assign Queue_10_1_io_enq_bits_qos = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_qos;
  assign Queue_10_1_io_enq_bits_region = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_region;
  assign Queue_10_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_id;
  assign Queue_10_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_io_nasti_ar_bits_user;
  assign Queue_10_1_io_deq_ready = io_mem_axi_0_ar_ready;
  assign Queue_11_1_clk = clk;
  assign Queue_11_1_reset = reset;
  assign Queue_11_1_io_enq_valid = NastiIOTileLinkIOConverter_1_io_nasti_aw_valid;
  assign Queue_11_1_io_enq_bits_addr = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_addr;
  assign Queue_11_1_io_enq_bits_len = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_len;
  assign Queue_11_1_io_enq_bits_size = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_size;
  assign Queue_11_1_io_enq_bits_burst = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_burst;
  assign Queue_11_1_io_enq_bits_lock = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_lock;
  assign Queue_11_1_io_enq_bits_cache = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_cache;
  assign Queue_11_1_io_enq_bits_prot = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_prot;
  assign Queue_11_1_io_enq_bits_qos = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_qos;
  assign Queue_11_1_io_enq_bits_region = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_region;
  assign Queue_11_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_id;
  assign Queue_11_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_io_nasti_aw_bits_user;
  assign Queue_11_1_io_deq_ready = io_mem_axi_0_aw_ready;
  assign Queue_12_1_clk = clk;
  assign Queue_12_1_reset = reset;
  assign Queue_12_1_io_enq_valid = NastiIOTileLinkIOConverter_1_io_nasti_w_valid;
  assign Queue_12_1_io_enq_bits_data = NastiIOTileLinkIOConverter_1_io_nasti_w_bits_data;
  assign Queue_12_1_io_enq_bits_last = NastiIOTileLinkIOConverter_1_io_nasti_w_bits_last;
  assign Queue_12_1_io_enq_bits_id = NastiIOTileLinkIOConverter_1_io_nasti_w_bits_id;
  assign Queue_12_1_io_enq_bits_strb = NastiIOTileLinkIOConverter_1_io_nasti_w_bits_strb;
  assign Queue_12_1_io_enq_bits_user = NastiIOTileLinkIOConverter_1_io_nasti_w_bits_user;
  assign Queue_12_1_io_deq_ready = io_mem_axi_0_w_ready;
  assign Queue_13_1_clk = clk;
  assign Queue_13_1_reset = reset;
  assign Queue_13_1_io_enq_valid = io_mem_axi_0_r_valid;
  assign Queue_13_1_io_enq_bits_resp = io_mem_axi_0_r_bits_resp;
  assign Queue_13_1_io_enq_bits_data = io_mem_axi_0_r_bits_data;
  assign Queue_13_1_io_enq_bits_last = io_mem_axi_0_r_bits_last;
  assign Queue_13_1_io_enq_bits_id = io_mem_axi_0_r_bits_id;
  assign Queue_13_1_io_enq_bits_user = io_mem_axi_0_r_bits_user;
  assign Queue_13_1_io_deq_ready = NastiIOTileLinkIOConverter_1_io_nasti_r_ready;
  assign Queue_14_1_clk = clk;
  assign Queue_14_1_reset = reset;
  assign Queue_14_1_io_enq_valid = io_mem_axi_0_b_valid;
  assign Queue_14_1_io_enq_bits_resp = io_mem_axi_0_b_bits_resp;
  assign Queue_14_1_io_enq_bits_id = io_mem_axi_0_b_bits_id;
  assign Queue_14_1_io_enq_bits_user = io_mem_axi_0_b_bits_user;
  assign Queue_14_1_io_deq_ready = NastiIOTileLinkIOConverter_1_io_nasti_b_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_1 = {1{$random}};
  GEN_0 = GEN_1[0:0];
  `endif
  end
`endif
endmodule
