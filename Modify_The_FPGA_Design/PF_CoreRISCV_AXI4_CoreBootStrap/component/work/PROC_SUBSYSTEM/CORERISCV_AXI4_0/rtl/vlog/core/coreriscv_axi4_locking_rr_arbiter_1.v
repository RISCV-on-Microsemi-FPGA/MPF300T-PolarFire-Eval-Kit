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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_1(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [2:0] io_in_0_bits_payload_addr_beat,
  input  [25:0] io_in_0_bits_payload_addr_block,
  input   io_in_0_bits_payload_client_xact_id,
  input   io_in_0_bits_payload_voluntary,
  input  [2:0] io_in_0_bits_payload_r_type,
  input  [63:0] io_in_0_bits_payload_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [2:0] io_in_1_bits_payload_addr_beat,
  input  [25:0] io_in_1_bits_payload_addr_block,
  input   io_in_1_bits_payload_client_xact_id,
  input   io_in_1_bits_payload_voluntary,
  input  [2:0] io_in_1_bits_payload_r_type,
  input  [63:0] io_in_1_bits_payload_data,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [2:0] io_in_2_bits_payload_addr_beat,
  input  [25:0] io_in_2_bits_payload_addr_block,
  input   io_in_2_bits_payload_client_xact_id,
  input   io_in_2_bits_payload_voluntary,
  input  [2:0] io_in_2_bits_payload_r_type,
  input  [63:0] io_in_2_bits_payload_data,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [2:0] io_in_3_bits_payload_addr_beat,
  input  [25:0] io_in_3_bits_payload_addr_block,
  input   io_in_3_bits_payload_client_xact_id,
  input   io_in_3_bits_payload_voluntary,
  input  [2:0] io_in_3_bits_payload_r_type,
  input  [63:0] io_in_3_bits_payload_data,
  input   io_out_ready,
  output  io_out_valid,
  output [1:0] io_out_bits_header_src,
  output [1:0] io_out_bits_header_dst,
  output [2:0] io_out_bits_payload_addr_beat,
  output [25:0] io_out_bits_payload_addr_block,
  output  io_out_bits_payload_client_xact_id,
  output  io_out_bits_payload_voluntary,
  output [2:0] io_out_bits_payload_r_type,
  output [63:0] io_out_bits_payload_data,
  output [1:0] io_chosen
);
  wire [1:0] choice;
  wire  GEN_0;
  wire  GEN_9;
  wire  GEN_10;
  wire  GEN_11;
  wire [1:0] GEN_1;
  wire [1:0] GEN_12;
  wire [1:0] GEN_13;
  wire [1:0] GEN_14;
  wire [1:0] GEN_2;
  wire [1:0] GEN_15;
  wire [1:0] GEN_16;
  wire [1:0] GEN_17;
  wire [2:0] GEN_3;
  wire [2:0] GEN_18;
  wire [2:0] GEN_19;
  wire [2:0] GEN_20;
  wire [25:0] GEN_4;
  wire [25:0] GEN_21;
  wire [25:0] GEN_22;
  wire [25:0] GEN_23;
  wire  GEN_5;
  wire  GEN_24;
  wire  GEN_25;
  wire  GEN_26;
  wire  GEN_6;
  wire  GEN_27;
  wire  GEN_28;
  wire  GEN_29;
  wire [2:0] GEN_7;
  wire [2:0] GEN_30;
  wire [2:0] GEN_31;
  wire [2:0] GEN_32;
  wire [63:0] GEN_8;
  wire [63:0] GEN_33;
  wire [63:0] GEN_34;
  wire [63:0] GEN_35;
  reg [2:0] T_1100;
  reg [31:0] GEN_46;
  reg [1:0] T_1102;
  reg [31:0] GEN_47;
  wire  T_1104;
  wire  T_1106;
  wire  T_1107;
  wire  T_1108;
  wire  T_1109;
  wire  T_1110;
  wire  T_1112;
  wire  T_1113;
  wire [3:0] T_1117;
  wire [2:0] T_1118;
  wire [1:0] GEN_36;
  wire [2:0] GEN_37;
  wire [1:0] GEN_38;
  reg [1:0] lastGrant;
  reg [31:0] GEN_48;
  wire [1:0] GEN_39;
  wire  T_1123;
  wire  T_1125;
  wire  T_1127;
  wire  T_1129;
  wire  T_1130;
  wire  T_1131;
  wire  T_1134;
  wire  T_1135;
  wire  T_1136;
  wire  T_1137;
  wire  T_1138;
  wire  T_1142;
  wire  T_1144;
  wire  T_1146;
  wire  T_1148;
  wire  T_1150;
  wire  T_1152;
  wire  T_1156;
  wire  T_1157;
  wire  T_1158;
  wire  T_1159;
  wire  T_1160;
  wire  T_1162;
  wire  T_1163;
  wire  T_1164;
  wire  T_1166;
  wire  T_1167;
  wire  T_1168;
  wire  T_1170;
  wire  T_1171;
  wire  T_1172;
  wire  T_1174;
  wire  T_1175;
  wire  T_1176;
  wire [1:0] GEN_40;
  wire [1:0] GEN_41;
  wire [1:0] GEN_42;
  wire [1:0] GEN_43;
  wire [1:0] GEN_44;
  wire [1:0] GEN_45;
  assign io_in_0_ready = T_1164;
  assign io_in_1_ready = T_1168;
  assign io_in_2_ready = T_1172;
  assign io_in_3_ready = T_1176;
  assign io_out_valid = GEN_0;
  assign io_out_bits_header_src = GEN_1;
  assign io_out_bits_header_dst = GEN_2;
  assign io_out_bits_payload_addr_beat = GEN_3;
  assign io_out_bits_payload_addr_block = GEN_4;
  assign io_out_bits_payload_client_xact_id = GEN_5;
  assign io_out_bits_payload_voluntary = GEN_6;
  assign io_out_bits_payload_r_type = GEN_7;
  assign io_out_bits_payload_data = GEN_8;
  assign io_chosen = GEN_38;
  assign choice = GEN_45;
  assign GEN_0 = GEN_11;
  assign GEN_9 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_10 = 2'h2 == io_chosen ? io_in_2_valid : GEN_9;
  assign GEN_11 = 2'h3 == io_chosen ? io_in_3_valid : GEN_10;
  assign GEN_1 = GEN_14;
  assign GEN_12 = 2'h1 == io_chosen ? io_in_1_bits_header_src : io_in_0_bits_header_src;
  assign GEN_13 = 2'h2 == io_chosen ? io_in_2_bits_header_src : GEN_12;
  assign GEN_14 = 2'h3 == io_chosen ? io_in_3_bits_header_src : GEN_13;
  assign GEN_2 = GEN_17;
  assign GEN_15 = 2'h1 == io_chosen ? io_in_1_bits_header_dst : io_in_0_bits_header_dst;
  assign GEN_16 = 2'h2 == io_chosen ? io_in_2_bits_header_dst : GEN_15;
  assign GEN_17 = 2'h3 == io_chosen ? io_in_3_bits_header_dst : GEN_16;
  assign GEN_3 = GEN_20;
  assign GEN_18 = 2'h1 == io_chosen ? io_in_1_bits_payload_addr_beat : io_in_0_bits_payload_addr_beat;
  assign GEN_19 = 2'h2 == io_chosen ? io_in_2_bits_payload_addr_beat : GEN_18;
  assign GEN_20 = 2'h3 == io_chosen ? io_in_3_bits_payload_addr_beat : GEN_19;
  assign GEN_4 = GEN_23;
  assign GEN_21 = 2'h1 == io_chosen ? io_in_1_bits_payload_addr_block : io_in_0_bits_payload_addr_block;
  assign GEN_22 = 2'h2 == io_chosen ? io_in_2_bits_payload_addr_block : GEN_21;
  assign GEN_23 = 2'h3 == io_chosen ? io_in_3_bits_payload_addr_block : GEN_22;
  assign GEN_5 = GEN_26;
  assign GEN_24 = 2'h1 == io_chosen ? io_in_1_bits_payload_client_xact_id : io_in_0_bits_payload_client_xact_id;
  assign GEN_25 = 2'h2 == io_chosen ? io_in_2_bits_payload_client_xact_id : GEN_24;
  assign GEN_26 = 2'h3 == io_chosen ? io_in_3_bits_payload_client_xact_id : GEN_25;
  assign GEN_6 = GEN_29;
  assign GEN_27 = 2'h1 == io_chosen ? io_in_1_bits_payload_voluntary : io_in_0_bits_payload_voluntary;
  assign GEN_28 = 2'h2 == io_chosen ? io_in_2_bits_payload_voluntary : GEN_27;
  assign GEN_29 = 2'h3 == io_chosen ? io_in_3_bits_payload_voluntary : GEN_28;
  assign GEN_7 = GEN_32;
  assign GEN_30 = 2'h1 == io_chosen ? io_in_1_bits_payload_r_type : io_in_0_bits_payload_r_type;
  assign GEN_31 = 2'h2 == io_chosen ? io_in_2_bits_payload_r_type : GEN_30;
  assign GEN_32 = 2'h3 == io_chosen ? io_in_3_bits_payload_r_type : GEN_31;
  assign GEN_8 = GEN_35;
  assign GEN_33 = 2'h1 == io_chosen ? io_in_1_bits_payload_data : io_in_0_bits_payload_data;
  assign GEN_34 = 2'h2 == io_chosen ? io_in_2_bits_payload_data : GEN_33;
  assign GEN_35 = 2'h3 == io_chosen ? io_in_3_bits_payload_data : GEN_34;
  assign T_1104 = T_1100 != 3'h0;
  assign T_1106 = io_out_bits_payload_r_type == 3'h0;
  assign T_1107 = io_out_bits_payload_r_type == 3'h1;
  assign T_1108 = io_out_bits_payload_r_type == 3'h2;
  assign T_1109 = T_1106 | T_1107;
  assign T_1110 = T_1109 | T_1108;
  assign T_1112 = io_out_ready & io_out_valid;
  assign T_1113 = T_1112 & T_1110;
  assign T_1117 = T_1100 + 3'h1;
  assign T_1118 = T_1117[2:0];
  assign GEN_36 = T_1113 ? io_chosen : T_1102;
  assign GEN_37 = T_1113 ? T_1118 : T_1100;
  assign GEN_38 = T_1104 ? T_1102 : choice;
  assign GEN_39 = T_1112 ? io_chosen : lastGrant;
  assign T_1123 = 2'h1 > lastGrant;
  assign T_1125 = 2'h2 > lastGrant;
  assign T_1127 = 2'h3 > lastGrant;
  assign T_1129 = io_in_1_valid & T_1123;
  assign T_1130 = io_in_2_valid & T_1125;
  assign T_1131 = io_in_3_valid & T_1127;
  assign T_1134 = T_1129 | T_1130;
  assign T_1135 = T_1134 | T_1131;
  assign T_1136 = T_1135 | io_in_0_valid;
  assign T_1137 = T_1136 | io_in_1_valid;
  assign T_1138 = T_1137 | io_in_2_valid;
  assign T_1142 = T_1129 == 1'h0;
  assign T_1144 = T_1134 == 1'h0;
  assign T_1146 = T_1135 == 1'h0;
  assign T_1148 = T_1136 == 1'h0;
  assign T_1150 = T_1137 == 1'h0;
  assign T_1152 = T_1138 == 1'h0;
  assign T_1156 = T_1123 | T_1148;
  assign T_1157 = T_1142 & T_1125;
  assign T_1158 = T_1157 | T_1150;
  assign T_1159 = T_1144 & T_1127;
  assign T_1160 = T_1159 | T_1152;
  assign T_1162 = T_1102 == 2'h0;
  assign T_1163 = T_1104 ? T_1162 : T_1146;
  assign T_1164 = T_1163 & io_out_ready;
  assign T_1166 = T_1102 == 2'h1;
  assign T_1167 = T_1104 ? T_1166 : T_1156;
  assign T_1168 = T_1167 & io_out_ready;
  assign T_1170 = T_1102 == 2'h2;
  assign T_1171 = T_1104 ? T_1170 : T_1158;
  assign T_1172 = T_1171 & io_out_ready;
  assign T_1174 = T_1102 == 2'h3;
  assign T_1175 = T_1104 ? T_1174 : T_1160;
  assign T_1176 = T_1175 & io_out_ready;
  assign GEN_40 = io_in_2_valid ? 2'h2 : 2'h3;
  assign GEN_41 = io_in_1_valid ? 2'h1 : GEN_40;
  assign GEN_42 = io_in_0_valid ? 2'h0 : GEN_41;
  assign GEN_43 = T_1131 ? 2'h3 : GEN_42;
  assign GEN_44 = T_1130 ? 2'h2 : GEN_43;
  assign GEN_45 = T_1129 ? 2'h1 : GEN_44;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_46 = {1{$random}};
  T_1100 = GEN_46[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_47 = {1{$random}};
  T_1102 = GEN_47[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_48 = {1{$random}};
  lastGrant = GEN_48[1:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_1100 <= 3'h0;
    end else begin
      if(T_1113) begin
        T_1100 <= T_1118;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1113) begin
        T_1102 <= io_chosen;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1112) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
