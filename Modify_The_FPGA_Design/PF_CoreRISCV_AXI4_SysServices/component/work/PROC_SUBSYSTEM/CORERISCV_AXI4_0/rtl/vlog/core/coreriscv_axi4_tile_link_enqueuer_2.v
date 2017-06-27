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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_ENQUEUER_2(
  input   clk,
  input   reset,
  output  io_client_acquire_ready,
  input   io_client_acquire_valid,
  input  [1:0] io_client_acquire_bits_header_src,
  input  [1:0] io_client_acquire_bits_header_dst,
  input  [25:0] io_client_acquire_bits_payload_addr_block,
  input   io_client_acquire_bits_payload_client_xact_id,
  input  [2:0] io_client_acquire_bits_payload_addr_beat,
  input   io_client_acquire_bits_payload_is_builtin_type,
  input  [2:0] io_client_acquire_bits_payload_a_type,
  input  [11:0] io_client_acquire_bits_payload_union,
  input  [63:0] io_client_acquire_bits_payload_data,
  input   io_client_grant_ready,
  output  io_client_grant_valid,
  output [1:0] io_client_grant_bits_header_src,
  output [1:0] io_client_grant_bits_header_dst,
  output [2:0] io_client_grant_bits_payload_addr_beat,
  output  io_client_grant_bits_payload_client_xact_id,
  output [1:0] io_client_grant_bits_payload_manager_xact_id,
  output  io_client_grant_bits_payload_is_builtin_type,
  output [3:0] io_client_grant_bits_payload_g_type,
  output [63:0] io_client_grant_bits_payload_data,
  output  io_client_finish_ready,
  input   io_client_finish_valid,
  input  [1:0] io_client_finish_bits_header_src,
  input  [1:0] io_client_finish_bits_header_dst,
  input  [1:0] io_client_finish_bits_payload_manager_xact_id,
  input   io_client_probe_ready,
  output  io_client_probe_valid,
  output [1:0] io_client_probe_bits_header_src,
  output [1:0] io_client_probe_bits_header_dst,
  output [25:0] io_client_probe_bits_payload_addr_block,
  output [1:0] io_client_probe_bits_payload_p_type,
  output  io_client_release_ready,
  input   io_client_release_valid,
  input  [1:0] io_client_release_bits_header_src,
  input  [1:0] io_client_release_bits_header_dst,
  input  [2:0] io_client_release_bits_payload_addr_beat,
  input  [25:0] io_client_release_bits_payload_addr_block,
  input   io_client_release_bits_payload_client_xact_id,
  input   io_client_release_bits_payload_voluntary,
  input  [2:0] io_client_release_bits_payload_r_type,
  input  [63:0] io_client_release_bits_payload_data,
  input   io_manager_acquire_ready,
  output  io_manager_acquire_valid,
  output [1:0] io_manager_acquire_bits_header_src,
  output [1:0] io_manager_acquire_bits_header_dst,
  output [25:0] io_manager_acquire_bits_payload_addr_block,
  output  io_manager_acquire_bits_payload_client_xact_id,
  output [2:0] io_manager_acquire_bits_payload_addr_beat,
  output  io_manager_acquire_bits_payload_is_builtin_type,
  output [2:0] io_manager_acquire_bits_payload_a_type,
  output [11:0] io_manager_acquire_bits_payload_union,
  output [63:0] io_manager_acquire_bits_payload_data,
  output  io_manager_grant_ready,
  input   io_manager_grant_valid,
  input  [1:0] io_manager_grant_bits_header_src,
  input  [1:0] io_manager_grant_bits_header_dst,
  input  [2:0] io_manager_grant_bits_payload_addr_beat,
  input   io_manager_grant_bits_payload_client_xact_id,
  input  [1:0] io_manager_grant_bits_payload_manager_xact_id,
  input   io_manager_grant_bits_payload_is_builtin_type,
  input  [3:0] io_manager_grant_bits_payload_g_type,
  input  [63:0] io_manager_grant_bits_payload_data,
  input   io_manager_finish_ready,
  output  io_manager_finish_valid,
  output [1:0] io_manager_finish_bits_header_src,
  output [1:0] io_manager_finish_bits_header_dst,
  output [1:0] io_manager_finish_bits_payload_manager_xact_id,
  output  io_manager_probe_ready,
  input   io_manager_probe_valid,
  input  [1:0] io_manager_probe_bits_header_src,
  input  [1:0] io_manager_probe_bits_header_dst,
  input  [25:0] io_manager_probe_bits_payload_addr_block,
  input  [1:0] io_manager_probe_bits_payload_p_type,
  input   io_manager_release_ready,
  output  io_manager_release_valid,
  output [1:0] io_manager_release_bits_header_src,
  output [1:0] io_manager_release_bits_header_dst,
  output [2:0] io_manager_release_bits_payload_addr_beat,
  output [25:0] io_manager_release_bits_payload_addr_block,
  output  io_manager_release_bits_payload_client_xact_id,
  output  io_manager_release_bits_payload_voluntary,
  output [2:0] io_manager_release_bits_payload_r_type,
  output [63:0] io_manager_release_bits_payload_data
);
  assign io_client_acquire_ready = io_manager_acquire_ready;
  assign io_client_grant_valid = io_manager_grant_valid;
  assign io_client_grant_bits_header_src = io_manager_grant_bits_header_src;
  assign io_client_grant_bits_header_dst = io_manager_grant_bits_header_dst;
  assign io_client_grant_bits_payload_addr_beat = io_manager_grant_bits_payload_addr_beat;
  assign io_client_grant_bits_payload_client_xact_id = io_manager_grant_bits_payload_client_xact_id;
  assign io_client_grant_bits_payload_manager_xact_id = io_manager_grant_bits_payload_manager_xact_id;
  assign io_client_grant_bits_payload_is_builtin_type = io_manager_grant_bits_payload_is_builtin_type;
  assign io_client_grant_bits_payload_g_type = io_manager_grant_bits_payload_g_type;
  assign io_client_grant_bits_payload_data = io_manager_grant_bits_payload_data;
  assign io_client_finish_ready = io_manager_finish_ready;
  assign io_client_probe_valid = io_manager_probe_valid;
  assign io_client_probe_bits_header_src = io_manager_probe_bits_header_src;
  assign io_client_probe_bits_header_dst = io_manager_probe_bits_header_dst;
  assign io_client_probe_bits_payload_addr_block = io_manager_probe_bits_payload_addr_block;
  assign io_client_probe_bits_payload_p_type = io_manager_probe_bits_payload_p_type;
  assign io_client_release_ready = io_manager_release_ready;
  assign io_manager_acquire_valid = io_client_acquire_valid;
  assign io_manager_acquire_bits_header_src = io_client_acquire_bits_header_src;
  assign io_manager_acquire_bits_header_dst = io_client_acquire_bits_header_dst;
  assign io_manager_acquire_bits_payload_addr_block = io_client_acquire_bits_payload_addr_block;
  assign io_manager_acquire_bits_payload_client_xact_id = io_client_acquire_bits_payload_client_xact_id;
  assign io_manager_acquire_bits_payload_addr_beat = io_client_acquire_bits_payload_addr_beat;
  assign io_manager_acquire_bits_payload_is_builtin_type = io_client_acquire_bits_payload_is_builtin_type;
  assign io_manager_acquire_bits_payload_a_type = io_client_acquire_bits_payload_a_type;
  assign io_manager_acquire_bits_payload_union = io_client_acquire_bits_payload_union;
  assign io_manager_acquire_bits_payload_data = io_client_acquire_bits_payload_data;
  assign io_manager_grant_ready = io_client_grant_ready;
  assign io_manager_finish_valid = io_client_finish_valid;
  assign io_manager_finish_bits_header_src = io_client_finish_bits_header_src;
  assign io_manager_finish_bits_header_dst = io_client_finish_bits_header_dst;
  assign io_manager_finish_bits_payload_manager_xact_id = io_client_finish_bits_payload_manager_xact_id;
  assign io_manager_probe_ready = io_client_probe_ready;
  assign io_manager_release_valid = io_client_release_valid;
  assign io_manager_release_bits_header_src = io_client_release_bits_header_src;
  assign io_manager_release_bits_header_dst = io_client_release_bits_header_dst;
  assign io_manager_release_bits_payload_addr_beat = io_client_release_bits_payload_addr_beat;
  assign io_manager_release_bits_payload_addr_block = io_client_release_bits_payload_addr_block;
  assign io_manager_release_bits_payload_client_xact_id = io_client_release_bits_payload_client_xact_id;
  assign io_manager_release_bits_payload_voluntary = io_client_release_bits_payload_voluntary;
  assign io_manager_release_bits_payload_r_type = io_client_release_bits_payload_r_type;
  assign io_manager_release_bits_payload_data = io_client_release_bits_payload_data;
endmodule
