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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_NASTI_IO_TILE_LINK_IO_CONVERTER(
  input   clk,
  input   reset,
  output  io_tl_acquire_ready,
  input   io_tl_acquire_valid,
  input  [25:0] io_tl_acquire_bits_addr_block,
  input  [1:0] io_tl_acquire_bits_client_xact_id,
  input  [2:0] io_tl_acquire_bits_addr_beat,
  input   io_tl_acquire_bits_is_builtin_type,
  input  [2:0] io_tl_acquire_bits_a_type,
  input  [11:0] io_tl_acquire_bits_union,
  input  [63:0] io_tl_acquire_bits_data,
  input   io_tl_grant_ready,
  output  io_tl_grant_valid,
  output [2:0] io_tl_grant_bits_addr_beat,
  output [1:0] io_tl_grant_bits_client_xact_id,
  output  io_tl_grant_bits_manager_xact_id,
  output  io_tl_grant_bits_is_builtin_type,
  output [3:0] io_tl_grant_bits_g_type,
  output [63:0] io_tl_grant_bits_data,
  input   io_nasti_aw_ready,
  output  io_nasti_aw_valid,
  output [31:0] io_nasti_aw_bits_addr,
  output [7:0] io_nasti_aw_bits_len,
  output [2:0] io_nasti_aw_bits_size,
  output [1:0] io_nasti_aw_bits_burst,
  output  io_nasti_aw_bits_lock,
  output [3:0] io_nasti_aw_bits_cache,
  output [2:0] io_nasti_aw_bits_prot,
  output [3:0] io_nasti_aw_bits_qos,
  output [3:0] io_nasti_aw_bits_region,
  output [4:0] io_nasti_aw_bits_id,
  output  io_nasti_aw_bits_user,
  input   io_nasti_w_ready,
  output  io_nasti_w_valid,
  output [63:0] io_nasti_w_bits_data,
  output  io_nasti_w_bits_last,
  output [4:0] io_nasti_w_bits_id,
  output [7:0] io_nasti_w_bits_strb,
  output  io_nasti_w_bits_user,
  output  io_nasti_b_ready,
  input   io_nasti_b_valid,
  input  [1:0] io_nasti_b_bits_resp,
  input  [4:0] io_nasti_b_bits_id,
  input   io_nasti_b_bits_user,
  input   io_nasti_ar_ready,
  output  io_nasti_ar_valid,
  output [31:0] io_nasti_ar_bits_addr,
  output [7:0] io_nasti_ar_bits_len,
  output [2:0] io_nasti_ar_bits_size,
  output [1:0] io_nasti_ar_bits_burst,
  output  io_nasti_ar_bits_lock,
  output [3:0] io_nasti_ar_bits_cache,
  output [2:0] io_nasti_ar_bits_prot,
  output [3:0] io_nasti_ar_bits_qos,
  output [3:0] io_nasti_ar_bits_region,
  output [4:0] io_nasti_ar_bits_id,
  output  io_nasti_ar_bits_user,
  output  io_nasti_r_ready,
  input   io_nasti_r_valid,
  input  [1:0] io_nasti_r_bits_resp,
  input  [63:0] io_nasti_r_bits_data,
  input   io_nasti_r_bits_last,
  input  [4:0] io_nasti_r_bits_id,
  input   io_nasti_r_bits_user
);
  wire [2:0] T_688_0;
  wire [2:0] T_688_1;
  wire [2:0] T_688_2;
  wire  T_690;
  wire  T_691;
  wire  T_692;
  wire  T_693;
  wire  T_694;
  wire  has_data;
  wire [2:0] T_703_0;
  wire [2:0] T_703_1;
  wire [2:0] T_703_2;
  wire  T_705;
  wire  T_706;
  wire  T_707;
  wire  T_708;
  wire  T_709;
  wire  is_subblock;
  wire [2:0] T_718_0;
  wire  T_720;
  wire  is_multibeat;
  wire  T_721;
  wire  T_722;
  reg [2:0] tl_cnt_out;
  reg [31:0] GEN_11;
  wire  T_725;
  wire [3:0] T_727;
  wire [2:0] T_728;
  wire [2:0] GEN_0;
  wire  tl_wrap_out;
  wire  T_730;
  wire  get_valid;
  wire  put_valid;
  wire  roq_clk;
  wire  roq_reset;
  wire  roq_io_enq_ready;
  wire  roq_io_enq_valid;
  wire [2:0] roq_io_enq_bits_data_addr_beat;
  wire  roq_io_enq_bits_data_subblock;
  wire [1:0] roq_io_enq_bits_tag;
  wire  roq_io_deq_valid;
  wire [1:0] roq_io_deq_tag;
  wire [2:0] roq_io_deq_data_addr_beat;
  wire  roq_io_deq_data_subblock;
  wire  roq_io_deq_matches;
  wire  get_id_mapper_clk;
  wire  get_id_mapper_reset;
  wire  get_id_mapper_io_req_valid;
  wire  get_id_mapper_io_req_ready;
  wire [1:0] get_id_mapper_io_req_in_id;
  wire [4:0] get_id_mapper_io_req_out_id;
  wire  get_id_mapper_io_resp_valid;
  wire  get_id_mapper_io_resp_matches;
  wire [4:0] get_id_mapper_io_resp_out_id;
  wire [1:0] get_id_mapper_io_resp_in_id;
  wire  put_id_mapper_clk;
  wire  put_id_mapper_reset;
  wire  put_id_mapper_io_req_valid;
  wire  put_id_mapper_io_req_ready;
  wire [1:0] put_id_mapper_io_req_in_id;
  wire [4:0] put_id_mapper_io_req_out_id;
  wire  put_id_mapper_io_resp_valid;
  wire  put_id_mapper_io_resp_matches;
  wire [4:0] put_id_mapper_io_resp_out_id;
  wire [1:0] put_id_mapper_io_resp_in_id;
  wire  T_755;
  wire  put_id_mask;
  wire  T_757;
  wire  put_id_ready;
  reg  w_inflight;
  reg [31:0] GEN_12;
  reg [4:0] w_id;
  reg [31:0] GEN_13;
  wire  aw_ready;
  wire  T_760;
  wire  T_762;
  wire  T_763;
  reg [2:0] nasti_cnt_out;
  reg [31:0] GEN_14;
  wire  T_766;
  wire [3:0] T_768;
  wire [2:0] T_769;
  wire [2:0] GEN_1;
  wire  nasti_wrap_out;
  wire  T_770;
  wire  T_771;
  wire  T_773;
  wire  T_774;
  wire  T_775;
  wire  T_776;
  wire  T_778;
  wire  T_779;
  wire  T_780;
  wire  T_781;
  wire  T_782;
  wire  T_784;
  wire [2:0] T_792_0;
  wire [2:0] T_792_1;
  wire  T_794;
  wire  T_795;
  wire  T_796;
  wire  T_797;
  wire [2:0] T_798;
  wire [2:0] T_800;
  wire [28:0] T_801;
  wire [31:0] T_802;
  wire [2:0] T_803;
  wire  T_813;
  wire [2:0] T_814;
  wire  T_815;
  wire [2:0] T_816;
  wire  T_817;
  wire [2:0] T_818;
  wire  T_819;
  wire [2:0] T_820;
  wire  T_821;
  wire [2:0] T_822;
  wire  T_823;
  wire [2:0] T_824;
  wire  T_825;
  wire [2:0] T_826;
  wire  T_827;
  wire [2:0] T_828;
  wire [2:0] T_830;
  wire [2:0] T_833;
  wire [31:0] T_853_addr;
  wire [7:0] T_853_len;
  wire [2:0] T_853_size;
  wire [1:0] T_853_burst;
  wire  T_853_lock;
  wire [3:0] T_853_cache;
  wire [2:0] T_853_prot;
  wire [3:0] T_853_qos;
  wire [3:0] T_853_region;
  wire [4:0] T_853_id;
  wire  T_853_user;
  wire  T_872;
  wire  T_873;
  wire  T_875;
  wire [1:0] T_877;
  wire  T_878;
  wire  T_879;
  wire [3:0] T_883;
  wire [3:0] T_887;
  wire [7:0] T_888;
  wire  T_890;
  wire  T_891;
  wire  T_893;
  wire  T_894;
  wire  T_895;
  wire [7:0] T_896;
  wire [7:0] T_898;
  wire [7:0] T_899;
  wire [7:0] T_900;
  wire  T_901;
  wire  T_902;
  wire  T_903;
  wire  T_904;
  wire  T_905;
  wire  T_906;
  wire  T_907;
  wire  T_908;
  wire  T_909;
  wire  T_910;
  wire  T_911;
  wire  T_912;
  wire  T_913;
  wire  T_914;
  wire  T_921;
  wire [1:0] T_922;
  wire [1:0] T_924;
  wire  T_925;
  wire  T_926;
  wire  T_927;
  wire  T_928;
  wire  T_929;
  wire  T_930;
  wire  T_931;
  wire  T_932;
  wire [2:0] T_933;
  wire [1:0] T_935;
  wire  T_936;
  wire  T_937;
  wire  T_938;
  wire  T_939;
  wire  T_940;
  wire  T_941;
  wire  T_942;
  wire  T_943;
  wire  T_944;
  wire  T_945;
  wire  T_946;
  wire  T_947;
  wire  T_948;
  wire  T_949;
  wire  T_950;
  wire  T_951;
  wire  T_952;
  wire  T_953;
  wire [3:0] put_offset;
  wire [1:0] put_size;
  wire  T_956;
  wire  T_957;
  wire  T_958;
  wire  T_959;
  wire [2:0] T_967_0;
  wire [2:0] T_967_1;
  wire  T_969;
  wire  T_970;
  wire  T_971;
  wire  T_972;
  wire [2:0] T_975;
  wire [31:0] T_977;
  wire [3:0] T_979;
  wire [31:0] GEN_7;
  wire [31:0] T_980;
  wire [1:0] T_982;
  wire [2:0] T_985;
  wire [31:0] T_998_addr;
  wire [7:0] T_998_len;
  wire [2:0] T_998_size;
  wire [1:0] T_998_burst;
  wire  T_998_lock;
  wire [3:0] T_998_cache;
  wire [2:0] T_998_prot;
  wire [3:0] T_998_qos;
  wire [3:0] T_998_region;
  wire [4:0] T_998_id;
  wire  T_998_user;
  wire  T_1017;
  wire  T_1050;
  wire  T_1051;
  wire [63:0] T_1058_data;
  wire  T_1058_last;
  wire [4:0] T_1058_id;
  wire [7:0] T_1058_strb;
  wire  T_1058_user;
  wire  T_1065;
  wire  T_1066;
  wire  T_1067;
  wire  T_1068;
  wire  T_1069;
  wire  T_1073;
  wire  T_1074;
  wire  GEN_2;
  wire [4:0] GEN_3;
  wire  GEN_4;
  wire  GEN_5;
  wire  T_1077;
  wire [2:0] T_1085_0;
  wire [3:0] GEN_8;
  wire  T_1087;
  wire  T_1088;
  wire  T_1089;
  wire  T_1091;
  reg [2:0] tl_cnt_in;
  reg [31:0] GEN_15;
  wire [3:0] T_1096;
  wire [2:0] T_1097;
  wire [2:0] GEN_6;
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
  wire  gnt_arb_io_in_0_bits_client_id;
  wire  gnt_arb_io_in_1_ready;
  wire  gnt_arb_io_in_1_valid;
  wire [2:0] gnt_arb_io_in_1_bits_addr_beat;
  wire [1:0] gnt_arb_io_in_1_bits_client_xact_id;
  wire  gnt_arb_io_in_1_bits_manager_xact_id;
  wire  gnt_arb_io_in_1_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_in_1_bits_g_type;
  wire [63:0] gnt_arb_io_in_1_bits_data;
  wire  gnt_arb_io_in_1_bits_client_id;
  wire  gnt_arb_io_out_ready;
  wire  gnt_arb_io_out_valid;
  wire [2:0] gnt_arb_io_out_bits_addr_beat;
  wire [1:0] gnt_arb_io_out_bits_client_xact_id;
  wire  gnt_arb_io_out_bits_manager_xact_id;
  wire  gnt_arb_io_out_bits_is_builtin_type;
  wire [3:0] gnt_arb_io_out_bits_g_type;
  wire [63:0] gnt_arb_io_out_bits_data;
  wire  gnt_arb_io_out_bits_client_id;
  wire  gnt_arb_io_chosen;
  wire [2:0] T_1129;
  wire [2:0] T_1131;
  wire [2:0] T_1159_addr_beat;
  wire [1:0] T_1159_client_xact_id;
  wire  T_1159_manager_xact_id;
  wire  T_1159_is_builtin_type;
  wire [3:0] T_1159_g_type;
  wire [63:0] T_1159_data;
  wire  T_1187;
  wire  T_1188;
  wire  T_1189;
  wire  T_1191;
  wire  T_1193;
  wire  T_1194;
  wire  T_1195;
  wire  T_1197;
  wire [2:0] T_1230_addr_beat;
  wire [1:0] T_1230_client_xact_id;
  wire  T_1230_manager_xact_id;
  wire  T_1230_is_builtin_type;
  wire [3:0] T_1230_g_type;
  wire [63:0] T_1230_data;
  wire  T_1258;
  wire  T_1259;
  wire  T_1260;
  wire  T_1262;
  wire  T_1264;
  wire  T_1266;
  wire  T_1267;
  wire  T_1268;
  wire  T_1270;
  wire  T_1272;
  wire  T_1274;
  wire  T_1275;
  wire  T_1276;
  wire  T_1278;
  reg  GEN_9;
  reg [31:0] GEN_16;
  reg  GEN_10;
  reg [31:0] GEN_17;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE_2 roq (
    .clk(roq_clk),
    .reset(roq_reset),
    .io_enq_ready(roq_io_enq_ready),
    .io_enq_valid(roq_io_enq_valid),
    .io_enq_bits_data_addr_beat(roq_io_enq_bits_data_addr_beat),
    .io_enq_bits_data_subblock(roq_io_enq_bits_data_subblock),
    .io_enq_bits_tag(roq_io_enq_bits_tag),
    .io_deq_valid(roq_io_deq_valid),
    .io_deq_tag(roq_io_deq_tag),
    .io_deq_data_addr_beat(roq_io_deq_data_addr_beat),
    .io_deq_data_subblock(roq_io_deq_data_subblock),
    .io_deq_matches(roq_io_deq_matches)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ID_MAPPER get_id_mapper (
    .clk(get_id_mapper_clk),
    .reset(get_id_mapper_reset),
    .io_req_valid(get_id_mapper_io_req_valid),
    .io_req_ready(get_id_mapper_io_req_ready),
    .io_req_in_id(get_id_mapper_io_req_in_id),
    .io_req_out_id(get_id_mapper_io_req_out_id),
    .io_resp_valid(get_id_mapper_io_resp_valid),
    .io_resp_matches(get_id_mapper_io_resp_matches),
    .io_resp_out_id(get_id_mapper_io_resp_out_id),
    .io_resp_in_id(get_id_mapper_io_resp_in_id)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ID_MAPPER put_id_mapper (
    .clk(put_id_mapper_clk),
    .reset(put_id_mapper_reset),
    .io_req_valid(put_id_mapper_io_req_valid),
    .io_req_ready(put_id_mapper_io_req_ready),
    .io_req_in_id(put_id_mapper_io_req_in_id),
    .io_req_out_id(put_id_mapper_io_req_out_id),
    .io_resp_valid(put_id_mapper_io_resp_valid),
    .io_resp_matches(put_id_mapper_io_resp_matches),
    .io_resp_out_id(put_id_mapper_io_resp_out_id),
    .io_resp_in_id(put_id_mapper_io_resp_in_id)
  );
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_ARBITER gnt_arb (
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
    .io_in_0_bits_client_id(gnt_arb_io_in_0_bits_client_id),
    .io_in_1_ready(gnt_arb_io_in_1_ready),
    .io_in_1_valid(gnt_arb_io_in_1_valid),
    .io_in_1_bits_addr_beat(gnt_arb_io_in_1_bits_addr_beat),
    .io_in_1_bits_client_xact_id(gnt_arb_io_in_1_bits_client_xact_id),
    .io_in_1_bits_manager_xact_id(gnt_arb_io_in_1_bits_manager_xact_id),
    .io_in_1_bits_is_builtin_type(gnt_arb_io_in_1_bits_is_builtin_type),
    .io_in_1_bits_g_type(gnt_arb_io_in_1_bits_g_type),
    .io_in_1_bits_data(gnt_arb_io_in_1_bits_data),
    .io_in_1_bits_client_id(gnt_arb_io_in_1_bits_client_id),
    .io_out_ready(gnt_arb_io_out_ready),
    .io_out_valid(gnt_arb_io_out_valid),
    .io_out_bits_addr_beat(gnt_arb_io_out_bits_addr_beat),
    .io_out_bits_client_xact_id(gnt_arb_io_out_bits_client_xact_id),
    .io_out_bits_manager_xact_id(gnt_arb_io_out_bits_manager_xact_id),
    .io_out_bits_is_builtin_type(gnt_arb_io_out_bits_is_builtin_type),
    .io_out_bits_g_type(gnt_arb_io_out_bits_g_type),
    .io_out_bits_data(gnt_arb_io_out_bits_data),
    .io_out_bits_client_id(gnt_arb_io_out_bits_client_id),
    .io_chosen(gnt_arb_io_chosen)
  );
  assign io_tl_acquire_ready = T_1069;
  assign io_tl_grant_valid = gnt_arb_io_out_valid;
  assign io_tl_grant_bits_addr_beat = gnt_arb_io_out_bits_addr_beat;
  assign io_tl_grant_bits_client_xact_id = gnt_arb_io_out_bits_client_xact_id;
  assign io_tl_grant_bits_manager_xact_id = gnt_arb_io_out_bits_manager_xact_id;
  assign io_tl_grant_bits_is_builtin_type = gnt_arb_io_out_bits_is_builtin_type;
  assign io_tl_grant_bits_g_type = gnt_arb_io_out_bits_g_type;
  assign io_tl_grant_bits_data = gnt_arb_io_out_bits_data;
  assign io_nasti_aw_valid = T_959;
  assign io_nasti_aw_bits_addr = T_998_addr;
  assign io_nasti_aw_bits_len = T_998_len;
  assign io_nasti_aw_bits_size = T_998_size;
  assign io_nasti_aw_bits_burst = T_998_burst;
  assign io_nasti_aw_bits_lock = T_998_lock;
  assign io_nasti_aw_bits_cache = T_998_cache;
  assign io_nasti_aw_bits_prot = T_998_prot;
  assign io_nasti_aw_bits_qos = T_998_qos;
  assign io_nasti_aw_bits_region = T_998_region;
  assign io_nasti_aw_bits_id = T_998_id;
  assign io_nasti_aw_bits_user = T_998_user;
  assign io_nasti_w_valid = T_1017;
  assign io_nasti_w_bits_data = T_1058_data;
  assign io_nasti_w_bits_last = T_1058_last;
  assign io_nasti_w_bits_id = T_1058_id;
  assign io_nasti_w_bits_strb = T_1058_strb;
  assign io_nasti_w_bits_user = T_1058_user;
  assign io_nasti_b_ready = gnt_arb_io_in_1_ready;
  assign io_nasti_ar_valid = T_784;
  assign io_nasti_ar_bits_addr = T_853_addr;
  assign io_nasti_ar_bits_len = T_853_len;
  assign io_nasti_ar_bits_size = T_853_size;
  assign io_nasti_ar_bits_burst = T_853_burst;
  assign io_nasti_ar_bits_lock = T_853_lock;
  assign io_nasti_ar_bits_cache = T_853_cache;
  assign io_nasti_ar_bits_prot = T_853_prot;
  assign io_nasti_ar_bits_qos = T_853_qos;
  assign io_nasti_ar_bits_region = T_853_region;
  assign io_nasti_ar_bits_id = T_853_id;
  assign io_nasti_ar_bits_user = T_853_user;
  assign io_nasti_r_ready = gnt_arb_io_in_0_ready;
  assign T_688_0 = 3'h2;
  assign T_688_1 = 3'h3;
  assign T_688_2 = 3'h4;
  assign T_690 = io_tl_acquire_bits_a_type == T_688_0;
  assign T_691 = io_tl_acquire_bits_a_type == T_688_1;
  assign T_692 = io_tl_acquire_bits_a_type == T_688_2;
  assign T_693 = T_690 | T_691;
  assign T_694 = T_693 | T_692;
  assign has_data = io_tl_acquire_bits_is_builtin_type & T_694;
  assign T_703_0 = 3'h2;
  assign T_703_1 = 3'h0;
  assign T_703_2 = 3'h4;
  assign T_705 = io_tl_acquire_bits_a_type == T_703_0;
  assign T_706 = io_tl_acquire_bits_a_type == T_703_1;
  assign T_707 = io_tl_acquire_bits_a_type == T_703_2;
  assign T_708 = T_705 | T_706;
  assign T_709 = T_708 | T_707;
  assign is_subblock = io_tl_acquire_bits_is_builtin_type & T_709;
  assign T_718_0 = 3'h3;
  assign T_720 = io_tl_acquire_bits_a_type == T_718_0;
  assign is_multibeat = io_tl_acquire_bits_is_builtin_type & T_720;
  assign T_721 = io_tl_acquire_ready & io_tl_acquire_valid;
  assign T_722 = T_721 & is_multibeat;
  assign T_725 = tl_cnt_out == 3'h7;
  assign T_727 = tl_cnt_out + 3'h1;
  assign T_728 = T_727[2:0];
  assign GEN_0 = T_722 ? T_728 : tl_cnt_out;
  assign tl_wrap_out = T_722 & T_725;
  assign T_730 = has_data == 1'h0;
  assign get_valid = io_tl_acquire_valid & T_730;
  assign put_valid = io_tl_acquire_valid & has_data;
  assign roq_clk = clk;
  assign roq_reset = reset;
  assign roq_io_enq_valid = T_771;
  assign roq_io_enq_bits_data_addr_beat = io_tl_acquire_bits_addr_beat;
  assign roq_io_enq_bits_data_subblock = is_subblock;
  assign roq_io_enq_bits_tag = io_nasti_ar_bits_id[1:0];
  assign roq_io_deq_valid = T_774;
  assign roq_io_deq_tag = io_nasti_r_bits_id[1:0];
  assign get_id_mapper_clk = clk;
  assign get_id_mapper_reset = reset;
  assign get_id_mapper_io_req_valid = T_776;
  assign get_id_mapper_io_req_in_id = io_tl_acquire_bits_client_xact_id;
  assign get_id_mapper_io_resp_valid = T_778;
  assign get_id_mapper_io_resp_out_id = io_nasti_r_bits_id;
  assign put_id_mapper_clk = clk;
  assign put_id_mapper_reset = reset;
  assign put_id_mapper_io_req_valid = T_781;
  assign put_id_mapper_io_req_in_id = io_tl_acquire_bits_client_xact_id;
  assign put_id_mapper_io_resp_valid = T_782;
  assign put_id_mapper_io_resp_out_id = io_nasti_b_bits_id;
  assign T_755 = io_tl_acquire_bits_addr_beat == 3'h0;
  assign put_id_mask = is_subblock | T_755;
  assign T_757 = put_id_mask == 1'h0;
  assign put_id_ready = put_id_mapper_io_req_ready | T_757;
  assign aw_ready = w_inflight | io_nasti_aw_ready;
  assign T_760 = io_nasti_r_ready & io_nasti_r_valid;
  assign T_762 = roq_io_deq_data_subblock == 1'h0;
  assign T_763 = T_760 & T_762;
  assign T_766 = nasti_cnt_out == 3'h7;
  assign T_768 = nasti_cnt_out + 3'h1;
  assign T_769 = T_768[2:0];
  assign GEN_1 = T_763 ? T_769 : nasti_cnt_out;
  assign nasti_wrap_out = T_763 & T_766;
  assign T_770 = get_valid & io_nasti_ar_ready;
  assign T_771 = T_770 & get_id_mapper_io_req_ready;
  assign T_773 = nasti_wrap_out | roq_io_deq_data_subblock;
  assign T_774 = T_760 & T_773;
  assign T_775 = get_valid & roq_io_enq_ready;
  assign T_776 = T_775 & io_nasti_ar_ready;
  assign T_778 = T_760 & io_nasti_r_bits_last;
  assign T_779 = put_valid & aw_ready;
  assign T_780 = T_779 & io_nasti_w_ready;
  assign T_781 = T_780 & put_id_mask;
  assign T_782 = io_nasti_b_ready & io_nasti_b_valid;
  assign T_784 = T_775 & get_id_mapper_io_req_ready;
  assign T_792_0 = 3'h0;
  assign T_792_1 = 3'h4;
  assign T_794 = io_tl_acquire_bits_a_type == T_792_0;
  assign T_795 = io_tl_acquire_bits_a_type == T_792_1;
  assign T_796 = T_794 | T_795;
  assign T_797 = io_tl_acquire_bits_is_builtin_type & T_796;
  assign T_798 = io_tl_acquire_bits_union[11:9];
  assign T_800 = T_797 ? T_798 : 3'h0;
  assign T_801 = {io_tl_acquire_bits_addr_block,io_tl_acquire_bits_addr_beat};
  assign T_802 = {T_801,T_800};
  assign T_803 = io_tl_acquire_bits_union[8:6];
  assign T_813 = 3'h7 == T_803;
  assign T_814 = T_813 ? 3'h3 : 3'h7;
  assign T_815 = 3'h3 == T_803;
  assign T_816 = T_815 ? 3'h3 : T_814;
  assign T_817 = 3'h6 == T_803;
  assign T_818 = T_817 ? 3'h2 : T_816;
  assign T_819 = 3'h2 == T_803;
  assign T_820 = T_819 ? 3'h2 : T_818;
  assign T_821 = 3'h5 == T_803;
  assign T_822 = T_821 ? 3'h1 : T_820;
  assign T_823 = 3'h1 == T_803;
  assign T_824 = T_823 ? 3'h1 : T_822;
  assign T_825 = 3'h4 == T_803;
  assign T_826 = T_825 ? 3'h0 : T_824;
  assign T_827 = 3'h0 == T_803;
  assign T_828 = T_827 ? 3'h0 : T_826;
  assign T_830 = is_subblock ? T_828 : 3'h3;
  assign T_833 = is_subblock ? 3'h0 : 3'h7;
  assign T_853_addr = T_802;
  assign T_853_len = {{5'd0}, T_833};
  assign T_853_size = T_830;
  assign T_853_burst = 2'h1;
  assign T_853_lock = 1'h0;
  assign T_853_cache = 4'h0;
  assign T_853_prot = 3'h0;
  assign T_853_qos = 4'h0;
  assign T_853_region = 4'h0;
  assign T_853_id = get_id_mapper_io_req_out_id;
  assign T_853_user = 1'h0;
  assign T_872 = io_tl_acquire_bits_a_type == 3'h4;
  assign T_873 = io_tl_acquire_bits_is_builtin_type & T_872;
  assign T_875 = T_798[2];
  assign T_877 = 2'h1 << T_875;
  assign T_878 = T_877[0];
  assign T_879 = T_877[1];
  assign T_883 = T_878 ? 4'hf : 4'h0;
  assign T_887 = T_879 ? 4'hf : 4'h0;
  assign T_888 = {T_887,T_883};
  assign T_890 = io_tl_acquire_bits_a_type == 3'h3;
  assign T_891 = io_tl_acquire_bits_is_builtin_type & T_890;
  assign T_893 = io_tl_acquire_bits_a_type == 3'h2;
  assign T_894 = io_tl_acquire_bits_is_builtin_type & T_893;
  assign T_895 = T_891 | T_894;
  assign T_896 = io_tl_acquire_bits_union[8:1];
  assign T_898 = T_895 ? T_896 : 8'h0;
  assign T_899 = T_873 ? T_888 : T_898;
  assign T_900 = ~ T_899;
  assign T_901 = T_900[0];
  assign T_902 = T_900[1];
  assign T_903 = T_900[2];
  assign T_904 = T_900[3];
  assign T_905 = T_900[4];
  assign T_906 = T_900[5];
  assign T_907 = T_900[6];
  assign T_908 = T_900[7];
  assign T_909 = T_901 & T_902;
  assign T_910 = T_903 & T_904;
  assign T_911 = T_905 & T_906;
  assign T_912 = T_907 & T_908;
  assign T_913 = T_909 & T_910;
  assign T_914 = T_911 & T_912;
  assign T_921 = T_914 | T_913;
  assign T_922 = {1'h0,T_913};
  assign T_924 = T_921 ? 2'h2 : 2'h3;
  assign T_925 = T_914 & T_910;
  assign T_926 = T_914 & T_909;
  assign T_927 = T_913 & T_912;
  assign T_928 = T_913 & T_911;
  assign T_929 = T_926 | T_928;
  assign T_930 = T_925 | T_926;
  assign T_931 = T_930 | T_927;
  assign T_932 = T_931 | T_928;
  assign T_933 = {T_922,T_929};
  assign T_935 = T_932 ? 2'h1 : T_924;
  assign T_936 = T_925 & T_902;
  assign T_937 = T_925 & T_901;
  assign T_938 = T_926 & T_904;
  assign T_939 = T_926 & T_903;
  assign T_940 = T_927 & T_906;
  assign T_941 = T_927 & T_905;
  assign T_942 = T_928 & T_908;
  assign T_943 = T_928 & T_907;
  assign T_944 = T_937 | T_939;
  assign T_945 = T_944 | T_941;
  assign T_946 = T_945 | T_943;
  assign T_947 = T_936 | T_937;
  assign T_948 = T_947 | T_938;
  assign T_949 = T_948 | T_939;
  assign T_950 = T_949 | T_940;
  assign T_951 = T_950 | T_941;
  assign T_952 = T_951 | T_942;
  assign T_953 = T_952 | T_943;
  assign put_offset = {T_933,T_946};
  assign put_size = T_953 ? 2'h0 : T_935;
  assign T_956 = w_inflight == 1'h0;
  assign T_957 = put_valid & io_nasti_w_ready;
  assign T_958 = T_957 & put_id_ready;
  assign T_959 = T_958 & T_956;
  assign T_967_0 = 3'h0;
  assign T_967_1 = 3'h4;
  assign T_969 = io_tl_acquire_bits_a_type == T_967_0;
  assign T_970 = io_tl_acquire_bits_a_type == T_967_1;
  assign T_971 = T_969 | T_970;
  assign T_972 = io_tl_acquire_bits_is_builtin_type & T_971;
  assign T_975 = T_972 ? T_798 : 3'h0;
  assign T_977 = {T_801,T_975};
  assign T_979 = is_multibeat ? 4'h0 : put_offset;
  assign GEN_7 = {{28'd0}, T_979};
  assign T_980 = T_977 | GEN_7;
  assign T_982 = is_multibeat ? 2'h3 : put_size;
  assign T_985 = is_multibeat ? 3'h7 : 3'h0;
  assign T_998_addr = T_980;
  assign T_998_len = {{5'd0}, T_985};
  assign T_998_size = {{1'd0}, T_982};
  assign T_998_burst = 2'h1;
  assign T_998_lock = 1'h0;
  assign T_998_cache = 4'h0;
  assign T_998_prot = 3'h0;
  assign T_998_qos = 4'h0;
  assign T_998_region = 4'h0;
  assign T_998_id = put_id_mapper_io_req_out_id;
  assign T_998_user = 1'h0;
  assign T_1017 = T_779 & put_id_ready;
  assign T_1050 = is_multibeat == 1'h0;
  assign T_1051 = w_inflight ? T_725 : T_1050;
  assign T_1058_data = io_tl_acquire_bits_data;
  assign T_1058_last = T_1051;
  assign T_1058_id = w_id;
  assign T_1058_strb = T_899;
  assign T_1058_user = 1'h0;
  assign T_1065 = aw_ready & io_nasti_w_ready;
  assign T_1066 = T_1065 & put_id_ready;
  assign T_1067 = roq_io_enq_ready & io_nasti_ar_ready;
  assign T_1068 = T_1067 & get_id_mapper_io_req_ready;
  assign T_1069 = has_data ? T_1066 : T_1068;
  assign T_1073 = T_956 & T_721;
  assign T_1074 = T_1073 & is_multibeat;
  assign GEN_2 = T_1074 ? 1'h1 : w_inflight;
  assign GEN_3 = T_1074 ? put_id_mapper_io_req_out_id : w_id;
  assign GEN_4 = tl_wrap_out ? 1'h0 : GEN_2;
  assign GEN_5 = w_inflight ? GEN_4 : GEN_2;
  assign T_1077 = io_tl_grant_ready & io_tl_grant_valid;
  assign T_1085_0 = 3'h5;
  assign GEN_8 = {{1'd0}, T_1085_0};
  assign T_1087 = io_tl_grant_bits_g_type == GEN_8;
  assign T_1088 = io_tl_grant_bits_g_type == 4'h0;
  assign T_1089 = io_tl_grant_bits_is_builtin_type ? T_1087 : T_1088;
  assign T_1091 = T_1077 & T_1089;
  assign T_1096 = tl_cnt_in + 3'h1;
  assign T_1097 = T_1096[2:0];
  assign GEN_6 = T_1091 ? T_1097 : tl_cnt_in;
  assign gnt_arb_clk = clk;
  assign gnt_arb_reset = reset;
  assign gnt_arb_io_in_0_valid = io_nasti_r_valid;
  assign gnt_arb_io_in_0_bits_addr_beat = T_1159_addr_beat;
  assign gnt_arb_io_in_0_bits_client_xact_id = T_1159_client_xact_id;
  assign gnt_arb_io_in_0_bits_manager_xact_id = T_1159_manager_xact_id;
  assign gnt_arb_io_in_0_bits_is_builtin_type = T_1159_is_builtin_type;
  assign gnt_arb_io_in_0_bits_g_type = T_1159_g_type;
  assign gnt_arb_io_in_0_bits_data = T_1159_data;
  assign gnt_arb_io_in_0_bits_client_id = GEN_9;
  assign gnt_arb_io_in_1_valid = io_nasti_b_valid;
  assign gnt_arb_io_in_1_bits_addr_beat = T_1230_addr_beat;
  assign gnt_arb_io_in_1_bits_client_xact_id = T_1230_client_xact_id;
  assign gnt_arb_io_in_1_bits_manager_xact_id = T_1230_manager_xact_id;
  assign gnt_arb_io_in_1_bits_is_builtin_type = T_1230_is_builtin_type;
  assign gnt_arb_io_in_1_bits_g_type = T_1230_g_type;
  assign gnt_arb_io_in_1_bits_data = T_1230_data;
  assign gnt_arb_io_in_1_bits_client_id = GEN_10;
  assign gnt_arb_io_out_ready = io_tl_grant_ready;
  assign T_1129 = roq_io_deq_data_subblock ? 3'h4 : 3'h5;
  assign T_1131 = roq_io_deq_data_subblock ? roq_io_deq_data_addr_beat : tl_cnt_in;
  assign T_1159_addr_beat = T_1131;
  assign T_1159_client_xact_id = get_id_mapper_io_resp_in_id;
  assign T_1159_manager_xact_id = 1'h0;
  assign T_1159_is_builtin_type = 1'h1;
  assign T_1159_g_type = {{1'd0}, T_1129};
  assign T_1159_data = io_nasti_r_bits_data;
  assign T_1187 = roq_io_deq_valid == 1'h0;
  assign T_1188 = T_1187 | roq_io_deq_matches;
  assign T_1189 = T_1188 | reset;
  assign T_1191 = T_1189 == 1'h0;
  assign T_1193 = gnt_arb_io_in_0_valid == 1'h0;
  assign T_1194 = T_1193 | get_id_mapper_io_resp_matches;
  assign T_1195 = T_1194 | reset;
  assign T_1197 = T_1195 == 1'h0;
  assign T_1230_addr_beat = 3'h0;
  assign T_1230_client_xact_id = put_id_mapper_io_resp_in_id;
  assign T_1230_manager_xact_id = 1'h0;
  assign T_1230_is_builtin_type = 1'h1;
  assign T_1230_g_type = 4'h3;
  assign T_1230_data = 64'h0;
  assign T_1258 = gnt_arb_io_in_1_valid == 1'h0;
  assign T_1259 = T_1258 | put_id_mapper_io_resp_matches;
  assign T_1260 = T_1259 | reset;
  assign T_1262 = T_1260 == 1'h0;
  assign T_1264 = io_nasti_r_valid == 1'h0;
  assign T_1266 = io_nasti_r_bits_resp == 2'h0;
  assign T_1267 = T_1264 | T_1266;
  assign T_1268 = T_1267 | reset;
  assign T_1270 = T_1268 == 1'h0;
  assign T_1272 = io_nasti_b_valid == 1'h0;
  assign T_1274 = io_nasti_b_bits_resp == 2'h0;
  assign T_1275 = T_1272 | T_1274;
  assign T_1276 = T_1275 | reset;
  assign T_1278 = T_1276 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_11 = {1{$random}};
  tl_cnt_out = GEN_11[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_12 = {1{$random}};
  w_inflight = GEN_12[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_13 = {1{$random}};
  w_id = GEN_13[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_14 = {1{$random}};
  nasti_cnt_out = GEN_14[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_15 = {1{$random}};
  tl_cnt_in = GEN_15[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_16 = {1{$random}};
  GEN_9 = GEN_16[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_17 = {1{$random}};
  GEN_10 = GEN_17[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      tl_cnt_out <= 3'h0;
    end else begin
      if(T_722) begin
        tl_cnt_out <= T_728;
      end
    end
    if(reset) begin
      w_inflight <= 1'h0;
    end else begin
      if(w_inflight) begin
        if(tl_wrap_out) begin
          w_inflight <= 1'h0;
        end else begin
          if(T_1074) begin
            w_inflight <= 1'h1;
          end
        end
      end else begin
        if(T_1074) begin
          w_inflight <= 1'h1;
        end
      end
    end
    if(reset) begin
      w_id <= 5'h0;
    end else begin
      if(T_1074) begin
        w_id <= put_id_mapper_io_req_out_id;
      end
    end
    if(reset) begin
      nasti_cnt_out <= 3'h0;
    end else begin
      if(T_763) begin
        nasti_cnt_out <= T_769;
      end
    end
    if(reset) begin
      tl_cnt_in <= 3'h0;
    end else begin
      if(T_1091) begin
        tl_cnt_in <= T_1097;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1191) begin
          $fwrite(32'h80000002,"Assertion failed: TL -> NASTI converter ReorderQueue: NASTI tag error\n    at Nasti.scala:229 assert(!roq.io.deq.valid || roq.io.deq.matches,\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1191) begin
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
        if (T_1197) begin
          $fwrite(32'h80000002,"Assertion failed: TL -> NASTI ID Mapper: NASTI tag error\n    at Nasti.scala:231 assert(!gnt_arb.io.in(0).valid || get_id_mapper.io.resp.matches,\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1197) begin
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
        if (T_1262) begin
          $fwrite(32'h80000002,"Assertion failed: NASTI tag error\n    at Nasti.scala:243 assert(!gnt_arb.io.in(1).valid || put_id_mapper.io.resp.matches, ---NASTI tag error---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1262) begin
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
        if (T_1270) begin
          $fwrite(32'h80000002,"Assertion failed: NASTI read error\n    at Nasti.scala:245 assert(!io.nasti.r.valid || io.nasti.r.bits.resp === UInt(0), ---NASTI read error---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1270) begin
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
        if (T_1278) begin
          $fwrite(32'h80000002,"Assertion failed: NASTI write error\n    at Nasti.scala:246 assert(!io.nasti.b.valid || io.nasti.b.bits.resp === UInt(0), ---NASTI write error---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_1278) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
