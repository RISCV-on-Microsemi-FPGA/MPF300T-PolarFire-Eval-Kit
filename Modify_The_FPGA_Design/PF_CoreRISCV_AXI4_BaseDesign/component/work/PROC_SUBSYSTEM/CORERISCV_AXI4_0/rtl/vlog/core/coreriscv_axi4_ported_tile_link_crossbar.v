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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_PORTED_TILE_LINK_CROSSBAR(
  input   clk,
  input   reset,
  output  io_clients_cached_0_acquire_ready,
  input   io_clients_cached_0_acquire_valid,
  input  [25:0] io_clients_cached_0_acquire_bits_addr_block,
  input   io_clients_cached_0_acquire_bits_client_xact_id,
  input  [2:0] io_clients_cached_0_acquire_bits_addr_beat,
  input   io_clients_cached_0_acquire_bits_is_builtin_type,
  input  [2:0] io_clients_cached_0_acquire_bits_a_type,
  input  [11:0] io_clients_cached_0_acquire_bits_union,
  input  [63:0] io_clients_cached_0_acquire_bits_data,
  input   io_clients_cached_0_probe_ready,
  output  io_clients_cached_0_probe_valid,
  output [25:0] io_clients_cached_0_probe_bits_addr_block,
  output [1:0] io_clients_cached_0_probe_bits_p_type,
  output  io_clients_cached_0_release_ready,
  input   io_clients_cached_0_release_valid,
  input  [2:0] io_clients_cached_0_release_bits_addr_beat,
  input  [25:0] io_clients_cached_0_release_bits_addr_block,
  input   io_clients_cached_0_release_bits_client_xact_id,
  input   io_clients_cached_0_release_bits_voluntary,
  input  [2:0] io_clients_cached_0_release_bits_r_type,
  input  [63:0] io_clients_cached_0_release_bits_data,
  input   io_clients_cached_0_grant_ready,
  output  io_clients_cached_0_grant_valid,
  output [2:0] io_clients_cached_0_grant_bits_addr_beat,
  output  io_clients_cached_0_grant_bits_client_xact_id,
  output [1:0] io_clients_cached_0_grant_bits_manager_xact_id,
  output  io_clients_cached_0_grant_bits_is_builtin_type,
  output [3:0] io_clients_cached_0_grant_bits_g_type,
  output [63:0] io_clients_cached_0_grant_bits_data,
  output  io_clients_cached_0_grant_bits_manager_id,
  output  io_clients_cached_0_finish_ready,
  input   io_clients_cached_0_finish_valid,
  input  [1:0] io_clients_cached_0_finish_bits_manager_xact_id,
  input   io_clients_cached_0_finish_bits_manager_id,
  output  io_clients_uncached_0_acquire_ready,
  input   io_clients_uncached_0_acquire_valid,
  input  [25:0] io_clients_uncached_0_acquire_bits_addr_block,
  input   io_clients_uncached_0_acquire_bits_client_xact_id,
  input  [2:0] io_clients_uncached_0_acquire_bits_addr_beat,
  input   io_clients_uncached_0_acquire_bits_is_builtin_type,
  input  [2:0] io_clients_uncached_0_acquire_bits_a_type,
  input  [11:0] io_clients_uncached_0_acquire_bits_union,
  input  [63:0] io_clients_uncached_0_acquire_bits_data,
  input   io_clients_uncached_0_grant_ready,
  output  io_clients_uncached_0_grant_valid,
  output [2:0] io_clients_uncached_0_grant_bits_addr_beat,
  output  io_clients_uncached_0_grant_bits_client_xact_id,
  output [1:0] io_clients_uncached_0_grant_bits_manager_xact_id,
  output  io_clients_uncached_0_grant_bits_is_builtin_type,
  output [3:0] io_clients_uncached_0_grant_bits_g_type,
  output [63:0] io_clients_uncached_0_grant_bits_data,
  input   io_managers_0_acquire_ready,
  output  io_managers_0_acquire_valid,
  output [25:0] io_managers_0_acquire_bits_addr_block,
  output  io_managers_0_acquire_bits_client_xact_id,
  output [2:0] io_managers_0_acquire_bits_addr_beat,
  output  io_managers_0_acquire_bits_is_builtin_type,
  output [2:0] io_managers_0_acquire_bits_a_type,
  output [11:0] io_managers_0_acquire_bits_union,
  output [63:0] io_managers_0_acquire_bits_data,
  output  io_managers_0_acquire_bits_client_id,
  output  io_managers_0_grant_ready,
  input   io_managers_0_grant_valid,
  input  [2:0] io_managers_0_grant_bits_addr_beat,
  input   io_managers_0_grant_bits_client_xact_id,
  input  [1:0] io_managers_0_grant_bits_manager_xact_id,
  input   io_managers_0_grant_bits_is_builtin_type,
  input  [3:0] io_managers_0_grant_bits_g_type,
  input  [63:0] io_managers_0_grant_bits_data,
  input   io_managers_0_grant_bits_client_id,
  input   io_managers_0_finish_ready,
  output  io_managers_0_finish_valid,
  output [1:0] io_managers_0_finish_bits_manager_xact_id,
  output  io_managers_0_probe_ready,
  input   io_managers_0_probe_valid,
  input  [25:0] io_managers_0_probe_bits_addr_block,
  input  [1:0] io_managers_0_probe_bits_p_type,
  input   io_managers_0_probe_bits_client_id,
  input   io_managers_0_release_ready,
  output  io_managers_0_release_valid,
  output [2:0] io_managers_0_release_bits_addr_beat,
  output [25:0] io_managers_0_release_bits_addr_block,
  output  io_managers_0_release_bits_client_xact_id,
  output  io_managers_0_release_bits_voluntary,
  output [2:0] io_managers_0_release_bits_r_type,
  output [63:0] io_managers_0_release_bits_data,
  output  io_managers_0_release_bits_client_id,
  input   io_managers_1_acquire_ready,
  output  io_managers_1_acquire_valid,
  output [25:0] io_managers_1_acquire_bits_addr_block,
  output  io_managers_1_acquire_bits_client_xact_id,
  output [2:0] io_managers_1_acquire_bits_addr_beat,
  output  io_managers_1_acquire_bits_is_builtin_type,
  output [2:0] io_managers_1_acquire_bits_a_type,
  output [11:0] io_managers_1_acquire_bits_union,
  output [63:0] io_managers_1_acquire_bits_data,
  output  io_managers_1_acquire_bits_client_id,
  output  io_managers_1_grant_ready,
  input   io_managers_1_grant_valid,
  input  [2:0] io_managers_1_grant_bits_addr_beat,
  input   io_managers_1_grant_bits_client_xact_id,
  input  [1:0] io_managers_1_grant_bits_manager_xact_id,
  input   io_managers_1_grant_bits_is_builtin_type,
  input  [3:0] io_managers_1_grant_bits_g_type,
  input  [63:0] io_managers_1_grant_bits_data,
  input   io_managers_1_grant_bits_client_id,
  input   io_managers_1_finish_ready,
  output  io_managers_1_finish_valid,
  output [1:0] io_managers_1_finish_bits_manager_xact_id,
  output  io_managers_1_probe_ready,
  input   io_managers_1_probe_valid,
  input  [25:0] io_managers_1_probe_bits_addr_block,
  input  [1:0] io_managers_1_probe_bits_p_type,
  input   io_managers_1_probe_bits_client_id,
  input   io_managers_1_release_ready,
  output  io_managers_1_release_valid,
  output [2:0] io_managers_1_release_bits_addr_beat,
  output [25:0] io_managers_1_release_bits_addr_block,
  output  io_managers_1_release_bits_client_xact_id,
  output  io_managers_1_release_bits_voluntary,
  output [2:0] io_managers_1_release_bits_r_type,
  output [63:0] io_managers_1_release_bits_data,
  output  io_managers_1_release_bits_client_id
);
  wire  TileLinkEnqueuer_4_clk;
  wire  TileLinkEnqueuer_4_reset;
  wire  TileLinkEnqueuer_4_io_client_acquire_ready;
  wire  TileLinkEnqueuer_4_io_client_acquire_valid;
  wire [1:0] TileLinkEnqueuer_4_io_client_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_client_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_4_io_client_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_4_io_client_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_4_io_client_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_4_io_client_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_4_io_client_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_4_io_client_grant_ready;
  wire  TileLinkEnqueuer_4_io_client_grant_valid;
  wire [1:0] TileLinkEnqueuer_4_io_client_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_client_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_4_io_client_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_4_io_client_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_4_io_client_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_4_io_client_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_4_io_client_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_4_io_client_grant_bits_payload_data;
  wire  TileLinkEnqueuer_4_io_client_finish_ready;
  wire  TileLinkEnqueuer_4_io_client_finish_valid;
  wire [1:0] TileLinkEnqueuer_4_io_client_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_client_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_4_io_client_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_4_io_client_probe_ready;
  wire  TileLinkEnqueuer_4_io_client_probe_valid;
  wire [1:0] TileLinkEnqueuer_4_io_client_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_client_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_4_io_client_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_4_io_client_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_4_io_client_release_ready;
  wire  TileLinkEnqueuer_4_io_client_release_valid;
  wire [1:0] TileLinkEnqueuer_4_io_client_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_client_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_4_io_client_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_4_io_client_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_4_io_client_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_4_io_client_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_4_io_client_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_4_io_client_release_bits_payload_data;
  wire  TileLinkEnqueuer_4_io_manager_acquire_ready;
  wire  TileLinkEnqueuer_4_io_manager_acquire_valid;
  wire [1:0] TileLinkEnqueuer_4_io_manager_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_manager_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_4_io_manager_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_4_io_manager_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_4_io_manager_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_4_io_manager_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_4_io_manager_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_4_io_manager_grant_ready;
  wire  TileLinkEnqueuer_4_io_manager_grant_valid;
  wire [1:0] TileLinkEnqueuer_4_io_manager_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_manager_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_4_io_manager_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_4_io_manager_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_4_io_manager_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_4_io_manager_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_4_io_manager_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_4_io_manager_grant_bits_payload_data;
  wire  TileLinkEnqueuer_4_io_manager_finish_ready;
  wire  TileLinkEnqueuer_4_io_manager_finish_valid;
  wire [1:0] TileLinkEnqueuer_4_io_manager_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_manager_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_4_io_manager_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_4_io_manager_probe_ready;
  wire  TileLinkEnqueuer_4_io_manager_probe_valid;
  wire [1:0] TileLinkEnqueuer_4_io_manager_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_manager_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_4_io_manager_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_4_io_manager_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_4_io_manager_release_ready;
  wire  TileLinkEnqueuer_4_io_manager_release_valid;
  wire [1:0] TileLinkEnqueuer_4_io_manager_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_4_io_manager_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_4_io_manager_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_4_io_manager_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_4_io_manager_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_4_io_manager_release_bits_payload_data;
  wire  ClientTileLinkNetworkPort_1_clk;
  wire  ClientTileLinkNetworkPort_1_reset;
  wire  ClientTileLinkNetworkPort_1_io_client_acquire_ready;
  wire  ClientTileLinkNetworkPort_1_io_client_acquire_valid;
  wire [25:0] ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_block;
  wire  ClientTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id;
  wire [2:0] ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat;
  wire  ClientTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type;
  wire [2:0] ClientTileLinkNetworkPort_1_io_client_acquire_bits_a_type;
  wire [11:0] ClientTileLinkNetworkPort_1_io_client_acquire_bits_union;
  wire [63:0] ClientTileLinkNetworkPort_1_io_client_acquire_bits_data;
  wire  ClientTileLinkNetworkPort_1_io_client_probe_ready;
  wire  ClientTileLinkNetworkPort_1_io_client_probe_valid;
  wire [25:0] ClientTileLinkNetworkPort_1_io_client_probe_bits_addr_block;
  wire [1:0] ClientTileLinkNetworkPort_1_io_client_probe_bits_p_type;
  wire  ClientTileLinkNetworkPort_1_io_client_release_ready;
  wire  ClientTileLinkNetworkPort_1_io_client_release_valid;
  wire [2:0] ClientTileLinkNetworkPort_1_io_client_release_bits_addr_beat;
  wire [25:0] ClientTileLinkNetworkPort_1_io_client_release_bits_addr_block;
  wire  ClientTileLinkNetworkPort_1_io_client_release_bits_client_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_client_release_bits_voluntary;
  wire [2:0] ClientTileLinkNetworkPort_1_io_client_release_bits_r_type;
  wire [63:0] ClientTileLinkNetworkPort_1_io_client_release_bits_data;
  wire  ClientTileLinkNetworkPort_1_io_client_grant_ready;
  wire  ClientTileLinkNetworkPort_1_io_client_grant_valid;
  wire [2:0] ClientTileLinkNetworkPort_1_io_client_grant_bits_addr_beat;
  wire  ClientTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id;
  wire [1:0] ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type;
  wire [3:0] ClientTileLinkNetworkPort_1_io_client_grant_bits_g_type;
  wire [63:0] ClientTileLinkNetworkPort_1_io_client_grant_bits_data;
  wire  ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_id;
  wire  ClientTileLinkNetworkPort_1_io_client_finish_ready;
  wire  ClientTileLinkNetworkPort_1_io_client_finish_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_id;
  wire  ClientTileLinkNetworkPort_1_io_network_acquire_ready;
  wire  ClientTileLinkNetworkPort_1_io_network_acquire_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_src;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_dst;
  wire [25:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block;
  wire  ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id;
  wire [2:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat;
  wire  ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type;
  wire [2:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type;
  wire [11:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_union;
  wire [63:0] ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_data;
  wire  ClientTileLinkNetworkPort_1_io_network_grant_ready;
  wire  ClientTileLinkNetworkPort_1_io_network_grant_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_header_src;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_header_dst;
  wire [2:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat;
  wire  ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type;
  wire [3:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type;
  wire [63:0] ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_data;
  wire  ClientTileLinkNetworkPort_1_io_network_finish_ready;
  wire  ClientTileLinkNetworkPort_1_io_network_finish_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_finish_bits_header_src;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_finish_bits_header_dst;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_network_probe_ready;
  wire  ClientTileLinkNetworkPort_1_io_network_probe_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_probe_bits_header_src;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_probe_bits_header_dst;
  wire [25:0] ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type;
  wire  ClientTileLinkNetworkPort_1_io_network_release_ready;
  wire  ClientTileLinkNetworkPort_1_io_network_release_valid;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_release_bits_header_src;
  wire [1:0] ClientTileLinkNetworkPort_1_io_network_release_bits_header_dst;
  wire [2:0] ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat;
  wire [25:0] ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block;
  wire  ClientTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id;
  wire  ClientTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary;
  wire [2:0] ClientTileLinkNetworkPort_1_io_network_release_bits_payload_r_type;
  wire [63:0] ClientTileLinkNetworkPort_1_io_network_release_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_clk;
  wire  TileLinkEnqueuer_1_1_reset;
  wire  TileLinkEnqueuer_1_1_io_client_acquire_ready;
  wire  TileLinkEnqueuer_1_1_io_client_acquire_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_io_client_grant_ready;
  wire  TileLinkEnqueuer_1_1_io_client_grant_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_1_1_io_client_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_1_1_io_client_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_1_1_io_client_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_1_1_io_client_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_1_1_io_client_grant_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_io_client_finish_ready;
  wire  TileLinkEnqueuer_1_1_io_client_finish_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_1_1_io_client_probe_ready;
  wire  TileLinkEnqueuer_1_1_io_client_probe_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_1_1_io_client_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_1_1_io_client_release_ready;
  wire  TileLinkEnqueuer_1_1_io_client_release_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_client_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_1_1_io_client_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_1_1_io_client_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_1_1_io_client_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_1_1_io_client_release_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_io_manager_acquire_ready;
  wire  TileLinkEnqueuer_1_1_io_manager_acquire_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_io_manager_grant_ready;
  wire  TileLinkEnqueuer_1_1_io_manager_grant_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_data;
  wire  TileLinkEnqueuer_1_1_io_manager_finish_ready;
  wire  TileLinkEnqueuer_1_1_io_manager_finish_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_1_1_io_manager_probe_ready;
  wire  TileLinkEnqueuer_1_1_io_manager_probe_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_1_1_io_manager_release_ready;
  wire  TileLinkEnqueuer_1_1_io_manager_release_valid;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_1_1_io_manager_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_1_1_io_manager_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_1_1_io_manager_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_1_1_io_manager_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_1_1_io_manager_release_bits_payload_data;
  wire  ClientUncachedTileLinkNetworkPort_1_clk;
  wire  ClientUncachedTileLinkNetworkPort_1_reset;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_acquire_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_acquire_valid;
  wire [25:0] ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_block;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_a_type;
  wire [11:0] ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_union;
  wire [63:0] ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_data;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_grant_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_grant_valid;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_addr_beat;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id;
  wire  ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type;
  wire [3:0] ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_g_type;
  wire [63:0] ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_data;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_acquire_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_acquire_valid;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_src;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_dst;
  wire [25:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type;
  wire [11:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_union;
  wire [63:0] ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_data;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_grant_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_grant_valid;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_src;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_dst;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type;
  wire [3:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type;
  wire [63:0] ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_data;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_finish_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_finish_valid;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_src;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_dst;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_probe_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_probe_valid;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_src;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_dst;
  wire [25:0] ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_release_ready;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_release_valid;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_src;
  wire [1:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_dst;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat;
  wire [25:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id;
  wire  ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary;
  wire [2:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_r_type;
  wire [63:0] ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_2_clk;
  wire  ManagerTileLinkNetworkPort_2_reset;
  wire  ManagerTileLinkNetworkPort_2_io_manager_acquire_ready;
  wire  ManagerTileLinkNetworkPort_2_io_manager_acquire_valid;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_block;
  wire  ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_xact_id;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_beat;
  wire  ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_is_builtin_type;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_a_type;
  wire [11:0] ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_union;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_data;
  wire  ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_grant_ready;
  wire  ManagerTileLinkNetworkPort_2_io_manager_grant_valid;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_manager_grant_bits_addr_beat;
  wire  ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_xact_id;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_manager_grant_bits_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_grant_bits_is_builtin_type;
  wire [3:0] ManagerTileLinkNetworkPort_2_io_manager_grant_bits_g_type;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_manager_grant_bits_data;
  wire  ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_finish_ready;
  wire  ManagerTileLinkNetworkPort_2_io_manager_finish_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_manager_finish_bits_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_probe_ready;
  wire  ManagerTileLinkNetworkPort_2_io_manager_probe_valid;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_manager_probe_bits_addr_block;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_manager_probe_bits_p_type;
  wire  ManagerTileLinkNetworkPort_2_io_manager_probe_bits_client_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_release_ready;
  wire  ManagerTileLinkNetworkPort_2_io_manager_release_valid;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_beat;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_block;
  wire  ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_manager_release_bits_voluntary;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_manager_release_bits_r_type;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_manager_release_bits_data;
  wire  ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_id;
  wire  ManagerTileLinkNetworkPort_2_io_network_acquire_ready;
  wire  ManagerTileLinkNetworkPort_2_io_network_acquire_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_dst;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_block;
  wire  ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_client_xact_id;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_beat;
  wire  ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_is_builtin_type;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_a_type;
  wire [11:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_union;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_2_io_network_grant_ready;
  wire  ManagerTileLinkNetworkPort_2_io_network_grant_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_dst;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_addr_beat;
  wire  ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_client_xact_id;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_is_builtin_type;
  wire [3:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_g_type;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_2_io_network_finish_ready;
  wire  ManagerTileLinkNetworkPort_2_io_network_finish_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_dst;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_finish_bits_payload_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_network_probe_ready;
  wire  ManagerTileLinkNetworkPort_2_io_network_probe_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_dst;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_addr_block;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_p_type;
  wire  ManagerTileLinkNetworkPort_2_io_network_release_ready;
  wire  ManagerTileLinkNetworkPort_2_io_network_release_valid;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_header_dst;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_beat;
  wire [25:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_block;
  wire  ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_client_xact_id;
  wire  ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_voluntary;
  wire [2:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_r_type;
  wire [63:0] ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_clk;
  wire  TileLinkEnqueuer_2_1_reset;
  wire  TileLinkEnqueuer_2_1_io_client_acquire_ready;
  wire  TileLinkEnqueuer_2_1_io_client_acquire_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_io_client_grant_ready;
  wire  TileLinkEnqueuer_2_1_io_client_grant_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_2_1_io_client_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_2_1_io_client_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_2_1_io_client_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_2_1_io_client_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_2_1_io_client_grant_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_io_client_finish_ready;
  wire  TileLinkEnqueuer_2_1_io_client_finish_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_2_1_io_client_probe_ready;
  wire  TileLinkEnqueuer_2_1_io_client_probe_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_2_1_io_client_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_2_1_io_client_release_ready;
  wire  TileLinkEnqueuer_2_1_io_client_release_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_client_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_2_1_io_client_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_2_1_io_client_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_2_1_io_client_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_2_1_io_client_release_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_io_manager_acquire_ready;
  wire  TileLinkEnqueuer_2_1_io_manager_acquire_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_io_manager_grant_ready;
  wire  TileLinkEnqueuer_2_1_io_manager_grant_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_data;
  wire  TileLinkEnqueuer_2_1_io_manager_finish_ready;
  wire  TileLinkEnqueuer_2_1_io_manager_finish_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_2_1_io_manager_probe_ready;
  wire  TileLinkEnqueuer_2_1_io_manager_probe_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_2_1_io_manager_release_ready;
  wire  TileLinkEnqueuer_2_1_io_manager_release_valid;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_2_1_io_manager_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_2_1_io_manager_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_2_1_io_manager_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_2_1_io_manager_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_2_1_io_manager_release_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_1_1_clk;
  wire  ManagerTileLinkNetworkPort_1_1_reset;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_acquire_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_acquire_valid;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_block;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_xact_id;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_beat;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_is_builtin_type;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_a_type;
  wire [11:0] ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_union;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_data;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_grant_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_grant_valid;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_addr_beat;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_xact_id;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_is_builtin_type;
  wire [3:0] ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_g_type;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_data;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_finish_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_finish_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_manager_finish_bits_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_probe_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_probe_valid;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_addr_block;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_p_type;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_client_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_release_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_release_valid;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_beat;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_block;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_voluntary;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_r_type;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_data;
  wire  ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_acquire_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_acquire_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_dst;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_block;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_client_xact_id;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_beat;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_is_builtin_type;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_a_type;
  wire [11:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_union;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_grant_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_grant_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_dst;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_addr_beat;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_client_xact_id;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_is_builtin_type;
  wire [3:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_g_type;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_data;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_finish_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_finish_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_dst;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_payload_manager_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_probe_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_probe_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_dst;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_addr_block;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_p_type;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_release_ready;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_release_valid;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_src;
  wire [1:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_dst;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_beat;
  wire [25:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_block;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_client_xact_id;
  wire  ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_voluntary;
  wire [2:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_r_type;
  wire [63:0] ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_clk;
  wire  TileLinkEnqueuer_3_1_reset;
  wire  TileLinkEnqueuer_3_1_io_client_acquire_ready;
  wire  TileLinkEnqueuer_3_1_io_client_acquire_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_io_client_grant_ready;
  wire  TileLinkEnqueuer_3_1_io_client_grant_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_3_1_io_client_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_3_1_io_client_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_3_1_io_client_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_3_1_io_client_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_3_1_io_client_grant_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_io_client_finish_ready;
  wire  TileLinkEnqueuer_3_1_io_client_finish_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_3_1_io_client_probe_ready;
  wire  TileLinkEnqueuer_3_1_io_client_probe_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_3_1_io_client_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_3_1_io_client_release_ready;
  wire  TileLinkEnqueuer_3_1_io_client_release_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_client_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_3_1_io_client_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_3_1_io_client_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_3_1_io_client_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_3_1_io_client_release_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_io_manager_acquire_ready;
  wire  TileLinkEnqueuer_3_1_io_manager_acquire_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_block;
  wire  TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_client_xact_id;
  wire [2:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_is_builtin_type;
  wire [2:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_a_type;
  wire [11:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_union;
  wire [63:0] TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_io_manager_grant_ready;
  wire  TileLinkEnqueuer_3_1_io_manager_grant_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_addr_beat;
  wire  TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_client_xact_id;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_is_builtin_type;
  wire [3:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_g_type;
  wire [63:0] TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_data;
  wire  TileLinkEnqueuer_3_1_io_manager_finish_ready;
  wire  TileLinkEnqueuer_3_1_io_manager_finish_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_finish_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_finish_bits_header_dst;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_finish_bits_payload_manager_xact_id;
  wire  TileLinkEnqueuer_3_1_io_manager_probe_ready;
  wire  TileLinkEnqueuer_3_1_io_manager_probe_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_probe_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_probe_bits_header_dst;
  wire [25:0] TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_addr_block;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_p_type;
  wire  TileLinkEnqueuer_3_1_io_manager_release_ready;
  wire  TileLinkEnqueuer_3_1_io_manager_release_valid;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_release_bits_header_src;
  wire [1:0] TileLinkEnqueuer_3_1_io_manager_release_bits_header_dst;
  wire [2:0] TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_beat;
  wire [25:0] TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_block;
  wire  TileLinkEnqueuer_3_1_io_manager_release_bits_payload_client_xact_id;
  wire  TileLinkEnqueuer_3_1_io_manager_release_bits_payload_voluntary;
  wire [2:0] TileLinkEnqueuer_3_1_io_manager_release_bits_payload_r_type;
  wire [63:0] TileLinkEnqueuer_3_1_io_manager_release_bits_payload_data;
  wire  acqNet_clk;
  wire  acqNet_reset;
  wire  acqNet_io_in_0_ready;
  wire  acqNet_io_in_0_valid;
  wire [1:0] acqNet_io_in_0_bits_header_src;
  wire [1:0] acqNet_io_in_0_bits_header_dst;
  wire [25:0] acqNet_io_in_0_bits_payload_addr_block;
  wire  acqNet_io_in_0_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_in_0_bits_payload_addr_beat;
  wire  acqNet_io_in_0_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_in_0_bits_payload_a_type;
  wire [11:0] acqNet_io_in_0_bits_payload_union;
  wire [63:0] acqNet_io_in_0_bits_payload_data;
  wire  acqNet_io_in_1_ready;
  wire  acqNet_io_in_1_valid;
  wire [1:0] acqNet_io_in_1_bits_header_src;
  wire [1:0] acqNet_io_in_1_bits_header_dst;
  wire [25:0] acqNet_io_in_1_bits_payload_addr_block;
  wire  acqNet_io_in_1_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_in_1_bits_payload_addr_beat;
  wire  acqNet_io_in_1_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_in_1_bits_payload_a_type;
  wire [11:0] acqNet_io_in_1_bits_payload_union;
  wire [63:0] acqNet_io_in_1_bits_payload_data;
  wire  acqNet_io_in_2_ready;
  wire  acqNet_io_in_2_valid;
  wire [1:0] acqNet_io_in_2_bits_header_src;
  wire [1:0] acqNet_io_in_2_bits_header_dst;
  wire [25:0] acqNet_io_in_2_bits_payload_addr_block;
  wire  acqNet_io_in_2_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_in_2_bits_payload_addr_beat;
  wire  acqNet_io_in_2_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_in_2_bits_payload_a_type;
  wire [11:0] acqNet_io_in_2_bits_payload_union;
  wire [63:0] acqNet_io_in_2_bits_payload_data;
  wire  acqNet_io_in_3_ready;
  wire  acqNet_io_in_3_valid;
  wire [1:0] acqNet_io_in_3_bits_header_src;
  wire [1:0] acqNet_io_in_3_bits_header_dst;
  wire [25:0] acqNet_io_in_3_bits_payload_addr_block;
  wire  acqNet_io_in_3_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_in_3_bits_payload_addr_beat;
  wire  acqNet_io_in_3_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_in_3_bits_payload_a_type;
  wire [11:0] acqNet_io_in_3_bits_payload_union;
  wire [63:0] acqNet_io_in_3_bits_payload_data;
  wire  acqNet_io_out_0_ready;
  wire  acqNet_io_out_0_valid;
  wire [1:0] acqNet_io_out_0_bits_header_src;
  wire [1:0] acqNet_io_out_0_bits_header_dst;
  wire [25:0] acqNet_io_out_0_bits_payload_addr_block;
  wire  acqNet_io_out_0_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_out_0_bits_payload_addr_beat;
  wire  acqNet_io_out_0_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_out_0_bits_payload_a_type;
  wire [11:0] acqNet_io_out_0_bits_payload_union;
  wire [63:0] acqNet_io_out_0_bits_payload_data;
  wire  acqNet_io_out_1_ready;
  wire  acqNet_io_out_1_valid;
  wire [1:0] acqNet_io_out_1_bits_header_src;
  wire [1:0] acqNet_io_out_1_bits_header_dst;
  wire [25:0] acqNet_io_out_1_bits_payload_addr_block;
  wire  acqNet_io_out_1_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_out_1_bits_payload_addr_beat;
  wire  acqNet_io_out_1_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_out_1_bits_payload_a_type;
  wire [11:0] acqNet_io_out_1_bits_payload_union;
  wire [63:0] acqNet_io_out_1_bits_payload_data;
  wire  acqNet_io_out_2_ready;
  wire  acqNet_io_out_2_valid;
  wire [1:0] acqNet_io_out_2_bits_header_src;
  wire [1:0] acqNet_io_out_2_bits_header_dst;
  wire [25:0] acqNet_io_out_2_bits_payload_addr_block;
  wire  acqNet_io_out_2_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_out_2_bits_payload_addr_beat;
  wire  acqNet_io_out_2_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_out_2_bits_payload_a_type;
  wire [11:0] acqNet_io_out_2_bits_payload_union;
  wire [63:0] acqNet_io_out_2_bits_payload_data;
  wire  acqNet_io_out_3_ready;
  wire  acqNet_io_out_3_valid;
  wire [1:0] acqNet_io_out_3_bits_header_src;
  wire [1:0] acqNet_io_out_3_bits_header_dst;
  wire [25:0] acqNet_io_out_3_bits_payload_addr_block;
  wire  acqNet_io_out_3_bits_payload_client_xact_id;
  wire [2:0] acqNet_io_out_3_bits_payload_addr_beat;
  wire  acqNet_io_out_3_bits_payload_is_builtin_type;
  wire [2:0] acqNet_io_out_3_bits_payload_a_type;
  wire [11:0] acqNet_io_out_3_bits_payload_union;
  wire [63:0] acqNet_io_out_3_bits_payload_data;
  wire  relNet_clk;
  wire  relNet_reset;
  wire  relNet_io_in_0_ready;
  wire  relNet_io_in_0_valid;
  wire [1:0] relNet_io_in_0_bits_header_src;
  wire [1:0] relNet_io_in_0_bits_header_dst;
  wire [2:0] relNet_io_in_0_bits_payload_addr_beat;
  wire [25:0] relNet_io_in_0_bits_payload_addr_block;
  wire  relNet_io_in_0_bits_payload_client_xact_id;
  wire  relNet_io_in_0_bits_payload_voluntary;
  wire [2:0] relNet_io_in_0_bits_payload_r_type;
  wire [63:0] relNet_io_in_0_bits_payload_data;
  wire  relNet_io_in_1_ready;
  wire  relNet_io_in_1_valid;
  wire [1:0] relNet_io_in_1_bits_header_src;
  wire [1:0] relNet_io_in_1_bits_header_dst;
  wire [2:0] relNet_io_in_1_bits_payload_addr_beat;
  wire [25:0] relNet_io_in_1_bits_payload_addr_block;
  wire  relNet_io_in_1_bits_payload_client_xact_id;
  wire  relNet_io_in_1_bits_payload_voluntary;
  wire [2:0] relNet_io_in_1_bits_payload_r_type;
  wire [63:0] relNet_io_in_1_bits_payload_data;
  wire  relNet_io_in_2_ready;
  wire  relNet_io_in_2_valid;
  wire [1:0] relNet_io_in_2_bits_header_src;
  wire [1:0] relNet_io_in_2_bits_header_dst;
  wire [2:0] relNet_io_in_2_bits_payload_addr_beat;
  wire [25:0] relNet_io_in_2_bits_payload_addr_block;
  wire  relNet_io_in_2_bits_payload_client_xact_id;
  wire  relNet_io_in_2_bits_payload_voluntary;
  wire [2:0] relNet_io_in_2_bits_payload_r_type;
  wire [63:0] relNet_io_in_2_bits_payload_data;
  wire  relNet_io_in_3_ready;
  wire  relNet_io_in_3_valid;
  wire [1:0] relNet_io_in_3_bits_header_src;
  wire [1:0] relNet_io_in_3_bits_header_dst;
  wire [2:0] relNet_io_in_3_bits_payload_addr_beat;
  wire [25:0] relNet_io_in_3_bits_payload_addr_block;
  wire  relNet_io_in_3_bits_payload_client_xact_id;
  wire  relNet_io_in_3_bits_payload_voluntary;
  wire [2:0] relNet_io_in_3_bits_payload_r_type;
  wire [63:0] relNet_io_in_3_bits_payload_data;
  wire  relNet_io_out_0_ready;
  wire  relNet_io_out_0_valid;
  wire [1:0] relNet_io_out_0_bits_header_src;
  wire [1:0] relNet_io_out_0_bits_header_dst;
  wire [2:0] relNet_io_out_0_bits_payload_addr_beat;
  wire [25:0] relNet_io_out_0_bits_payload_addr_block;
  wire  relNet_io_out_0_bits_payload_client_xact_id;
  wire  relNet_io_out_0_bits_payload_voluntary;
  wire [2:0] relNet_io_out_0_bits_payload_r_type;
  wire [63:0] relNet_io_out_0_bits_payload_data;
  wire  relNet_io_out_1_ready;
  wire  relNet_io_out_1_valid;
  wire [1:0] relNet_io_out_1_bits_header_src;
  wire [1:0] relNet_io_out_1_bits_header_dst;
  wire [2:0] relNet_io_out_1_bits_payload_addr_beat;
  wire [25:0] relNet_io_out_1_bits_payload_addr_block;
  wire  relNet_io_out_1_bits_payload_client_xact_id;
  wire  relNet_io_out_1_bits_payload_voluntary;
  wire [2:0] relNet_io_out_1_bits_payload_r_type;
  wire [63:0] relNet_io_out_1_bits_payload_data;
  wire  relNet_io_out_2_ready;
  wire  relNet_io_out_2_valid;
  wire [1:0] relNet_io_out_2_bits_header_src;
  wire [1:0] relNet_io_out_2_bits_header_dst;
  wire [2:0] relNet_io_out_2_bits_payload_addr_beat;
  wire [25:0] relNet_io_out_2_bits_payload_addr_block;
  wire  relNet_io_out_2_bits_payload_client_xact_id;
  wire  relNet_io_out_2_bits_payload_voluntary;
  wire [2:0] relNet_io_out_2_bits_payload_r_type;
  wire [63:0] relNet_io_out_2_bits_payload_data;
  wire  relNet_io_out_3_ready;
  wire  relNet_io_out_3_valid;
  wire [1:0] relNet_io_out_3_bits_header_src;
  wire [1:0] relNet_io_out_3_bits_header_dst;
  wire [2:0] relNet_io_out_3_bits_payload_addr_beat;
  wire [25:0] relNet_io_out_3_bits_payload_addr_block;
  wire  relNet_io_out_3_bits_payload_client_xact_id;
  wire  relNet_io_out_3_bits_payload_voluntary;
  wire [2:0] relNet_io_out_3_bits_payload_r_type;
  wire [63:0] relNet_io_out_3_bits_payload_data;
  wire  prbNet_clk;
  wire  prbNet_reset;
  wire  prbNet_io_in_0_ready;
  wire  prbNet_io_in_0_valid;
  wire [1:0] prbNet_io_in_0_bits_header_src;
  wire [1:0] prbNet_io_in_0_bits_header_dst;
  wire [25:0] prbNet_io_in_0_bits_payload_addr_block;
  wire [1:0] prbNet_io_in_0_bits_payload_p_type;
  wire  prbNet_io_in_1_ready;
  wire  prbNet_io_in_1_valid;
  wire [1:0] prbNet_io_in_1_bits_header_src;
  wire [1:0] prbNet_io_in_1_bits_header_dst;
  wire [25:0] prbNet_io_in_1_bits_payload_addr_block;
  wire [1:0] prbNet_io_in_1_bits_payload_p_type;
  wire  prbNet_io_in_2_ready;
  wire  prbNet_io_in_2_valid;
  wire [1:0] prbNet_io_in_2_bits_header_src;
  wire [1:0] prbNet_io_in_2_bits_header_dst;
  wire [25:0] prbNet_io_in_2_bits_payload_addr_block;
  wire [1:0] prbNet_io_in_2_bits_payload_p_type;
  wire  prbNet_io_in_3_ready;
  wire  prbNet_io_in_3_valid;
  wire [1:0] prbNet_io_in_3_bits_header_src;
  wire [1:0] prbNet_io_in_3_bits_header_dst;
  wire [25:0] prbNet_io_in_3_bits_payload_addr_block;
  wire [1:0] prbNet_io_in_3_bits_payload_p_type;
  wire  prbNet_io_out_0_ready;
  wire  prbNet_io_out_0_valid;
  wire [1:0] prbNet_io_out_0_bits_header_src;
  wire [1:0] prbNet_io_out_0_bits_header_dst;
  wire [25:0] prbNet_io_out_0_bits_payload_addr_block;
  wire [1:0] prbNet_io_out_0_bits_payload_p_type;
  wire  prbNet_io_out_1_ready;
  wire  prbNet_io_out_1_valid;
  wire [1:0] prbNet_io_out_1_bits_header_src;
  wire [1:0] prbNet_io_out_1_bits_header_dst;
  wire [25:0] prbNet_io_out_1_bits_payload_addr_block;
  wire [1:0] prbNet_io_out_1_bits_payload_p_type;
  wire  prbNet_io_out_2_ready;
  wire  prbNet_io_out_2_valid;
  wire [1:0] prbNet_io_out_2_bits_header_src;
  wire [1:0] prbNet_io_out_2_bits_header_dst;
  wire [25:0] prbNet_io_out_2_bits_payload_addr_block;
  wire [1:0] prbNet_io_out_2_bits_payload_p_type;
  wire  prbNet_io_out_3_ready;
  wire  prbNet_io_out_3_valid;
  wire [1:0] prbNet_io_out_3_bits_header_src;
  wire [1:0] prbNet_io_out_3_bits_header_dst;
  wire [25:0] prbNet_io_out_3_bits_payload_addr_block;
  wire [1:0] prbNet_io_out_3_bits_payload_p_type;
  wire  gntNet_clk;
  wire  gntNet_reset;
  wire  gntNet_io_in_0_ready;
  wire  gntNet_io_in_0_valid;
  wire [1:0] gntNet_io_in_0_bits_header_src;
  wire [1:0] gntNet_io_in_0_bits_header_dst;
  wire [2:0] gntNet_io_in_0_bits_payload_addr_beat;
  wire  gntNet_io_in_0_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_in_0_bits_payload_manager_xact_id;
  wire  gntNet_io_in_0_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_in_0_bits_payload_g_type;
  wire [63:0] gntNet_io_in_0_bits_payload_data;
  wire  gntNet_io_in_1_ready;
  wire  gntNet_io_in_1_valid;
  wire [1:0] gntNet_io_in_1_bits_header_src;
  wire [1:0] gntNet_io_in_1_bits_header_dst;
  wire [2:0] gntNet_io_in_1_bits_payload_addr_beat;
  wire  gntNet_io_in_1_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_in_1_bits_payload_manager_xact_id;
  wire  gntNet_io_in_1_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_in_1_bits_payload_g_type;
  wire [63:0] gntNet_io_in_1_bits_payload_data;
  wire  gntNet_io_in_2_ready;
  wire  gntNet_io_in_2_valid;
  wire [1:0] gntNet_io_in_2_bits_header_src;
  wire [1:0] gntNet_io_in_2_bits_header_dst;
  wire [2:0] gntNet_io_in_2_bits_payload_addr_beat;
  wire  gntNet_io_in_2_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_in_2_bits_payload_manager_xact_id;
  wire  gntNet_io_in_2_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_in_2_bits_payload_g_type;
  wire [63:0] gntNet_io_in_2_bits_payload_data;
  wire  gntNet_io_in_3_ready;
  wire  gntNet_io_in_3_valid;
  wire [1:0] gntNet_io_in_3_bits_header_src;
  wire [1:0] gntNet_io_in_3_bits_header_dst;
  wire [2:0] gntNet_io_in_3_bits_payload_addr_beat;
  wire  gntNet_io_in_3_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_in_3_bits_payload_manager_xact_id;
  wire  gntNet_io_in_3_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_in_3_bits_payload_g_type;
  wire [63:0] gntNet_io_in_3_bits_payload_data;
  wire  gntNet_io_out_0_ready;
  wire  gntNet_io_out_0_valid;
  wire [1:0] gntNet_io_out_0_bits_header_src;
  wire [1:0] gntNet_io_out_0_bits_header_dst;
  wire [2:0] gntNet_io_out_0_bits_payload_addr_beat;
  wire  gntNet_io_out_0_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_out_0_bits_payload_manager_xact_id;
  wire  gntNet_io_out_0_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_out_0_bits_payload_g_type;
  wire [63:0] gntNet_io_out_0_bits_payload_data;
  wire  gntNet_io_out_1_ready;
  wire  gntNet_io_out_1_valid;
  wire [1:0] gntNet_io_out_1_bits_header_src;
  wire [1:0] gntNet_io_out_1_bits_header_dst;
  wire [2:0] gntNet_io_out_1_bits_payload_addr_beat;
  wire  gntNet_io_out_1_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_out_1_bits_payload_manager_xact_id;
  wire  gntNet_io_out_1_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_out_1_bits_payload_g_type;
  wire [63:0] gntNet_io_out_1_bits_payload_data;
  wire  gntNet_io_out_2_ready;
  wire  gntNet_io_out_2_valid;
  wire [1:0] gntNet_io_out_2_bits_header_src;
  wire [1:0] gntNet_io_out_2_bits_header_dst;
  wire [2:0] gntNet_io_out_2_bits_payload_addr_beat;
  wire  gntNet_io_out_2_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_out_2_bits_payload_manager_xact_id;
  wire  gntNet_io_out_2_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_out_2_bits_payload_g_type;
  wire [63:0] gntNet_io_out_2_bits_payload_data;
  wire  gntNet_io_out_3_ready;
  wire  gntNet_io_out_3_valid;
  wire [1:0] gntNet_io_out_3_bits_header_src;
  wire [1:0] gntNet_io_out_3_bits_header_dst;
  wire [2:0] gntNet_io_out_3_bits_payload_addr_beat;
  wire  gntNet_io_out_3_bits_payload_client_xact_id;
  wire [1:0] gntNet_io_out_3_bits_payload_manager_xact_id;
  wire  gntNet_io_out_3_bits_payload_is_builtin_type;
  wire [3:0] gntNet_io_out_3_bits_payload_g_type;
  wire [63:0] gntNet_io_out_3_bits_payload_data;
  wire  ackNet_clk;
  wire  ackNet_reset;
  wire  ackNet_io_in_0_ready;
  wire  ackNet_io_in_0_valid;
  wire [1:0] ackNet_io_in_0_bits_header_src;
  wire [1:0] ackNet_io_in_0_bits_header_dst;
  wire [1:0] ackNet_io_in_0_bits_payload_manager_xact_id;
  wire  ackNet_io_in_1_ready;
  wire  ackNet_io_in_1_valid;
  wire [1:0] ackNet_io_in_1_bits_header_src;
  wire [1:0] ackNet_io_in_1_bits_header_dst;
  wire [1:0] ackNet_io_in_1_bits_payload_manager_xact_id;
  wire  ackNet_io_in_2_ready;
  wire  ackNet_io_in_2_valid;
  wire [1:0] ackNet_io_in_2_bits_header_src;
  wire [1:0] ackNet_io_in_2_bits_header_dst;
  wire [1:0] ackNet_io_in_2_bits_payload_manager_xact_id;
  wire  ackNet_io_in_3_ready;
  wire  ackNet_io_in_3_valid;
  wire [1:0] ackNet_io_in_3_bits_header_src;
  wire [1:0] ackNet_io_in_3_bits_header_dst;
  wire [1:0] ackNet_io_in_3_bits_payload_manager_xact_id;
  wire  ackNet_io_out_0_ready;
  wire  ackNet_io_out_0_valid;
  wire [1:0] ackNet_io_out_0_bits_header_src;
  wire [1:0] ackNet_io_out_0_bits_header_dst;
  wire [1:0] ackNet_io_out_0_bits_payload_manager_xact_id;
  wire  ackNet_io_out_1_ready;
  wire  ackNet_io_out_1_valid;
  wire [1:0] ackNet_io_out_1_bits_header_src;
  wire [1:0] ackNet_io_out_1_bits_header_dst;
  wire [1:0] ackNet_io_out_1_bits_payload_manager_xact_id;
  wire  ackNet_io_out_2_ready;
  wire  ackNet_io_out_2_valid;
  wire [1:0] ackNet_io_out_2_bits_header_src;
  wire [1:0] ackNet_io_out_2_bits_header_dst;
  wire [1:0] ackNet_io_out_2_bits_payload_manager_xact_id;
  wire  ackNet_io_out_3_ready;
  wire  ackNet_io_out_3_valid;
  wire [1:0] ackNet_io_out_3_bits_header_src;
  wire [1:0] ackNet_io_out_3_bits_header_dst;
  wire [1:0] ackNet_io_out_3_bits_payload_manager_xact_id;
  wire  T_12724_ready;
  wire  T_12724_valid;
  wire [1:0] T_12724_bits_header_src;
  wire [1:0] T_12724_bits_header_dst;
  wire [25:0] T_12724_bits_payload_addr_block;
  wire  T_12724_bits_payload_client_xact_id;
  wire [2:0] T_12724_bits_payload_addr_beat;
  wire  T_12724_bits_payload_is_builtin_type;
  wire [2:0] T_12724_bits_payload_a_type;
  wire [11:0] T_12724_bits_payload_union;
  wire [63:0] T_12724_bits_payload_data;
  wire [2:0] T_12952;
  wire [1:0] T_12953;
  wire  T_13294_ready;
  wire  T_13294_valid;
  wire [1:0] T_13294_bits_header_src;
  wire [1:0] T_13294_bits_header_dst;
  wire [25:0] T_13294_bits_payload_addr_block;
  wire  T_13294_bits_payload_client_xact_id;
  wire [2:0] T_13294_bits_payload_addr_beat;
  wire  T_13294_bits_payload_is_builtin_type;
  wire [2:0] T_13294_bits_payload_a_type;
  wire [11:0] T_13294_bits_payload_union;
  wire [63:0] T_13294_bits_payload_data;
  wire [2:0] T_13522;
  wire [1:0] T_13523;
  wire  T_13624_ready;
  wire  T_13624_valid;
  wire [1:0] T_13624_bits_header_src;
  wire [1:0] T_13624_bits_header_dst;
  wire [25:0] T_13624_bits_payload_addr_block;
  wire  T_13624_bits_payload_client_xact_id;
  wire [2:0] T_13624_bits_payload_addr_beat;
  wire  T_13624_bits_payload_is_builtin_type;
  wire [2:0] T_13624_bits_payload_a_type;
  wire [11:0] T_13624_bits_payload_union;
  wire [63:0] T_13624_bits_payload_data;
  wire [2:0] T_13692;
  wire [1:0] T_13693;
  wire  T_13794_ready;
  wire  T_13794_valid;
  wire [1:0] T_13794_bits_header_src;
  wire [1:0] T_13794_bits_header_dst;
  wire [25:0] T_13794_bits_payload_addr_block;
  wire  T_13794_bits_payload_client_xact_id;
  wire [2:0] T_13794_bits_payload_addr_beat;
  wire  T_13794_bits_payload_is_builtin_type;
  wire [2:0] T_13794_bits_payload_a_type;
  wire [11:0] T_13794_bits_payload_union;
  wire [63:0] T_13794_bits_payload_data;
  wire [2:0] T_13862;
  wire [1:0] T_13863;
  wire  T_14201_ready;
  wire  T_14201_valid;
  wire [1:0] T_14201_bits_header_src;
  wire [1:0] T_14201_bits_header_dst;
  wire [2:0] T_14201_bits_payload_addr_beat;
  wire [25:0] T_14201_bits_payload_addr_block;
  wire  T_14201_bits_payload_client_xact_id;
  wire  T_14201_bits_payload_voluntary;
  wire [2:0] T_14201_bits_payload_r_type;
  wire [63:0] T_14201_bits_payload_data;
  wire [2:0] T_14427;
  wire [1:0] T_14428;
  wire  T_14766_ready;
  wire  T_14766_valid;
  wire [1:0] T_14766_bits_header_src;
  wire [1:0] T_14766_bits_header_dst;
  wire [2:0] T_14766_bits_payload_addr_beat;
  wire [25:0] T_14766_bits_payload_addr_block;
  wire  T_14766_bits_payload_client_xact_id;
  wire  T_14766_bits_payload_voluntary;
  wire [2:0] T_14766_bits_payload_r_type;
  wire [63:0] T_14766_bits_payload_data;
  wire [2:0] T_14992;
  wire [1:0] T_14993;
  wire  T_15091_ready;
  wire  T_15091_valid;
  wire [1:0] T_15091_bits_header_src;
  wire [1:0] T_15091_bits_header_dst;
  wire [2:0] T_15091_bits_payload_addr_beat;
  wire [25:0] T_15091_bits_payload_addr_block;
  wire  T_15091_bits_payload_client_xact_id;
  wire  T_15091_bits_payload_voluntary;
  wire [2:0] T_15091_bits_payload_r_type;
  wire [63:0] T_15091_bits_payload_data;
  wire [2:0] T_15157;
  wire [1:0] T_15158;
  wire  T_15256_ready;
  wire  T_15256_valid;
  wire [1:0] T_15256_bits_header_src;
  wire [1:0] T_15256_bits_header_dst;
  wire [2:0] T_15256_bits_payload_addr_beat;
  wire [25:0] T_15256_bits_payload_addr_block;
  wire  T_15256_bits_payload_client_xact_id;
  wire  T_15256_bits_payload_voluntary;
  wire [2:0] T_15256_bits_payload_r_type;
  wire [63:0] T_15256_bits_payload_data;
  wire [2:0] T_15322;
  wire [1:0] T_15323;
  wire  T_15409_ready;
  wire  T_15409_valid;
  wire [1:0] T_15409_bits_header_src;
  wire [1:0] T_15409_bits_header_dst;
  wire [25:0] T_15409_bits_payload_addr_block;
  wire [1:0] T_15409_bits_payload_p_type;
  wire [2:0] T_15467;
  wire [1:0] T_15468;
  wire  T_15554_ready;
  wire  T_15554_valid;
  wire [1:0] T_15554_bits_header_src;
  wire [1:0] T_15554_bits_header_dst;
  wire [25:0] T_15554_bits_payload_addr_block;
  wire [1:0] T_15554_bits_payload_p_type;
  wire [2:0] T_15612;
  wire [1:0] T_15613;
  wire  T_15939_ready;
  wire  T_15939_valid;
  wire [1:0] T_15939_bits_header_src;
  wire [1:0] T_15939_bits_header_dst;
  wire [25:0] T_15939_bits_payload_addr_block;
  wire [1:0] T_15939_bits_payload_p_type;
  wire [2:0] T_16157;
  wire [1:0] T_16158;
  wire  T_16484_ready;
  wire  T_16484_valid;
  wire [1:0] T_16484_bits_header_src;
  wire [1:0] T_16484_bits_header_dst;
  wire [25:0] T_16484_bits_payload_addr_block;
  wire [1:0] T_16484_bits_payload_p_type;
  wire [2:0] T_16702;
  wire [1:0] T_16703;
  wire  T_16801_ready;
  wire  T_16801_valid;
  wire [1:0] T_16801_bits_header_src;
  wire [1:0] T_16801_bits_header_dst;
  wire [2:0] T_16801_bits_payload_addr_beat;
  wire  T_16801_bits_payload_client_xact_id;
  wire [1:0] T_16801_bits_payload_manager_xact_id;
  wire  T_16801_bits_payload_is_builtin_type;
  wire [3:0] T_16801_bits_payload_g_type;
  wire [63:0] T_16801_bits_payload_data;
  wire [2:0] T_16867;
  wire [1:0] T_16868;
  wire  T_16966_ready;
  wire  T_16966_valid;
  wire [1:0] T_16966_bits_header_src;
  wire [1:0] T_16966_bits_header_dst;
  wire [2:0] T_16966_bits_payload_addr_beat;
  wire  T_16966_bits_payload_client_xact_id;
  wire [1:0] T_16966_bits_payload_manager_xact_id;
  wire  T_16966_bits_payload_is_builtin_type;
  wire [3:0] T_16966_bits_payload_g_type;
  wire [63:0] T_16966_bits_payload_data;
  wire [2:0] T_17032;
  wire [1:0] T_17033;
  wire  T_17371_ready;
  wire  T_17371_valid;
  wire [1:0] T_17371_bits_header_src;
  wire [1:0] T_17371_bits_header_dst;
  wire [2:0] T_17371_bits_payload_addr_beat;
  wire  T_17371_bits_payload_client_xact_id;
  wire [1:0] T_17371_bits_payload_manager_xact_id;
  wire  T_17371_bits_payload_is_builtin_type;
  wire [3:0] T_17371_bits_payload_g_type;
  wire [63:0] T_17371_bits_payload_data;
  wire [2:0] T_17597;
  wire [1:0] T_17598;
  wire  T_17936_ready;
  wire  T_17936_valid;
  wire [1:0] T_17936_bits_header_src;
  wire [1:0] T_17936_bits_header_dst;
  wire [2:0] T_17936_bits_payload_addr_beat;
  wire  T_17936_bits_payload_client_xact_id;
  wire [1:0] T_17936_bits_payload_manager_xact_id;
  wire  T_17936_bits_payload_is_builtin_type;
  wire [3:0] T_17936_bits_payload_g_type;
  wire [63:0] T_17936_bits_payload_data;
  wire [2:0] T_18162;
  wire [1:0] T_18163;
  wire  T_18486_ready;
  wire  T_18486_valid;
  wire [1:0] T_18486_bits_header_src;
  wire [1:0] T_18486_bits_header_dst;
  wire [1:0] T_18486_bits_payload_manager_xact_id;
  wire [2:0] T_18702;
  wire [1:0] T_18703;
  wire  T_19026_ready;
  wire  T_19026_valid;
  wire [1:0] T_19026_bits_header_src;
  wire [1:0] T_19026_bits_header_dst;
  wire [1:0] T_19026_bits_payload_manager_xact_id;
  wire [2:0] T_19242;
  wire [1:0] T_19243;
  wire  T_19326_ready;
  wire  T_19326_valid;
  wire [1:0] T_19326_bits_header_src;
  wire [1:0] T_19326_bits_header_dst;
  wire [1:0] T_19326_bits_payload_manager_xact_id;
  wire [2:0] T_19382;
  wire [1:0] T_19383;
  wire  T_19466_ready;
  wire  T_19466_valid;
  wire [1:0] T_19466_bits_header_src;
  wire [1:0] T_19466_bits_header_dst;
  wire [1:0] T_19466_bits_payload_manager_xact_id;
  wire [2:0] T_19522;
  wire [1:0] T_19523;
  reg [1:0] GEN_0;
  reg [31:0] GEN_64;
  reg [1:0] GEN_1;
  reg [31:0] GEN_65;
  reg [25:0] GEN_2;
  reg [31:0] GEN_66;
  reg  GEN_3;
  reg [31:0] GEN_67;
  reg [2:0] GEN_4;
  reg [31:0] GEN_68;
  reg  GEN_5;
  reg [31:0] GEN_69;
  reg [2:0] GEN_6;
  reg [31:0] GEN_70;
  reg [11:0] GEN_7;
  reg [31:0] GEN_71;
  reg [63:0] GEN_8;
  reg [63:0] GEN_72;
  reg [1:0] GEN_9;
  reg [31:0] GEN_73;
  reg [1:0] GEN_10;
  reg [31:0] GEN_74;
  reg [25:0] GEN_11;
  reg [31:0] GEN_75;
  reg  GEN_12;
  reg [31:0] GEN_76;
  reg [2:0] GEN_13;
  reg [31:0] GEN_77;
  reg  GEN_14;
  reg [31:0] GEN_78;
  reg [2:0] GEN_15;
  reg [31:0] GEN_79;
  reg [11:0] GEN_16;
  reg [31:0] GEN_80;
  reg [63:0] GEN_17;
  reg [63:0] GEN_81;
  reg [1:0] GEN_18;
  reg [31:0] GEN_82;
  reg [1:0] GEN_19;
  reg [31:0] GEN_83;
  reg [2:0] GEN_20;
  reg [31:0] GEN_84;
  reg [25:0] GEN_21;
  reg [31:0] GEN_85;
  reg  GEN_22;
  reg [31:0] GEN_86;
  reg  GEN_23;
  reg [31:0] GEN_87;
  reg [2:0] GEN_24;
  reg [31:0] GEN_88;
  reg [63:0] GEN_25;
  reg [63:0] GEN_89;
  reg [1:0] GEN_26;
  reg [31:0] GEN_90;
  reg [1:0] GEN_27;
  reg [31:0] GEN_91;
  reg [2:0] GEN_28;
  reg [31:0] GEN_92;
  reg [25:0] GEN_29;
  reg [31:0] GEN_93;
  reg  GEN_30;
  reg [31:0] GEN_94;
  reg  GEN_31;
  reg [31:0] GEN_95;
  reg [2:0] GEN_32;
  reg [31:0] GEN_96;
  reg [63:0] GEN_33;
  reg [63:0] GEN_97;
  reg [1:0] GEN_34;
  reg [31:0] GEN_98;
  reg [1:0] GEN_35;
  reg [31:0] GEN_99;
  reg [25:0] GEN_36;
  reg [31:0] GEN_100;
  reg [1:0] GEN_37;
  reg [31:0] GEN_101;
  reg [1:0] GEN_38;
  reg [31:0] GEN_102;
  reg [1:0] GEN_39;
  reg [31:0] GEN_103;
  reg [25:0] GEN_40;
  reg [31:0] GEN_104;
  reg [1:0] GEN_41;
  reg [31:0] GEN_105;
  reg [1:0] GEN_42;
  reg [31:0] GEN_106;
  reg [1:0] GEN_43;
  reg [31:0] GEN_107;
  reg [2:0] GEN_44;
  reg [31:0] GEN_108;
  reg  GEN_45;
  reg [31:0] GEN_109;
  reg [1:0] GEN_46;
  reg [31:0] GEN_110;
  reg  GEN_47;
  reg [31:0] GEN_111;
  reg [3:0] GEN_48;
  reg [31:0] GEN_112;
  reg [63:0] GEN_49;
  reg [63:0] GEN_113;
  reg [1:0] GEN_50;
  reg [31:0] GEN_114;
  reg [1:0] GEN_51;
  reg [31:0] GEN_115;
  reg [2:0] GEN_52;
  reg [31:0] GEN_116;
  reg  GEN_53;
  reg [31:0] GEN_117;
  reg [1:0] GEN_54;
  reg [31:0] GEN_118;
  reg  GEN_55;
  reg [31:0] GEN_119;
  reg [3:0] GEN_56;
  reg [31:0] GEN_120;
  reg [63:0] GEN_57;
  reg [63:0] GEN_121;
  reg [1:0] GEN_58;
  reg [31:0] GEN_122;
  reg [1:0] GEN_59;
  reg [31:0] GEN_123;
  reg [1:0] GEN_60;
  reg [31:0] GEN_124;
  reg [1:0] GEN_61;
  reg [31:0] GEN_125;
  reg [1:0] GEN_62;
  reg [31:0] GEN_126;
  reg [1:0] GEN_63;
  reg [31:0] GEN_127;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_ENQUEUER TileLinkEnqueuer_4 (
    .clk(TileLinkEnqueuer_4_clk),
    .reset(TileLinkEnqueuer_4_reset),
    .io_client_acquire_ready(TileLinkEnqueuer_4_io_client_acquire_ready),
    .io_client_acquire_valid(TileLinkEnqueuer_4_io_client_acquire_valid),
    .io_client_acquire_bits_header_src(TileLinkEnqueuer_4_io_client_acquire_bits_header_src),
    .io_client_acquire_bits_header_dst(TileLinkEnqueuer_4_io_client_acquire_bits_header_dst),
    .io_client_acquire_bits_payload_addr_block(TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_block),
    .io_client_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_client_acquire_bits_payload_client_xact_id),
    .io_client_acquire_bits_payload_addr_beat(TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_beat),
    .io_client_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_4_io_client_acquire_bits_payload_is_builtin_type),
    .io_client_acquire_bits_payload_a_type(TileLinkEnqueuer_4_io_client_acquire_bits_payload_a_type),
    .io_client_acquire_bits_payload_union(TileLinkEnqueuer_4_io_client_acquire_bits_payload_union),
    .io_client_acquire_bits_payload_data(TileLinkEnqueuer_4_io_client_acquire_bits_payload_data),
    .io_client_grant_ready(TileLinkEnqueuer_4_io_client_grant_ready),
    .io_client_grant_valid(TileLinkEnqueuer_4_io_client_grant_valid),
    .io_client_grant_bits_header_src(TileLinkEnqueuer_4_io_client_grant_bits_header_src),
    .io_client_grant_bits_header_dst(TileLinkEnqueuer_4_io_client_grant_bits_header_dst),
    .io_client_grant_bits_payload_addr_beat(TileLinkEnqueuer_4_io_client_grant_bits_payload_addr_beat),
    .io_client_grant_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_client_grant_bits_payload_client_xact_id),
    .io_client_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_4_io_client_grant_bits_payload_manager_xact_id),
    .io_client_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_4_io_client_grant_bits_payload_is_builtin_type),
    .io_client_grant_bits_payload_g_type(TileLinkEnqueuer_4_io_client_grant_bits_payload_g_type),
    .io_client_grant_bits_payload_data(TileLinkEnqueuer_4_io_client_grant_bits_payload_data),
    .io_client_finish_ready(TileLinkEnqueuer_4_io_client_finish_ready),
    .io_client_finish_valid(TileLinkEnqueuer_4_io_client_finish_valid),
    .io_client_finish_bits_header_src(TileLinkEnqueuer_4_io_client_finish_bits_header_src),
    .io_client_finish_bits_header_dst(TileLinkEnqueuer_4_io_client_finish_bits_header_dst),
    .io_client_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_4_io_client_finish_bits_payload_manager_xact_id),
    .io_client_probe_ready(TileLinkEnqueuer_4_io_client_probe_ready),
    .io_client_probe_valid(TileLinkEnqueuer_4_io_client_probe_valid),
    .io_client_probe_bits_header_src(TileLinkEnqueuer_4_io_client_probe_bits_header_src),
    .io_client_probe_bits_header_dst(TileLinkEnqueuer_4_io_client_probe_bits_header_dst),
    .io_client_probe_bits_payload_addr_block(TileLinkEnqueuer_4_io_client_probe_bits_payload_addr_block),
    .io_client_probe_bits_payload_p_type(TileLinkEnqueuer_4_io_client_probe_bits_payload_p_type),
    .io_client_release_ready(TileLinkEnqueuer_4_io_client_release_ready),
    .io_client_release_valid(TileLinkEnqueuer_4_io_client_release_valid),
    .io_client_release_bits_header_src(TileLinkEnqueuer_4_io_client_release_bits_header_src),
    .io_client_release_bits_header_dst(TileLinkEnqueuer_4_io_client_release_bits_header_dst),
    .io_client_release_bits_payload_addr_beat(TileLinkEnqueuer_4_io_client_release_bits_payload_addr_beat),
    .io_client_release_bits_payload_addr_block(TileLinkEnqueuer_4_io_client_release_bits_payload_addr_block),
    .io_client_release_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_client_release_bits_payload_client_xact_id),
    .io_client_release_bits_payload_voluntary(TileLinkEnqueuer_4_io_client_release_bits_payload_voluntary),
    .io_client_release_bits_payload_r_type(TileLinkEnqueuer_4_io_client_release_bits_payload_r_type),
    .io_client_release_bits_payload_data(TileLinkEnqueuer_4_io_client_release_bits_payload_data),
    .io_manager_acquire_ready(TileLinkEnqueuer_4_io_manager_acquire_ready),
    .io_manager_acquire_valid(TileLinkEnqueuer_4_io_manager_acquire_valid),
    .io_manager_acquire_bits_header_src(TileLinkEnqueuer_4_io_manager_acquire_bits_header_src),
    .io_manager_acquire_bits_header_dst(TileLinkEnqueuer_4_io_manager_acquire_bits_header_dst),
    .io_manager_acquire_bits_payload_addr_block(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_block),
    .io_manager_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_client_xact_id),
    .io_manager_acquire_bits_payload_addr_beat(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_beat),
    .io_manager_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_is_builtin_type),
    .io_manager_acquire_bits_payload_a_type(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_a_type),
    .io_manager_acquire_bits_payload_union(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_union),
    .io_manager_acquire_bits_payload_data(TileLinkEnqueuer_4_io_manager_acquire_bits_payload_data),
    .io_manager_grant_ready(TileLinkEnqueuer_4_io_manager_grant_ready),
    .io_manager_grant_valid(TileLinkEnqueuer_4_io_manager_grant_valid),
    .io_manager_grant_bits_header_src(TileLinkEnqueuer_4_io_manager_grant_bits_header_src),
    .io_manager_grant_bits_header_dst(TileLinkEnqueuer_4_io_manager_grant_bits_header_dst),
    .io_manager_grant_bits_payload_addr_beat(TileLinkEnqueuer_4_io_manager_grant_bits_payload_addr_beat),
    .io_manager_grant_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_manager_grant_bits_payload_client_xact_id),
    .io_manager_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_4_io_manager_grant_bits_payload_manager_xact_id),
    .io_manager_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_4_io_manager_grant_bits_payload_is_builtin_type),
    .io_manager_grant_bits_payload_g_type(TileLinkEnqueuer_4_io_manager_grant_bits_payload_g_type),
    .io_manager_grant_bits_payload_data(TileLinkEnqueuer_4_io_manager_grant_bits_payload_data),
    .io_manager_finish_ready(TileLinkEnqueuer_4_io_manager_finish_ready),
    .io_manager_finish_valid(TileLinkEnqueuer_4_io_manager_finish_valid),
    .io_manager_finish_bits_header_src(TileLinkEnqueuer_4_io_manager_finish_bits_header_src),
    .io_manager_finish_bits_header_dst(TileLinkEnqueuer_4_io_manager_finish_bits_header_dst),
    .io_manager_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_4_io_manager_finish_bits_payload_manager_xact_id),
    .io_manager_probe_ready(TileLinkEnqueuer_4_io_manager_probe_ready),
    .io_manager_probe_valid(TileLinkEnqueuer_4_io_manager_probe_valid),
    .io_manager_probe_bits_header_src(TileLinkEnqueuer_4_io_manager_probe_bits_header_src),
    .io_manager_probe_bits_header_dst(TileLinkEnqueuer_4_io_manager_probe_bits_header_dst),
    .io_manager_probe_bits_payload_addr_block(TileLinkEnqueuer_4_io_manager_probe_bits_payload_addr_block),
    .io_manager_probe_bits_payload_p_type(TileLinkEnqueuer_4_io_manager_probe_bits_payload_p_type),
    .io_manager_release_ready(TileLinkEnqueuer_4_io_manager_release_ready),
    .io_manager_release_valid(TileLinkEnqueuer_4_io_manager_release_valid),
    .io_manager_release_bits_header_src(TileLinkEnqueuer_4_io_manager_release_bits_header_src),
    .io_manager_release_bits_header_dst(TileLinkEnqueuer_4_io_manager_release_bits_header_dst),
    .io_manager_release_bits_payload_addr_beat(TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_beat),
    .io_manager_release_bits_payload_addr_block(TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_block),
    .io_manager_release_bits_payload_client_xact_id(TileLinkEnqueuer_4_io_manager_release_bits_payload_client_xact_id),
    .io_manager_release_bits_payload_voluntary(TileLinkEnqueuer_4_io_manager_release_bits_payload_voluntary),
    .io_manager_release_bits_payload_r_type(TileLinkEnqueuer_4_io_manager_release_bits_payload_r_type),
    .io_manager_release_bits_payload_data(TileLinkEnqueuer_4_io_manager_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_NETWORK_PORT ClientTileLinkNetworkPort_1 (
    .clk(ClientTileLinkNetworkPort_1_clk),
    .reset(ClientTileLinkNetworkPort_1_reset),
    .io_client_acquire_ready(ClientTileLinkNetworkPort_1_io_client_acquire_ready),
    .io_client_acquire_valid(ClientTileLinkNetworkPort_1_io_client_acquire_valid),
    .io_client_acquire_bits_addr_block(ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_block),
    .io_client_acquire_bits_client_xact_id(ClientTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id),
    .io_client_acquire_bits_addr_beat(ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat),
    .io_client_acquire_bits_is_builtin_type(ClientTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type),
    .io_client_acquire_bits_a_type(ClientTileLinkNetworkPort_1_io_client_acquire_bits_a_type),
    .io_client_acquire_bits_union(ClientTileLinkNetworkPort_1_io_client_acquire_bits_union),
    .io_client_acquire_bits_data(ClientTileLinkNetworkPort_1_io_client_acquire_bits_data),
    .io_client_probe_ready(ClientTileLinkNetworkPort_1_io_client_probe_ready),
    .io_client_probe_valid(ClientTileLinkNetworkPort_1_io_client_probe_valid),
    .io_client_probe_bits_addr_block(ClientTileLinkNetworkPort_1_io_client_probe_bits_addr_block),
    .io_client_probe_bits_p_type(ClientTileLinkNetworkPort_1_io_client_probe_bits_p_type),
    .io_client_release_ready(ClientTileLinkNetworkPort_1_io_client_release_ready),
    .io_client_release_valid(ClientTileLinkNetworkPort_1_io_client_release_valid),
    .io_client_release_bits_addr_beat(ClientTileLinkNetworkPort_1_io_client_release_bits_addr_beat),
    .io_client_release_bits_addr_block(ClientTileLinkNetworkPort_1_io_client_release_bits_addr_block),
    .io_client_release_bits_client_xact_id(ClientTileLinkNetworkPort_1_io_client_release_bits_client_xact_id),
    .io_client_release_bits_voluntary(ClientTileLinkNetworkPort_1_io_client_release_bits_voluntary),
    .io_client_release_bits_r_type(ClientTileLinkNetworkPort_1_io_client_release_bits_r_type),
    .io_client_release_bits_data(ClientTileLinkNetworkPort_1_io_client_release_bits_data),
    .io_client_grant_ready(ClientTileLinkNetworkPort_1_io_client_grant_ready),
    .io_client_grant_valid(ClientTileLinkNetworkPort_1_io_client_grant_valid),
    .io_client_grant_bits_addr_beat(ClientTileLinkNetworkPort_1_io_client_grant_bits_addr_beat),
    .io_client_grant_bits_client_xact_id(ClientTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id),
    .io_client_grant_bits_manager_xact_id(ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id),
    .io_client_grant_bits_is_builtin_type(ClientTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type),
    .io_client_grant_bits_g_type(ClientTileLinkNetworkPort_1_io_client_grant_bits_g_type),
    .io_client_grant_bits_data(ClientTileLinkNetworkPort_1_io_client_grant_bits_data),
    .io_client_grant_bits_manager_id(ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_id),
    .io_client_finish_ready(ClientTileLinkNetworkPort_1_io_client_finish_ready),
    .io_client_finish_valid(ClientTileLinkNetworkPort_1_io_client_finish_valid),
    .io_client_finish_bits_manager_xact_id(ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_xact_id),
    .io_client_finish_bits_manager_id(ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_id),
    .io_network_acquire_ready(ClientTileLinkNetworkPort_1_io_network_acquire_ready),
    .io_network_acquire_valid(ClientTileLinkNetworkPort_1_io_network_acquire_valid),
    .io_network_acquire_bits_header_src(ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_src),
    .io_network_acquire_bits_header_dst(ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_dst),
    .io_network_acquire_bits_payload_addr_block(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block),
    .io_network_acquire_bits_payload_client_xact_id(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id),
    .io_network_acquire_bits_payload_addr_beat(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat),
    .io_network_acquire_bits_payload_is_builtin_type(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type),
    .io_network_acquire_bits_payload_a_type(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type),
    .io_network_acquire_bits_payload_union(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_union),
    .io_network_acquire_bits_payload_data(ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_data),
    .io_network_grant_ready(ClientTileLinkNetworkPort_1_io_network_grant_ready),
    .io_network_grant_valid(ClientTileLinkNetworkPort_1_io_network_grant_valid),
    .io_network_grant_bits_header_src(ClientTileLinkNetworkPort_1_io_network_grant_bits_header_src),
    .io_network_grant_bits_header_dst(ClientTileLinkNetworkPort_1_io_network_grant_bits_header_dst),
    .io_network_grant_bits_payload_addr_beat(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat),
    .io_network_grant_bits_payload_client_xact_id(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id),
    .io_network_grant_bits_payload_manager_xact_id(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id),
    .io_network_grant_bits_payload_is_builtin_type(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type),
    .io_network_grant_bits_payload_g_type(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type),
    .io_network_grant_bits_payload_data(ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_data),
    .io_network_finish_ready(ClientTileLinkNetworkPort_1_io_network_finish_ready),
    .io_network_finish_valid(ClientTileLinkNetworkPort_1_io_network_finish_valid),
    .io_network_finish_bits_header_src(ClientTileLinkNetworkPort_1_io_network_finish_bits_header_src),
    .io_network_finish_bits_header_dst(ClientTileLinkNetworkPort_1_io_network_finish_bits_header_dst),
    .io_network_finish_bits_payload_manager_xact_id(ClientTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id),
    .io_network_probe_ready(ClientTileLinkNetworkPort_1_io_network_probe_ready),
    .io_network_probe_valid(ClientTileLinkNetworkPort_1_io_network_probe_valid),
    .io_network_probe_bits_header_src(ClientTileLinkNetworkPort_1_io_network_probe_bits_header_src),
    .io_network_probe_bits_header_dst(ClientTileLinkNetworkPort_1_io_network_probe_bits_header_dst),
    .io_network_probe_bits_payload_addr_block(ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block),
    .io_network_probe_bits_payload_p_type(ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type),
    .io_network_release_ready(ClientTileLinkNetworkPort_1_io_network_release_ready),
    .io_network_release_valid(ClientTileLinkNetworkPort_1_io_network_release_valid),
    .io_network_release_bits_header_src(ClientTileLinkNetworkPort_1_io_network_release_bits_header_src),
    .io_network_release_bits_header_dst(ClientTileLinkNetworkPort_1_io_network_release_bits_header_dst),
    .io_network_release_bits_payload_addr_beat(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat),
    .io_network_release_bits_payload_addr_block(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block),
    .io_network_release_bits_payload_client_xact_id(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id),
    .io_network_release_bits_payload_voluntary(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary),
    .io_network_release_bits_payload_r_type(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_r_type),
    .io_network_release_bits_payload_data(ClientTileLinkNetworkPort_1_io_network_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_ENQUEUER_1 TileLinkEnqueuer_1_1 (
    .clk(TileLinkEnqueuer_1_1_clk),
    .reset(TileLinkEnqueuer_1_1_reset),
    .io_client_acquire_ready(TileLinkEnqueuer_1_1_io_client_acquire_ready),
    .io_client_acquire_valid(TileLinkEnqueuer_1_1_io_client_acquire_valid),
    .io_client_acquire_bits_header_src(TileLinkEnqueuer_1_1_io_client_acquire_bits_header_src),
    .io_client_acquire_bits_header_dst(TileLinkEnqueuer_1_1_io_client_acquire_bits_header_dst),
    .io_client_acquire_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_block),
    .io_client_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_client_xact_id),
    .io_client_acquire_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_beat),
    .io_client_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_is_builtin_type),
    .io_client_acquire_bits_payload_a_type(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_a_type),
    .io_client_acquire_bits_payload_union(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_union),
    .io_client_acquire_bits_payload_data(TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_data),
    .io_client_grant_ready(TileLinkEnqueuer_1_1_io_client_grant_ready),
    .io_client_grant_valid(TileLinkEnqueuer_1_1_io_client_grant_valid),
    .io_client_grant_bits_header_src(TileLinkEnqueuer_1_1_io_client_grant_bits_header_src),
    .io_client_grant_bits_header_dst(TileLinkEnqueuer_1_1_io_client_grant_bits_header_dst),
    .io_client_grant_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_addr_beat),
    .io_client_grant_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_client_xact_id),
    .io_client_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_manager_xact_id),
    .io_client_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_is_builtin_type),
    .io_client_grant_bits_payload_g_type(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_g_type),
    .io_client_grant_bits_payload_data(TileLinkEnqueuer_1_1_io_client_grant_bits_payload_data),
    .io_client_finish_ready(TileLinkEnqueuer_1_1_io_client_finish_ready),
    .io_client_finish_valid(TileLinkEnqueuer_1_1_io_client_finish_valid),
    .io_client_finish_bits_header_src(TileLinkEnqueuer_1_1_io_client_finish_bits_header_src),
    .io_client_finish_bits_header_dst(TileLinkEnqueuer_1_1_io_client_finish_bits_header_dst),
    .io_client_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_1_1_io_client_finish_bits_payload_manager_xact_id),
    .io_client_probe_ready(TileLinkEnqueuer_1_1_io_client_probe_ready),
    .io_client_probe_valid(TileLinkEnqueuer_1_1_io_client_probe_valid),
    .io_client_probe_bits_header_src(TileLinkEnqueuer_1_1_io_client_probe_bits_header_src),
    .io_client_probe_bits_header_dst(TileLinkEnqueuer_1_1_io_client_probe_bits_header_dst),
    .io_client_probe_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_client_probe_bits_payload_addr_block),
    .io_client_probe_bits_payload_p_type(TileLinkEnqueuer_1_1_io_client_probe_bits_payload_p_type),
    .io_client_release_ready(TileLinkEnqueuer_1_1_io_client_release_ready),
    .io_client_release_valid(TileLinkEnqueuer_1_1_io_client_release_valid),
    .io_client_release_bits_header_src(TileLinkEnqueuer_1_1_io_client_release_bits_header_src),
    .io_client_release_bits_header_dst(TileLinkEnqueuer_1_1_io_client_release_bits_header_dst),
    .io_client_release_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_beat),
    .io_client_release_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_block),
    .io_client_release_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_client_release_bits_payload_client_xact_id),
    .io_client_release_bits_payload_voluntary(TileLinkEnqueuer_1_1_io_client_release_bits_payload_voluntary),
    .io_client_release_bits_payload_r_type(TileLinkEnqueuer_1_1_io_client_release_bits_payload_r_type),
    .io_client_release_bits_payload_data(TileLinkEnqueuer_1_1_io_client_release_bits_payload_data),
    .io_manager_acquire_ready(TileLinkEnqueuer_1_1_io_manager_acquire_ready),
    .io_manager_acquire_valid(TileLinkEnqueuer_1_1_io_manager_acquire_valid),
    .io_manager_acquire_bits_header_src(TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_src),
    .io_manager_acquire_bits_header_dst(TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_dst),
    .io_manager_acquire_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_block),
    .io_manager_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_client_xact_id),
    .io_manager_acquire_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_beat),
    .io_manager_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_is_builtin_type),
    .io_manager_acquire_bits_payload_a_type(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_a_type),
    .io_manager_acquire_bits_payload_union(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_union),
    .io_manager_acquire_bits_payload_data(TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_data),
    .io_manager_grant_ready(TileLinkEnqueuer_1_1_io_manager_grant_ready),
    .io_manager_grant_valid(TileLinkEnqueuer_1_1_io_manager_grant_valid),
    .io_manager_grant_bits_header_src(TileLinkEnqueuer_1_1_io_manager_grant_bits_header_src),
    .io_manager_grant_bits_header_dst(TileLinkEnqueuer_1_1_io_manager_grant_bits_header_dst),
    .io_manager_grant_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_addr_beat),
    .io_manager_grant_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_client_xact_id),
    .io_manager_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_manager_xact_id),
    .io_manager_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_is_builtin_type),
    .io_manager_grant_bits_payload_g_type(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_g_type),
    .io_manager_grant_bits_payload_data(TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_data),
    .io_manager_finish_ready(TileLinkEnqueuer_1_1_io_manager_finish_ready),
    .io_manager_finish_valid(TileLinkEnqueuer_1_1_io_manager_finish_valid),
    .io_manager_finish_bits_header_src(TileLinkEnqueuer_1_1_io_manager_finish_bits_header_src),
    .io_manager_finish_bits_header_dst(TileLinkEnqueuer_1_1_io_manager_finish_bits_header_dst),
    .io_manager_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_1_1_io_manager_finish_bits_payload_manager_xact_id),
    .io_manager_probe_ready(TileLinkEnqueuer_1_1_io_manager_probe_ready),
    .io_manager_probe_valid(TileLinkEnqueuer_1_1_io_manager_probe_valid),
    .io_manager_probe_bits_header_src(TileLinkEnqueuer_1_1_io_manager_probe_bits_header_src),
    .io_manager_probe_bits_header_dst(TileLinkEnqueuer_1_1_io_manager_probe_bits_header_dst),
    .io_manager_probe_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_addr_block),
    .io_manager_probe_bits_payload_p_type(TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_p_type),
    .io_manager_release_ready(TileLinkEnqueuer_1_1_io_manager_release_ready),
    .io_manager_release_valid(TileLinkEnqueuer_1_1_io_manager_release_valid),
    .io_manager_release_bits_header_src(TileLinkEnqueuer_1_1_io_manager_release_bits_header_src),
    .io_manager_release_bits_header_dst(TileLinkEnqueuer_1_1_io_manager_release_bits_header_dst),
    .io_manager_release_bits_payload_addr_beat(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_beat),
    .io_manager_release_bits_payload_addr_block(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_block),
    .io_manager_release_bits_payload_client_xact_id(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_client_xact_id),
    .io_manager_release_bits_payload_voluntary(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_voluntary),
    .io_manager_release_bits_payload_r_type(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_r_type),
    .io_manager_release_bits_payload_data(TileLinkEnqueuer_1_1_io_manager_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_UNCACHED_TILE_LINK_NETWORK_PORT ClientUncachedTileLinkNetworkPort_1 (
    .clk(ClientUncachedTileLinkNetworkPort_1_clk),
    .reset(ClientUncachedTileLinkNetworkPort_1_reset),
    .io_client_acquire_ready(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_ready),
    .io_client_acquire_valid(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_valid),
    .io_client_acquire_bits_addr_block(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_block),
    .io_client_acquire_bits_client_xact_id(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id),
    .io_client_acquire_bits_addr_beat(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat),
    .io_client_acquire_bits_is_builtin_type(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type),
    .io_client_acquire_bits_a_type(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_a_type),
    .io_client_acquire_bits_union(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_union),
    .io_client_acquire_bits_data(ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_data),
    .io_client_grant_ready(ClientUncachedTileLinkNetworkPort_1_io_client_grant_ready),
    .io_client_grant_valid(ClientUncachedTileLinkNetworkPort_1_io_client_grant_valid),
    .io_client_grant_bits_addr_beat(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_addr_beat),
    .io_client_grant_bits_client_xact_id(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id),
    .io_client_grant_bits_manager_xact_id(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id),
    .io_client_grant_bits_is_builtin_type(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type),
    .io_client_grant_bits_g_type(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_g_type),
    .io_client_grant_bits_data(ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_data),
    .io_network_acquire_ready(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_ready),
    .io_network_acquire_valid(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_valid),
    .io_network_acquire_bits_header_src(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_src),
    .io_network_acquire_bits_header_dst(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_dst),
    .io_network_acquire_bits_payload_addr_block(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block),
    .io_network_acquire_bits_payload_client_xact_id(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id),
    .io_network_acquire_bits_payload_addr_beat(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat),
    .io_network_acquire_bits_payload_is_builtin_type(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type),
    .io_network_acquire_bits_payload_a_type(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type),
    .io_network_acquire_bits_payload_union(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_union),
    .io_network_acquire_bits_payload_data(ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_data),
    .io_network_grant_ready(ClientUncachedTileLinkNetworkPort_1_io_network_grant_ready),
    .io_network_grant_valid(ClientUncachedTileLinkNetworkPort_1_io_network_grant_valid),
    .io_network_grant_bits_header_src(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_src),
    .io_network_grant_bits_header_dst(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_dst),
    .io_network_grant_bits_payload_addr_beat(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat),
    .io_network_grant_bits_payload_client_xact_id(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id),
    .io_network_grant_bits_payload_manager_xact_id(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id),
    .io_network_grant_bits_payload_is_builtin_type(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type),
    .io_network_grant_bits_payload_g_type(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type),
    .io_network_grant_bits_payload_data(ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_data),
    .io_network_finish_ready(ClientUncachedTileLinkNetworkPort_1_io_network_finish_ready),
    .io_network_finish_valid(ClientUncachedTileLinkNetworkPort_1_io_network_finish_valid),
    .io_network_finish_bits_header_src(ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_src),
    .io_network_finish_bits_header_dst(ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_dst),
    .io_network_finish_bits_payload_manager_xact_id(ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id),
    .io_network_probe_ready(ClientUncachedTileLinkNetworkPort_1_io_network_probe_ready),
    .io_network_probe_valid(ClientUncachedTileLinkNetworkPort_1_io_network_probe_valid),
    .io_network_probe_bits_header_src(ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_src),
    .io_network_probe_bits_header_dst(ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_dst),
    .io_network_probe_bits_payload_addr_block(ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block),
    .io_network_probe_bits_payload_p_type(ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type),
    .io_network_release_ready(ClientUncachedTileLinkNetworkPort_1_io_network_release_ready),
    .io_network_release_valid(ClientUncachedTileLinkNetworkPort_1_io_network_release_valid),
    .io_network_release_bits_header_src(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_src),
    .io_network_release_bits_header_dst(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_dst),
    .io_network_release_bits_payload_addr_beat(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat),
    .io_network_release_bits_payload_addr_block(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block),
    .io_network_release_bits_payload_client_xact_id(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id),
    .io_network_release_bits_payload_voluntary(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary),
    .io_network_release_bits_payload_r_type(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_r_type),
    .io_network_release_bits_payload_data(ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MANAGER_TILE_LINK_NETWORK_PORT ManagerTileLinkNetworkPort_2 (
    .clk(ManagerTileLinkNetworkPort_2_clk),
    .reset(ManagerTileLinkNetworkPort_2_reset),
    .io_manager_acquire_ready(ManagerTileLinkNetworkPort_2_io_manager_acquire_ready),
    .io_manager_acquire_valid(ManagerTileLinkNetworkPort_2_io_manager_acquire_valid),
    .io_manager_acquire_bits_addr_block(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_block),
    .io_manager_acquire_bits_client_xact_id(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_xact_id),
    .io_manager_acquire_bits_addr_beat(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_beat),
    .io_manager_acquire_bits_is_builtin_type(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_is_builtin_type),
    .io_manager_acquire_bits_a_type(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_a_type),
    .io_manager_acquire_bits_union(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_union),
    .io_manager_acquire_bits_data(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_data),
    .io_manager_acquire_bits_client_id(ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_id),
    .io_manager_grant_ready(ManagerTileLinkNetworkPort_2_io_manager_grant_ready),
    .io_manager_grant_valid(ManagerTileLinkNetworkPort_2_io_manager_grant_valid),
    .io_manager_grant_bits_addr_beat(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_addr_beat),
    .io_manager_grant_bits_client_xact_id(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_xact_id),
    .io_manager_grant_bits_manager_xact_id(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_manager_xact_id),
    .io_manager_grant_bits_is_builtin_type(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_is_builtin_type),
    .io_manager_grant_bits_g_type(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_g_type),
    .io_manager_grant_bits_data(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_data),
    .io_manager_grant_bits_client_id(ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_id),
    .io_manager_finish_ready(ManagerTileLinkNetworkPort_2_io_manager_finish_ready),
    .io_manager_finish_valid(ManagerTileLinkNetworkPort_2_io_manager_finish_valid),
    .io_manager_finish_bits_manager_xact_id(ManagerTileLinkNetworkPort_2_io_manager_finish_bits_manager_xact_id),
    .io_manager_probe_ready(ManagerTileLinkNetworkPort_2_io_manager_probe_ready),
    .io_manager_probe_valid(ManagerTileLinkNetworkPort_2_io_manager_probe_valid),
    .io_manager_probe_bits_addr_block(ManagerTileLinkNetworkPort_2_io_manager_probe_bits_addr_block),
    .io_manager_probe_bits_p_type(ManagerTileLinkNetworkPort_2_io_manager_probe_bits_p_type),
    .io_manager_probe_bits_client_id(ManagerTileLinkNetworkPort_2_io_manager_probe_bits_client_id),
    .io_manager_release_ready(ManagerTileLinkNetworkPort_2_io_manager_release_ready),
    .io_manager_release_valid(ManagerTileLinkNetworkPort_2_io_manager_release_valid),
    .io_manager_release_bits_addr_beat(ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_beat),
    .io_manager_release_bits_addr_block(ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_block),
    .io_manager_release_bits_client_xact_id(ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_xact_id),
    .io_manager_release_bits_voluntary(ManagerTileLinkNetworkPort_2_io_manager_release_bits_voluntary),
    .io_manager_release_bits_r_type(ManagerTileLinkNetworkPort_2_io_manager_release_bits_r_type),
    .io_manager_release_bits_data(ManagerTileLinkNetworkPort_2_io_manager_release_bits_data),
    .io_manager_release_bits_client_id(ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_id),
    .io_network_acquire_ready(ManagerTileLinkNetworkPort_2_io_network_acquire_ready),
    .io_network_acquire_valid(ManagerTileLinkNetworkPort_2_io_network_acquire_valid),
    .io_network_acquire_bits_header_src(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_src),
    .io_network_acquire_bits_header_dst(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_dst),
    .io_network_acquire_bits_payload_addr_block(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_block),
    .io_network_acquire_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_client_xact_id),
    .io_network_acquire_bits_payload_addr_beat(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_beat),
    .io_network_acquire_bits_payload_is_builtin_type(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_is_builtin_type),
    .io_network_acquire_bits_payload_a_type(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_a_type),
    .io_network_acquire_bits_payload_union(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_union),
    .io_network_acquire_bits_payload_data(ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_data),
    .io_network_grant_ready(ManagerTileLinkNetworkPort_2_io_network_grant_ready),
    .io_network_grant_valid(ManagerTileLinkNetworkPort_2_io_network_grant_valid),
    .io_network_grant_bits_header_src(ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_src),
    .io_network_grant_bits_header_dst(ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_dst),
    .io_network_grant_bits_payload_addr_beat(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_addr_beat),
    .io_network_grant_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_client_xact_id),
    .io_network_grant_bits_payload_manager_xact_id(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_manager_xact_id),
    .io_network_grant_bits_payload_is_builtin_type(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_is_builtin_type),
    .io_network_grant_bits_payload_g_type(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_g_type),
    .io_network_grant_bits_payload_data(ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_data),
    .io_network_finish_ready(ManagerTileLinkNetworkPort_2_io_network_finish_ready),
    .io_network_finish_valid(ManagerTileLinkNetworkPort_2_io_network_finish_valid),
    .io_network_finish_bits_header_src(ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_src),
    .io_network_finish_bits_header_dst(ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_dst),
    .io_network_finish_bits_payload_manager_xact_id(ManagerTileLinkNetworkPort_2_io_network_finish_bits_payload_manager_xact_id),
    .io_network_probe_ready(ManagerTileLinkNetworkPort_2_io_network_probe_ready),
    .io_network_probe_valid(ManagerTileLinkNetworkPort_2_io_network_probe_valid),
    .io_network_probe_bits_header_src(ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_src),
    .io_network_probe_bits_header_dst(ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_dst),
    .io_network_probe_bits_payload_addr_block(ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_addr_block),
    .io_network_probe_bits_payload_p_type(ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_p_type),
    .io_network_release_ready(ManagerTileLinkNetworkPort_2_io_network_release_ready),
    .io_network_release_valid(ManagerTileLinkNetworkPort_2_io_network_release_valid),
    .io_network_release_bits_header_src(ManagerTileLinkNetworkPort_2_io_network_release_bits_header_src),
    .io_network_release_bits_header_dst(ManagerTileLinkNetworkPort_2_io_network_release_bits_header_dst),
    .io_network_release_bits_payload_addr_beat(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_beat),
    .io_network_release_bits_payload_addr_block(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_block),
    .io_network_release_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_client_xact_id),
    .io_network_release_bits_payload_voluntary(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_voluntary),
    .io_network_release_bits_payload_r_type(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_r_type),
    .io_network_release_bits_payload_data(ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_ENQUEUER_2 TileLinkEnqueuer_2_1 (
    .clk(TileLinkEnqueuer_2_1_clk),
    .reset(TileLinkEnqueuer_2_1_reset),
    .io_client_acquire_ready(TileLinkEnqueuer_2_1_io_client_acquire_ready),
    .io_client_acquire_valid(TileLinkEnqueuer_2_1_io_client_acquire_valid),
    .io_client_acquire_bits_header_src(TileLinkEnqueuer_2_1_io_client_acquire_bits_header_src),
    .io_client_acquire_bits_header_dst(TileLinkEnqueuer_2_1_io_client_acquire_bits_header_dst),
    .io_client_acquire_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_block),
    .io_client_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_client_xact_id),
    .io_client_acquire_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_beat),
    .io_client_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_is_builtin_type),
    .io_client_acquire_bits_payload_a_type(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_a_type),
    .io_client_acquire_bits_payload_union(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_union),
    .io_client_acquire_bits_payload_data(TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_data),
    .io_client_grant_ready(TileLinkEnqueuer_2_1_io_client_grant_ready),
    .io_client_grant_valid(TileLinkEnqueuer_2_1_io_client_grant_valid),
    .io_client_grant_bits_header_src(TileLinkEnqueuer_2_1_io_client_grant_bits_header_src),
    .io_client_grant_bits_header_dst(TileLinkEnqueuer_2_1_io_client_grant_bits_header_dst),
    .io_client_grant_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_addr_beat),
    .io_client_grant_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_client_xact_id),
    .io_client_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_manager_xact_id),
    .io_client_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_is_builtin_type),
    .io_client_grant_bits_payload_g_type(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_g_type),
    .io_client_grant_bits_payload_data(TileLinkEnqueuer_2_1_io_client_grant_bits_payload_data),
    .io_client_finish_ready(TileLinkEnqueuer_2_1_io_client_finish_ready),
    .io_client_finish_valid(TileLinkEnqueuer_2_1_io_client_finish_valid),
    .io_client_finish_bits_header_src(TileLinkEnqueuer_2_1_io_client_finish_bits_header_src),
    .io_client_finish_bits_header_dst(TileLinkEnqueuer_2_1_io_client_finish_bits_header_dst),
    .io_client_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_2_1_io_client_finish_bits_payload_manager_xact_id),
    .io_client_probe_ready(TileLinkEnqueuer_2_1_io_client_probe_ready),
    .io_client_probe_valid(TileLinkEnqueuer_2_1_io_client_probe_valid),
    .io_client_probe_bits_header_src(TileLinkEnqueuer_2_1_io_client_probe_bits_header_src),
    .io_client_probe_bits_header_dst(TileLinkEnqueuer_2_1_io_client_probe_bits_header_dst),
    .io_client_probe_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_client_probe_bits_payload_addr_block),
    .io_client_probe_bits_payload_p_type(TileLinkEnqueuer_2_1_io_client_probe_bits_payload_p_type),
    .io_client_release_ready(TileLinkEnqueuer_2_1_io_client_release_ready),
    .io_client_release_valid(TileLinkEnqueuer_2_1_io_client_release_valid),
    .io_client_release_bits_header_src(TileLinkEnqueuer_2_1_io_client_release_bits_header_src),
    .io_client_release_bits_header_dst(TileLinkEnqueuer_2_1_io_client_release_bits_header_dst),
    .io_client_release_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_beat),
    .io_client_release_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_block),
    .io_client_release_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_client_release_bits_payload_client_xact_id),
    .io_client_release_bits_payload_voluntary(TileLinkEnqueuer_2_1_io_client_release_bits_payload_voluntary),
    .io_client_release_bits_payload_r_type(TileLinkEnqueuer_2_1_io_client_release_bits_payload_r_type),
    .io_client_release_bits_payload_data(TileLinkEnqueuer_2_1_io_client_release_bits_payload_data),
    .io_manager_acquire_ready(TileLinkEnqueuer_2_1_io_manager_acquire_ready),
    .io_manager_acquire_valid(TileLinkEnqueuer_2_1_io_manager_acquire_valid),
    .io_manager_acquire_bits_header_src(TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_src),
    .io_manager_acquire_bits_header_dst(TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_dst),
    .io_manager_acquire_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_block),
    .io_manager_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_client_xact_id),
    .io_manager_acquire_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_beat),
    .io_manager_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_is_builtin_type),
    .io_manager_acquire_bits_payload_a_type(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_a_type),
    .io_manager_acquire_bits_payload_union(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_union),
    .io_manager_acquire_bits_payload_data(TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_data),
    .io_manager_grant_ready(TileLinkEnqueuer_2_1_io_manager_grant_ready),
    .io_manager_grant_valid(TileLinkEnqueuer_2_1_io_manager_grant_valid),
    .io_manager_grant_bits_header_src(TileLinkEnqueuer_2_1_io_manager_grant_bits_header_src),
    .io_manager_grant_bits_header_dst(TileLinkEnqueuer_2_1_io_manager_grant_bits_header_dst),
    .io_manager_grant_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_addr_beat),
    .io_manager_grant_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_client_xact_id),
    .io_manager_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_manager_xact_id),
    .io_manager_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_is_builtin_type),
    .io_manager_grant_bits_payload_g_type(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_g_type),
    .io_manager_grant_bits_payload_data(TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_data),
    .io_manager_finish_ready(TileLinkEnqueuer_2_1_io_manager_finish_ready),
    .io_manager_finish_valid(TileLinkEnqueuer_2_1_io_manager_finish_valid),
    .io_manager_finish_bits_header_src(TileLinkEnqueuer_2_1_io_manager_finish_bits_header_src),
    .io_manager_finish_bits_header_dst(TileLinkEnqueuer_2_1_io_manager_finish_bits_header_dst),
    .io_manager_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_2_1_io_manager_finish_bits_payload_manager_xact_id),
    .io_manager_probe_ready(TileLinkEnqueuer_2_1_io_manager_probe_ready),
    .io_manager_probe_valid(TileLinkEnqueuer_2_1_io_manager_probe_valid),
    .io_manager_probe_bits_header_src(TileLinkEnqueuer_2_1_io_manager_probe_bits_header_src),
    .io_manager_probe_bits_header_dst(TileLinkEnqueuer_2_1_io_manager_probe_bits_header_dst),
    .io_manager_probe_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_addr_block),
    .io_manager_probe_bits_payload_p_type(TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_p_type),
    .io_manager_release_ready(TileLinkEnqueuer_2_1_io_manager_release_ready),
    .io_manager_release_valid(TileLinkEnqueuer_2_1_io_manager_release_valid),
    .io_manager_release_bits_header_src(TileLinkEnqueuer_2_1_io_manager_release_bits_header_src),
    .io_manager_release_bits_header_dst(TileLinkEnqueuer_2_1_io_manager_release_bits_header_dst),
    .io_manager_release_bits_payload_addr_beat(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_beat),
    .io_manager_release_bits_payload_addr_block(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_block),
    .io_manager_release_bits_payload_client_xact_id(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_client_xact_id),
    .io_manager_release_bits_payload_voluntary(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_voluntary),
    .io_manager_release_bits_payload_r_type(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_r_type),
    .io_manager_release_bits_payload_data(TileLinkEnqueuer_2_1_io_manager_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MANAGER_TILE_LINK_NETWORK_PORT_1 ManagerTileLinkNetworkPort_1_1 (
    .clk(ManagerTileLinkNetworkPort_1_1_clk),
    .reset(ManagerTileLinkNetworkPort_1_1_reset),
    .io_manager_acquire_ready(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_ready),
    .io_manager_acquire_valid(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_valid),
    .io_manager_acquire_bits_addr_block(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_block),
    .io_manager_acquire_bits_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_xact_id),
    .io_manager_acquire_bits_addr_beat(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_beat),
    .io_manager_acquire_bits_is_builtin_type(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_is_builtin_type),
    .io_manager_acquire_bits_a_type(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_a_type),
    .io_manager_acquire_bits_union(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_union),
    .io_manager_acquire_bits_data(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_data),
    .io_manager_acquire_bits_client_id(ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_id),
    .io_manager_grant_ready(ManagerTileLinkNetworkPort_1_1_io_manager_grant_ready),
    .io_manager_grant_valid(ManagerTileLinkNetworkPort_1_1_io_manager_grant_valid),
    .io_manager_grant_bits_addr_beat(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_addr_beat),
    .io_manager_grant_bits_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_xact_id),
    .io_manager_grant_bits_manager_xact_id(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_manager_xact_id),
    .io_manager_grant_bits_is_builtin_type(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_is_builtin_type),
    .io_manager_grant_bits_g_type(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_g_type),
    .io_manager_grant_bits_data(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_data),
    .io_manager_grant_bits_client_id(ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_id),
    .io_manager_finish_ready(ManagerTileLinkNetworkPort_1_1_io_manager_finish_ready),
    .io_manager_finish_valid(ManagerTileLinkNetworkPort_1_1_io_manager_finish_valid),
    .io_manager_finish_bits_manager_xact_id(ManagerTileLinkNetworkPort_1_1_io_manager_finish_bits_manager_xact_id),
    .io_manager_probe_ready(ManagerTileLinkNetworkPort_1_1_io_manager_probe_ready),
    .io_manager_probe_valid(ManagerTileLinkNetworkPort_1_1_io_manager_probe_valid),
    .io_manager_probe_bits_addr_block(ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_addr_block),
    .io_manager_probe_bits_p_type(ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_p_type),
    .io_manager_probe_bits_client_id(ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_client_id),
    .io_manager_release_ready(ManagerTileLinkNetworkPort_1_1_io_manager_release_ready),
    .io_manager_release_valid(ManagerTileLinkNetworkPort_1_1_io_manager_release_valid),
    .io_manager_release_bits_addr_beat(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_beat),
    .io_manager_release_bits_addr_block(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_block),
    .io_manager_release_bits_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_xact_id),
    .io_manager_release_bits_voluntary(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_voluntary),
    .io_manager_release_bits_r_type(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_r_type),
    .io_manager_release_bits_data(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_data),
    .io_manager_release_bits_client_id(ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_id),
    .io_network_acquire_ready(ManagerTileLinkNetworkPort_1_1_io_network_acquire_ready),
    .io_network_acquire_valid(ManagerTileLinkNetworkPort_1_1_io_network_acquire_valid),
    .io_network_acquire_bits_header_src(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_src),
    .io_network_acquire_bits_header_dst(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_dst),
    .io_network_acquire_bits_payload_addr_block(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_block),
    .io_network_acquire_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_client_xact_id),
    .io_network_acquire_bits_payload_addr_beat(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_beat),
    .io_network_acquire_bits_payload_is_builtin_type(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_is_builtin_type),
    .io_network_acquire_bits_payload_a_type(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_a_type),
    .io_network_acquire_bits_payload_union(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_union),
    .io_network_acquire_bits_payload_data(ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_data),
    .io_network_grant_ready(ManagerTileLinkNetworkPort_1_1_io_network_grant_ready),
    .io_network_grant_valid(ManagerTileLinkNetworkPort_1_1_io_network_grant_valid),
    .io_network_grant_bits_header_src(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_src),
    .io_network_grant_bits_header_dst(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_dst),
    .io_network_grant_bits_payload_addr_beat(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_addr_beat),
    .io_network_grant_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_client_xact_id),
    .io_network_grant_bits_payload_manager_xact_id(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_manager_xact_id),
    .io_network_grant_bits_payload_is_builtin_type(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_is_builtin_type),
    .io_network_grant_bits_payload_g_type(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_g_type),
    .io_network_grant_bits_payload_data(ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_data),
    .io_network_finish_ready(ManagerTileLinkNetworkPort_1_1_io_network_finish_ready),
    .io_network_finish_valid(ManagerTileLinkNetworkPort_1_1_io_network_finish_valid),
    .io_network_finish_bits_header_src(ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_src),
    .io_network_finish_bits_header_dst(ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_dst),
    .io_network_finish_bits_payload_manager_xact_id(ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_payload_manager_xact_id),
    .io_network_probe_ready(ManagerTileLinkNetworkPort_1_1_io_network_probe_ready),
    .io_network_probe_valid(ManagerTileLinkNetworkPort_1_1_io_network_probe_valid),
    .io_network_probe_bits_header_src(ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_src),
    .io_network_probe_bits_header_dst(ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_dst),
    .io_network_probe_bits_payload_addr_block(ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_addr_block),
    .io_network_probe_bits_payload_p_type(ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_p_type),
    .io_network_release_ready(ManagerTileLinkNetworkPort_1_1_io_network_release_ready),
    .io_network_release_valid(ManagerTileLinkNetworkPort_1_1_io_network_release_valid),
    .io_network_release_bits_header_src(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_src),
    .io_network_release_bits_header_dst(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_dst),
    .io_network_release_bits_payload_addr_beat(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_beat),
    .io_network_release_bits_payload_addr_block(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_block),
    .io_network_release_bits_payload_client_xact_id(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_client_xact_id),
    .io_network_release_bits_payload_voluntary(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_voluntary),
    .io_network_release_bits_payload_r_type(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_r_type),
    .io_network_release_bits_payload_data(ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_ENQUEUER_2 TileLinkEnqueuer_3_1 (
    .clk(TileLinkEnqueuer_3_1_clk),
    .reset(TileLinkEnqueuer_3_1_reset),
    .io_client_acquire_ready(TileLinkEnqueuer_3_1_io_client_acquire_ready),
    .io_client_acquire_valid(TileLinkEnqueuer_3_1_io_client_acquire_valid),
    .io_client_acquire_bits_header_src(TileLinkEnqueuer_3_1_io_client_acquire_bits_header_src),
    .io_client_acquire_bits_header_dst(TileLinkEnqueuer_3_1_io_client_acquire_bits_header_dst),
    .io_client_acquire_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_block),
    .io_client_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_client_xact_id),
    .io_client_acquire_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_beat),
    .io_client_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_is_builtin_type),
    .io_client_acquire_bits_payload_a_type(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_a_type),
    .io_client_acquire_bits_payload_union(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_union),
    .io_client_acquire_bits_payload_data(TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_data),
    .io_client_grant_ready(TileLinkEnqueuer_3_1_io_client_grant_ready),
    .io_client_grant_valid(TileLinkEnqueuer_3_1_io_client_grant_valid),
    .io_client_grant_bits_header_src(TileLinkEnqueuer_3_1_io_client_grant_bits_header_src),
    .io_client_grant_bits_header_dst(TileLinkEnqueuer_3_1_io_client_grant_bits_header_dst),
    .io_client_grant_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_addr_beat),
    .io_client_grant_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_client_xact_id),
    .io_client_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_manager_xact_id),
    .io_client_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_is_builtin_type),
    .io_client_grant_bits_payload_g_type(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_g_type),
    .io_client_grant_bits_payload_data(TileLinkEnqueuer_3_1_io_client_grant_bits_payload_data),
    .io_client_finish_ready(TileLinkEnqueuer_3_1_io_client_finish_ready),
    .io_client_finish_valid(TileLinkEnqueuer_3_1_io_client_finish_valid),
    .io_client_finish_bits_header_src(TileLinkEnqueuer_3_1_io_client_finish_bits_header_src),
    .io_client_finish_bits_header_dst(TileLinkEnqueuer_3_1_io_client_finish_bits_header_dst),
    .io_client_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_3_1_io_client_finish_bits_payload_manager_xact_id),
    .io_client_probe_ready(TileLinkEnqueuer_3_1_io_client_probe_ready),
    .io_client_probe_valid(TileLinkEnqueuer_3_1_io_client_probe_valid),
    .io_client_probe_bits_header_src(TileLinkEnqueuer_3_1_io_client_probe_bits_header_src),
    .io_client_probe_bits_header_dst(TileLinkEnqueuer_3_1_io_client_probe_bits_header_dst),
    .io_client_probe_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_client_probe_bits_payload_addr_block),
    .io_client_probe_bits_payload_p_type(TileLinkEnqueuer_3_1_io_client_probe_bits_payload_p_type),
    .io_client_release_ready(TileLinkEnqueuer_3_1_io_client_release_ready),
    .io_client_release_valid(TileLinkEnqueuer_3_1_io_client_release_valid),
    .io_client_release_bits_header_src(TileLinkEnqueuer_3_1_io_client_release_bits_header_src),
    .io_client_release_bits_header_dst(TileLinkEnqueuer_3_1_io_client_release_bits_header_dst),
    .io_client_release_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_beat),
    .io_client_release_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_block),
    .io_client_release_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_client_release_bits_payload_client_xact_id),
    .io_client_release_bits_payload_voluntary(TileLinkEnqueuer_3_1_io_client_release_bits_payload_voluntary),
    .io_client_release_bits_payload_r_type(TileLinkEnqueuer_3_1_io_client_release_bits_payload_r_type),
    .io_client_release_bits_payload_data(TileLinkEnqueuer_3_1_io_client_release_bits_payload_data),
    .io_manager_acquire_ready(TileLinkEnqueuer_3_1_io_manager_acquire_ready),
    .io_manager_acquire_valid(TileLinkEnqueuer_3_1_io_manager_acquire_valid),
    .io_manager_acquire_bits_header_src(TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_src),
    .io_manager_acquire_bits_header_dst(TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_dst),
    .io_manager_acquire_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_block),
    .io_manager_acquire_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_client_xact_id),
    .io_manager_acquire_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_beat),
    .io_manager_acquire_bits_payload_is_builtin_type(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_is_builtin_type),
    .io_manager_acquire_bits_payload_a_type(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_a_type),
    .io_manager_acquire_bits_payload_union(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_union),
    .io_manager_acquire_bits_payload_data(TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_data),
    .io_manager_grant_ready(TileLinkEnqueuer_3_1_io_manager_grant_ready),
    .io_manager_grant_valid(TileLinkEnqueuer_3_1_io_manager_grant_valid),
    .io_manager_grant_bits_header_src(TileLinkEnqueuer_3_1_io_manager_grant_bits_header_src),
    .io_manager_grant_bits_header_dst(TileLinkEnqueuer_3_1_io_manager_grant_bits_header_dst),
    .io_manager_grant_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_addr_beat),
    .io_manager_grant_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_client_xact_id),
    .io_manager_grant_bits_payload_manager_xact_id(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_manager_xact_id),
    .io_manager_grant_bits_payload_is_builtin_type(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_is_builtin_type),
    .io_manager_grant_bits_payload_g_type(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_g_type),
    .io_manager_grant_bits_payload_data(TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_data),
    .io_manager_finish_ready(TileLinkEnqueuer_3_1_io_manager_finish_ready),
    .io_manager_finish_valid(TileLinkEnqueuer_3_1_io_manager_finish_valid),
    .io_manager_finish_bits_header_src(TileLinkEnqueuer_3_1_io_manager_finish_bits_header_src),
    .io_manager_finish_bits_header_dst(TileLinkEnqueuer_3_1_io_manager_finish_bits_header_dst),
    .io_manager_finish_bits_payload_manager_xact_id(TileLinkEnqueuer_3_1_io_manager_finish_bits_payload_manager_xact_id),
    .io_manager_probe_ready(TileLinkEnqueuer_3_1_io_manager_probe_ready),
    .io_manager_probe_valid(TileLinkEnqueuer_3_1_io_manager_probe_valid),
    .io_manager_probe_bits_header_src(TileLinkEnqueuer_3_1_io_manager_probe_bits_header_src),
    .io_manager_probe_bits_header_dst(TileLinkEnqueuer_3_1_io_manager_probe_bits_header_dst),
    .io_manager_probe_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_addr_block),
    .io_manager_probe_bits_payload_p_type(TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_p_type),
    .io_manager_release_ready(TileLinkEnqueuer_3_1_io_manager_release_ready),
    .io_manager_release_valid(TileLinkEnqueuer_3_1_io_manager_release_valid),
    .io_manager_release_bits_header_src(TileLinkEnqueuer_3_1_io_manager_release_bits_header_src),
    .io_manager_release_bits_header_dst(TileLinkEnqueuer_3_1_io_manager_release_bits_header_dst),
    .io_manager_release_bits_payload_addr_beat(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_beat),
    .io_manager_release_bits_payload_addr_block(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_block),
    .io_manager_release_bits_payload_client_xact_id(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_client_xact_id),
    .io_manager_release_bits_payload_voluntary(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_voluntary),
    .io_manager_release_bits_payload_r_type(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_r_type),
    .io_manager_release_bits_payload_data(TileLinkEnqueuer_3_1_io_manager_release_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BASIC_BUS acqNet (
    .clk(acqNet_clk),
    .reset(acqNet_reset),
    .io_in_0_ready(acqNet_io_in_0_ready),
    .io_in_0_valid(acqNet_io_in_0_valid),
    .io_in_0_bits_header_src(acqNet_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(acqNet_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_block(acqNet_io_in_0_bits_payload_addr_block),
    .io_in_0_bits_payload_client_xact_id(acqNet_io_in_0_bits_payload_client_xact_id),
    .io_in_0_bits_payload_addr_beat(acqNet_io_in_0_bits_payload_addr_beat),
    .io_in_0_bits_payload_is_builtin_type(acqNet_io_in_0_bits_payload_is_builtin_type),
    .io_in_0_bits_payload_a_type(acqNet_io_in_0_bits_payload_a_type),
    .io_in_0_bits_payload_union(acqNet_io_in_0_bits_payload_union),
    .io_in_0_bits_payload_data(acqNet_io_in_0_bits_payload_data),
    .io_in_1_ready(acqNet_io_in_1_ready),
    .io_in_1_valid(acqNet_io_in_1_valid),
    .io_in_1_bits_header_src(acqNet_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(acqNet_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_block(acqNet_io_in_1_bits_payload_addr_block),
    .io_in_1_bits_payload_client_xact_id(acqNet_io_in_1_bits_payload_client_xact_id),
    .io_in_1_bits_payload_addr_beat(acqNet_io_in_1_bits_payload_addr_beat),
    .io_in_1_bits_payload_is_builtin_type(acqNet_io_in_1_bits_payload_is_builtin_type),
    .io_in_1_bits_payload_a_type(acqNet_io_in_1_bits_payload_a_type),
    .io_in_1_bits_payload_union(acqNet_io_in_1_bits_payload_union),
    .io_in_1_bits_payload_data(acqNet_io_in_1_bits_payload_data),
    .io_in_2_ready(acqNet_io_in_2_ready),
    .io_in_2_valid(acqNet_io_in_2_valid),
    .io_in_2_bits_header_src(acqNet_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(acqNet_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_block(acqNet_io_in_2_bits_payload_addr_block),
    .io_in_2_bits_payload_client_xact_id(acqNet_io_in_2_bits_payload_client_xact_id),
    .io_in_2_bits_payload_addr_beat(acqNet_io_in_2_bits_payload_addr_beat),
    .io_in_2_bits_payload_is_builtin_type(acqNet_io_in_2_bits_payload_is_builtin_type),
    .io_in_2_bits_payload_a_type(acqNet_io_in_2_bits_payload_a_type),
    .io_in_2_bits_payload_union(acqNet_io_in_2_bits_payload_union),
    .io_in_2_bits_payload_data(acqNet_io_in_2_bits_payload_data),
    .io_in_3_ready(acqNet_io_in_3_ready),
    .io_in_3_valid(acqNet_io_in_3_valid),
    .io_in_3_bits_header_src(acqNet_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(acqNet_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_block(acqNet_io_in_3_bits_payload_addr_block),
    .io_in_3_bits_payload_client_xact_id(acqNet_io_in_3_bits_payload_client_xact_id),
    .io_in_3_bits_payload_addr_beat(acqNet_io_in_3_bits_payload_addr_beat),
    .io_in_3_bits_payload_is_builtin_type(acqNet_io_in_3_bits_payload_is_builtin_type),
    .io_in_3_bits_payload_a_type(acqNet_io_in_3_bits_payload_a_type),
    .io_in_3_bits_payload_union(acqNet_io_in_3_bits_payload_union),
    .io_in_3_bits_payload_data(acqNet_io_in_3_bits_payload_data),
    .io_out_0_ready(acqNet_io_out_0_ready),
    .io_out_0_valid(acqNet_io_out_0_valid),
    .io_out_0_bits_header_src(acqNet_io_out_0_bits_header_src),
    .io_out_0_bits_header_dst(acqNet_io_out_0_bits_header_dst),
    .io_out_0_bits_payload_addr_block(acqNet_io_out_0_bits_payload_addr_block),
    .io_out_0_bits_payload_client_xact_id(acqNet_io_out_0_bits_payload_client_xact_id),
    .io_out_0_bits_payload_addr_beat(acqNet_io_out_0_bits_payload_addr_beat),
    .io_out_0_bits_payload_is_builtin_type(acqNet_io_out_0_bits_payload_is_builtin_type),
    .io_out_0_bits_payload_a_type(acqNet_io_out_0_bits_payload_a_type),
    .io_out_0_bits_payload_union(acqNet_io_out_0_bits_payload_union),
    .io_out_0_bits_payload_data(acqNet_io_out_0_bits_payload_data),
    .io_out_1_ready(acqNet_io_out_1_ready),
    .io_out_1_valid(acqNet_io_out_1_valid),
    .io_out_1_bits_header_src(acqNet_io_out_1_bits_header_src),
    .io_out_1_bits_header_dst(acqNet_io_out_1_bits_header_dst),
    .io_out_1_bits_payload_addr_block(acqNet_io_out_1_bits_payload_addr_block),
    .io_out_1_bits_payload_client_xact_id(acqNet_io_out_1_bits_payload_client_xact_id),
    .io_out_1_bits_payload_addr_beat(acqNet_io_out_1_bits_payload_addr_beat),
    .io_out_1_bits_payload_is_builtin_type(acqNet_io_out_1_bits_payload_is_builtin_type),
    .io_out_1_bits_payload_a_type(acqNet_io_out_1_bits_payload_a_type),
    .io_out_1_bits_payload_union(acqNet_io_out_1_bits_payload_union),
    .io_out_1_bits_payload_data(acqNet_io_out_1_bits_payload_data),
    .io_out_2_ready(acqNet_io_out_2_ready),
    .io_out_2_valid(acqNet_io_out_2_valid),
    .io_out_2_bits_header_src(acqNet_io_out_2_bits_header_src),
    .io_out_2_bits_header_dst(acqNet_io_out_2_bits_header_dst),
    .io_out_2_bits_payload_addr_block(acqNet_io_out_2_bits_payload_addr_block),
    .io_out_2_bits_payload_client_xact_id(acqNet_io_out_2_bits_payload_client_xact_id),
    .io_out_2_bits_payload_addr_beat(acqNet_io_out_2_bits_payload_addr_beat),
    .io_out_2_bits_payload_is_builtin_type(acqNet_io_out_2_bits_payload_is_builtin_type),
    .io_out_2_bits_payload_a_type(acqNet_io_out_2_bits_payload_a_type),
    .io_out_2_bits_payload_union(acqNet_io_out_2_bits_payload_union),
    .io_out_2_bits_payload_data(acqNet_io_out_2_bits_payload_data),
    .io_out_3_ready(acqNet_io_out_3_ready),
    .io_out_3_valid(acqNet_io_out_3_valid),
    .io_out_3_bits_header_src(acqNet_io_out_3_bits_header_src),
    .io_out_3_bits_header_dst(acqNet_io_out_3_bits_header_dst),
    .io_out_3_bits_payload_addr_block(acqNet_io_out_3_bits_payload_addr_block),
    .io_out_3_bits_payload_client_xact_id(acqNet_io_out_3_bits_payload_client_xact_id),
    .io_out_3_bits_payload_addr_beat(acqNet_io_out_3_bits_payload_addr_beat),
    .io_out_3_bits_payload_is_builtin_type(acqNet_io_out_3_bits_payload_is_builtin_type),
    .io_out_3_bits_payload_a_type(acqNet_io_out_3_bits_payload_a_type),
    .io_out_3_bits_payload_union(acqNet_io_out_3_bits_payload_union),
    .io_out_3_bits_payload_data(acqNet_io_out_3_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BASIC_BUS_1 relNet (
    .clk(relNet_clk),
    .reset(relNet_reset),
    .io_in_0_ready(relNet_io_in_0_ready),
    .io_in_0_valid(relNet_io_in_0_valid),
    .io_in_0_bits_header_src(relNet_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(relNet_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_beat(relNet_io_in_0_bits_payload_addr_beat),
    .io_in_0_bits_payload_addr_block(relNet_io_in_0_bits_payload_addr_block),
    .io_in_0_bits_payload_client_xact_id(relNet_io_in_0_bits_payload_client_xact_id),
    .io_in_0_bits_payload_voluntary(relNet_io_in_0_bits_payload_voluntary),
    .io_in_0_bits_payload_r_type(relNet_io_in_0_bits_payload_r_type),
    .io_in_0_bits_payload_data(relNet_io_in_0_bits_payload_data),
    .io_in_1_ready(relNet_io_in_1_ready),
    .io_in_1_valid(relNet_io_in_1_valid),
    .io_in_1_bits_header_src(relNet_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(relNet_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_beat(relNet_io_in_1_bits_payload_addr_beat),
    .io_in_1_bits_payload_addr_block(relNet_io_in_1_bits_payload_addr_block),
    .io_in_1_bits_payload_client_xact_id(relNet_io_in_1_bits_payload_client_xact_id),
    .io_in_1_bits_payload_voluntary(relNet_io_in_1_bits_payload_voluntary),
    .io_in_1_bits_payload_r_type(relNet_io_in_1_bits_payload_r_type),
    .io_in_1_bits_payload_data(relNet_io_in_1_bits_payload_data),
    .io_in_2_ready(relNet_io_in_2_ready),
    .io_in_2_valid(relNet_io_in_2_valid),
    .io_in_2_bits_header_src(relNet_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(relNet_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_beat(relNet_io_in_2_bits_payload_addr_beat),
    .io_in_2_bits_payload_addr_block(relNet_io_in_2_bits_payload_addr_block),
    .io_in_2_bits_payload_client_xact_id(relNet_io_in_2_bits_payload_client_xact_id),
    .io_in_2_bits_payload_voluntary(relNet_io_in_2_bits_payload_voluntary),
    .io_in_2_bits_payload_r_type(relNet_io_in_2_bits_payload_r_type),
    .io_in_2_bits_payload_data(relNet_io_in_2_bits_payload_data),
    .io_in_3_ready(relNet_io_in_3_ready),
    .io_in_3_valid(relNet_io_in_3_valid),
    .io_in_3_bits_header_src(relNet_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(relNet_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_beat(relNet_io_in_3_bits_payload_addr_beat),
    .io_in_3_bits_payload_addr_block(relNet_io_in_3_bits_payload_addr_block),
    .io_in_3_bits_payload_client_xact_id(relNet_io_in_3_bits_payload_client_xact_id),
    .io_in_3_bits_payload_voluntary(relNet_io_in_3_bits_payload_voluntary),
    .io_in_3_bits_payload_r_type(relNet_io_in_3_bits_payload_r_type),
    .io_in_3_bits_payload_data(relNet_io_in_3_bits_payload_data),
    .io_out_0_ready(relNet_io_out_0_ready),
    .io_out_0_valid(relNet_io_out_0_valid),
    .io_out_0_bits_header_src(relNet_io_out_0_bits_header_src),
    .io_out_0_bits_header_dst(relNet_io_out_0_bits_header_dst),
    .io_out_0_bits_payload_addr_beat(relNet_io_out_0_bits_payload_addr_beat),
    .io_out_0_bits_payload_addr_block(relNet_io_out_0_bits_payload_addr_block),
    .io_out_0_bits_payload_client_xact_id(relNet_io_out_0_bits_payload_client_xact_id),
    .io_out_0_bits_payload_voluntary(relNet_io_out_0_bits_payload_voluntary),
    .io_out_0_bits_payload_r_type(relNet_io_out_0_bits_payload_r_type),
    .io_out_0_bits_payload_data(relNet_io_out_0_bits_payload_data),
    .io_out_1_ready(relNet_io_out_1_ready),
    .io_out_1_valid(relNet_io_out_1_valid),
    .io_out_1_bits_header_src(relNet_io_out_1_bits_header_src),
    .io_out_1_bits_header_dst(relNet_io_out_1_bits_header_dst),
    .io_out_1_bits_payload_addr_beat(relNet_io_out_1_bits_payload_addr_beat),
    .io_out_1_bits_payload_addr_block(relNet_io_out_1_bits_payload_addr_block),
    .io_out_1_bits_payload_client_xact_id(relNet_io_out_1_bits_payload_client_xact_id),
    .io_out_1_bits_payload_voluntary(relNet_io_out_1_bits_payload_voluntary),
    .io_out_1_bits_payload_r_type(relNet_io_out_1_bits_payload_r_type),
    .io_out_1_bits_payload_data(relNet_io_out_1_bits_payload_data),
    .io_out_2_ready(relNet_io_out_2_ready),
    .io_out_2_valid(relNet_io_out_2_valid),
    .io_out_2_bits_header_src(relNet_io_out_2_bits_header_src),
    .io_out_2_bits_header_dst(relNet_io_out_2_bits_header_dst),
    .io_out_2_bits_payload_addr_beat(relNet_io_out_2_bits_payload_addr_beat),
    .io_out_2_bits_payload_addr_block(relNet_io_out_2_bits_payload_addr_block),
    .io_out_2_bits_payload_client_xact_id(relNet_io_out_2_bits_payload_client_xact_id),
    .io_out_2_bits_payload_voluntary(relNet_io_out_2_bits_payload_voluntary),
    .io_out_2_bits_payload_r_type(relNet_io_out_2_bits_payload_r_type),
    .io_out_2_bits_payload_data(relNet_io_out_2_bits_payload_data),
    .io_out_3_ready(relNet_io_out_3_ready),
    .io_out_3_valid(relNet_io_out_3_valid),
    .io_out_3_bits_header_src(relNet_io_out_3_bits_header_src),
    .io_out_3_bits_header_dst(relNet_io_out_3_bits_header_dst),
    .io_out_3_bits_payload_addr_beat(relNet_io_out_3_bits_payload_addr_beat),
    .io_out_3_bits_payload_addr_block(relNet_io_out_3_bits_payload_addr_block),
    .io_out_3_bits_payload_client_xact_id(relNet_io_out_3_bits_payload_client_xact_id),
    .io_out_3_bits_payload_voluntary(relNet_io_out_3_bits_payload_voluntary),
    .io_out_3_bits_payload_r_type(relNet_io_out_3_bits_payload_r_type),
    .io_out_3_bits_payload_data(relNet_io_out_3_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BASIC_BUS_2 prbNet (
    .clk(prbNet_clk),
    .reset(prbNet_reset),
    .io_in_0_ready(prbNet_io_in_0_ready),
    .io_in_0_valid(prbNet_io_in_0_valid),
    .io_in_0_bits_header_src(prbNet_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(prbNet_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_block(prbNet_io_in_0_bits_payload_addr_block),
    .io_in_0_bits_payload_p_type(prbNet_io_in_0_bits_payload_p_type),
    .io_in_1_ready(prbNet_io_in_1_ready),
    .io_in_1_valid(prbNet_io_in_1_valid),
    .io_in_1_bits_header_src(prbNet_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(prbNet_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_block(prbNet_io_in_1_bits_payload_addr_block),
    .io_in_1_bits_payload_p_type(prbNet_io_in_1_bits_payload_p_type),
    .io_in_2_ready(prbNet_io_in_2_ready),
    .io_in_2_valid(prbNet_io_in_2_valid),
    .io_in_2_bits_header_src(prbNet_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(prbNet_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_block(prbNet_io_in_2_bits_payload_addr_block),
    .io_in_2_bits_payload_p_type(prbNet_io_in_2_bits_payload_p_type),
    .io_in_3_ready(prbNet_io_in_3_ready),
    .io_in_3_valid(prbNet_io_in_3_valid),
    .io_in_3_bits_header_src(prbNet_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(prbNet_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_block(prbNet_io_in_3_bits_payload_addr_block),
    .io_in_3_bits_payload_p_type(prbNet_io_in_3_bits_payload_p_type),
    .io_out_0_ready(prbNet_io_out_0_ready),
    .io_out_0_valid(prbNet_io_out_0_valid),
    .io_out_0_bits_header_src(prbNet_io_out_0_bits_header_src),
    .io_out_0_bits_header_dst(prbNet_io_out_0_bits_header_dst),
    .io_out_0_bits_payload_addr_block(prbNet_io_out_0_bits_payload_addr_block),
    .io_out_0_bits_payload_p_type(prbNet_io_out_0_bits_payload_p_type),
    .io_out_1_ready(prbNet_io_out_1_ready),
    .io_out_1_valid(prbNet_io_out_1_valid),
    .io_out_1_bits_header_src(prbNet_io_out_1_bits_header_src),
    .io_out_1_bits_header_dst(prbNet_io_out_1_bits_header_dst),
    .io_out_1_bits_payload_addr_block(prbNet_io_out_1_bits_payload_addr_block),
    .io_out_1_bits_payload_p_type(prbNet_io_out_1_bits_payload_p_type),
    .io_out_2_ready(prbNet_io_out_2_ready),
    .io_out_2_valid(prbNet_io_out_2_valid),
    .io_out_2_bits_header_src(prbNet_io_out_2_bits_header_src),
    .io_out_2_bits_header_dst(prbNet_io_out_2_bits_header_dst),
    .io_out_2_bits_payload_addr_block(prbNet_io_out_2_bits_payload_addr_block),
    .io_out_2_bits_payload_p_type(prbNet_io_out_2_bits_payload_p_type),
    .io_out_3_ready(prbNet_io_out_3_ready),
    .io_out_3_valid(prbNet_io_out_3_valid),
    .io_out_3_bits_header_src(prbNet_io_out_3_bits_header_src),
    .io_out_3_bits_header_dst(prbNet_io_out_3_bits_header_dst),
    .io_out_3_bits_payload_addr_block(prbNet_io_out_3_bits_payload_addr_block),
    .io_out_3_bits_payload_p_type(prbNet_io_out_3_bits_payload_p_type)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BASIC_BUS_3 gntNet (
    .clk(gntNet_clk),
    .reset(gntNet_reset),
    .io_in_0_ready(gntNet_io_in_0_ready),
    .io_in_0_valid(gntNet_io_in_0_valid),
    .io_in_0_bits_header_src(gntNet_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(gntNet_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_beat(gntNet_io_in_0_bits_payload_addr_beat),
    .io_in_0_bits_payload_client_xact_id(gntNet_io_in_0_bits_payload_client_xact_id),
    .io_in_0_bits_payload_manager_xact_id(gntNet_io_in_0_bits_payload_manager_xact_id),
    .io_in_0_bits_payload_is_builtin_type(gntNet_io_in_0_bits_payload_is_builtin_type),
    .io_in_0_bits_payload_g_type(gntNet_io_in_0_bits_payload_g_type),
    .io_in_0_bits_payload_data(gntNet_io_in_0_bits_payload_data),
    .io_in_1_ready(gntNet_io_in_1_ready),
    .io_in_1_valid(gntNet_io_in_1_valid),
    .io_in_1_bits_header_src(gntNet_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(gntNet_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_beat(gntNet_io_in_1_bits_payload_addr_beat),
    .io_in_1_bits_payload_client_xact_id(gntNet_io_in_1_bits_payload_client_xact_id),
    .io_in_1_bits_payload_manager_xact_id(gntNet_io_in_1_bits_payload_manager_xact_id),
    .io_in_1_bits_payload_is_builtin_type(gntNet_io_in_1_bits_payload_is_builtin_type),
    .io_in_1_bits_payload_g_type(gntNet_io_in_1_bits_payload_g_type),
    .io_in_1_bits_payload_data(gntNet_io_in_1_bits_payload_data),
    .io_in_2_ready(gntNet_io_in_2_ready),
    .io_in_2_valid(gntNet_io_in_2_valid),
    .io_in_2_bits_header_src(gntNet_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(gntNet_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_beat(gntNet_io_in_2_bits_payload_addr_beat),
    .io_in_2_bits_payload_client_xact_id(gntNet_io_in_2_bits_payload_client_xact_id),
    .io_in_2_bits_payload_manager_xact_id(gntNet_io_in_2_bits_payload_manager_xact_id),
    .io_in_2_bits_payload_is_builtin_type(gntNet_io_in_2_bits_payload_is_builtin_type),
    .io_in_2_bits_payload_g_type(gntNet_io_in_2_bits_payload_g_type),
    .io_in_2_bits_payload_data(gntNet_io_in_2_bits_payload_data),
    .io_in_3_ready(gntNet_io_in_3_ready),
    .io_in_3_valid(gntNet_io_in_3_valid),
    .io_in_3_bits_header_src(gntNet_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(gntNet_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_beat(gntNet_io_in_3_bits_payload_addr_beat),
    .io_in_3_bits_payload_client_xact_id(gntNet_io_in_3_bits_payload_client_xact_id),
    .io_in_3_bits_payload_manager_xact_id(gntNet_io_in_3_bits_payload_manager_xact_id),
    .io_in_3_bits_payload_is_builtin_type(gntNet_io_in_3_bits_payload_is_builtin_type),
    .io_in_3_bits_payload_g_type(gntNet_io_in_3_bits_payload_g_type),
    .io_in_3_bits_payload_data(gntNet_io_in_3_bits_payload_data),
    .io_out_0_ready(gntNet_io_out_0_ready),
    .io_out_0_valid(gntNet_io_out_0_valid),
    .io_out_0_bits_header_src(gntNet_io_out_0_bits_header_src),
    .io_out_0_bits_header_dst(gntNet_io_out_0_bits_header_dst),
    .io_out_0_bits_payload_addr_beat(gntNet_io_out_0_bits_payload_addr_beat),
    .io_out_0_bits_payload_client_xact_id(gntNet_io_out_0_bits_payload_client_xact_id),
    .io_out_0_bits_payload_manager_xact_id(gntNet_io_out_0_bits_payload_manager_xact_id),
    .io_out_0_bits_payload_is_builtin_type(gntNet_io_out_0_bits_payload_is_builtin_type),
    .io_out_0_bits_payload_g_type(gntNet_io_out_0_bits_payload_g_type),
    .io_out_0_bits_payload_data(gntNet_io_out_0_bits_payload_data),
    .io_out_1_ready(gntNet_io_out_1_ready),
    .io_out_1_valid(gntNet_io_out_1_valid),
    .io_out_1_bits_header_src(gntNet_io_out_1_bits_header_src),
    .io_out_1_bits_header_dst(gntNet_io_out_1_bits_header_dst),
    .io_out_1_bits_payload_addr_beat(gntNet_io_out_1_bits_payload_addr_beat),
    .io_out_1_bits_payload_client_xact_id(gntNet_io_out_1_bits_payload_client_xact_id),
    .io_out_1_bits_payload_manager_xact_id(gntNet_io_out_1_bits_payload_manager_xact_id),
    .io_out_1_bits_payload_is_builtin_type(gntNet_io_out_1_bits_payload_is_builtin_type),
    .io_out_1_bits_payload_g_type(gntNet_io_out_1_bits_payload_g_type),
    .io_out_1_bits_payload_data(gntNet_io_out_1_bits_payload_data),
    .io_out_2_ready(gntNet_io_out_2_ready),
    .io_out_2_valid(gntNet_io_out_2_valid),
    .io_out_2_bits_header_src(gntNet_io_out_2_bits_header_src),
    .io_out_2_bits_header_dst(gntNet_io_out_2_bits_header_dst),
    .io_out_2_bits_payload_addr_beat(gntNet_io_out_2_bits_payload_addr_beat),
    .io_out_2_bits_payload_client_xact_id(gntNet_io_out_2_bits_payload_client_xact_id),
    .io_out_2_bits_payload_manager_xact_id(gntNet_io_out_2_bits_payload_manager_xact_id),
    .io_out_2_bits_payload_is_builtin_type(gntNet_io_out_2_bits_payload_is_builtin_type),
    .io_out_2_bits_payload_g_type(gntNet_io_out_2_bits_payload_g_type),
    .io_out_2_bits_payload_data(gntNet_io_out_2_bits_payload_data),
    .io_out_3_ready(gntNet_io_out_3_ready),
    .io_out_3_valid(gntNet_io_out_3_valid),
    .io_out_3_bits_header_src(gntNet_io_out_3_bits_header_src),
    .io_out_3_bits_header_dst(gntNet_io_out_3_bits_header_dst),
    .io_out_3_bits_payload_addr_beat(gntNet_io_out_3_bits_payload_addr_beat),
    .io_out_3_bits_payload_client_xact_id(gntNet_io_out_3_bits_payload_client_xact_id),
    .io_out_3_bits_payload_manager_xact_id(gntNet_io_out_3_bits_payload_manager_xact_id),
    .io_out_3_bits_payload_is_builtin_type(gntNet_io_out_3_bits_payload_is_builtin_type),
    .io_out_3_bits_payload_g_type(gntNet_io_out_3_bits_payload_g_type),
    .io_out_3_bits_payload_data(gntNet_io_out_3_bits_payload_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BASIC_BUS_4 ackNet (
    .clk(ackNet_clk),
    .reset(ackNet_reset),
    .io_in_0_ready(ackNet_io_in_0_ready),
    .io_in_0_valid(ackNet_io_in_0_valid),
    .io_in_0_bits_header_src(ackNet_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(ackNet_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_manager_xact_id(ackNet_io_in_0_bits_payload_manager_xact_id),
    .io_in_1_ready(ackNet_io_in_1_ready),
    .io_in_1_valid(ackNet_io_in_1_valid),
    .io_in_1_bits_header_src(ackNet_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(ackNet_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_manager_xact_id(ackNet_io_in_1_bits_payload_manager_xact_id),
    .io_in_2_ready(ackNet_io_in_2_ready),
    .io_in_2_valid(ackNet_io_in_2_valid),
    .io_in_2_bits_header_src(ackNet_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(ackNet_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_manager_xact_id(ackNet_io_in_2_bits_payload_manager_xact_id),
    .io_in_3_ready(ackNet_io_in_3_ready),
    .io_in_3_valid(ackNet_io_in_3_valid),
    .io_in_3_bits_header_src(ackNet_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(ackNet_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_manager_xact_id(ackNet_io_in_3_bits_payload_manager_xact_id),
    .io_out_0_ready(ackNet_io_out_0_ready),
    .io_out_0_valid(ackNet_io_out_0_valid),
    .io_out_0_bits_header_src(ackNet_io_out_0_bits_header_src),
    .io_out_0_bits_header_dst(ackNet_io_out_0_bits_header_dst),
    .io_out_0_bits_payload_manager_xact_id(ackNet_io_out_0_bits_payload_manager_xact_id),
    .io_out_1_ready(ackNet_io_out_1_ready),
    .io_out_1_valid(ackNet_io_out_1_valid),
    .io_out_1_bits_header_src(ackNet_io_out_1_bits_header_src),
    .io_out_1_bits_header_dst(ackNet_io_out_1_bits_header_dst),
    .io_out_1_bits_payload_manager_xact_id(ackNet_io_out_1_bits_payload_manager_xact_id),
    .io_out_2_ready(ackNet_io_out_2_ready),
    .io_out_2_valid(ackNet_io_out_2_valid),
    .io_out_2_bits_header_src(ackNet_io_out_2_bits_header_src),
    .io_out_2_bits_header_dst(ackNet_io_out_2_bits_header_dst),
    .io_out_2_bits_payload_manager_xact_id(ackNet_io_out_2_bits_payload_manager_xact_id),
    .io_out_3_ready(ackNet_io_out_3_ready),
    .io_out_3_valid(ackNet_io_out_3_valid),
    .io_out_3_bits_header_src(ackNet_io_out_3_bits_header_src),
    .io_out_3_bits_header_dst(ackNet_io_out_3_bits_header_dst),
    .io_out_3_bits_payload_manager_xact_id(ackNet_io_out_3_bits_payload_manager_xact_id)
  );
  assign io_clients_cached_0_acquire_ready = ClientTileLinkNetworkPort_1_io_client_acquire_ready;
  assign io_clients_cached_0_probe_valid = ClientTileLinkNetworkPort_1_io_client_probe_valid;
  assign io_clients_cached_0_probe_bits_addr_block = ClientTileLinkNetworkPort_1_io_client_probe_bits_addr_block;
  assign io_clients_cached_0_probe_bits_p_type = ClientTileLinkNetworkPort_1_io_client_probe_bits_p_type;
  assign io_clients_cached_0_release_ready = ClientTileLinkNetworkPort_1_io_client_release_ready;
  assign io_clients_cached_0_grant_valid = ClientTileLinkNetworkPort_1_io_client_grant_valid;
  assign io_clients_cached_0_grant_bits_addr_beat = ClientTileLinkNetworkPort_1_io_client_grant_bits_addr_beat;
  assign io_clients_cached_0_grant_bits_client_xact_id = ClientTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id;
  assign io_clients_cached_0_grant_bits_manager_xact_id = ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id;
  assign io_clients_cached_0_grant_bits_is_builtin_type = ClientTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type;
  assign io_clients_cached_0_grant_bits_g_type = ClientTileLinkNetworkPort_1_io_client_grant_bits_g_type;
  assign io_clients_cached_0_grant_bits_data = ClientTileLinkNetworkPort_1_io_client_grant_bits_data;
  assign io_clients_cached_0_grant_bits_manager_id = ClientTileLinkNetworkPort_1_io_client_grant_bits_manager_id;
  assign io_clients_cached_0_finish_ready = ClientTileLinkNetworkPort_1_io_client_finish_ready;
  assign io_clients_uncached_0_acquire_ready = ClientUncachedTileLinkNetworkPort_1_io_client_acquire_ready;
  assign io_clients_uncached_0_grant_valid = ClientUncachedTileLinkNetworkPort_1_io_client_grant_valid;
  assign io_clients_uncached_0_grant_bits_addr_beat = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_addr_beat;
  assign io_clients_uncached_0_grant_bits_client_xact_id = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_client_xact_id;
  assign io_clients_uncached_0_grant_bits_manager_xact_id = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_manager_xact_id;
  assign io_clients_uncached_0_grant_bits_is_builtin_type = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_is_builtin_type;
  assign io_clients_uncached_0_grant_bits_g_type = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_g_type;
  assign io_clients_uncached_0_grant_bits_data = ClientUncachedTileLinkNetworkPort_1_io_client_grant_bits_data;
  assign io_managers_0_acquire_valid = ManagerTileLinkNetworkPort_2_io_manager_acquire_valid;
  assign io_managers_0_acquire_bits_addr_block = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_block;
  assign io_managers_0_acquire_bits_client_xact_id = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_xact_id;
  assign io_managers_0_acquire_bits_addr_beat = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_addr_beat;
  assign io_managers_0_acquire_bits_is_builtin_type = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_is_builtin_type;
  assign io_managers_0_acquire_bits_a_type = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_a_type;
  assign io_managers_0_acquire_bits_union = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_union;
  assign io_managers_0_acquire_bits_data = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_data;
  assign io_managers_0_acquire_bits_client_id = ManagerTileLinkNetworkPort_2_io_manager_acquire_bits_client_id;
  assign io_managers_0_grant_ready = ManagerTileLinkNetworkPort_2_io_manager_grant_ready;
  assign io_managers_0_finish_valid = ManagerTileLinkNetworkPort_2_io_manager_finish_valid;
  assign io_managers_0_finish_bits_manager_xact_id = ManagerTileLinkNetworkPort_2_io_manager_finish_bits_manager_xact_id;
  assign io_managers_0_probe_ready = ManagerTileLinkNetworkPort_2_io_manager_probe_ready;
  assign io_managers_0_release_valid = ManagerTileLinkNetworkPort_2_io_manager_release_valid;
  assign io_managers_0_release_bits_addr_beat = ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_beat;
  assign io_managers_0_release_bits_addr_block = ManagerTileLinkNetworkPort_2_io_manager_release_bits_addr_block;
  assign io_managers_0_release_bits_client_xact_id = ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_xact_id;
  assign io_managers_0_release_bits_voluntary = ManagerTileLinkNetworkPort_2_io_manager_release_bits_voluntary;
  assign io_managers_0_release_bits_r_type = ManagerTileLinkNetworkPort_2_io_manager_release_bits_r_type;
  assign io_managers_0_release_bits_data = ManagerTileLinkNetworkPort_2_io_manager_release_bits_data;
  assign io_managers_0_release_bits_client_id = ManagerTileLinkNetworkPort_2_io_manager_release_bits_client_id;
  assign io_managers_1_acquire_valid = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_valid;
  assign io_managers_1_acquire_bits_addr_block = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_block;
  assign io_managers_1_acquire_bits_client_xact_id = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_xact_id;
  assign io_managers_1_acquire_bits_addr_beat = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_addr_beat;
  assign io_managers_1_acquire_bits_is_builtin_type = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_is_builtin_type;
  assign io_managers_1_acquire_bits_a_type = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_a_type;
  assign io_managers_1_acquire_bits_union = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_union;
  assign io_managers_1_acquire_bits_data = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_data;
  assign io_managers_1_acquire_bits_client_id = ManagerTileLinkNetworkPort_1_1_io_manager_acquire_bits_client_id;
  assign io_managers_1_grant_ready = ManagerTileLinkNetworkPort_1_1_io_manager_grant_ready;
  assign io_managers_1_finish_valid = ManagerTileLinkNetworkPort_1_1_io_manager_finish_valid;
  assign io_managers_1_finish_bits_manager_xact_id = ManagerTileLinkNetworkPort_1_1_io_manager_finish_bits_manager_xact_id;
  assign io_managers_1_probe_ready = ManagerTileLinkNetworkPort_1_1_io_manager_probe_ready;
  assign io_managers_1_release_valid = ManagerTileLinkNetworkPort_1_1_io_manager_release_valid;
  assign io_managers_1_release_bits_addr_beat = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_beat;
  assign io_managers_1_release_bits_addr_block = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_addr_block;
  assign io_managers_1_release_bits_client_xact_id = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_xact_id;
  assign io_managers_1_release_bits_voluntary = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_voluntary;
  assign io_managers_1_release_bits_r_type = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_r_type;
  assign io_managers_1_release_bits_data = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_data;
  assign io_managers_1_release_bits_client_id = ManagerTileLinkNetworkPort_1_1_io_manager_release_bits_client_id;
  assign TileLinkEnqueuer_4_clk = clk;
  assign TileLinkEnqueuer_4_reset = reset;
  assign TileLinkEnqueuer_4_io_client_acquire_valid = ClientTileLinkNetworkPort_1_io_network_acquire_valid;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_header_src = ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_src;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_header_dst = ClientTileLinkNetworkPort_1_io_network_acquire_bits_header_dst;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_block = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_client_xact_id = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_addr_beat = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_is_builtin_type = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_a_type = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_union = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_union;
  assign TileLinkEnqueuer_4_io_client_acquire_bits_payload_data = ClientTileLinkNetworkPort_1_io_network_acquire_bits_payload_data;
  assign TileLinkEnqueuer_4_io_client_grant_ready = ClientTileLinkNetworkPort_1_io_network_grant_ready;
  assign TileLinkEnqueuer_4_io_client_finish_valid = ClientTileLinkNetworkPort_1_io_network_finish_valid;
  assign TileLinkEnqueuer_4_io_client_finish_bits_header_src = ClientTileLinkNetworkPort_1_io_network_finish_bits_header_src;
  assign TileLinkEnqueuer_4_io_client_finish_bits_header_dst = ClientTileLinkNetworkPort_1_io_network_finish_bits_header_dst;
  assign TileLinkEnqueuer_4_io_client_finish_bits_payload_manager_xact_id = ClientTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_4_io_client_probe_ready = ClientTileLinkNetworkPort_1_io_network_probe_ready;
  assign TileLinkEnqueuer_4_io_client_release_valid = ClientTileLinkNetworkPort_1_io_network_release_valid;
  assign TileLinkEnqueuer_4_io_client_release_bits_header_src = ClientTileLinkNetworkPort_1_io_network_release_bits_header_src;
  assign TileLinkEnqueuer_4_io_client_release_bits_header_dst = ClientTileLinkNetworkPort_1_io_network_release_bits_header_dst;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_addr_beat = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_addr_block = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_client_xact_id = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_voluntary = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_r_type = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_r_type;
  assign TileLinkEnqueuer_4_io_client_release_bits_payload_data = ClientTileLinkNetworkPort_1_io_network_release_bits_payload_data;
  assign TileLinkEnqueuer_4_io_manager_acquire_ready = T_13624_ready;
  assign TileLinkEnqueuer_4_io_manager_grant_valid = T_17371_valid;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_header_src = T_17371_bits_header_src;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_header_dst = T_17371_bits_header_dst;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_addr_beat = T_17371_bits_payload_addr_beat;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_client_xact_id = T_17371_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_manager_xact_id = T_17371_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_is_builtin_type = T_17371_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_g_type = T_17371_bits_payload_g_type;
  assign TileLinkEnqueuer_4_io_manager_grant_bits_payload_data = T_17371_bits_payload_data;
  assign TileLinkEnqueuer_4_io_manager_finish_ready = T_19326_ready;
  assign TileLinkEnqueuer_4_io_manager_probe_valid = T_15939_valid;
  assign TileLinkEnqueuer_4_io_manager_probe_bits_header_src = T_15939_bits_header_src;
  assign TileLinkEnqueuer_4_io_manager_probe_bits_header_dst = T_15939_bits_header_dst;
  assign TileLinkEnqueuer_4_io_manager_probe_bits_payload_addr_block = T_15939_bits_payload_addr_block;
  assign TileLinkEnqueuer_4_io_manager_probe_bits_payload_p_type = T_15939_bits_payload_p_type;
  assign TileLinkEnqueuer_4_io_manager_release_ready = T_15091_ready;
  assign ClientTileLinkNetworkPort_1_clk = clk;
  assign ClientTileLinkNetworkPort_1_reset = reset;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_valid = io_clients_cached_0_acquire_valid;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_block = io_clients_cached_0_acquire_bits_addr_block;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id = io_clients_cached_0_acquire_bits_client_xact_id;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat = io_clients_cached_0_acquire_bits_addr_beat;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type = io_clients_cached_0_acquire_bits_is_builtin_type;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_a_type = io_clients_cached_0_acquire_bits_a_type;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_union = io_clients_cached_0_acquire_bits_union;
  assign ClientTileLinkNetworkPort_1_io_client_acquire_bits_data = io_clients_cached_0_acquire_bits_data;
  assign ClientTileLinkNetworkPort_1_io_client_probe_ready = io_clients_cached_0_probe_ready;
  assign ClientTileLinkNetworkPort_1_io_client_release_valid = io_clients_cached_0_release_valid;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_addr_beat = io_clients_cached_0_release_bits_addr_beat;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_addr_block = io_clients_cached_0_release_bits_addr_block;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_client_xact_id = io_clients_cached_0_release_bits_client_xact_id;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_voluntary = io_clients_cached_0_release_bits_voluntary;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_r_type = io_clients_cached_0_release_bits_r_type;
  assign ClientTileLinkNetworkPort_1_io_client_release_bits_data = io_clients_cached_0_release_bits_data;
  assign ClientTileLinkNetworkPort_1_io_client_grant_ready = io_clients_cached_0_grant_ready;
  assign ClientTileLinkNetworkPort_1_io_client_finish_valid = io_clients_cached_0_finish_valid;
  assign ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_xact_id = io_clients_cached_0_finish_bits_manager_xact_id;
  assign ClientTileLinkNetworkPort_1_io_client_finish_bits_manager_id = io_clients_cached_0_finish_bits_manager_id;
  assign ClientTileLinkNetworkPort_1_io_network_acquire_ready = TileLinkEnqueuer_4_io_client_acquire_ready;
  assign ClientTileLinkNetworkPort_1_io_network_grant_valid = TileLinkEnqueuer_4_io_client_grant_valid;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_header_src = TileLinkEnqueuer_4_io_client_grant_bits_header_src;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_header_dst = TileLinkEnqueuer_4_io_client_grant_bits_header_dst;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat = TileLinkEnqueuer_4_io_client_grant_bits_payload_addr_beat;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id = TileLinkEnqueuer_4_io_client_grant_bits_payload_client_xact_id;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id = TileLinkEnqueuer_4_io_client_grant_bits_payload_manager_xact_id;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type = TileLinkEnqueuer_4_io_client_grant_bits_payload_is_builtin_type;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type = TileLinkEnqueuer_4_io_client_grant_bits_payload_g_type;
  assign ClientTileLinkNetworkPort_1_io_network_grant_bits_payload_data = TileLinkEnqueuer_4_io_client_grant_bits_payload_data;
  assign ClientTileLinkNetworkPort_1_io_network_finish_ready = TileLinkEnqueuer_4_io_client_finish_ready;
  assign ClientTileLinkNetworkPort_1_io_network_probe_valid = TileLinkEnqueuer_4_io_client_probe_valid;
  assign ClientTileLinkNetworkPort_1_io_network_probe_bits_header_src = TileLinkEnqueuer_4_io_client_probe_bits_header_src;
  assign ClientTileLinkNetworkPort_1_io_network_probe_bits_header_dst = TileLinkEnqueuer_4_io_client_probe_bits_header_dst;
  assign ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block = TileLinkEnqueuer_4_io_client_probe_bits_payload_addr_block;
  assign ClientTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type = TileLinkEnqueuer_4_io_client_probe_bits_payload_p_type;
  assign ClientTileLinkNetworkPort_1_io_network_release_ready = TileLinkEnqueuer_4_io_client_release_ready;
  assign TileLinkEnqueuer_1_1_clk = clk;
  assign TileLinkEnqueuer_1_1_reset = reset;
  assign TileLinkEnqueuer_1_1_io_client_acquire_valid = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_valid;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_header_src = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_src;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_header_dst = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_header_dst;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_block = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_block;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_client_xact_id = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_addr_beat = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_addr_beat;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_is_builtin_type = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_a_type = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_a_type;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_union = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_union;
  assign TileLinkEnqueuer_1_1_io_client_acquire_bits_payload_data = ClientUncachedTileLinkNetworkPort_1_io_network_acquire_bits_payload_data;
  assign TileLinkEnqueuer_1_1_io_client_grant_ready = ClientUncachedTileLinkNetworkPort_1_io_network_grant_ready;
  assign TileLinkEnqueuer_1_1_io_client_finish_valid = ClientUncachedTileLinkNetworkPort_1_io_network_finish_valid;
  assign TileLinkEnqueuer_1_1_io_client_finish_bits_header_src = ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_src;
  assign TileLinkEnqueuer_1_1_io_client_finish_bits_header_dst = ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_header_dst;
  assign TileLinkEnqueuer_1_1_io_client_finish_bits_payload_manager_xact_id = ClientUncachedTileLinkNetworkPort_1_io_network_finish_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_1_1_io_client_probe_ready = ClientUncachedTileLinkNetworkPort_1_io_network_probe_ready;
  assign TileLinkEnqueuer_1_1_io_client_release_valid = ClientUncachedTileLinkNetworkPort_1_io_network_release_valid;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_header_src = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_src;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_header_dst = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_header_dst;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_beat = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_beat;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_addr_block = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_addr_block;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_client_xact_id = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_voluntary = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_voluntary;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_r_type = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_r_type;
  assign TileLinkEnqueuer_1_1_io_client_release_bits_payload_data = ClientUncachedTileLinkNetworkPort_1_io_network_release_bits_payload_data;
  assign TileLinkEnqueuer_1_1_io_manager_acquire_ready = T_13794_ready;
  assign TileLinkEnqueuer_1_1_io_manager_grant_valid = T_17936_valid;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_header_src = T_17936_bits_header_src;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_header_dst = T_17936_bits_header_dst;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_addr_beat = T_17936_bits_payload_addr_beat;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_client_xact_id = T_17936_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_manager_xact_id = T_17936_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_is_builtin_type = T_17936_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_g_type = T_17936_bits_payload_g_type;
  assign TileLinkEnqueuer_1_1_io_manager_grant_bits_payload_data = T_17936_bits_payload_data;
  assign TileLinkEnqueuer_1_1_io_manager_finish_ready = T_19466_ready;
  assign TileLinkEnqueuer_1_1_io_manager_probe_valid = T_16484_valid;
  assign TileLinkEnqueuer_1_1_io_manager_probe_bits_header_src = T_16484_bits_header_src;
  assign TileLinkEnqueuer_1_1_io_manager_probe_bits_header_dst = T_16484_bits_header_dst;
  assign TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_addr_block = T_16484_bits_payload_addr_block;
  assign TileLinkEnqueuer_1_1_io_manager_probe_bits_payload_p_type = T_16484_bits_payload_p_type;
  assign TileLinkEnqueuer_1_1_io_manager_release_ready = T_15256_ready;
  assign ClientUncachedTileLinkNetworkPort_1_clk = clk;
  assign ClientUncachedTileLinkNetworkPort_1_reset = reset;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_valid = io_clients_uncached_0_acquire_valid;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_block = io_clients_uncached_0_acquire_bits_addr_block;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_client_xact_id = io_clients_uncached_0_acquire_bits_client_xact_id;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_addr_beat = io_clients_uncached_0_acquire_bits_addr_beat;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_is_builtin_type = io_clients_uncached_0_acquire_bits_is_builtin_type;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_a_type = io_clients_uncached_0_acquire_bits_a_type;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_union = io_clients_uncached_0_acquire_bits_union;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_acquire_bits_data = io_clients_uncached_0_acquire_bits_data;
  assign ClientUncachedTileLinkNetworkPort_1_io_client_grant_ready = io_clients_uncached_0_grant_ready;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_acquire_ready = TileLinkEnqueuer_1_1_io_client_acquire_ready;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_valid = TileLinkEnqueuer_1_1_io_client_grant_valid;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_src = TileLinkEnqueuer_1_1_io_client_grant_bits_header_src;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_header_dst = TileLinkEnqueuer_1_1_io_client_grant_bits_header_dst;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_addr_beat = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_addr_beat;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_client_xact_id = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_client_xact_id;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_manager_xact_id = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_manager_xact_id;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_is_builtin_type = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_is_builtin_type;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_g_type = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_g_type;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_grant_bits_payload_data = TileLinkEnqueuer_1_1_io_client_grant_bits_payload_data;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_finish_ready = TileLinkEnqueuer_1_1_io_client_finish_ready;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_probe_valid = TileLinkEnqueuer_1_1_io_client_probe_valid;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_src = TileLinkEnqueuer_1_1_io_client_probe_bits_header_src;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_header_dst = TileLinkEnqueuer_1_1_io_client_probe_bits_header_dst;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_addr_block = TileLinkEnqueuer_1_1_io_client_probe_bits_payload_addr_block;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_probe_bits_payload_p_type = TileLinkEnqueuer_1_1_io_client_probe_bits_payload_p_type;
  assign ClientUncachedTileLinkNetworkPort_1_io_network_release_ready = TileLinkEnqueuer_1_1_io_client_release_ready;
  assign ManagerTileLinkNetworkPort_2_clk = clk;
  assign ManagerTileLinkNetworkPort_2_reset = reset;
  assign ManagerTileLinkNetworkPort_2_io_manager_acquire_ready = io_managers_0_acquire_ready;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_valid = io_managers_0_grant_valid;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_addr_beat = io_managers_0_grant_bits_addr_beat;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_xact_id = io_managers_0_grant_bits_client_xact_id;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_manager_xact_id = io_managers_0_grant_bits_manager_xact_id;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_is_builtin_type = io_managers_0_grant_bits_is_builtin_type;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_g_type = io_managers_0_grant_bits_g_type;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_data = io_managers_0_grant_bits_data;
  assign ManagerTileLinkNetworkPort_2_io_manager_grant_bits_client_id = io_managers_0_grant_bits_client_id;
  assign ManagerTileLinkNetworkPort_2_io_manager_finish_ready = io_managers_0_finish_ready;
  assign ManagerTileLinkNetworkPort_2_io_manager_probe_valid = io_managers_0_probe_valid;
  assign ManagerTileLinkNetworkPort_2_io_manager_probe_bits_addr_block = io_managers_0_probe_bits_addr_block;
  assign ManagerTileLinkNetworkPort_2_io_manager_probe_bits_p_type = io_managers_0_probe_bits_p_type;
  assign ManagerTileLinkNetworkPort_2_io_manager_probe_bits_client_id = io_managers_0_probe_bits_client_id;
  assign ManagerTileLinkNetworkPort_2_io_manager_release_ready = io_managers_0_release_ready;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_valid = TileLinkEnqueuer_2_1_io_manager_acquire_valid;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_src = TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_src;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_header_dst = TileLinkEnqueuer_2_1_io_manager_acquire_bits_header_dst;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_block = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_block;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_client_xact_id = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_client_xact_id;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_addr_beat = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_addr_beat;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_is_builtin_type = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_is_builtin_type;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_a_type = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_a_type;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_union = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_union;
  assign ManagerTileLinkNetworkPort_2_io_network_acquire_bits_payload_data = TileLinkEnqueuer_2_1_io_manager_acquire_bits_payload_data;
  assign ManagerTileLinkNetworkPort_2_io_network_grant_ready = TileLinkEnqueuer_2_1_io_manager_grant_ready;
  assign ManagerTileLinkNetworkPort_2_io_network_finish_valid = TileLinkEnqueuer_2_1_io_manager_finish_valid;
  assign ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_src = TileLinkEnqueuer_2_1_io_manager_finish_bits_header_src;
  assign ManagerTileLinkNetworkPort_2_io_network_finish_bits_header_dst = TileLinkEnqueuer_2_1_io_manager_finish_bits_header_dst;
  assign ManagerTileLinkNetworkPort_2_io_network_finish_bits_payload_manager_xact_id = TileLinkEnqueuer_2_1_io_manager_finish_bits_payload_manager_xact_id;
  assign ManagerTileLinkNetworkPort_2_io_network_probe_ready = TileLinkEnqueuer_2_1_io_manager_probe_ready;
  assign ManagerTileLinkNetworkPort_2_io_network_release_valid = TileLinkEnqueuer_2_1_io_manager_release_valid;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_header_src = TileLinkEnqueuer_2_1_io_manager_release_bits_header_src;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_header_dst = TileLinkEnqueuer_2_1_io_manager_release_bits_header_dst;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_beat = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_beat;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_addr_block = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_addr_block;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_client_xact_id = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_client_xact_id;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_voluntary = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_voluntary;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_r_type = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_r_type;
  assign ManagerTileLinkNetworkPort_2_io_network_release_bits_payload_data = TileLinkEnqueuer_2_1_io_manager_release_bits_payload_data;
  assign TileLinkEnqueuer_2_1_clk = clk;
  assign TileLinkEnqueuer_2_1_reset = reset;
  assign TileLinkEnqueuer_2_1_io_client_acquire_valid = T_12724_valid;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_header_src = T_12724_bits_header_src;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_header_dst = T_12724_bits_header_dst;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_block = T_12724_bits_payload_addr_block;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_client_xact_id = T_12724_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_addr_beat = T_12724_bits_payload_addr_beat;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_is_builtin_type = T_12724_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_a_type = T_12724_bits_payload_a_type;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_union = T_12724_bits_payload_union;
  assign TileLinkEnqueuer_2_1_io_client_acquire_bits_payload_data = T_12724_bits_payload_data;
  assign TileLinkEnqueuer_2_1_io_client_grant_ready = T_16801_ready;
  assign TileLinkEnqueuer_2_1_io_client_finish_valid = T_18486_valid;
  assign TileLinkEnqueuer_2_1_io_client_finish_bits_header_src = T_18486_bits_header_src;
  assign TileLinkEnqueuer_2_1_io_client_finish_bits_header_dst = T_18486_bits_header_dst;
  assign TileLinkEnqueuer_2_1_io_client_finish_bits_payload_manager_xact_id = T_18486_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_2_1_io_client_probe_ready = T_15409_ready;
  assign TileLinkEnqueuer_2_1_io_client_release_valid = T_14201_valid;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_header_src = T_14201_bits_header_src;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_header_dst = T_14201_bits_header_dst;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_beat = T_14201_bits_payload_addr_beat;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_addr_block = T_14201_bits_payload_addr_block;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_client_xact_id = T_14201_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_voluntary = T_14201_bits_payload_voluntary;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_r_type = T_14201_bits_payload_r_type;
  assign TileLinkEnqueuer_2_1_io_client_release_bits_payload_data = T_14201_bits_payload_data;
  assign TileLinkEnqueuer_2_1_io_manager_acquire_ready = ManagerTileLinkNetworkPort_2_io_network_acquire_ready;
  assign TileLinkEnqueuer_2_1_io_manager_grant_valid = ManagerTileLinkNetworkPort_2_io_network_grant_valid;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_header_src = ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_src;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_header_dst = ManagerTileLinkNetworkPort_2_io_network_grant_bits_header_dst;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_addr_beat = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_addr_beat;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_client_xact_id = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_manager_xact_id = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_is_builtin_type = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_g_type = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_g_type;
  assign TileLinkEnqueuer_2_1_io_manager_grant_bits_payload_data = ManagerTileLinkNetworkPort_2_io_network_grant_bits_payload_data;
  assign TileLinkEnqueuer_2_1_io_manager_finish_ready = ManagerTileLinkNetworkPort_2_io_network_finish_ready;
  assign TileLinkEnqueuer_2_1_io_manager_probe_valid = ManagerTileLinkNetworkPort_2_io_network_probe_valid;
  assign TileLinkEnqueuer_2_1_io_manager_probe_bits_header_src = ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_src;
  assign TileLinkEnqueuer_2_1_io_manager_probe_bits_header_dst = ManagerTileLinkNetworkPort_2_io_network_probe_bits_header_dst;
  assign TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_addr_block = ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_addr_block;
  assign TileLinkEnqueuer_2_1_io_manager_probe_bits_payload_p_type = ManagerTileLinkNetworkPort_2_io_network_probe_bits_payload_p_type;
  assign TileLinkEnqueuer_2_1_io_manager_release_ready = ManagerTileLinkNetworkPort_2_io_network_release_ready;
  assign ManagerTileLinkNetworkPort_1_1_clk = clk;
  assign ManagerTileLinkNetworkPort_1_1_reset = reset;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_acquire_ready = io_managers_1_acquire_ready;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_valid = io_managers_1_grant_valid;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_addr_beat = io_managers_1_grant_bits_addr_beat;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_xact_id = io_managers_1_grant_bits_client_xact_id;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_manager_xact_id = io_managers_1_grant_bits_manager_xact_id;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_is_builtin_type = io_managers_1_grant_bits_is_builtin_type;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_g_type = io_managers_1_grant_bits_g_type;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_data = io_managers_1_grant_bits_data;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_grant_bits_client_id = io_managers_1_grant_bits_client_id;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_finish_ready = io_managers_1_finish_ready;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_probe_valid = io_managers_1_probe_valid;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_addr_block = io_managers_1_probe_bits_addr_block;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_p_type = io_managers_1_probe_bits_p_type;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_probe_bits_client_id = io_managers_1_probe_bits_client_id;
  assign ManagerTileLinkNetworkPort_1_1_io_manager_release_ready = io_managers_1_release_ready;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_valid = TileLinkEnqueuer_3_1_io_manager_acquire_valid;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_src = TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_src;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_header_dst = TileLinkEnqueuer_3_1_io_manager_acquire_bits_header_dst;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_block = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_block;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_client_xact_id = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_client_xact_id;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_addr_beat = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_addr_beat;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_is_builtin_type = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_is_builtin_type;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_a_type = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_a_type;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_union = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_union;
  assign ManagerTileLinkNetworkPort_1_1_io_network_acquire_bits_payload_data = TileLinkEnqueuer_3_1_io_manager_acquire_bits_payload_data;
  assign ManagerTileLinkNetworkPort_1_1_io_network_grant_ready = TileLinkEnqueuer_3_1_io_manager_grant_ready;
  assign ManagerTileLinkNetworkPort_1_1_io_network_finish_valid = TileLinkEnqueuer_3_1_io_manager_finish_valid;
  assign ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_src = TileLinkEnqueuer_3_1_io_manager_finish_bits_header_src;
  assign ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_header_dst = TileLinkEnqueuer_3_1_io_manager_finish_bits_header_dst;
  assign ManagerTileLinkNetworkPort_1_1_io_network_finish_bits_payload_manager_xact_id = TileLinkEnqueuer_3_1_io_manager_finish_bits_payload_manager_xact_id;
  assign ManagerTileLinkNetworkPort_1_1_io_network_probe_ready = TileLinkEnqueuer_3_1_io_manager_probe_ready;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_valid = TileLinkEnqueuer_3_1_io_manager_release_valid;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_src = TileLinkEnqueuer_3_1_io_manager_release_bits_header_src;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_header_dst = TileLinkEnqueuer_3_1_io_manager_release_bits_header_dst;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_beat = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_beat;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_addr_block = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_addr_block;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_client_xact_id = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_client_xact_id;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_voluntary = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_voluntary;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_r_type = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_r_type;
  assign ManagerTileLinkNetworkPort_1_1_io_network_release_bits_payload_data = TileLinkEnqueuer_3_1_io_manager_release_bits_payload_data;
  assign TileLinkEnqueuer_3_1_clk = clk;
  assign TileLinkEnqueuer_3_1_reset = reset;
  assign TileLinkEnqueuer_3_1_io_client_acquire_valid = T_13294_valid;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_header_src = T_13294_bits_header_src;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_header_dst = T_13294_bits_header_dst;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_block = T_13294_bits_payload_addr_block;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_client_xact_id = T_13294_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_addr_beat = T_13294_bits_payload_addr_beat;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_is_builtin_type = T_13294_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_a_type = T_13294_bits_payload_a_type;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_union = T_13294_bits_payload_union;
  assign TileLinkEnqueuer_3_1_io_client_acquire_bits_payload_data = T_13294_bits_payload_data;
  assign TileLinkEnqueuer_3_1_io_client_grant_ready = T_16966_ready;
  assign TileLinkEnqueuer_3_1_io_client_finish_valid = T_19026_valid;
  assign TileLinkEnqueuer_3_1_io_client_finish_bits_header_src = T_19026_bits_header_src;
  assign TileLinkEnqueuer_3_1_io_client_finish_bits_header_dst = T_19026_bits_header_dst;
  assign TileLinkEnqueuer_3_1_io_client_finish_bits_payload_manager_xact_id = T_19026_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_3_1_io_client_probe_ready = T_15554_ready;
  assign TileLinkEnqueuer_3_1_io_client_release_valid = T_14766_valid;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_header_src = T_14766_bits_header_src;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_header_dst = T_14766_bits_header_dst;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_beat = T_14766_bits_payload_addr_beat;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_addr_block = T_14766_bits_payload_addr_block;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_client_xact_id = T_14766_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_voluntary = T_14766_bits_payload_voluntary;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_r_type = T_14766_bits_payload_r_type;
  assign TileLinkEnqueuer_3_1_io_client_release_bits_payload_data = T_14766_bits_payload_data;
  assign TileLinkEnqueuer_3_1_io_manager_acquire_ready = ManagerTileLinkNetworkPort_1_1_io_network_acquire_ready;
  assign TileLinkEnqueuer_3_1_io_manager_grant_valid = ManagerTileLinkNetworkPort_1_1_io_network_grant_valid;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_header_src = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_src;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_header_dst = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_header_dst;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_addr_beat = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_addr_beat;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_client_xact_id = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_client_xact_id;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_manager_xact_id = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_manager_xact_id;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_is_builtin_type = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_is_builtin_type;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_g_type = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_g_type;
  assign TileLinkEnqueuer_3_1_io_manager_grant_bits_payload_data = ManagerTileLinkNetworkPort_1_1_io_network_grant_bits_payload_data;
  assign TileLinkEnqueuer_3_1_io_manager_finish_ready = ManagerTileLinkNetworkPort_1_1_io_network_finish_ready;
  assign TileLinkEnqueuer_3_1_io_manager_probe_valid = ManagerTileLinkNetworkPort_1_1_io_network_probe_valid;
  assign TileLinkEnqueuer_3_1_io_manager_probe_bits_header_src = ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_src;
  assign TileLinkEnqueuer_3_1_io_manager_probe_bits_header_dst = ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_header_dst;
  assign TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_addr_block = ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_addr_block;
  assign TileLinkEnqueuer_3_1_io_manager_probe_bits_payload_p_type = ManagerTileLinkNetworkPort_1_1_io_network_probe_bits_payload_p_type;
  assign TileLinkEnqueuer_3_1_io_manager_release_ready = ManagerTileLinkNetworkPort_1_1_io_network_release_ready;
  assign acqNet_clk = clk;
  assign acqNet_reset = reset;
  assign acqNet_io_in_0_valid = 1'h0;
  assign acqNet_io_in_0_bits_header_src = GEN_0;
  assign acqNet_io_in_0_bits_header_dst = GEN_1;
  assign acqNet_io_in_0_bits_payload_addr_block = GEN_2;
  assign acqNet_io_in_0_bits_payload_client_xact_id = GEN_3;
  assign acqNet_io_in_0_bits_payload_addr_beat = GEN_4;
  assign acqNet_io_in_0_bits_payload_is_builtin_type = GEN_5;
  assign acqNet_io_in_0_bits_payload_a_type = GEN_6;
  assign acqNet_io_in_0_bits_payload_union = GEN_7;
  assign acqNet_io_in_0_bits_payload_data = GEN_8;
  assign acqNet_io_in_1_valid = 1'h0;
  assign acqNet_io_in_1_bits_header_src = GEN_9;
  assign acqNet_io_in_1_bits_header_dst = GEN_10;
  assign acqNet_io_in_1_bits_payload_addr_block = GEN_11;
  assign acqNet_io_in_1_bits_payload_client_xact_id = GEN_12;
  assign acqNet_io_in_1_bits_payload_addr_beat = GEN_13;
  assign acqNet_io_in_1_bits_payload_is_builtin_type = GEN_14;
  assign acqNet_io_in_1_bits_payload_a_type = GEN_15;
  assign acqNet_io_in_1_bits_payload_union = GEN_16;
  assign acqNet_io_in_1_bits_payload_data = GEN_17;
  assign acqNet_io_in_2_valid = T_13624_valid;
  assign acqNet_io_in_2_bits_header_src = T_13624_bits_header_src;
  assign acqNet_io_in_2_bits_header_dst = T_13624_bits_header_dst;
  assign acqNet_io_in_2_bits_payload_addr_block = T_13624_bits_payload_addr_block;
  assign acqNet_io_in_2_bits_payload_client_xact_id = T_13624_bits_payload_client_xact_id;
  assign acqNet_io_in_2_bits_payload_addr_beat = T_13624_bits_payload_addr_beat;
  assign acqNet_io_in_2_bits_payload_is_builtin_type = T_13624_bits_payload_is_builtin_type;
  assign acqNet_io_in_2_bits_payload_a_type = T_13624_bits_payload_a_type;
  assign acqNet_io_in_2_bits_payload_union = T_13624_bits_payload_union;
  assign acqNet_io_in_2_bits_payload_data = T_13624_bits_payload_data;
  assign acqNet_io_in_3_valid = T_13794_valid;
  assign acqNet_io_in_3_bits_header_src = T_13794_bits_header_src;
  assign acqNet_io_in_3_bits_header_dst = T_13794_bits_header_dst;
  assign acqNet_io_in_3_bits_payload_addr_block = T_13794_bits_payload_addr_block;
  assign acqNet_io_in_3_bits_payload_client_xact_id = T_13794_bits_payload_client_xact_id;
  assign acqNet_io_in_3_bits_payload_addr_beat = T_13794_bits_payload_addr_beat;
  assign acqNet_io_in_3_bits_payload_is_builtin_type = T_13794_bits_payload_is_builtin_type;
  assign acqNet_io_in_3_bits_payload_a_type = T_13794_bits_payload_a_type;
  assign acqNet_io_in_3_bits_payload_union = T_13794_bits_payload_union;
  assign acqNet_io_in_3_bits_payload_data = T_13794_bits_payload_data;
  assign acqNet_io_out_0_ready = T_12724_ready;
  assign acqNet_io_out_1_ready = T_13294_ready;
  assign acqNet_io_out_2_ready = 1'h0;
  assign acqNet_io_out_3_ready = 1'h0;
  assign relNet_clk = clk;
  assign relNet_reset = reset;
  assign relNet_io_in_0_valid = 1'h0;
  assign relNet_io_in_0_bits_header_src = GEN_18;
  assign relNet_io_in_0_bits_header_dst = GEN_19;
  assign relNet_io_in_0_bits_payload_addr_beat = GEN_20;
  assign relNet_io_in_0_bits_payload_addr_block = GEN_21;
  assign relNet_io_in_0_bits_payload_client_xact_id = GEN_22;
  assign relNet_io_in_0_bits_payload_voluntary = GEN_23;
  assign relNet_io_in_0_bits_payload_r_type = GEN_24;
  assign relNet_io_in_0_bits_payload_data = GEN_25;
  assign relNet_io_in_1_valid = 1'h0;
  assign relNet_io_in_1_bits_header_src = GEN_26;
  assign relNet_io_in_1_bits_header_dst = GEN_27;
  assign relNet_io_in_1_bits_payload_addr_beat = GEN_28;
  assign relNet_io_in_1_bits_payload_addr_block = GEN_29;
  assign relNet_io_in_1_bits_payload_client_xact_id = GEN_30;
  assign relNet_io_in_1_bits_payload_voluntary = GEN_31;
  assign relNet_io_in_1_bits_payload_r_type = GEN_32;
  assign relNet_io_in_1_bits_payload_data = GEN_33;
  assign relNet_io_in_2_valid = T_15091_valid;
  assign relNet_io_in_2_bits_header_src = T_15091_bits_header_src;
  assign relNet_io_in_2_bits_header_dst = T_15091_bits_header_dst;
  assign relNet_io_in_2_bits_payload_addr_beat = T_15091_bits_payload_addr_beat;
  assign relNet_io_in_2_bits_payload_addr_block = T_15091_bits_payload_addr_block;
  assign relNet_io_in_2_bits_payload_client_xact_id = T_15091_bits_payload_client_xact_id;
  assign relNet_io_in_2_bits_payload_voluntary = T_15091_bits_payload_voluntary;
  assign relNet_io_in_2_bits_payload_r_type = T_15091_bits_payload_r_type;
  assign relNet_io_in_2_bits_payload_data = T_15091_bits_payload_data;
  assign relNet_io_in_3_valid = T_15256_valid;
  assign relNet_io_in_3_bits_header_src = T_15256_bits_header_src;
  assign relNet_io_in_3_bits_header_dst = T_15256_bits_header_dst;
  assign relNet_io_in_3_bits_payload_addr_beat = T_15256_bits_payload_addr_beat;
  assign relNet_io_in_3_bits_payload_addr_block = T_15256_bits_payload_addr_block;
  assign relNet_io_in_3_bits_payload_client_xact_id = T_15256_bits_payload_client_xact_id;
  assign relNet_io_in_3_bits_payload_voluntary = T_15256_bits_payload_voluntary;
  assign relNet_io_in_3_bits_payload_r_type = T_15256_bits_payload_r_type;
  assign relNet_io_in_3_bits_payload_data = T_15256_bits_payload_data;
  assign relNet_io_out_0_ready = T_14201_ready;
  assign relNet_io_out_1_ready = T_14766_ready;
  assign relNet_io_out_2_ready = 1'h0;
  assign relNet_io_out_3_ready = 1'h0;
  assign prbNet_clk = clk;
  assign prbNet_reset = reset;
  assign prbNet_io_in_0_valid = T_15409_valid;
  assign prbNet_io_in_0_bits_header_src = T_15409_bits_header_src;
  assign prbNet_io_in_0_bits_header_dst = T_15409_bits_header_dst;
  assign prbNet_io_in_0_bits_payload_addr_block = T_15409_bits_payload_addr_block;
  assign prbNet_io_in_0_bits_payload_p_type = T_15409_bits_payload_p_type;
  assign prbNet_io_in_1_valid = T_15554_valid;
  assign prbNet_io_in_1_bits_header_src = T_15554_bits_header_src;
  assign prbNet_io_in_1_bits_header_dst = T_15554_bits_header_dst;
  assign prbNet_io_in_1_bits_payload_addr_block = T_15554_bits_payload_addr_block;
  assign prbNet_io_in_1_bits_payload_p_type = T_15554_bits_payload_p_type;
  assign prbNet_io_in_2_valid = 1'h0;
  assign prbNet_io_in_2_bits_header_src = GEN_34;
  assign prbNet_io_in_2_bits_header_dst = GEN_35;
  assign prbNet_io_in_2_bits_payload_addr_block = GEN_36;
  assign prbNet_io_in_2_bits_payload_p_type = GEN_37;
  assign prbNet_io_in_3_valid = 1'h0;
  assign prbNet_io_in_3_bits_header_src = GEN_38;
  assign prbNet_io_in_3_bits_header_dst = GEN_39;
  assign prbNet_io_in_3_bits_payload_addr_block = GEN_40;
  assign prbNet_io_in_3_bits_payload_p_type = GEN_41;
  assign prbNet_io_out_0_ready = 1'h0;
  assign prbNet_io_out_1_ready = 1'h0;
  assign prbNet_io_out_2_ready = T_15939_ready;
  assign prbNet_io_out_3_ready = T_16484_ready;
  assign gntNet_clk = clk;
  assign gntNet_reset = reset;
  assign gntNet_io_in_0_valid = T_16801_valid;
  assign gntNet_io_in_0_bits_header_src = T_16801_bits_header_src;
  assign gntNet_io_in_0_bits_header_dst = T_16801_bits_header_dst;
  assign gntNet_io_in_0_bits_payload_addr_beat = T_16801_bits_payload_addr_beat;
  assign gntNet_io_in_0_bits_payload_client_xact_id = T_16801_bits_payload_client_xact_id;
  assign gntNet_io_in_0_bits_payload_manager_xact_id = T_16801_bits_payload_manager_xact_id;
  assign gntNet_io_in_0_bits_payload_is_builtin_type = T_16801_bits_payload_is_builtin_type;
  assign gntNet_io_in_0_bits_payload_g_type = T_16801_bits_payload_g_type;
  assign gntNet_io_in_0_bits_payload_data = T_16801_bits_payload_data;
  assign gntNet_io_in_1_valid = T_16966_valid;
  assign gntNet_io_in_1_bits_header_src = T_16966_bits_header_src;
  assign gntNet_io_in_1_bits_header_dst = T_16966_bits_header_dst;
  assign gntNet_io_in_1_bits_payload_addr_beat = T_16966_bits_payload_addr_beat;
  assign gntNet_io_in_1_bits_payload_client_xact_id = T_16966_bits_payload_client_xact_id;
  assign gntNet_io_in_1_bits_payload_manager_xact_id = T_16966_bits_payload_manager_xact_id;
  assign gntNet_io_in_1_bits_payload_is_builtin_type = T_16966_bits_payload_is_builtin_type;
  assign gntNet_io_in_1_bits_payload_g_type = T_16966_bits_payload_g_type;
  assign gntNet_io_in_1_bits_payload_data = T_16966_bits_payload_data;
  assign gntNet_io_in_2_valid = 1'h0;
  assign gntNet_io_in_2_bits_header_src = GEN_42;
  assign gntNet_io_in_2_bits_header_dst = GEN_43;
  assign gntNet_io_in_2_bits_payload_addr_beat = GEN_44;
  assign gntNet_io_in_2_bits_payload_client_xact_id = GEN_45;
  assign gntNet_io_in_2_bits_payload_manager_xact_id = GEN_46;
  assign gntNet_io_in_2_bits_payload_is_builtin_type = GEN_47;
  assign gntNet_io_in_2_bits_payload_g_type = GEN_48;
  assign gntNet_io_in_2_bits_payload_data = GEN_49;
  assign gntNet_io_in_3_valid = 1'h0;
  assign gntNet_io_in_3_bits_header_src = GEN_50;
  assign gntNet_io_in_3_bits_header_dst = GEN_51;
  assign gntNet_io_in_3_bits_payload_addr_beat = GEN_52;
  assign gntNet_io_in_3_bits_payload_client_xact_id = GEN_53;
  assign gntNet_io_in_3_bits_payload_manager_xact_id = GEN_54;
  assign gntNet_io_in_3_bits_payload_is_builtin_type = GEN_55;
  assign gntNet_io_in_3_bits_payload_g_type = GEN_56;
  assign gntNet_io_in_3_bits_payload_data = GEN_57;
  assign gntNet_io_out_0_ready = 1'h0;
  assign gntNet_io_out_1_ready = 1'h0;
  assign gntNet_io_out_2_ready = T_17371_ready;
  assign gntNet_io_out_3_ready = T_17936_ready;
  assign ackNet_clk = clk;
  assign ackNet_reset = reset;
  assign ackNet_io_in_0_valid = 1'h0;
  assign ackNet_io_in_0_bits_header_src = GEN_58;
  assign ackNet_io_in_0_bits_header_dst = GEN_59;
  assign ackNet_io_in_0_bits_payload_manager_xact_id = GEN_60;
  assign ackNet_io_in_1_valid = 1'h0;
  assign ackNet_io_in_1_bits_header_src = GEN_61;
  assign ackNet_io_in_1_bits_header_dst = GEN_62;
  assign ackNet_io_in_1_bits_payload_manager_xact_id = GEN_63;
  assign ackNet_io_in_2_valid = T_19326_valid;
  assign ackNet_io_in_2_bits_header_src = T_19326_bits_header_src;
  assign ackNet_io_in_2_bits_header_dst = T_19326_bits_header_dst;
  assign ackNet_io_in_2_bits_payload_manager_xact_id = T_19326_bits_payload_manager_xact_id;
  assign ackNet_io_in_3_valid = T_19466_valid;
  assign ackNet_io_in_3_bits_header_src = T_19466_bits_header_src;
  assign ackNet_io_in_3_bits_header_dst = T_19466_bits_header_dst;
  assign ackNet_io_in_3_bits_payload_manager_xact_id = T_19466_bits_payload_manager_xact_id;
  assign ackNet_io_out_0_ready = T_18486_ready;
  assign ackNet_io_out_1_ready = T_19026_ready;
  assign ackNet_io_out_2_ready = 1'h0;
  assign ackNet_io_out_3_ready = 1'h0;
  assign T_12724_ready = TileLinkEnqueuer_2_1_io_client_acquire_ready;
  assign T_12724_valid = acqNet_io_out_0_valid;
  assign T_12724_bits_header_src = T_12953;
  assign T_12724_bits_header_dst = acqNet_io_out_0_bits_header_dst;
  assign T_12724_bits_payload_addr_block = acqNet_io_out_0_bits_payload_addr_block;
  assign T_12724_bits_payload_client_xact_id = acqNet_io_out_0_bits_payload_client_xact_id;
  assign T_12724_bits_payload_addr_beat = acqNet_io_out_0_bits_payload_addr_beat;
  assign T_12724_bits_payload_is_builtin_type = acqNet_io_out_0_bits_payload_is_builtin_type;
  assign T_12724_bits_payload_a_type = acqNet_io_out_0_bits_payload_a_type;
  assign T_12724_bits_payload_union = acqNet_io_out_0_bits_payload_union;
  assign T_12724_bits_payload_data = acqNet_io_out_0_bits_payload_data;
  assign T_12952 = acqNet_io_out_0_bits_header_src - 2'h2;
  assign T_12953 = T_12952[1:0];
  assign T_13294_ready = TileLinkEnqueuer_3_1_io_client_acquire_ready;
  assign T_13294_valid = acqNet_io_out_1_valid;
  assign T_13294_bits_header_src = T_13523;
  assign T_13294_bits_header_dst = acqNet_io_out_1_bits_header_dst;
  assign T_13294_bits_payload_addr_block = acqNet_io_out_1_bits_payload_addr_block;
  assign T_13294_bits_payload_client_xact_id = acqNet_io_out_1_bits_payload_client_xact_id;
  assign T_13294_bits_payload_addr_beat = acqNet_io_out_1_bits_payload_addr_beat;
  assign T_13294_bits_payload_is_builtin_type = acqNet_io_out_1_bits_payload_is_builtin_type;
  assign T_13294_bits_payload_a_type = acqNet_io_out_1_bits_payload_a_type;
  assign T_13294_bits_payload_union = acqNet_io_out_1_bits_payload_union;
  assign T_13294_bits_payload_data = acqNet_io_out_1_bits_payload_data;
  assign T_13522 = acqNet_io_out_1_bits_header_src - 2'h2;
  assign T_13523 = T_13522[1:0];
  assign T_13624_ready = acqNet_io_in_2_ready;
  assign T_13624_valid = TileLinkEnqueuer_4_io_manager_acquire_valid;
  assign T_13624_bits_header_src = T_13693;
  assign T_13624_bits_header_dst = TileLinkEnqueuer_4_io_manager_acquire_bits_header_dst;
  assign T_13624_bits_payload_addr_block = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_block;
  assign T_13624_bits_payload_client_xact_id = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_client_xact_id;
  assign T_13624_bits_payload_addr_beat = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_addr_beat;
  assign T_13624_bits_payload_is_builtin_type = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_is_builtin_type;
  assign T_13624_bits_payload_a_type = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_a_type;
  assign T_13624_bits_payload_union = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_union;
  assign T_13624_bits_payload_data = TileLinkEnqueuer_4_io_manager_acquire_bits_payload_data;
  assign T_13692 = TileLinkEnqueuer_4_io_manager_acquire_bits_header_src + 2'h2;
  assign T_13693 = T_13692[1:0];
  assign T_13794_ready = acqNet_io_in_3_ready;
  assign T_13794_valid = TileLinkEnqueuer_1_1_io_manager_acquire_valid;
  assign T_13794_bits_header_src = T_13863;
  assign T_13794_bits_header_dst = TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_dst;
  assign T_13794_bits_payload_addr_block = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_block;
  assign T_13794_bits_payload_client_xact_id = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_client_xact_id;
  assign T_13794_bits_payload_addr_beat = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_addr_beat;
  assign T_13794_bits_payload_is_builtin_type = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_is_builtin_type;
  assign T_13794_bits_payload_a_type = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_a_type;
  assign T_13794_bits_payload_union = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_union;
  assign T_13794_bits_payload_data = TileLinkEnqueuer_1_1_io_manager_acquire_bits_payload_data;
  assign T_13862 = TileLinkEnqueuer_1_1_io_manager_acquire_bits_header_src + 2'h2;
  assign T_13863 = T_13862[1:0];
  assign T_14201_ready = TileLinkEnqueuer_2_1_io_client_release_ready;
  assign T_14201_valid = relNet_io_out_0_valid;
  assign T_14201_bits_header_src = T_14428;
  assign T_14201_bits_header_dst = relNet_io_out_0_bits_header_dst;
  assign T_14201_bits_payload_addr_beat = relNet_io_out_0_bits_payload_addr_beat;
  assign T_14201_bits_payload_addr_block = relNet_io_out_0_bits_payload_addr_block;
  assign T_14201_bits_payload_client_xact_id = relNet_io_out_0_bits_payload_client_xact_id;
  assign T_14201_bits_payload_voluntary = relNet_io_out_0_bits_payload_voluntary;
  assign T_14201_bits_payload_r_type = relNet_io_out_0_bits_payload_r_type;
  assign T_14201_bits_payload_data = relNet_io_out_0_bits_payload_data;
  assign T_14427 = relNet_io_out_0_bits_header_src - 2'h2;
  assign T_14428 = T_14427[1:0];
  assign T_14766_ready = TileLinkEnqueuer_3_1_io_client_release_ready;
  assign T_14766_valid = relNet_io_out_1_valid;
  assign T_14766_bits_header_src = T_14993;
  assign T_14766_bits_header_dst = relNet_io_out_1_bits_header_dst;
  assign T_14766_bits_payload_addr_beat = relNet_io_out_1_bits_payload_addr_beat;
  assign T_14766_bits_payload_addr_block = relNet_io_out_1_bits_payload_addr_block;
  assign T_14766_bits_payload_client_xact_id = relNet_io_out_1_bits_payload_client_xact_id;
  assign T_14766_bits_payload_voluntary = relNet_io_out_1_bits_payload_voluntary;
  assign T_14766_bits_payload_r_type = relNet_io_out_1_bits_payload_r_type;
  assign T_14766_bits_payload_data = relNet_io_out_1_bits_payload_data;
  assign T_14992 = relNet_io_out_1_bits_header_src - 2'h2;
  assign T_14993 = T_14992[1:0];
  assign T_15091_ready = relNet_io_in_2_ready;
  assign T_15091_valid = TileLinkEnqueuer_4_io_manager_release_valid;
  assign T_15091_bits_header_src = T_15158;
  assign T_15091_bits_header_dst = TileLinkEnqueuer_4_io_manager_release_bits_header_dst;
  assign T_15091_bits_payload_addr_beat = TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_beat;
  assign T_15091_bits_payload_addr_block = TileLinkEnqueuer_4_io_manager_release_bits_payload_addr_block;
  assign T_15091_bits_payload_client_xact_id = TileLinkEnqueuer_4_io_manager_release_bits_payload_client_xact_id;
  assign T_15091_bits_payload_voluntary = TileLinkEnqueuer_4_io_manager_release_bits_payload_voluntary;
  assign T_15091_bits_payload_r_type = TileLinkEnqueuer_4_io_manager_release_bits_payload_r_type;
  assign T_15091_bits_payload_data = TileLinkEnqueuer_4_io_manager_release_bits_payload_data;
  assign T_15157 = TileLinkEnqueuer_4_io_manager_release_bits_header_src + 2'h2;
  assign T_15158 = T_15157[1:0];
  assign T_15256_ready = relNet_io_in_3_ready;
  assign T_15256_valid = TileLinkEnqueuer_1_1_io_manager_release_valid;
  assign T_15256_bits_header_src = T_15323;
  assign T_15256_bits_header_dst = TileLinkEnqueuer_1_1_io_manager_release_bits_header_dst;
  assign T_15256_bits_payload_addr_beat = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_beat;
  assign T_15256_bits_payload_addr_block = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_addr_block;
  assign T_15256_bits_payload_client_xact_id = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_client_xact_id;
  assign T_15256_bits_payload_voluntary = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_voluntary;
  assign T_15256_bits_payload_r_type = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_r_type;
  assign T_15256_bits_payload_data = TileLinkEnqueuer_1_1_io_manager_release_bits_payload_data;
  assign T_15322 = TileLinkEnqueuer_1_1_io_manager_release_bits_header_src + 2'h2;
  assign T_15323 = T_15322[1:0];
  assign T_15409_ready = prbNet_io_in_0_ready;
  assign T_15409_valid = TileLinkEnqueuer_2_1_io_client_probe_valid;
  assign T_15409_bits_header_src = TileLinkEnqueuer_2_1_io_client_probe_bits_header_src;
  assign T_15409_bits_header_dst = T_15468;
  assign T_15409_bits_payload_addr_block = TileLinkEnqueuer_2_1_io_client_probe_bits_payload_addr_block;
  assign T_15409_bits_payload_p_type = TileLinkEnqueuer_2_1_io_client_probe_bits_payload_p_type;
  assign T_15467 = TileLinkEnqueuer_2_1_io_client_probe_bits_header_dst + 2'h2;
  assign T_15468 = T_15467[1:0];
  assign T_15554_ready = prbNet_io_in_1_ready;
  assign T_15554_valid = TileLinkEnqueuer_3_1_io_client_probe_valid;
  assign T_15554_bits_header_src = TileLinkEnqueuer_3_1_io_client_probe_bits_header_src;
  assign T_15554_bits_header_dst = T_15613;
  assign T_15554_bits_payload_addr_block = TileLinkEnqueuer_3_1_io_client_probe_bits_payload_addr_block;
  assign T_15554_bits_payload_p_type = TileLinkEnqueuer_3_1_io_client_probe_bits_payload_p_type;
  assign T_15612 = TileLinkEnqueuer_3_1_io_client_probe_bits_header_dst + 2'h2;
  assign T_15613 = T_15612[1:0];
  assign T_15939_ready = TileLinkEnqueuer_4_io_manager_probe_ready;
  assign T_15939_valid = prbNet_io_out_2_valid;
  assign T_15939_bits_header_src = prbNet_io_out_2_bits_header_src;
  assign T_15939_bits_header_dst = T_16158;
  assign T_15939_bits_payload_addr_block = prbNet_io_out_2_bits_payload_addr_block;
  assign T_15939_bits_payload_p_type = prbNet_io_out_2_bits_payload_p_type;
  assign T_16157 = prbNet_io_out_2_bits_header_dst - 2'h2;
  assign T_16158 = T_16157[1:0];
  assign T_16484_ready = TileLinkEnqueuer_1_1_io_manager_probe_ready;
  assign T_16484_valid = prbNet_io_out_3_valid;
  assign T_16484_bits_header_src = prbNet_io_out_3_bits_header_src;
  assign T_16484_bits_header_dst = T_16703;
  assign T_16484_bits_payload_addr_block = prbNet_io_out_3_bits_payload_addr_block;
  assign T_16484_bits_payload_p_type = prbNet_io_out_3_bits_payload_p_type;
  assign T_16702 = prbNet_io_out_3_bits_header_dst - 2'h2;
  assign T_16703 = T_16702[1:0];
  assign T_16801_ready = gntNet_io_in_0_ready;
  assign T_16801_valid = TileLinkEnqueuer_2_1_io_client_grant_valid;
  assign T_16801_bits_header_src = TileLinkEnqueuer_2_1_io_client_grant_bits_header_src;
  assign T_16801_bits_header_dst = T_16868;
  assign T_16801_bits_payload_addr_beat = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_addr_beat;
  assign T_16801_bits_payload_client_xact_id = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_client_xact_id;
  assign T_16801_bits_payload_manager_xact_id = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_manager_xact_id;
  assign T_16801_bits_payload_is_builtin_type = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_is_builtin_type;
  assign T_16801_bits_payload_g_type = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_g_type;
  assign T_16801_bits_payload_data = TileLinkEnqueuer_2_1_io_client_grant_bits_payload_data;
  assign T_16867 = TileLinkEnqueuer_2_1_io_client_grant_bits_header_dst + 2'h2;
  assign T_16868 = T_16867[1:0];
  assign T_16966_ready = gntNet_io_in_1_ready;
  assign T_16966_valid = TileLinkEnqueuer_3_1_io_client_grant_valid;
  assign T_16966_bits_header_src = TileLinkEnqueuer_3_1_io_client_grant_bits_header_src;
  assign T_16966_bits_header_dst = T_17033;
  assign T_16966_bits_payload_addr_beat = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_addr_beat;
  assign T_16966_bits_payload_client_xact_id = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_client_xact_id;
  assign T_16966_bits_payload_manager_xact_id = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_manager_xact_id;
  assign T_16966_bits_payload_is_builtin_type = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_is_builtin_type;
  assign T_16966_bits_payload_g_type = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_g_type;
  assign T_16966_bits_payload_data = TileLinkEnqueuer_3_1_io_client_grant_bits_payload_data;
  assign T_17032 = TileLinkEnqueuer_3_1_io_client_grant_bits_header_dst + 2'h2;
  assign T_17033 = T_17032[1:0];
  assign T_17371_ready = TileLinkEnqueuer_4_io_manager_grant_ready;
  assign T_17371_valid = gntNet_io_out_2_valid;
  assign T_17371_bits_header_src = gntNet_io_out_2_bits_header_src;
  assign T_17371_bits_header_dst = T_17598;
  assign T_17371_bits_payload_addr_beat = gntNet_io_out_2_bits_payload_addr_beat;
  assign T_17371_bits_payload_client_xact_id = gntNet_io_out_2_bits_payload_client_xact_id;
  assign T_17371_bits_payload_manager_xact_id = gntNet_io_out_2_bits_payload_manager_xact_id;
  assign T_17371_bits_payload_is_builtin_type = gntNet_io_out_2_bits_payload_is_builtin_type;
  assign T_17371_bits_payload_g_type = gntNet_io_out_2_bits_payload_g_type;
  assign T_17371_bits_payload_data = gntNet_io_out_2_bits_payload_data;
  assign T_17597 = gntNet_io_out_2_bits_header_dst - 2'h2;
  assign T_17598 = T_17597[1:0];
  assign T_17936_ready = TileLinkEnqueuer_1_1_io_manager_grant_ready;
  assign T_17936_valid = gntNet_io_out_3_valid;
  assign T_17936_bits_header_src = gntNet_io_out_3_bits_header_src;
  assign T_17936_bits_header_dst = T_18163;
  assign T_17936_bits_payload_addr_beat = gntNet_io_out_3_bits_payload_addr_beat;
  assign T_17936_bits_payload_client_xact_id = gntNet_io_out_3_bits_payload_client_xact_id;
  assign T_17936_bits_payload_manager_xact_id = gntNet_io_out_3_bits_payload_manager_xact_id;
  assign T_17936_bits_payload_is_builtin_type = gntNet_io_out_3_bits_payload_is_builtin_type;
  assign T_17936_bits_payload_g_type = gntNet_io_out_3_bits_payload_g_type;
  assign T_17936_bits_payload_data = gntNet_io_out_3_bits_payload_data;
  assign T_18162 = gntNet_io_out_3_bits_header_dst - 2'h2;
  assign T_18163 = T_18162[1:0];
  assign T_18486_ready = TileLinkEnqueuer_2_1_io_client_finish_ready;
  assign T_18486_valid = ackNet_io_out_0_valid;
  assign T_18486_bits_header_src = T_18703;
  assign T_18486_bits_header_dst = ackNet_io_out_0_bits_header_dst;
  assign T_18486_bits_payload_manager_xact_id = ackNet_io_out_0_bits_payload_manager_xact_id;
  assign T_18702 = ackNet_io_out_0_bits_header_src - 2'h2;
  assign T_18703 = T_18702[1:0];
  assign T_19026_ready = TileLinkEnqueuer_3_1_io_client_finish_ready;
  assign T_19026_valid = ackNet_io_out_1_valid;
  assign T_19026_bits_header_src = T_19243;
  assign T_19026_bits_header_dst = ackNet_io_out_1_bits_header_dst;
  assign T_19026_bits_payload_manager_xact_id = ackNet_io_out_1_bits_payload_manager_xact_id;
  assign T_19242 = ackNet_io_out_1_bits_header_src - 2'h2;
  assign T_19243 = T_19242[1:0];
  assign T_19326_ready = ackNet_io_in_2_ready;
  assign T_19326_valid = TileLinkEnqueuer_4_io_manager_finish_valid;
  assign T_19326_bits_header_src = T_19383;
  assign T_19326_bits_header_dst = TileLinkEnqueuer_4_io_manager_finish_bits_header_dst;
  assign T_19326_bits_payload_manager_xact_id = TileLinkEnqueuer_4_io_manager_finish_bits_payload_manager_xact_id;
  assign T_19382 = TileLinkEnqueuer_4_io_manager_finish_bits_header_src + 2'h2;
  assign T_19383 = T_19382[1:0];
  assign T_19466_ready = ackNet_io_in_3_ready;
  assign T_19466_valid = TileLinkEnqueuer_1_1_io_manager_finish_valid;
  assign T_19466_bits_header_src = T_19523;
  assign T_19466_bits_header_dst = TileLinkEnqueuer_1_1_io_manager_finish_bits_header_dst;
  assign T_19466_bits_payload_manager_xact_id = TileLinkEnqueuer_1_1_io_manager_finish_bits_payload_manager_xact_id;
  assign T_19522 = TileLinkEnqueuer_1_1_io_manager_finish_bits_header_src + 2'h2;
  assign T_19523 = T_19522[1:0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_64 = {1{$random}};
  GEN_0 = GEN_64[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_65 = {1{$random}};
  GEN_1 = GEN_65[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_66 = {1{$random}};
  GEN_2 = GEN_66[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_67 = {1{$random}};
  GEN_3 = GEN_67[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_68 = {1{$random}};
  GEN_4 = GEN_68[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_69 = {1{$random}};
  GEN_5 = GEN_69[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_70 = {1{$random}};
  GEN_6 = GEN_70[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_71 = {1{$random}};
  GEN_7 = GEN_71[11:0];
  `endif
  `ifdef RANDOMIZE
  GEN_72 = {2{$random}};
  GEN_8 = GEN_72[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_73 = {1{$random}};
  GEN_9 = GEN_73[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_74 = {1{$random}};
  GEN_10 = GEN_74[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_75 = {1{$random}};
  GEN_11 = GEN_75[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_76 = {1{$random}};
  GEN_12 = GEN_76[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_77 = {1{$random}};
  GEN_13 = GEN_77[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_78 = {1{$random}};
  GEN_14 = GEN_78[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_79 = {1{$random}};
  GEN_15 = GEN_79[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_80 = {1{$random}};
  GEN_16 = GEN_80[11:0];
  `endif
  `ifdef RANDOMIZE
  GEN_81 = {2{$random}};
  GEN_17 = GEN_81[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_82 = {1{$random}};
  GEN_18 = GEN_82[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_83 = {1{$random}};
  GEN_19 = GEN_83[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_84 = {1{$random}};
  GEN_20 = GEN_84[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_85 = {1{$random}};
  GEN_21 = GEN_85[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_86 = {1{$random}};
  GEN_22 = GEN_86[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_87 = {1{$random}};
  GEN_23 = GEN_87[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_88 = {1{$random}};
  GEN_24 = GEN_88[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_89 = {2{$random}};
  GEN_25 = GEN_89[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_90 = {1{$random}};
  GEN_26 = GEN_90[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_91 = {1{$random}};
  GEN_27 = GEN_91[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_92 = {1{$random}};
  GEN_28 = GEN_92[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_93 = {1{$random}};
  GEN_29 = GEN_93[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_94 = {1{$random}};
  GEN_30 = GEN_94[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_95 = {1{$random}};
  GEN_31 = GEN_95[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_96 = {1{$random}};
  GEN_32 = GEN_96[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_97 = {2{$random}};
  GEN_33 = GEN_97[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_98 = {1{$random}};
  GEN_34 = GEN_98[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_99 = {1{$random}};
  GEN_35 = GEN_99[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_100 = {1{$random}};
  GEN_36 = GEN_100[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_101 = {1{$random}};
  GEN_37 = GEN_101[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_102 = {1{$random}};
  GEN_38 = GEN_102[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_103 = {1{$random}};
  GEN_39 = GEN_103[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_104 = {1{$random}};
  GEN_40 = GEN_104[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_105 = {1{$random}};
  GEN_41 = GEN_105[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_106 = {1{$random}};
  GEN_42 = GEN_106[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_107 = {1{$random}};
  GEN_43 = GEN_107[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_108 = {1{$random}};
  GEN_44 = GEN_108[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_109 = {1{$random}};
  GEN_45 = GEN_109[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_110 = {1{$random}};
  GEN_46 = GEN_110[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_111 = {1{$random}};
  GEN_47 = GEN_111[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_112 = {1{$random}};
  GEN_48 = GEN_112[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_113 = {2{$random}};
  GEN_49 = GEN_113[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_114 = {1{$random}};
  GEN_50 = GEN_114[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_115 = {1{$random}};
  GEN_51 = GEN_115[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_116 = {1{$random}};
  GEN_52 = GEN_116[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_117 = {1{$random}};
  GEN_53 = GEN_117[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_118 = {1{$random}};
  GEN_54 = GEN_118[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_119 = {1{$random}};
  GEN_55 = GEN_119[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_120 = {1{$random}};
  GEN_56 = GEN_120[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_121 = {2{$random}};
  GEN_57 = GEN_121[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_122 = {1{$random}};
  GEN_58 = GEN_122[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_123 = {1{$random}};
  GEN_59 = GEN_123[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_124 = {1{$random}};
  GEN_60 = GEN_124[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_125 = {1{$random}};
  GEN_61 = GEN_125[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_126 = {1{$random}};
  GEN_62 = GEN_126[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_127 = {1{$random}};
  GEN_63 = GEN_127[1:0];
  `endif
  end
`endif
endmodule
