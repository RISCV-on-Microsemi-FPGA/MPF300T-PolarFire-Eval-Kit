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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_MMIO_TILE_LINK_MANAGER(
  input   clk,
  input   reset,
  output  io_inner_acquire_ready,
  input   io_inner_acquire_valid,
  input  [25:0] io_inner_acquire_bits_addr_block,
  input   io_inner_acquire_bits_client_xact_id,
  input  [2:0] io_inner_acquire_bits_addr_beat,
  input   io_inner_acquire_bits_is_builtin_type,
  input  [2:0] io_inner_acquire_bits_a_type,
  input  [11:0] io_inner_acquire_bits_union,
  input  [63:0] io_inner_acquire_bits_data,
  input   io_inner_acquire_bits_client_id,
  input   io_inner_grant_ready,
  output  io_inner_grant_valid,
  output [2:0] io_inner_grant_bits_addr_beat,
  output  io_inner_grant_bits_client_xact_id,
  output [1:0] io_inner_grant_bits_manager_xact_id,
  output  io_inner_grant_bits_is_builtin_type,
  output [3:0] io_inner_grant_bits_g_type,
  output [63:0] io_inner_grant_bits_data,
  output  io_inner_grant_bits_client_id,
  output  io_inner_finish_ready,
  input   io_inner_finish_valid,
  input  [1:0] io_inner_finish_bits_manager_xact_id,
  input   io_inner_probe_ready,
  output  io_inner_probe_valid,
  output [25:0] io_inner_probe_bits_addr_block,
  output [1:0] io_inner_probe_bits_p_type,
  output  io_inner_probe_bits_client_id,
  output  io_inner_release_ready,
  input   io_inner_release_valid,
  input  [2:0] io_inner_release_bits_addr_beat,
  input  [25:0] io_inner_release_bits_addr_block,
  input   io_inner_release_bits_client_xact_id,
  input   io_inner_release_bits_voluntary,
  input  [2:0] io_inner_release_bits_r_type,
  input  [63:0] io_inner_release_bits_data,
  input   io_inner_release_bits_client_id,
  input   io_incoherent_0,
  input   io_outer_acquire_ready,
  output  io_outer_acquire_valid,
  output [25:0] io_outer_acquire_bits_addr_block,
  output [1:0] io_outer_acquire_bits_client_xact_id,
  output [2:0] io_outer_acquire_bits_addr_beat,
  output  io_outer_acquire_bits_is_builtin_type,
  output [2:0] io_outer_acquire_bits_a_type,
  output [11:0] io_outer_acquire_bits_union,
  output [63:0] io_outer_acquire_bits_data,
  output  io_outer_grant_ready,
  input   io_outer_grant_valid,
  input  [2:0] io_outer_grant_bits_addr_beat,
  input  [1:0] io_outer_grant_bits_client_xact_id,
  input   io_outer_grant_bits_manager_xact_id,
  input   io_outer_grant_bits_is_builtin_type,
  input  [3:0] io_outer_grant_bits_g_type,
  input  [63:0] io_outer_grant_bits_data
);
  wire  T_880;
  wire [2:0] T_889_0;
  wire  T_891;
  wire  T_892;
  wire  multibeat_fire;
  wire  T_894;
  wire  multibeat_start;
  wire  T_896;
  wire  multibeat_end;
  reg [3:0] xact_pending;
  reg [31:0] GEN_33;
  wire [3:0] T_898;
  wire  T_899;
  wire  T_900;
  wire  T_901;
  wire [1:0] T_907;
  wire [1:0] T_908;
  wire [1:0] xact_id_sel;
  reg [1:0] xact_id_reg;
  reg [31:0] GEN_34;
  wire [1:0] GEN_4;
  reg  xact_multibeat;
  reg [31:0] GEN_35;
  wire [1:0] outer_xact_id;
  wire  T_912;
  wire  xact_free;
  reg  xact_buffer_0_client_id;
  reg [31:0] GEN_36;
  reg  xact_buffer_0_client_xact_id;
  reg [31:0] GEN_37;
  reg  xact_buffer_1_client_id;
  reg [31:0] GEN_38;
  reg  xact_buffer_1_client_xact_id;
  reg [31:0] GEN_39;
  reg  xact_buffer_2_client_id;
  reg [31:0] GEN_40;
  reg  xact_buffer_2_client_xact_id;
  reg [31:0] GEN_41;
  reg  xact_buffer_3_client_id;
  reg [31:0] GEN_42;
  reg  xact_buffer_3_client_xact_id;
  reg [31:0] GEN_43;
  wire  T_1229;
  wire  T_1230;
  wire [2:0] T_1240_0;
  wire  T_1242;
  wire  T_1243;
  wire  T_1245;
  wire  T_1248;
  wire  T_1249;
  wire [3:0] T_1251;
  wire [3:0] T_1253;
  wire [3:0] T_1254;
  wire  T_1255;
  wire [3:0] T_1257;
  wire [3:0] T_1259;
  wire [3:0] T_1260;
  wire [3:0] T_1261;
  wire  T_1262;
  wire [2:0] T_1270_0;
  wire [3:0] GEN_31;
  wire  T_1272;
  wire  T_1273;
  wire  T_1274;
  wire  T_1277;
  wire  T_1279;
  wire  T_1280;
  wire  T_1281;
  wire  T_1287;
  wire  T_1289;
  wire  T_1292;
  wire  T_1293;
  wire [3:0] T_1295;
  wire [3:0] T_1297;
  wire [3:0] T_1298;
  wire [3:0] T_1299;
  wire [2:0] T_1309_0;
  wire  T_1311;
  wire  T_1312;
  wire  T_1314;
  wire  T_1317;
  wire  T_1318;
  wire  GEN_0;
  wire  GEN_5;
  wire  GEN_6;
  wire  GEN_7;
  wire  GEN_8;
  wire  GEN_1;
  wire  GEN_9;
  wire  GEN_10;
  wire  GEN_11;
  wire  GEN_12;
  wire  GEN_14;
  wire  GEN_15;
  wire  GEN_16;
  wire  GEN_17;
  wire  GEN_19;
  wire  GEN_20;
  wire  GEN_21;
  wire  GEN_22;
  wire  GEN_23;
  wire  GEN_24;
  wire  GEN_2;
  wire  GEN_25;
  wire  GEN_26;
  wire  GEN_27;
  wire  GEN_3;
  wire  GEN_28;
  wire  GEN_29;
  wire  GEN_30;
  reg [25:0] GEN_13;
  reg [31:0] GEN_44;
  reg [1:0] GEN_18;
  reg [31:0] GEN_45;
  reg  GEN_32;
  reg [31:0] GEN_46;
  assign io_inner_acquire_ready = T_1229;
  assign io_inner_grant_valid = io_outer_grant_valid;
  assign io_inner_grant_bits_addr_beat = io_outer_grant_bits_addr_beat;
  assign io_inner_grant_bits_client_xact_id = GEN_3;
  assign io_inner_grant_bits_manager_xact_id = io_outer_grant_bits_client_xact_id;
  assign io_inner_grant_bits_is_builtin_type = io_outer_grant_bits_is_builtin_type;
  assign io_inner_grant_bits_g_type = io_outer_grant_bits_g_type;
  assign io_inner_grant_bits_data = io_outer_grant_bits_data;
  assign io_inner_grant_bits_client_id = GEN_2;
  assign io_inner_finish_ready = 1'h1;
  assign io_inner_probe_valid = 1'h0;
  assign io_inner_probe_bits_addr_block = GEN_13;
  assign io_inner_probe_bits_p_type = GEN_18;
  assign io_inner_probe_bits_client_id = GEN_32;
  assign io_inner_release_ready = 1'h0;
  assign io_outer_acquire_valid = T_1230;
  assign io_outer_acquire_bits_addr_block = io_inner_acquire_bits_addr_block;
  assign io_outer_acquire_bits_client_xact_id = outer_xact_id;
  assign io_outer_acquire_bits_addr_beat = io_inner_acquire_bits_addr_beat;
  assign io_outer_acquire_bits_is_builtin_type = io_inner_acquire_bits_is_builtin_type;
  assign io_outer_acquire_bits_a_type = io_inner_acquire_bits_a_type;
  assign io_outer_acquire_bits_union = io_inner_acquire_bits_union;
  assign io_outer_acquire_bits_data = io_inner_acquire_bits_data;
  assign io_outer_grant_ready = io_inner_grant_ready;
  assign T_880 = io_outer_acquire_ready & io_outer_acquire_valid;
  assign T_889_0 = 3'h3;
  assign T_891 = io_outer_acquire_bits_a_type == T_889_0;
  assign T_892 = io_outer_acquire_bits_is_builtin_type & T_891;
  assign multibeat_fire = T_880 & T_892;
  assign T_894 = io_outer_acquire_bits_addr_beat == 3'h0;
  assign multibeat_start = multibeat_fire & T_894;
  assign T_896 = io_outer_acquire_bits_addr_beat == 3'h7;
  assign multibeat_end = multibeat_fire & T_896;
  assign T_898 = ~ xact_pending;
  assign T_899 = T_898[0];
  assign T_900 = T_898[1];
  assign T_901 = T_898[2];
  assign T_907 = T_901 ? 2'h2 : 2'h3;
  assign T_908 = T_900 ? 2'h1 : T_907;
  assign xact_id_sel = T_899 ? 2'h0 : T_908;
  assign GEN_4 = multibeat_start ? xact_id_sel : xact_id_reg;
  assign outer_xact_id = xact_multibeat ? xact_id_reg : xact_id_sel;
  assign T_912 = T_898 == 4'h0;
  assign xact_free = T_912 == 1'h0;
  assign T_1229 = io_outer_acquire_ready & xact_free;
  assign T_1230 = io_inner_acquire_valid & xact_free;
  assign T_1240_0 = 3'h3;
  assign T_1242 = io_outer_acquire_bits_a_type == T_1240_0;
  assign T_1243 = io_outer_acquire_bits_is_builtin_type & T_1242;
  assign T_1245 = T_1243 == 1'h0;
  assign T_1248 = T_1245 | T_896;
  assign T_1249 = T_880 & T_1248;
  assign T_1251 = 4'h1 << io_outer_acquire_bits_client_xact_id;
  assign T_1253 = T_1249 ? T_1251 : 4'h0;
  assign T_1254 = xact_pending | T_1253;
  assign T_1255 = io_inner_finish_ready & io_inner_finish_valid;
  assign T_1257 = 4'h1 << io_inner_finish_bits_manager_xact_id;
  assign T_1259 = T_1255 ? T_1257 : 4'h0;
  assign T_1260 = ~ T_1259;
  assign T_1261 = T_1254 & T_1260;
  assign T_1262 = io_inner_grant_ready & io_inner_grant_valid;
  assign T_1270_0 = 3'h5;
  assign GEN_31 = {{1'd0}, T_1270_0};
  assign T_1272 = io_inner_grant_bits_g_type == GEN_31;
  assign T_1273 = io_inner_grant_bits_g_type == 4'h0;
  assign T_1274 = io_inner_grant_bits_is_builtin_type ? T_1272 : T_1273;
  assign T_1277 = T_1274 == 1'h0;
  assign T_1279 = io_inner_grant_bits_addr_beat == 3'h7;
  assign T_1280 = T_1277 | T_1279;
  assign T_1281 = T_1262 & T_1280;
  assign T_1287 = io_inner_grant_bits_is_builtin_type & T_1273;
  assign T_1289 = T_1287 == 1'h0;
  assign T_1292 = T_1289 == 1'h0;
  assign T_1293 = T_1281 & T_1292;
  assign T_1295 = 4'h1 << io_inner_grant_bits_manager_xact_id;
  assign T_1297 = T_1293 ? T_1295 : 4'h0;
  assign T_1298 = ~ T_1297;
  assign T_1299 = T_1261 & T_1298;
  assign T_1309_0 = 3'h3;
  assign T_1311 = io_outer_acquire_bits_a_type == T_1309_0;
  assign T_1312 = io_outer_acquire_bits_is_builtin_type & T_1311;
  assign T_1314 = T_1312 == 1'h0;
  assign T_1317 = T_1314 | T_896;
  assign T_1318 = T_880 & T_1317;
  assign GEN_0 = io_inner_acquire_bits_client_id;
  assign GEN_5 = 2'h0 == outer_xact_id ? GEN_0 : xact_buffer_0_client_id;
  assign GEN_6 = 2'h1 == outer_xact_id ? GEN_0 : xact_buffer_1_client_id;
  assign GEN_7 = 2'h2 == outer_xact_id ? GEN_0 : xact_buffer_2_client_id;
  assign GEN_8 = 2'h3 == outer_xact_id ? GEN_0 : xact_buffer_3_client_id;
  assign GEN_1 = io_inner_acquire_bits_client_xact_id;
  assign GEN_9 = 2'h0 == outer_xact_id ? GEN_1 : xact_buffer_0_client_xact_id;
  assign GEN_10 = 2'h1 == outer_xact_id ? GEN_1 : xact_buffer_1_client_xact_id;
  assign GEN_11 = 2'h2 == outer_xact_id ? GEN_1 : xact_buffer_2_client_xact_id;
  assign GEN_12 = 2'h3 == outer_xact_id ? GEN_1 : xact_buffer_3_client_xact_id;
  assign GEN_14 = T_1318 ? GEN_5 : xact_buffer_0_client_id;
  assign GEN_15 = T_1318 ? GEN_6 : xact_buffer_1_client_id;
  assign GEN_16 = T_1318 ? GEN_7 : xact_buffer_2_client_id;
  assign GEN_17 = T_1318 ? GEN_8 : xact_buffer_3_client_id;
  assign GEN_19 = T_1318 ? GEN_9 : xact_buffer_0_client_xact_id;
  assign GEN_20 = T_1318 ? GEN_10 : xact_buffer_1_client_xact_id;
  assign GEN_21 = T_1318 ? GEN_11 : xact_buffer_2_client_xact_id;
  assign GEN_22 = T_1318 ? GEN_12 : xact_buffer_3_client_xact_id;
  assign GEN_23 = multibeat_start ? 1'h1 : xact_multibeat;
  assign GEN_24 = multibeat_end ? 1'h0 : GEN_23;
  assign GEN_2 = GEN_27;
  assign GEN_25 = 2'h1 == io_outer_grant_bits_client_xact_id ? xact_buffer_1_client_id : xact_buffer_0_client_id;
  assign GEN_26 = 2'h2 == io_outer_grant_bits_client_xact_id ? xact_buffer_2_client_id : GEN_25;
  assign GEN_27 = 2'h3 == io_outer_grant_bits_client_xact_id ? xact_buffer_3_client_id : GEN_26;
  assign GEN_3 = GEN_30;
  assign GEN_28 = 2'h1 == io_outer_grant_bits_client_xact_id ? xact_buffer_1_client_xact_id : xact_buffer_0_client_xact_id;
  assign GEN_29 = 2'h2 == io_outer_grant_bits_client_xact_id ? xact_buffer_2_client_xact_id : GEN_28;
  assign GEN_30 = 2'h3 == io_outer_grant_bits_client_xact_id ? xact_buffer_3_client_xact_id : GEN_29;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_33 = {1{$random}};
  xact_pending = GEN_33[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_34 = {1{$random}};
  xact_id_reg = GEN_34[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_35 = {1{$random}};
  xact_multibeat = GEN_35[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_36 = {1{$random}};
  xact_buffer_0_client_id = GEN_36[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_37 = {1{$random}};
  xact_buffer_0_client_xact_id = GEN_37[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_38 = {1{$random}};
  xact_buffer_1_client_id = GEN_38[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_39 = {1{$random}};
  xact_buffer_1_client_xact_id = GEN_39[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_40 = {1{$random}};
  xact_buffer_2_client_id = GEN_40[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_41 = {1{$random}};
  xact_buffer_2_client_xact_id = GEN_41[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_42 = {1{$random}};
  xact_buffer_3_client_id = GEN_42[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_43 = {1{$random}};
  xact_buffer_3_client_xact_id = GEN_43[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_44 = {1{$random}};
  GEN_13 = GEN_44[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_45 = {1{$random}};
  GEN_18 = GEN_45[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_46 = {1{$random}};
  GEN_32 = GEN_46[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      xact_pending <= 4'h0;
    end else begin
      xact_pending <= T_1299;
    end
    if(1'h0) begin
    end else begin
      if(multibeat_start) begin
        if(T_899) begin
          xact_id_reg <= 2'h0;
        end else begin
          if(T_900) begin
            xact_id_reg <= 2'h1;
          end else begin
            if(T_901) begin
              xact_id_reg <= 2'h2;
            end else begin
              xact_id_reg <= 2'h3;
            end
          end
        end
      end
    end
    if(reset) begin
      xact_multibeat <= 1'h0;
    end else begin
      if(multibeat_end) begin
        xact_multibeat <= 1'h0;
      end else begin
        if(multibeat_start) begin
          xact_multibeat <= 1'h1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h0 == outer_xact_id) begin
          xact_buffer_0_client_id <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h0 == outer_xact_id) begin
          xact_buffer_0_client_xact_id <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h1 == outer_xact_id) begin
          xact_buffer_1_client_id <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h1 == outer_xact_id) begin
          xact_buffer_1_client_xact_id <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h2 == outer_xact_id) begin
          xact_buffer_2_client_id <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h2 == outer_xact_id) begin
          xact_buffer_2_client_xact_id <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h3 == outer_xact_id) begin
          xact_buffer_3_client_id <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1318) begin
        if(2'h3 == outer_xact_id) begin
          xact_buffer_3_client_xact_id <= GEN_1;
        end
      end
    end
  end
endmodule
