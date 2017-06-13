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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_NASTI_IO_TILE_LINK_IO_CONVERTER_1(
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
  wire [2:0] T_593_0;
  wire [2:0] T_593_1;
  wire [2:0] T_593_2;
  wire  T_595;
  wire  T_596;
  wire  T_597;
  wire  T_598;
  wire  T_599;
  wire  has_data;
  wire [2:0] T_608_0;
  wire [2:0] T_608_1;
  wire [2:0] T_608_2;
  wire  T_610;
  wire  T_611;
  wire  T_612;
  wire  T_613;
  wire  T_614;
  wire  is_subblock;
  wire [2:0] T_623_0;
  wire  T_625;
  wire  is_multibeat;
  wire  T_626;
  wire  T_627;
  reg [2:0] tl_cnt_out;
  reg [31:0] GEN_11;
  wire  T_630;
  wire [3:0] T_632;
  wire [2:0] T_633;
  wire [2:0] GEN_0;
  wire  tl_wrap_out;
  wire  T_635;
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
  wire  T_655;
  wire  put_id_mask;
  wire  T_657;
  wire  put_id_ready;
  reg  w_inflight;
  reg [31:0] GEN_12;
  reg [4:0] w_id;
  reg [31:0] GEN_13;
  wire  aw_ready;
  wire  T_660;
  wire  T_662;
  wire  T_663;
  reg [2:0] nasti_cnt_out;
  reg [31:0] GEN_14;
  wire  T_666;
  wire [3:0] T_668;
  wire [2:0] T_669;
  wire [2:0] GEN_1;
  wire  nasti_wrap_out;
  wire  T_670;
  wire  T_671;
  wire  T_673;
  wire  T_674;
  wire  T_675;
  wire  T_676;
  wire  T_678;
  wire  T_679;
  wire  T_680;
  wire  T_681;
  wire  T_682;
  wire  T_684;
  wire [2:0] T_692_0;
  wire [2:0] T_692_1;
  wire  T_694;
  wire  T_695;
  wire  T_696;
  wire  T_697;
  wire [2:0] T_698;
  wire [2:0] T_700;
  wire [28:0] T_701;
  wire [31:0] T_702;
  wire [2:0] T_703;
  wire  T_713;
  wire [2:0] T_714;
  wire  T_715;
  wire [2:0] T_716;
  wire  T_717;
  wire [2:0] T_718;
  wire  T_719;
  wire [2:0] T_720;
  wire  T_721;
  wire [2:0] T_722;
  wire  T_723;
  wire [2:0] T_724;
  wire  T_725;
  wire [2:0] T_726;
  wire  T_727;
  wire [2:0] T_728;
  wire [2:0] T_730;
  wire [2:0] T_733;
  wire [31:0] T_746_addr;
  wire [7:0] T_746_len;
  wire [2:0] T_746_size;
  wire [1:0] T_746_burst;
  wire  T_746_lock;
  wire [3:0] T_746_cache;
  wire [2:0] T_746_prot;
  wire [3:0] T_746_qos;
  wire [3:0] T_746_region;
  wire [4:0] T_746_id;
  wire  T_746_user;
  wire  T_765;
  wire  T_766;
  wire  T_768;
  wire [1:0] T_770;
  wire  T_771;
  wire  T_772;
  wire [3:0] T_776;
  wire [3:0] T_780;
  wire [7:0] T_781;
  wire  T_783;
  wire  T_784;
  wire  T_786;
  wire  T_787;
  wire  T_788;
  wire [7:0] T_789;
  wire [7:0] T_791;
  wire [7:0] T_792;
  wire [7:0] T_793;
  wire  T_794;
  wire  T_795;
  wire  T_796;
  wire  T_797;
  wire  T_798;
  wire  T_799;
  wire  T_800;
  wire  T_801;
  wire  T_802;
  wire  T_803;
  wire  T_804;
  wire  T_805;
  wire  T_806;
  wire  T_807;
  wire  T_814;
  wire [1:0] T_815;
  wire [1:0] T_817;
  wire  T_818;
  wire  T_819;
  wire  T_820;
  wire  T_821;
  wire  T_822;
  wire  T_823;
  wire  T_824;
  wire  T_825;
  wire [2:0] T_826;
  wire [1:0] T_828;
  wire  T_829;
  wire  T_830;
  wire  T_831;
  wire  T_832;
  wire  T_833;
  wire  T_834;
  wire  T_835;
  wire  T_836;
  wire  T_837;
  wire  T_838;
  wire  T_839;
  wire  T_840;
  wire  T_841;
  wire  T_842;
  wire  T_843;
  wire  T_844;
  wire  T_845;
  wire  T_846;
  wire [3:0] put_offset;
  wire [1:0] put_size;
  wire  T_849;
  wire  T_850;
  wire  T_851;
  wire  T_852;
  wire [2:0] T_860_0;
  wire [2:0] T_860_1;
  wire  T_862;
  wire  T_863;
  wire  T_864;
  wire  T_865;
  wire [2:0] T_868;
  wire [31:0] T_870;
  wire [3:0] T_872;
  wire [31:0] GEN_7;
  wire [31:0] T_873;
  wire [1:0] T_875;
  wire [2:0] T_878;
  wire [31:0] T_891_addr;
  wire [7:0] T_891_len;
  wire [2:0] T_891_size;
  wire [1:0] T_891_burst;
  wire  T_891_lock;
  wire [3:0] T_891_cache;
  wire [2:0] T_891_prot;
  wire [3:0] T_891_qos;
  wire [3:0] T_891_region;
  wire [4:0] T_891_id;
  wire  T_891_user;
  wire  T_910;
  wire  T_943;
  wire  T_944;
  wire [63:0] T_951_data;
  wire  T_951_last;
  wire [4:0] T_951_id;
  wire [7:0] T_951_strb;
  wire  T_951_user;
  wire  T_958;
  wire  T_959;
  wire  T_960;
  wire  T_961;
  wire  T_962;
  wire  T_966;
  wire  T_967;
  wire  GEN_2;
  wire [4:0] GEN_3;
  wire  GEN_4;
  wire  GEN_5;
  wire  T_970;
  wire [2:0] T_978_0;
  wire [3:0] GEN_8;
  wire  T_980;
  wire  T_981;
  wire  T_982;
  wire  T_984;
  reg [2:0] tl_cnt_in;
  reg [31:0] GEN_15;
  wire [3:0] T_989;
  wire [2:0] T_990;
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
  wire [2:0] T_1017;
  wire [2:0] T_1019;
  wire [2:0] T_1042_addr_beat;
  wire [1:0] T_1042_client_xact_id;
  wire  T_1042_manager_xact_id;
  wire  T_1042_is_builtin_type;
  wire [3:0] T_1042_g_type;
  wire [63:0] T_1042_data;
  wire  T_1065;
  wire  T_1066;
  wire  T_1067;
  wire  T_1069;
  wire  T_1071;
  wire  T_1072;
  wire  T_1073;
  wire  T_1075;
  wire [2:0] T_1103_addr_beat;
  wire [1:0] T_1103_client_xact_id;
  wire  T_1103_manager_xact_id;
  wire  T_1103_is_builtin_type;
  wire [3:0] T_1103_g_type;
  wire [63:0] T_1103_data;
  wire  T_1126;
  wire  T_1127;
  wire  T_1128;
  wire  T_1130;
  wire  T_1132;
  wire  T_1134;
  wire  T_1135;
  wire  T_1136;
  wire  T_1138;
  wire  T_1140;
  wire  T_1142;
  wire  T_1143;
  wire  T_1144;
  wire  T_1146;
  reg  GEN_9;
  reg [31:0] GEN_16;
  reg  GEN_10;
  reg [31:0] GEN_17;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE_3 roq (
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
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_ARBITER_1 gnt_arb (
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
  assign io_tl_acquire_ready = T_962;
  assign io_tl_grant_valid = gnt_arb_io_out_valid;
  assign io_tl_grant_bits_addr_beat = gnt_arb_io_out_bits_addr_beat;
  assign io_tl_grant_bits_client_xact_id = gnt_arb_io_out_bits_client_xact_id;
  assign io_tl_grant_bits_manager_xact_id = gnt_arb_io_out_bits_manager_xact_id;
  assign io_tl_grant_bits_is_builtin_type = gnt_arb_io_out_bits_is_builtin_type;
  assign io_tl_grant_bits_g_type = gnt_arb_io_out_bits_g_type;
  assign io_tl_grant_bits_data = gnt_arb_io_out_bits_data;
  assign io_nasti_aw_valid = T_852;
  assign io_nasti_aw_bits_addr = T_891_addr;
  assign io_nasti_aw_bits_len = T_891_len;
  assign io_nasti_aw_bits_size = T_891_size;
  assign io_nasti_aw_bits_burst = T_891_burst;
  assign io_nasti_aw_bits_lock = T_891_lock;
  assign io_nasti_aw_bits_cache = T_891_cache;
  assign io_nasti_aw_bits_prot = T_891_prot;
  assign io_nasti_aw_bits_qos = T_891_qos;
  assign io_nasti_aw_bits_region = T_891_region;
  assign io_nasti_aw_bits_id = T_891_id;
  assign io_nasti_aw_bits_user = T_891_user;
  assign io_nasti_w_valid = T_910;
  assign io_nasti_w_bits_data = T_951_data;
  assign io_nasti_w_bits_last = T_951_last;
  assign io_nasti_w_bits_id = T_951_id;
  assign io_nasti_w_bits_strb = T_951_strb;
  assign io_nasti_w_bits_user = T_951_user;
  assign io_nasti_b_ready = gnt_arb_io_in_1_ready;
  assign io_nasti_ar_valid = T_684;
  assign io_nasti_ar_bits_addr = T_746_addr;
  assign io_nasti_ar_bits_len = T_746_len;
  assign io_nasti_ar_bits_size = T_746_size;
  assign io_nasti_ar_bits_burst = T_746_burst;
  assign io_nasti_ar_bits_lock = T_746_lock;
  assign io_nasti_ar_bits_cache = T_746_cache;
  assign io_nasti_ar_bits_prot = T_746_prot;
  assign io_nasti_ar_bits_qos = T_746_qos;
  assign io_nasti_ar_bits_region = T_746_region;
  assign io_nasti_ar_bits_id = T_746_id;
  assign io_nasti_ar_bits_user = T_746_user;
  assign io_nasti_r_ready = gnt_arb_io_in_0_ready;
  assign T_593_0 = 3'h2;
  assign T_593_1 = 3'h3;
  assign T_593_2 = 3'h4;
  assign T_595 = io_tl_acquire_bits_a_type == T_593_0;
  assign T_596 = io_tl_acquire_bits_a_type == T_593_1;
  assign T_597 = io_tl_acquire_bits_a_type == T_593_2;
  assign T_598 = T_595 | T_596;
  assign T_599 = T_598 | T_597;
  assign has_data = io_tl_acquire_bits_is_builtin_type & T_599;
  assign T_608_0 = 3'h2;
  assign T_608_1 = 3'h0;
  assign T_608_2 = 3'h4;
  assign T_610 = io_tl_acquire_bits_a_type == T_608_0;
  assign T_611 = io_tl_acquire_bits_a_type == T_608_1;
  assign T_612 = io_tl_acquire_bits_a_type == T_608_2;
  assign T_613 = T_610 | T_611;
  assign T_614 = T_613 | T_612;
  assign is_subblock = io_tl_acquire_bits_is_builtin_type & T_614;
  assign T_623_0 = 3'h3;
  assign T_625 = io_tl_acquire_bits_a_type == T_623_0;
  assign is_multibeat = io_tl_acquire_bits_is_builtin_type & T_625;
  assign T_626 = io_tl_acquire_ready & io_tl_acquire_valid;
  assign T_627 = T_626 & is_multibeat;
  assign T_630 = tl_cnt_out == 3'h7;
  assign T_632 = tl_cnt_out + 3'h1;
  assign T_633 = T_632[2:0];
  assign GEN_0 = T_627 ? T_633 : tl_cnt_out;
  assign tl_wrap_out = T_627 & T_630;
  assign T_635 = has_data == 1'h0;
  assign get_valid = io_tl_acquire_valid & T_635;
  assign put_valid = io_tl_acquire_valid & has_data;
  assign roq_clk = clk;
  assign roq_reset = reset;
  assign roq_io_enq_valid = T_671;
  assign roq_io_enq_bits_data_addr_beat = io_tl_acquire_bits_addr_beat;
  assign roq_io_enq_bits_data_subblock = is_subblock;
  assign roq_io_enq_bits_tag = io_nasti_ar_bits_id[1:0];
  assign roq_io_deq_valid = T_674;
  assign roq_io_deq_tag = io_nasti_r_bits_id[1:0];
  assign get_id_mapper_clk = clk;
  assign get_id_mapper_reset = reset;
  assign get_id_mapper_io_req_valid = T_676;
  assign get_id_mapper_io_req_in_id = io_tl_acquire_bits_client_xact_id;
  assign get_id_mapper_io_resp_valid = T_678;
  assign get_id_mapper_io_resp_out_id = io_nasti_r_bits_id;
  assign put_id_mapper_clk = clk;
  assign put_id_mapper_reset = reset;
  assign put_id_mapper_io_req_valid = T_681;
  assign put_id_mapper_io_req_in_id = io_tl_acquire_bits_client_xact_id;
  assign put_id_mapper_io_resp_valid = T_682;
  assign put_id_mapper_io_resp_out_id = io_nasti_b_bits_id;
  assign T_655 = io_tl_acquire_bits_addr_beat == 3'h0;
  assign put_id_mask = is_subblock | T_655;
  assign T_657 = put_id_mask == 1'h0;
  assign put_id_ready = put_id_mapper_io_req_ready | T_657;
  assign aw_ready = w_inflight | io_nasti_aw_ready;
  assign T_660 = io_nasti_r_ready & io_nasti_r_valid;
  assign T_662 = roq_io_deq_data_subblock == 1'h0;
  assign T_663 = T_660 & T_662;
  assign T_666 = nasti_cnt_out == 3'h7;
  assign T_668 = nasti_cnt_out + 3'h1;
  assign T_669 = T_668[2:0];
  assign GEN_1 = T_663 ? T_669 : nasti_cnt_out;
  assign nasti_wrap_out = T_663 & T_666;
  assign T_670 = get_valid & io_nasti_ar_ready;
  assign T_671 = T_670 & get_id_mapper_io_req_ready;
  assign T_673 = nasti_wrap_out | roq_io_deq_data_subblock;
  assign T_674 = T_660 & T_673;
  assign T_675 = get_valid & roq_io_enq_ready;
  assign T_676 = T_675 & io_nasti_ar_ready;
  assign T_678 = T_660 & io_nasti_r_bits_last;
  assign T_679 = put_valid & aw_ready;
  assign T_680 = T_679 & io_nasti_w_ready;
  assign T_681 = T_680 & put_id_mask;
  assign T_682 = io_nasti_b_ready & io_nasti_b_valid;
  assign T_684 = T_675 & get_id_mapper_io_req_ready;
  assign T_692_0 = 3'h0;
  assign T_692_1 = 3'h4;
  assign T_694 = io_tl_acquire_bits_a_type == T_692_0;
  assign T_695 = io_tl_acquire_bits_a_type == T_692_1;
  assign T_696 = T_694 | T_695;
  assign T_697 = io_tl_acquire_bits_is_builtin_type & T_696;
  assign T_698 = io_tl_acquire_bits_union[11:9];
  assign T_700 = T_697 ? T_698 : 3'h0;
  assign T_701 = {io_tl_acquire_bits_addr_block,io_tl_acquire_bits_addr_beat};
  assign T_702 = {T_701,T_700};
  assign T_703 = io_tl_acquire_bits_union[8:6];
  assign T_713 = 3'h7 == T_703;
  assign T_714 = T_713 ? 3'h3 : 3'h7;
  assign T_715 = 3'h3 == T_703;
  assign T_716 = T_715 ? 3'h3 : T_714;
  assign T_717 = 3'h6 == T_703;
  assign T_718 = T_717 ? 3'h2 : T_716;
  assign T_719 = 3'h2 == T_703;
  assign T_720 = T_719 ? 3'h2 : T_718;
  assign T_721 = 3'h5 == T_703;
  assign T_722 = T_721 ? 3'h1 : T_720;
  assign T_723 = 3'h1 == T_703;
  assign T_724 = T_723 ? 3'h1 : T_722;
  assign T_725 = 3'h4 == T_703;
  assign T_726 = T_725 ? 3'h0 : T_724;
  assign T_727 = 3'h0 == T_703;
  assign T_728 = T_727 ? 3'h0 : T_726;
  assign T_730 = is_subblock ? T_728 : 3'h3;
  assign T_733 = is_subblock ? 3'h0 : 3'h7;
  assign T_746_addr = T_702;
  assign T_746_len = {{5'd0}, T_733};
  assign T_746_size = T_730;
  assign T_746_burst = 2'h1;
  assign T_746_lock = 1'h0;
  assign T_746_cache = 4'h0;
  assign T_746_prot = 3'h0;
  assign T_746_qos = 4'h0;
  assign T_746_region = 4'h0;
  assign T_746_id = get_id_mapper_io_req_out_id;
  assign T_746_user = 1'h0;
  assign T_765 = io_tl_acquire_bits_a_type == 3'h4;
  assign T_766 = io_tl_acquire_bits_is_builtin_type & T_765;
  assign T_768 = T_698[2];
  assign T_770 = 2'h1 << T_768;
  assign T_771 = T_770[0];
  assign T_772 = T_770[1];
  assign T_776 = T_771 ? 4'hf : 4'h0;
  assign T_780 = T_772 ? 4'hf : 4'h0;
  assign T_781 = {T_780,T_776};
  assign T_783 = io_tl_acquire_bits_a_type == 3'h3;
  assign T_784 = io_tl_acquire_bits_is_builtin_type & T_783;
  assign T_786 = io_tl_acquire_bits_a_type == 3'h2;
  assign T_787 = io_tl_acquire_bits_is_builtin_type & T_786;
  assign T_788 = T_784 | T_787;
  assign T_789 = io_tl_acquire_bits_union[8:1];
  assign T_791 = T_788 ? T_789 : 8'h0;
  assign T_792 = T_766 ? T_781 : T_791;
  assign T_793 = ~ T_792;
  assign T_794 = T_793[0];
  assign T_795 = T_793[1];
  assign T_796 = T_793[2];
  assign T_797 = T_793[3];
  assign T_798 = T_793[4];
  assign T_799 = T_793[5];
  assign T_800 = T_793[6];
  assign T_801 = T_793[7];
  assign T_802 = T_794 & T_795;
  assign T_803 = T_796 & T_797;
  assign T_804 = T_798 & T_799;
  assign T_805 = T_800 & T_801;
  assign T_806 = T_802 & T_803;
  assign T_807 = T_804 & T_805;
  assign T_814 = T_807 | T_806;
  assign T_815 = {1'h0,T_806};
  assign T_817 = T_814 ? 2'h2 : 2'h3;
  assign T_818 = T_807 & T_803;
  assign T_819 = T_807 & T_802;
  assign T_820 = T_806 & T_805;
  assign T_821 = T_806 & T_804;
  assign T_822 = T_819 | T_821;
  assign T_823 = T_818 | T_819;
  assign T_824 = T_823 | T_820;
  assign T_825 = T_824 | T_821;
  assign T_826 = {T_815,T_822};
  assign T_828 = T_825 ? 2'h1 : T_817;
  assign T_829 = T_818 & T_795;
  assign T_830 = T_818 & T_794;
  assign T_831 = T_819 & T_797;
  assign T_832 = T_819 & T_796;
  assign T_833 = T_820 & T_799;
  assign T_834 = T_820 & T_798;
  assign T_835 = T_821 & T_801;
  assign T_836 = T_821 & T_800;
  assign T_837 = T_830 | T_832;
  assign T_838 = T_837 | T_834;
  assign T_839 = T_838 | T_836;
  assign T_840 = T_829 | T_830;
  assign T_841 = T_840 | T_831;
  assign T_842 = T_841 | T_832;
  assign T_843 = T_842 | T_833;
  assign T_844 = T_843 | T_834;
  assign T_845 = T_844 | T_835;
  assign T_846 = T_845 | T_836;
  assign put_offset = {T_826,T_839};
  assign put_size = T_846 ? 2'h0 : T_828;
  assign T_849 = w_inflight == 1'h0;
  assign T_850 = put_valid & io_nasti_w_ready;
  assign T_851 = T_850 & put_id_ready;
  assign T_852 = T_851 & T_849;
  assign T_860_0 = 3'h0;
  assign T_860_1 = 3'h4;
  assign T_862 = io_tl_acquire_bits_a_type == T_860_0;
  assign T_863 = io_tl_acquire_bits_a_type == T_860_1;
  assign T_864 = T_862 | T_863;
  assign T_865 = io_tl_acquire_bits_is_builtin_type & T_864;
  assign T_868 = T_865 ? T_698 : 3'h0;
  assign T_870 = {T_701,T_868};
  assign T_872 = is_multibeat ? 4'h0 : put_offset;
  assign GEN_7 = {{28'd0}, T_872};
  assign T_873 = T_870 | GEN_7;
  assign T_875 = is_multibeat ? 2'h3 : put_size;
  assign T_878 = is_multibeat ? 3'h7 : 3'h0;
  assign T_891_addr = T_873;
  assign T_891_len = {{5'd0}, T_878};
  assign T_891_size = {{1'd0}, T_875};
  assign T_891_burst = 2'h1;
  assign T_891_lock = 1'h0;
  assign T_891_cache = 4'h0;
  assign T_891_prot = 3'h0;
  assign T_891_qos = 4'h0;
  assign T_891_region = 4'h0;
  assign T_891_id = put_id_mapper_io_req_out_id;
  assign T_891_user = 1'h0;
  assign T_910 = T_679 & put_id_ready;
  assign T_943 = is_multibeat == 1'h0;
  assign T_944 = w_inflight ? T_630 : T_943;
  assign T_951_data = io_tl_acquire_bits_data;
  assign T_951_last = T_944;
  assign T_951_id = w_id;
  assign T_951_strb = T_792;
  assign T_951_user = 1'h0;
  assign T_958 = aw_ready & io_nasti_w_ready;
  assign T_959 = T_958 & put_id_ready;
  assign T_960 = roq_io_enq_ready & io_nasti_ar_ready;
  assign T_961 = T_960 & get_id_mapper_io_req_ready;
  assign T_962 = has_data ? T_959 : T_961;
  assign T_966 = T_849 & T_626;
  assign T_967 = T_966 & is_multibeat;
  assign GEN_2 = T_967 ? 1'h1 : w_inflight;
  assign GEN_3 = T_967 ? put_id_mapper_io_req_out_id : w_id;
  assign GEN_4 = tl_wrap_out ? 1'h0 : GEN_2;
  assign GEN_5 = w_inflight ? GEN_4 : GEN_2;
  assign T_970 = io_tl_grant_ready & io_tl_grant_valid;
  assign T_978_0 = 3'h5;
  assign GEN_8 = {{1'd0}, T_978_0};
  assign T_980 = io_tl_grant_bits_g_type == GEN_8;
  assign T_981 = io_tl_grant_bits_g_type == 4'h0;
  assign T_982 = io_tl_grant_bits_is_builtin_type ? T_980 : T_981;
  assign T_984 = T_970 & T_982;
  assign T_989 = tl_cnt_in + 3'h1;
  assign T_990 = T_989[2:0];
  assign GEN_6 = T_984 ? T_990 : tl_cnt_in;
  assign gnt_arb_clk = clk;
  assign gnt_arb_reset = reset;
  assign gnt_arb_io_in_0_valid = io_nasti_r_valid;
  assign gnt_arb_io_in_0_bits_addr_beat = T_1042_addr_beat;
  assign gnt_arb_io_in_0_bits_client_xact_id = T_1042_client_xact_id;
  assign gnt_arb_io_in_0_bits_manager_xact_id = T_1042_manager_xact_id;
  assign gnt_arb_io_in_0_bits_is_builtin_type = T_1042_is_builtin_type;
  assign gnt_arb_io_in_0_bits_g_type = T_1042_g_type;
  assign gnt_arb_io_in_0_bits_data = T_1042_data;
  assign gnt_arb_io_in_0_bits_client_id = GEN_9;
  assign gnt_arb_io_in_1_valid = io_nasti_b_valid;
  assign gnt_arb_io_in_1_bits_addr_beat = T_1103_addr_beat;
  assign gnt_arb_io_in_1_bits_client_xact_id = T_1103_client_xact_id;
  assign gnt_arb_io_in_1_bits_manager_xact_id = T_1103_manager_xact_id;
  assign gnt_arb_io_in_1_bits_is_builtin_type = T_1103_is_builtin_type;
  assign gnt_arb_io_in_1_bits_g_type = T_1103_g_type;
  assign gnt_arb_io_in_1_bits_data = T_1103_data;
  assign gnt_arb_io_in_1_bits_client_id = GEN_10;
  assign gnt_arb_io_out_ready = io_tl_grant_ready;
  assign T_1017 = roq_io_deq_data_subblock ? 3'h4 : 3'h5;
  assign T_1019 = roq_io_deq_data_subblock ? roq_io_deq_data_addr_beat : tl_cnt_in;
  assign T_1042_addr_beat = T_1019;
  assign T_1042_client_xact_id = get_id_mapper_io_resp_in_id;
  assign T_1042_manager_xact_id = 1'h0;
  assign T_1042_is_builtin_type = 1'h1;
  assign T_1042_g_type = {{1'd0}, T_1017};
  assign T_1042_data = io_nasti_r_bits_data;
  assign T_1065 = roq_io_deq_valid == 1'h0;
  assign T_1066 = T_1065 | roq_io_deq_matches;
  assign T_1067 = T_1066 | reset;
  assign T_1069 = T_1067 == 1'h0;
  assign T_1071 = gnt_arb_io_in_0_valid == 1'h0;
  assign T_1072 = T_1071 | get_id_mapper_io_resp_matches;
  assign T_1073 = T_1072 | reset;
  assign T_1075 = T_1073 == 1'h0;
  assign T_1103_addr_beat = 3'h0;
  assign T_1103_client_xact_id = put_id_mapper_io_resp_in_id;
  assign T_1103_manager_xact_id = 1'h0;
  assign T_1103_is_builtin_type = 1'h1;
  assign T_1103_g_type = 4'h3;
  assign T_1103_data = 64'h0;
  assign T_1126 = gnt_arb_io_in_1_valid == 1'h0;
  assign T_1127 = T_1126 | put_id_mapper_io_resp_matches;
  assign T_1128 = T_1127 | reset;
  assign T_1130 = T_1128 == 1'h0;
  assign T_1132 = io_nasti_r_valid == 1'h0;
  assign T_1134 = io_nasti_r_bits_resp == 2'h0;
  assign T_1135 = T_1132 | T_1134;
  assign T_1136 = T_1135 | reset;
  assign T_1138 = T_1136 == 1'h0;
  assign T_1140 = io_nasti_b_valid == 1'h0;
  assign T_1142 = io_nasti_b_bits_resp == 2'h0;
  assign T_1143 = T_1140 | T_1142;
  assign T_1144 = T_1143 | reset;
  assign T_1146 = T_1144 == 1'h0;
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
      if(T_627) begin
        tl_cnt_out <= T_633;
      end
    end
    if(reset) begin
      w_inflight <= 1'h0;
    end else begin
      if(w_inflight) begin
        if(tl_wrap_out) begin
          w_inflight <= 1'h0;
        end else begin
          if(T_967) begin
            w_inflight <= 1'h1;
          end
        end
      end else begin
        if(T_967) begin
          w_inflight <= 1'h1;
        end
      end
    end
    if(reset) begin
      w_id <= 5'h0;
    end else begin
      if(T_967) begin
        w_id <= put_id_mapper_io_req_out_id;
      end
    end
    if(reset) begin
      nasti_cnt_out <= 3'h0;
    end else begin
      if(T_663) begin
        nasti_cnt_out <= T_669;
      end
    end
    if(reset) begin
      tl_cnt_in <= 3'h0;
    end else begin
      if(T_984) begin
        tl_cnt_in <= T_990;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_1069) begin
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
        if (T_1069) begin
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
        if (T_1075) begin
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
        if (T_1075) begin
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
        if (T_1130) begin
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
        if (T_1130) begin
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
        if (T_1138) begin
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
        if (T_1138) begin
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
        if (T_1146) begin
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
        if (T_1146) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
