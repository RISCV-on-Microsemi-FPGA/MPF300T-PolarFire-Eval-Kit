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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_UNCACHED_TILE_LINK_IO_ROUTER(
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
  input   io_in_grant_ready,
  output  io_in_grant_valid,
  output [2:0] io_in_grant_bits_addr_beat,
  output [1:0] io_in_grant_bits_client_xact_id,
  output  io_in_grant_bits_manager_xact_id,
  output  io_in_grant_bits_is_builtin_type,
  output [3:0] io_in_grant_bits_g_type,
  output [63:0] io_in_grant_bits_data,
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
  input  [63:0] io_out_1_grant_bits_data
);
  wire [2:0] T_1449_0;
  wire [2:0] T_1449_1;
  wire  T_1451;
  wire  T_1452;
  wire  T_1453;
  wire  T_1454;
  wire [2:0] T_1455;
  wire [2:0] T_1457;
  wire [28:0] T_1458;
  wire [31:0] T_1459;
  wire  T_1463;
  wire  T_1466;
  wire  T_1468;
  wire  T_1469;
  wire [1:0] acq_route;
  wire  T_1471;
  wire  T_1472;
  wire  GEN_0;
  wire  T_1474;
  wire  T_1475;
  wire  GEN_1;
  wire  gnt_arb_clk;
  wire  gnt_arb_reset;
  wire  gnt_arb_io_in_0_ready;
  wire  gnt_arb_io_in_0_valid;
  wire [2:0] gnt_arb_io_in_0_bits_addr_beat;
  wire [1:0] gnt_arb_io_in_0_bits_client_xact_id;
  wire  gnt_arb_io_in_0_bits_manager_xact_id;
  wire  gnt_arb_io_in_0_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_in_0_bits_g_type;
  wire [63:0] gnt_arb_io_in_0_bits_data;
  wire  gnt_arb_io_in_1_ready;
  wire  gnt_arb_io_in_1_valid;
  wire [2:0] gnt_arb_io_in_1_bits_addr_beat;
  wire [1:0] gnt_arb_io_in_1_bits_client_xact_id;
  wire  gnt_arb_io_in_1_bits_manager_xact_id;
  wire  gnt_arb_io_in_1_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_in_1_bits_g_type;
  wire [63:0] gnt_arb_io_in_1_bits_data;
  wire  gnt_arb_io_out_ready;
  wire  gnt_arb_io_out_valid;
  wire [2:0] gnt_arb_io_out_bits_addr_beat;
  wire [1:0] gnt_arb_io_out_bits_client_xact_id;
  wire  gnt_arb_io_out_bits_manager_xact_id;
  wire  gnt_arb_io_out_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_out_bits_g_type;
  wire [63:0] gnt_arb_io_out_bits_data;
  wire  gnt_arb_io_chosen;
  wire  T_1500;
  wire  T_1502;
  wire  T_1503;
  wire  T_1504;
  wire  T_1506;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_6 gnt_arb (
    .clk(gnt_arb_clk),
    .reset(gnt_arb_reset),
    .io_in_0_ready(gnt_arb_io_in_0_ready),
    .io_in_0_valid(gnt_arb_io_in_0_valid),
    .io_in_0_bits_addr_beat(gnt_arb_io_in_0_bits_addr_beat),
    .io_in_0_bits_client_xact_id(gnt_arb_io_in_0_bits_client_xact_id),
    .io_in_0_bits_manager_xact_id(gnt_arb_io_in_0_bits_manager_xact_id),
    .io_in_0_bits_is_builtin_type(gnt_arb_io_in_0_bits_is_builtin_type),
    .io_in_0_bits_g_type(gnt_arb_io_in_0_bits_g_type),
    .io_in_0_bits_data(gnt_arb_io_in_0_bits_data),
    .io_in_1_ready(gnt_arb_io_in_1_ready),
    .io_in_1_valid(gnt_arb_io_in_1_valid),
    .io_in_1_bits_addr_beat(gnt_arb_io_in_1_bits_addr_beat),
    .io_in_1_bits_client_xact_id(gnt_arb_io_in_1_bits_client_xact_id),
    .io_in_1_bits_manager_xact_id(gnt_arb_io_in_1_bits_manager_xact_id),
    .io_in_1_bits_is_builtin_type(gnt_arb_io_in_1_bits_is_builtin_type),
    .io_in_1_bits_g_type(gnt_arb_io_in_1_bits_g_type),
    .io_in_1_bits_data(gnt_arb_io_in_1_bits_data),
    .io_out_ready(gnt_arb_io_out_ready),
    .io_out_valid(gnt_arb_io_out_valid),
    .io_out_bits_addr_beat(gnt_arb_io_out_bits_addr_beat),
    .io_out_bits_client_xact_id(gnt_arb_io_out_bits_client_xact_id),
    .io_out_bits_manager_xact_id(gnt_arb_io_out_bits_manager_xact_id),
    .io_out_bits_is_builtin_type(gnt_arb_io_out_bits_is_builtin_type),
    .io_out_bits_g_type(gnt_arb_io_out_bits_g_type),
    .io_out_bits_data(gnt_arb_io_out_bits_data),
    .io_chosen(gnt_arb_io_chosen)
  );
  assign io_in_acquire_ready = GEN_1;
  assign io_in_grant_valid = gnt_arb_io_out_valid;
  assign io_in_grant_bits_addr_beat = gnt_arb_io_out_bits_addr_beat;
  assign io_in_grant_bits_client_xact_id = gnt_arb_io_out_bits_client_xact_id;
  assign io_in_grant_bits_manager_xact_id = gnt_arb_io_out_bits_manager_xact_id;
  assign io_in_grant_bits_is_builtin_type = gnt_arb_io_out_bits_is_builtin_type;
  assign io_in_grant_bits_g_type = gnt_arb_io_out_bits_g_type;
  assign io_in_grant_bits_data = gnt_arb_io_out_bits_data;
  assign io_out_0_acquire_valid = T_1472;
  assign io_out_0_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_0_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_0_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_0_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_0_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_0_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_0_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_0_grant_ready = gnt_arb_io_in_0_ready;
  assign io_out_1_acquire_valid = T_1475;
  assign io_out_1_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_1_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_1_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_1_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_1_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_1_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_1_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_1_grant_ready = gnt_arb_io_in_1_ready;
  assign T_1449_0 = 3'h0;
  assign T_1449_1 = 3'h4;
  assign T_1451 = io_in_acquire_bits_a_type == T_1449_0;
  assign T_1452 = io_in_acquire_bits_a_type == T_1449_1;
  assign T_1453 = T_1451 | T_1452;
  assign T_1454 = io_in_acquire_bits_is_builtin_type & T_1453;
  assign T_1455 = io_in_acquire_bits_union[11:9];
  assign T_1457 = T_1454 ? T_1455 : 3'h0;
  assign T_1458 = {io_in_acquire_bits_addr_block,io_in_acquire_bits_addr_beat};
  assign T_1459 = {T_1458,T_1457};
  assign T_1463 = T_1459 < 32'h48000000;
  assign T_1466 = 32'h60000000 <= T_1459;
  assign T_1468 = T_1459 < 32'h80000000;
  assign T_1469 = T_1466 & T_1468;
  assign acq_route = {T_1469,T_1463};
  assign T_1471 = acq_route[0];
  assign T_1472 = io_in_acquire_valid & T_1471;
  assign GEN_0 = T_1471 ? io_out_0_acquire_ready : 1'h0;
  assign T_1474 = acq_route[1];
  assign T_1475 = io_in_acquire_valid & T_1474;
  assign GEN_1 = T_1474 ? io_out_1_acquire_ready : GEN_0;
  assign gnt_arb_clk = clk;
  assign gnt_arb_reset = reset;
  assign gnt_arb_io_in_0_valid = io_out_0_grant_valid;
  assign gnt_arb_io_in_0_bits_addr_beat = io_out_0_grant_bits_addr_beat;
  assign gnt_arb_io_in_0_bits_client_xact_id = io_out_0_grant_bits_client_xact_id;
  assign gnt_arb_io_in_0_bits_manager_xact_id = io_out_0_grant_bits_manager_xact_id;
  assign gnt_arb_io_in_0_bits_is_builtin_type = io_out_0_grant_bits_is_builtin_type;
  assign gnt_arb_io_in_0_bits_g_type = io_out_0_grant_bits_g_type;
  assign gnt_arb_io_in_0_bits_data = io_out_0_grant_bits_data;
  assign gnt_arb_io_in_1_valid = io_out_1_grant_valid;
  assign gnt_arb_io_in_1_bits_addr_beat = io_out_1_grant_bits_addr_beat;
  assign gnt_arb_io_in_1_bits_client_xact_id = io_out_1_grant_bits_client_xact_id;
  assign gnt_arb_io_in_1_bits_manager_xact_id = io_out_1_grant_bits_manager_xact_id;
  assign gnt_arb_io_in_1_bits_is_builtin_type = io_out_1_grant_bits_is_builtin_type;
  assign gnt_arb_io_in_1_bits_g_type = io_out_1_grant_bits_g_type;
  assign gnt_arb_io_in_1_bits_data = io_out_1_grant_bits_data;
  assign gnt_arb_io_out_ready = io_in_grant_ready;
  assign T_1500 = io_in_acquire_valid == 1'h0;
  assign T_1502 = acq_route != 2'h0;
  assign T_1503 = T_1500 | T_1502;
  assign T_1504 = T_1503 | reset;
  assign T_1506 = T_1504 == 1'h0;
  always @(posedge clk) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1506) begin
          $fwrite(32'h80000002,"Assertion failed: No valid route\n    at Interconnect.scala:219 assert(!io.in.acquire.valid || acq_route.orR, ---No valid route---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1506) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
