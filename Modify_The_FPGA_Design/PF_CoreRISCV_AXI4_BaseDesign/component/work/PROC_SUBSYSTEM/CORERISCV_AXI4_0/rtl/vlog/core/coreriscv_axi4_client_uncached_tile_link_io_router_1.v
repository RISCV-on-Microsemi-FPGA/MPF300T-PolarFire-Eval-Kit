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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CLIENT_UNCACHED_TILE_LINK_IO_ROUTER_1(
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
  input  [63:0] io_out_3_grant_bits_data
);
  wire [2:0] T_1855_0;
  wire [2:0] T_1855_1;
  wire  T_1857;
  wire  T_1858;
  wire  T_1859;
  wire  T_1860;
  wire [2:0] T_1861;
  wire [2:0] T_1863;
  wire [28:0] T_1864;
  wire [31:0] T_1865;
  wire  T_1869;
  wire  T_1872;
  wire  T_1874;
  wire  T_1875;
  wire  T_1877;
  wire  T_1879;
  wire  T_1880;
  wire  T_1882;
  wire  T_1884;
  wire  T_1885;
  wire [1:0] T_1886;
  wire [1:0] T_1887;
  wire [3:0] acq_route;
  wire  T_1889;
  wire  T_1890;
  wire  GEN_0;
  wire  T_1892;
  wire  T_1893;
  wire  GEN_1;
  wire  T_1895;
  wire  T_1896;
  wire  GEN_2;
  wire  T_1898;
  wire  T_1899;
  wire  GEN_3;
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
  wire  gnt_arb_io_in_2_ready;
  wire  gnt_arb_io_in_2_valid;
  wire [2:0] gnt_arb_io_in_2_bits_addr_beat;
  wire [1:0] gnt_arb_io_in_2_bits_client_xact_id;
  wire  gnt_arb_io_in_2_bits_manager_xact_id;
  wire  gnt_arb_io_in_2_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_in_2_bits_g_type;
  wire [63:0] gnt_arb_io_in_2_bits_data;
  wire  gnt_arb_io_in_3_ready;
  wire  gnt_arb_io_in_3_valid;
  wire [2:0] gnt_arb_io_in_3_bits_addr_beat;
  wire [1:0] gnt_arb_io_in_3_bits_client_xact_id;
  wire  gnt_arb_io_in_3_bits_manager_xact_id;
  wire  gnt_arb_io_in_3_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_in_3_bits_g_type;
  wire [63:0] gnt_arb_io_in_3_bits_data;
  wire  gnt_arb_io_out_ready;
  wire  gnt_arb_io_out_valid;
  wire [2:0] gnt_arb_io_out_bits_addr_beat;
  wire [1:0] gnt_arb_io_out_bits_client_xact_id;
  wire  gnt_arb_io_out_bits_manager_xact_id;
  wire  gnt_arb_io_out_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_out_bits_g_type;
  wire [63:0] gnt_arb_io_out_bits_data;
  wire [1:0] gnt_arb_io_chosen;
  wire  T_1924;
  wire  T_1926;
  wire  T_1927;
  wire  T_1928;
  wire  T_1930;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_7 gnt_arb (
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
    .io_in_2_ready(gnt_arb_io_in_2_ready),
    .io_in_2_valid(gnt_arb_io_in_2_valid),
    .io_in_2_bits_addr_beat(gnt_arb_io_in_2_bits_addr_beat),
    .io_in_2_bits_client_xact_id(gnt_arb_io_in_2_bits_client_xact_id),
    .io_in_2_bits_manager_xact_id(gnt_arb_io_in_2_bits_manager_xact_id),
    .io_in_2_bits_is_builtin_type(gnt_arb_io_in_2_bits_is_builtin_type),
    .io_in_2_bits_g_type(gnt_arb_io_in_2_bits_g_type),
    .io_in_2_bits_data(gnt_arb_io_in_2_bits_data),
    .io_in_3_ready(gnt_arb_io_in_3_ready),
    .io_in_3_valid(gnt_arb_io_in_3_valid),
    .io_in_3_bits_addr_beat(gnt_arb_io_in_3_bits_addr_beat),
    .io_in_3_bits_client_xact_id(gnt_arb_io_in_3_bits_client_xact_id),
    .io_in_3_bits_manager_xact_id(gnt_arb_io_in_3_bits_manager_xact_id),
    .io_in_3_bits_is_builtin_type(gnt_arb_io_in_3_bits_is_builtin_type),
    .io_in_3_bits_g_type(gnt_arb_io_in_3_bits_g_type),
    .io_in_3_bits_data(gnt_arb_io_in_3_bits_data),
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
  assign io_in_acquire_ready = GEN_3;
  assign io_in_grant_valid = gnt_arb_io_out_valid;
  assign io_in_grant_bits_addr_beat = gnt_arb_io_out_bits_addr_beat;
  assign io_in_grant_bits_client_xact_id = gnt_arb_io_out_bits_client_xact_id;
  assign io_in_grant_bits_manager_xact_id = gnt_arb_io_out_bits_manager_xact_id;
  assign io_in_grant_bits_is_builtin_type = gnt_arb_io_out_bits_is_builtin_type;
  assign io_in_grant_bits_g_type = gnt_arb_io_out_bits_g_type;
  assign io_in_grant_bits_data = gnt_arb_io_out_bits_data;
  assign io_out_0_acquire_valid = T_1890;
  assign io_out_0_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_0_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_0_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_0_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_0_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_0_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_0_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_0_grant_ready = gnt_arb_io_in_0_ready;
  assign io_out_1_acquire_valid = T_1893;
  assign io_out_1_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_1_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_1_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_1_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_1_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_1_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_1_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_1_grant_ready = gnt_arb_io_in_1_ready;
  assign io_out_2_acquire_valid = T_1896;
  assign io_out_2_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_2_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_2_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_2_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_2_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_2_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_2_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_2_grant_ready = gnt_arb_io_in_2_ready;
  assign io_out_3_acquire_valid = T_1899;
  assign io_out_3_acquire_bits_addr_block = io_in_acquire_bits_addr_block;
  assign io_out_3_acquire_bits_client_xact_id = io_in_acquire_bits_client_xact_id;
  assign io_out_3_acquire_bits_addr_beat = io_in_acquire_bits_addr_beat;
  assign io_out_3_acquire_bits_is_builtin_type = io_in_acquire_bits_is_builtin_type;
  assign io_out_3_acquire_bits_a_type = io_in_acquire_bits_a_type;
  assign io_out_3_acquire_bits_union = io_in_acquire_bits_union;
  assign io_out_3_acquire_bits_data = io_in_acquire_bits_data;
  assign io_out_3_grant_ready = gnt_arb_io_in_3_ready;
  assign T_1855_0 = 3'h0;
  assign T_1855_1 = 3'h4;
  assign T_1857 = io_in_acquire_bits_a_type == T_1855_0;
  assign T_1858 = io_in_acquire_bits_a_type == T_1855_1;
  assign T_1859 = T_1857 | T_1858;
  assign T_1860 = io_in_acquire_bits_is_builtin_type & T_1859;
  assign T_1861 = io_in_acquire_bits_union[11:9];
  assign T_1863 = T_1860 ? T_1861 : 3'h0;
  assign T_1864 = {io_in_acquire_bits_addr_block,io_in_acquire_bits_addr_beat};
  assign T_1865 = {T_1864,T_1863};
  assign T_1869 = T_1865 < 32'h1000;
  assign T_1872 = 32'h1000 <= T_1865;
  assign T_1874 = T_1865 < 32'h2000;
  assign T_1875 = T_1872 & T_1874;
  assign T_1877 = 32'h40000000 <= T_1865;
  assign T_1879 = T_1865 < 32'h44000000;
  assign T_1880 = T_1877 & T_1879;
  assign T_1882 = 32'h44000000 <= T_1865;
  assign T_1884 = T_1865 < 32'h48000000;
  assign T_1885 = T_1882 & T_1884;
  assign T_1886 = {T_1875,T_1869};
  assign T_1887 = {T_1885,T_1880};
  assign acq_route = {T_1887,T_1886};
  assign T_1889 = acq_route[0];
  assign T_1890 = io_in_acquire_valid & T_1889;
  assign GEN_0 = T_1889 ? io_out_0_acquire_ready : 1'h0;
  assign T_1892 = acq_route[1];
  assign T_1893 = io_in_acquire_valid & T_1892;
  assign GEN_1 = T_1892 ? io_out_1_acquire_ready : GEN_0;
  assign T_1895 = acq_route[2];
  assign T_1896 = io_in_acquire_valid & T_1895;
  assign GEN_2 = T_1895 ? io_out_2_acquire_ready : GEN_1;
  assign T_1898 = acq_route[3];
  assign T_1899 = io_in_acquire_valid & T_1898;
  assign GEN_3 = T_1898 ? io_out_3_acquire_ready : GEN_2;
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
  assign gnt_arb_io_in_2_valid = io_out_2_grant_valid;
  assign gnt_arb_io_in_2_bits_addr_beat = io_out_2_grant_bits_addr_beat;
  assign gnt_arb_io_in_2_bits_client_xact_id = io_out_2_grant_bits_client_xact_id;
  assign gnt_arb_io_in_2_bits_manager_xact_id = io_out_2_grant_bits_manager_xact_id;
  assign gnt_arb_io_in_2_bits_is_builtin_type = io_out_2_grant_bits_is_builtin_type;
  assign gnt_arb_io_in_2_bits_g_type = io_out_2_grant_bits_g_type;
  assign gnt_arb_io_in_2_bits_data = io_out_2_grant_bits_data;
  assign gnt_arb_io_in_3_valid = io_out_3_grant_valid;
  assign gnt_arb_io_in_3_bits_addr_beat = io_out_3_grant_bits_addr_beat;
  assign gnt_arb_io_in_3_bits_client_xact_id = io_out_3_grant_bits_client_xact_id;
  assign gnt_arb_io_in_3_bits_manager_xact_id = io_out_3_grant_bits_manager_xact_id;
  assign gnt_arb_io_in_3_bits_is_builtin_type = io_out_3_grant_bits_is_builtin_type;
  assign gnt_arb_io_in_3_bits_g_type = io_out_3_grant_bits_g_type;
  assign gnt_arb_io_in_3_bits_data = io_out_3_grant_bits_data;
  assign gnt_arb_io_out_ready = io_in_grant_ready;
  assign T_1924 = io_in_acquire_valid == 1'h0;
  assign T_1926 = acq_route != 4'h0;
  assign T_1927 = T_1924 | T_1926;
  assign T_1928 = T_1927 | reset;
  assign T_1930 = T_1928 == 1'h0;
  always @(posedge clk) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1930) begin
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
        if (T_1930) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
