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
// SVN $Revision: 29485 $
// SVN $Date: 2017-03-31 10:16:24 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`include "coreriscv_axi4_defines.v"
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_DEBUG_MODULE(
  input   clk,
  input   reset,
  output  io_db_req_ready,
  input   io_db_req_valid,
  input  [4:0] io_db_req_bits_addr,
  input  [1:0] io_db_req_bits_op,
  input  [33:0] io_db_req_bits_data,
  input   io_db_resp_ready,
  output  io_db_resp_valid,
  output [1:0] io_db_resp_bits_resp,
  output [33:0] io_db_resp_bits_data,
  output  io_debugInterrupts_0,
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
  output  io_ndreset,
  output  io_fullreset
);
  wire  CONTROLReset_interrupt;
  wire  CONTROLReset_haltnot;
  wire [9:0] CONTROLReset_reserved0;
  wire [2:0] CONTROLReset_buserror;
  wire [2:0] CONTROLReset_serial;
  wire  CONTROLReset_autoincrement;
  wire [2:0] CONTROLReset_access;
  wire [9:0] CONTROLReset_hartid;
  wire  CONTROLReset_ndreset;
  wire  CONTROLReset_fullreset;
  wire  CONTROLWrEn;
  reg  CONTROLReg_interrupt;
  reg [31:0] GEN_26;
  reg  CONTROLReg_haltnot;
  reg [31:0] GEN_27;
  reg [9:0] CONTROLReg_reserved0;
  reg [31:0] GEN_28;
  reg [2:0] CONTROLReg_buserror;
  reg [31:0] GEN_29;
  reg [2:0] CONTROLReg_serial;
  reg [31:0] GEN_30;
  reg  CONTROLReg_autoincrement;
  reg [31:0] GEN_52;
  reg [2:0] CONTROLReg_access;
  reg [31:0] GEN_85;
  reg [9:0] CONTROLReg_hartid;
  reg [31:0] GEN_86;
  reg  CONTROLReg_ndreset;
  reg [31:0] GEN_88;
  reg  CONTROLReg_fullreset;
  reg [31:0] GEN_89;
  wire  CONTROLWrData_interrupt;
  wire  CONTROLWrData_haltnot;
  wire [9:0] CONTROLWrData_reserved0;
  wire [2:0] CONTROLWrData_buserror;
  wire [2:0] CONTROLWrData_serial;
  wire  CONTROLWrData_autoincrement;
  wire [2:0] CONTROLWrData_access;
  wire [9:0] CONTROLWrData_hartid;
  wire  CONTROLWrData_ndreset;
  wire  CONTROLWrData_fullreset;
  wire  CONTROLRdData_interrupt;
  wire  CONTROLRdData_haltnot;
  wire [9:0] CONTROLRdData_reserved0;
  wire [2:0] CONTROLRdData_buserror;
  wire [2:0] CONTROLRdData_serial;
  wire  CONTROLRdData_autoincrement;
  wire [2:0] CONTROLRdData_access;
  wire [9:0] CONTROLRdData_hartid;
  wire  CONTROLRdData_ndreset;
  wire  CONTROLRdData_fullreset;
  reg  ndresetCtrReg;
  reg [31:0] GEN_90;
  wire [1:0] DMINFORdData_reserved0;
  wire [6:0] DMINFORdData_abussize;
  wire [3:0] DMINFORdData_serialcount;
  wire  DMINFORdData_access128;
  wire  DMINFORdData_access64;
  wire  DMINFORdData_access32;
  wire  DMINFORdData_access16;
  wire  DMINFORdData_accesss8;
  wire [5:0] DMINFORdData_dramsize;
  wire  DMINFORdData_haltsum;
  wire [2:0] DMINFORdData_reserved1;
  wire  DMINFORdData_authenticated;
  wire  DMINFORdData_authbusy;
  wire [1:0] DMINFORdData_authtype;
  wire [1:0] DMINFORdData_version;
  wire  HALTSUMRdData_serialfull;
  wire  HALTSUMRdData_serialvalid;
  wire [31:0] HALTSUMRdData_acks;
  wire  RAMWrData_interrupt;
  wire  RAMWrData_haltnot;
  wire [31:0] RAMWrData_data;
  wire  RAMRdData_interrupt;
  wire  RAMRdData_haltnot;
  wire [31:0] RAMRdData_data;
  wire  SETHALTNOTWrEn;
  wire [9:0] SETHALTNOTWrData;
  wire  CLEARDEBINTWrEn;
  wire [9:0] CLEARDEBINTWrData;
  wire  T_655_0;
  reg  interruptRegs_0;
  reg [31:0] GEN_109;
  wire  T_666_0;
  reg  haltnotRegs_0;
  reg [31:0] GEN_110;
  wire [31:0] haltnotStatus_0;
  wire [31:0] rdHaltnotStatus;
  wire  haltnotSummary;
  `ifdef USE_REGISTERS
    reg [63:0] ramMem [0:3] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [63:0] ramMem [0:3];
  `endif
  reg [63:0] GEN_111;
  wire [63:0] ramMem_T_850_data;
  wire [1:0] ramMem_T_850_addr;
  wire  ramMem_T_850_en;
  wire [63:0] ramMem_T_851_data;
  wire [1:0] ramMem_T_851_addr;
  wire  ramMem_T_851_mask;
  wire  ramMem_T_851_en;
  wire [1:0] ramAddr;
  wire [63:0] ramRdData;
  wire [63:0] ramWrData;
  wire [63:0] ramWrMask;
  wire  ramWrEn;
  wire [2:0] dbRamAddr;
  wire [31:0] dbRamRdData;
  wire [31:0] dbRamWrData;
  wire  dbRamWrEn;
  wire  dbRamRdEn;
  wire [1:0] sbRamAddr;
  wire [63:0] sbRamRdData;
  wire [63:0] sbRamWrData;
  wire  sbRamWrEn;
  wire  sbRamRdEn;
  wire [63:0] sbRomRdData;
  wire  dbRdEn;
  wire  dbWrEn;
  wire [33:0] dbRdData;
  reg  dbStateReg;
  reg [31:0] GEN_112;
  wire [1:0] dbResult_resp;
  wire [33:0] dbResult_data;
  wire [4:0] dbReq_addr;
  wire [1:0] dbReq_op;
  wire [33:0] dbReq_data;
  reg [1:0] dbRespReg_resp;
  reg [31:0] GEN_113;
  reg [33:0] dbRespReg_data;
  reg [63:0] GEN_114;
  wire  rdCondWrFailure;
  wire  dbWrNeeded;
  wire [11:0] sbAddr;
  wire [63:0] sbRdData;
  wire [63:0] sbWrData;
  wire [63:0] sbWrMask;
  wire  sbWrEn;
  wire  sbRdEn;
  wire  stallFromDb;
  wire  stallFromSb;
  wire  T_720;
  wire  T_721;
  wire  GEN_11;
  wire  GEN_12;
  wire  T_723;
  wire  T_724;
  wire  T_726;
  wire  T_727;
  wire  GEN_13;
  wire  GEN_14;
  wire  T_731;
  wire  T_732;
  wire  T_733;
  wire  T_735;
  wire  GEN_15;
  wire  GEN_16;
  wire  T_738;
  wire  GEN_17;
  wire  GEN_18;
  wire  T_741;
  wire  T_742;
  wire  T_745;
  wire  GEN_19;
  wire  GEN_20;
  wire  T_750;
  wire  T_751;
  wire  T_754;
  wire  GEN_21;
  wire  GEN_22;
  wire [2:0] T_782;
  wire [1:0] T_783;
  wire [31:0] T_799_0;
  wire [31:0] T_799_1;
  wire [31:0] dbRamWrMask_0;
  wire [31:0] dbRamWrMask_1;
  wire  T_804;
  wire [31:0] T_805;
  wire [31:0] T_806;
  wire [31:0] T_812_0;
  wire [31:0] T_812_1;
  wire [31:0] T_821_0;
  wire [31:0] T_821_1;
  wire [31:0] GEN_0;
  wire [31:0] GEN_23;
  wire [31:0] GEN_24;
  wire [31:0] GEN_1;
  wire [31:0] GEN_25;
  wire [63:0] T_828;
  wire [63:0] T_829;
  wire  T_830;
  wire  T_831;
  wire  T_832;
  wire  T_834;
  wire  T_835;
  wire  T_837;
  wire [63:0] dbRamWrDataVec;
  wire [63:0] T_838;
  wire [63:0] T_839;
  wire [63:0] T_840;
  wire [63:0] T_841;
  wire [63:0] T_842;
  wire [63:0] T_845;
  wire [63:0] T_846;
  wire  T_847;
  wire [1:0] T_848;
  wire [1:0] T_849;
  wire  T_852;
  wire  T_875_interrupt;
  wire  T_875_haltnot;
  wire [9:0] T_875_reserved0;
  wire [2:0] T_875_buserror;
  wire [2:0] T_875_serial;
  wire  T_875_autoincrement;
  wire [2:0] T_875_access;
  wire [9:0] T_875_hartid;
  wire  T_875_ndreset;
  wire  T_875_fullreset;
  wire  T_886;
  wire  T_887;
  wire [9:0] T_888;
  wire [2:0] T_889;
  wire  T_890;
  wire [2:0] T_891;
  wire [2:0] T_892;
  wire [9:0] T_893;
  wire  T_894;
  wire  T_895;
  wire  T_904_interrupt;
  wire  T_904_haltnot;
  wire [31:0] T_904_data;
  wire [31:0] T_908;
  wire  T_913;
  wire  T_915;
  wire  GEN_31;
  wire  T_917;
  wire  T_919;
  wire  T_920;
  wire  GEN_32;
  wire  T_924;
  wire  T_925;
  wire  GEN_33;
  wire  GEN_34;
  wire [9:0] GEN_35;
  wire [2:0] GEN_36;
  wire [2:0] GEN_37;
  wire  GEN_38;
  wire [2:0] GEN_39;
  wire [9:0] GEN_40;
  wire  GEN_41;
  wire  GEN_42;
  wire  GEN_43;
  wire  T_928;
  wire  T_929;
  wire  T_930;
  wire  GEN_44;
  wire  T_933;
  wire  T_935;
  wire [1:0] T_938;
  wire  T_939;
  wire  T_940;
  wire  GEN_45;
  wire [9:0] GEN_46;
  wire  GEN_47;
  wire  GEN_48;
  wire  T_945;
  wire  GEN_49;
  wire  GEN_2;
  wire  GEN_3;
  wire  GEN_4;
  wire  GEN_5;
  wire  T_958;
  wire [31:0] GEN_50;
  wire [1:0] T_963;
  wire [33:0] T_964;
  wire [33:0] GEN_51;
  wire [1:0] T_970;
  wire [3:0] T_971;
  wire [13:0] T_972;
  wire [15:0] T_973;
  wire [5:0] T_974;
  wire [1:0] T_975;
  wire [11:0] T_976;
  wire [17:0] T_977;
  wire [33:0] T_978;
  wire [33:0] GEN_53;
  wire  T_980;
  wire  T_986;
  wire [2:0] T_987;
  wire [4:0] T_988;
  wire [3:0] T_989;
  wire [6:0] T_990;
  wire [10:0] T_991;
  wire [15:0] T_992;
  wire [1:0] T_993;
  wire [1:0] T_994;
  wire [3:0] T_995;
  wire [4:0] T_996;
  wire [8:0] T_997;
  wire [13:0] T_998;
  wire [17:0] T_999;
  wire [33:0] T_1000;
  wire [33:0] GEN_54;
  wire  T_1002;
  wire  T_1009;
  wire  T_1010;
  wire  T_1011;
  wire [33:0] GEN_55;
  wire [2:0] T_1013;
  wire  T_1015;
  wire  T_1025;
  wire  T_1026;
  wire  T_1027;
  wire [33:0] GEN_56;
  wire  T_1040;
  wire  T_1041;
  wire [33:0] GEN_57;
  wire  T_1043;
  wire  T_1045;
  wire  T_1046;
  wire  T_1048;
  wire  T_1051;
  wire  T_1052;
  wire  T_1053;
  wire [1:0] T_1056;
  wire  T_1058;
  wire  T_1059;
  wire  T_1061;
  wire  T_1062;
  wire  T_1063;
  wire  T_1064;
  wire  T_1066;
  wire  T_1068;
  wire  GEN_58;
  wire [1:0] GEN_59;
  wire [33:0] GEN_60;
  wire  GEN_61;
  wire [1:0] GEN_62;
  wire [33:0] GEN_63;
  wire  T_1073;
  wire  T_1074;
  wire  GEN_64;
  wire [1:0] GEN_65;
  wire [33:0] GEN_66;
  wire  T_1078;
  wire  T_1079;
  wire  GEN_67;
  wire  GEN_68;
  wire [1:0] GEN_69;
  wire [33:0] GEN_70;
  wire [63:0] T_1101_0;
  wire [63:0] T_1101_1;
  wire [63:0] T_1101_2;
  wire [63:0] T_1101_3;
  wire [63:0] T_1101_4;
  wire [63:0] T_1101_5;
  wire [63:0] T_1101_6;
  wire [63:0] T_1101_7;
  wire [63:0] T_1101_8;
  wire [63:0] T_1101_9;
  wire [63:0] T_1101_10;
  wire [63:0] T_1101_11;
  wire [63:0] T_1101_12;
  wire [63:0] T_1101_13;
  wire [63:0] T_1101_14;
  wire [3:0] T_1104;
  wire [3:0] T_1105;
  wire [63:0] GEN_6;
  wire [63:0] GEN_71;
  wire [63:0] GEN_72;
  wire [63:0] GEN_73;
  wire [63:0] GEN_74;
  wire [63:0] GEN_75;
  wire [63:0] GEN_76;
  wire [63:0] GEN_77;
  wire [63:0] GEN_78;
  wire [63:0] GEN_79;
  wire [63:0] GEN_80;
  wire [63:0] GEN_81;
  wire [63:0] GEN_82;
  wire [63:0] GEN_83;
  wire [63:0] GEN_84;
  wire [31:0] T_1109;
  wire [31:0] T_1110;
  wire [31:0] T_1116_0;
  wire [31:0] T_1116_1;
  wire [31:0] T_1118;
  wire [31:0] T_1119;
  wire [31:0] T_1125_0;
  wire [31:0] T_1125_1;
  wire [31:0] GEN_7;
  wire [31:0] GEN_8;
  wire [3:0] T_1131;
  wire  T_1133;
  wire  GEN_87;
  wire [8:0] T_1134;
  wire  T_1137;
  wire [31:0] GEN_9;
  wire  T_1141;
  wire  T_1142;
  wire  T_1143;
  wire  T_1147;
  wire [31:0] GEN_10;
  wire  T_1151;
  wire  T_1152;
  wire  T_1153;
  wire [63:0] GEN_91;
  wire  GEN_92;
  wire  T_1162;
  wire  T_1165;
  wire  T_1166;
  wire  T_1168;
  wire  T_1169;
  wire [63:0] GEN_93;
  wire  T_1173;
  wire  T_1174;
  wire [63:0] GEN_94;
  reg [25:0] sbAcqReg_addr_block;
  reg [31:0] GEN_115;
  reg [1:0] sbAcqReg_client_xact_id;
  reg [31:0] GEN_116;
  reg [2:0] sbAcqReg_addr_beat;
  reg [31:0] GEN_117;
  reg  sbAcqReg_is_builtin_type;
  reg [31:0] GEN_118;
  reg [2:0] sbAcqReg_a_type;
  reg [31:0] GEN_119;
  reg [11:0] sbAcqReg_union;
  reg [31:0] GEN_120;
  reg [63:0] sbAcqReg_data;
  reg [63:0] GEN_121;
  reg  sbAcqValidReg;
  reg [31:0] GEN_122;
  wire  T_1203;
  wire  sbReg_get;
  wire  T_1204;
  wire  sbReg_getblk;
  wire  T_1205;
  wire  sbReg_put;
  wire  T_1206;
  wire  sbReg_putblk;
  wire  sbMultibeat;
  wire [3:0] T_1208;
  wire [2:0] sbBeatInc1;
  wire  sbLast;
  wire [2:0] T_1217_0;
  wire [2:0] T_1217_1;
  wire  T_1219;
  wire  T_1220;
  wire  T_1221;
  wire  T_1222;
  wire [2:0] T_1223;
  wire [2:0] T_1225;
  wire [28:0] T_1226;
  wire [31:0] T_1227;
  wire  T_1228;
  wire  T_1229;
  wire  T_1230;
  wire  T_1231;
  wire  T_1233;
  wire  T_1234;
  wire  T_1236;
  wire [1:0] T_1238;
  wire  T_1239;
  wire  T_1240;
  wire [3:0] T_1244;
  wire [3:0] T_1248;
  wire [7:0] T_1249;
  wire  T_1256;
  wire [7:0] T_1257;
  wire [7:0] T_1259;
  wire [7:0] T_1260;
  wire  T_1261;
  wire  T_1262;
  wire  T_1263;
  wire  T_1264;
  wire  T_1265;
  wire  T_1266;
  wire  T_1267;
  wire  T_1268;
  wire [7:0] T_1272;
  wire [7:0] T_1276;
  wire [7:0] T_1280;
  wire [7:0] T_1284;
  wire [7:0] T_1288;
  wire [7:0] T_1292;
  wire [7:0] T_1296;
  wire [7:0] T_1300;
  wire [15:0] T_1301;
  wire [15:0] T_1302;
  wire [31:0] T_1303;
  wire [15:0] T_1304;
  wire [15:0] T_1305;
  wire [31:0] T_1306;
  wire [63:0] T_1307;
  wire  T_1308;
  wire [25:0] GEN_95;
  wire [1:0] GEN_96;
  wire [2:0] GEN_97;
  wire  GEN_98;
  wire [2:0] GEN_99;
  wire [11:0] GEN_100;
  wire [63:0] GEN_101;
  wire  GEN_102;
  wire  T_1310;
  wire  T_1312;
  wire  T_1313;
  wire  GEN_103;
  wire [2:0] GEN_104;
  wire  GEN_105;
  wire  T_1316;
  wire  GEN_106;
  wire [2:0] GEN_107;
  wire  GEN_108;
  wire  T_1334;
  wire [2:0] T_1335;
  wire  T_1336;
  wire [2:0] T_1337;
  wire  T_1338;
  wire [2:0] T_1339;
  wire  T_1340;
  wire [2:0] T_1341;
  wire  T_1342;
  wire [2:0] T_1343;
  wire  T_1344;
  wire [2:0] T_1345;
  wire  T_1346;
  wire [2:0] T_1347;
  wire [2:0] T_1371_addr_beat;
  wire [1:0] T_1371_client_xact_id;
  wire  T_1371_manager_xact_id;
  wire  T_1371_is_builtin_type;
  wire [3:0] T_1371_g_type;
  wire [63:0] T_1371_data;
  wire  T_1396;
  wire  T_1397;
  wire  T_1399;
  wire  T_1400;
  wire  T_1401;
  wire  sbStall;
  wire  T_1403;
  assign io_db_req_ready = T_1064;
  assign io_db_resp_valid = dbStateReg;
  assign io_db_resp_bits_resp = dbRespReg_resp;
  assign io_db_resp_bits_data = dbRespReg_data;
  assign io_debugInterrupts_0 = interruptRegs_0;
  assign io_tl_acquire_ready = T_1403;
  assign io_tl_grant_valid = sbAcqValidReg;
  assign io_tl_grant_bits_addr_beat = T_1371_addr_beat;
  assign io_tl_grant_bits_client_xact_id = T_1371_client_xact_id;
  assign io_tl_grant_bits_manager_xact_id = T_1371_manager_xact_id;
  assign io_tl_grant_bits_is_builtin_type = T_1371_is_builtin_type;
  assign io_tl_grant_bits_g_type = T_1371_g_type;
  assign io_tl_grant_bits_data = T_1371_data;
  assign io_ndreset = ndresetCtrReg;
  assign io_fullreset = CONTROLReg_fullreset;
  assign CONTROLReset_interrupt = 1'h0;
  assign CONTROLReset_haltnot = 1'h0;
  assign CONTROLReset_reserved0 = 10'h0;
  assign CONTROLReset_buserror = 3'h0;
  assign CONTROLReset_serial = 3'h0;
  assign CONTROLReset_autoincrement = 1'h0;
  assign CONTROLReset_access = 3'h2;
  assign CONTROLReset_hartid = 10'h0;
  assign CONTROLReset_ndreset = 1'h0;
  assign CONTROLReset_fullreset = 1'h0;
  assign CONTROLWrEn = GEN_32;
  assign CONTROLWrData_interrupt = T_875_interrupt;
  assign CONTROLWrData_haltnot = T_875_haltnot;
  assign CONTROLWrData_reserved0 = T_875_reserved0;
  assign CONTROLWrData_buserror = T_875_buserror;
  assign CONTROLWrData_serial = T_875_serial;
  assign CONTROLWrData_autoincrement = T_875_autoincrement;
  assign CONTROLWrData_access = T_875_access;
  assign CONTROLWrData_hartid = T_875_hartid;
  assign CONTROLWrData_ndreset = T_875_ndreset;
  assign CONTROLWrData_fullreset = T_875_fullreset;
  assign CONTROLRdData_interrupt = GEN_2;
  assign CONTROLRdData_haltnot = GEN_3;
  assign CONTROLRdData_reserved0 = CONTROLReg_reserved0;
  assign CONTROLRdData_buserror = CONTROLReg_buserror;
  assign CONTROLRdData_serial = CONTROLReg_serial;
  assign CONTROLRdData_autoincrement = CONTROLReg_autoincrement;
  assign CONTROLRdData_access = CONTROLReg_access;
  assign CONTROLRdData_hartid = CONTROLReg_hartid;
  assign CONTROLRdData_ndreset = ndresetCtrReg;
  assign CONTROLRdData_fullreset = CONTROLReg_fullreset;
  assign DMINFORdData_reserved0 = 2'h0;
  assign DMINFORdData_abussize = 7'h0;
  assign DMINFORdData_serialcount = 4'h0;
  assign DMINFORdData_access128 = 1'h0;
  assign DMINFORdData_access64 = 1'h0;
  assign DMINFORdData_access32 = 1'h0;
  assign DMINFORdData_access16 = 1'h0;
  assign DMINFORdData_accesss8 = 1'h0;
  assign DMINFORdData_dramsize = 6'h6;
  assign DMINFORdData_haltsum = 1'h0;
  assign DMINFORdData_reserved1 = 3'h0;
  assign DMINFORdData_authenticated = 1'h1;
  assign DMINFORdData_authbusy = 1'h0;
  assign DMINFORdData_authtype = 2'h0;
  assign DMINFORdData_version = 2'h1;
  assign HALTSUMRdData_serialfull = 1'h0;
  assign HALTSUMRdData_serialvalid = 1'h0;
  assign HALTSUMRdData_acks = {{31'd0}, haltnotSummary};
  assign RAMWrData_interrupt = T_904_interrupt;
  assign RAMWrData_haltnot = T_904_haltnot;
  assign RAMWrData_data = T_904_data;
  assign RAMRdData_interrupt = GEN_4;
  assign RAMRdData_haltnot = GEN_5;
  assign RAMRdData_data = dbRamRdData;
  assign SETHALTNOTWrEn = T_1143;
  assign SETHALTNOTWrData = GEN_7[9:0];
  assign CLEARDEBINTWrEn = T_1153;
  assign CLEARDEBINTWrData = GEN_8[9:0];
  assign T_655_0 = 1'h0;
  assign T_666_0 = 1'h0;
  assign haltnotStatus_0 = {{31'd0}, haltnotRegs_0};
  assign rdHaltnotStatus = GEN_50;
  assign haltnotSummary = haltnotStatus_0 != 32'h0;
  assign ramMem_T_850_addr = ramAddr;
  assign ramMem_T_850_en = 1'h1;
  assign ramMem_T_850_data = ramMem[ramMem_T_850_addr];
  assign ramMem_T_851_data = ramWrData;
  assign ramMem_T_851_addr = ramAddr;
  assign ramMem_T_851_mask = ramWrEn;
  assign ramMem_T_851_en = ramWrEn;
  assign ramAddr = T_849;
  assign ramRdData = ramMem_T_850_data;
  assign ramWrData = T_846;
  assign ramWrMask = T_829;
  assign ramWrEn = T_852;
  assign dbRamAddr = T_782;
  assign dbRamRdData = GEN_1;
  assign dbRamWrData = dbReq_data[31:0];
  assign dbRamWrEn = GEN_31;
  assign dbRamRdEn = 1'h0;
  assign sbRamAddr = T_783;
  assign sbRamRdData = ramRdData;
  assign sbRamWrData = sbWrData;
  assign sbRamWrEn = GEN_87;
  assign sbRamRdEn = GEN_92;
  assign sbRomRdData = GEN_6;
  assign dbRdEn = T_1066;
  assign dbWrEn = T_1068;
  assign dbRdData = GEN_57;
  assign dbResult_resp = T_1056;
  assign dbResult_data = dbRdData;
  assign dbReq_addr = io_db_req_bits_addr;
  assign dbReq_op = io_db_req_bits_op;
  assign dbReq_data = io_db_req_bits_data;
  assign rdCondWrFailure = T_1046;
  assign dbWrNeeded = T_1053;
  assign sbAddr = T_1227[11:0];
  assign sbRdData = GEN_94;
  assign sbWrData = sbAcqReg_data;
  assign sbWrMask = T_1307;
  assign sbWrEn = T_1231;
  assign sbRdEn = T_1229;
  assign stallFromDb = 1'h0;
  assign stallFromSb = T_831;
  assign T_720 = CONTROLWrData_hartid == 10'h0;
  assign T_721 = interruptRegs_0 | CONTROLWrData_interrupt;
  assign GEN_11 = T_720 ? T_721 : interruptRegs_0;
  assign GEN_12 = CONTROLWrEn ? GEN_11 : interruptRegs_0;
  assign T_723 = CONTROLWrEn == 1'h0;
  assign T_724 = T_723 & dbRamWrEn;
  assign T_726 = CONTROLReg_hartid == 10'h0;
  assign T_727 = interruptRegs_0 | RAMWrData_interrupt;
  assign GEN_13 = T_726 ? T_727 : GEN_12;
  assign GEN_14 = T_724 ? GEN_13 : GEN_12;
  assign T_731 = dbRamWrEn == 1'h0;
  assign T_732 = T_723 & T_731;
  assign T_733 = T_732 & CLEARDEBINTWrEn;
  assign T_735 = CLEARDEBINTWrData == 10'h0;
  assign GEN_15 = T_735 ? 1'h0 : GEN_14;
  assign GEN_16 = T_733 ? GEN_15 : GEN_14;
  assign T_738 = SETHALTNOTWrData == 10'h0;
  assign GEN_17 = T_738 ? 1'h1 : haltnotRegs_0;
  assign GEN_18 = SETHALTNOTWrEn ? GEN_17 : haltnotRegs_0;
  assign T_741 = SETHALTNOTWrEn == 1'h0;
  assign T_742 = T_741 & CONTROLWrEn;
  assign T_745 = haltnotRegs_0 & CONTROLWrData_haltnot;
  assign GEN_19 = T_720 ? T_745 : GEN_18;
  assign GEN_20 = T_742 ? GEN_19 : GEN_18;
  assign T_750 = T_741 & T_723;
  assign T_751 = T_750 & dbRamWrEn;
  assign T_754 = haltnotRegs_0 & RAMWrData_haltnot;
  assign GEN_21 = T_726 ? T_754 : GEN_20;
  assign GEN_22 = T_751 ? GEN_21 : GEN_20;
  assign T_782 = dbReq_addr[2:0];
  assign T_783 = sbAddr[4:3];
  assign T_799_0 = 32'hffffffff;
  assign T_799_1 = 32'hffffffff;
  assign dbRamWrMask_0 = GEN_23;
  assign dbRamWrMask_1 = GEN_24;
  assign T_804 = dbRamAddr[0];
  assign T_805 = ramRdData[31:0];
  assign T_806 = ramRdData[63:32];
  assign T_812_0 = T_805;
  assign T_812_1 = T_806;
  assign T_821_0 = 32'h0;
  assign T_821_1 = 32'h0;
  assign GEN_0 = 32'hffffffff;
  assign GEN_23 = 1'h0 == T_804 ? GEN_0 : T_821_0;
  assign GEN_24 = T_804 ? GEN_0 : T_821_1;
  assign GEN_1 = GEN_25;
  assign GEN_25 = T_804 ? T_812_1 : T_812_0;
  assign T_828 = {dbRamWrMask_1,dbRamWrMask_0};
  assign T_829 = sbRamWrEn ? sbWrMask : T_828;
  assign T_830 = dbRamWrEn | dbRamRdEn;
  assign T_831 = sbRamRdEn | sbRamWrEn;
  assign T_832 = T_830 & T_831;
  assign T_834 = T_832 == 1'h0;
  assign T_835 = T_834 | reset;
  assign T_837 = T_835 == 1'h0;
  assign dbRamWrDataVec = {dbRamWrData,dbRamWrData};
  assign T_838 = ramWrMask & sbRamWrData;
  assign T_839 = ~ ramWrMask;
  assign T_840 = T_839 & ramRdData;
  assign T_841 = T_838 | T_840;
  assign T_842 = ramWrMask & dbRamWrDataVec;
  assign T_845 = T_842 | T_840;
  assign T_846 = sbRamWrEn ? T_841 : T_845;
  assign T_847 = sbRamWrEn | sbRamRdEn;
  assign T_848 = dbRamAddr[2:1];
  assign T_849 = T_847 ? sbRamAddr : T_848;
  assign T_852 = sbRamWrEn | dbRamWrEn;
  assign T_875_interrupt = T_895;
  assign T_875_haltnot = T_894;
  assign T_875_reserved0 = T_893;
  assign T_875_buserror = T_892;
  assign T_875_serial = T_891;
  assign T_875_autoincrement = T_890;
  assign T_875_access = T_889;
  assign T_875_hartid = T_888;
  assign T_875_ndreset = T_887;
  assign T_875_fullreset = T_886;
  assign T_886 = dbReq_data[0];
  assign T_887 = dbReq_data[1];
  assign T_888 = dbReq_data[11:2];
  assign T_889 = dbReq_data[14:12];
  assign T_890 = dbReq_data[15];
  assign T_891 = dbReq_data[18:16];
  assign T_892 = dbReq_data[21:19];
  assign T_893 = dbReq_data[31:22];
  assign T_894 = dbReq_data[32];
  assign T_895 = dbReq_data[33];
  assign T_904_interrupt = T_895;
  assign T_904_haltnot = T_894;
  assign T_904_data = T_908;
  assign T_908 = dbReq_data[31:0];
  assign T_913 = dbReq_addr[4:4];
  assign T_915 = T_913 == 1'h0;
  assign GEN_31 = T_915 ? dbWrEn : 1'h0;
  assign T_917 = dbReq_addr == 5'h10;
  assign T_919 = T_915 == 1'h0;
  assign T_920 = T_919 & T_917;
  assign GEN_32 = T_920 ? dbWrEn : 1'h0;
  assign T_924 = T_917 == 1'h0;
  assign T_925 = T_919 & T_924;
  assign GEN_33 = reset ? CONTROLReset_interrupt : CONTROLReg_interrupt;
  assign GEN_34 = reset ? CONTROLReset_haltnot : CONTROLReg_haltnot;
  assign GEN_35 = reset ? CONTROLReset_reserved0 : CONTROLReg_reserved0;
  assign GEN_36 = reset ? CONTROLReset_buserror : CONTROLReg_buserror;
  assign GEN_37 = reset ? CONTROLReset_serial : CONTROLReg_serial;
  assign GEN_38 = reset ? CONTROLReset_autoincrement : CONTROLReg_autoincrement;
  assign GEN_39 = reset ? CONTROLReset_access : CONTROLReg_access;
  assign GEN_40 = reset ? CONTROLReset_hartid : CONTROLReg_hartid;
  assign GEN_41 = reset ? CONTROLReset_ndreset : CONTROLReg_ndreset;
  assign GEN_42 = reset ? CONTROLReset_fullreset : CONTROLReg_fullreset;
  assign GEN_43 = reset ? 1'h0 : ndresetCtrReg;
  assign T_928 = reset == 1'h0;
  assign T_929 = T_928 & CONTROLWrEn;
  assign T_930 = CONTROLReg_fullreset | CONTROLWrData_fullreset;
  assign GEN_44 = CONTROLWrData_ndreset ? 1'h1 : GEN_43;
  assign T_933 = CONTROLWrData_ndreset == 1'h0;
  assign T_935 = ndresetCtrReg == 1'h0;
  assign T_938 = ndresetCtrReg - 1'h1;
  assign T_939 = T_938[0:0];
  assign T_940 = T_935 ? 1'h0 : T_939;
  assign GEN_45 = T_933 ? T_940 : GEN_44;
  assign GEN_46 = T_929 ? CONTROLWrData_hartid : GEN_40;
  assign GEN_47 = T_929 ? T_930 : GEN_42;
  assign GEN_48 = T_929 ? GEN_45 : GEN_43;
  assign T_945 = T_928 & T_723;
  assign GEN_49 = T_945 ? T_940 : GEN_48;
  assign GEN_2 = interruptRegs_0;
  assign GEN_3 = haltnotRegs_0;
  assign GEN_4 = interruptRegs_0;
  assign GEN_5 = haltnotRegs_0;
  assign T_958 = dbReq_addr == 5'h0;
  assign GEN_50 = T_958 ? haltnotStatus_0 : 32'h0;
  assign T_963 = {RAMRdData_interrupt,RAMRdData_haltnot};
  assign T_964 = {T_963,RAMRdData_data};
  assign GEN_51 = T_915 ? T_964 : 34'h0;
  assign T_970 = {CONTROLRdData_ndreset,CONTROLRdData_fullreset};
  assign T_971 = {CONTROLRdData_autoincrement,CONTROLRdData_access};
  assign T_972 = {T_971,CONTROLRdData_hartid};
  assign T_973 = {T_972,T_970};
  assign T_974 = {CONTROLRdData_buserror,CONTROLRdData_serial};
  assign T_975 = {CONTROLRdData_interrupt,CONTROLRdData_haltnot};
  assign T_976 = {T_975,CONTROLRdData_reserved0};
  assign T_977 = {T_976,T_974};
  assign T_978 = {T_977,T_973};
  assign GEN_53 = T_920 ? T_978 : GEN_51;
  assign T_980 = dbReq_addr == 5'h11;
  assign T_986 = T_925 & T_980;
  assign T_987 = {DMINFORdData_authbusy,DMINFORdData_authtype};
  assign T_988 = {T_987,DMINFORdData_version};
  assign T_989 = {DMINFORdData_reserved1,DMINFORdData_authenticated};
  assign T_990 = {DMINFORdData_dramsize,DMINFORdData_haltsum};
  assign T_991 = {T_990,T_989};
  assign T_992 = {T_991,T_988};
  assign T_993 = {DMINFORdData_access16,DMINFORdData_accesss8};
  assign T_994 = {DMINFORdData_access64,DMINFORdData_access32};
  assign T_995 = {T_994,T_993};
  assign T_996 = {DMINFORdData_serialcount,DMINFORdData_access128};
  assign T_997 = {DMINFORdData_reserved0,DMINFORdData_abussize};
  assign T_998 = {T_997,T_996};
  assign T_999 = {T_998,T_995};
  assign T_1000 = {T_999,T_992};
  assign GEN_54 = T_986 ? T_1000 : GEN_53;
  assign T_1002 = dbReq_addr == 5'h1b;
  assign T_1009 = T_980 == 1'h0;
  assign T_1010 = T_925 & T_1009;
  assign T_1011 = T_1010 & T_1002;
  assign GEN_55 = T_1011 ? 34'h0 : GEN_54;
  assign T_1013 = dbReq_addr[4:2];
  assign T_1015 = T_1013 == 3'h7;
  assign T_1025 = T_1002 == 1'h0;
  assign T_1026 = T_1010 & T_1025;
  assign T_1027 = T_1026 & T_1015;
  assign GEN_56 = T_1027 ? {{2'd0}, rdHaltnotStatus} : GEN_55;
  assign T_1040 = T_1015 == 1'h0;
  assign T_1041 = T_1026 & T_1040;
  assign GEN_57 = T_1041 ? 34'h0 : GEN_56;
  assign T_1043 = dbRdData[33];
  assign T_1045 = dbReq_op == 2'h3;
  assign T_1046 = T_1043 & T_1045;
  assign T_1048 = dbReq_op == 2'h2;
  assign T_1051 = ~ rdCondWrFailure;
  assign T_1052 = T_1045 & T_1051;
  assign T_1053 = T_1048 | T_1052;
  assign T_1056 = rdCondWrFailure ? 2'h1 : 2'h0;
  assign T_1058 = stallFromSb == 1'h0;
  assign T_1059 = dbStateReg == 1'h0;
  assign T_1061 = io_db_resp_ready & io_db_resp_valid;
  assign T_1062 = dbStateReg & T_1061;
  assign T_1063 = T_1059 | T_1062;
  assign T_1064 = T_1058 & T_1063;
  assign T_1066 = io_db_req_ready & io_db_req_valid;
  assign T_1068 = dbWrNeeded & T_1066;
  assign GEN_58 = T_1066 ? 1'h1 : dbStateReg;
  assign GEN_59 = T_1066 ? dbResult_resp : dbRespReg_resp;
  assign GEN_60 = T_1066 ? dbResult_data : dbRespReg_data;
  assign GEN_61 = T_1059 ? GEN_58 : dbStateReg;
  assign GEN_62 = T_1059 ? GEN_59 : dbRespReg_resp;
  assign GEN_63 = T_1059 ? GEN_60 : dbRespReg_data;
  assign T_1073 = T_1059 == 1'h0;
  assign T_1074 = T_1073 & dbStateReg;
  assign GEN_64 = T_1066 ? 1'h1 : GEN_61;
  assign GEN_65 = T_1066 ? dbResult_resp : GEN_62;
  assign GEN_66 = T_1066 ? dbResult_data : GEN_63;
  assign T_1078 = T_1066 == 1'h0;
  assign T_1079 = T_1078 & T_1061;
  assign GEN_67 = T_1079 ? 1'h0 : GEN_64;
  assign GEN_68 = T_1074 ? GEN_67 : GEN_61;
  assign GEN_69 = T_1074 ? GEN_65 : GEN_62;
  assign GEN_70 = T_1074 ? GEN_66 : GEN_63;
  assign T_1101_0 = 64'hc0006f03c0006f;
  assign T_1101_1 = 64'h80006ffff00413;
  assign T_1101_2 = 64'hff0000f00000413;
  assign T_1101_3 = 64'h40802c2341802483;
  assign T_1101_4 = 64'h10802023f1402473;
  assign T_1101_5 = 64'h8474137b002473;
  assign T_1101_6 = 64'h7b20247302041a63;
  assign T_1101_7 = 64'h7b2410737b200073;
  assign T_1101_8 = 64'h1c0474137b002473;
  assign T_1101_9 = 64'h41663f4040413;
  assign T_1101_10 = 64'h4000006740902c23;
  assign T_1101_11 = 64'h10802623f1402473;
  assign T_1101_12 = 64'h7b0024737b046073;
  assign T_1101_13 = 64'hfe040ce302047413;
  assign T_1101_14 = 64'hfe1ff06f;
  assign T_1104 = T_1105;
  assign T_1105 = sbAddr[6:3];
  assign GEN_6 = GEN_84;
  assign GEN_71 = 4'h1 == T_1104 ? T_1101_1 : T_1101_0;
  assign GEN_72 = 4'h2 == T_1104 ? T_1101_2 : GEN_71;
  assign GEN_73 = 4'h3 == T_1104 ? T_1101_3 : GEN_72;
  assign GEN_74 = 4'h4 == T_1104 ? T_1101_4 : GEN_73;
  assign GEN_75 = 4'h5 == T_1104 ? T_1101_5 : GEN_74;
  assign GEN_76 = 4'h6 == T_1104 ? T_1101_6 : GEN_75;
  assign GEN_77 = 4'h7 == T_1104 ? T_1101_7 : GEN_76;
  assign GEN_78 = 4'h8 == T_1104 ? T_1101_8 : GEN_77;
  assign GEN_79 = 4'h9 == T_1104 ? T_1101_9 : GEN_78;
  assign GEN_80 = 4'ha == T_1104 ? T_1101_10 : GEN_79;
  assign GEN_81 = 4'hb == T_1104 ? T_1101_11 : GEN_80;
  assign GEN_82 = 4'hc == T_1104 ? T_1101_12 : GEN_81;
  assign GEN_83 = 4'hd == T_1104 ? T_1101_13 : GEN_82;
  assign GEN_84 = 4'he == T_1104 ? T_1101_14 : GEN_83;
  assign T_1109 = sbWrData[31:0];
  assign T_1110 = sbWrData[63:32];
  assign T_1116_0 = T_1109;
  assign T_1116_1 = T_1110;
  assign T_1118 = sbWrMask[31:0];
  assign T_1119 = sbWrMask[63:32];
  assign T_1125_0 = T_1118;
  assign T_1125_1 = T_1119;
  assign GEN_7 = T_1116_1;
  assign GEN_8 = T_1116_0;
  assign T_1131 = sbAddr[11:8];
  assign T_1133 = T_1131 == 4'h4;
  assign GEN_87 = T_1133 ? sbWrEn : 1'h0;
  assign T_1134 = sbAddr[11:3];
  assign T_1137 = T_1134 == 9'h21;
  assign GEN_9 = T_1125_1;
  assign T_1141 = GEN_9 != 32'h0;
  assign T_1142 = T_1137 & T_1141;
  assign T_1143 = T_1142 & sbWrEn;
  assign T_1147 = T_1134 == 9'h20;
  assign GEN_10 = T_1125_0;
  assign T_1151 = GEN_10 != 32'h0;
  assign T_1152 = T_1147 & T_1151;
  assign T_1153 = T_1152 & sbWrEn;
  assign GEN_91 = T_1133 ? sbRamRdData : 64'h0;
  assign GEN_92 = T_1133 ? sbRdEn : 1'h0;
  assign T_1162 = T_1131 == 4'h8;
  assign T_1165 = T_1131 == 4'h9;
  assign T_1166 = T_1162 | T_1165;
  assign T_1168 = T_1133 == 1'h0;
  assign T_1169 = T_1168 & T_1166;
  assign GEN_93 = T_1169 ? sbRomRdData : GEN_91;
  assign T_1173 = T_1166 == 1'h0;
  assign T_1174 = T_1168 & T_1173;
  assign GEN_94 = T_1174 ? 64'h0 : GEN_93;
  assign T_1203 = sbAcqReg_a_type == 3'h0;
  assign sbReg_get = sbAcqReg_is_builtin_type & T_1203;
  assign T_1204 = sbAcqReg_a_type == 3'h1;
  assign sbReg_getblk = sbAcqReg_is_builtin_type & T_1204;
  assign T_1205 = sbAcqReg_a_type == 3'h2;
  assign sbReg_put = sbAcqReg_is_builtin_type & T_1205;
  assign T_1206 = sbAcqReg_a_type == 3'h3;
  assign sbReg_putblk = sbAcqReg_is_builtin_type & T_1206;
  assign sbMultibeat = sbReg_getblk & sbAcqValidReg;
  assign T_1208 = sbAcqReg_addr_beat + 3'h1;
  assign sbBeatInc1 = T_1208[2:0];
  assign sbLast = sbAcqReg_addr_beat == 3'h7;
  assign T_1217_0 = 3'h0;
  assign T_1217_1 = 3'h4;
  assign T_1219 = sbAcqReg_a_type == T_1217_0;
  assign T_1220 = sbAcqReg_a_type == T_1217_1;
  assign T_1221 = T_1219 | T_1220;
  assign T_1222 = sbAcqReg_is_builtin_type & T_1221;
  assign T_1223 = sbAcqReg_union[11:9];
  assign T_1225 = T_1222 ? T_1223 : 3'h0;
  assign T_1226 = {sbAcqReg_addr_block,sbAcqReg_addr_beat};
  assign T_1227 = {T_1226,T_1225};
  assign T_1228 = sbReg_get | sbReg_getblk;
  assign T_1229 = sbAcqValidReg & T_1228;
  assign T_1230 = sbReg_put | sbReg_putblk;
  assign T_1231 = sbAcqValidReg & T_1230;
  assign T_1233 = sbAcqReg_a_type == 3'h4;
  assign T_1234 = sbAcqReg_is_builtin_type & T_1233;
  assign T_1236 = T_1223[2];
  assign T_1238 = 2'h1 << T_1236;
  assign T_1239 = T_1238[0];
  assign T_1240 = T_1238[1];
  assign T_1244 = T_1239 ? 4'hf : 4'h0;
  assign T_1248 = T_1240 ? 4'hf : 4'h0;
  assign T_1249 = {T_1248,T_1244};
  assign T_1256 = sbReg_putblk | sbReg_put;
  assign T_1257 = sbAcqReg_union[8:1];
  assign T_1259 = T_1256 ? T_1257 : 8'h0;
  assign T_1260 = T_1234 ? T_1249 : T_1259;
  assign T_1261 = T_1260[0];
  assign T_1262 = T_1260[1];
  assign T_1263 = T_1260[2];
  assign T_1264 = T_1260[3];
  assign T_1265 = T_1260[4];
  assign T_1266 = T_1260[5];
  assign T_1267 = T_1260[6];
  assign T_1268 = T_1260[7];
  assign T_1272 = T_1261 ? 8'hff : 8'h0;
  assign T_1276 = T_1262 ? 8'hff : 8'h0;
  assign T_1280 = T_1263 ? 8'hff : 8'h0;
  assign T_1284 = T_1264 ? 8'hff : 8'h0;
  assign T_1288 = T_1265 ? 8'hff : 8'h0;
  assign T_1292 = T_1266 ? 8'hff : 8'h0;
  assign T_1296 = T_1267 ? 8'hff : 8'h0;
  assign T_1300 = T_1268 ? 8'hff : 8'h0;
  assign T_1301 = {T_1276,T_1272};
  assign T_1302 = {T_1284,T_1280};
  assign T_1303 = {T_1302,T_1301};
  assign T_1304 = {T_1292,T_1288};
  assign T_1305 = {T_1300,T_1296};
  assign T_1306 = {T_1305,T_1304};
  assign T_1307 = {T_1306,T_1303};
  assign T_1308 = io_tl_acquire_ready & io_tl_acquire_valid;
  assign GEN_95 = T_1308 ? io_tl_acquire_bits_addr_block : sbAcqReg_addr_block;
  assign GEN_96 = T_1308 ? io_tl_acquire_bits_client_xact_id : sbAcqReg_client_xact_id;
  assign GEN_97 = T_1308 ? io_tl_acquire_bits_addr_beat : sbAcqReg_addr_beat;
  assign GEN_98 = T_1308 ? io_tl_acquire_bits_is_builtin_type : sbAcqReg_is_builtin_type;
  assign GEN_99 = T_1308 ? io_tl_acquire_bits_a_type : sbAcqReg_a_type;
  assign GEN_100 = T_1308 ? io_tl_acquire_bits_union : sbAcqReg_union;
  assign GEN_101 = T_1308 ? io_tl_acquire_bits_data : sbAcqReg_data;
  assign GEN_102 = T_1308 ? 1'h1 : sbAcqValidReg;
  assign T_1310 = io_tl_grant_ready & io_tl_grant_valid;
  assign T_1312 = T_1308 == 1'h0;
  assign T_1313 = T_1312 & T_1310;
  assign GEN_103 = sbLast ? 1'h0 : GEN_102;
  assign GEN_104 = sbMultibeat ? sbBeatInc1 : GEN_97;
  assign GEN_105 = sbMultibeat ? GEN_103 : GEN_102;
  assign T_1316 = sbMultibeat == 1'h0;
  assign GEN_106 = T_1316 ? 1'h0 : GEN_105;
  assign GEN_107 = T_1313 ? GEN_104 : GEN_97;
  assign GEN_108 = T_1313 ? GEN_106 : GEN_102;
  assign T_1334 = 3'h6 == sbAcqReg_a_type;
  assign T_1335 = T_1334 ? 3'h1 : 3'h3;
  assign T_1336 = 3'h5 == sbAcqReg_a_type;
  assign T_1337 = T_1336 ? 3'h1 : T_1335;
  assign T_1338 = 3'h4 == sbAcqReg_a_type;
  assign T_1339 = T_1338 ? 3'h4 : T_1337;
  assign T_1340 = 3'h3 == sbAcqReg_a_type;
  assign T_1341 = T_1340 ? 3'h3 : T_1339;
  assign T_1342 = 3'h2 == sbAcqReg_a_type;
  assign T_1343 = T_1342 ? 3'h3 : T_1341;
  assign T_1344 = 3'h1 == sbAcqReg_a_type;
  assign T_1345 = T_1344 ? 3'h5 : T_1343;
  assign T_1346 = 3'h0 == sbAcqReg_a_type;
  assign T_1347 = T_1346 ? 3'h4 : T_1345;
  assign T_1371_addr_beat = sbAcqReg_addr_beat;
  assign T_1371_client_xact_id = sbAcqReg_client_xact_id;
  assign T_1371_manager_xact_id = 1'h0;
  assign T_1371_is_builtin_type = 1'h1;
  assign T_1371_g_type = {{1'd0}, T_1347};
  assign T_1371_data = sbRdData;
  assign T_1396 = sbLast == 1'h0;
  assign T_1397 = sbMultibeat & T_1396;
  assign T_1399 = io_tl_grant_ready == 1'h0;
  assign T_1400 = io_tl_grant_valid & T_1399;
  assign T_1401 = T_1397 | T_1400;
  assign sbStall = T_1401 | stallFromDb;
  assign T_1403 = sbStall == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_26 = {1{$random}};
  CONTROLReg_interrupt = GEN_26[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_27 = {1{$random}};
  CONTROLReg_haltnot = GEN_27[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_28 = {1{$random}};
  CONTROLReg_reserved0 = GEN_28[9:0];
  `endif
  `ifdef RANDOMIZE
  GEN_29 = {1{$random}};
  CONTROLReg_buserror = GEN_29[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_30 = {1{$random}};
  CONTROLReg_serial = GEN_30[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_52 = {1{$random}};
  CONTROLReg_autoincrement = GEN_52[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_85 = {1{$random}};
  CONTROLReg_access = GEN_85[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_86 = {1{$random}};
  CONTROLReg_hartid = GEN_86[9:0];
  `endif
  `ifdef RANDOMIZE
  GEN_88 = {1{$random}};
  CONTROLReg_ndreset = GEN_88[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_89 = {1{$random}};
  CONTROLReg_fullreset = GEN_89[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_90 = {1{$random}};
  ndresetCtrReg = GEN_90[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_109 = {1{$random}};
  interruptRegs_0 = GEN_109[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_110 = {1{$random}};
  haltnotRegs_0 = GEN_110[0:0];
  `endif
  GEN_111 = {2{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ramMem[initvar] = GEN_111[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_112 = {1{$random}};
  dbStateReg = GEN_112[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_113 = {1{$random}};
  dbRespReg_resp = GEN_113[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_114 = {2{$random}};
  dbRespReg_data = GEN_114[33:0];
  `endif
  `ifdef RANDOMIZE
  GEN_115 = {1{$random}};
  sbAcqReg_addr_block = GEN_115[25:0];
  `endif
  `ifdef RANDOMIZE
  GEN_116 = {1{$random}};
  sbAcqReg_client_xact_id = GEN_116[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_117 = {1{$random}};
  sbAcqReg_addr_beat = GEN_117[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_118 = {1{$random}};
  sbAcqReg_is_builtin_type = GEN_118[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_119 = {1{$random}};
  sbAcqReg_a_type = GEN_119[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_120 = {1{$random}};
  sbAcqReg_union = GEN_120[11:0];
  `endif
  `ifdef RANDOMIZE
  GEN_121 = {2{$random}};
  sbAcqReg_data = GEN_121[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_122 = {1{$random}};
  sbAcqValidReg = GEN_122[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_interrupt <= CONTROLReset_interrupt;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_haltnot <= CONTROLReset_haltnot;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_reserved0 <= CONTROLReset_reserved0;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_buserror <= CONTROLReset_buserror;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_serial <= CONTROLReset_serial;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_autoincrement <= CONTROLReset_autoincrement;
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_access <= CONTROLReset_access;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_929) begin
        CONTROLReg_hartid <= CONTROLWrData_hartid;
      end else begin
        if(reset) begin
          CONTROLReg_hartid <= CONTROLReset_hartid;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        CONTROLReg_ndreset <= CONTROLReset_ndreset;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_929) begin
        CONTROLReg_fullreset <= T_930;
      end else begin
        if(reset) begin
          CONTROLReg_fullreset <= CONTROLReset_fullreset;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_945) begin
        if(T_935) begin
          ndresetCtrReg <= 1'h0;
        end else begin
          ndresetCtrReg <= T_939;
        end
      end else begin
        if(T_929) begin
          if(T_933) begin
            if(T_935) begin
              ndresetCtrReg <= 1'h0;
            end else begin
              ndresetCtrReg <= T_939;
            end
          end else begin
            if(CONTROLWrData_ndreset) begin
              ndresetCtrReg <= 1'h1;
            end else begin
              if(reset) begin
                ndresetCtrReg <= 1'h0;
              end
            end
          end
        end else begin
          if(reset) begin
            ndresetCtrReg <= 1'h0;
          end
        end
      end
    end
    if(reset) begin
      interruptRegs_0 <= T_655_0;
    end else begin
      if(T_733) begin
        if(T_735) begin
          interruptRegs_0 <= 1'h0;
        end else begin
          if(T_724) begin
            if(T_726) begin
              interruptRegs_0 <= T_727;
            end else begin
              if(CONTROLWrEn) begin
                if(T_720) begin
                  interruptRegs_0 <= T_721;
                end
              end
            end
          end else begin
            if(CONTROLWrEn) begin
              if(T_720) begin
                interruptRegs_0 <= T_721;
              end
            end
          end
        end
      end else begin
        if(T_724) begin
          if(T_726) begin
            interruptRegs_0 <= T_727;
          end else begin
            if(CONTROLWrEn) begin
              if(T_720) begin
                interruptRegs_0 <= T_721;
              end
            end
          end
        end else begin
          if(CONTROLWrEn) begin
            if(T_720) begin
              interruptRegs_0 <= T_721;
            end
          end
        end
      end
    end
    if(reset) begin
      haltnotRegs_0 <= T_666_0;
    end else begin
      if(T_751) begin
        if(T_726) begin
          haltnotRegs_0 <= T_754;
        end else begin
          if(T_742) begin
            if(T_720) begin
              haltnotRegs_0 <= T_745;
            end else begin
              if(SETHALTNOTWrEn) begin
                if(T_738) begin
                  haltnotRegs_0 <= 1'h1;
                end
              end
            end
          end else begin
            if(SETHALTNOTWrEn) begin
              if(T_738) begin
                haltnotRegs_0 <= 1'h1;
              end
            end
          end
        end
      end else begin
        if(T_742) begin
          if(T_720) begin
            haltnotRegs_0 <= T_745;
          end else begin
            if(SETHALTNOTWrEn) begin
              if(T_738) begin
                haltnotRegs_0 <= 1'h1;
              end
            end
          end
        end else begin
          if(SETHALTNOTWrEn) begin
            if(T_738) begin
              haltnotRegs_0 <= 1'h1;
            end
          end
        end
      end
    end
    if(ramMem_T_851_en & ramMem_T_851_mask) begin
      ramMem[ramMem_T_851_addr] <= ramMem_T_851_data;
    end
    if(reset) begin
      dbStateReg <= 1'h0;
    end else begin
      if(T_1074) begin
        if(T_1079) begin
          dbStateReg <= 1'h0;
        end else begin
          if(T_1066) begin
            dbStateReg <= 1'h1;
          end else begin
            if(T_1059) begin
              if(T_1066) begin
                dbStateReg <= 1'h1;
              end
            end
          end
        end
      end else begin
        if(T_1059) begin
          if(T_1066) begin
            dbStateReg <= 1'h1;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1074) begin
        if(T_1066) begin
          dbRespReg_resp <= dbResult_resp;
        end else begin
          if(T_1059) begin
            if(T_1066) begin
              dbRespReg_resp <= dbResult_resp;
            end
          end
        end
      end else begin
        if(T_1059) begin
          if(T_1066) begin
            dbRespReg_resp <= dbResult_resp;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1074) begin
        if(T_1066) begin
          dbRespReg_data <= dbResult_data;
        end else begin
          if(T_1059) begin
            if(T_1066) begin
              dbRespReg_data <= dbResult_data;
            end
          end
        end
      end else begin
        if(T_1059) begin
          if(T_1066) begin
            dbRespReg_data <= dbResult_data;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_addr_block <= io_tl_acquire_bits_addr_block;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_client_xact_id <= io_tl_acquire_bits_client_xact_id;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1313) begin
        if(sbMultibeat) begin
          sbAcqReg_addr_beat <= sbBeatInc1;
        end else begin
          if(T_1308) begin
            sbAcqReg_addr_beat <= io_tl_acquire_bits_addr_beat;
          end
        end
      end else begin
        if(T_1308) begin
          sbAcqReg_addr_beat <= io_tl_acquire_bits_addr_beat;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_is_builtin_type <= io_tl_acquire_bits_is_builtin_type;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_a_type <= io_tl_acquire_bits_a_type;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_union <= io_tl_acquire_bits_union;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1308) begin
        sbAcqReg_data <= io_tl_acquire_bits_data;
      end
    end
    if(reset) begin
      sbAcqValidReg <= 1'h0;
    end else begin
      if(T_1313) begin
        if(T_1316) begin
          sbAcqValidReg <= 1'h0;
        end else begin
          if(sbMultibeat) begin
            if(sbLast) begin
              sbAcqValidReg <= 1'h0;
            end else begin
              if(T_1308) begin
                sbAcqValidReg <= 1'h1;
              end
            end
          end else begin
            if(T_1308) begin
              sbAcqValidReg <= 1'h1;
            end
          end
        end
      end else begin
        if(T_1308) begin
          sbAcqValidReg <= 1'h1;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_837) begin
          $fwrite(32'h80000002,"Assertion failed: Stall logic should have prevented concurrent SB/DB RAM Access\n    at Debug.scala:652 assert (!((dbRamWrEn | dbRamRdEn) & (sbRamRdEn | sbRamWrEn)), ---Stall logic should have prevented concurrent SB/DB RAM Access---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_837) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
