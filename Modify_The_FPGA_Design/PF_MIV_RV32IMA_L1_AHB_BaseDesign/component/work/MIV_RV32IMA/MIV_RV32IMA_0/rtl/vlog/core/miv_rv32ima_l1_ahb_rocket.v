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
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ROCKET(
  input         clock,
  input         reset,
  input         io_hartid,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  output        io_imem_req_valid,
  output [31:0] io_imem_req_bits_pc,
  output        io_imem_req_bits_speculative,
  output        io_imem_sfence_valid,
  output        io_imem_sfence_bits_rs1,
  output        io_imem_resp_ready,
  input         io_imem_resp_valid,
  input         io_imem_resp_bits_btb_valid,
  input         io_imem_resp_bits_btb_bits_taken,
  input         io_imem_resp_bits_btb_bits_bridx,
  input  [31:0] io_imem_resp_bits_pc,
  input  [31:0] io_imem_resp_bits_data,
  input         io_imem_resp_bits_xcpt_pf_inst,
  input         io_imem_resp_bits_xcpt_ae_inst,
  input         io_imem_resp_bits_replay,
  output        io_imem_flush_icache,
  input         io_dmem_req_ready,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [5:0]  io_dmem_req_bits_tag,
  output [4:0]  io_dmem_req_bits_cmd,
  output [2:0]  io_dmem_req_bits_typ,
  output        io_dmem_req_bits_phys,
  output        io_dmem_s1_kill,
  output [31:0] io_dmem_s1_data_data,
  output [3:0]  io_dmem_s1_data_mask,
  input         io_dmem_s2_nack,
  input         io_dmem_resp_valid,
  input  [5:0]  io_dmem_resp_bits_tag,
  input  [31:0] io_dmem_resp_bits_data,
  input         io_dmem_resp_bits_replay,
  input         io_dmem_resp_bits_has_data,
  input  [31:0] io_dmem_resp_bits_data_word_bypass,
  input         io_dmem_replay_next,
  input         io_dmem_s2_xcpt_ma_ld,
  input         io_dmem_s2_xcpt_ma_st,
  input         io_dmem_s2_xcpt_pf_ld,
  input         io_dmem_s2_xcpt_pf_st,
  input         io_dmem_s2_xcpt_ae_ld,
  input         io_dmem_s2_xcpt_ae_st,
  output        io_dmem_invalidate_lr,
  input         io_dmem_ordered,
  output [21:0] io_ptw_ptbr_ppn,
  output        io_ptw_sfence_valid,
  output        io_ptw_sfence_bits_rs1,
  output [1:0]  io_ptw_status_dprv,
  output [1:0]  io_ptw_status_prv,
  output        io_ptw_status_mxr,
  output        io_ptw_status_sum,
  input  [31:0] io_fpu_store_data,
  input  [31:0] io_fpu_toint_data,
  input         io_fpu_nack_mem,
  input         io_fpu_dec_wen,
  input         io_fpu_dec_ren1,
  input         io_fpu_dec_ren2,
  input         io_fpu_dec_ren3,
  input         io_rocc_cmd_ready,
  input         io_rocc_interrupt
);
  reg  ex_ctrl_fp;
  reg [31:0] _RAND_0;
  reg  ex_ctrl_rocc;
  reg [31:0] _RAND_1;
  reg  ex_ctrl_branch;
  reg [31:0] _RAND_2;
  reg  ex_ctrl_jal;
  reg [31:0] _RAND_3;
  reg  ex_ctrl_jalr;
  reg [31:0] _RAND_4;
  reg  ex_ctrl_rxs2;
  reg [31:0] _RAND_5;
  reg [1:0] ex_ctrl_sel_alu2;
  reg [31:0] _RAND_6;
  reg [1:0] ex_ctrl_sel_alu1;
  reg [31:0] _RAND_7;
  reg [2:0] ex_ctrl_sel_imm;
  reg [31:0] _RAND_8;
  reg [3:0] ex_ctrl_alu_fn;
  reg [31:0] _RAND_9;
  reg  ex_ctrl_mem;
  reg [31:0] _RAND_10;
  reg [4:0] ex_ctrl_mem_cmd;
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_mem_type;
  reg [31:0] _RAND_12;
  reg  ex_ctrl_wfd;
  reg [31:0] _RAND_13;
  reg  ex_ctrl_div;
  reg [31:0] _RAND_14;
  reg  ex_ctrl_wxd;
  reg [31:0] _RAND_15;
  reg [2:0] ex_ctrl_csr;
  reg [31:0] _RAND_16;
  reg  ex_ctrl_fence_i;
  reg [31:0] _RAND_17;
  reg  mem_ctrl_fp;
  reg [31:0] _RAND_18;
  reg  mem_ctrl_rocc;
  reg [31:0] _RAND_19;
  reg  mem_ctrl_branch;
  reg [31:0] _RAND_20;
  reg  mem_ctrl_jal;
  reg [31:0] _RAND_21;
  reg  mem_ctrl_jalr;
  reg [31:0] _RAND_22;
  reg  mem_ctrl_mem;
  reg [31:0] _RAND_23;
  reg [2:0] mem_ctrl_mem_type;
  reg [31:0] _RAND_24;
  reg  mem_ctrl_wfd;
  reg [31:0] _RAND_25;
  reg  mem_ctrl_div;
  reg [31:0] _RAND_26;
  reg  mem_ctrl_wxd;
  reg [31:0] _RAND_27;
  reg [2:0] mem_ctrl_csr;
  reg [31:0] _RAND_28;
  reg  mem_ctrl_fence_i;
  reg [31:0] _RAND_29;
  reg  wb_ctrl_rocc;
  reg [31:0] _RAND_30;
  reg  wb_ctrl_mem;
  reg [31:0] _RAND_31;
  reg [2:0] wb_ctrl_mem_type;
  reg [31:0] _RAND_32;
  reg  wb_ctrl_wfd;
  reg [31:0] _RAND_33;
  reg  wb_ctrl_div;
  reg [31:0] _RAND_34;
  reg  wb_ctrl_wxd;
  reg [31:0] _RAND_35;
  reg [2:0] wb_ctrl_csr;
  reg [31:0] _RAND_36;
  reg  wb_ctrl_fence_i;
  reg [31:0] _RAND_37;
  reg  ex_reg_xcpt_interrupt;
  reg [31:0] _RAND_38;
  reg  ex_reg_valid;
  reg [31:0] _RAND_39;
  reg  ex_reg_rvc;
  reg [31:0] _RAND_40;
  reg  ex_reg_xcpt;
  reg [31:0] _RAND_41;
  reg  ex_reg_flush_pipe;
  reg [31:0] _RAND_42;
  reg  ex_reg_load_use;
  reg [31:0] _RAND_43;
  reg [31:0] ex_cause;
  reg [31:0] _RAND_44;
  reg  ex_reg_replay;
  reg [31:0] _RAND_45;
  reg [31:0] ex_reg_pc;
  reg [31:0] _RAND_46;
  reg [31:0] ex_reg_inst;
  reg [31:0] _RAND_47;
  reg [31:0] ex_reg_cinst;
  reg [31:0] _RAND_48;
  reg  mem_reg_xcpt_interrupt;
  reg [31:0] _RAND_49;
  reg  mem_reg_valid;
  reg [31:0] _RAND_50;
  reg  mem_reg_rvc;
  reg [31:0] _RAND_51;
  reg  mem_reg_xcpt;
  reg [31:0] _RAND_52;
  reg  mem_reg_replay;
  reg [31:0] _RAND_53;
  reg  mem_reg_flush_pipe;
  reg [31:0] _RAND_54;
  reg [31:0] mem_reg_cause;
  reg [31:0] _RAND_55;
  reg  mem_reg_slow_bypass;
  reg [31:0] _RAND_56;
  reg  mem_reg_load;
  reg [31:0] _RAND_57;
  reg  mem_reg_store;
  reg [31:0] _RAND_58;
  reg  mem_reg_sfence;
  reg [31:0] _RAND_59;
  reg [31:0] mem_reg_pc;
  reg [31:0] _RAND_60;
  reg [31:0] mem_reg_inst;
  reg [31:0] _RAND_61;
  reg [31:0] mem_reg_cinst;
  reg [31:0] _RAND_62;
  reg [31:0] bypass_mux_1;
  reg [31:0] _RAND_63;
  reg [31:0] mem_reg_rs2;
  reg [31:0] _RAND_64;
  reg  wb_reg_valid;
  reg [31:0] _RAND_65;
  reg  wb_reg_xcpt;
  reg [31:0] _RAND_66;
  reg  wb_reg_replay;
  reg [31:0] _RAND_67;
  reg  wb_reg_flush_pipe;
  reg [31:0] _RAND_68;
  reg [31:0] wb_reg_cause;
  reg [31:0] _RAND_69;
  reg  wb_reg_sfence;
  reg [31:0] _RAND_70;
  reg [31:0] wb_reg_pc;
  reg [31:0] _RAND_71;
  reg [31:0] wb_reg_inst;
  reg [31:0] _RAND_72;
  reg [31:0] wb_reg_cinst;
  reg [31:0] _RAND_73;
  reg [31:0] bypass_mux_2;
  reg [31:0] _RAND_74;
  wire  take_pc;
  wire  ibuf_clock;
  wire  ibuf_io_imem_ready;
  wire  ibuf_io_imem_valid;
  wire  ibuf_io_imem_bits_btb_valid;
  wire  ibuf_io_imem_bits_btb_bits_taken;
  wire  ibuf_io_imem_bits_btb_bits_bridx;
  wire [31:0] ibuf_io_imem_bits_pc;
  wire [31:0] ibuf_io_imem_bits_data;
  wire  ibuf_io_imem_bits_xcpt_pf_inst;
  wire  ibuf_io_imem_bits_xcpt_ae_inst;
  wire  ibuf_io_imem_bits_replay;
  wire [31:0] ibuf_io_pc;
  wire  ibuf_io_inst_0_ready;
  wire  ibuf_io_inst_0_valid;
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst;
  wire  ibuf_io_inst_0_bits_replay;
  wire  ibuf_io_inst_0_bits_rvc;
  wire [31:0] ibuf_io_inst_0_bits_inst_bits;
  wire [4:0] ibuf_io_inst_0_bits_inst_rd;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3;
  wire [31:0] ibuf_io_inst_0_bits_raw;
  wire [31:0] ibuf_io_inst_0_bits_cinst;
  wire [31:0] _T_666;
  wire  _T_668;
  wire [31:0] _T_670;
  wire  _T_672;
  wire [31:0] _T_674;
  wire  _T_676;
  wire [31:0] _T_678;
  wire  _T_680;
  wire [31:0] _T_682;
  wire  _T_684;
  wire [31:0] _T_686;
  wire  _T_688;
  wire [31:0] _T_690;
  wire  _T_692;
  wire [31:0] _T_694;
  wire  _T_696;
  wire [31:0] _T_698;
  wire  _T_700;
  wire [31:0] _T_702;
  wire  _T_704;
  wire  _T_708;
  wire [31:0] _T_710;
  wire  _T_712;
  wire  _T_716;
  wire [31:0] _T_718;
  wire  _T_720;
  wire  _T_724;
  wire [31:0] _T_726;
  wire  _T_728;
  wire [31:0] _T_730;
  wire  _T_732;
  wire  _T_734;
  wire  _T_736;
  wire  _T_738;
  wire [31:0] _T_740;
  wire  _T_742;
  wire [31:0] _T_744;
  wire  _T_746;
  wire [31:0] _T_748;
  wire  _T_750;
  wire  _T_754;
  wire  _T_757;
  wire  _T_758;
  wire  _T_759;
  wire  _T_760;
  wire  _T_761;
  wire  _T_762;
  wire  _T_763;
  wire  _T_764;
  wire  _T_765;
  wire  _T_766;
  wire  _T_767;
  wire  _T_768;
  wire  _T_769;
  wire  _T_770;
  wire  _T_771;
  wire  _T_772;
  wire  _T_773;
  wire  _T_774;
  wire  _T_775;
  wire  _T_776;
  wire  _T_777;
  wire  _T_778;
  wire  _T_779;
  wire [31:0] _T_783;
  wire  _T_785;
  wire [31:0] _T_789;
  wire  _T_791;
  wire [31:0] _T_795;
  wire  _T_797;
  wire [31:0] _T_801;
  wire  _T_803;
  wire [31:0] _T_805;
  wire  _T_807;
  wire [31:0] _T_809;
  wire  _T_811;
  wire  _T_814;
  wire  _T_815;
  wire [31:0] _T_817;
  wire  _T_819;
  wire [31:0] _T_821;
  wire  _T_823;
  wire [31:0] _T_825;
  wire  _T_827;
  wire [31:0] _T_829;
  wire  _T_831;
  wire  _T_834;
  wire  _T_835;
  wire  _T_836;
  wire [31:0] _T_838;
  wire  _T_840;
  wire [31:0] _T_842;
  wire  _T_844;
  wire [31:0] _T_846;
  wire  _T_848;
  wire [31:0] _T_850;
  wire  _T_852;
  wire  _T_855;
  wire  _T_856;
  wire  _T_857;
  wire  _T_858;
  wire  _T_862;
  wire [31:0] _T_864;
  wire  _T_866;
  wire  _T_869;
  wire  _T_870;
  wire [1:0] _T_871;
  wire [31:0] _T_873;
  wire  _T_875;
  wire  _T_878;
  wire  _T_879;
  wire  _T_880;
  wire [31:0] _T_882;
  wire  _T_884;
  wire  _T_887;
  wire [1:0] _T_888;
  wire [31:0] _T_890;
  wire  _T_892;
  wire  _T_896;
  wire  _T_899;
  wire  _T_903;
  wire  _T_906;
  wire  _T_910;
  wire [31:0] _T_912;
  wire  _T_914;
  wire  _T_917;
  wire  _T_918;
  wire [1:0] _T_919;
  wire [2:0] _T_920;
  wire [31:0] _T_928;
  wire  _T_930;
  wire [31:0] _T_932;
  wire  _T_934;
  wire [31:0] _T_936;
  wire  _T_938;
  wire  _T_941;
  wire  _T_942;
  wire [31:0] _T_944;
  wire  _T_946;
  wire [31:0] _T_948;
  wire  _T_950;
  wire [31:0] _T_952;
  wire  _T_954;
  wire [31:0] _T_956;
  wire  _T_958;
  wire [31:0] _T_960;
  wire  _T_962;
  wire [31:0] _T_964;
  wire  _T_966;
  wire  _T_969;
  wire  _T_970;
  wire  _T_971;
  wire  _T_972;
  wire  _T_973;
  wire [31:0] _T_975;
  wire  _T_977;
  wire [31:0] _T_979;
  wire  _T_981;
  wire [31:0] _T_983;
  wire  _T_985;
  wire [31:0] _T_987;
  wire  _T_989;
  wire  _T_992;
  wire  _T_993;
  wire  _T_994;
  wire [31:0] _T_996;
  wire  _T_998;
  wire [31:0] _T_1000;
  wire  _T_1002;
  wire  _T_1005;
  wire  _T_1006;
  wire  _T_1007;
  wire [1:0] _T_1008;
  wire [1:0] _T_1009;
  wire [3:0] _T_1010;
  wire [31:0] _T_1012;
  wire  _T_1014;
  wire [31:0] _T_1016;
  wire  _T_1018;
  wire  _T_1021;
  wire  _T_1022;
  wire  _T_1023;
  wire  _T_1024;
  wire  _T_1025;
  wire  _T_1026;
  wire [31:0] _T_1028;
  wire  _T_1030;
  wire [31:0] _T_1032;
  wire  _T_1034;
  wire [31:0] _T_1036;
  wire  _T_1038;
  wire [31:0] _T_1040;
  wire  _T_1042;
  wire  _T_1045;
  wire  _T_1046;
  wire  _T_1047;
  wire [31:0] _T_1049;
  wire  _T_1051;
  wire [31:0] _T_1053;
  wire  _T_1055;
  wire  _T_1058;
  wire [31:0] _T_1060;
  wire  _T_1062;
  wire [31:0] _T_1064;
  wire  _T_1066;
  wire [31:0] _T_1068;
  wire  _T_1070;
  wire  _T_1073;
  wire  _T_1074;
  wire  _T_1075;
  wire [31:0] _T_1077;
  wire  _T_1079;
  wire [1:0] _T_1083;
  wire [1:0] _T_1084;
  wire [2:0] _T_1085;
  wire [4:0] _T_1086;
  wire [31:0] _T_1088;
  wire  _T_1090;
  wire [31:0] _T_1094;
  wire  _T_1096;
  wire [31:0] _T_1100;
  wire  _T_1102;
  wire [1:0] _T_1105;
  wire [2:0] _T_1106;
  wire [31:0] _T_1112;
  wire  _T_1114;
  wire  _T_1120;
  wire  _T_1124;
  wire [31:0] _T_1126;
  wire  _T_1128;
  wire  _T_1132;
  wire [31:0] _T_1134;
  wire  _T_1136;
  wire  _T_1139;
  wire  _T_1140;
  wire  _T_1141;
  wire  _T_1142;
  wire  _T_1143;
  wire  _T_1144;
  wire [31:0] _T_1146;
  wire  _T_1148;
  wire  _T_1154;
  wire [31:0] _T_1158;
  wire  _T_1160;
  wire [1:0] _T_1163;
  wire [2:0] _T_1164;
  wire [31:0] _T_1166;
  wire  _T_1168;
  wire [31:0] _T_1172;
  wire  _T_1174;
  wire [31:0] _T_1178;
  wire  _T_1180;
  reg  id_reg_fence;
  reg [31:0] _RAND_75;
  reg [31:0] _T_1189 [0:30];
  reg [31:0] _RAND_76;
  wire [31:0] _T_1189__T_1198_data;
  wire [4:0] _T_1189__T_1198_addr;
  reg [31:0] _RAND_77;
  wire [31:0] _T_1189__T_1208_data;
  wire [4:0] _T_1189__T_1208_addr;
  reg [31:0] _RAND_78;
  wire [31:0] _T_1189__T_2109_data;
  wire [4:0] _T_1189__T_2109_addr;
  wire  _T_1189__T_2109_mask;
  wire  _T_1189__T_2109_en;
  wire  _T_1193;
  wire [4:0] _T_1196;
  wire [4:0] _T_1197;
  wire [31:0] _T_1199;
  wire [4:0] _T_1206;
  wire [4:0] _T_1207;
  wire [31:0] _T_1209;
  wire  csr_clock;
  wire  csr_reset;
  wire  csr_io_interrupts_debug;
  wire  csr_io_interrupts_mtip;
  wire  csr_io_interrupts_msip;
  wire  csr_io_interrupts_meip;
  wire  csr_io_hartid;
  wire [11:0] csr_io_rw_addr;
  wire [2:0] csr_io_rw_cmd;
  wire [31:0] csr_io_rw_rdata;
  wire [31:0] csr_io_rw_wdata;
  wire [11:0] csr_io_decode_csr;
  wire  csr_io_decode_read_illegal;
  wire  csr_io_decode_write_illegal;
  wire  csr_io_decode_write_flush;
  wire  csr_io_decode_system_illegal;
  wire  csr_io_csr_stall;
  wire  csr_io_eret;
  wire  csr_io_singleStep;
  wire  csr_io_status_debug;
  wire [31:0] csr_io_status_isa;
  wire [1:0] csr_io_status_dprv;
  wire [1:0] csr_io_status_prv;
  wire  csr_io_status_sd;
  wire [26:0] csr_io_status_zero2;
  wire [1:0] csr_io_status_sxl;
  wire [1:0] csr_io_status_uxl;
  wire  csr_io_status_sd_rv32;
  wire [7:0] csr_io_status_zero1;
  wire  csr_io_status_tsr;
  wire  csr_io_status_tw;
  wire  csr_io_status_tvm;
  wire  csr_io_status_mxr;
  wire  csr_io_status_sum;
  wire  csr_io_status_mprv;
  wire [1:0] csr_io_status_xs;
  wire [1:0] csr_io_status_fs;
  wire [1:0] csr_io_status_mpp;
  wire [1:0] csr_io_status_hpp;
  wire  csr_io_status_spp;
  wire  csr_io_status_mpie;
  wire  csr_io_status_hpie;
  wire  csr_io_status_spie;
  wire  csr_io_status_upie;
  wire  csr_io_status_mie;
  wire  csr_io_status_hie;
  wire  csr_io_status_sie;
  wire  csr_io_status_uie;
  wire [21:0] csr_io_ptbr_ppn;
  wire [31:0] csr_io_evec;
  wire  csr_io_exception;
  wire  csr_io_retire;
  wire [31:0] csr_io_cause;
  wire [31:0] csr_io_pc;
  wire [31:0] csr_io_badaddr;
  wire [31:0] csr_io_time;
  wire  csr_io_rocc_interrupt;
  wire  csr_io_interrupt;
  wire [31:0] csr_io_interrupt_cause;
  wire  csr_io_bp_0_control_action;
  wire  csr_io_bp_0_control_chain;
  wire [1:0] csr_io_bp_0_control_tmatch;
  wire  csr_io_bp_0_control_m;
  wire  csr_io_bp_0_control_h;
  wire  csr_io_bp_0_control_s;
  wire  csr_io_bp_0_control_u;
  wire  csr_io_bp_0_control_x;
  wire  csr_io_bp_0_control_w;
  wire  csr_io_bp_0_control_r;
  wire [31:0] csr_io_bp_0_address;
  wire  csr_io_bp_1_control_action;
  wire  csr_io_bp_1_control_chain;
  wire [1:0] csr_io_bp_1_control_tmatch;
  wire  csr_io_bp_1_control_m;
  wire  csr_io_bp_1_control_h;
  wire  csr_io_bp_1_control_s;
  wire  csr_io_bp_1_control_u;
  wire  csr_io_bp_1_control_x;
  wire  csr_io_bp_1_control_w;
  wire  csr_io_bp_1_control_r;
  wire [31:0] csr_io_bp_1_address;
  wire  _T_1303;
  wire  _T_1304;
  wire  _T_1305;
  wire  _T_1306;
  wire  id_csr_en;
  wire  id_system_insn;
  wire  id_csr_ren;
  wire [2:0] id_csr;
  wire  _T_1317;
  wire  id_sfence;
  wire  _T_1318;
  wire  _T_1320;
  wire  _T_1321;
  wire  _T_1322;
  wire  id_csr_flush;
  wire  _T_1324;
  wire  _T_1325;
  wire  _T_1327;
  wire  _T_1328;
  wire  _T_1329;
  wire  _T_1330;
  wire  _T_1332;
  wire  _T_1333;
  wire  _T_1334;
  wire  _T_1343;
  wire  _T_1345;
  wire  _T_1346;
  wire  _T_1347;
  wire  _T_1352;
  wire  _T_1353;
  wire  _T_1354;
  wire  _T_1355;
  wire  _T_1357;
  wire  _T_1359;
  wire  _T_1360;
  wire  id_illegal_insn;
  wire  id_amo_aq;
  wire  id_amo_rl;
  wire  _T_1361;
  wire  id_fence_next;
  wire  _T_1363;
  wire  id_mem_busy;
  wire  _T_1365;
  wire  _GEN_0;
  wire  _T_1372;
  wire  _T_1375;
  wire  _T_1376;
  wire  _T_1378;
  wire  _T_1379;
  wire  _T_1380;
  wire  bpu_io_status_debug;
  wire [1:0] bpu_io_status_prv;
  wire  bpu_io_bp_0_control_action;
  wire  bpu_io_bp_0_control_chain;
  wire [1:0] bpu_io_bp_0_control_tmatch;
  wire  bpu_io_bp_0_control_m;
  wire  bpu_io_bp_0_control_h;
  wire  bpu_io_bp_0_control_s;
  wire  bpu_io_bp_0_control_u;
  wire  bpu_io_bp_0_control_x;
  wire  bpu_io_bp_0_control_w;
  wire  bpu_io_bp_0_control_r;
  wire [31:0] bpu_io_bp_0_address;
  wire  bpu_io_bp_1_control_action;
  wire  bpu_io_bp_1_control_chain;
  wire [1:0] bpu_io_bp_1_control_tmatch;
  wire  bpu_io_bp_1_control_m;
  wire  bpu_io_bp_1_control_h;
  wire  bpu_io_bp_1_control_s;
  wire  bpu_io_bp_1_control_u;
  wire  bpu_io_bp_1_control_x;
  wire  bpu_io_bp_1_control_w;
  wire  bpu_io_bp_1_control_r;
  wire [31:0] bpu_io_bp_1_address;
  wire [31:0] bpu_io_pc;
  wire [31:0] bpu_io_ea;
  wire  bpu_io_xcpt_if;
  wire  bpu_io_xcpt_ld;
  wire  bpu_io_xcpt_st;
  wire  bpu_io_debug_if;
  wire  bpu_io_debug_ld;
  wire  bpu_io_debug_st;
  wire  _T_1390;
  wire  _T_1391;
  wire  _T_1392;
  wire  _T_1393;
  wire  _T_1394;
  wire  _T_1395;
  wire  id_xcpt;
  wire [1:0] _T_1396;
  wire [3:0] _T_1397;
  wire [3:0] _T_1398;
  wire [3:0] _T_1399;
  wire [3:0] _T_1400;
  wire [3:0] _T_1401;
  wire [31:0] id_cause;
  wire [4:0] ex_waddr;
  wire [4:0] mem_waddr;
  wire [4:0] wb_waddr;
  wire  _T_1404;
  wire  _T_1405;
  wire  _T_1407;
  wire  _T_1408;
  wire  _T_1410;
  wire  _T_1411;
  wire  id_bypass_src_0_1;
  wire  _T_1412;
  wire  id_bypass_src_0_2;
  wire  id_bypass_src_0_3;
  wire  _T_1414;
  wire  _T_1415;
  wire  id_bypass_src_1_1;
  wire  _T_1416;
  wire  id_bypass_src_1_2;
  wire  id_bypass_src_1_3;
  reg  ex_reg_rs_bypass_0;
  reg [31:0] _RAND_79;
  reg  ex_reg_rs_bypass_1;
  reg [31:0] _RAND_80;
  reg [1:0] ex_reg_rs_lsb_0;
  reg [31:0] _RAND_81;
  reg [1:0] ex_reg_rs_lsb_1;
  reg [31:0] _RAND_82;
  reg [29:0] ex_reg_rs_msb_0;
  reg [31:0] _RAND_83;
  reg [29:0] ex_reg_rs_msb_1;
  reg [31:0] _RAND_84;
  wire  _T_1440;
  wire [31:0] _T_1441;
  wire  _T_1443;
  wire [31:0] _T_1444;
  wire  _T_1446;
  wire [31:0] _T_1447;
  wire [31:0] _T_1448;
  wire [31:0] ex_rs_0;
  wire  _T_1450;
  wire [31:0] _T_1451;
  wire  _T_1453;
  wire [31:0] _T_1454;
  wire  _T_1456;
  wire [31:0] _T_1457;
  wire [31:0] _T_1458;
  wire [31:0] ex_rs_1;
  wire  _T_1460;
  wire  _T_1462;
  wire  _T_1463;
  wire  _T_1464;
  wire  _T_1466;
  wire [10:0] _T_1467;
  wire [10:0] _T_1468;
  wire [10:0] _T_1469;
  wire  _T_1471;
  wire  _T_1473;
  wire  _T_1474;
  wire [7:0] _T_1475;
  wire [7:0] _T_1476;
  wire [7:0] _T_1477;
  wire  _T_1482;
  wire  _T_1485;
  wire  _T_1486;
  wire  _T_1487;
  wire  _T_1489;
  wire  _T_1490;
  wire  _T_1491;
  wire  _T_1492;
  wire  _T_1493;
  wire  _T_1494;
  wire [5:0] _T_1501;
  wire [5:0] _T_1502;
  wire  _T_1507;
  wire  _T_1510;
  wire [3:0] _T_1511;
  wire [3:0] _T_1514;
  wire [3:0] _T_1515;
  wire [3:0] _T_1516;
  wire [3:0] _T_1517;
  wire [3:0] _T_1518;
  wire  _T_1523;
  wire  _T_1527;
  wire  _T_1529;
  wire  _T_1530;
  wire  _T_1531;
  wire [9:0] _T_1532;
  wire [10:0] _T_1533;
  wire  _T_1534;
  wire [7:0] _T_1535;
  wire [8:0] _T_1536;
  wire [10:0] _T_1537;
  wire  _T_1538;
  wire [11:0] _T_1539;
  wire [20:0] _T_1540;
  wire [31:0] _T_1541;
  wire [31:0] ex_imm;
  wire [31:0] _T_1544;
  wire [31:0] _T_1546;
  wire  _T_1547;
  wire [31:0] _T_1548;
  wire  _T_1549;
  wire [31:0] ex_op1;
  wire [31:0] _T_1552;
  wire [3:0] _T_1557;
  wire  _T_1558;
  wire [3:0] _T_1559;
  wire  _T_1560;
  wire [31:0] _T_1561;
  wire  _T_1562;
  wire [31:0] ex_op2;
  wire [3:0] alu_io_fn;
  wire [31:0] alu_io_in2;
  wire [31:0] alu_io_in1;
  wire [31:0] alu_io_out;
  wire [31:0] alu_io_adder_out;
  wire  alu_io_cmp_out;
  wire [31:0] _T_1563;
  wire [31:0] _T_1564;
  wire  div_clock;
  wire  div_reset;
  wire  div_io_req_ready;
  wire  div_io_req_valid;
  wire [3:0] div_io_req_bits_fn;
  wire [31:0] div_io_req_bits_in1;
  wire [31:0] div_io_req_bits_in2;
  wire [4:0] div_io_req_bits_tag;
  wire  div_io_kill;
  wire  div_io_resp_ready;
  wire  div_io_resp_valid;
  wire [31:0] div_io_resp_bits_data;
  wire [4:0] div_io_resp_bits_tag;
  wire  _T_1565;
  wire  _T_1567;
  wire  _T_1569;
  wire  _T_1570;
  wire  _T_1571;
  wire  _T_1574;
  wire  _T_1578;
  wire  _GEN_1;
  wire [1:0] _T_1586;
  wire  _T_1588;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire  _GEN_4;
  wire [1:0] _T_1592;
  wire  _T_1594;
  wire  _T_1595;
  wire [1:0] _GEN_5;
  wire [1:0] _GEN_6;
  wire [3:0] _GEN_7;
  wire [1:0] _GEN_9;
  wire [1:0] _GEN_10;
  wire  _GEN_11;
  wire  _T_1598;
  wire  _T_1600;
  wire  _T_1602;
  wire [1:0] _T_1603;
  wire [2:0] _GEN_12;
  wire  _T_1604;
  wire  _T_1605;
  wire  _T_1606;
  wire [1:0] _T_1611;
  wire [1:0] _T_1612;
  wire [1:0] _T_1613;
  wire  _T_1615;
  wire  _T_1616;
  wire [1:0] _T_1617;
  wire [29:0] _T_1618;
  wire [1:0] _GEN_13;
  wire [29:0] _GEN_14;
  wire  _T_1619;
  wire  _T_1620;
  wire  _T_1621;
  wire [1:0] _T_1626;
  wire [1:0] _T_1627;
  wire [1:0] _T_1628;
  wire  _T_1630;
  wire  _T_1631;
  wire [1:0] _T_1632;
  wire [29:0] _T_1633;
  wire [1:0] _GEN_15;
  wire [29:0] _GEN_16;
  wire [15:0] _T_1634;
  wire [31:0] _T_1635;
  wire [1:0] _T_1637;
  wire [29:0] _T_1638;
  wire  _GEN_17;
  wire [1:0] _GEN_18;
  wire [29:0] _GEN_19;
  wire  _GEN_21;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire  _GEN_26;
  wire [1:0] _GEN_28;
  wire [1:0] _GEN_29;
  wire [2:0] _GEN_30;
  wire [3:0] _GEN_32;
  wire  _GEN_33;
  wire [4:0] _GEN_34;
  wire [2:0] _GEN_35;
  wire  _GEN_39;
  wire  _GEN_40;
  wire  _GEN_41;
  wire [2:0] _GEN_42;
  wire  _GEN_43;
  wire  _GEN_47;
  wire  _GEN_48;
  wire  _GEN_49;
  wire  _GEN_50;
  wire  _GEN_51;
  wire [1:0] _GEN_52;
  wire [29:0] _GEN_53;
  wire  _GEN_54;
  wire [1:0] _GEN_55;
  wire [29:0] _GEN_56;
  wire  _T_1641;
  wire  _T_1642;
  wire [31:0] _GEN_57;
  wire [31:0] _GEN_58;
  wire [31:0] _GEN_59;
  wire [31:0] _GEN_60;
  wire  _T_1643;
  wire  ex_pc_valid;
  wire  _T_1645;
  wire  wb_dcache_miss;
  wire  _T_1647;
  wire  _T_1648;
  wire  _T_1650;
  wire  _T_1651;
  wire  replay_ex_structural;
  wire  replay_ex_load_use;
  wire  _T_1652;
  wire  _T_1653;
  wire  replay_ex;
  wire  _T_1654;
  wire  _T_1656;
  wire  ctrl_killx;
  wire  _T_1658;
  wire  _T_1672;
  wire  _T_1673;
  wire  _T_1674;
  wire  _T_1675;
  wire  _T_1678;
  wire  _T_1679;
  wire  _T_1680;
  wire  ex_slow_bypass;
  wire  ex_xcpt;
  wire  _T_1685;
  wire  mem_pc_valid;
  wire  mem_br_taken;
  wire [31:0] _T_1686;
  wire  _T_1687;
  wire  _T_1692;
  wire  _T_1693;
  wire [10:0] _T_1699;
  wire [7:0] _T_1705;
  wire [7:0] _T_1706;
  wire [7:0] _T_1707;
  wire  _T_1716;
  wire  _T_1717;
  wire  _T_1720;
  wire  _T_1721;
  wire [5:0] _T_1731;
  wire [3:0] _T_1741;
  wire [3:0] _T_1745;
  wire [9:0] _T_1762;
  wire [10:0] _T_1763;
  wire  _T_1764;
  wire [7:0] _T_1765;
  wire [8:0] _T_1766;
  wire [10:0] _T_1767;
  wire  _T_1768;
  wire [11:0] _T_1769;
  wire [20:0] _T_1770;
  wire [31:0] _T_1771;
  wire [31:0] _T_1772;
  wire [9:0] _T_1847;
  wire [10:0] _T_1848;
  wire  _T_1849;
  wire [7:0] _T_1850;
  wire [8:0] _T_1851;
  wire [20:0] _T_1855;
  wire [31:0] _T_1856;
  wire [31:0] _T_1857;
  wire [3:0] _T_1860;
  wire [31:0] _T_1861;
  wire [31:0] _T_1862;
  wire [32:0] _T_1863;
  wire [31:0] _T_1864;
  wire [31:0] mem_br_target;
  wire  _T_1865;
  wire [31:0] _T_1866;
  wire [31:0] _T_1867;
  wire [31:0] _T_1869;
  wire [31:0] _T_1870;
  wire [31:0] mem_npc;
  wire  _T_1879;
  wire  _T_1880;
  wire  _T_1882;
  wire  mem_npc_misaligned;
  wire  _T_1884;
  wire  _T_1885;
  wire  _T_1886;
  wire [31:0] _T_1888;
  wire [31:0] mem_int_wdata;
  wire  _T_1891;
  wire  mem_cfi_taken;
  wire  _T_1896;
  wire  _T_1897;
  wire  _T_1899;
  wire  _T_1902;
  wire  _T_1905;
  wire  _T_1908;
  wire  _T_1909;
  wire  _GEN_70;
  wire  _T_1912;
  wire  _T_1913;
  wire  _T_1915;
  wire  _T_1917;
  wire  _T_1918;
  wire  _T_1921;
  wire  _T_1926;
  wire  _T_1927;
  wire  _T_1928;
  wire  _T_1929;
  wire  _T_1930;
  wire  _T_1931;
  wire  _T_1932;
  wire  _T_1938;
  wire  _T_1939;
  wire  _T_1940;
  wire  _T_1941;
  wire  _T_1942;
  wire  _T_1943;
  wire  _T_1944;
  wire  _T_1945;
  wire  _T_1946;
  wire  _T_1947;
  wire  _T_1948;
  wire  _T_1949;
  wire  _T_1951;
  wire  _T_1953;
  wire  _T_1954;
  wire  _T_1957;
  wire  _T_1984;
  wire  _T_1985;
  wire  _T_1986;
  wire  _T_1988;
  wire [2:0] _T_1990;
  wire [1:0] _T_1992;
  wire  _T_1994;
  wire [7:0] _T_1995;
  wire [15:0] _T_1996;
  wire [31:0] _T_1997;
  wire  _T_1999;
  wire [15:0] _T_2000;
  wire [31:0] _T_2001;
  wire [31:0] _T_2002;
  wire [31:0] _T_2003;
  wire [31:0] _GEN_71;
  wire  _T_2004;
  wire  _GEN_72;
  wire  _GEN_73;
  wire  _GEN_75;
  wire  _GEN_76;
  wire  _GEN_77;
  wire  _GEN_78;
  wire  _GEN_79;
  wire  _GEN_87;
  wire [2:0] _GEN_89;
  wire  _GEN_93;
  wire  _GEN_94;
  wire  _GEN_95;
  wire [2:0] _GEN_96;
  wire  _GEN_97;
  wire  _GEN_101;
  wire  _GEN_102;
  wire  _GEN_103;
  wire  _GEN_104;
  wire  _GEN_115;
  wire  _GEN_116;
  wire [31:0] _GEN_117;
  wire [31:0] _GEN_118;
  wire [31:0] _GEN_119;
  wire [31:0] _GEN_120;
  wire [31:0] _GEN_121;
  wire [31:0] _GEN_122;
  wire  _T_2007;
  wire  _T_2008;
  wire  mem_breakpoint;
  wire  _T_2009;
  wire  _T_2010;
  wire  mem_debug_breakpoint;
  wire  _T_2014;
  wire  mem_new_xcpt;
  wire [1:0] _T_2015;
  wire [3:0] mem_new_cause;
  wire  _T_2016;
  wire  _T_2017;
  wire  mem_xcpt;
  wire [31:0] mem_cause;
  wire  dcache_kill_mem;
  wire  _T_2019;
  wire  fpu_kill_mem;
  wire  _T_2020;
  wire  replay_mem;
  wire  _T_2021;
  wire  _T_2022;
  wire  _T_2024;
  wire  killm_common;
  wire  _T_2025;
  reg  _T_2027;
  reg [31:0] _RAND_85;
  wire  _T_2028;
  wire  _T_2029;
  wire  ctrl_killm;
  wire  _T_2031;
  wire  _T_2033;
  wire  _T_2034;
  wire  _T_2037;
  wire  _T_2040;
  wire  _T_2043;
  wire  _T_2044;
  wire [31:0] _T_2045;
  wire  _GEN_126;
  wire  _GEN_137;
  wire [2:0] _GEN_139;
  wire  _GEN_143;
  wire  _GEN_144;
  wire  _GEN_145;
  wire [2:0] _GEN_146;
  wire  _GEN_147;
  wire  _GEN_152;
  wire [31:0] _GEN_153;
  wire [31:0] _GEN_155;
  wire [31:0] _GEN_156;
  wire [31:0] _GEN_157;
  wire [31:0] _GEN_158;
  wire  _T_2047;
  wire  _T_2048;
  wire  _T_2051;
  wire  _T_2054;
  wire  _T_2057;
  wire  _T_2060;
  wire  _T_2063;
  wire  _T_2065;
  wire  _T_2066;
  wire  _T_2067;
  wire  _T_2068;
  wire  _T_2069;
  wire  wb_xcpt;
  wire [2:0] _T_2070;
  wire [3:0] _T_2071;
  wire [3:0] _T_2072;
  wire [3:0] _T_2073;
  wire [3:0] _T_2074;
  wire [31:0] wb_cause;
  wire  wb_wxd;
  wire  _T_2075;
  wire  wb_set_sboard;
  wire  replay_wb_common;
  wire  _T_2078;
  wire  replay_wb_rocc;
  wire  replay_wb;
  wire  _T_2079;
  wire  _T_2080;
  wire  _T_2081;
  wire  _T_2082;
  wire  dmem_resp_xpu;
  wire [4:0] dmem_resp_waddr;
  wire  dmem_resp_valid;
  wire  dmem_resp_replay;
  wire  _T_2087;
  wire [31:0] ll_wdata;
  wire  _T_2090;
  wire  _T_2092;
  wire  _GEN_159;
  wire [4:0] _GEN_160;
  wire  _GEN_161;
  wire  _T_2096;
  wire  _T_2097;
  wire  _T_2099;
  wire  wb_valid;
  wire  wb_wen;
  wire  rf_wen;
  wire [4:0] rf_waddr;
  wire  _T_2100;
  wire  _T_2102;
  wire [31:0] _T_2103;
  wire [31:0] _T_2104;
  wire [31:0] rf_wdata;
  wire  _T_2106;
  wire [4:0] _T_2108;
  wire  _T_2110;
  wire [31:0] _GEN_162;
  wire  _T_2111;
  wire [31:0] _GEN_163;
  wire [31:0] _GEN_168;
  wire [31:0] _GEN_169;
  wire  _GEN_172;
  wire [31:0] _GEN_174;
  wire [31:0] _GEN_175;
  wire [11:0] _T_2112;
  wire [11:0] _T_2113;
  wire [2:0] _T_2115;
  wire  _T_2118;
  wire  _T_2121;
  wire  _T_2123;
  wire  _T_2124;
  reg [31:0] _T_2127;
  reg [31:0] _RAND_86;
  wire [30:0] _T_2128;
  wire [31:0] _GEN_186;
  wire [31:0] _T_2129;
  wire [31:0] _T_2132;
  wire [31:0] _T_2134;
  wire [31:0] _T_2135;
  wire [31:0] _T_2136;
  wire [31:0] _GEN_176;
  wire [31:0] _T_2138;
  wire  _T_2139;
  wire  _T_2140;
  wire  _T_2141;
  wire  _T_2143;
  wire  _T_2144;
  wire  _T_2145;
  wire [31:0] _T_2146;
  wire  _T_2147;
  wire  _T_2148;
  wire  _T_2149;
  wire  _T_2151;
  wire  _T_2152;
  wire  _T_2153;
  wire [31:0] _T_2154;
  wire  _T_2155;
  wire  _T_2156;
  wire  _T_2157;
  wire  _T_2159;
  wire  _T_2160;
  wire  _T_2161;
  wire  _T_2162;
  wire  id_sboard_hazard;
  wire  _T_2163;
  wire [31:0] _T_2165;
  wire [31:0] _T_2167;
  wire [31:0] _T_2168;
  wire  _T_2169;
  wire [31:0] _GEN_177;
  wire  _T_2171;
  wire  _T_2172;
  wire  _T_2173;
  wire  _T_2174;
  wire  _T_2175;
  wire  ex_cannot_bypass;
  wire  _T_2176;
  wire  _T_2177;
  wire  _T_2178;
  wire  _T_2179;
  wire  _T_2180;
  wire  _T_2181;
  wire  _T_2182;
  wire  _T_2183;
  wire  data_hazard_ex;
  wire  _T_2185;
  wire  _T_2187;
  wire  _T_2188;
  wire  _T_2189;
  wire  _T_2191;
  wire  _T_2192;
  wire  _T_2193;
  wire  _T_2194;
  wire  fp_data_hazard_ex;
  wire  _T_2195;
  wire  _T_2196;
  wire  id_ex_hazard;
  wire  _T_2199;
  wire  _T_2200;
  wire  _T_2201;
  wire  _T_2202;
  wire  _T_2203;
  wire  mem_cannot_bypass;
  wire  _T_2204;
  wire  _T_2205;
  wire  _T_2206;
  wire  _T_2207;
  wire  _T_2208;
  wire  _T_2209;
  wire  _T_2210;
  wire  _T_2211;
  wire  data_hazard_mem;
  wire  _T_2213;
  wire  _T_2215;
  wire  _T_2216;
  wire  _T_2217;
  wire  _T_2219;
  wire  _T_2220;
  wire  _T_2221;
  wire  _T_2222;
  wire  fp_data_hazard_mem;
  wire  _T_2223;
  wire  _T_2224;
  wire  id_mem_hazard;
  wire  _T_2225;
  wire  _T_2226;
  wire  _T_2227;
  wire  _T_2228;
  wire  _T_2229;
  wire  _T_2230;
  wire  _T_2231;
  wire  _T_2232;
  wire  _T_2233;
  wire  _T_2234;
  wire  data_hazard_wb;
  wire  _T_2236;
  wire  _T_2238;
  wire  _T_2239;
  wire  _T_2240;
  wire  _T_2242;
  wire  _T_2243;
  wire  _T_2244;
  wire  _T_2245;
  wire  fp_data_hazard_wb;
  wire  _T_2246;
  wire  _T_2247;
  wire  id_wb_hazard;
  reg  dcache_blocked;
  reg [31:0] _RAND_87;
  wire  _T_2251;
  wire  _T_2252;
  wire  _T_2261;
  wire  _T_2262;
  wire  _T_2263;
  wire  _T_2264;
  wire  _T_2265;
  wire  _T_2266;
  wire  _T_2267;
  wire  _T_2270;
  wire  _T_2271;
  wire  _T_2276;
  wire  _T_2277;
  wire  _T_2279;
  wire  _T_2280;
  wire  _T_2281;
  wire  _T_2282;
  wire  _T_2283;
  wire  ctrl_stalld;
  wire  _T_2285;
  wire  _T_2286;
  wire  _T_2287;
  wire  _T_2288;
  wire  _T_2289;
  wire  _T_2292;
  wire [31:0] _T_2293;
  wire [31:0] _T_2294;
  wire  _T_2295;
  wire  _T_2297;
  wire  _T_2298;
  wire  _T_2299;
  wire  _T_2300;
  wire  _T_2303;
  wire  _T_2346;
  wire [5:0] ex_dcache_tag;
  wire [31:0] _T_2348;
  wire  _T_2349;
  wire [4:0] _T_2367;
  wire [4:0] _T_2368;
  wire [31:0] _T_2374;
  wire  _T_2377;
  wire  _T_2378;
  wire [4:0] _T_2380;
  reg [31:0] _T_2383;
  reg [31:0] _RAND_88;
  reg [31:0] _T_2385;
  reg [31:0] _RAND_89;
  reg [31:0] _T_2388;
  reg [31:0] _RAND_90;
  reg [31:0] _T_2390;
  reg [31:0] _RAND_91;
  wire  _T_2392;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_I_BUF ibuf (
    .clock(ibuf_clock),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_valid(ibuf_io_imem_bits_btb_valid),
    .io_imem_bits_btb_bits_taken(ibuf_io_imem_bits_btb_bits_taken),
    .io_imem_bits_btb_bits_bridx(ibuf_io_imem_bits_btb_bits_bridx),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_pc(ibuf_io_pc),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_rvc(ibuf_io_inst_0_bits_rvc),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw),
    .io_inst_0_bits_cinst(ibuf_io_inst_0_bits_cinst)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CSR_FILE csr (
    .clock(csr_clock),
    .reset(csr_reset),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_hartid(csr_io_hartid),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_csr(csr_io_decode_csr),
    .io_decode_read_illegal(csr_io_decode_read_illegal),
    .io_decode_write_illegal(csr_io_decode_write_illegal),
    .io_decode_write_flush(csr_io_decode_write_flush),
    .io_decode_system_illegal(csr_io_decode_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_badaddr(csr_io_badaddr),
    .io_time(csr_io_time),
    .io_rocc_interrupt(csr_io_rocc_interrupt),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_chain(csr_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_h(csr_io_bp_0_control_h),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_bp_1_control_action(csr_io_bp_1_control_action),
    .io_bp_1_control_chain(csr_io_bp_1_control_chain),
    .io_bp_1_control_tmatch(csr_io_bp_1_control_tmatch),
    .io_bp_1_control_m(csr_io_bp_1_control_m),
    .io_bp_1_control_h(csr_io_bp_1_control_h),
    .io_bp_1_control_s(csr_io_bp_1_control_s),
    .io_bp_1_control_u(csr_io_bp_1_control_u),
    .io_bp_1_control_x(csr_io_bp_1_control_x),
    .io_bp_1_control_w(csr_io_bp_1_control_w),
    .io_bp_1_control_r(csr_io_bp_1_control_r),
    .io_bp_1_address(csr_io_bp_1_address)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_BREAKPOINT_UNIT bpu (
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_chain(bpu_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_h(bpu_io_bp_0_control_h),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_bp_1_control_action(bpu_io_bp_1_control_action),
    .io_bp_1_control_chain(bpu_io_bp_1_control_chain),
    .io_bp_1_control_tmatch(bpu_io_bp_1_control_tmatch),
    .io_bp_1_control_m(bpu_io_bp_1_control_m),
    .io_bp_1_control_h(bpu_io_bp_1_control_h),
    .io_bp_1_control_s(bpu_io_bp_1_control_s),
    .io_bp_1_control_u(bpu_io_bp_1_control_u),
    .io_bp_1_control_x(bpu_io_bp_1_control_x),
    .io_bp_1_control_w(bpu_io_bp_1_control_w),
    .io_bp_1_control_r(bpu_io_bp_1_control_r),
    .io_bp_1_address(bpu_io_bp_1_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ALU alu (
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_MUL_DIV div (
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  assign io_imem_req_valid = take_pc;
  assign io_imem_req_bits_pc = _T_2294;
  assign io_imem_req_bits_speculative = _T_2033;
  assign io_imem_sfence_valid = _T_2299;
  assign io_imem_sfence_bits_rs1 = _T_2300;
  assign io_imem_resp_ready = ibuf_io_imem_ready;
  assign io_imem_flush_icache = _T_2298;
  assign io_dmem_req_valid = _T_2346;
  assign io_dmem_req_bits_addr = alu_io_adder_out;
  assign io_dmem_req_bits_tag = ex_dcache_tag;
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
  assign io_dmem_req_bits_typ = ex_ctrl_mem_type;
  assign io_dmem_req_bits_phys = 1'h0;
  assign io_dmem_s1_kill = _T_2349;
  assign io_dmem_s1_data_data = _T_2348;
  assign io_dmem_s1_data_mask = 4'h0;
  assign io_dmem_invalidate_lr = wb_xcpt;
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn;
  assign io_ptw_sfence_valid = io_imem_sfence_valid;
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1;
  assign io_ptw_status_dprv = csr_io_status_dprv;
  assign io_ptw_status_prv = csr_io_status_prv;
  assign io_ptw_status_mxr = csr_io_status_mxr;
  assign io_ptw_status_sum = csr_io_status_sum;
  assign take_pc = _T_2081 | _T_1897;
  assign ibuf_clock = clock;
  assign ibuf_io_imem_valid = io_imem_resp_valid;
  assign ibuf_io_imem_bits_btb_valid = io_imem_resp_bits_btb_valid;
  assign ibuf_io_imem_bits_btb_bits_taken = io_imem_resp_bits_btb_bits_taken;
  assign ibuf_io_imem_bits_btb_bits_bridx = io_imem_resp_bits_btb_bits_bridx;
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc;
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data;
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst;
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst;
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay;
  assign ibuf_io_inst_0_ready = _T_2303;
  assign _T_666 = ibuf_io_inst_0_bits_inst_bits & 32'h505f;
  assign _T_668 = _T_666 == 32'h3;
  assign _T_670 = ibuf_io_inst_0_bits_inst_bits & 32'h207f;
  assign _T_672 = _T_670 == 32'h3;
  assign _T_674 = ibuf_io_inst_0_bits_inst_bits & 32'h607f;
  assign _T_676 = _T_674 == 32'hf;
  assign _T_678 = ibuf_io_inst_0_bits_inst_bits & 32'h5f;
  assign _T_680 = _T_678 == 32'h17;
  assign _T_682 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f;
  assign _T_684 = _T_682 == 32'h33;
  assign _T_686 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f;
  assign _T_688 = _T_686 == 32'h33;
  assign _T_690 = ibuf_io_inst_0_bits_inst_bits & 32'h707b;
  assign _T_692 = _T_690 == 32'h63;
  assign _T_694 = ibuf_io_inst_0_bits_inst_bits & 32'h7f;
  assign _T_696 = _T_694 == 32'h6f;
  assign _T_698 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff;
  assign _T_700 = _T_698 == 32'h73;
  assign _T_702 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00305f;
  assign _T_704 = _T_702 == 32'h1013;
  assign _T_708 = _T_670 == 32'h2013;
  assign _T_710 = ibuf_io_inst_0_bits_inst_bits & 32'h1800707f;
  assign _T_712 = _T_710 == 32'h202f;
  assign _T_716 = _T_670 == 32'h2073;
  assign _T_718 = ibuf_io_inst_0_bits_inst_bits & 32'hbc00707f;
  assign _T_720 = _T_718 == 32'h5013;
  assign _T_724 = _T_686 == 32'h5033;
  assign _T_726 = ibuf_io_inst_0_bits_inst_bits & 32'he800707f;
  assign _T_728 = _T_726 == 32'h800202f;
  assign _T_730 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f;
  assign _T_732 = _T_730 == 32'h1000202f;
  assign _T_734 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073;
  assign _T_736 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073;
  assign _T_738 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073;
  assign _T_740 = ibuf_io_inst_0_bits_inst_bits & 32'h603f;
  assign _T_742 = _T_740 == 32'h23;
  assign _T_744 = ibuf_io_inst_0_bits_inst_bits & 32'h306f;
  assign _T_746 = _T_744 == 32'h1063;
  assign _T_748 = ibuf_io_inst_0_bits_inst_bits & 32'h407f;
  assign _T_750 = _T_748 == 32'h4063;
  assign _T_754 = _T_744 == 32'h3;
  assign _T_757 = _T_668 | _T_672;
  assign _T_758 = _T_757 | _T_676;
  assign _T_759 = _T_758 | _T_680;
  assign _T_760 = _T_759 | _T_684;
  assign _T_761 = _T_760 | _T_688;
  assign _T_762 = _T_761 | _T_692;
  assign _T_763 = _T_762 | _T_696;
  assign _T_764 = _T_763 | _T_700;
  assign _T_765 = _T_764 | _T_704;
  assign _T_766 = _T_765 | _T_708;
  assign _T_767 = _T_766 | _T_712;
  assign _T_768 = _T_767 | _T_716;
  assign _T_769 = _T_768 | _T_720;
  assign _T_770 = _T_769 | _T_724;
  assign _T_771 = _T_770 | _T_728;
  assign _T_772 = _T_771 | _T_732;
  assign _T_773 = _T_772 | _T_734;
  assign _T_774 = _T_773 | _T_736;
  assign _T_775 = _T_774 | _T_738;
  assign _T_776 = _T_775 | _T_742;
  assign _T_777 = _T_776 | _T_746;
  assign _T_778 = _T_777 | _T_750;
  assign _T_779 = _T_778 | _T_754;
  assign _T_783 = ibuf_io_inst_0_bits_inst_bits & 32'h54;
  assign _T_785 = _T_783 == 32'h40;
  assign _T_789 = ibuf_io_inst_0_bits_inst_bits & 32'h48;
  assign _T_791 = _T_789 == 32'h48;
  assign _T_795 = ibuf_io_inst_0_bits_inst_bits & 32'h1c;
  assign _T_797 = _T_795 == 32'h4;
  assign _T_801 = ibuf_io_inst_0_bits_inst_bits & 32'h70;
  assign _T_803 = _T_801 == 32'h20;
  assign _T_805 = ibuf_io_inst_0_bits_inst_bits & 32'h64;
  assign _T_807 = _T_805 == 32'h20;
  assign _T_809 = ibuf_io_inst_0_bits_inst_bits & 32'h34;
  assign _T_811 = _T_809 == 32'h20;
  assign _T_814 = _T_803 | _T_807;
  assign _T_815 = _T_814 | _T_811;
  assign _T_817 = ibuf_io_inst_0_bits_inst_bits & 32'h4004;
  assign _T_819 = _T_817 == 32'h0;
  assign _T_821 = ibuf_io_inst_0_bits_inst_bits & 32'h44;
  assign _T_823 = _T_821 == 32'h0;
  assign _T_825 = ibuf_io_inst_0_bits_inst_bits & 32'h18;
  assign _T_827 = _T_825 == 32'h0;
  assign _T_829 = ibuf_io_inst_0_bits_inst_bits & 32'h2050;
  assign _T_831 = _T_829 == 32'h2000;
  assign _T_834 = _T_819 | _T_823;
  assign _T_835 = _T_834 | _T_827;
  assign _T_836 = _T_835 | _T_831;
  assign _T_838 = ibuf_io_inst_0_bits_inst_bits & 32'h58;
  assign _T_840 = _T_838 == 32'h0;
  assign _T_842 = ibuf_io_inst_0_bits_inst_bits & 32'h20;
  assign _T_844 = _T_842 == 32'h0;
  assign _T_846 = ibuf_io_inst_0_bits_inst_bits & 32'hc;
  assign _T_848 = _T_846 == 32'h4;
  assign _T_850 = ibuf_io_inst_0_bits_inst_bits & 32'h4050;
  assign _T_852 = _T_850 == 32'h4050;
  assign _T_855 = _T_840 | _T_844;
  assign _T_856 = _T_855 | _T_848;
  assign _T_857 = _T_856 | _T_791;
  assign _T_858 = _T_857 | _T_852;
  assign _T_862 = _T_789 == 32'h0;
  assign _T_864 = ibuf_io_inst_0_bits_inst_bits & 32'h4008;
  assign _T_866 = _T_864 == 32'h4000;
  assign _T_869 = _T_862 | _T_827;
  assign _T_870 = _T_869 | _T_866;
  assign _T_871 = {_T_870,_T_858};
  assign _T_873 = ibuf_io_inst_0_bits_inst_bits & 32'h50;
  assign _T_875 = _T_873 == 32'h0;
  assign _T_878 = _T_819 | _T_875;
  assign _T_879 = _T_878 | _T_823;
  assign _T_880 = _T_879 | _T_827;
  assign _T_882 = ibuf_io_inst_0_bits_inst_bits & 32'h24;
  assign _T_884 = _T_882 == 32'h4;
  assign _T_887 = _T_884 | _T_791;
  assign _T_888 = {_T_887,_T_880};
  assign _T_890 = ibuf_io_inst_0_bits_inst_bits & 32'h8;
  assign _T_892 = _T_890 == 32'h8;
  assign _T_896 = _T_821 == 32'h40;
  assign _T_899 = _T_892 | _T_896;
  assign _T_903 = _T_821 == 32'h4;
  assign _T_906 = _T_903 | _T_892;
  assign _T_910 = _T_882 == 32'h0;
  assign _T_912 = ibuf_io_inst_0_bits_inst_bits & 32'h14;
  assign _T_914 = _T_912 == 32'h10;
  assign _T_917 = _T_910 | _T_797;
  assign _T_918 = _T_917 | _T_914;
  assign _T_919 = {_T_918,_T_906};
  assign _T_920 = {_T_919,_T_899};
  assign _T_928 = ibuf_io_inst_0_bits_inst_bits & 32'h3054;
  assign _T_930 = _T_928 == 32'h1010;
  assign _T_932 = ibuf_io_inst_0_bits_inst_bits & 32'h1058;
  assign _T_934 = _T_932 == 32'h1040;
  assign _T_936 = ibuf_io_inst_0_bits_inst_bits & 32'h7044;
  assign _T_938 = _T_936 == 32'h7000;
  assign _T_941 = _T_930 | _T_934;
  assign _T_942 = _T_941 | _T_938;
  assign _T_944 = ibuf_io_inst_0_bits_inst_bits & 32'h4054;
  assign _T_946 = _T_944 == 32'h40;
  assign _T_948 = ibuf_io_inst_0_bits_inst_bits & 32'h3044;
  assign _T_950 = _T_948 == 32'h3000;
  assign _T_952 = ibuf_io_inst_0_bits_inst_bits & 32'h6044;
  assign _T_954 = _T_952 == 32'h6000;
  assign _T_956 = ibuf_io_inst_0_bits_inst_bits & 32'h6018;
  assign _T_958 = _T_956 == 32'h6000;
  assign _T_960 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034;
  assign _T_962 = _T_960 == 32'h40000030;
  assign _T_964 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054;
  assign _T_966 = _T_964 == 32'h40001010;
  assign _T_969 = _T_946 | _T_950;
  assign _T_970 = _T_969 | _T_954;
  assign _T_971 = _T_970 | _T_958;
  assign _T_972 = _T_971 | _T_962;
  assign _T_973 = _T_972 | _T_966;
  assign _T_975 = ibuf_io_inst_0_bits_inst_bits & 32'h2054;
  assign _T_977 = _T_975 == 32'h2010;
  assign _T_979 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054;
  assign _T_981 = _T_979 == 32'h4010;
  assign _T_983 = ibuf_io_inst_0_bits_inst_bits & 32'h5054;
  assign _T_985 = _T_983 == 32'h4010;
  assign _T_987 = ibuf_io_inst_0_bits_inst_bits & 32'h4058;
  assign _T_989 = _T_987 == 32'h4040;
  assign _T_992 = _T_977 | _T_981;
  assign _T_993 = _T_992 | _T_985;
  assign _T_994 = _T_993 | _T_989;
  assign _T_996 = ibuf_io_inst_0_bits_inst_bits & 32'h6054;
  assign _T_998 = _T_996 == 32'h2010;
  assign _T_1000 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054;
  assign _T_1002 = _T_1000 == 32'h40001010;
  assign _T_1005 = _T_998 | _T_989;
  assign _T_1006 = _T_1005 | _T_962;
  assign _T_1007 = _T_1006 | _T_1002;
  assign _T_1008 = {_T_973,_T_942};
  assign _T_1009 = {_T_1007,_T_994};
  assign _T_1010 = {_T_1009,_T_1008};
  assign _T_1012 = ibuf_io_inst_0_bits_inst_bits & 32'h605f;
  assign _T_1014 = _T_1012 == 32'h3;
  assign _T_1016 = ibuf_io_inst_0_bits_inst_bits & 32'h707f;
  assign _T_1018 = _T_1016 == 32'h100f;
  assign _T_1021 = _T_1014 | _T_668;
  assign _T_1022 = _T_1021 | _T_672;
  assign _T_1023 = _T_1022 | _T_1018;
  assign _T_1024 = _T_1023 | _T_712;
  assign _T_1025 = _T_1024 | _T_728;
  assign _T_1026 = _T_1025 | _T_732;
  assign _T_1028 = ibuf_io_inst_0_bits_inst_bits & 32'h2008;
  assign _T_1030 = _T_1028 == 32'h8;
  assign _T_1032 = ibuf_io_inst_0_bits_inst_bits & 32'h28;
  assign _T_1034 = _T_1032 == 32'h20;
  assign _T_1036 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020;
  assign _T_1038 = _T_1036 == 32'h18000020;
  assign _T_1040 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020;
  assign _T_1042 = _T_1040 == 32'h20000020;
  assign _T_1045 = _T_1030 | _T_1034;
  assign _T_1046 = _T_1045 | _T_1038;
  assign _T_1047 = _T_1046 | _T_1042;
  assign _T_1049 = ibuf_io_inst_0_bits_inst_bits & 32'h10001008;
  assign _T_1051 = _T_1049 == 32'h10000008;
  assign _T_1053 = ibuf_io_inst_0_bits_inst_bits & 32'h40001008;
  assign _T_1055 = _T_1053 == 32'h40000008;
  assign _T_1058 = _T_1051 | _T_1055;
  assign _T_1060 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008;
  assign _T_1062 = _T_1060 == 32'h8000008;
  assign _T_1064 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008;
  assign _T_1066 = _T_1064 == 32'h10000008;
  assign _T_1068 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008;
  assign _T_1070 = _T_1068 == 32'h80000008;
  assign _T_1073 = _T_1030 | _T_1062;
  assign _T_1074 = _T_1073 | _T_1066;
  assign _T_1075 = _T_1074 | _T_1070;
  assign _T_1077 = ibuf_io_inst_0_bits_inst_bits & 32'h18001008;
  assign _T_1079 = _T_1077 == 32'h8;
  assign _T_1083 = {_T_1058,_T_1047};
  assign _T_1084 = {1'h0,_T_1079};
  assign _T_1085 = {_T_1084,_T_1075};
  assign _T_1086 = {_T_1085,_T_1083};
  assign _T_1088 = ibuf_io_inst_0_bits_inst_bits & 32'h1000;
  assign _T_1090 = _T_1088 == 32'h1000;
  assign _T_1094 = ibuf_io_inst_0_bits_inst_bits & 32'h2000;
  assign _T_1096 = _T_1094 == 32'h2000;
  assign _T_1100 = ibuf_io_inst_0_bits_inst_bits & 32'h4000;
  assign _T_1102 = _T_1100 == 32'h4000;
  assign _T_1105 = {_T_1102,_T_1096};
  assign _T_1106 = {_T_1105,_T_1090};
  assign _T_1112 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074;
  assign _T_1114 = _T_1112 == 32'h2000030;
  assign _T_1120 = _T_1032 == 32'h0;
  assign _T_1124 = _T_873 == 32'h10;
  assign _T_1126 = ibuf_io_inst_0_bits_inst_bits & 32'h1010;
  assign _T_1128 = _T_1126 == 32'h1010;
  assign _T_1132 = _T_1028 == 32'h2008;
  assign _T_1134 = ibuf_io_inst_0_bits_inst_bits & 32'h2010;
  assign _T_1136 = _T_1134 == 32'h2010;
  assign _T_1139 = _T_1120 | _T_848;
  assign _T_1140 = _T_1139 | _T_1124;
  assign _T_1141 = _T_1140 | _T_791;
  assign _T_1142 = _T_1141 | _T_1128;
  assign _T_1143 = _T_1142 | _T_1132;
  assign _T_1144 = _T_1143 | _T_1136;
  assign _T_1146 = ibuf_io_inst_0_bits_inst_bits & 32'h1050;
  assign _T_1148 = _T_1146 == 32'h1050;
  assign _T_1154 = _T_829 == 32'h2050;
  assign _T_1158 = ibuf_io_inst_0_bits_inst_bits & 32'h3050;
  assign _T_1160 = _T_1158 == 32'h50;
  assign _T_1163 = {_T_1160,_T_1154};
  assign _T_1164 = {_T_1163,_T_1148};
  assign _T_1166 = ibuf_io_inst_0_bits_inst_bits & 32'h1048;
  assign _T_1168 = _T_1166 == 32'h1008;
  assign _T_1172 = ibuf_io_inst_0_bits_inst_bits & 32'h3048;
  assign _T_1174 = _T_1172 == 32'h8;
  assign _T_1178 = ibuf_io_inst_0_bits_inst_bits & 32'h2048;
  assign _T_1180 = _T_1178 == 32'h2008;
  assign _T_1189__T_1198_addr = _T_1197;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1189__T_1198_data = _T_1189[_T_1189__T_1198_addr];
  `else
  assign _T_1189__T_1198_data = _T_1189__T_1198_addr >= 5'h1f ? _RAND_77[31:0] : _T_1189[_T_1189__T_1198_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1189__T_1208_addr = _T_1207;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1189__T_1208_data = _T_1189[_T_1189__T_1208_addr];
  `else
  assign _T_1189__T_1208_data = _T_1189__T_1208_addr >= 5'h1f ? _RAND_78[31:0] : _T_1189[_T_1189__T_1208_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1189__T_2109_data = rf_wdata;
  assign _T_1189__T_2109_addr = _T_2108;
  assign _T_1189__T_2109_mask = _GEN_172;
  assign _T_1189__T_2109_en = _GEN_172;
  assign _T_1193 = ibuf_io_inst_0_bits_inst_rs1 == 5'h0;
  assign _T_1196 = ibuf_io_inst_0_bits_inst_rs1;
  assign _T_1197 = ~ _T_1196;
  assign _T_1199 = _T_1189__T_1198_data;
  assign _T_1206 = ibuf_io_inst_0_bits_inst_rs2;
  assign _T_1207 = ~ _T_1206;
  assign _T_1209 = _T_1189__T_1208_data;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_interrupts_debug = io_interrupts_debug;
  assign csr_io_interrupts_mtip = io_interrupts_mtip;
  assign csr_io_interrupts_msip = io_interrupts_msip;
  assign csr_io_interrupts_meip = io_interrupts_meip;
  assign csr_io_hartid = io_hartid;
  assign csr_io_rw_addr = _T_2113;
  assign csr_io_rw_cmd = _T_2115;
  assign csr_io_rw_wdata = bypass_mux_2;
  assign csr_io_decode_csr = _T_2112;
  assign csr_io_exception = wb_xcpt;
  assign csr_io_retire = wb_valid;
  assign csr_io_cause = wb_cause;
  assign csr_io_pc = wb_reg_pc;
  assign csr_io_badaddr = bypass_mux_2;
  assign csr_io_rocc_interrupt = io_rocc_interrupt;
  assign _T_1303 = _T_1164 == 3'h2;
  assign _T_1304 = _T_1164 == 3'h3;
  assign _T_1305 = _T_1164 == 3'h1;
  assign _T_1306 = _T_1303 | _T_1304;
  assign id_csr_en = _T_1306 | _T_1305;
  assign id_system_insn = _T_1164 >= 3'h4;
  assign id_csr_ren = _T_1306 & _T_1193;
  assign id_csr = id_csr_ren ? 3'h5 : _T_1164;
  assign _T_1317 = _T_1086 == 5'h14;
  assign id_sfence = _T_1026 & _T_1317;
  assign _T_1318 = id_sfence | id_system_insn;
  assign _T_1320 = id_csr_ren == 1'h0;
  assign _T_1321 = id_csr_en & _T_1320;
  assign _T_1322 = _T_1321 & csr_io_decode_write_flush;
  assign id_csr_flush = _T_1318 | _T_1322;
  assign _T_1324 = _T_779 == 1'h0;
  assign _T_1325 = csr_io_status_isa[12];
  assign _T_1327 = _T_1325 == 1'h0;
  assign _T_1328 = _T_1114 & _T_1327;
  assign _T_1329 = _T_1324 | _T_1328;
  assign _T_1330 = csr_io_status_isa[0];
  assign _T_1332 = _T_1330 == 1'h0;
  assign _T_1333 = _T_1180 & _T_1332;
  assign _T_1334 = _T_1329 | _T_1333;
  assign _T_1343 = csr_io_status_isa[2];
  assign _T_1345 = _T_1343 == 1'h0;
  assign _T_1346 = ibuf_io_inst_0_bits_rvc & _T_1345;
  assign _T_1347 = _T_1334 | _T_1346;
  assign _T_1352 = _T_1320 & csr_io_decode_write_illegal;
  assign _T_1353 = csr_io_decode_read_illegal | _T_1352;
  assign _T_1354 = id_csr_en & _T_1353;
  assign _T_1355 = _T_1347 | _T_1354;
  assign _T_1357 = ibuf_io_inst_0_bits_rvc == 1'h0;
  assign _T_1359 = _T_1318 & csr_io_decode_system_illegal;
  assign _T_1360 = _T_1357 & _T_1359;
  assign id_illegal_insn = _T_1355 | _T_1360;
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26];
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25];
  assign _T_1361 = _T_1180 & id_amo_rl;
  assign id_fence_next = _T_1174 | _T_1361;
  assign _T_1363 = io_dmem_ordered == 1'h0;
  assign id_mem_busy = _T_1363 | io_dmem_req_valid;
  assign _T_1365 = id_mem_busy == 1'h0;
  assign _GEN_0 = _T_1365 ? 1'h0 : id_reg_fence;
  assign _T_1372 = wb_reg_valid & wb_ctrl_rocc;
  assign _T_1375 = _T_1180 & id_amo_aq;
  assign _T_1376 = _T_1375 | _T_1168;
  assign _T_1378 = id_reg_fence & _T_1026;
  assign _T_1379 = _T_1376 | _T_1378;
  assign _T_1380 = id_mem_busy & _T_1379;
  assign bpu_io_status_debug = csr_io_status_debug;
  assign bpu_io_status_prv = csr_io_status_prv;
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action;
  assign bpu_io_bp_0_control_chain = csr_io_bp_0_control_chain;
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch;
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m;
  assign bpu_io_bp_0_control_h = csr_io_bp_0_control_h;
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s;
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u;
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x;
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w;
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r;
  assign bpu_io_bp_0_address = csr_io_bp_0_address;
  assign bpu_io_bp_1_control_action = csr_io_bp_1_control_action;
  assign bpu_io_bp_1_control_chain = csr_io_bp_1_control_chain;
  assign bpu_io_bp_1_control_tmatch = csr_io_bp_1_control_tmatch;
  assign bpu_io_bp_1_control_m = csr_io_bp_1_control_m;
  assign bpu_io_bp_1_control_h = csr_io_bp_1_control_h;
  assign bpu_io_bp_1_control_s = csr_io_bp_1_control_s;
  assign bpu_io_bp_1_control_u = csr_io_bp_1_control_u;
  assign bpu_io_bp_1_control_x = csr_io_bp_1_control_x;
  assign bpu_io_bp_1_control_w = csr_io_bp_1_control_w;
  assign bpu_io_bp_1_control_r = csr_io_bp_1_control_r;
  assign bpu_io_bp_1_address = csr_io_bp_1_address;
  assign bpu_io_pc = ibuf_io_pc;
  assign bpu_io_ea = bypass_mux_1;
  assign _T_1390 = csr_io_interrupt | bpu_io_debug_if;
  assign _T_1391 = _T_1390 | bpu_io_xcpt_if;
  assign _T_1392 = _T_1391 | ibuf_io_inst_0_bits_xcpt0_pf_inst;
  assign _T_1393 = _T_1392 | ibuf_io_inst_0_bits_xcpt0_ae_inst;
  assign _T_1394 = _T_1393 | ibuf_io_inst_0_bits_xcpt1_pf_inst;
  assign _T_1395 = _T_1394 | ibuf_io_inst_0_bits_xcpt1_ae_inst;
  assign id_xcpt = _T_1395 | id_illegal_insn;
  assign _T_1396 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2;
  assign _T_1397 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_1396};
  assign _T_1398 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_1397;
  assign _T_1399 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_1398;
  assign _T_1400 = bpu_io_xcpt_if ? 4'h3 : _T_1399;
  assign _T_1401 = bpu_io_debug_if ? 4'he : _T_1400;
  assign id_cause = csr_io_interrupt ? csr_io_interrupt_cause : {{28'd0}, _T_1401};
  assign ex_waddr = ex_reg_inst[11:7];
  assign mem_waddr = mem_reg_inst[11:7];
  assign wb_waddr = wb_reg_inst[11:7];
  assign _T_1404 = ex_reg_valid & ex_ctrl_wxd;
  assign _T_1405 = mem_reg_valid & mem_ctrl_wxd;
  assign _T_1407 = mem_ctrl_mem == 1'h0;
  assign _T_1408 = _T_1405 & _T_1407;
  assign _T_1410 = 5'h0 == ibuf_io_inst_0_bits_inst_rs1;
  assign _T_1411 = ex_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign id_bypass_src_0_1 = _T_1404 & _T_1411;
  assign _T_1412 = mem_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign id_bypass_src_0_2 = _T_1408 & _T_1412;
  assign id_bypass_src_0_3 = _T_1405 & _T_1412;
  assign _T_1414 = 5'h0 == ibuf_io_inst_0_bits_inst_rs2;
  assign _T_1415 = ex_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign id_bypass_src_1_1 = _T_1404 & _T_1415;
  assign _T_1416 = mem_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign id_bypass_src_1_2 = _T_1408 & _T_1416;
  assign id_bypass_src_1_3 = _T_1405 & _T_1416;
  assign _T_1440 = ex_reg_rs_lsb_0 == 2'h1;
  assign _T_1441 = _T_1440 ? bypass_mux_1 : 32'h0;
  assign _T_1443 = ex_reg_rs_lsb_0 == 2'h2;
  assign _T_1444 = _T_1443 ? bypass_mux_2 : _T_1441;
  assign _T_1446 = ex_reg_rs_lsb_0 == 2'h3;
  assign _T_1447 = _T_1446 ? io_dmem_resp_bits_data_word_bypass : _T_1444;
  assign _T_1448 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? _T_1447 : _T_1448;
  assign _T_1450 = ex_reg_rs_lsb_1 == 2'h1;
  assign _T_1451 = _T_1450 ? bypass_mux_1 : 32'h0;
  assign _T_1453 = ex_reg_rs_lsb_1 == 2'h2;
  assign _T_1454 = _T_1453 ? bypass_mux_2 : _T_1451;
  assign _T_1456 = ex_reg_rs_lsb_1 == 2'h3;
  assign _T_1457 = _T_1456 ? io_dmem_resp_bits_data_word_bypass : _T_1454;
  assign _T_1458 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_1457 : _T_1458;
  assign _T_1460 = ex_ctrl_sel_imm == 3'h5;
  assign _T_1462 = ex_reg_inst[31];
  assign _T_1463 = $signed(_T_1462);
  assign _T_1464 = _T_1460 ? $signed(1'sh0) : $signed(_T_1463);
  assign _T_1466 = ex_ctrl_sel_imm == 3'h2;
  assign _T_1467 = ex_reg_inst[30:20];
  assign _T_1468 = $signed(_T_1467);
  assign _T_1469 = _T_1466 ? $signed(_T_1468) : $signed({11{_T_1464}});
  assign _T_1471 = ex_ctrl_sel_imm != 3'h2;
  assign _T_1473 = ex_ctrl_sel_imm != 3'h3;
  assign _T_1474 = _T_1471 & _T_1473;
  assign _T_1475 = ex_reg_inst[19:12];
  assign _T_1476 = $signed(_T_1475);
  assign _T_1477 = _T_1474 ? $signed({8{_T_1464}}) : $signed(_T_1476);
  assign _T_1482 = _T_1466 | _T_1460;
  assign _T_1485 = ex_ctrl_sel_imm == 3'h3;
  assign _T_1486 = ex_reg_inst[20];
  assign _T_1487 = $signed(_T_1486);
  assign _T_1489 = ex_ctrl_sel_imm == 3'h1;
  assign _T_1490 = ex_reg_inst[7];
  assign _T_1491 = $signed(_T_1490);
  assign _T_1492 = _T_1489 ? $signed(_T_1491) : $signed(_T_1464);
  assign _T_1493 = _T_1485 ? $signed(_T_1487) : $signed(_T_1492);
  assign _T_1494 = _T_1482 ? $signed(1'sh0) : $signed(_T_1493);
  assign _T_1501 = ex_reg_inst[30:25];
  assign _T_1502 = _T_1482 ? 6'h0 : _T_1501;
  assign _T_1507 = ex_ctrl_sel_imm == 3'h0;
  assign _T_1510 = _T_1507 | _T_1489;
  assign _T_1511 = ex_reg_inst[11:8];
  assign _T_1514 = ex_reg_inst[19:16];
  assign _T_1515 = ex_reg_inst[24:21];
  assign _T_1516 = _T_1460 ? _T_1514 : _T_1515;
  assign _T_1517 = _T_1510 ? _T_1511 : _T_1516;
  assign _T_1518 = _T_1466 ? 4'h0 : _T_1517;
  assign _T_1523 = ex_ctrl_sel_imm == 3'h4;
  assign _T_1527 = ex_reg_inst[15];
  assign _T_1529 = _T_1460 ? _T_1527 : 1'h0;
  assign _T_1530 = _T_1523 ? _T_1486 : _T_1529;
  assign _T_1531 = _T_1507 ? _T_1490 : _T_1530;
  assign _T_1532 = {_T_1502,_T_1518};
  assign _T_1533 = {_T_1532,_T_1531};
  assign _T_1534 = $unsigned(_T_1494);
  assign _T_1535 = $unsigned(_T_1477);
  assign _T_1536 = {_T_1535,_T_1534};
  assign _T_1537 = $unsigned(_T_1469);
  assign _T_1538 = $unsigned(_T_1464);
  assign _T_1539 = {_T_1538,_T_1537};
  assign _T_1540 = {_T_1539,_T_1536};
  assign _T_1541 = {_T_1540,_T_1533};
  assign ex_imm = $signed(_T_1541);
  assign _T_1544 = $signed(ex_rs_0);
  assign _T_1546 = $signed(ex_reg_pc);
  assign _T_1547 = 2'h2 == ex_ctrl_sel_alu1;
  assign _T_1548 = _T_1547 ? $signed(_T_1546) : $signed(32'sh0);
  assign _T_1549 = 2'h1 == ex_ctrl_sel_alu1;
  assign ex_op1 = _T_1549 ? $signed(_T_1544) : $signed(_T_1548);
  assign _T_1552 = $signed(ex_rs_1);
  assign _T_1557 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
  assign _T_1558 = 2'h1 == ex_ctrl_sel_alu2;
  assign _T_1559 = _T_1558 ? $signed(_T_1557) : $signed(4'sh0);
  assign _T_1560 = 2'h3 == ex_ctrl_sel_alu2;
  assign _T_1561 = _T_1560 ? $signed(ex_imm) : $signed({{28{_T_1559[3]}},_T_1559});
  assign _T_1562 = 2'h2 == ex_ctrl_sel_alu2;
  assign ex_op2 = _T_1562 ? $signed(_T_1552) : $signed(_T_1561);
  assign alu_io_fn = ex_ctrl_alu_fn;
  assign alu_io_in2 = _T_1563;
  assign alu_io_in1 = _T_1564;
  assign _T_1563 = $unsigned(ex_op2);
  assign _T_1564 = $unsigned(ex_op1);
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = _T_1565;
  assign div_io_req_bits_fn = ex_ctrl_alu_fn;
  assign div_io_req_bits_in1 = ex_rs_0;
  assign div_io_req_bits_in2 = ex_rs_1;
  assign div_io_req_bits_tag = ex_waddr;
  assign div_io_kill = _T_2028;
  assign div_io_resp_ready = _GEN_159;
  assign _T_1565 = ex_reg_valid & ex_ctrl_div;
  assign _T_1567 = _T_2289 == 1'h0;
  assign _T_1569 = take_pc == 1'h0;
  assign _T_1570 = _T_1569 & ibuf_io_inst_0_valid;
  assign _T_1571 = _T_1570 & ibuf_io_inst_0_bits_replay;
  assign _T_1574 = _T_1567 & id_xcpt;
  assign _T_1578 = _T_1570 & csr_io_interrupt;
  assign _GEN_1 = id_fence_next ? 1'h1 : _GEN_0;
  assign _T_1586 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst};
  assign _T_1588 = _T_1586 != 2'h0;
  assign _GEN_2 = _T_1588 ? 2'h2 : 2'h1;
  assign _GEN_3 = _T_1588 ? 2'h1 : 2'h0;
  assign _GEN_4 = _T_1588 ? 1'h1 : ibuf_io_inst_0_bits_rvc;
  assign _T_1592 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst};
  assign _T_1594 = _T_1592 != 2'h0;
  assign _T_1595 = bpu_io_xcpt_if | _T_1594;
  assign _GEN_5 = _T_1595 ? 2'h2 : _GEN_2;
  assign _GEN_6 = _T_1595 ? 2'h0 : _GEN_3;
  assign _GEN_7 = id_xcpt ? 4'h0 : _T_1010;
  assign _GEN_9 = id_xcpt ? _GEN_5 : _T_888;
  assign _GEN_10 = id_xcpt ? _GEN_6 : _T_871;
  assign _GEN_11 = id_xcpt ? _GEN_4 : ibuf_io_inst_0_bits_rvc;
  assign _T_1598 = _T_1168 | id_csr_flush;
  assign _T_1600 = ibuf_io_inst_0_bits_inst_rs2 != 5'h0;
  assign _T_1602 = ibuf_io_inst_0_bits_inst_rs1 != 5'h0;
  assign _T_1603 = {_T_1600,_T_1602};
  assign _GEN_12 = id_sfence ? {{1'd0}, _T_1603} : _T_1106;
  assign _T_1604 = _T_1410 | id_bypass_src_0_1;
  assign _T_1605 = _T_1604 | id_bypass_src_0_2;
  assign _T_1606 = _T_1605 | id_bypass_src_0_3;
  assign _T_1611 = id_bypass_src_0_2 ? 2'h2 : 2'h3;
  assign _T_1612 = id_bypass_src_0_1 ? 2'h1 : _T_1611;
  assign _T_1613 = _T_1410 ? 2'h0 : _T_1612;
  assign _T_1615 = _T_1606 == 1'h0;
  assign _T_1616 = _T_836 & _T_1615;
  assign _T_1617 = _GEN_174[1:0];
  assign _T_1618 = _GEN_174[31:2];
  assign _GEN_13 = _T_1616 ? _T_1617 : _T_1613;
  assign _GEN_14 = _T_1616 ? _T_1618 : ex_reg_rs_msb_0;
  assign _T_1619 = _T_1414 | id_bypass_src_1_1;
  assign _T_1620 = _T_1619 | id_bypass_src_1_2;
  assign _T_1621 = _T_1620 | id_bypass_src_1_3;
  assign _T_1626 = id_bypass_src_1_2 ? 2'h2 : 2'h3;
  assign _T_1627 = id_bypass_src_1_1 ? 2'h1 : _T_1626;
  assign _T_1628 = _T_1414 ? 2'h0 : _T_1627;
  assign _T_1630 = _T_1621 == 1'h0;
  assign _T_1631 = _T_815 & _T_1630;
  assign _T_1632 = _GEN_175[1:0];
  assign _T_1633 = _GEN_175[31:2];
  assign _GEN_15 = _T_1631 ? _T_1632 : _T_1628;
  assign _GEN_16 = _T_1631 ? _T_1633 : ex_reg_rs_msb_1;
  assign _T_1634 = ibuf_io_inst_0_bits_raw[15:0];
  assign _T_1635 = ibuf_io_inst_0_bits_rvc ? {{16'd0}, _T_1634} : ibuf_io_inst_0_bits_raw;
  assign _T_1637 = _T_1635[1:0];
  assign _T_1638 = _T_1635[31:2];
  assign _GEN_17 = id_illegal_insn ? 1'h0 : _T_1606;
  assign _GEN_18 = id_illegal_insn ? _T_1637 : _GEN_13;
  assign _GEN_19 = id_illegal_insn ? _T_1638 : _GEN_14;
  assign _GEN_21 = _T_1567 ? 1'h0 : ex_ctrl_fp;
  assign _GEN_22 = _T_1567 ? 1'h0 : ex_ctrl_rocc;
  assign _GEN_23 = _T_1567 ? _T_785 : ex_ctrl_branch;
  assign _GEN_24 = _T_1567 ? _T_791 : ex_ctrl_jal;
  assign _GEN_25 = _T_1567 ? _T_797 : ex_ctrl_jalr;
  assign _GEN_26 = _T_1567 ? _T_815 : ex_ctrl_rxs2;
  assign _GEN_28 = _T_1567 ? _GEN_10 : ex_ctrl_sel_alu2;
  assign _GEN_29 = _T_1567 ? _GEN_9 : ex_ctrl_sel_alu1;
  assign _GEN_30 = _T_1567 ? _T_920 : ex_ctrl_sel_imm;
  assign _GEN_32 = _T_1567 ? _GEN_7 : ex_ctrl_alu_fn;
  assign _GEN_33 = _T_1567 ? _T_1026 : ex_ctrl_mem;
  assign _GEN_34 = _T_1567 ? _T_1086 : ex_ctrl_mem_cmd;
  assign _GEN_35 = _T_1567 ? _GEN_12 : ex_ctrl_mem_type;
  assign _GEN_39 = _T_1567 ? 1'h0 : ex_ctrl_wfd;
  assign _GEN_40 = _T_1567 ? _T_1114 : ex_ctrl_div;
  assign _GEN_41 = _T_1567 ? _T_1144 : ex_ctrl_wxd;
  assign _GEN_42 = _T_1567 ? id_csr : ex_ctrl_csr;
  assign _GEN_43 = _T_1567 ? _T_1168 : ex_ctrl_fence_i;
  assign _GEN_47 = _T_1567 ? _GEN_11 : ex_reg_rvc;
  assign _GEN_48 = _T_1567 ? _GEN_1 : _GEN_0;
  assign _GEN_49 = _T_1567 ? _T_1598 : ex_reg_flush_pipe;
  assign _GEN_50 = _T_1567 ? _T_2226 : ex_reg_load_use;
  assign _GEN_51 = _T_1567 ? _GEN_17 : ex_reg_rs_bypass_0;
  assign _GEN_52 = _T_1567 ? _GEN_18 : ex_reg_rs_lsb_0;
  assign _GEN_53 = _T_1567 ? _GEN_19 : ex_reg_rs_msb_0;
  assign _GEN_54 = _T_1567 ? _T_1621 : ex_reg_rs_bypass_1;
  assign _GEN_55 = _T_1567 ? _GEN_15 : ex_reg_rs_lsb_1;
  assign _GEN_56 = _T_1567 ? _GEN_16 : ex_reg_rs_msb_1;
  assign _T_1641 = _T_1567 | csr_io_interrupt;
  assign _T_1642 = _T_1641 | ibuf_io_inst_0_bits_replay;
  assign _GEN_57 = _T_1642 ? id_cause : ex_cause;
  assign _GEN_58 = _T_1642 ? ibuf_io_inst_0_bits_inst_bits : ex_reg_inst;
  assign _GEN_59 = _T_1642 ? ibuf_io_inst_0_bits_cinst : ex_reg_cinst;
  assign _GEN_60 = _T_1642 ? ibuf_io_pc : ex_reg_pc;
  assign _T_1643 = ex_reg_valid | ex_reg_replay;
  assign ex_pc_valid = _T_1643 | ex_reg_xcpt_interrupt;
  assign _T_1645 = io_dmem_resp_valid == 1'h0;
  assign wb_dcache_miss = wb_ctrl_mem & _T_1645;
  assign _T_1647 = io_dmem_req_ready == 1'h0;
  assign _T_1648 = ex_ctrl_mem & _T_1647;
  assign _T_1650 = div_io_req_ready == 1'h0;
  assign _T_1651 = ex_ctrl_div & _T_1650;
  assign replay_ex_structural = _T_1648 | _T_1651;
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use;
  assign _T_1652 = replay_ex_structural | replay_ex_load_use;
  assign _T_1653 = ex_reg_valid & _T_1652;
  assign replay_ex = ex_reg_replay | _T_1653;
  assign _T_1654 = take_pc | replay_ex;
  assign _T_1656 = ex_reg_valid == 1'h0;
  assign ctrl_killx = _T_1654 | _T_1656;
  assign _T_1658 = ex_ctrl_mem_cmd == 5'h7;
  assign _T_1672 = 3'h0 == ex_ctrl_mem_type;
  assign _T_1673 = 3'h4 == ex_ctrl_mem_type;
  assign _T_1674 = 3'h1 == ex_ctrl_mem_type;
  assign _T_1675 = 3'h5 == ex_ctrl_mem_type;
  assign _T_1678 = _T_1672 | _T_1673;
  assign _T_1679 = _T_1678 | _T_1674;
  assign _T_1680 = _T_1679 | _T_1675;
  assign ex_slow_bypass = _T_1658 | _T_1680;
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt;
  assign _T_1685 = mem_reg_valid | mem_reg_replay;
  assign mem_pc_valid = _T_1685 | mem_reg_xcpt_interrupt;
  assign mem_br_taken = bypass_mux_1[0];
  assign _T_1686 = $signed(mem_reg_pc);
  assign _T_1687 = mem_ctrl_branch & mem_br_taken;
  assign _T_1692 = mem_reg_inst[31];
  assign _T_1693 = $signed(_T_1692);
  assign _T_1699 = {11{_T_1693}};
  assign _T_1705 = mem_reg_inst[19:12];
  assign _T_1706 = $signed(_T_1705);
  assign _T_1707 = {8{_T_1693}};
  assign _T_1716 = mem_reg_inst[20];
  assign _T_1717 = $signed(_T_1716);
  assign _T_1720 = mem_reg_inst[7];
  assign _T_1721 = $signed(_T_1720);
  assign _T_1731 = mem_reg_inst[30:25];
  assign _T_1741 = mem_reg_inst[11:8];
  assign _T_1745 = mem_reg_inst[24:21];
  assign _T_1762 = {_T_1731,_T_1741};
  assign _T_1763 = {_T_1762,1'h0};
  assign _T_1764 = $unsigned(_T_1721);
  assign _T_1765 = $unsigned(_T_1707);
  assign _T_1766 = {_T_1765,_T_1764};
  assign _T_1767 = $unsigned(_T_1699);
  assign _T_1768 = $unsigned(_T_1693);
  assign _T_1769 = {_T_1768,_T_1767};
  assign _T_1770 = {_T_1769,_T_1766};
  assign _T_1771 = {_T_1770,_T_1763};
  assign _T_1772 = $signed(_T_1771);
  assign _T_1847 = {_T_1731,_T_1745};
  assign _T_1848 = {_T_1847,1'h0};
  assign _T_1849 = $unsigned(_T_1717);
  assign _T_1850 = $unsigned(_T_1706);
  assign _T_1851 = {_T_1850,_T_1849};
  assign _T_1855 = {_T_1769,_T_1851};
  assign _T_1856 = {_T_1855,_T_1848};
  assign _T_1857 = $signed(_T_1856);
  assign _T_1860 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
  assign _T_1861 = mem_ctrl_jal ? $signed(_T_1857) : $signed({{28{_T_1860[3]}},_T_1860});
  assign _T_1862 = _T_1687 ? $signed(_T_1772) : $signed(_T_1861);
  assign _T_1863 = $signed(_T_1686) + $signed(_T_1862);
  assign _T_1864 = _T_1863[31:0];
  assign mem_br_target = $signed(_T_1864);
  assign _T_1865 = mem_ctrl_jalr | mem_reg_sfence;
  assign _T_1866 = $signed(bypass_mux_1);
  assign _T_1867 = _T_1865 ? $signed(_T_1866) : $signed(mem_br_target);
  assign _T_1869 = $signed(_T_1867) & $signed(-32'sh2);
  assign _T_1870 = $signed(_T_1869);
  assign mem_npc = $unsigned(_T_1870);
  assign _T_1879 = mem_npc[1];
  assign _T_1880 = _T_1345 & _T_1879;
  assign _T_1882 = mem_reg_sfence == 1'h0;
  assign mem_npc_misaligned = _T_1880 & _T_1882;
  assign _T_1884 = mem_reg_xcpt == 1'h0;
  assign _T_1885 = mem_ctrl_jalr ^ mem_npc_misaligned;
  assign _T_1886 = _T_1884 & _T_1885;
  assign _T_1888 = _T_1886 ? $signed(mem_br_target) : $signed(_T_1866);
  assign mem_int_wdata = $unsigned(_T_1888);
  assign _T_1891 = _T_1687 | mem_ctrl_jalr;
  assign mem_cfi_taken = _T_1891 | mem_ctrl_jal;
  assign _T_1896 = mem_cfi_taken | mem_reg_sfence;
  assign _T_1897 = mem_reg_valid & _T_1896;
  assign _T_1899 = ctrl_killx == 1'h0;
  assign _T_1902 = _T_1569 & replay_ex;
  assign _T_1905 = _T_1899 & ex_xcpt;
  assign _T_1908 = _T_1569 & ex_reg_xcpt_interrupt;
  assign _T_1909 = mem_reg_valid & mem_reg_flush_pipe;
  assign _GEN_70 = _T_1909 ? 1'h0 : mem_reg_sfence;
  assign _T_1912 = _T_1909 == 1'h0;
  assign _T_1913 = _T_1912 & ex_pc_valid;
  assign _T_1915 = ex_ctrl_mem_cmd == 5'h0;
  assign _T_1917 = ex_ctrl_mem_cmd == 5'h6;
  assign _T_1918 = _T_1915 | _T_1917;
  assign _T_1921 = _T_1918 | _T_1658;
  assign _T_1926 = ex_ctrl_mem_cmd == 5'h4;
  assign _T_1927 = ex_ctrl_mem_cmd == 5'h9;
  assign _T_1928 = ex_ctrl_mem_cmd == 5'ha;
  assign _T_1929 = ex_ctrl_mem_cmd == 5'hb;
  assign _T_1930 = _T_1926 | _T_1927;
  assign _T_1931 = _T_1930 | _T_1928;
  assign _T_1932 = _T_1931 | _T_1929;
  assign _T_1938 = ex_ctrl_mem_cmd == 5'h8;
  assign _T_1939 = ex_ctrl_mem_cmd == 5'hc;
  assign _T_1940 = ex_ctrl_mem_cmd == 5'hd;
  assign _T_1941 = ex_ctrl_mem_cmd == 5'he;
  assign _T_1942 = ex_ctrl_mem_cmd == 5'hf;
  assign _T_1943 = _T_1938 | _T_1939;
  assign _T_1944 = _T_1943 | _T_1940;
  assign _T_1945 = _T_1944 | _T_1941;
  assign _T_1946 = _T_1945 | _T_1942;
  assign _T_1947 = _T_1932 | _T_1946;
  assign _T_1948 = _T_1921 | _T_1947;
  assign _T_1949 = ex_ctrl_mem & _T_1948;
  assign _T_1951 = ex_ctrl_mem_cmd == 5'h1;
  assign _T_1953 = ex_ctrl_mem_cmd == 5'h11;
  assign _T_1954 = _T_1951 | _T_1953;
  assign _T_1957 = _T_1954 | _T_1658;
  assign _T_1984 = _T_1957 | _T_1947;
  assign _T_1985 = ex_ctrl_mem & _T_1984;
  assign _T_1986 = ex_ctrl_mem | ex_ctrl_rocc;
  assign _T_1988 = ex_ctrl_rxs2 & _T_1986;
  assign _T_1990 = ex_ctrl_rocc ? 3'h2 : ex_ctrl_mem_type;
  assign _T_1992 = _T_1990[1:0];
  assign _T_1994 = _T_1992 == 2'h0;
  assign _T_1995 = ex_rs_1[7:0];
  assign _T_1996 = {_T_1995,_T_1995};
  assign _T_1997 = {_T_1996,_T_1996};
  assign _T_1999 = _T_1992 == 2'h1;
  assign _T_2000 = ex_rs_1[15:0];
  assign _T_2001 = {_T_2000,_T_2000};
  assign _T_2002 = _T_1999 ? _T_2001 : ex_rs_1;
  assign _T_2003 = _T_1994 ? _T_1997 : _T_2002;
  assign _GEN_71 = _T_1988 ? _T_2003 : mem_reg_rs2;
  assign _T_2004 = ex_ctrl_jalr & csr_io_status_debug;
  assign _GEN_72 = _T_2004 ? 1'h1 : ex_ctrl_fence_i;
  assign _GEN_73 = _T_2004 ? 1'h1 : ex_reg_flush_pipe;
  assign _GEN_75 = _T_1913 ? ex_ctrl_fp : mem_ctrl_fp;
  assign _GEN_76 = _T_1913 ? ex_ctrl_rocc : mem_ctrl_rocc;
  assign _GEN_77 = _T_1913 ? ex_ctrl_branch : mem_ctrl_branch;
  assign _GEN_78 = _T_1913 ? ex_ctrl_jal : mem_ctrl_jal;
  assign _GEN_79 = _T_1913 ? ex_ctrl_jalr : mem_ctrl_jalr;
  assign _GEN_87 = _T_1913 ? ex_ctrl_mem : mem_ctrl_mem;
  assign _GEN_89 = _T_1913 ? ex_ctrl_mem_type : mem_ctrl_mem_type;
  assign _GEN_93 = _T_1913 ? ex_ctrl_wfd : mem_ctrl_wfd;
  assign _GEN_94 = _T_1913 ? ex_ctrl_div : mem_ctrl_div;
  assign _GEN_95 = _T_1913 ? ex_ctrl_wxd : mem_ctrl_wxd;
  assign _GEN_96 = _T_1913 ? ex_ctrl_csr : mem_ctrl_csr;
  assign _GEN_97 = _T_1913 ? _GEN_72 : mem_ctrl_fence_i;
  assign _GEN_101 = _T_1913 ? ex_reg_rvc : mem_reg_rvc;
  assign _GEN_102 = _T_1913 ? _T_1949 : mem_reg_load;
  assign _GEN_103 = _T_1913 ? _T_1985 : mem_reg_store;
  assign _GEN_104 = _T_1913 ? 1'h0 : _GEN_70;
  assign _GEN_115 = _T_1913 ? _GEN_73 : mem_reg_flush_pipe;
  assign _GEN_116 = _T_1913 ? ex_slow_bypass : mem_reg_slow_bypass;
  assign _GEN_117 = _T_1913 ? ex_cause : mem_reg_cause;
  assign _GEN_118 = _T_1913 ? ex_reg_inst : mem_reg_inst;
  assign _GEN_119 = _T_1913 ? ex_reg_cinst : mem_reg_cinst;
  assign _GEN_120 = _T_1913 ? ex_reg_pc : mem_reg_pc;
  assign _GEN_121 = _T_1913 ? alu_io_out : bypass_mux_1;
  assign _GEN_122 = _T_1913 ? _GEN_71 : mem_reg_rs2;
  assign _T_2007 = mem_reg_load & bpu_io_xcpt_ld;
  assign _T_2008 = mem_reg_store & bpu_io_xcpt_st;
  assign mem_breakpoint = _T_2007 | _T_2008;
  assign _T_2009 = mem_reg_load & bpu_io_debug_ld;
  assign _T_2010 = mem_reg_store & bpu_io_debug_st;
  assign mem_debug_breakpoint = _T_2009 | _T_2010;
  assign _T_2014 = mem_debug_breakpoint | mem_breakpoint;
  assign mem_new_xcpt = _T_2014 | mem_npc_misaligned;
  assign _T_2015 = mem_breakpoint ? 2'h3 : 2'h0;
  assign mem_new_cause = mem_debug_breakpoint ? 4'he : {{2'd0}, _T_2015};
  assign _T_2016 = mem_reg_xcpt_interrupt | mem_reg_xcpt;
  assign _T_2017 = mem_reg_valid & mem_new_xcpt;
  assign mem_xcpt = _T_2016 | _T_2017;
  assign mem_cause = _T_2016 ? mem_reg_cause : {{28'd0}, mem_new_cause};
  assign dcache_kill_mem = _T_1405 & io_dmem_replay_next;
  assign _T_2019 = mem_reg_valid & mem_ctrl_fp;
  assign fpu_kill_mem = _T_2019 & io_fpu_nack_mem;
  assign _T_2020 = dcache_kill_mem | mem_reg_replay;
  assign replay_mem = _T_2020 | fpu_kill_mem;
  assign _T_2021 = dcache_kill_mem | _T_2081;
  assign _T_2022 = _T_2021 | mem_reg_xcpt;
  assign _T_2024 = mem_reg_valid == 1'h0;
  assign killm_common = _T_2022 | _T_2024;
  assign _T_2025 = div_io_req_ready & div_io_req_valid;
  assign _T_2028 = killm_common & _T_2027;
  assign _T_2029 = killm_common | mem_xcpt;
  assign ctrl_killm = _T_2029 | fpu_kill_mem;
  assign _T_2031 = ctrl_killm == 1'h0;
  assign _T_2033 = _T_2081 == 1'h0;
  assign _T_2034 = replay_mem & _T_2033;
  assign _T_2037 = mem_xcpt & _T_2033;
  assign _T_2040 = _T_2031 & mem_reg_flush_pipe;
  assign _T_2043 = _T_1884 & mem_ctrl_fp;
  assign _T_2044 = _T_2043 & mem_ctrl_wxd;
  assign _T_2045 = _T_2044 ? io_fpu_toint_data : mem_int_wdata;
  assign _GEN_126 = mem_pc_valid ? mem_ctrl_rocc : wb_ctrl_rocc;
  assign _GEN_137 = mem_pc_valid ? mem_ctrl_mem : wb_ctrl_mem;
  assign _GEN_139 = mem_pc_valid ? mem_ctrl_mem_type : wb_ctrl_mem_type;
  assign _GEN_143 = mem_pc_valid ? mem_ctrl_wfd : wb_ctrl_wfd;
  assign _GEN_144 = mem_pc_valid ? mem_ctrl_div : wb_ctrl_div;
  assign _GEN_145 = mem_pc_valid ? mem_ctrl_wxd : wb_ctrl_wxd;
  assign _GEN_146 = mem_pc_valid ? mem_ctrl_csr : wb_ctrl_csr;
  assign _GEN_147 = mem_pc_valid ? mem_ctrl_fence_i : wb_ctrl_fence_i;
  assign _GEN_152 = mem_pc_valid ? mem_reg_sfence : wb_reg_sfence;
  assign _GEN_153 = mem_pc_valid ? _T_2045 : bypass_mux_2;
  assign _GEN_155 = mem_pc_valid ? mem_cause : wb_reg_cause;
  assign _GEN_156 = mem_pc_valid ? mem_reg_inst : wb_reg_inst;
  assign _GEN_157 = mem_pc_valid ? mem_reg_cinst : wb_reg_cinst;
  assign _GEN_158 = mem_pc_valid ? mem_reg_pc : wb_reg_pc;
  assign _T_2047 = wb_reg_valid & wb_ctrl_mem;
  assign _T_2048 = _T_2047 & io_dmem_s2_xcpt_ma_st;
  assign _T_2051 = _T_2047 & io_dmem_s2_xcpt_ma_ld;
  assign _T_2054 = _T_2047 & io_dmem_s2_xcpt_pf_st;
  assign _T_2057 = _T_2047 & io_dmem_s2_xcpt_pf_ld;
  assign _T_2060 = _T_2047 & io_dmem_s2_xcpt_ae_st;
  assign _T_2063 = _T_2047 & io_dmem_s2_xcpt_ae_ld;
  assign _T_2065 = wb_reg_xcpt | _T_2048;
  assign _T_2066 = _T_2065 | _T_2051;
  assign _T_2067 = _T_2066 | _T_2054;
  assign _T_2068 = _T_2067 | _T_2057;
  assign _T_2069 = _T_2068 | _T_2060;
  assign wb_xcpt = _T_2069 | _T_2063;
  assign _T_2070 = _T_2060 ? 3'h7 : 3'h5;
  assign _T_2071 = _T_2057 ? 4'hd : {{1'd0}, _T_2070};
  assign _T_2072 = _T_2054 ? 4'hf : _T_2071;
  assign _T_2073 = _T_2051 ? 4'h4 : _T_2072;
  assign _T_2074 = _T_2048 ? 4'h6 : _T_2073;
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_2074};
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd;
  assign _T_2075 = wb_ctrl_div | wb_dcache_miss;
  assign wb_set_sboard = _T_2075 | wb_ctrl_rocc;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay;
  assign _T_2078 = io_rocc_cmd_ready == 1'h0;
  assign replay_wb_rocc = _T_1372 & _T_2078;
  assign replay_wb = replay_wb_common | replay_wb_rocc;
  assign _T_2079 = replay_wb | wb_xcpt;
  assign _T_2080 = _T_2079 | csr_io_eret;
  assign _T_2081 = _T_2080 | wb_reg_flush_pipe;
  assign _T_2082 = io_dmem_resp_bits_tag[0];
  assign dmem_resp_xpu = _T_2082 == 1'h0;
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1];
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data;
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay;
  assign _T_2087 = wb_wxd == 1'h0;
  assign ll_wdata = div_io_resp_bits_data;
  assign _T_2090 = div_io_resp_ready & div_io_resp_valid;
  assign _T_2092 = dmem_resp_replay & dmem_resp_xpu;
  assign _GEN_159 = _T_2092 ? 1'h0 : _T_2087;
  assign _GEN_160 = _T_2092 ? dmem_resp_waddr : div_io_resp_bits_tag;
  assign _GEN_161 = _T_2092 ? 1'h1 : _T_2090;
  assign _T_2096 = replay_wb == 1'h0;
  assign _T_2097 = wb_reg_valid & _T_2096;
  assign _T_2099 = wb_xcpt == 1'h0;
  assign wb_valid = _T_2097 & _T_2099;
  assign wb_wen = wb_valid & wb_ctrl_wxd;
  assign rf_wen = wb_wen | _GEN_161;
  assign rf_waddr = _GEN_161 ? _GEN_160 : wb_waddr;
  assign _T_2100 = dmem_resp_valid & dmem_resp_xpu;
  assign _T_2102 = wb_ctrl_csr != 3'h0;
  assign _T_2103 = _T_2102 ? csr_io_rw_rdata : bypass_mux_2;
  assign _T_2104 = _GEN_161 ? ll_wdata : _T_2103;
  assign rf_wdata = _T_2100 ? io_dmem_resp_bits_data : _T_2104;
  assign _T_2106 = rf_waddr != 5'h0;
  assign _T_2108 = ~ rf_waddr;
  assign _T_2110 = rf_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign _GEN_162 = _T_2110 ? rf_wdata : _T_1199;
  assign _T_2111 = rf_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign _GEN_163 = _T_2111 ? rf_wdata : _T_1209;
  assign _GEN_168 = _T_2106 ? _GEN_162 : _T_1199;
  assign _GEN_169 = _T_2106 ? _GEN_163 : _T_1209;
  assign _GEN_172 = rf_wen ? _T_2106 : 1'h0;
  assign _GEN_174 = rf_wen ? _GEN_168 : _T_1199;
  assign _GEN_175 = rf_wen ? _GEN_169 : _T_1209;
  assign _T_2112 = ibuf_io_inst_0_bits_raw[31:20];
  assign _T_2113 = wb_reg_inst[31:20];
  assign _T_2115 = wb_reg_valid ? wb_ctrl_csr : 3'h0;
  assign _T_2118 = _T_836 & _T_1602;
  assign _T_2121 = _T_815 & _T_1600;
  assign _T_2123 = ibuf_io_inst_0_bits_inst_rd != 5'h0;
  assign _T_2124 = _T_1144 & _T_2123;
  assign _T_2128 = _T_2127[31:1];
  assign _GEN_186 = {{1'd0}, _T_2128};
  assign _T_2129 = _GEN_186 << 1;
  assign _T_2132 = 32'h1 << _GEN_160;
  assign _T_2134 = _GEN_161 ? _T_2132 : 32'h0;
  assign _T_2135 = ~ _T_2134;
  assign _T_2136 = _T_2129 & _T_2135;
  assign _GEN_176 = _GEN_161 ? _T_2136 : _T_2127;
  assign _T_2138 = _T_2129 >> ibuf_io_inst_0_bits_inst_rs1;
  assign _T_2139 = _T_2138[0];
  assign _T_2140 = _GEN_160 == ibuf_io_inst_0_bits_inst_rs1;
  assign _T_2141 = _GEN_161 & _T_2140;
  assign _T_2143 = _T_2141 == 1'h0;
  assign _T_2144 = _T_2139 & _T_2143;
  assign _T_2145 = _T_2118 & _T_2144;
  assign _T_2146 = _T_2129 >> ibuf_io_inst_0_bits_inst_rs2;
  assign _T_2147 = _T_2146[0];
  assign _T_2148 = _GEN_160 == ibuf_io_inst_0_bits_inst_rs2;
  assign _T_2149 = _GEN_161 & _T_2148;
  assign _T_2151 = _T_2149 == 1'h0;
  assign _T_2152 = _T_2147 & _T_2151;
  assign _T_2153 = _T_2121 & _T_2152;
  assign _T_2154 = _T_2129 >> ibuf_io_inst_0_bits_inst_rd;
  assign _T_2155 = _T_2154[0];
  assign _T_2156 = _GEN_160 == ibuf_io_inst_0_bits_inst_rd;
  assign _T_2157 = _GEN_161 & _T_2156;
  assign _T_2159 = _T_2157 == 1'h0;
  assign _T_2160 = _T_2155 & _T_2159;
  assign _T_2161 = _T_2124 & _T_2160;
  assign _T_2162 = _T_2145 | _T_2153;
  assign id_sboard_hazard = _T_2162 | _T_2161;
  assign _T_2163 = wb_set_sboard & wb_wen;
  assign _T_2165 = 32'h1 << wb_waddr;
  assign _T_2167 = _T_2163 ? _T_2165 : 32'h0;
  assign _T_2168 = _T_2136 | _T_2167;
  assign _T_2169 = _GEN_161 | _T_2163;
  assign _GEN_177 = _T_2169 ? _T_2168 : _GEN_176;
  assign _T_2171 = ex_ctrl_csr != 3'h0;
  assign _T_2172 = _T_2171 | ex_ctrl_jalr;
  assign _T_2173 = _T_2172 | ex_ctrl_mem;
  assign _T_2174 = _T_2173 | ex_ctrl_div;
  assign _T_2175 = _T_2174 | ex_ctrl_fp;
  assign ex_cannot_bypass = _T_2175 | ex_ctrl_rocc;
  assign _T_2176 = ibuf_io_inst_0_bits_inst_rs1 == ex_waddr;
  assign _T_2177 = _T_2118 & _T_2176;
  assign _T_2178 = ibuf_io_inst_0_bits_inst_rs2 == ex_waddr;
  assign _T_2179 = _T_2121 & _T_2178;
  assign _T_2180 = ibuf_io_inst_0_bits_inst_rd == ex_waddr;
  assign _T_2181 = _T_2124 & _T_2180;
  assign _T_2182 = _T_2177 | _T_2179;
  assign _T_2183 = _T_2182 | _T_2181;
  assign data_hazard_ex = ex_ctrl_wxd & _T_2183;
  assign _T_2185 = io_fpu_dec_ren1 & _T_2176;
  assign _T_2187 = io_fpu_dec_ren2 & _T_2178;
  assign _T_2188 = ibuf_io_inst_0_bits_inst_rs3 == ex_waddr;
  assign _T_2189 = io_fpu_dec_ren3 & _T_2188;
  assign _T_2191 = io_fpu_dec_wen & _T_2180;
  assign _T_2192 = _T_2185 | _T_2187;
  assign _T_2193 = _T_2192 | _T_2189;
  assign _T_2194 = _T_2193 | _T_2191;
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_2194;
  assign _T_2195 = data_hazard_ex & ex_cannot_bypass;
  assign _T_2196 = _T_2195 | fp_data_hazard_ex;
  assign id_ex_hazard = ex_reg_valid & _T_2196;
  assign _T_2199 = mem_ctrl_csr != 3'h0;
  assign _T_2200 = mem_ctrl_mem & mem_reg_slow_bypass;
  assign _T_2201 = _T_2199 | _T_2200;
  assign _T_2202 = _T_2201 | mem_ctrl_div;
  assign _T_2203 = _T_2202 | mem_ctrl_fp;
  assign mem_cannot_bypass = _T_2203 | mem_ctrl_rocc;
  assign _T_2204 = ibuf_io_inst_0_bits_inst_rs1 == mem_waddr;
  assign _T_2205 = _T_2118 & _T_2204;
  assign _T_2206 = ibuf_io_inst_0_bits_inst_rs2 == mem_waddr;
  assign _T_2207 = _T_2121 & _T_2206;
  assign _T_2208 = ibuf_io_inst_0_bits_inst_rd == mem_waddr;
  assign _T_2209 = _T_2124 & _T_2208;
  assign _T_2210 = _T_2205 | _T_2207;
  assign _T_2211 = _T_2210 | _T_2209;
  assign data_hazard_mem = mem_ctrl_wxd & _T_2211;
  assign _T_2213 = io_fpu_dec_ren1 & _T_2204;
  assign _T_2215 = io_fpu_dec_ren2 & _T_2206;
  assign _T_2216 = ibuf_io_inst_0_bits_inst_rs3 == mem_waddr;
  assign _T_2217 = io_fpu_dec_ren3 & _T_2216;
  assign _T_2219 = io_fpu_dec_wen & _T_2208;
  assign _T_2220 = _T_2213 | _T_2215;
  assign _T_2221 = _T_2220 | _T_2217;
  assign _T_2222 = _T_2221 | _T_2219;
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_2222;
  assign _T_2223 = data_hazard_mem & mem_cannot_bypass;
  assign _T_2224 = _T_2223 | fp_data_hazard_mem;
  assign id_mem_hazard = mem_reg_valid & _T_2224;
  assign _T_2225 = mem_reg_valid & data_hazard_mem;
  assign _T_2226 = _T_2225 & mem_ctrl_mem;
  assign _T_2227 = ibuf_io_inst_0_bits_inst_rs1 == wb_waddr;
  assign _T_2228 = _T_2118 & _T_2227;
  assign _T_2229 = ibuf_io_inst_0_bits_inst_rs2 == wb_waddr;
  assign _T_2230 = _T_2121 & _T_2229;
  assign _T_2231 = ibuf_io_inst_0_bits_inst_rd == wb_waddr;
  assign _T_2232 = _T_2124 & _T_2231;
  assign _T_2233 = _T_2228 | _T_2230;
  assign _T_2234 = _T_2233 | _T_2232;
  assign data_hazard_wb = wb_ctrl_wxd & _T_2234;
  assign _T_2236 = io_fpu_dec_ren1 & _T_2227;
  assign _T_2238 = io_fpu_dec_ren2 & _T_2229;
  assign _T_2239 = ibuf_io_inst_0_bits_inst_rs3 == wb_waddr;
  assign _T_2240 = io_fpu_dec_ren3 & _T_2239;
  assign _T_2242 = io_fpu_dec_wen & _T_2231;
  assign _T_2243 = _T_2236 | _T_2238;
  assign _T_2244 = _T_2243 | _T_2240;
  assign _T_2245 = _T_2244 | _T_2242;
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_2245;
  assign _T_2246 = data_hazard_wb & wb_set_sboard;
  assign _T_2247 = _T_2246 | fp_data_hazard_wb;
  assign id_wb_hazard = wb_reg_valid & _T_2247;
  assign _T_2251 = io_dmem_req_valid | dcache_blocked;
  assign _T_2252 = _T_1647 & _T_2251;
  assign _T_2261 = id_ex_hazard | id_mem_hazard;
  assign _T_2262 = _T_2261 | id_wb_hazard;
  assign _T_2263 = _T_2262 | id_sboard_hazard;
  assign _T_2264 = ex_reg_valid | mem_reg_valid;
  assign _T_2265 = _T_2264 | wb_reg_valid;
  assign _T_2266 = csr_io_singleStep & _T_2265;
  assign _T_2267 = _T_2263 | _T_2266;
  assign _T_2270 = _T_1026 & dcache_blocked;
  assign _T_2271 = _T_2267 | _T_2270;
  assign _T_2276 = div_io_resp_valid & _T_2087;
  assign _T_2277 = div_io_req_ready | _T_2276;
  assign _T_2279 = _T_2277 == 1'h0;
  assign _T_2280 = _T_2279 | div_io_req_valid;
  assign _T_2281 = _T_1114 & _T_2280;
  assign _T_2282 = _T_2271 | _T_2281;
  assign _T_2283 = _T_2282 | _T_1380;
  assign ctrl_stalld = _T_2283 | csr_io_csr_stall;
  assign _T_2285 = ibuf_io_inst_0_valid == 1'h0;
  assign _T_2286 = _T_2285 | ibuf_io_inst_0_bits_replay;
  assign _T_2287 = _T_2286 | take_pc;
  assign _T_2288 = _T_2287 | ctrl_stalld;
  assign _T_2289 = _T_2288 | csr_io_interrupt;
  assign _T_2292 = wb_xcpt | csr_io_eret;
  assign _T_2293 = replay_wb ? wb_reg_pc : mem_npc;
  assign _T_2294 = _T_2292 ? csr_io_evec : _T_2293;
  assign _T_2295 = wb_reg_valid & wb_ctrl_fence_i;
  assign _T_2297 = io_dmem_s2_nack == 1'h0;
  assign _T_2298 = _T_2295 & _T_2297;
  assign _T_2299 = wb_reg_valid & wb_reg_sfence;
  assign _T_2300 = wb_ctrl_mem_type[0];
  assign _T_2303 = ctrl_stalld == 1'h0;
  assign _T_2346 = ex_reg_valid & ex_ctrl_mem;
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp};
  assign _T_2348 = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2;
  assign _T_2349 = killm_common | mem_breakpoint;
  assign _T_2367 = wb_reg_inst[19:15];
  assign _T_2368 = wb_reg_inst[24:20];
  assign _T_2374 = csr_io_time;
  assign _T_2377 = _T_2163 == 1'h0;
  assign _T_2378 = rf_wen & _T_2377;
  assign _T_2380 = _T_2378 ? rf_waddr : 5'h0;
  assign _T_2392 = reset == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_ctrl_fp = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_ctrl_rocc = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  ex_ctrl_branch = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  ex_ctrl_jal = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  ex_ctrl_jalr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  ex_ctrl_rxs2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ex_ctrl_sel_alu2 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ex_ctrl_sel_alu1 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ex_ctrl_sel_imm = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ex_ctrl_alu_fn = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ex_ctrl_mem = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ex_ctrl_mem_cmd = _RAND_11[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ex_ctrl_mem_type = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ex_ctrl_wfd = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ex_ctrl_div = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ex_ctrl_wxd = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  ex_ctrl_csr = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  ex_ctrl_fence_i = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_fp = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_rocc = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_branch = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_jal = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_jalr = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_mem = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  mem_ctrl_mem_type = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  mem_ctrl_wfd = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  mem_ctrl_div = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  mem_ctrl_wxd = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  mem_ctrl_csr = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  mem_ctrl_fence_i = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  wb_ctrl_rocc = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  wb_ctrl_mem = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  wb_ctrl_mem_type = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  wb_ctrl_wfd = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  wb_ctrl_div = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  wb_ctrl_wxd = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  wb_ctrl_csr = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  wb_ctrl_fence_i = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  ex_reg_xcpt_interrupt = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  ex_reg_valid = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  ex_reg_rvc = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  ex_reg_xcpt = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  ex_reg_flush_pipe = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  ex_reg_load_use = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  ex_cause = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  ex_reg_replay = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  ex_reg_pc = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  ex_reg_inst = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  ex_reg_cinst = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  mem_reg_xcpt_interrupt = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  mem_reg_valid = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  mem_reg_rvc = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  mem_reg_xcpt = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  mem_reg_replay = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  mem_reg_flush_pipe = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  mem_reg_cause = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  mem_reg_slow_bypass = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  mem_reg_load = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  mem_reg_store = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  mem_reg_sfence = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  mem_reg_pc = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  mem_reg_inst = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  mem_reg_cinst = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  bypass_mux_1 = _RAND_63[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  mem_reg_rs2 = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  wb_reg_valid = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  wb_reg_xcpt = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  wb_reg_replay = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  wb_reg_flush_pipe = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  wb_reg_cause = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  wb_reg_sfence = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  wb_reg_pc = _RAND_71[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  wb_reg_inst = _RAND_72[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  wb_reg_cinst = _RAND_73[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  bypass_mux_2 = _RAND_74[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  id_reg_fence = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_1189[initvar] = _RAND_76[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_77 = {1{$random}};
  _RAND_78 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  ex_reg_rs_bypass_0 = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  ex_reg_rs_bypass_1 = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  ex_reg_rs_lsb_0 = _RAND_81[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  ex_reg_rs_lsb_1 = _RAND_82[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  ex_reg_rs_msb_0 = _RAND_83[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  ex_reg_rs_msb_1 = _RAND_84[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  _T_2027 = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  _T_2127 = _RAND_86[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  dcache_blocked = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{$random}};
  _T_2383 = _RAND_88[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{$random}};
  _T_2385 = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{$random}};
  _T_2388 = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{$random}};
  _T_2390 = _RAND_91[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_1567) begin
      ex_ctrl_fp <= 1'h0;
    end
    if (_T_1567) begin
      ex_ctrl_rocc <= 1'h0;
    end
    if (_T_1567) begin
      ex_ctrl_branch <= _T_785;
    end
    if (_T_1567) begin
      ex_ctrl_jal <= _T_791;
    end
    if (_T_1567) begin
      ex_ctrl_jalr <= _T_797;
    end
    if (_T_1567) begin
      ex_ctrl_rxs2 <= _T_815;
    end
    if (_T_1567) begin
      if (id_xcpt) begin
        if (_T_1595) begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end else begin
          if (_T_1588) begin
            ex_ctrl_sel_alu2 <= 2'h1;
          end else begin
            ex_ctrl_sel_alu2 <= 2'h0;
          end
        end
      end else begin
        ex_ctrl_sel_alu2 <= _T_871;
      end
    end
    if (_T_1567) begin
      if (id_xcpt) begin
        if (_T_1595) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          if (_T_1588) begin
            ex_ctrl_sel_alu1 <= 2'h2;
          end else begin
            ex_ctrl_sel_alu1 <= 2'h1;
          end
        end
      end else begin
        ex_ctrl_sel_alu1 <= _T_888;
      end
    end
    if (_T_1567) begin
      ex_ctrl_sel_imm <= _T_920;
    end
    if (_T_1567) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= _T_1010;
      end
    end
    if (_T_1567) begin
      ex_ctrl_mem <= _T_1026;
    end
    if (_T_1567) begin
      ex_ctrl_mem_cmd <= _T_1086;
    end
    if (_T_1567) begin
      if (id_sfence) begin
        ex_ctrl_mem_type <= {{1'd0}, _T_1603};
      end else begin
        ex_ctrl_mem_type <= _T_1106;
      end
    end
    if (_T_1567) begin
      ex_ctrl_wfd <= 1'h0;
    end
    if (_T_1567) begin
      ex_ctrl_div <= _T_1114;
    end
    if (_T_1567) begin
      ex_ctrl_wxd <= _T_1144;
    end
    if (_T_1567) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h5;
      end else begin
        ex_ctrl_csr <= _T_1164;
      end
    end
    if (_T_1567) begin
      ex_ctrl_fence_i <= _T_1168;
    end
    if (_T_1913) begin
      mem_ctrl_fp <= ex_ctrl_fp;
    end
    if (_T_1913) begin
      mem_ctrl_rocc <= ex_ctrl_rocc;
    end
    if (_T_1913) begin
      mem_ctrl_branch <= ex_ctrl_branch;
    end
    if (_T_1913) begin
      mem_ctrl_jal <= ex_ctrl_jal;
    end
    if (_T_1913) begin
      mem_ctrl_jalr <= ex_ctrl_jalr;
    end
    if (_T_1913) begin
      mem_ctrl_mem <= ex_ctrl_mem;
    end
    if (_T_1913) begin
      mem_ctrl_mem_type <= ex_ctrl_mem_type;
    end
    if (_T_1913) begin
      mem_ctrl_wfd <= ex_ctrl_wfd;
    end
    if (_T_1913) begin
      mem_ctrl_div <= ex_ctrl_div;
    end
    if (_T_1913) begin
      mem_ctrl_wxd <= ex_ctrl_wxd;
    end
    if (_T_1913) begin
      mem_ctrl_csr <= ex_ctrl_csr;
    end
    if (_T_1913) begin
      if (_T_2004) begin
        mem_ctrl_fence_i <= 1'h1;
      end else begin
        mem_ctrl_fence_i <= ex_ctrl_fence_i;
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rocc <= mem_ctrl_rocc;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem_type <= mem_ctrl_mem_type;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_1578;
    ex_reg_valid <= _T_1567;
    if (_T_1567) begin
      if (id_xcpt) begin
        if (_T_1588) begin
          ex_reg_rvc <= 1'h1;
        end else begin
          ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
        end
      end else begin
        ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
      end
    end
    ex_reg_xcpt <= _T_1574;
    if (_T_1567) begin
      ex_reg_flush_pipe <= _T_1598;
    end
    if (_T_1567) begin
      ex_reg_load_use <= _T_2226;
    end
    if (_T_1642) begin
      if (csr_io_interrupt) begin
        ex_cause <= csr_io_interrupt_cause;
      end else begin
        ex_cause <= {{28'd0}, _T_1401};
      end
    end
    ex_reg_replay <= _T_1571;
    if (_T_1642) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_1642) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    if (_T_1642) begin
      ex_reg_cinst <= ibuf_io_inst_0_bits_cinst;
    end
    mem_reg_xcpt_interrupt <= _T_1908;
    mem_reg_valid <= _T_1899;
    if (_T_1913) begin
      mem_reg_rvc <= ex_reg_rvc;
    end
    mem_reg_xcpt <= _T_1905;
    mem_reg_replay <= _T_1902;
    if (_T_1913) begin
      if (_T_2004) begin
        mem_reg_flush_pipe <= 1'h1;
      end else begin
        mem_reg_flush_pipe <= ex_reg_flush_pipe;
      end
    end
    if (_T_1913) begin
      mem_reg_cause <= ex_cause;
    end
    if (_T_1913) begin
      mem_reg_slow_bypass <= ex_slow_bypass;
    end
    if (_T_1913) begin
      mem_reg_load <= _T_1949;
    end
    if (_T_1913) begin
      mem_reg_store <= _T_1985;
    end
    if (_T_1913) begin
      mem_reg_sfence <= 1'h0;
    end else begin
      if (_T_1909) begin
        mem_reg_sfence <= 1'h0;
      end
    end
    if (_T_1913) begin
      mem_reg_pc <= ex_reg_pc;
    end
    if (_T_1913) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (_T_1913) begin
      mem_reg_cinst <= ex_reg_cinst;
    end
    if (_T_1913) begin
      bypass_mux_1 <= alu_io_out;
    end
    if (_T_1913) begin
      if (_T_1988) begin
        if (_T_1994) begin
          mem_reg_rs2 <= _T_1997;
        end else begin
          if (_T_1999) begin
            mem_reg_rs2 <= _T_2001;
          end else begin
            if (ex_reg_rs_bypass_1) begin
              if (_T_1456) begin
                mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
              end else begin
                if (_T_1453) begin
                  mem_reg_rs2 <= bypass_mux_2;
                end else begin
                  if (_T_1450) begin
                    mem_reg_rs2 <= bypass_mux_1;
                  end else begin
                    mem_reg_rs2 <= 32'h0;
                  end
                end
              end
            end else begin
              mem_reg_rs2 <= _T_1458;
            end
          end
        end
      end
    end
    wb_reg_valid <= _T_2031;
    wb_reg_xcpt <= _T_2037;
    wb_reg_replay <= _T_2034;
    wb_reg_flush_pipe <= _T_2040;
    if (mem_pc_valid) begin
      if (_T_2016) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, mem_new_cause};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_sfence <= mem_reg_sfence;
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      wb_reg_cinst <= mem_reg_cinst;
    end
    if (mem_pc_valid) begin
      if (_T_2044) begin
        bypass_mux_2 <= io_fpu_toint_data;
      end else begin
        bypass_mux_2 <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else begin
      if (_T_1567) begin
        if (id_fence_next) begin
          id_reg_fence <= 1'h1;
        end else begin
          if (_T_1365) begin
            id_reg_fence <= 1'h0;
          end
        end
      end else begin
        if (_T_1365) begin
          id_reg_fence <= 1'h0;
        end
      end
    end
    if(_T_1189__T_2109_en & _T_1189__T_2109_mask) begin
      _T_1189[_T_1189__T_2109_addr] <= _T_1189__T_2109_data;
    end
    if (_T_1567) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= _T_1606;
      end
    end
    if (_T_1567) begin
      ex_reg_rs_bypass_1 <= _T_1621;
    end
    if (_T_1567) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= _T_1637;
      end else begin
        if (_T_1616) begin
          ex_reg_rs_lsb_0 <= _T_1617;
        end else begin
          if (_T_1410) begin
            ex_reg_rs_lsb_0 <= 2'h0;
          end else begin
            if (id_bypass_src_0_1) begin
              ex_reg_rs_lsb_0 <= 2'h1;
            end else begin
              if (id_bypass_src_0_2) begin
                ex_reg_rs_lsb_0 <= 2'h2;
              end else begin
                ex_reg_rs_lsb_0 <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (_T_1567) begin
      if (_T_1631) begin
        ex_reg_rs_lsb_1 <= _T_1632;
      end else begin
        if (_T_1414) begin
          ex_reg_rs_lsb_1 <= 2'h0;
        end else begin
          if (id_bypass_src_1_1) begin
            ex_reg_rs_lsb_1 <= 2'h1;
          end else begin
            if (id_bypass_src_1_2) begin
              ex_reg_rs_lsb_1 <= 2'h2;
            end else begin
              ex_reg_rs_lsb_1 <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_1567) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= _T_1638;
      end else begin
        if (_T_1616) begin
          ex_reg_rs_msb_0 <= _T_1618;
        end
      end
    end
    if (_T_1567) begin
      if (_T_1631) begin
        ex_reg_rs_msb_1 <= _T_1633;
      end
    end
    _T_2027 <= _T_2025;
    if (reset) begin
      _T_2127 <= 32'h0;
    end else begin
      if (_T_2169) begin
        _T_2127 <= _T_2168;
      end else begin
        if (_GEN_161) begin
          _T_2127 <= _T_2136;
        end
      end
    end
    dcache_blocked <= _T_2252;
    if (ex_reg_rs_bypass_0) begin
      if (_T_1446) begin
        _T_2383 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1443) begin
          _T_2383 <= bypass_mux_2;
        end else begin
          if (_T_1440) begin
            _T_2383 <= bypass_mux_1;
          end else begin
            _T_2383 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2383 <= _T_1448;
    end
    _T_2385 <= _T_2383;
    if (ex_reg_rs_bypass_1) begin
      if (_T_1456) begin
        _T_2388 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1453) begin
          _T_2388 <= bypass_mux_2;
        end else begin
          if (_T_1450) begin
            _T_2388 <= bypass_mux_1;
          end else begin
            _T_2388 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2388 <= _T_1458;
    end
    _T_2390 <= _T_2388;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2392) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%h] W[r%d=%h][%d] R[r%d=%h] R[r%d=%h] inst=[%h] DASM(%h)\n",io_hartid,_T_2374,wb_valid,wb_reg_pc,_T_2380,rf_wdata,rf_wen,_T_2367,_T_2385,_T_2368,_T_2390,wb_reg_cinst,wb_reg_cinst);
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
