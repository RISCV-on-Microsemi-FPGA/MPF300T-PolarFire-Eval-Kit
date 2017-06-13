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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_TILE_LINK_IO_UNWRAPPER(
  input   clk,
  input   reset,
  output  io_in_acquire_ready,
  input   io_in_acquire_valid,
  input  [25:0] io_in_acquire_bits_addr_block,
  input  [1:0] io_in_acquire_bits_client_xact_id,
  input  [2:0] io_in_acquire_bits_addr_beat,
  input   io_in_acquire_bits_is_builtin_type,
  input  [2:0] io_in_acquire_bits_a_type,
  input  [11:0] io_in_acquire_bits_union,
  input  [63:0] io_in_acquire_bits_data,
  input   io_in_probe_ready,
  output  io_in_probe_valid,
  output [25:0] io_in_probe_bits_addr_block,
  output [1:0] io_in_probe_bits_p_type,
  output  io_in_release_ready,
  input   io_in_release_valid,
  input  [2:0] io_in_release_bits_addr_beat,
  input  [25:0] io_in_release_bits_addr_block,
  input  [1:0] io_in_release_bits_client_xact_id,
  input   io_in_release_bits_voluntary,
  input  [2:0] io_in_release_bits_r_type,
  input  [63:0] io_in_release_bits_data,
  input   io_in_grant_ready,
  output  io_in_grant_valid,
  output [2:0] io_in_grant_bits_addr_beat,
  output [1:0] io_in_grant_bits_client_xact_id,
  output  io_in_grant_bits_manager_xact_id,
  output  io_in_grant_bits_is_builtin_type,
  output [3:0] io_in_grant_bits_g_type,
  output [63:0] io_in_grant_bits_data,
  output  io_in_grant_bits_manager_id,
  output  io_in_finish_ready,
  input   io_in_finish_valid,
  input   io_in_finish_bits_manager_xact_id,
  input   io_in_finish_bits_manager_id,
  input   io_out_acquire_ready,
  output  io_out_acquire_valid,
  output [25:0] io_out_acquire_bits_addr_block,
  output [1:0] io_out_acquire_bits_client_xact_id,
  output [2:0] io_out_acquire_bits_addr_beat,
  output  io_out_acquire_bits_is_builtin_type,
  output [2:0] io_out_acquire_bits_a_type,
  output [11:0] io_out_acquire_bits_union,
  output [63:0] io_out_acquire_bits_data,
  output  io_out_grant_ready,
  input   io_out_grant_valid,
  input  [2:0] io_out_grant_bits_addr_beat,
  input  [1:0] io_out_grant_bits_client_xact_id,
  input   io_out_grant_bits_manager_xact_id,
  input   io_out_grant_bits_is_builtin_type,
  input  [3:0] io_out_grant_bits_g_type,
  input  [63:0] io_out_grant_bits_data
);
  wire  acqArb_clk;
  wire  acqArb_reset;
  wire  acqArb_io_in_0_ready;
  wire  acqArb_io_in_0_valid;
  wire [25:0] acqArb_io_in_0_bits_addr_block;
  wire [1:0] acqArb_io_in_0_bits_client_xact_id;
  wire [2:0] acqArb_io_in_0_bits_addr_beat;
  wire  acqArb_io_in_0_bits_is_builtin_type;
  wire [2:0] acqArb_io_in_0_bits_a_type;
  wire [11:0] acqArb_io_in_0_bits_union;
  wire [63:0] acqArb_io_in_0_bits_data;
  wire  acqArb_io_in_1_ready;
  wire  acqArb_io_in_1_valid;
  wire [25:0] acqArb_io_in_1_bits_addr_block;
  wire [1:0] acqArb_io_in_1_bits_client_xact_id;
  wire [2:0] acqArb_io_in_1_bits_addr_beat;
  wire  acqArb_io_in_1_bits_is_builtin_type;
  wire [2:0] acqArb_io_in_1_bits_a_type;
  wire [11:0] acqArb_io_in_1_bits_union;
  wire [63:0] acqArb_io_in_1_bits_data;
  wire  acqArb_io_out_ready;
  wire  acqArb_io_out_valid;
  wire [25:0] acqArb_io_out_bits_addr_block;
  wire [1:0] acqArb_io_out_bits_client_xact_id;
  wire [2:0] acqArb_io_out_bits_addr_beat;
  wire  acqArb_io_out_bits_is_builtin_type;
  wire [2:0] acqArb_io_out_bits_a_type;
  wire [11:0] acqArb_io_out_bits_union;
  wire [63:0] acqArb_io_out_bits_data;
  wire  acqArb_io_chosen;
  wire  acqRoq_clk;
  wire  acqRoq_reset;
  wire  acqRoq_io_enq_ready;
  wire  acqRoq_io_enq_valid;
  wire  acqRoq_io_enq_bits_data;
  wire [1:0] acqRoq_io_enq_bits_tag;
  wire  acqRoq_io_deq_valid;
  wire [1:0] acqRoq_io_deq_tag;
  wire  acqRoq_io_deq_data;
  wire  acqRoq_io_deq_matches;
  wire  relRoq_clk;
  wire  relRoq_reset;
  wire  relRoq_io_enq_ready;
  wire  relRoq_io_enq_valid;
  wire  relRoq_io_enq_bits_data;
  wire [1:0] relRoq_io_enq_bits_tag;
  wire  relRoq_io_deq_valid;
  wire [1:0] relRoq_io_deq_tag;
  wire  relRoq_io_deq_data;
  wire  relRoq_io_deq_matches;
  wire [2:0] T_1366_0;
  wire  T_1368;
  wire  T_1369;
  wire  T_1371;
  wire  T_1373;
  wire  acq_roq_enq;
  wire  T_1375;
  wire  T_1376;
  wire  T_1377;
  wire  T_1378;
  wire  T_1379;
  wire  T_1382;
  wire  T_1384;
  wire  rel_roq_enq;
  wire  T_1386;
  wire  acq_roq_ready;
  wire  T_1388;
  wire  rel_roq_ready;
  wire  T_1389;
  wire  T_1390;
  wire  T_1391;
  wire [2:0] T_1394;
  wire [11:0] T_1398;
  wire [25:0] T_1427_addr_block;
  wire [1:0] T_1427_client_xact_id;
  wire [2:0] T_1427_addr_beat;
  wire  T_1427_is_builtin_type;
  wire [2:0] T_1427_a_type;
  wire [11:0] T_1427_union;
  wire [63:0] T_1427_data;
  wire  T_1455;
  wire  T_1456;
  wire  T_1457;
  wire  T_1458;
  wire [25:0] T_1580_addr_block;
  wire [1:0] T_1580_client_xact_id;
  wire [2:0] T_1580_addr_beat;
  wire  T_1580_is_builtin_type;
  wire [2:0] T_1580_a_type;
  wire [11:0] T_1580_union;
  wire [63:0] T_1580_data;
  wire  T_1608;
  wire  T_1609;
  wire [2:0] T_1617_0;
  wire [3:0] GEN_0;
  wire  T_1619;
  wire  T_1620;
  wire  T_1621;
  wire  T_1624;
  wire  T_1626;
  wire  T_1627;
  wire  grant_deq_roq;
  wire  T_1628;
  wire  T_1630;
  wire  T_1631;
  wire  T_1633;
  wire  T_1634;
  wire  T_1635;
  wire  T_1636;
  wire  T_1638;
  wire [3:0] T_1639;
  wire [2:0] acq_grant_addr_beat;
  wire [1:0] acq_grant_client_xact_id;
  wire  acq_grant_manager_xact_id;
  wire  acq_grant_is_builtin_type;
  wire [3:0] acq_grant_g_type;
  wire [63:0] acq_grant_data;
  wire  T_1694;
  wire  T_1695;
  wire  T_1696;
  wire  T_1698;
  wire [2:0] rel_grant_addr_beat;
  wire [1:0] rel_grant_client_xact_id;
  wire  rel_grant_manager_xact_id;
  wire  rel_grant_is_builtin_type;
  wire [3:0] rel_grant_g_type;
  wire [63:0] rel_grant_data;
  wire [2:0] T_1754_addr_beat;
  wire [1:0] T_1754_client_xact_id;
  wire  T_1754_manager_xact_id;
  wire  T_1754_is_builtin_type;
  wire [3:0] T_1754_g_type;
  wire [63:0] T_1754_data;
  reg [25:0] GEN_1;
  reg [31:0] GEN_5;
  reg [1:0] GEN_2;
  reg [31:0] GEN_6;
  reg  GEN_3;
  reg [31:0] GEN_7;
  reg  GEN_4;
  reg [31:0] GEN_8;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_5 acqArb (
    .clk(acqArb_clk),
    .reset(acqArb_reset),
    .io_in_0_ready(acqArb_io_in_0_ready),
    .io_in_0_valid(acqArb_io_in_0_valid),
    .io_in_0_bits_addr_block(acqArb_io_in_0_bits_addr_block),
    .io_in_0_bits_client_xact_id(acqArb_io_in_0_bits_client_xact_id),
    .io_in_0_bits_addr_beat(acqArb_io_in_0_bits_addr_beat),
    .io_in_0_bits_is_builtin_type(acqArb_io_in_0_bits_is_builtin_type),
    .io_in_0_bits_a_type(acqArb_io_in_0_bits_a_type),
    .io_in_0_bits_union(acqArb_io_in_0_bits_union),
    .io_in_0_bits_data(acqArb_io_in_0_bits_data),
    .io_in_1_ready(acqArb_io_in_1_ready),
    .io_in_1_valid(acqArb_io_in_1_valid),
    .io_in_1_bits_addr_block(acqArb_io_in_1_bits_addr_block),
    .io_in_1_bits_client_xact_id(acqArb_io_in_1_bits_client_xact_id),
    .io_in_1_bits_addr_beat(acqArb_io_in_1_bits_addr_beat),
    .io_in_1_bits_is_builtin_type(acqArb_io_in_1_bits_is_builtin_type),
    .io_in_1_bits_a_type(acqArb_io_in_1_bits_a_type),
    .io_in_1_bits_union(acqArb_io_in_1_bits_union),
    .io_in_1_bits_data(acqArb_io_in_1_bits_data),
    .io_out_ready(acqArb_io_out_ready),
    .io_out_valid(acqArb_io_out_valid),
    .io_out_bits_addr_block(acqArb_io_out_bits_addr_block),
    .io_out_bits_client_xact_id(acqArb_io_out_bits_client_xact_id),
    .io_out_bits_addr_beat(acqArb_io_out_bits_addr_beat),
    .io_out_bits_is_builtin_type(acqArb_io_out_bits_is_builtin_type),
    .io_out_bits_a_type(acqArb_io_out_bits_a_type),
    .io_out_bits_union(acqArb_io_out_bits_union),
    .io_out_bits_data(acqArb_io_out_bits_data),
    .io_chosen(acqArb_io_chosen)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE acqRoq (
    .clk(acqRoq_clk),
    .reset(acqRoq_reset),
    .io_enq_ready(acqRoq_io_enq_ready),
    .io_enq_valid(acqRoq_io_enq_valid),
    .io_enq_bits_data(acqRoq_io_enq_bits_data),
    .io_enq_bits_tag(acqRoq_io_enq_bits_tag),
    .io_deq_valid(acqRoq_io_deq_valid),
    .io_deq_tag(acqRoq_io_deq_tag),
    .io_deq_data(acqRoq_io_deq_data),
    .io_deq_matches(acqRoq_io_deq_matches)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE relRoq (
    .clk(relRoq_clk),
    .reset(relRoq_reset),
    .io_enq_ready(relRoq_io_enq_ready),
    .io_enq_valid(relRoq_io_enq_valid),
    .io_enq_bits_data(relRoq_io_enq_bits_data),
    .io_enq_bits_tag(relRoq_io_enq_bits_tag),
    .io_deq_valid(relRoq_io_deq_valid),
    .io_deq_tag(relRoq_io_deq_tag),
    .io_deq_data(relRoq_io_deq_data),
    .io_deq_matches(relRoq_io_deq_matches)
  );
  assign io_in_acquire_ready = T_1455;
  assign io_in_probe_valid = 1'h0;
  assign io_in_probe_bits_addr_block = GEN_1;
  assign io_in_probe_bits_p_type = GEN_2;
  assign io_in_release_ready = T_1608;
  assign io_in_grant_valid = io_out_grant_valid;
  assign io_in_grant_bits_addr_beat = T_1754_addr_beat;
  assign io_in_grant_bits_client_xact_id = T_1754_client_xact_id;
  assign io_in_grant_bits_manager_xact_id = T_1754_manager_xact_id;
  assign io_in_grant_bits_is_builtin_type = T_1754_is_builtin_type;
  assign io_in_grant_bits_g_type = T_1754_g_type;
  assign io_in_grant_bits_data = T_1754_data;
  assign io_in_grant_bits_manager_id = GEN_3;
  assign io_in_finish_ready = GEN_4;
  assign io_out_acquire_valid = acqArb_io_out_valid;
  assign io_out_acquire_bits_addr_block = acqArb_io_out_bits_addr_block;
  assign io_out_acquire_bits_client_xact_id = acqArb_io_out_bits_client_xact_id;
  assign io_out_acquire_bits_addr_beat = acqArb_io_out_bits_addr_beat;
  assign io_out_acquire_bits_is_builtin_type = acqArb_io_out_bits_is_builtin_type;
  assign io_out_acquire_bits_a_type = acqArb_io_out_bits_a_type;
  assign io_out_acquire_bits_union = acqArb_io_out_bits_union;
  assign io_out_acquire_bits_data = acqArb_io_out_bits_data;
  assign io_out_grant_ready = io_in_grant_ready;
  assign acqArb_clk = clk;
  assign acqArb_reset = reset;
  assign acqArb_io_in_0_valid = T_1391;
  assign acqArb_io_in_0_bits_addr_block = T_1427_addr_block;
  assign acqArb_io_in_0_bits_client_xact_id = T_1427_client_xact_id;
  assign acqArb_io_in_0_bits_addr_beat = T_1427_addr_beat;
  assign acqArb_io_in_0_bits_is_builtin_type = T_1427_is_builtin_type;
  assign acqArb_io_in_0_bits_a_type = T_1427_a_type;
  assign acqArb_io_in_0_bits_union = T_1427_union;
  assign acqArb_io_in_0_bits_data = T_1427_data;
  assign acqArb_io_in_1_valid = T_1458;
  assign acqArb_io_in_1_bits_addr_block = T_1580_addr_block;
  assign acqArb_io_in_1_bits_client_xact_id = T_1580_client_xact_id;
  assign acqArb_io_in_1_bits_addr_beat = T_1580_addr_beat;
  assign acqArb_io_in_1_bits_is_builtin_type = T_1580_is_builtin_type;
  assign acqArb_io_in_1_bits_a_type = T_1580_a_type;
  assign acqArb_io_in_1_bits_union = T_1580_union;
  assign acqArb_io_in_1_bits_data = T_1580_data;
  assign acqArb_io_out_ready = io_out_acquire_ready;
  assign acqRoq_clk = clk;
  assign acqRoq_reset = reset;
  assign acqRoq_io_enq_valid = T_1390;
  assign acqRoq_io_enq_bits_data = io_in_acquire_bits_is_builtin_type;
  assign acqRoq_io_enq_bits_tag = io_in_acquire_bits_client_xact_id;
  assign acqRoq_io_deq_valid = T_1628;
  assign acqRoq_io_deq_tag = io_out_grant_bits_client_xact_id;
  assign relRoq_clk = clk;
  assign relRoq_reset = reset;
  assign relRoq_io_enq_valid = T_1457;
  assign relRoq_io_enq_bits_data = io_in_release_bits_voluntary;
  assign relRoq_io_enq_bits_tag = io_in_release_bits_client_xact_id;
  assign relRoq_io_deq_valid = T_1631;
  assign relRoq_io_deq_tag = io_out_grant_bits_client_xact_id;
  assign T_1366_0 = 3'h3;
  assign T_1368 = io_in_acquire_bits_a_type == T_1366_0;
  assign T_1369 = io_in_acquire_bits_is_builtin_type & T_1368;
  assign T_1371 = T_1369 == 1'h0;
  assign T_1373 = io_in_acquire_bits_addr_beat == 3'h0;
  assign acq_roq_enq = T_1371 | T_1373;
  assign T_1375 = io_in_release_bits_r_type == 3'h0;
  assign T_1376 = io_in_release_bits_r_type == 3'h1;
  assign T_1377 = io_in_release_bits_r_type == 3'h2;
  assign T_1378 = T_1375 | T_1376;
  assign T_1379 = T_1378 | T_1377;
  assign T_1382 = T_1379 == 1'h0;
  assign T_1384 = io_in_release_bits_addr_beat == 3'h0;
  assign rel_roq_enq = T_1382 | T_1384;
  assign T_1386 = acq_roq_enq == 1'h0;
  assign acq_roq_ready = T_1386 | acqRoq_io_enq_ready;
  assign T_1388 = rel_roq_enq == 1'h0;
  assign rel_roq_ready = T_1388 | relRoq_io_enq_ready;
  assign T_1389 = io_in_acquire_valid & acqArb_io_in_0_ready;
  assign T_1390 = T_1389 & acq_roq_enq;
  assign T_1391 = io_in_acquire_valid & acq_roq_ready;
  assign T_1394 = io_in_acquire_bits_is_builtin_type ? io_in_acquire_bits_a_type : 3'h1;
  assign T_1398 = io_in_acquire_bits_is_builtin_type ? io_in_acquire_bits_union : 12'h1c1;
  assign T_1427_addr_block = io_in_acquire_bits_addr_block;
  assign T_1427_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign T_1427_addr_beat = io_in_acquire_bits_addr_beat;
  assign T_1427_is_builtin_type = 1'h1;
  assign T_1427_a_type = T_1394;
  assign T_1427_union = T_1398;
  assign T_1427_data = io_in_acquire_bits_data;
  assign T_1455 = acq_roq_ready & acqArb_io_in_0_ready;
  assign T_1456 = io_in_release_valid & acqArb_io_in_1_ready;
  assign T_1457 = T_1456 & rel_roq_enq;
  assign T_1458 = io_in_release_valid & rel_roq_ready;
  assign T_1580_addr_block = io_in_release_bits_addr_block;
  assign T_1580_client_xact_id = io_in_release_bits_client_xact_id;
  assign T_1580_addr_beat = io_in_release_bits_addr_beat;
  assign T_1580_is_builtin_type = 1'h1;
  assign T_1580_a_type = 3'h3;
  assign T_1580_union = 12'h1ff;
  assign T_1580_data = io_in_release_bits_data;
  assign T_1608 = rel_roq_ready & acqArb_io_in_1_ready;
  assign T_1609 = io_out_grant_ready & io_out_grant_valid;
  assign T_1617_0 = 3'h5;
  assign GEN_0 = {{1'd0}, T_1617_0};
  assign T_1619 = io_out_grant_bits_g_type == GEN_0;
  assign T_1620 = io_out_grant_bits_g_type == 4'h0;
  assign T_1621 = io_out_grant_bits_is_builtin_type ? T_1619 : T_1620;
  assign T_1624 = T_1621 == 1'h0;
  assign T_1626 = io_out_grant_bits_addr_beat == 3'h7;
  assign T_1627 = T_1624 | T_1626;
  assign grant_deq_roq = T_1609 & T_1627;
  assign T_1628 = acqRoq_io_deq_matches & grant_deq_roq;
  assign T_1630 = acqRoq_io_deq_matches == 1'h0;
  assign T_1631 = T_1630 & grant_deq_roq;
  assign T_1633 = grant_deq_roq == 1'h0;
  assign T_1634 = T_1633 | acqRoq_io_deq_matches;
  assign T_1635 = T_1634 | relRoq_io_deq_matches;
  assign T_1636 = T_1635 | reset;
  assign T_1638 = T_1636 == 1'h0;
  assign T_1639 = acqRoq_io_deq_data ? io_out_grant_bits_g_type : 4'h0;
  assign acq_grant_addr_beat = io_out_grant_bits_addr_beat;
  assign acq_grant_client_xact_id = io_out_grant_bits_client_xact_id;
  assign acq_grant_manager_xact_id = io_out_grant_bits_manager_xact_id;
  assign acq_grant_is_builtin_type = acqRoq_io_deq_data;
  assign acq_grant_g_type = T_1639;
  assign acq_grant_data = io_out_grant_bits_data;
  assign T_1694 = io_in_release_valid == 1'h0;
  assign T_1695 = T_1694 | io_in_release_bits_voluntary;
  assign T_1696 = T_1695 | reset;
  assign T_1698 = T_1696 == 1'h0;
  assign rel_grant_addr_beat = io_out_grant_bits_addr_beat;
  assign rel_grant_client_xact_id = io_out_grant_bits_client_xact_id;
  assign rel_grant_manager_xact_id = io_out_grant_bits_manager_xact_id;
  assign rel_grant_is_builtin_type = 1'h1;
  assign rel_grant_g_type = 4'h0;
  assign rel_grant_data = io_out_grant_bits_data;
  assign T_1754_addr_beat = acqRoq_io_deq_matches ? acq_grant_addr_beat : rel_grant_addr_beat;
  assign T_1754_client_xact_id = acqRoq_io_deq_matches ? acq_grant_client_xact_id : rel_grant_client_xact_id;
  assign T_1754_manager_xact_id = acqRoq_io_deq_matches ? acq_grant_manager_xact_id : rel_grant_manager_xact_id;
  assign T_1754_is_builtin_type = acqRoq_io_deq_matches ? acq_grant_is_builtin_type : rel_grant_is_builtin_type;
  assign T_1754_g_type = acqRoq_io_deq_matches ? acq_grant_g_type : rel_grant_g_type;
  assign T_1754_data = acqRoq_io_deq_matches ? acq_grant_data : rel_grant_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_5 = {1{$random}};
  GEN_1 = GEN_5[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_6 = {1{$random}};
  GEN_2 = GEN_6[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_7 = {1{$random}};
  GEN_3 = GEN_7[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_8 = {1{$random}};
  GEN_4 = GEN_8[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1638) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink Unwrapper: client_xact_id mismatch\n    at Tilelink.scala:120 assert(!grant_deq_roq || acqRoq.io.deq.matches || relRoq.io.deq.matches,\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1638) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1698) begin
          $fwrite(32'h80000002,"Assertion failed: Unwrapper can only process voluntary releases.\n    at Tilelink.scala:134 assert(!io.in.release.valid || io.in.release.bits.isVoluntary(), ---Unwrapper can only process voluntary releases.---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1698) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
