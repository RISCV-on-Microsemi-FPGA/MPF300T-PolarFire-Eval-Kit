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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_ENQUEUER(
  input   clk,
  input   reset,
  output  io_inner_acquire_ready,
  input   io_inner_acquire_valid,
  input  [25:0] io_inner_acquire_bits_addr_block,
  input  [1:0] io_inner_acquire_bits_client_xact_id,
  input  [2:0] io_inner_acquire_bits_addr_beat,
  input   io_inner_acquire_bits_is_builtin_type,
  input  [2:0] io_inner_acquire_bits_a_type,
  input  [11:0] io_inner_acquire_bits_union,
  input  [63:0] io_inner_acquire_bits_data,
  input   io_inner_probe_ready,
  output  io_inner_probe_valid,
  output [25:0] io_inner_probe_bits_addr_block,
  output [1:0] io_inner_probe_bits_p_type,
  output  io_inner_release_ready,
  input   io_inner_release_valid,
  input  [2:0] io_inner_release_bits_addr_beat,
  input  [25:0] io_inner_release_bits_addr_block,
  input  [1:0] io_inner_release_bits_client_xact_id,
  input   io_inner_release_bits_voluntary,
  input  [2:0] io_inner_release_bits_r_type,
  input  [63:0] io_inner_release_bits_data,
  input   io_inner_grant_ready,
  output  io_inner_grant_valid,
  output [2:0] io_inner_grant_bits_addr_beat,
  output [1:0] io_inner_grant_bits_client_xact_id,
  output  io_inner_grant_bits_manager_xact_id,
  output  io_inner_grant_bits_is_builtin_type,
  output [3:0] io_inner_grant_bits_g_type,
  output [63:0] io_inner_grant_bits_data,
  output  io_inner_grant_bits_manager_id,
  output  io_inner_finish_ready,
  input   io_inner_finish_valid,
  input   io_inner_finish_bits_manager_xact_id,
  input   io_inner_finish_bits_manager_id,
  input   io_outer_acquire_ready,
  output  io_outer_acquire_valid,
  output [25:0] io_outer_acquire_bits_addr_block,
  output [1:0] io_outer_acquire_bits_client_xact_id,
  output [2:0] io_outer_acquire_bits_addr_beat,
  output  io_outer_acquire_bits_is_builtin_type,
  output [2:0] io_outer_acquire_bits_a_type,
  output [11:0] io_outer_acquire_bits_union,
  output [63:0] io_outer_acquire_bits_data,
  output  io_outer_probe_ready,
  input   io_outer_probe_valid,
  input  [25:0] io_outer_probe_bits_addr_block,
  input  [1:0] io_outer_probe_bits_p_type,
  input   io_outer_release_ready,
  output  io_outer_release_valid,
  output [2:0] io_outer_release_bits_addr_beat,
  output [25:0] io_outer_release_bits_addr_block,
  output [1:0] io_outer_release_bits_client_xact_id,
  output  io_outer_release_bits_voluntary,
  output [2:0] io_outer_release_bits_r_type,
  output [63:0] io_outer_release_bits_data,
  output  io_outer_grant_ready,
  input   io_outer_grant_valid,
  input  [2:0] io_outer_grant_bits_addr_beat,
  input  [1:0] io_outer_grant_bits_client_xact_id,
  input   io_outer_grant_bits_manager_xact_id,
  input   io_outer_grant_bits_is_builtin_type,
  input  [3:0] io_outer_grant_bits_g_type,
  input  [63:0] io_outer_grant_bits_data,
  input   io_outer_grant_bits_manager_id,
  input   io_outer_finish_ready,
  output  io_outer_finish_valid,
  output  io_outer_finish_bits_manager_xact_id,
  output  io_outer_finish_bits_manager_id
);
  assign io_inner_acquire_ready = io_outer_acquire_ready;
  assign io_inner_probe_valid = io_outer_probe_valid;
  assign io_inner_probe_bits_addr_block = io_outer_probe_bits_addr_block;
  assign io_inner_probe_bits_p_type = io_outer_probe_bits_p_type;
  assign io_inner_release_ready = io_outer_release_ready;
  assign io_inner_grant_valid = io_outer_grant_valid;
  assign io_inner_grant_bits_addr_beat = io_outer_grant_bits_addr_beat;
  assign io_inner_grant_bits_client_xact_id = io_outer_grant_bits_client_xact_id;
  assign io_inner_grant_bits_manager_xact_id = io_outer_grant_bits_manager_xact_id;
  assign io_inner_grant_bits_is_builtin_type = io_outer_grant_bits_is_builtin_type;
  assign io_inner_grant_bits_g_type = io_outer_grant_bits_g_type;
  assign io_inner_grant_bits_data = io_outer_grant_bits_data;
  assign io_inner_grant_bits_manager_id = io_outer_grant_bits_manager_id;
  assign io_inner_finish_ready = io_outer_finish_ready;
  assign io_outer_acquire_valid = io_inner_acquire_valid;
  assign io_outer_acquire_bits_addr_block = io_inner_acquire_bits_addr_block;
  assign io_outer_acquire_bits_client_xact_id = io_inner_acquire_bits_client_xact_id;
  assign io_outer_acquire_bits_addr_beat = io_inner_acquire_bits_addr_beat;
  assign io_outer_acquire_bits_is_builtin_type = io_inner_acquire_bits_is_builtin_type;
  assign io_outer_acquire_bits_a_type = io_inner_acquire_bits_a_type;
  assign io_outer_acquire_bits_union = io_inner_acquire_bits_union;
  assign io_outer_acquire_bits_data = io_inner_acquire_bits_data;
  assign io_outer_probe_ready = io_inner_probe_ready;
  assign io_outer_release_valid = io_inner_release_valid;
  assign io_outer_release_bits_addr_beat = io_inner_release_bits_addr_beat;
  assign io_outer_release_bits_addr_block = io_inner_release_bits_addr_block;
  assign io_outer_release_bits_client_xact_id = io_inner_release_bits_client_xact_id;
  assign io_outer_release_bits_voluntary = io_inner_release_bits_voluntary;
  assign io_outer_release_bits_r_type = io_inner_release_bits_r_type;
  assign io_outer_release_bits_data = io_inner_release_bits_data;
  assign io_outer_grant_ready = io_inner_grant_ready;
  assign io_outer_finish_valid = io_inner_finish_valid;
  assign io_outer_finish_bits_manager_xact_id = io_inner_finish_bits_manager_xact_id;
  assign io_outer_finish_bits_manager_id = io_inner_finish_bits_manager_id;
endmodule
