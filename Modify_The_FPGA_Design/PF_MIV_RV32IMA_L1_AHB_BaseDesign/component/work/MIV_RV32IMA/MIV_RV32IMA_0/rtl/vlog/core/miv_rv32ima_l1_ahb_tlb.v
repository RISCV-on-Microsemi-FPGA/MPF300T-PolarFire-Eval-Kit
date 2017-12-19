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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TLB(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [31:0] io_req_bits_vaddr,
  input  [1:0]  io_req_bits_size,
  input  [4:0]  io_req_bits_cmd,
  output        io_resp_miss,
  output [31:0] io_resp_paddr,
  output        io_resp_pf_ld,
  output        io_resp_pf_st,
  output        io_resp_ae_ld,
  output        io_resp_ae_st,
  output        io_resp_ma_ld,
  output        io_resp_ma_st,
  output        io_resp_cacheable,
  output        io_ptw_req_valid,
  output [19:0] io_ptw_req_bits_addr,
  input         io_ptw_resp_valid,
  input  [1:0]  io_ptw_status_dprv,
  input         io_ptw_status_mxr,
  input         io_ptw_status_sum
);
  reg [53:0] reg_entries_0;
  reg [63:0] _RAND_0;
  reg [53:0] reg_entries_1;
  reg [63:0] _RAND_1;
  reg [53:0] reg_entries_2;
  reg [63:0] _RAND_2;
  reg [53:0] reg_entries_3;
  reg [63:0] _RAND_3;
  reg [53:0] reg_entries_4;
  reg [63:0] _RAND_4;
  wire  _T_60;
  wire  _T_61;
  wire  _T_62;
  wire  _T_63;
  wire  _T_64;
  wire  _T_66;
  wire  _T_67;
  wire  _T_68;
  wire  _T_69;
  wire  _T_70;
  wire  _T_72;
  wire  _T_80;
  wire  _T_81;
  wire  _T_82;
  wire  _T_83;
  wire  _T_84;
  wire  _T_86;
  wire  _T_87;
  wire  _T_88;
  wire  _T_89;
  wire  _T_92;
  wire  _T_100;
  wire  _T_101;
  wire  _T_102;
  wire  _T_103;
  wire  _T_104;
  wire  _T_106;
  wire  _T_107;
  wire  _T_108;
  wire  _T_109;
  wire  _T_112;
  wire  _T_120;
  wire  _T_121;
  wire  _T_122;
  wire  _T_123;
  wire  _T_124;
  wire  _T_126;
  wire  _T_127;
  wire  _T_128;
  wire  _T_129;
  wire  _T_132;
  wire  _T_147;
  wire  _T_148;
  wire  _T_149;
  wire  _T_152;
  reg [1:0] state;
  reg [31:0] _RAND_5;
  reg [19:0] r_refill_tag;
  reg [31:0] _RAND_6;
  wire  priv_s;
  wire [19:0] vpn;
  wire [11:0] pgOffset;
  wire  _T_175;
  wire [31:0] mpu_physaddr;
  wire  pmp_io_r;
  wire  pmp_io_w;
  wire  pmp_io_x;
  wire [31:0] _T_185;
  wire [32:0] _T_186;
  wire [32:0] _T_188;
  wire [32:0] _T_189;
  wire  _T_191;
  wire [31:0] _T_193;
  wire [32:0] _T_194;
  wire [32:0] _T_196;
  wire [32:0] _T_197;
  wire  _T_199;
  wire [32:0] _T_202;
  wire [32:0] _T_204;
  wire [32:0] _T_205;
  wire  _T_207;
  wire [31:0] _T_209;
  wire [32:0] _T_210;
  wire [32:0] _T_212;
  wire [32:0] _T_213;
  wire  _T_215;
  wire [31:0] _T_217;
  wire [32:0] _T_218;
  wire [32:0] _T_220;
  wire [32:0] _T_221;
  wire  _T_223;
  wire [31:0] _T_225;
  wire [32:0] _T_226;
  wire [32:0] _T_228;
  wire [32:0] _T_229;
  wire  _T_231;
  wire  _T_243;
  wire  _T_244;
  wire  _T_245;
  wire  _T_246;
  wire  legal_address;
  wire [32:0] _T_251;
  wire [32:0] _T_252;
  wire  _T_254;
  wire [32:0] _T_259;
  wire [32:0] _T_260;
  wire  _T_262;
  wire [32:0] _T_267;
  wire [32:0] _T_268;
  wire  _T_270;
  wire  _T_271;
  wire  _T_272;
  wire [31:0] _T_275;
  wire [32:0] _T_276;
  wire [32:0] _T_278;
  wire [32:0] _T_279;
  wire  _T_281;
  wire [32:0] _T_286;
  wire [32:0] _T_287;
  wire  _T_289;
  wire  _T_290;
  wire  _T_300;
  wire [32:0] _T_406;
  wire [32:0] _T_407;
  wire  _T_409;
  wire  prot_r;
  wire  prot_w;
  wire  _T_477;
  wire  prot_al;
  wire  prot_eff;
  wire [9:0] _T_626;
  wire [9:0] _T_633;
  wire [19:0] ppn;
  wire  _T_833;
  wire  _T_834;
  wire [1:0] _T_835;
  wire [1:0] _T_836;
  wire [2:0] _T_837;
  wire [4:0] _T_838;
  wire [4:0] _T_840;
  wire [4:0] _T_845;
  wire [4:0] _T_847;
  wire [4:0] priv_rw_ok;
  wire [1:0] _T_858;
  wire [1:0] _T_859;
  wire [2:0] _T_860;
  wire [4:0] _T_861;
  wire [1:0] _T_862;
  wire [1:0] _T_863;
  wire [2:0] _T_864;
  wire [4:0] _T_865;
  wire [4:0] _T_867;
  wire [4:0] _T_868;
  wire [4:0] _T_869;
  wire [5:0] r_array;
  wire [1:0] _T_871;
  wire [1:0] _T_872;
  wire [2:0] _T_873;
  wire [4:0] _T_874;
  wire [4:0] _T_875;
  wire [5:0] w_array;
  wire [1:0] _T_885;
  wire [1:0] _T_886;
  wire [1:0] _T_887;
  wire [3:0] _T_888;
  wire [5:0] pr_array;
  wire [1:0] _T_892;
  wire [1:0] _T_893;
  wire [1:0] _T_894;
  wire [3:0] _T_895;
  wire [5:0] pw_array;
  wire [1:0] _T_906;
  wire [1:0] _T_907;
  wire [1:0] _T_908;
  wire [3:0] _T_909;
  wire [5:0] paa_array;
  wire [1:0] _T_914;
  wire [1:0] _T_915;
  wire [3:0] _T_916;
  wire [5:0] pal_array;
  wire [1:0] _T_920;
  wire [1:0] _T_921;
  wire [1:0] _T_922;
  wire [3:0] _T_923;
  wire [5:0] eff_array;
  wire [1:0] _T_927;
  wire [1:0] _T_928;
  wire [1:0] _T_929;
  wire [3:0] _T_930;
  wire [5:0] c_array;
  wire [3:0] _T_938;
  wire [4:0] _T_940;
  wire [4:0] _T_941;
  wire [3:0] _T_942;
  wire [31:0] _GEN_14;
  wire [31:0] _T_943;
  wire  misaligned;
  wire [5:0] _T_949;
  wire  _T_953;
  wire  _T_954;
  wire  _T_955;
  wire [5:0] _T_957;
  wire [5:0] _T_959;
  wire [5:0] ae_array;
  wire  _T_961;
  wire  _T_964;
  wire  _T_967;
  wire  _T_972;
  wire  _T_973;
  wire  _T_974;
  wire  _T_975;
  wire  _T_976;
  wire  _T_977;
  wire  _T_978;
  wire  _T_984;
  wire  _T_985;
  wire  _T_986;
  wire  _T_987;
  wire  _T_988;
  wire  _T_989;
  wire  _T_990;
  wire  _T_991;
  wire  _T_992;
  wire  _T_993;
  wire  _T_994;
  wire [5:0] _T_995;
  wire [5:0] _T_996;
  wire [5:0] ae_ld_array;
  wire  _T_999;
  wire  _T_1001;
  wire  _T_1002;
  wire  _T_1005;
  wire  _T_1032;
  wire [5:0] _T_1033;
  wire [5:0] _T_1034;
  wire [5:0] _T_1036;
  wire [5:0] _T_1050;
  wire [5:0] _T_1052;
  wire [5:0] _T_1053;
  wire [5:0] _T_1070;
  wire [5:0] _T_1072;
  wire [5:0] ae_st_array;
  wire  _T_1108;
  wire [5:0] _T_1109;
  wire [5:0] ma_ld_array;
  wire  _T_1146;
  wire [5:0] ma_st_array;
  wire [5:0] _GEN_15;
  wire [5:0] _T_1184;
  wire [5:0] _T_1185;
  wire [5:0] pf_ld_array;
  wire [5:0] _T_1222;
  wire [5:0] _T_1223;
  wire [5:0] pf_st_array;
  wire  _T_1308;
  wire [5:0] _T_1345;
  wire  _T_1347;
  wire [5:0] _T_1385;
  wire  _T_1387;
  wire [5:0] _T_1393;
  wire  _T_1395;
  wire [5:0] _T_1396;
  wire  _T_1398;
  wire [5:0] _T_1403;
  wire  _T_1405;
  wire [5:0] _T_1406;
  wire  _T_1408;
  wire [5:0] _T_1410;
  wire  _T_1412;
  wire [31:0] _T_1420;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_PMP_CHECKER pmp (
    .io_r(pmp_io_r),
    .io_w(pmp_io_w),
    .io_x(pmp_io_x)
  );
  assign io_req_ready = _T_1308;
  assign io_resp_miss = 1'h0;
  assign io_resp_paddr = _T_1420;
  assign io_resp_pf_ld = _T_1347;
  assign io_resp_pf_st = _T_1387;
  assign io_resp_ae_ld = _T_1395;
  assign io_resp_ae_st = _T_1398;
  assign io_resp_ma_ld = _T_1405;
  assign io_resp_ma_st = _T_1408;
  assign io_resp_cacheable = _T_1412;
  assign io_ptw_req_valid = _T_175;
  assign io_ptw_req_bits_addr = r_refill_tag;
  assign _T_60 = reg_entries_0[0];
  assign _T_61 = reg_entries_0[1];
  assign _T_62 = reg_entries_0[2];
  assign _T_63 = reg_entries_0[3];
  assign _T_64 = reg_entries_0[4];
  assign _T_66 = reg_entries_0[6];
  assign _T_67 = reg_entries_0[7];
  assign _T_68 = reg_entries_0[8];
  assign _T_69 = reg_entries_0[9];
  assign _T_70 = reg_entries_0[10];
  assign _T_72 = reg_entries_0[12];
  assign _T_80 = reg_entries_1[0];
  assign _T_81 = reg_entries_1[1];
  assign _T_82 = reg_entries_1[2];
  assign _T_83 = reg_entries_1[3];
  assign _T_84 = reg_entries_1[4];
  assign _T_86 = reg_entries_1[6];
  assign _T_87 = reg_entries_1[7];
  assign _T_88 = reg_entries_1[8];
  assign _T_89 = reg_entries_1[9];
  assign _T_92 = reg_entries_1[12];
  assign _T_100 = reg_entries_2[0];
  assign _T_101 = reg_entries_2[1];
  assign _T_102 = reg_entries_2[2];
  assign _T_103 = reg_entries_2[3];
  assign _T_104 = reg_entries_2[4];
  assign _T_106 = reg_entries_2[6];
  assign _T_107 = reg_entries_2[7];
  assign _T_108 = reg_entries_2[8];
  assign _T_109 = reg_entries_2[9];
  assign _T_112 = reg_entries_2[12];
  assign _T_120 = reg_entries_3[0];
  assign _T_121 = reg_entries_3[1];
  assign _T_122 = reg_entries_3[2];
  assign _T_123 = reg_entries_3[3];
  assign _T_124 = reg_entries_3[4];
  assign _T_126 = reg_entries_3[6];
  assign _T_127 = reg_entries_3[7];
  assign _T_128 = reg_entries_3[8];
  assign _T_129 = reg_entries_3[9];
  assign _T_132 = reg_entries_3[12];
  assign _T_147 = reg_entries_4[7];
  assign _T_148 = reg_entries_4[8];
  assign _T_149 = reg_entries_4[9];
  assign _T_152 = reg_entries_4[12];
  assign priv_s = io_ptw_status_dprv[0];
  assign vpn = io_req_bits_vaddr[31:12];
  assign pgOffset = io_req_bits_vaddr[11:0];
  assign _T_175 = state == 2'h1;
  assign mpu_physaddr = {vpn,pgOffset};
  assign _T_185 = mpu_physaddr ^ 32'h40000000;
  assign _T_186 = {1'b0,$signed(_T_185)};
  assign _T_188 = $signed(_T_186) & $signed(-33'sh4000000);
  assign _T_189 = $signed(_T_188);
  assign _T_191 = $signed(_T_189) == $signed(33'sh0);
  assign _T_193 = mpu_physaddr ^ 32'h44000000;
  assign _T_194 = {1'b0,$signed(_T_193)};
  assign _T_196 = $signed(_T_194) & $signed(-33'sh10000);
  assign _T_197 = $signed(_T_196);
  assign _T_199 = $signed(_T_197) == $signed(33'sh0);
  assign _T_202 = {1'b0,$signed(mpu_physaddr)};
  assign _T_204 = $signed(_T_202) & $signed(-33'sh1000);
  assign _T_205 = $signed(_T_204);
  assign _T_207 = $signed(_T_205) == $signed(33'sh0);
  assign _T_209 = mpu_physaddr ^ 32'h60000000;
  assign _T_210 = {1'b0,$signed(_T_209)};
  assign _T_212 = $signed(_T_210) & $signed(-33'sh20000000);
  assign _T_213 = $signed(_T_212);
  assign _T_215 = $signed(_T_213) == $signed(33'sh0);
  assign _T_217 = mpu_physaddr ^ 32'h3000;
  assign _T_218 = {1'b0,$signed(_T_217)};
  assign _T_220 = $signed(_T_218) & $signed(-33'sh1000);
  assign _T_221 = $signed(_T_220);
  assign _T_223 = $signed(_T_221) == $signed(33'sh0);
  assign _T_225 = mpu_physaddr ^ 32'h80000000;
  assign _T_226 = {1'b0,$signed(_T_225)};
  assign _T_228 = $signed(_T_226) & $signed(-33'sh10000000);
  assign _T_229 = $signed(_T_228);
  assign _T_231 = $signed(_T_229) == $signed(33'sh0);
  assign _T_243 = _T_191 | _T_199;
  assign _T_244 = _T_243 | _T_207;
  assign _T_245 = _T_244 | _T_215;
  assign _T_246 = _T_245 | _T_223;
  assign legal_address = _T_246 | _T_231;
  assign _T_251 = $signed(_T_186) & $signed(33'shf0000000);
  assign _T_252 = $signed(_T_251);
  assign _T_254 = $signed(_T_252) == $signed(33'sh0);
  assign _T_259 = $signed(_T_202) & $signed(33'shf0001000);
  assign _T_260 = $signed(_T_259);
  assign _T_262 = $signed(_T_260) == $signed(33'sh0);
  assign _T_267 = $signed(_T_210) & $signed(33'she0000000);
  assign _T_268 = $signed(_T_267);
  assign _T_270 = $signed(_T_268) == $signed(33'sh0);
  assign _T_271 = _T_254 | _T_262;
  assign _T_272 = _T_271 | _T_270;
  assign _T_275 = mpu_physaddr ^ 32'h1000;
  assign _T_276 = {1'b0,$signed(_T_275)};
  assign _T_278 = $signed(_T_276) & $signed(33'shf0001000);
  assign _T_279 = $signed(_T_278);
  assign _T_281 = $signed(_T_279) == $signed(33'sh0);
  assign _T_286 = $signed(_T_226) & $signed(33'shf0000000);
  assign _T_287 = $signed(_T_286);
  assign _T_289 = $signed(_T_287) == $signed(33'sh0);
  assign _T_290 = _T_281 | _T_289;
  assign _T_300 = legal_address & _T_290;
  assign _T_406 = $signed(_T_202) & $signed(33'sha0000000);
  assign _T_407 = $signed(_T_406);
  assign _T_409 = $signed(_T_407) == $signed(33'sh0);
  assign prot_r = legal_address & pmp_io_r;
  assign prot_w = legal_address & pmp_io_w;
  assign _T_477 = legal_address & _T_409;
  assign prot_al = _T_477 | _T_300;
  assign prot_eff = legal_address & _T_272;
  assign _T_626 = vpn[19:10];
  assign _T_633 = vpn[9:0];
  assign ppn = {_T_626,_T_633};
  assign _T_833 = priv_s == 1'h0;
  assign _T_834 = _T_833 | io_ptw_status_sum;
  assign _T_835 = {_T_92,_T_72};
  assign _T_836 = {_T_152,_T_132};
  assign _T_837 = {_T_836,_T_112};
  assign _T_838 = {_T_837,_T_835};
  assign _T_840 = _T_834 ? _T_838 : 5'h0;
  assign _T_845 = ~ _T_838;
  assign _T_847 = priv_s ? _T_845 : 5'h0;
  assign priv_rw_ok = _T_840 | _T_847;
  assign _T_858 = {_T_87,_T_67};
  assign _T_859 = {_T_147,_T_127};
  assign _T_860 = {_T_859,_T_107};
  assign _T_861 = {_T_860,_T_858};
  assign _T_862 = {_T_88,_T_68};
  assign _T_863 = {_T_148,_T_128};
  assign _T_864 = {_T_863,_T_108};
  assign _T_865 = {_T_864,_T_862};
  assign _T_867 = io_ptw_status_mxr ? _T_865 : 5'h0;
  assign _T_868 = _T_861 | _T_867;
  assign _T_869 = priv_rw_ok & _T_868;
  assign r_array = {1'h1,_T_869};
  assign _T_871 = {_T_89,_T_69};
  assign _T_872 = {_T_149,_T_129};
  assign _T_873 = {_T_872,_T_109};
  assign _T_874 = {_T_873,_T_871};
  assign _T_875 = priv_rw_ok & _T_874;
  assign w_array = {1'h1,_T_875};
  assign _T_885 = prot_r ? 2'h3 : 2'h0;
  assign _T_886 = {_T_84,_T_64};
  assign _T_887 = {_T_124,_T_104};
  assign _T_888 = {_T_887,_T_886};
  assign pr_array = {_T_885,_T_888};
  assign _T_892 = prot_w ? 2'h3 : 2'h0;
  assign _T_893 = {_T_86,_T_66};
  assign _T_894 = {_T_126,_T_106};
  assign _T_895 = {_T_894,_T_893};
  assign pw_array = {_T_892,_T_895};
  assign _T_906 = prot_al ? 2'h3 : 2'h0;
  assign _T_907 = {_T_82,_T_62};
  assign _T_908 = {_T_122,_T_102};
  assign _T_909 = {_T_908,_T_907};
  assign paa_array = {_T_906,_T_909};
  assign _T_914 = {_T_83,_T_63};
  assign _T_915 = {_T_123,_T_103};
  assign _T_916 = {_T_915,_T_914};
  assign pal_array = {_T_906,_T_916};
  assign _T_920 = prot_eff ? 2'h3 : 2'h0;
  assign _T_921 = {_T_81,_T_61};
  assign _T_922 = {_T_121,_T_101};
  assign _T_923 = {_T_922,_T_921};
  assign eff_array = {_T_920,_T_923};
  assign _T_927 = _T_300 ? 2'h3 : 2'h0;
  assign _T_928 = {_T_80,_T_60};
  assign _T_929 = {_T_120,_T_100};
  assign _T_930 = {_T_929,_T_928};
  assign c_array = {_T_927,_T_930};
  assign _T_938 = 4'h1 << io_req_bits_size;
  assign _T_940 = _T_938 - 4'h1;
  assign _T_941 = $unsigned(_T_940);
  assign _T_942 = _T_941[3:0];
  assign _GEN_14 = {{28'd0}, _T_942};
  assign _T_943 = io_req_bits_vaddr & _GEN_14;
  assign misaligned = _T_943 != 32'h0;
  assign _T_949 = misaligned ? eff_array : 6'h0;
  assign _T_953 = io_req_bits_cmd == 5'h6;
  assign _T_954 = io_req_bits_cmd == 5'h7;
  assign _T_955 = _T_953 | _T_954;
  assign _T_957 = ~ c_array;
  assign _T_959 = _T_955 ? _T_957 : 6'h0;
  assign ae_array = _T_949 | _T_959;
  assign _T_961 = io_req_bits_cmd == 5'h0;
  assign _T_964 = _T_961 | _T_953;
  assign _T_967 = _T_964 | _T_954;
  assign _T_972 = io_req_bits_cmd == 5'h4;
  assign _T_973 = io_req_bits_cmd == 5'h9;
  assign _T_974 = io_req_bits_cmd == 5'ha;
  assign _T_975 = io_req_bits_cmd == 5'hb;
  assign _T_976 = _T_972 | _T_973;
  assign _T_977 = _T_976 | _T_974;
  assign _T_978 = _T_977 | _T_975;
  assign _T_984 = io_req_bits_cmd == 5'h8;
  assign _T_985 = io_req_bits_cmd == 5'hc;
  assign _T_986 = io_req_bits_cmd == 5'hd;
  assign _T_987 = io_req_bits_cmd == 5'he;
  assign _T_988 = io_req_bits_cmd == 5'hf;
  assign _T_989 = _T_984 | _T_985;
  assign _T_990 = _T_989 | _T_986;
  assign _T_991 = _T_990 | _T_987;
  assign _T_992 = _T_991 | _T_988;
  assign _T_993 = _T_978 | _T_992;
  assign _T_994 = _T_967 | _T_993;
  assign _T_995 = ~ pr_array;
  assign _T_996 = ae_array | _T_995;
  assign ae_ld_array = _T_994 ? _T_996 : 6'h0;
  assign _T_999 = io_req_bits_cmd == 5'h1;
  assign _T_1001 = io_req_bits_cmd == 5'h11;
  assign _T_1002 = _T_999 | _T_1001;
  assign _T_1005 = _T_1002 | _T_954;
  assign _T_1032 = _T_1005 | _T_993;
  assign _T_1033 = ~ pw_array;
  assign _T_1034 = ae_array | _T_1033;
  assign _T_1036 = _T_1032 ? _T_1034 : 6'h0;
  assign _T_1050 = ~ pal_array;
  assign _T_1052 = _T_978 ? _T_1050 : 6'h0;
  assign _T_1053 = _T_1036 | _T_1052;
  assign _T_1070 = ~ paa_array;
  assign _T_1072 = _T_992 ? _T_1070 : 6'h0;
  assign ae_st_array = _T_1053 | _T_1072;
  assign _T_1108 = misaligned & _T_994;
  assign _T_1109 = ~ eff_array;
  assign ma_ld_array = _T_1108 ? _T_1109 : 6'h0;
  assign _T_1146 = misaligned & _T_1032;
  assign ma_st_array = _T_1146 ? _T_1109 : 6'h0;
  assign _GEN_15 = {{5'd0}, _T_70};
  assign _T_1184 = r_array | _GEN_15;
  assign _T_1185 = ~ _T_1184;
  assign pf_ld_array = _T_994 ? _T_1185 : 6'h0;
  assign _T_1222 = w_array | _GEN_15;
  assign _T_1223 = ~ _T_1222;
  assign pf_st_array = _T_1032 ? _T_1223 : 6'h0;
  assign _T_1308 = state == 2'h0;
  assign _T_1345 = pf_ld_array & 6'h20;
  assign _T_1347 = _T_1345 != 6'h0;
  assign _T_1385 = pf_st_array & 6'h20;
  assign _T_1387 = _T_1385 != 6'h0;
  assign _T_1393 = ae_ld_array & 6'h20;
  assign _T_1395 = _T_1393 != 6'h0;
  assign _T_1396 = ae_st_array & 6'h20;
  assign _T_1398 = _T_1396 != 6'h0;
  assign _T_1403 = ma_ld_array & 6'h20;
  assign _T_1405 = _T_1403 != 6'h0;
  assign _T_1406 = ma_st_array & 6'h20;
  assign _T_1408 = _T_1406 != 6'h0;
  assign _T_1410 = c_array & 6'h20;
  assign _T_1412 = _T_1410 != 6'h0;
  assign _T_1420 = {ppn,pgOffset};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{$random}};
  reg_entries_0 = _RAND_0[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{$random}};
  reg_entries_1 = _RAND_1[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{$random}};
  reg_entries_2 = _RAND_2[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{$random}};
  reg_entries_3 = _RAND_3[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  reg_entries_4 = _RAND_4[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  state = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  r_refill_tag = _RAND_6[19:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end
  end
endmodule
