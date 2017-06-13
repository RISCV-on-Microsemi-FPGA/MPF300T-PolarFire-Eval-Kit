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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MANAGER_TILE_LINK_NETWORK_PORT_1(
  input   clk,
  input   reset,
  input   io_manager_acquire_ready,
  output  io_manager_acquire_valid,
  output [25:0] io_manager_acquire_bits_addr_block,
  output  io_manager_acquire_bits_client_xact_id,
  output [2:0] io_manager_acquire_bits_addr_beat,
  output  io_manager_acquire_bits_is_builtin_type,
  output [2:0] io_manager_acquire_bits_a_type,
  output [11:0] io_manager_acquire_bits_union,
  output [63:0] io_manager_acquire_bits_data,
  output  io_manager_acquire_bits_client_id,
  output  io_manager_grant_ready,
  input   io_manager_grant_valid,
  input  [2:0] io_manager_grant_bits_addr_beat,
  input   io_manager_grant_bits_client_xact_id,
  input  [1:0] io_manager_grant_bits_manager_xact_id,
  input   io_manager_grant_bits_is_builtin_type,
  input  [3:0] io_manager_grant_bits_g_type,
  input  [63:0] io_manager_grant_bits_data,
  input   io_manager_grant_bits_client_id,
  input   io_manager_finish_ready,
  output  io_manager_finish_valid,
  output [1:0] io_manager_finish_bits_manager_xact_id,
  output  io_manager_probe_ready,
  input   io_manager_probe_valid,
  input  [25:0] io_manager_probe_bits_addr_block,
  input  [1:0] io_manager_probe_bits_p_type,
  input   io_manager_probe_bits_client_id,
  input   io_manager_release_ready,
  output  io_manager_release_valid,
  output [2:0] io_manager_release_bits_addr_beat,
  output [25:0] io_manager_release_bits_addr_block,
  output  io_manager_release_bits_client_xact_id,
  output  io_manager_release_bits_voluntary,
  output [2:0] io_manager_release_bits_r_type,
  output [63:0] io_manager_release_bits_data,
  output  io_manager_release_bits_client_id,
  output  io_network_acquire_ready,
  input   io_network_acquire_valid,
  input  [1:0] io_network_acquire_bits_header_src,
  input  [1:0] io_network_acquire_bits_header_dst,
  input  [25:0] io_network_acquire_bits_payload_addr_block,
  input   io_network_acquire_bits_payload_client_xact_id,
  input  [2:0] io_network_acquire_bits_payload_addr_beat,
  input   io_network_acquire_bits_payload_is_builtin_type,
  input  [2:0] io_network_acquire_bits_payload_a_type,
  input  [11:0] io_network_acquire_bits_payload_union,
  input  [63:0] io_network_acquire_bits_payload_data,
  input   io_network_grant_ready,
  output  io_network_grant_valid,
  output [1:0] io_network_grant_bits_header_src,
  output [1:0] io_network_grant_bits_header_dst,
  output [2:0] io_network_grant_bits_payload_addr_beat,
  output  io_network_grant_bits_payload_client_xact_id,
  output [1:0] io_network_grant_bits_payload_manager_xact_id,
  output  io_network_grant_bits_payload_is_builtin_type,
  output [3:0] io_network_grant_bits_payload_g_type,
  output [63:0] io_network_grant_bits_payload_data,
  output  io_network_finish_ready,
  input   io_network_finish_valid,
  input  [1:0] io_network_finish_bits_header_src,
  input  [1:0] io_network_finish_bits_header_dst,
  input  [1:0] io_network_finish_bits_payload_manager_xact_id,
  input   io_network_probe_ready,
  output  io_network_probe_valid,
  output [1:0] io_network_probe_bits_header_src,
  output [1:0] io_network_probe_bits_header_dst,
  output [25:0] io_network_probe_bits_payload_addr_block,
  output [1:0] io_network_probe_bits_payload_p_type,
  output  io_network_release_ready,
  input   io_network_release_valid,
  input  [1:0] io_network_release_bits_header_src,
  input  [1:0] io_network_release_bits_header_dst,
  input  [2:0] io_network_release_bits_payload_addr_beat,
  input  [25:0] io_network_release_bits_payload_addr_block,
  input   io_network_release_bits_payload_client_xact_id,
  input   io_network_release_bits_payload_voluntary,
  input  [2:0] io_network_release_bits_payload_r_type,
  input  [63:0] io_network_release_bits_payload_data
);
  wire  T_6043_ready;
  wire  T_6043_valid;
  wire [1:0] T_6043_bits_header_src;
  wire [1:0] T_6043_bits_header_dst;
  wire [2:0] T_6043_bits_payload_addr_beat;
  wire  T_6043_bits_payload_client_xact_id;
  wire [1:0] T_6043_bits_payload_manager_xact_id;
  wire  T_6043_bits_payload_is_builtin_type;
  wire [3:0] T_6043_bits_payload_g_type;
  wire [63:0] T_6043_bits_payload_data;
  wire  T_6043_bits_payload_client_id;
  wire  T_6598_ready;
  wire  T_6598_valid;
  wire [1:0] T_6598_bits_header_src;
  wire [1:0] T_6598_bits_header_dst;
  wire [25:0] T_6598_bits_payload_addr_block;
  wire [1:0] T_6598_bits_payload_p_type;
  wire  T_6598_bits_payload_client_id;
  wire  T_6877_ready;
  wire  T_6877_valid;
  wire [25:0] T_6877_bits_addr_block;
  wire  T_6877_bits_client_xact_id;
  wire [2:0] T_6877_bits_addr_beat;
  wire  T_6877_bits_is_builtin_type;
  wire [2:0] T_6877_bits_a_type;
  wire [11:0] T_6877_bits_union;
  wire [63:0] T_6877_bits_data;
  wire  T_6993_ready;
  wire  T_6993_valid;
  wire [2:0] T_6993_bits_addr_beat;
  wire [25:0] T_6993_bits_addr_block;
  wire  T_6993_bits_client_xact_id;
  wire  T_6993_bits_voluntary;
  wire [2:0] T_6993_bits_r_type;
  wire [63:0] T_6993_bits_data;
  wire  T_7097_ready;
  wire  T_7097_valid;
  wire [1:0] T_7097_bits_manager_xact_id;
  assign io_manager_acquire_valid = T_6877_valid;
  assign io_manager_acquire_bits_addr_block = T_6877_bits_addr_block;
  assign io_manager_acquire_bits_client_xact_id = T_6877_bits_client_xact_id;
  assign io_manager_acquire_bits_addr_beat = T_6877_bits_addr_beat;
  assign io_manager_acquire_bits_is_builtin_type = T_6877_bits_is_builtin_type;
  assign io_manager_acquire_bits_a_type = T_6877_bits_a_type;
  assign io_manager_acquire_bits_union = T_6877_bits_union;
  assign io_manager_acquire_bits_data = T_6877_bits_data;
  assign io_manager_acquire_bits_client_id = io_network_acquire_bits_header_src[0];
  assign io_manager_grant_ready = T_6043_ready;
  assign io_manager_finish_valid = T_7097_valid;
  assign io_manager_finish_bits_manager_xact_id = T_7097_bits_manager_xact_id;
  assign io_manager_probe_ready = T_6598_ready;
  assign io_manager_release_valid = T_6993_valid;
  assign io_manager_release_bits_addr_beat = T_6993_bits_addr_beat;
  assign io_manager_release_bits_addr_block = T_6993_bits_addr_block;
  assign io_manager_release_bits_client_xact_id = T_6993_bits_client_xact_id;
  assign io_manager_release_bits_voluntary = T_6993_bits_voluntary;
  assign io_manager_release_bits_r_type = T_6993_bits_r_type;
  assign io_manager_release_bits_data = T_6993_bits_data;
  assign io_manager_release_bits_client_id = io_network_release_bits_header_src[0];
  assign io_network_acquire_ready = T_6877_ready;
  assign io_network_grant_valid = T_6043_valid;
  assign io_network_grant_bits_header_src = T_6043_bits_header_src;
  assign io_network_grant_bits_header_dst = T_6043_bits_header_dst;
  assign io_network_grant_bits_payload_addr_beat = T_6043_bits_payload_addr_beat;
  assign io_network_grant_bits_payload_client_xact_id = T_6043_bits_payload_client_xact_id;
  assign io_network_grant_bits_payload_manager_xact_id = T_6043_bits_payload_manager_xact_id;
  assign io_network_grant_bits_payload_is_builtin_type = T_6043_bits_payload_is_builtin_type;
  assign io_network_grant_bits_payload_g_type = T_6043_bits_payload_g_type;
  assign io_network_grant_bits_payload_data = T_6043_bits_payload_data;
  assign io_network_finish_ready = T_7097_ready;
  assign io_network_probe_valid = T_6598_valid;
  assign io_network_probe_bits_header_src = T_6598_bits_header_src;
  assign io_network_probe_bits_header_dst = T_6598_bits_header_dst;
  assign io_network_probe_bits_payload_addr_block = T_6598_bits_payload_addr_block;
  assign io_network_probe_bits_payload_p_type = T_6598_bits_payload_p_type;
  assign io_network_release_ready = T_6993_ready;
  assign T_6043_ready = io_network_grant_ready;
  assign T_6043_valid = io_manager_grant_valid;
  assign T_6043_bits_header_src = 2'h1;
  assign T_6043_bits_header_dst = {{1'd0}, io_manager_grant_bits_client_id};
  assign T_6043_bits_payload_addr_beat = io_manager_grant_bits_addr_beat;
  assign T_6043_bits_payload_client_xact_id = io_manager_grant_bits_client_xact_id;
  assign T_6043_bits_payload_manager_xact_id = io_manager_grant_bits_manager_xact_id;
  assign T_6043_bits_payload_is_builtin_type = io_manager_grant_bits_is_builtin_type;
  assign T_6043_bits_payload_g_type = io_manager_grant_bits_g_type;
  assign T_6043_bits_payload_data = io_manager_grant_bits_data;
  assign T_6043_bits_payload_client_id = io_manager_grant_bits_client_id;
  assign T_6598_ready = io_network_probe_ready;
  assign T_6598_valid = io_manager_probe_valid;
  assign T_6598_bits_header_src = 2'h1;
  assign T_6598_bits_header_dst = {{1'd0}, io_manager_probe_bits_client_id};
  assign T_6598_bits_payload_addr_block = io_manager_probe_bits_addr_block;
  assign T_6598_bits_payload_p_type = io_manager_probe_bits_p_type;
  assign T_6598_bits_payload_client_id = io_manager_probe_bits_client_id;
  assign T_6877_ready = io_manager_acquire_ready;
  assign T_6877_valid = io_network_acquire_valid;
  assign T_6877_bits_addr_block = io_network_acquire_bits_payload_addr_block;
  assign T_6877_bits_client_xact_id = io_network_acquire_bits_payload_client_xact_id;
  assign T_6877_bits_addr_beat = io_network_acquire_bits_payload_addr_beat;
  assign T_6877_bits_is_builtin_type = io_network_acquire_bits_payload_is_builtin_type;
  assign T_6877_bits_a_type = io_network_acquire_bits_payload_a_type;
  assign T_6877_bits_union = io_network_acquire_bits_payload_union;
  assign T_6877_bits_data = io_network_acquire_bits_payload_data;
  assign T_6993_ready = io_manager_release_ready;
  assign T_6993_valid = io_network_release_valid;
  assign T_6993_bits_addr_beat = io_network_release_bits_payload_addr_beat;
  assign T_6993_bits_addr_block = io_network_release_bits_payload_addr_block;
  assign T_6993_bits_client_xact_id = io_network_release_bits_payload_client_xact_id;
  assign T_6993_bits_voluntary = io_network_release_bits_payload_voluntary;
  assign T_6993_bits_r_type = io_network_release_bits_payload_r_type;
  assign T_6993_bits_data = io_network_release_bits_payload_data;
  assign T_7097_ready = io_manager_finish_ready;
  assign T_7097_valid = io_network_finish_valid;
  assign T_7097_bits_manager_xact_id = io_network_finish_bits_payload_manager_xact_id;
endmodule
