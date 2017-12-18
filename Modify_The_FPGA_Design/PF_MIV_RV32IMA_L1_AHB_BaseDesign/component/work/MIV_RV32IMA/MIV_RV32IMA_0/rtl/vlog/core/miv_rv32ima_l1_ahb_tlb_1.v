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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TLB_1(
  input         clock,
  input         reset,
  input  [31:0] io_req_bits_vaddr,
  output        io_resp_miss,
  output [31:0] io_resp_paddr,
  output        io_resp_pf_inst,
  output        io_resp_ae_inst,
  output        io_resp_cacheable,
  output        io_ptw_req_valid,
  output [19:0] io_ptw_req_bits_addr,
  input  [1:0]  io_ptw_status_prv
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
  wire  _T_65;
  wire  _T_68;
  wire  _T_70;
  wire  _T_72;
  wire  _T_80;
  wire  _T_85;
  wire  _T_88;
  wire  _T_92;
  wire  _T_100;
  wire  _T_105;
  wire  _T_108;
  wire  _T_112;
  wire  _T_120;
  wire  _T_125;
  wire  _T_128;
  wire  _T_132;
  wire  _T_148;
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
  wire [32:0] _T_259;
  wire [32:0] _T_260;
  wire  _T_262;
  wire [32:0] _T_267;
  wire [32:0] _T_268;
  wire  _T_270;
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
  wire  _T_556;
  wire  _T_557;
  wire  _T_567;
  wire  prot_x;
  wire [9:0] _T_626;
  wire [9:0] _T_633;
  wire [19:0] ppn;
  wire [1:0] _T_835;
  wire [1:0] _T_836;
  wire [2:0] _T_837;
  wire [4:0] _T_838;
  wire [4:0] _T_845;
  wire [4:0] priv_x_ok;
  wire [1:0] _T_862;
  wire [1:0] _T_863;
  wire [2:0] _T_864;
  wire [4:0] _T_865;
  wire [4:0] _T_881;
  wire [5:0] x_array;
  wire [1:0] _T_899;
  wire [1:0] _T_900;
  wire [1:0] _T_901;
  wire [3:0] _T_902;
  wire [5:0] px_array;
  wire [1:0] _T_927;
  wire [1:0] _T_928;
  wire [1:0] _T_929;
  wire [3:0] _T_930;
  wire [5:0] c_array;
  wire [5:0] _GEN_15;
  wire [5:0] _T_1225;
  wire [5:0] pf_inst_array;
  wire [5:0] _T_1389;
  wire  _T_1391;
  wire [5:0] _T_1399;
  wire [5:0] _T_1400;
  wire  _T_1402;
  wire [5:0] _T_1410;
  wire  _T_1412;
  wire [31:0] _T_1420;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_PMP_CHECKER pmp (
    .io_r(pmp_io_r),
    .io_w(pmp_io_w),
    .io_x(pmp_io_x)
  );
  assign io_resp_miss = 1'h0;
  assign io_resp_paddr = _T_1420;
  assign io_resp_pf_inst = _T_1391;
  assign io_resp_ae_inst = _T_1402;
  assign io_resp_cacheable = _T_1412;
  assign io_ptw_req_valid = _T_175;
  assign io_ptw_req_bits_addr = r_refill_tag;
  assign _T_60 = reg_entries_0[0];
  assign _T_65 = reg_entries_0[5];
  assign _T_68 = reg_entries_0[8];
  assign _T_70 = reg_entries_0[10];
  assign _T_72 = reg_entries_0[12];
  assign _T_80 = reg_entries_1[0];
  assign _T_85 = reg_entries_1[5];
  assign _T_88 = reg_entries_1[8];
  assign _T_92 = reg_entries_1[12];
  assign _T_100 = reg_entries_2[0];
  assign _T_105 = reg_entries_2[5];
  assign _T_108 = reg_entries_2[8];
  assign _T_112 = reg_entries_2[12];
  assign _T_120 = reg_entries_3[0];
  assign _T_125 = reg_entries_3[5];
  assign _T_128 = reg_entries_3[8];
  assign _T_132 = reg_entries_3[12];
  assign _T_148 = reg_entries_4[8];
  assign _T_152 = reg_entries_4[12];
  assign priv_s = io_ptw_status_prv[0];
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
  assign _T_259 = $signed(_T_202) & $signed(33'shf0001000);
  assign _T_260 = $signed(_T_259);
  assign _T_262 = $signed(_T_260) == $signed(33'sh0);
  assign _T_267 = $signed(_T_210) & $signed(33'she0000000);
  assign _T_268 = $signed(_T_267);
  assign _T_270 = $signed(_T_268) == $signed(33'sh0);
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
  assign _T_556 = _T_262 | _T_270;
  assign _T_557 = _T_556 | _T_289;
  assign _T_567 = legal_address & _T_557;
  assign prot_x = _T_567 & pmp_io_x;
  assign _T_626 = vpn[19:10];
  assign _T_633 = vpn[9:0];
  assign ppn = {_T_626,_T_633};
  assign _T_835 = {_T_92,_T_72};
  assign _T_836 = {_T_152,_T_132};
  assign _T_837 = {_T_836,_T_112};
  assign _T_838 = {_T_837,_T_835};
  assign _T_845 = ~ _T_838;
  assign priv_x_ok = priv_s ? _T_845 : _T_838;
  assign _T_862 = {_T_88,_T_68};
  assign _T_863 = {_T_148,_T_128};
  assign _T_864 = {_T_863,_T_108};
  assign _T_865 = {_T_864,_T_862};
  assign _T_881 = priv_x_ok & _T_865;
  assign x_array = {1'h1,_T_881};
  assign _T_899 = prot_x ? 2'h3 : 2'h0;
  assign _T_900 = {_T_85,_T_65};
  assign _T_901 = {_T_125,_T_105};
  assign _T_902 = {_T_901,_T_900};
  assign px_array = {_T_899,_T_902};
  assign _T_927 = _T_300 ? 2'h3 : 2'h0;
  assign _T_928 = {_T_80,_T_60};
  assign _T_929 = {_T_120,_T_100};
  assign _T_930 = {_T_929,_T_928};
  assign c_array = {_T_927,_T_930};
  assign _GEN_15 = {{5'd0}, _T_70};
  assign _T_1225 = x_array | _GEN_15;
  assign pf_inst_array = ~ _T_1225;
  assign _T_1389 = pf_inst_array & 6'h20;
  assign _T_1391 = _T_1389 != 6'h0;
  assign _T_1399 = ~ px_array;
  assign _T_1400 = _T_1399 & 6'h20;
  assign _T_1402 = _T_1400 != 6'h0;
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
