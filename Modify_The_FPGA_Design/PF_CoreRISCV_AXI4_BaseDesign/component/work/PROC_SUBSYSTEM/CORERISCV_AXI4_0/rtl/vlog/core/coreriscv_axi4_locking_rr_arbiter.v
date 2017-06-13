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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [25:0] io_in_0_bits_payload_addr_block,
  input   io_in_0_bits_payload_client_xact_id,
  input  [2:0] io_in_0_bits_payload_addr_beat,
  input   io_in_0_bits_payload_is_builtin_type,
  input  [2:0] io_in_0_bits_payload_a_type,
  input  [11:0] io_in_0_bits_payload_union,
  input  [63:0] io_in_0_bits_payload_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [25:0] io_in_1_bits_payload_addr_block,
  input   io_in_1_bits_payload_client_xact_id,
  input  [2:0] io_in_1_bits_payload_addr_beat,
  input   io_in_1_bits_payload_is_builtin_type,
  input  [2:0] io_in_1_bits_payload_a_type,
  input  [11:0] io_in_1_bits_payload_union,
  input  [63:0] io_in_1_bits_payload_data,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [25:0] io_in_2_bits_payload_addr_block,
  input   io_in_2_bits_payload_client_xact_id,
  input  [2:0] io_in_2_bits_payload_addr_beat,
  input   io_in_2_bits_payload_is_builtin_type,
  input  [2:0] io_in_2_bits_payload_a_type,
  input  [11:0] io_in_2_bits_payload_union,
  input  [63:0] io_in_2_bits_payload_data,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [25:0] io_in_3_bits_payload_addr_block,
  input   io_in_3_bits_payload_client_xact_id,
  input  [2:0] io_in_3_bits_payload_addr_beat,
  input   io_in_3_bits_payload_is_builtin_type,
  input  [2:0] io_in_3_bits_payload_a_type,
  input  [11:0] io_in_3_bits_payload_union,
  input  [63:0] io_in_3_bits_payload_data,
  input   io_out_ready,
  output  io_out_valid,
  output [1:0] io_out_bits_header_src,
  output [1:0] io_out_bits_header_dst,
  output [25:0] io_out_bits_payload_addr_block,
  output  io_out_bits_payload_client_xact_id,
  output [2:0] io_out_bits_payload_addr_beat,
  output  io_out_bits_payload_is_builtin_type,
  output [2:0] io_out_bits_payload_a_type,
  output [11:0] io_out_bits_payload_union,
  output [63:0] io_out_bits_payload_data,
  output [1:0] io_chosen
);
  wire [1:0] choice;
  wire  GEN_0;
  wire  GEN_10;
  wire  GEN_11;
  wire  GEN_12;
  wire [1:0] GEN_1;
  wire [1:0] GEN_13;
  wire [1:0] GEN_14;
  wire [1:0] GEN_15;
  wire [1:0] GEN_2;
  wire [1:0] GEN_16;
  wire [1:0] GEN_17;
  wire [1:0] GEN_18;
  wire [25:0] GEN_3;
  wire [25:0] GEN_19;
  wire [25:0] GEN_20;
  wire [25:0] GEN_21;
  wire  GEN_4;
  wire  GEN_22;
  wire  GEN_23;
  wire  GEN_24;
  wire [2:0] GEN_5;
  wire [2:0] GEN_25;
  wire [2:0] GEN_26;
  wire [2:0] GEN_27;
  wire  GEN_6;
  wire  GEN_28;
  wire  GEN_29;
  wire  GEN_30;
  wire [2:0] GEN_7;
  wire [2:0] GEN_31;
  wire [2:0] GEN_32;
  wire [2:0] GEN_33;
  wire [11:0] GEN_8;
  wire [11:0] GEN_34;
  wire [11:0] GEN_35;
  wire [11:0] GEN_36;
  wire [63:0] GEN_9;
  wire [63:0] GEN_37;
  wire [63:0] GEN_38;
  wire [63:0] GEN_39;
  reg [2:0] T_1134;
  reg [31:0] GEN_50;
  reg [1:0] T_1136;
  reg [31:0] GEN_51;
  wire  T_1138;
  wire [2:0] T_1147_0;
  wire  T_1149;
  wire  T_1150;
  wire  T_1151;
  wire  T_1152;
  wire [3:0] T_1156;
  wire [2:0] T_1157;
  wire [1:0] GEN_40;
  wire [2:0] GEN_41;
  wire [1:0] GEN_42;
  reg [1:0] lastGrant;
  reg [31:0] GEN_52;
  wire [1:0] GEN_43;
  wire  T_1162;
  wire  T_1164;
  wire  T_1166;
  wire  T_1168;
  wire  T_1169;
  wire  T_1170;
  wire  T_1173;
  wire  T_1174;
  wire  T_1175;
  wire  T_1176;
  wire  T_1177;
  wire  T_1181;
  wire  T_1183;
  wire  T_1185;
  wire  T_1187;
  wire  T_1189;
  wire  T_1191;
  wire  T_1195;
  wire  T_1196;
  wire  T_1197;
  wire  T_1198;
  wire  T_1199;
  wire  T_1201;
  wire  T_1202;
  wire  T_1203;
  wire  T_1205;
  wire  T_1206;
  wire  T_1207;
  wire  T_1209;
  wire  T_1210;
  wire  T_1211;
  wire  T_1213;
  wire  T_1214;
  wire  T_1215;
  wire [1:0] GEN_44;
  wire [1:0] GEN_45;
  wire [1:0] GEN_46;
  wire [1:0] GEN_47;
  wire [1:0] GEN_48;
  wire [1:0] GEN_49;
  assign io_in_0_ready = T_1203;
  assign io_in_1_ready = T_1207;
  assign io_in_2_ready = T_1211;
  assign io_in_3_ready = T_1215;
  assign io_out_valid = GEN_0;
  assign io_out_bits_header_src = GEN_1;
  assign io_out_bits_header_dst = GEN_2;
  assign io_out_bits_payload_addr_block = GEN_3;
  assign io_out_bits_payload_client_xact_id = GEN_4;
  assign io_out_bits_payload_addr_beat = GEN_5;
  assign io_out_bits_payload_is_builtin_type = GEN_6;
  assign io_out_bits_payload_a_type = GEN_7;
  assign io_out_bits_payload_union = GEN_8;
  assign io_out_bits_payload_data = GEN_9;
  assign io_chosen = GEN_42;
  assign choice = GEN_49;
  assign GEN_0 = GEN_12;
  assign GEN_10 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_11 = 2'h2 == io_chosen ? io_in_2_valid : GEN_10;
  assign GEN_12 = 2'h3 == io_chosen ? io_in_3_valid : GEN_11;
  assign GEN_1 = GEN_15;
  assign GEN_13 = 2'h1 == io_chosen ? io_in_1_bits_header_src : io_in_0_bits_header_src;
  assign GEN_14 = 2'h2 == io_chosen ? io_in_2_bits_header_src : GEN_13;
  assign GEN_15 = 2'h3 == io_chosen ? io_in_3_bits_header_src : GEN_14;
  assign GEN_2 = GEN_18;
  assign GEN_16 = 2'h1 == io_chosen ? io_in_1_bits_header_dst : io_in_0_bits_header_dst;
  assign GEN_17 = 2'h2 == io_chosen ? io_in_2_bits_header_dst : GEN_16;
  assign GEN_18 = 2'h3 == io_chosen ? io_in_3_bits_header_dst : GEN_17;
  assign GEN_3 = GEN_21;
  assign GEN_19 = 2'h1 == io_chosen ? io_in_1_bits_payload_addr_block : io_in_0_bits_payload_addr_block;
  assign GEN_20 = 2'h2 == io_chosen ? io_in_2_bits_payload_addr_block : GEN_19;
  assign GEN_21 = 2'h3 == io_chosen ? io_in_3_bits_payload_addr_block : GEN_20;
  assign GEN_4 = GEN_24;
  assign GEN_22 = 2'h1 == io_chosen ? io_in_1_bits_payload_client_xact_id : io_in_0_bits_payload_client_xact_id;
  assign GEN_23 = 2'h2 == io_chosen ? io_in_2_bits_payload_client_xact_id : GEN_22;
  assign GEN_24 = 2'h3 == io_chosen ? io_in_3_bits_payload_client_xact_id : GEN_23;
  assign GEN_5 = GEN_27;
  assign GEN_25 = 2'h1 == io_chosen ? io_in_1_bits_payload_addr_beat : io_in_0_bits_payload_addr_beat;
  assign GEN_26 = 2'h2 == io_chosen ? io_in_2_bits_payload_addr_beat : GEN_25;
  assign GEN_27 = 2'h3 == io_chosen ? io_in_3_bits_payload_addr_beat : GEN_26;
  assign GEN_6 = GEN_30;
  assign GEN_28 = 2'h1 == io_chosen ? io_in_1_bits_payload_is_builtin_type : io_in_0_bits_payload_is_builtin_type;
  assign GEN_29 = 2'h2 == io_chosen ? io_in_2_bits_payload_is_builtin_type : GEN_28;
  assign GEN_30 = 2'h3 == io_chosen ? io_in_3_bits_payload_is_builtin_type : GEN_29;
  assign GEN_7 = GEN_33;
  assign GEN_31 = 2'h1 == io_chosen ? io_in_1_bits_payload_a_type : io_in_0_bits_payload_a_type;
  assign GEN_32 = 2'h2 == io_chosen ? io_in_2_bits_payload_a_type : GEN_31;
  assign GEN_33 = 2'h3 == io_chosen ? io_in_3_bits_payload_a_type : GEN_32;
  assign GEN_8 = GEN_36;
  assign GEN_34 = 2'h1 == io_chosen ? io_in_1_bits_payload_union : io_in_0_bits_payload_union;
  assign GEN_35 = 2'h2 == io_chosen ? io_in_2_bits_payload_union : GEN_34;
  assign GEN_36 = 2'h3 == io_chosen ? io_in_3_bits_payload_union : GEN_35;
  assign GEN_9 = GEN_39;
  assign GEN_37 = 2'h1 == io_chosen ? io_in_1_bits_payload_data : io_in_0_bits_payload_data;
  assign GEN_38 = 2'h2 == io_chosen ? io_in_2_bits_payload_data : GEN_37;
  assign GEN_39 = 2'h3 == io_chosen ? io_in_3_bits_payload_data : GEN_38;
  assign T_1138 = T_1134 != 3'h0;
  assign T_1147_0 = 3'h3;
  assign T_1149 = io_out_bits_payload_a_type == T_1147_0;
  assign T_1150 = io_out_bits_payload_is_builtin_type & T_1149;
  assign T_1151 = io_out_ready & io_out_valid;
  assign T_1152 = T_1151 & T_1150;
  assign T_1156 = T_1134 + 3'h1;
  assign T_1157 = T_1156[2:0];
  assign GEN_40 = T_1152 ? io_chosen : T_1136;
  assign GEN_41 = T_1152 ? T_1157 : T_1134;
  assign GEN_42 = T_1138 ? T_1136 : choice;
  assign GEN_43 = T_1151 ? io_chosen : lastGrant;
  assign T_1162 = 2'h1 > lastGrant;
  assign T_1164 = 2'h2 > lastGrant;
  assign T_1166 = 2'h3 > lastGrant;
  assign T_1168 = io_in_1_valid & T_1162;
  assign T_1169 = io_in_2_valid & T_1164;
  assign T_1170 = io_in_3_valid & T_1166;
  assign T_1173 = T_1168 | T_1169;
  assign T_1174 = T_1173 | T_1170;
  assign T_1175 = T_1174 | io_in_0_valid;
  assign T_1176 = T_1175 | io_in_1_valid;
  assign T_1177 = T_1176 | io_in_2_valid;
  assign T_1181 = T_1168 == 1'h0;
  assign T_1183 = T_1173 == 1'h0;
  assign T_1185 = T_1174 == 1'h0;
  assign T_1187 = T_1175 == 1'h0;
  assign T_1189 = T_1176 == 1'h0;
  assign T_1191 = T_1177 == 1'h0;
  assign T_1195 = T_1162 | T_1187;
  assign T_1196 = T_1181 & T_1164;
  assign T_1197 = T_1196 | T_1189;
  assign T_1198 = T_1183 & T_1166;
  assign T_1199 = T_1198 | T_1191;
  assign T_1201 = T_1136 == 2'h0;
  assign T_1202 = T_1138 ? T_1201 : T_1185;
  assign T_1203 = T_1202 & io_out_ready;
  assign T_1205 = T_1136 == 2'h1;
  assign T_1206 = T_1138 ? T_1205 : T_1195;
  assign T_1207 = T_1206 & io_out_ready;
  assign T_1209 = T_1136 == 2'h2;
  assign T_1210 = T_1138 ? T_1209 : T_1197;
  assign T_1211 = T_1210 & io_out_ready;
  assign T_1213 = T_1136 == 2'h3;
  assign T_1214 = T_1138 ? T_1213 : T_1199;
  assign T_1215 = T_1214 & io_out_ready;
  assign GEN_44 = io_in_2_valid ? 2'h2 : 2'h3;
  assign GEN_45 = io_in_1_valid ? 2'h1 : GEN_44;
  assign GEN_46 = io_in_0_valid ? 2'h0 : GEN_45;
  assign GEN_47 = T_1170 ? 2'h3 : GEN_46;
  assign GEN_48 = T_1169 ? 2'h2 : GEN_47;
  assign GEN_49 = T_1168 ? 2'h1 : GEN_48;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_50 = {1{$random}};
  T_1134 = GEN_50[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_51 = {1{$random}};
  T_1136 = GEN_51[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_52 = {1{$random}};
  lastGrant = GEN_52[1:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_1134 <= 3'h0;
    end else begin
      if(T_1152) begin
        T_1134 <= T_1157;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1152) begin
        T_1136 <= io_chosen;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1151) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
