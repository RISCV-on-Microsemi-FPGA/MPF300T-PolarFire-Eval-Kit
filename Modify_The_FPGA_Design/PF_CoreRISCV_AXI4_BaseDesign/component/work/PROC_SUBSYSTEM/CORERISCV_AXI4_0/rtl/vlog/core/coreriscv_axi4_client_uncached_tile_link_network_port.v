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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_UNCACHED_TILE_LINK_NETWORK_PORT(
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
  input   io_client_grant_ready,
  output  io_client_grant_valid,
  output [2:0] io_client_grant_bits_addr_beat,
  output  io_client_grant_bits_client_xact_id,
  output [1:0] io_client_grant_bits_manager_xact_id,
  output  io_client_grant_bits_is_builtin_type,
  output [3:0] io_client_grant_bits_g_type,
  output [63:0] io_client_grant_bits_data,
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
  wire  finisher_clk;
  wire  finisher_reset;
  wire  finisher_io_grant_ready;
  wire  finisher_io_grant_valid;
  wire [1:0] finisher_io_grant_bits_header_src;
  wire [1:0] finisher_io_grant_bits_header_dst;
  wire [2:0] finisher_io_grant_bits_payload_addr_beat;
  wire  finisher_io_grant_bits_payload_client_xact_id;
  wire [1:0] finisher_io_grant_bits_payload_manager_xact_id;
  wire  finisher_io_grant_bits_payload_is_builtin_type;
  wire [3:0] finisher_io_grant_bits_payload_g_type;
  wire [63:0] finisher_io_grant_bits_payload_data;
  wire  finisher_io_refill_ready;
  wire  finisher_io_refill_valid;
  wire [2:0] finisher_io_refill_bits_addr_beat;
  wire  finisher_io_refill_bits_client_xact_id;
  wire [1:0] finisher_io_refill_bits_manager_xact_id;
  wire  finisher_io_refill_bits_is_builtin_type;
  wire [3:0] finisher_io_refill_bits_g_type;
  wire [63:0] finisher_io_refill_bits_data;
  wire  finisher_io_finish_ready;
  wire  finisher_io_finish_valid;
  wire [1:0] finisher_io_finish_bits_header_src;
  wire [1:0] finisher_io_finish_bits_header_dst;
  wire [1:0] finisher_io_finish_bits_payload_manager_xact_id;
  wire  finisher_io_ready;
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
  wire [31:0] T_3330;
  wire  T_3332;
  wire  T_3334;
  wire  T_3335;
  wire  T_3338;
  wire  T_3339;
  wire  T_3340;
  reg [1:0] GEN_1;
  reg [31:0] GEN_9;
  reg [1:0] GEN_2;
  reg [31:0] GEN_10;
  reg [2:0] GEN_3;
  reg [31:0] GEN_11;
  reg [25:0] GEN_4;
  reg [31:0] GEN_12;
  reg  GEN_5;
  reg [31:0] GEN_13;
  reg  GEN_6;
  reg [31:0] GEN_14;
  reg [2:0] GEN_7;
  reg [31:0] GEN_15;
  reg [63:0] GEN_8;
  reg [63:0] GEN_16;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_UNIT finisher (
    .clk(finisher_clk),
    .reset(finisher_reset),
    .io_grant_ready(finisher_io_grant_ready),
    .io_grant_valid(finisher_io_grant_valid),
    .io_grant_bits_header_src(finisher_io_grant_bits_header_src),
    .io_grant_bits_header_dst(finisher_io_grant_bits_header_dst),
    .io_grant_bits_payload_addr_beat(finisher_io_grant_bits_payload_addr_beat),
    .io_grant_bits_payload_client_xact_id(finisher_io_grant_bits_payload_client_xact_id),
    .io_grant_bits_payload_manager_xact_id(finisher_io_grant_bits_payload_manager_xact_id),
    .io_grant_bits_payload_is_builtin_type(finisher_io_grant_bits_payload_is_builtin_type),
    .io_grant_bits_payload_g_type(finisher_io_grant_bits_payload_g_type),
    .io_grant_bits_payload_data(finisher_io_grant_bits_payload_data),
    .io_refill_ready(finisher_io_refill_ready),
    .io_refill_valid(finisher_io_refill_valid),
    .io_refill_bits_addr_beat(finisher_io_refill_bits_addr_beat),
    .io_refill_bits_client_xact_id(finisher_io_refill_bits_client_xact_id),
    .io_refill_bits_manager_xact_id(finisher_io_refill_bits_manager_xact_id),
    .io_refill_bits_is_builtin_type(finisher_io_refill_bits_is_builtin_type),
    .io_refill_bits_g_type(finisher_io_refill_bits_g_type),
    .io_refill_bits_data(finisher_io_refill_bits_data),
    .io_finish_ready(finisher_io_finish_ready),
    .io_finish_valid(finisher_io_finish_valid),
    .io_finish_bits_header_src(finisher_io_finish_bits_header_src),
    .io_finish_bits_header_dst(finisher_io_finish_bits_header_dst),
    .io_finish_bits_payload_manager_xact_id(finisher_io_finish_bits_payload_manager_xact_id),
    .io_ready(finisher_io_ready)
  );
  assign io_client_acquire_ready = acq_with_header_ready;
  assign io_client_grant_valid = finisher_io_refill_valid;
  assign io_client_grant_bits_addr_beat = finisher_io_refill_bits_addr_beat;
  assign io_client_grant_bits_client_xact_id = finisher_io_refill_bits_client_xact_id;
  assign io_client_grant_bits_manager_xact_id = finisher_io_refill_bits_manager_xact_id;
  assign io_client_grant_bits_is_builtin_type = finisher_io_refill_bits_is_builtin_type;
  assign io_client_grant_bits_g_type = finisher_io_refill_bits_g_type;
  assign io_client_grant_bits_data = finisher_io_refill_bits_data;
  assign io_network_acquire_valid = T_3339;
  assign io_network_acquire_bits_header_src = acq_with_header_bits_header_src;
  assign io_network_acquire_bits_header_dst = acq_with_header_bits_header_dst;
  assign io_network_acquire_bits_payload_addr_block = acq_with_header_bits_payload_addr_block;
  assign io_network_acquire_bits_payload_client_xact_id = acq_with_header_bits_payload_client_xact_id;
  assign io_network_acquire_bits_payload_addr_beat = acq_with_header_bits_payload_addr_beat;
  assign io_network_acquire_bits_payload_is_builtin_type = acq_with_header_bits_payload_is_builtin_type;
  assign io_network_acquire_bits_payload_a_type = acq_with_header_bits_payload_a_type;
  assign io_network_acquire_bits_payload_union = acq_with_header_bits_payload_union;
  assign io_network_acquire_bits_payload_data = acq_with_header_bits_payload_data;
  assign io_network_grant_ready = finisher_io_grant_ready;
  assign io_network_finish_valid = finisher_io_finish_valid;
  assign io_network_finish_bits_header_src = finisher_io_finish_bits_header_src;
  assign io_network_finish_bits_header_dst = finisher_io_finish_bits_header_dst;
  assign io_network_finish_bits_payload_manager_xact_id = finisher_io_finish_bits_payload_manager_xact_id;
  assign io_network_probe_ready = 1'h0;
  assign io_network_release_valid = 1'h0;
  assign io_network_release_bits_header_src = GEN_1;
  assign io_network_release_bits_header_dst = GEN_2;
  assign io_network_release_bits_payload_addr_beat = GEN_3;
  assign io_network_release_bits_payload_addr_block = GEN_4;
  assign io_network_release_bits_payload_client_xact_id = GEN_5;
  assign io_network_release_bits_payload_voluntary = GEN_6;
  assign io_network_release_bits_payload_r_type = GEN_7;
  assign io_network_release_bits_payload_data = GEN_8;
  assign finisher_clk = clk;
  assign finisher_reset = reset;
  assign finisher_io_grant_valid = io_network_grant_valid;
  assign finisher_io_grant_bits_header_src = io_network_grant_bits_header_src;
  assign finisher_io_grant_bits_header_dst = io_network_grant_bits_header_dst;
  assign finisher_io_grant_bits_payload_addr_beat = io_network_grant_bits_payload_addr_beat;
  assign finisher_io_grant_bits_payload_client_xact_id = io_network_grant_bits_payload_client_xact_id;
  assign finisher_io_grant_bits_payload_manager_xact_id = io_network_grant_bits_payload_manager_xact_id;
  assign finisher_io_grant_bits_payload_is_builtin_type = io_network_grant_bits_payload_is_builtin_type;
  assign finisher_io_grant_bits_payload_g_type = io_network_grant_bits_payload_g_type;
  assign finisher_io_grant_bits_payload_data = io_network_grant_bits_payload_data;
  assign finisher_io_refill_ready = io_client_grant_ready;
  assign finisher_io_finish_ready = io_network_finish_ready;
  assign acq_with_header_ready = T_3340;
  assign acq_with_header_valid = io_client_acquire_valid;
  assign acq_with_header_bits_header_src = 2'h1;
  assign acq_with_header_bits_header_dst = {{1'd0}, T_3338};
  assign acq_with_header_bits_payload_addr_block = io_client_acquire_bits_addr_block;
  assign acq_with_header_bits_payload_client_xact_id = io_client_acquire_bits_client_xact_id;
  assign acq_with_header_bits_payload_addr_beat = io_client_acquire_bits_addr_beat;
  assign acq_with_header_bits_payload_is_builtin_type = io_client_acquire_bits_is_builtin_type;
  assign acq_with_header_bits_payload_a_type = io_client_acquire_bits_a_type;
  assign acq_with_header_bits_payload_union = io_client_acquire_bits_union;
  assign acq_with_header_bits_payload_data = io_client_acquire_bits_data;
  assign GEN_0 = {{6'd0}, io_client_acquire_bits_addr_block};
  assign T_3330 = GEN_0 << 6;
  assign T_3332 = 32'h80000000 <= T_3330;
  assign T_3334 = T_3330 < 32'h90000000;
  assign T_3335 = T_3332 & T_3334;
  assign T_3338 = T_3335 ? 1'h0 : 1'h1;
  assign T_3339 = acq_with_header_valid & finisher_io_ready;
  assign T_3340 = io_network_acquire_ready & finisher_io_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_9 = {1{$random}};
  GEN_1 = GEN_9[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_10 = {1{$random}};
  GEN_2 = GEN_10[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_11 = {1{$random}};
  GEN_3 = GEN_11[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_12 = {1{$random}};
  GEN_4 = GEN_12[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_13 = {1{$random}};
  GEN_5 = GEN_13[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_14 = {1{$random}};
  GEN_6 = GEN_14[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_15 = {1{$random}};
  GEN_7 = GEN_15[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_16 = {2{$random}};
  GEN_8 = GEN_16[63:0];
  `endif
  end
`endif
endmodule
