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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_NETWORK_PORT(
  input   clk,
  input   reset,
  output  io_client_acquire_ready,
  input   io_client_acquire_valid,
  input  [25:0] io_client_acquire_bits_addr_block,
  input   io_client_acquire_bits_client_xact_id,
  input  [2:0] io_client_acquire_bits_addr_beat,
  input   io_client_acquire_bits_is_builtin_type,
  input  [2:0] io_client_acquire_bits_a_type,
  input  [11:0] io_client_acquire_bits_union,
  input  [63:0] io_client_acquire_bits_data,
  input   io_client_probe_ready,
  output  io_client_probe_valid,
  output [25:0] io_client_probe_bits_addr_block,
  output [1:0] io_client_probe_bits_p_type,
  output  io_client_release_ready,
  input   io_client_release_valid,
  input  [2:0] io_client_release_bits_addr_beat,
  input  [25:0] io_client_release_bits_addr_block,
  input   io_client_release_bits_client_xact_id,
  input   io_client_release_bits_voluntary,
  input  [2:0] io_client_release_bits_r_type,
  input  [63:0] io_client_release_bits_data,
  input   io_client_grant_ready,
  output  io_client_grant_valid,
  output [2:0] io_client_grant_bits_addr_beat,
  output  io_client_grant_bits_client_xact_id,
  output [1:0] io_client_grant_bits_manager_xact_id,
  output  io_client_grant_bits_is_builtin_type,
  output [3:0] io_client_grant_bits_g_type,
  output [63:0] io_client_grant_bits_data,
  output  io_client_grant_bits_manager_id,
  output  io_client_finish_ready,
  input   io_client_finish_valid,
  input  [1:0] io_client_finish_bits_manager_xact_id,
  input   io_client_finish_bits_manager_id,
  input   io_network_acquire_ready,
  output  io_network_acquire_valid,
  output [1:0] io_network_acquire_bits_header_src,
  output [1:0] io_network_acquire_bits_header_dst,
  output [25:0] io_network_acquire_bits_payload_addr_block,
  output  io_network_acquire_bits_payload_client_xact_id,
  output [2:0] io_network_acquire_bits_payload_addr_beat,
  output  io_network_acquire_bits_payload_is_builtin_type,
  output [2:0] io_network_acquire_bits_payload_a_type,
  output [11:0] io_network_acquire_bits_payload_union,
  output [63:0] io_network_acquire_bits_payload_data,
  output  io_network_grant_ready,
  input   io_network_grant_valid,
  input  [1:0] io_network_grant_bits_header_src,
  input  [1:0] io_network_grant_bits_header_dst,
  input  [2:0] io_network_grant_bits_payload_addr_beat,
  input   io_network_grant_bits_payload_client_xact_id,
  input  [1:0] io_network_grant_bits_payload_manager_xact_id,
  input   io_network_grant_bits_payload_is_builtin_type,
  input  [3:0] io_network_grant_bits_payload_g_type,
  input  [63:0] io_network_grant_bits_payload_data,
  input   io_network_finish_ready,
  output  io_network_finish_valid,
  output [1:0] io_network_finish_bits_header_src,
  output [1:0] io_network_finish_bits_header_dst,
  output [1:0] io_network_finish_bits_payload_manager_xact_id,
  output  io_network_probe_ready,
  input   io_network_probe_valid,
  input  [1:0] io_network_probe_bits_header_src,
  input  [1:0] io_network_probe_bits_header_dst,
  input  [25:0] io_network_probe_bits_payload_addr_block,
  input  [1:0] io_network_probe_bits_payload_p_type,
  input   io_network_release_ready,
  output  io_network_release_valid,
  output [1:0] io_network_release_bits_header_src,
  output [1:0] io_network_release_bits_header_dst,
  output [2:0] io_network_release_bits_payload_addr_beat,
  output [25:0] io_network_release_bits_payload_addr_block,
  output  io_network_release_bits_payload_client_xact_id,
  output  io_network_release_bits_payload_voluntary,
  output [2:0] io_network_release_bits_payload_r_type,
  output [63:0] io_network_release_bits_payload_data
);
  wire  acq_with_header_ready;
  wire  acq_with_header_valid;
  wire [1:0] acq_with_header_bits_header_src;
  wire [1:0] acq_with_header_bits_header_dst;
  wire [25:0] acq_with_header_bits_payload_addr_block;
  wire  acq_with_header_bits_payload_client_xact_id;
  wire [2:0] acq_with_header_bits_payload_addr_beat;
  wire  acq_with_header_bits_payload_is_builtin_type;
  wire [2:0] acq_with_header_bits_payload_a_type;
  wire [11:0] acq_with_header_bits_payload_union;
  wire [63:0] acq_with_header_bits_payload_data;
  wire [31:0] GEN_0;
  wire [31:0] T_3894;
  wire  T_3896;
  wire  T_3898;
  wire  T_3899;
  wire  T_3902;
  wire  rel_with_header_ready;
  wire  rel_with_header_valid;
  wire [1:0] rel_with_header_bits_header_src;
  wire [1:0] rel_with_header_bits_header_dst;
  wire [2:0] rel_with_header_bits_payload_addr_beat;
  wire [25:0] rel_with_header_bits_payload_addr_block;
  wire  rel_with_header_bits_payload_client_xact_id;
  wire  rel_with_header_bits_payload_voluntary;
  wire [2:0] rel_with_header_bits_payload_r_type;
  wire [63:0] rel_with_header_bits_payload_data;
  wire [31:0] GEN_1;
  wire [31:0] T_4464;
  wire  T_4466;
  wire  T_4468;
  wire  T_4469;
  wire  T_4472;
  wire  fin_with_header_ready;
  wire  fin_with_header_valid;
  wire [1:0] fin_with_header_bits_header_src;
  wire [1:0] fin_with_header_bits_header_dst;
  wire [1:0] fin_with_header_bits_payload_manager_xact_id;
  wire  fin_with_header_bits_payload_manager_id;
  wire  prb_without_header_ready;
  wire  prb_without_header_valid;
  wire [25:0] prb_without_header_bits_addr_block;
  wire [1:0] prb_without_header_bits_p_type;
  wire  gnt_without_header_ready;
  wire  gnt_without_header_valid;
  wire [2:0] gnt_without_header_bits_addr_beat;
  wire  gnt_without_header_bits_client_xact_id;
  wire [1:0] gnt_without_header_bits_manager_xact_id;
  wire  gnt_without_header_bits_is_builtin_type;
  wire [3:0] gnt_without_header_bits_g_type;
  wire [63:0] gnt_without_header_bits_data;
  assign io_client_acquire_ready = acq_with_header_ready;
  assign io_client_probe_valid = prb_without_header_valid;
  assign io_client_probe_bits_addr_block = prb_without_header_bits_addr_block;
  assign io_client_probe_bits_p_type = prb_without_header_bits_p_type;
  assign io_client_release_ready = rel_with_header_ready;
  assign io_client_grant_valid = gnt_without_header_valid;
  assign io_client_grant_bits_addr_beat = gnt_without_header_bits_addr_beat;
  assign io_client_grant_bits_client_xact_id = gnt_without_header_bits_client_xact_id;
  assign io_client_grant_bits_manager_xact_id = gnt_without_header_bits_manager_xact_id;
  assign io_client_grant_bits_is_builtin_type = gnt_without_header_bits_is_builtin_type;
  assign io_client_grant_bits_g_type = gnt_without_header_bits_g_type;
  assign io_client_grant_bits_data = gnt_without_header_bits_data;
  assign io_client_grant_bits_manager_id = io_network_grant_bits_header_src[0];
  assign io_client_finish_ready = fin_with_header_ready;
  assign io_network_acquire_valid = acq_with_header_valid;
  assign io_network_acquire_bits_header_src = acq_with_header_bits_header_src;
  assign io_network_acquire_bits_header_dst = acq_with_header_bits_header_dst;
  assign io_network_acquire_bits_payload_addr_block = acq_with_header_bits_payload_addr_block;
  assign io_network_acquire_bits_payload_client_xact_id = acq_with_header_bits_payload_client_xact_id;
  assign io_network_acquire_bits_payload_addr_beat = acq_with_header_bits_payload_addr_beat;
  assign io_network_acquire_bits_payload_is_builtin_type = acq_with_header_bits_payload_is_builtin_type;
  assign io_network_acquire_bits_payload_a_type = acq_with_header_bits_payload_a_type;
  assign io_network_acquire_bits_payload_union = acq_with_header_bits_payload_union;
  assign io_network_acquire_bits_payload_data = acq_with_header_bits_payload_data;
  assign io_network_grant_ready = gnt_without_header_ready;
  assign io_network_finish_valid = fin_with_header_valid;
  assign io_network_finish_bits_header_src = fin_with_header_bits_header_src;
  assign io_network_finish_bits_header_dst = fin_with_header_bits_header_dst;
  assign io_network_finish_bits_payload_manager_xact_id = fin_with_header_bits_payload_manager_xact_id;
  assign io_network_probe_ready = prb_without_header_ready;
  assign io_network_release_valid = rel_with_header_valid;
  assign io_network_release_bits_header_src = rel_with_header_bits_header_src;
  assign io_network_release_bits_header_dst = rel_with_header_bits_header_dst;
  assign io_network_release_bits_payload_addr_beat = rel_with_header_bits_payload_addr_beat;
  assign io_network_release_bits_payload_addr_block = rel_with_header_bits_payload_addr_block;
  assign io_network_release_bits_payload_client_xact_id = rel_with_header_bits_payload_client_xact_id;
  assign io_network_release_bits_payload_voluntary = rel_with_header_bits_payload_voluntary;
  assign io_network_release_bits_payload_r_type = rel_with_header_bits_payload_r_type;
  assign io_network_release_bits_payload_data = rel_with_header_bits_payload_data;
  assign acq_with_header_ready = io_network_acquire_ready;
  assign acq_with_header_valid = io_client_acquire_valid;
  assign acq_with_header_bits_header_src = 2'h0;
  assign acq_with_header_bits_header_dst = {{1'd0}, T_3902};
  assign acq_with_header_bits_payload_addr_block = io_client_acquire_bits_addr_block;
  assign acq_with_header_bits_payload_client_xact_id = io_client_acquire_bits_client_xact_id;
  assign acq_with_header_bits_payload_addr_beat = io_client_acquire_bits_addr_beat;
  assign acq_with_header_bits_payload_is_builtin_type = io_client_acquire_bits_is_builtin_type;
  assign acq_with_header_bits_payload_a_type = io_client_acquire_bits_a_type;
  assign acq_with_header_bits_payload_union = io_client_acquire_bits_union;
  assign acq_with_header_bits_payload_data = io_client_acquire_bits_data;
  assign GEN_0 = {{6'd0}, io_client_acquire_bits_addr_block};
  assign T_3894 = GEN_0 << 6;
  assign T_3896 = 32'h80000000 <= T_3894;
  assign T_3898 = T_3894 < 32'h90000000;
  assign T_3899 = T_3896 & T_3898;
  assign T_3902 = T_3899 ? 1'h0 : 1'h1;
  assign rel_with_header_ready = io_network_release_ready;
  assign rel_with_header_valid = io_client_release_valid;
  assign rel_with_header_bits_header_src = 2'h0;
  assign rel_with_header_bits_header_dst = {{1'd0}, T_4472};
  assign rel_with_header_bits_payload_addr_beat = io_client_release_bits_addr_beat;
  assign rel_with_header_bits_payload_addr_block = io_client_release_bits_addr_block;
  assign rel_with_header_bits_payload_client_xact_id = io_client_release_bits_client_xact_id;
  assign rel_with_header_bits_payload_voluntary = io_client_release_bits_voluntary;
  assign rel_with_header_bits_payload_r_type = io_client_release_bits_r_type;
  assign rel_with_header_bits_payload_data = io_client_release_bits_data;
  assign GEN_1 = {{6'd0}, io_client_release_bits_addr_block};
  assign T_4464 = GEN_1 << 6;
  assign T_4466 = 32'h80000000 <= T_4464;
  assign T_4468 = T_4464 < 32'h90000000;
  assign T_4469 = T_4466 & T_4468;
  assign T_4472 = T_4469 ? 1'h0 : 1'h1;
  assign fin_with_header_ready = io_network_finish_ready;
  assign fin_with_header_valid = io_client_finish_valid;
  assign fin_with_header_bits_header_src = 2'h0;
  assign fin_with_header_bits_header_dst = {{1'd0}, io_client_finish_bits_manager_id};
  assign fin_with_header_bits_payload_manager_xact_id = io_client_finish_bits_manager_xact_id;
  assign fin_with_header_bits_payload_manager_id = io_client_finish_bits_manager_id;
  assign prb_without_header_ready = io_client_probe_ready;
  assign prb_without_header_valid = io_network_probe_valid;
  assign prb_without_header_bits_addr_block = io_network_probe_bits_payload_addr_block;
  assign prb_without_header_bits_p_type = io_network_probe_bits_payload_p_type;
  assign gnt_without_header_ready = io_client_grant_ready;
  assign gnt_without_header_valid = io_network_grant_valid;
  assign gnt_without_header_bits_addr_beat = io_network_grant_bits_payload_addr_beat;
  assign gnt_without_header_bits_client_xact_id = io_network_grant_bits_payload_client_xact_id;
  assign gnt_without_header_bits_manager_xact_id = io_network_grant_bits_payload_manager_xact_id;
  assign gnt_without_header_bits_is_builtin_type = io_network_grant_bits_payload_is_builtin_type;
  assign gnt_without_header_bits_g_type = io_network_grant_bits_payload_g_type;
  assign gnt_without_header_bits_data = io_network_grant_bits_payload_data;
endmodule
