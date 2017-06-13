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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_RECURSIVE_INTERCONNECT(
  input   clk,
  input   reset,
  output  io_in_0_acquire_ready,
  input   io_in_0_acquire_valid,
  input  [25:0] io_in_0_acquire_bits_addr_block,
  input  [1:0] io_in_0_acquire_bits_client_xact_id,
  input  [2:0] io_in_0_acquire_bits_addr_beat,
  input   io_in_0_acquire_bits_is_builtin_type,
  input  [2:0] io_in_0_acquire_bits_a_type,
  input  [11:0] io_in_0_acquire_bits_union,
  input  [63:0] io_in_0_acquire_bits_data,
  input   io_in_0_grant_ready,
  output  io_in_0_grant_valid,
  output [2:0] io_in_0_grant_bits_addr_beat,
  output [1:0] io_in_0_grant_bits_client_xact_id,
  output  io_in_0_grant_bits_manager_xact_id,
  output  io_in_0_grant_bits_is_builtin_type,
  output [3:0] io_in_0_grant_bits_g_type,
  output [63:0] io_in_0_grant_bits_data,
  input   io_out_0_acquire_ready,
  output  io_out_0_acquire_valid,
  output [25:0] io_out_0_acquire_bits_addr_block,
  output [1:0] io_out_0_acquire_bits_client_xact_id,
  output [2:0] io_out_0_acquire_bits_addr_beat,
  output  io_out_0_acquire_bits_is_builtin_type,
  output [2:0] io_out_0_acquire_bits_a_type,
  output [11:0] io_out_0_acquire_bits_union,
  output [63:0] io_out_0_acquire_bits_data,
  output  io_out_0_grant_ready,
  input   io_out_0_grant_valid,
  input  [2:0] io_out_0_grant_bits_addr_beat,
  input  [1:0] io_out_0_grant_bits_client_xact_id,
  input   io_out_0_grant_bits_manager_xact_id,
  input   io_out_0_grant_bits_is_builtin_type,
  input  [3:0] io_out_0_grant_bits_g_type,
  input  [63:0] io_out_0_grant_bits_data,
  input   io_out_1_acquire_ready,
  output  io_out_1_acquire_valid,
  output [25:0] io_out_1_acquire_bits_addr_block,
  output [1:0] io_out_1_acquire_bits_client_xact_id,
  output [2:0] io_out_1_acquire_bits_addr_beat,
  output  io_out_1_acquire_bits_is_builtin_type,
  output [2:0] io_out_1_acquire_bits_a_type,
  output [11:0] io_out_1_acquire_bits_union,
  output [63:0] io_out_1_acquire_bits_data,
  output  io_out_1_grant_ready,
  input   io_out_1_grant_valid,
  input  [2:0] io_out_1_grant_bits_addr_beat,
  input  [1:0] io_out_1_grant_bits_client_xact_id,
  input   io_out_1_grant_bits_manager_xact_id,
  input   io_out_1_grant_bits_is_builtin_type,
  input  [3:0] io_out_1_grant_bits_g_type,
  input  [63:0] io_out_1_grant_bits_data,
  input   io_out_2_acquire_ready,
  output  io_out_2_acquire_valid,
  output [25:0] io_out_2_acquire_bits_addr_block,
  output [1:0] io_out_2_acquire_bits_client_xact_id,
  output [2:0] io_out_2_acquire_bits_addr_beat,
  output  io_out_2_acquire_bits_is_builtin_type,
  output [2:0] io_out_2_acquire_bits_a_type,
  output [11:0] io_out_2_acquire_bits_union,
  output [63:0] io_out_2_acquire_bits_data,
  output  io_out_2_grant_ready,
  input   io_out_2_grant_valid,
  input  [2:0] io_out_2_grant_bits_addr_beat,
  input  [1:0] io_out_2_grant_bits_client_xact_id,
  input   io_out_2_grant_bits_manager_xact_id,
  input   io_out_2_grant_bits_is_builtin_type,
  input  [3:0] io_out_2_grant_bits_g_type,
  input  [63:0] io_out_2_grant_bits_data,
  input   io_out_3_acquire_ready,
  output  io_out_3_acquire_valid,
  output [25:0] io_out_3_acquire_bits_addr_block,
  output [1:0] io_out_3_acquire_bits_client_xact_id,
  output [2:0] io_out_3_acquire_bits_addr_beat,
  output  io_out_3_acquire_bits_is_builtin_type,
  output [2:0] io_out_3_acquire_bits_a_type,
  output [11:0] io_out_3_acquire_bits_union,
  output [63:0] io_out_3_acquire_bits_data,
  output  io_out_3_grant_ready,
  input   io_out_3_grant_valid,
  input  [2:0] io_out_3_grant_bits_addr_beat,
  input  [1:0] io_out_3_grant_bits_client_xact_id,
  input   io_out_3_grant_bits_manager_xact_id,
  input   io_out_3_grant_bits_is_builtin_type,
  input  [3:0] io_out_3_grant_bits_g_type,
  input  [63:0] io_out_3_grant_bits_data,
  input   io_out_4_acquire_ready,
  output  io_out_4_acquire_valid,
  output [25:0] io_out_4_acquire_bits_addr_block,
  output [1:0] io_out_4_acquire_bits_client_xact_id,
  output [2:0] io_out_4_acquire_bits_addr_beat,
  output  io_out_4_acquire_bits_is_builtin_type,
  output [2:0] io_out_4_acquire_bits_a_type,
  output [11:0] io_out_4_acquire_bits_union,
  output [63:0] io_out_4_acquire_bits_data,
  output  io_out_4_grant_ready,
  input   io_out_4_grant_valid,
  input  [2:0] io_out_4_grant_bits_addr_beat,
  input  [1:0] io_out_4_grant_bits_client_xact_id,
  input   io_out_4_grant_bits_manager_xact_id,
  input   io_out_4_grant_bits_is_builtin_type,
  input  [3:0] io_out_4_grant_bits_g_type,
  input  [63:0] io_out_4_grant_bits_data
);
  wire  xbar_clk;
  wire  xbar_reset;
  wire  xbar_io_in_0_acquire_ready;
  wire  xbar_io_in_0_acquire_valid;
  wire [25:0] xbar_io_in_0_acquire_bits_addr_block;
  wire [1:0] xbar_io_in_0_acquire_bits_client_xact_id;
  wire [2:0] xbar_io_in_0_acquire_bits_addr_beat;
  wire  xbar_io_in_0_acquire_bits_is_builtin_type;
  wire [2:0] xbar_io_in_0_acquire_bits_a_type;
  wire [11:0] xbar_io_in_0_acquire_bits_union;
  wire [63:0] xbar_io_in_0_acquire_bits_data;
  wire  xbar_io_in_0_grant_ready;
  wire  xbar_io_in_0_grant_valid;
  wire [2:0] xbar_io_in_0_grant_bits_addr_beat;
  wire [1:0] xbar_io_in_0_grant_bits_client_xact_id;
  wire  xbar_io_in_0_grant_bits_manager_xact_id;
  wire  xbar_io_in_0_grant_bits_is_builtin_type;
  wire [3:0] xbar_io_in_0_grant_bits_g_type;
  wire [63:0] xbar_io_in_0_grant_bits_data;
  wire  xbar_io_out_0_acquire_ready;
  wire  xbar_io_out_0_acquire_valid;
  wire [25:0] xbar_io_out_0_acquire_bits_addr_block;
  wire [1:0] xbar_io_out_0_acquire_bits_client_xact_id;
  wire [2:0] xbar_io_out_0_acquire_bits_addr_beat;
  wire  xbar_io_out_0_acquire_bits_is_builtin_type;
  wire [2:0] xbar_io_out_0_acquire_bits_a_type;
  wire [11:0] xbar_io_out_0_acquire_bits_union;
  wire [63:0] xbar_io_out_0_acquire_bits_data;
  wire  xbar_io_out_0_grant_ready;
  wire  xbar_io_out_0_grant_valid;
  wire [2:0] xbar_io_out_0_grant_bits_addr_beat;
  wire [1:0] xbar_io_out_0_grant_bits_client_xact_id;
  wire  xbar_io_out_0_grant_bits_manager_xact_id;
  wire  xbar_io_out_0_grant_bits_is_builtin_type;
  wire [3:0] xbar_io_out_0_grant_bits_g_type;
  wire [63:0] xbar_io_out_0_grant_bits_data;
  wire  xbar_io_out_1_acquire_ready;
  wire  xbar_io_out_1_acquire_valid;
  wire [25:0] xbar_io_out_1_acquire_bits_addr_block;
  wire [1:0] xbar_io_out_1_acquire_bits_client_xact_id;
  wire [2:0] xbar_io_out_1_acquire_bits_addr_beat;
  wire  xbar_io_out_1_acquire_bits_is_builtin_type;
  wire [2:0] xbar_io_out_1_acquire_bits_a_type;
  wire [11:0] xbar_io_out_1_acquire_bits_union;
  wire [63:0] xbar_io_out_1_acquire_bits_data;
  wire  xbar_io_out_1_grant_ready;
  wire  xbar_io_out_1_grant_valid;
  wire [2:0] xbar_io_out_1_grant_bits_addr_beat;
  wire [1:0] xbar_io_out_1_grant_bits_client_xact_id;
  wire  xbar_io_out_1_grant_bits_manager_xact_id;
  wire  xbar_io_out_1_grant_bits_is_builtin_type;
  wire [3:0] xbar_io_out_1_grant_bits_g_type;
  wire [63:0] xbar_io_out_1_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_clk;
  wire  TileLinkRecursiveInterconnect_1_1_reset;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_grant_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_grant_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_grant_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_grant_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_valid;
  wire [25:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_block;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_client_xact_id;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_beat;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_is_builtin_type;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_a_type;
  wire [11:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_union;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_data;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_grant_ready;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_grant_valid;
  wire [2:0] TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_addr_beat;
  wire [1:0] TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_client_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_manager_xact_id;
  wire  TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_is_builtin_type;
  wire [3:0] TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_g_type;
  wire [63:0] TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_data;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_UNCACHED_TILE_LINK_IO_CROSSBAR xbar (
    .clk(xbar_clk),
    .reset(xbar_reset),
    .io_in_0_acquire_ready(xbar_io_in_0_acquire_ready),
    .io_in_0_acquire_valid(xbar_io_in_0_acquire_valid),
    .io_in_0_acquire_bits_addr_block(xbar_io_in_0_acquire_bits_addr_block),
    .io_in_0_acquire_bits_client_xact_id(xbar_io_in_0_acquire_bits_client_xact_id),
    .io_in_0_acquire_bits_addr_beat(xbar_io_in_0_acquire_bits_addr_beat),
    .io_in_0_acquire_bits_is_builtin_type(xbar_io_in_0_acquire_bits_is_builtin_type),
    .io_in_0_acquire_bits_a_type(xbar_io_in_0_acquire_bits_a_type),
    .io_in_0_acquire_bits_union(xbar_io_in_0_acquire_bits_union),
    .io_in_0_acquire_bits_data(xbar_io_in_0_acquire_bits_data),
    .io_in_0_grant_ready(xbar_io_in_0_grant_ready),
    .io_in_0_grant_valid(xbar_io_in_0_grant_valid),
    .io_in_0_grant_bits_addr_beat(xbar_io_in_0_grant_bits_addr_beat),
    .io_in_0_grant_bits_client_xact_id(xbar_io_in_0_grant_bits_client_xact_id),
    .io_in_0_grant_bits_manager_xact_id(xbar_io_in_0_grant_bits_manager_xact_id),
    .io_in_0_grant_bits_is_builtin_type(xbar_io_in_0_grant_bits_is_builtin_type),
    .io_in_0_grant_bits_g_type(xbar_io_in_0_grant_bits_g_type),
    .io_in_0_grant_bits_data(xbar_io_in_0_grant_bits_data),
    .io_out_0_acquire_ready(xbar_io_out_0_acquire_ready),
    .io_out_0_acquire_valid(xbar_io_out_0_acquire_valid),
    .io_out_0_acquire_bits_addr_block(xbar_io_out_0_acquire_bits_addr_block),
    .io_out_0_acquire_bits_client_xact_id(xbar_io_out_0_acquire_bits_client_xact_id),
    .io_out_0_acquire_bits_addr_beat(xbar_io_out_0_acquire_bits_addr_beat),
    .io_out_0_acquire_bits_is_builtin_type(xbar_io_out_0_acquire_bits_is_builtin_type),
    .io_out_0_acquire_bits_a_type(xbar_io_out_0_acquire_bits_a_type),
    .io_out_0_acquire_bits_union(xbar_io_out_0_acquire_bits_union),
    .io_out_0_acquire_bits_data(xbar_io_out_0_acquire_bits_data),
    .io_out_0_grant_ready(xbar_io_out_0_grant_ready),
    .io_out_0_grant_valid(xbar_io_out_0_grant_valid),
    .io_out_0_grant_bits_addr_beat(xbar_io_out_0_grant_bits_addr_beat),
    .io_out_0_grant_bits_client_xact_id(xbar_io_out_0_grant_bits_client_xact_id),
    .io_out_0_grant_bits_manager_xact_id(xbar_io_out_0_grant_bits_manager_xact_id),
    .io_out_0_grant_bits_is_builtin_type(xbar_io_out_0_grant_bits_is_builtin_type),
    .io_out_0_grant_bits_g_type(xbar_io_out_0_grant_bits_g_type),
    .io_out_0_grant_bits_data(xbar_io_out_0_grant_bits_data),
    .io_out_1_acquire_ready(xbar_io_out_1_acquire_ready),
    .io_out_1_acquire_valid(xbar_io_out_1_acquire_valid),
    .io_out_1_acquire_bits_addr_block(xbar_io_out_1_acquire_bits_addr_block),
    .io_out_1_acquire_bits_client_xact_id(xbar_io_out_1_acquire_bits_client_xact_id),
    .io_out_1_acquire_bits_addr_beat(xbar_io_out_1_acquire_bits_addr_beat),
    .io_out_1_acquire_bits_is_builtin_type(xbar_io_out_1_acquire_bits_is_builtin_type),
    .io_out_1_acquire_bits_a_type(xbar_io_out_1_acquire_bits_a_type),
    .io_out_1_acquire_bits_union(xbar_io_out_1_acquire_bits_union),
    .io_out_1_acquire_bits_data(xbar_io_out_1_acquire_bits_data),
    .io_out_1_grant_ready(xbar_io_out_1_grant_ready),
    .io_out_1_grant_valid(xbar_io_out_1_grant_valid),
    .io_out_1_grant_bits_addr_beat(xbar_io_out_1_grant_bits_addr_beat),
    .io_out_1_grant_bits_client_xact_id(xbar_io_out_1_grant_bits_client_xact_id),
    .io_out_1_grant_bits_manager_xact_id(xbar_io_out_1_grant_bits_manager_xact_id),
    .io_out_1_grant_bits_is_builtin_type(xbar_io_out_1_grant_bits_is_builtin_type),
    .io_out_1_grant_bits_g_type(xbar_io_out_1_grant_bits_g_type),
    .io_out_1_grant_bits_data(xbar_io_out_1_grant_bits_data)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TILE_LINK_RECURSIVE_INTERCONNECT_1 TileLinkRecursiveInterconnect_1_1 (
    .clk(TileLinkRecursiveInterconnect_1_1_clk),
    .reset(TileLinkRecursiveInterconnect_1_1_reset),
    .io_in_0_acquire_ready(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_ready),
    .io_in_0_acquire_valid(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_valid),
    .io_in_0_acquire_bits_addr_block(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_block),
    .io_in_0_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_client_xact_id),
    .io_in_0_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_beat),
    .io_in_0_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_is_builtin_type),
    .io_in_0_acquire_bits_a_type(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_a_type),
    .io_in_0_acquire_bits_union(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_union),
    .io_in_0_acquire_bits_data(TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_data),
    .io_in_0_grant_ready(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_ready),
    .io_in_0_grant_valid(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_valid),
    .io_in_0_grant_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_addr_beat),
    .io_in_0_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_client_xact_id),
    .io_in_0_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_manager_xact_id),
    .io_in_0_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_is_builtin_type),
    .io_in_0_grant_bits_g_type(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_g_type),
    .io_in_0_grant_bits_data(TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_data),
    .io_out_0_acquire_ready(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_ready),
    .io_out_0_acquire_valid(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_valid),
    .io_out_0_acquire_bits_addr_block(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_block),
    .io_out_0_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_client_xact_id),
    .io_out_0_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_beat),
    .io_out_0_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_is_builtin_type),
    .io_out_0_acquire_bits_a_type(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_a_type),
    .io_out_0_acquire_bits_union(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_union),
    .io_out_0_acquire_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_data),
    .io_out_0_grant_ready(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_ready),
    .io_out_0_grant_valid(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_valid),
    .io_out_0_grant_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_addr_beat),
    .io_out_0_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_client_xact_id),
    .io_out_0_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_manager_xact_id),
    .io_out_0_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_is_builtin_type),
    .io_out_0_grant_bits_g_type(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_g_type),
    .io_out_0_grant_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_data),
    .io_out_1_acquire_ready(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_ready),
    .io_out_1_acquire_valid(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_valid),
    .io_out_1_acquire_bits_addr_block(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_block),
    .io_out_1_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_client_xact_id),
    .io_out_1_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_beat),
    .io_out_1_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_is_builtin_type),
    .io_out_1_acquire_bits_a_type(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_a_type),
    .io_out_1_acquire_bits_union(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_union),
    .io_out_1_acquire_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_data),
    .io_out_1_grant_ready(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_ready),
    .io_out_1_grant_valid(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_valid),
    .io_out_1_grant_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_addr_beat),
    .io_out_1_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_client_xact_id),
    .io_out_1_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_manager_xact_id),
    .io_out_1_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_is_builtin_type),
    .io_out_1_grant_bits_g_type(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_g_type),
    .io_out_1_grant_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_data),
    .io_out_2_acquire_ready(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_ready),
    .io_out_2_acquire_valid(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_valid),
    .io_out_2_acquire_bits_addr_block(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_block),
    .io_out_2_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_client_xact_id),
    .io_out_2_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_beat),
    .io_out_2_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_is_builtin_type),
    .io_out_2_acquire_bits_a_type(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_a_type),
    .io_out_2_acquire_bits_union(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_union),
    .io_out_2_acquire_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_data),
    .io_out_2_grant_ready(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_ready),
    .io_out_2_grant_valid(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_valid),
    .io_out_2_grant_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_addr_beat),
    .io_out_2_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_client_xact_id),
    .io_out_2_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_manager_xact_id),
    .io_out_2_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_is_builtin_type),
    .io_out_2_grant_bits_g_type(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_g_type),
    .io_out_2_grant_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_data),
    .io_out_3_acquire_ready(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_ready),
    .io_out_3_acquire_valid(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_valid),
    .io_out_3_acquire_bits_addr_block(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_block),
    .io_out_3_acquire_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_client_xact_id),
    .io_out_3_acquire_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_beat),
    .io_out_3_acquire_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_is_builtin_type),
    .io_out_3_acquire_bits_a_type(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_a_type),
    .io_out_3_acquire_bits_union(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_union),
    .io_out_3_acquire_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_data),
    .io_out_3_grant_ready(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_ready),
    .io_out_3_grant_valid(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_valid),
    .io_out_3_grant_bits_addr_beat(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_addr_beat),
    .io_out_3_grant_bits_client_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_client_xact_id),
    .io_out_3_grant_bits_manager_xact_id(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_manager_xact_id),
    .io_out_3_grant_bits_is_builtin_type(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_is_builtin_type),
    .io_out_3_grant_bits_g_type(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_g_type),
    .io_out_3_grant_bits_data(TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_data)
  );
  assign io_in_0_acquire_ready = xbar_io_in_0_acquire_ready;
  assign io_in_0_grant_valid = xbar_io_in_0_grant_valid;
  assign io_in_0_grant_bits_addr_beat = xbar_io_in_0_grant_bits_addr_beat;
  assign io_in_0_grant_bits_client_xact_id = xbar_io_in_0_grant_bits_client_xact_id;
  assign io_in_0_grant_bits_manager_xact_id = xbar_io_in_0_grant_bits_manager_xact_id;
  assign io_in_0_grant_bits_is_builtin_type = xbar_io_in_0_grant_bits_is_builtin_type;
  assign io_in_0_grant_bits_g_type = xbar_io_in_0_grant_bits_g_type;
  assign io_in_0_grant_bits_data = xbar_io_in_0_grant_bits_data;
  assign io_out_0_acquire_valid = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_valid;
  assign io_out_0_acquire_bits_addr_block = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_block;
  assign io_out_0_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_client_xact_id;
  assign io_out_0_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_addr_beat;
  assign io_out_0_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_is_builtin_type;
  assign io_out_0_acquire_bits_a_type = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_a_type;
  assign io_out_0_acquire_bits_union = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_union;
  assign io_out_0_acquire_bits_data = TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_bits_data;
  assign io_out_0_grant_ready = TileLinkRecursiveInterconnect_1_1_io_out_0_grant_ready;
  assign io_out_1_acquire_valid = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_valid;
  assign io_out_1_acquire_bits_addr_block = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_block;
  assign io_out_1_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_client_xact_id;
  assign io_out_1_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_addr_beat;
  assign io_out_1_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_is_builtin_type;
  assign io_out_1_acquire_bits_a_type = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_a_type;
  assign io_out_1_acquire_bits_union = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_union;
  assign io_out_1_acquire_bits_data = TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_bits_data;
  assign io_out_1_grant_ready = TileLinkRecursiveInterconnect_1_1_io_out_1_grant_ready;
  assign io_out_2_acquire_valid = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_valid;
  assign io_out_2_acquire_bits_addr_block = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_block;
  assign io_out_2_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_client_xact_id;
  assign io_out_2_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_addr_beat;
  assign io_out_2_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_is_builtin_type;
  assign io_out_2_acquire_bits_a_type = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_a_type;
  assign io_out_2_acquire_bits_union = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_union;
  assign io_out_2_acquire_bits_data = TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_bits_data;
  assign io_out_2_grant_ready = TileLinkRecursiveInterconnect_1_1_io_out_2_grant_ready;
  assign io_out_3_acquire_valid = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_valid;
  assign io_out_3_acquire_bits_addr_block = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_block;
  assign io_out_3_acquire_bits_client_xact_id = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_client_xact_id;
  assign io_out_3_acquire_bits_addr_beat = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_addr_beat;
  assign io_out_3_acquire_bits_is_builtin_type = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_is_builtin_type;
  assign io_out_3_acquire_bits_a_type = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_a_type;
  assign io_out_3_acquire_bits_union = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_union;
  assign io_out_3_acquire_bits_data = TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_bits_data;
  assign io_out_3_grant_ready = TileLinkRecursiveInterconnect_1_1_io_out_3_grant_ready;
  assign io_out_4_acquire_valid = xbar_io_out_1_acquire_valid;
  assign io_out_4_acquire_bits_addr_block = xbar_io_out_1_acquire_bits_addr_block;
  assign io_out_4_acquire_bits_client_xact_id = xbar_io_out_1_acquire_bits_client_xact_id;
  assign io_out_4_acquire_bits_addr_beat = xbar_io_out_1_acquire_bits_addr_beat;
  assign io_out_4_acquire_bits_is_builtin_type = xbar_io_out_1_acquire_bits_is_builtin_type;
  assign io_out_4_acquire_bits_a_type = xbar_io_out_1_acquire_bits_a_type;
  assign io_out_4_acquire_bits_union = xbar_io_out_1_acquire_bits_union;
  assign io_out_4_acquire_bits_data = xbar_io_out_1_acquire_bits_data;
  assign io_out_4_grant_ready = xbar_io_out_1_grant_ready;
  assign xbar_clk = clk;
  assign xbar_reset = reset;
  assign xbar_io_in_0_acquire_valid = io_in_0_acquire_valid;
  assign xbar_io_in_0_acquire_bits_addr_block = io_in_0_acquire_bits_addr_block;
  assign xbar_io_in_0_acquire_bits_client_xact_id = io_in_0_acquire_bits_client_xact_id;
  assign xbar_io_in_0_acquire_bits_addr_beat = io_in_0_acquire_bits_addr_beat;
  assign xbar_io_in_0_acquire_bits_is_builtin_type = io_in_0_acquire_bits_is_builtin_type;
  assign xbar_io_in_0_acquire_bits_a_type = io_in_0_acquire_bits_a_type;
  assign xbar_io_in_0_acquire_bits_union = io_in_0_acquire_bits_union;
  assign xbar_io_in_0_acquire_bits_data = io_in_0_acquire_bits_data;
  assign xbar_io_in_0_grant_ready = io_in_0_grant_ready;
  assign xbar_io_out_0_acquire_ready = TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_ready;
  assign xbar_io_out_0_grant_valid = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_valid;
  assign xbar_io_out_0_grant_bits_addr_beat = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_addr_beat;
  assign xbar_io_out_0_grant_bits_client_xact_id = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_client_xact_id;
  assign xbar_io_out_0_grant_bits_manager_xact_id = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_manager_xact_id;
  assign xbar_io_out_0_grant_bits_is_builtin_type = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_is_builtin_type;
  assign xbar_io_out_0_grant_bits_g_type = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_g_type;
  assign xbar_io_out_0_grant_bits_data = TileLinkRecursiveInterconnect_1_1_io_in_0_grant_bits_data;
  assign xbar_io_out_1_acquire_ready = io_out_4_acquire_ready;
  assign xbar_io_out_1_grant_valid = io_out_4_grant_valid;
  assign xbar_io_out_1_grant_bits_addr_beat = io_out_4_grant_bits_addr_beat;
  assign xbar_io_out_1_grant_bits_client_xact_id = io_out_4_grant_bits_client_xact_id;
  assign xbar_io_out_1_grant_bits_manager_xact_id = io_out_4_grant_bits_manager_xact_id;
  assign xbar_io_out_1_grant_bits_is_builtin_type = io_out_4_grant_bits_is_builtin_type;
  assign xbar_io_out_1_grant_bits_g_type = io_out_4_grant_bits_g_type;
  assign xbar_io_out_1_grant_bits_data = io_out_4_grant_bits_data;
  assign TileLinkRecursiveInterconnect_1_1_clk = clk;
  assign TileLinkRecursiveInterconnect_1_1_reset = reset;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_valid = xbar_io_out_0_acquire_valid;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_block = xbar_io_out_0_acquire_bits_addr_block;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_client_xact_id = xbar_io_out_0_acquire_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_addr_beat = xbar_io_out_0_acquire_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_is_builtin_type = xbar_io_out_0_acquire_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_a_type = xbar_io_out_0_acquire_bits_a_type;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_union = xbar_io_out_0_acquire_bits_union;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_acquire_bits_data = xbar_io_out_0_acquire_bits_data;
  assign TileLinkRecursiveInterconnect_1_1_io_in_0_grant_ready = xbar_io_out_0_grant_ready;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_acquire_ready = io_out_0_acquire_ready;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_valid = io_out_0_grant_valid;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_addr_beat = io_out_0_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_client_xact_id = io_out_0_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_manager_xact_id = io_out_0_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_is_builtin_type = io_out_0_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_g_type = io_out_0_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_0_grant_bits_data = io_out_0_grant_bits_data;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_acquire_ready = io_out_1_acquire_ready;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_valid = io_out_1_grant_valid;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_addr_beat = io_out_1_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_client_xact_id = io_out_1_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_manager_xact_id = io_out_1_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_is_builtin_type = io_out_1_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_g_type = io_out_1_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_1_grant_bits_data = io_out_1_grant_bits_data;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_acquire_ready = io_out_2_acquire_ready;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_valid = io_out_2_grant_valid;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_addr_beat = io_out_2_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_client_xact_id = io_out_2_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_manager_xact_id = io_out_2_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_is_builtin_type = io_out_2_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_g_type = io_out_2_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_2_grant_bits_data = io_out_2_grant_bits_data;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_acquire_ready = io_out_3_acquire_ready;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_valid = io_out_3_grant_valid;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_addr_beat = io_out_3_grant_bits_addr_beat;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_client_xact_id = io_out_3_grant_bits_client_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_manager_xact_id = io_out_3_grant_bits_manager_xact_id;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_is_builtin_type = io_out_3_grant_bits_is_builtin_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_g_type = io_out_3_grant_bits_g_type;
  assign TileLinkRecursiveInterconnect_1_1_io_out_3_grant_bits_data = io_out_3_grant_bits_data;
endmodule
