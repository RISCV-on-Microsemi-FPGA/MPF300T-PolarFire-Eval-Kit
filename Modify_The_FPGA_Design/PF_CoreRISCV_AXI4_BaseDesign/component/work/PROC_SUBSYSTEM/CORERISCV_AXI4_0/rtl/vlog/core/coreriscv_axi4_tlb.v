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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TLB(
  input   clk,
  input   reset,
  output  io_req_ready,
  input   io_req_valid,
  input  [19:0] io_req_bits_vpn,
  input   io_req_bits_passthrough,
  input   io_req_bits_instruction,
  input   io_req_bits_store,
  output  io_resp_miss,
  output [19:0] io_resp_ppn,
  output  io_resp_xcpt_ld,
  output  io_resp_xcpt_st,
  output  io_resp_xcpt_if,
  output  io_resp_cacheable,
  input   io_ptw_req_ready,
  output  io_ptw_req_valid,
  output [1:0] io_ptw_req_bits_prv,
  output  io_ptw_req_bits_pum,
  output  io_ptw_req_bits_mxr,
  output [19:0] io_ptw_req_bits_addr,
  output  io_ptw_req_bits_store,
  output  io_ptw_req_bits_fetch,
  input   io_ptw_resp_valid,
  input  [15:0] io_ptw_resp_bits_pte_reserved_for_hardware,
  input  [37:0] io_ptw_resp_bits_pte_ppn,
  input  [1:0] io_ptw_resp_bits_pte_reserved_for_software,
  input   io_ptw_resp_bits_pte_d,
  input   io_ptw_resp_bits_pte_a,
  input   io_ptw_resp_bits_pte_g,
  input   io_ptw_resp_bits_pte_u,
  input   io_ptw_resp_bits_pte_x,
  input   io_ptw_resp_bits_pte_w,
  input   io_ptw_resp_bits_pte_r,
  input   io_ptw_resp_bits_pte_v,
  input  [6:0] io_ptw_ptbr_asid,
  input  [21:0] io_ptw_ptbr_ppn,
  input   io_ptw_invalidate,
  input   io_ptw_status_debug,
  input  [1:0] io_ptw_status_prv,
  input   io_ptw_status_sd,
  input  [30:0] io_ptw_status_zero3,
  input   io_ptw_status_sd_rv32,
  input  [1:0] io_ptw_status_zero2,
  input  [4:0] io_ptw_status_vm,
  input  [3:0] io_ptw_status_zero1,
  input   io_ptw_status_mxr,
  input   io_ptw_status_pum,
  input   io_ptw_status_mprv,
  input  [1:0] io_ptw_status_xs,
  input  [1:0] io_ptw_status_fs,
  input  [1:0] io_ptw_status_mpp,
  input  [1:0] io_ptw_status_hpp,
  input   io_ptw_status_spp,
  input   io_ptw_status_mpie,
  input   io_ptw_status_hpie,
  input   io_ptw_status_spie,
  input   io_ptw_status_upie,
  input   io_ptw_status_mie,
  input   io_ptw_status_hie,
  input   io_ptw_status_sie,
  input   io_ptw_status_uie
);
  reg [3:0] valid;
  reg [31:0] GEN_10;
  reg [37:0] ppns_0;
  reg [63:0] GEN_15;
  reg [37:0] ppns_1;
  reg [63:0] GEN_26;
  reg [37:0] ppns_2;
  reg [63:0] GEN_27;
  reg [37:0] ppns_3;
  reg [63:0] GEN_28;
  reg [26:0] tags_0;
  reg [31:0] GEN_29;
  reg [26:0] tags_1;
  reg [31:0] GEN_30;
  reg [26:0] tags_2;
  reg [31:0] GEN_31;
  reg [26:0] tags_3;
  reg [31:0] GEN_32;
  reg [1:0] state;
  reg [31:0] GEN_33;
  reg [26:0] r_refill_tag;
  reg [31:0] GEN_34;
  reg [1:0] r_refill_waddr;
  reg [31:0] GEN_35;
  reg [19:0] r_req_vpn;
  reg [31:0] GEN_36;
  reg  r_req_passthrough;
  reg [31:0] GEN_37;
  reg  r_req_instruction;
  reg [31:0] GEN_38;
  reg  r_req_store;
  reg [31:0] GEN_39;
  wire [26:0] lookup_tag;
  wire  T_216;
  wire  T_217;
  wire  T_218;
  wire  T_219;
  wire  T_220;
  wire  T_221;
  wire  T_222;
  wire  T_223;
  wire  T_224;
  wire  T_225;
  wire  T_226;
  wire  T_227;
  reg [15:0] pte_array_reserved_for_hardware;
  reg [31:0] GEN_40;
  reg [37:0] pte_array_ppn;
  reg [63:0] GEN_41;
  reg [1:0] pte_array_reserved_for_software;
  reg [31:0] GEN_42;
  reg  pte_array_d;
  reg [31:0] GEN_43;
  reg  pte_array_a;
  reg [31:0] GEN_44;
  reg  pte_array_g;
  reg [31:0] GEN_45;
  reg  pte_array_u;
  reg [31:0] GEN_46;
  reg  pte_array_x;
  reg [31:0] GEN_47;
  reg  pte_array_w;
  reg [31:0] GEN_48;
  reg  pte_array_r;
  reg [31:0] GEN_49;
  reg  pte_array_v;
  reg [31:0] GEN_50;
  reg [3:0] u_array;
  reg [31:0] GEN_51;
  reg [3:0] sw_array;
  reg [31:0] GEN_52;
  reg [3:0] sx_array;
  reg [31:0] GEN_53;
  reg [3:0] sr_array;
  reg [31:0] GEN_54;
  reg [3:0] dirty_array;
  reg [31:0] GEN_55;
  wire [37:0] GEN_0;
  wire [37:0] GEN_2;
  wire [37:0] GEN_3;
  wire [37:0] GEN_4;
  wire [37:0] GEN_5;
  wire [26:0] GEN_1;
  wire [26:0] GEN_6;
  wire [26:0] GEN_7;
  wire [26:0] GEN_8;
  wire [26:0] GEN_9;
  wire [3:0] T_259;
  wire [3:0] T_260;
  wire [3:0] T_261;
  wire [3:0] T_262;
  wire [3:0] T_263;
  wire [3:0] T_264;
  wire  T_266;
  wire  T_267;
  wire  T_268;
  wire  T_269;
  wire  T_270;
  wire [3:0] T_271;
  wire [3:0] T_273;
  wire [3:0] T_274;
  wire  T_280;
  wire [3:0] T_281;
  wire [3:0] T_283;
  wire [3:0] T_284;
  wire  T_290;
  wire [3:0] T_291;
  wire [3:0] T_293;
  wire [3:0] T_294;
  wire [3:0] T_295;
  wire [3:0] T_297;
  wire [3:0] T_298;
  wire [37:0] GEN_11;
  wire [37:0] GEN_12;
  wire [37:0] GEN_13;
  wire [37:0] GEN_14;
  wire [26:0] GEN_16;
  wire [26:0] GEN_17;
  wire [26:0] GEN_18;
  wire [26:0] GEN_19;
  wire [3:0] GEN_20;
  wire [3:0] GEN_21;
  wire [3:0] GEN_22;
  wire [3:0] GEN_23;
  wire [3:0] GEN_24;
  wire [3:0] GEN_25;
  reg [3:0] T_300;
  reg [31:0] GEN_56;
  wire [31:0] paddr;
  wire  T_390;
  wire [2:0] T_394;
  wire  T_396;
  wire  T_398;
  wire  T_399;
  wire [2:0] T_402;
  wire  T_404;
  wire  T_406;
  wire  T_407;
  wire [2:0] T_410;
  wire  T_412;
  wire  T_414;
  wire  T_415;
  wire [2:0] T_418;
  wire  T_420;
  wire  T_422;
  wire  T_423;
  wire [2:0] T_426;
  wire  T_428;
  wire  T_430;
  wire  T_431;
  wire [2:0] T_434;
  wire [2:0] T_439;
  wire [2:0] T_440;
  wire [2:0] T_441;
  wire [2:0] T_442;
  wire [2:0] T_443;
  wire  addr_prot_x;
  wire  addr_prot_w;
  wire  addr_prot_r;
  wire  T_451;
  wire  T_452;
  wire  T_453;
  wire  T_454;
  wire  T_458;
  wire  T_471;
  wire  T_484;
  wire [37:0] T_502;
  wire [37:0] T_504;
  wire [37:0] T_506;
  wire [37:0] T_508;
  wire [37:0] T_510;
  wire [37:0] T_511;
  wire [37:0] T_512;
  wire [37:0] T_513;
  wire [37:0] T_515;
  wire  T_516;
  assign io_req_ready = T_454;
  assign io_resp_miss = 1'h0;
  assign io_resp_ppn = T_515[19:0];
  assign io_resp_xcpt_ld = T_458;
  assign io_resp_xcpt_st = T_471;
  assign io_resp_xcpt_if = T_484;
  assign io_resp_cacheable = T_431;
  assign io_ptw_req_valid = T_516;
  assign io_ptw_req_bits_prv = io_ptw_status_prv;
  assign io_ptw_req_bits_pum = io_ptw_status_pum;
  assign io_ptw_req_bits_mxr = io_ptw_status_mxr;
  assign io_ptw_req_bits_addr = r_refill_tag[19:0];
  assign io_ptw_req_bits_store = r_req_store;
  assign io_ptw_req_bits_fetch = r_req_instruction;
  assign lookup_tag = {io_ptw_ptbr_asid,io_req_bits_vpn};
  assign T_216 = valid[0];
  assign T_217 = tags_0 == lookup_tag;
  assign T_218 = T_216 & T_217;
  assign T_219 = valid[1];
  assign T_220 = tags_1 == lookup_tag;
  assign T_221 = T_219 & T_220;
  assign T_222 = valid[2];
  assign T_223 = tags_2 == lookup_tag;
  assign T_224 = T_222 & T_223;
  assign T_225 = valid[3];
  assign T_226 = tags_3 == lookup_tag;
  assign T_227 = T_225 & T_226;
  assign GEN_0 = io_ptw_resp_bits_pte_ppn;
  assign GEN_2 = 2'h0 == r_refill_waddr ? GEN_0 : ppns_0;
  assign GEN_3 = 2'h1 == r_refill_waddr ? GEN_0 : ppns_1;
  assign GEN_4 = 2'h2 == r_refill_waddr ? GEN_0 : ppns_2;
  assign GEN_5 = 2'h3 == r_refill_waddr ? GEN_0 : ppns_3;
  assign GEN_1 = r_refill_tag;
  assign GEN_6 = 2'h0 == r_refill_waddr ? GEN_1 : tags_0;
  assign GEN_7 = 2'h1 == r_refill_waddr ? GEN_1 : tags_1;
  assign GEN_8 = 2'h2 == r_refill_waddr ? GEN_1 : tags_2;
  assign GEN_9 = 2'h3 == r_refill_waddr ? GEN_1 : tags_3;
  assign T_259 = 4'h1 << r_refill_waddr;
  assign T_260 = valid | T_259;
  assign T_261 = u_array | T_259;
  assign T_262 = ~ T_259;
  assign T_263 = u_array & T_262;
  assign T_264 = io_ptw_resp_bits_pte_u ? T_261 : T_263;
  assign T_266 = io_ptw_resp_bits_pte_w == 1'h0;
  assign T_267 = io_ptw_resp_bits_pte_x & T_266;
  assign T_268 = io_ptw_resp_bits_pte_r | T_267;
  assign T_269 = io_ptw_resp_bits_pte_v & T_268;
  assign T_270 = T_269 & io_ptw_resp_bits_pte_r;
  assign T_271 = sr_array | T_259;
  assign T_273 = sr_array & T_262;
  assign T_274 = T_270 ? T_271 : T_273;
  assign T_280 = T_269 & io_ptw_resp_bits_pte_w;
  assign T_281 = sw_array | T_259;
  assign T_283 = sw_array & T_262;
  assign T_284 = T_280 ? T_281 : T_283;
  assign T_290 = T_269 & io_ptw_resp_bits_pte_x;
  assign T_291 = sx_array | T_259;
  assign T_293 = sx_array & T_262;
  assign T_294 = T_290 ? T_291 : T_293;
  assign T_295 = dirty_array | T_259;
  assign T_297 = dirty_array & T_262;
  assign T_298 = io_ptw_resp_bits_pte_d ? T_295 : T_297;
  assign GEN_11 = io_ptw_resp_valid ? GEN_2 : ppns_0;
  assign GEN_12 = io_ptw_resp_valid ? GEN_3 : ppns_1;
  assign GEN_13 = io_ptw_resp_valid ? GEN_4 : ppns_2;
  assign GEN_14 = io_ptw_resp_valid ? GEN_5 : ppns_3;
  assign GEN_16 = io_ptw_resp_valid ? GEN_6 : tags_0;
  assign GEN_17 = io_ptw_resp_valid ? GEN_7 : tags_1;
  assign GEN_18 = io_ptw_resp_valid ? GEN_8 : tags_2;
  assign GEN_19 = io_ptw_resp_valid ? GEN_9 : tags_3;
  assign GEN_20 = io_ptw_resp_valid ? T_260 : valid;
  assign GEN_21 = io_ptw_resp_valid ? T_264 : u_array;
  assign GEN_22 = io_ptw_resp_valid ? T_274 : sr_array;
  assign GEN_23 = io_ptw_resp_valid ? T_284 : sw_array;
  assign GEN_24 = io_ptw_resp_valid ? T_294 : sx_array;
  assign GEN_25 = io_ptw_resp_valid ? T_298 : dirty_array;
  assign paddr = {io_resp_ppn,12'h0};
  assign T_390 = paddr < 32'h1000;
  assign T_394 = T_390 ? 3'h7 : 3'h0;
  assign T_396 = 32'h1000 <= paddr;
  assign T_398 = paddr < 32'h2000;
  assign T_399 = T_396 & T_398;
  assign T_402 = T_399 ? 3'h5 : 3'h0;
  assign T_404 = 32'h40000000 <= paddr;
  assign T_406 = paddr < 32'h44000000;
  assign T_407 = T_404 & T_406;
  assign T_410 = T_407 ? 3'h3 : 3'h0;
  assign T_412 = 32'h44000000 <= paddr;
  assign T_414 = paddr < 32'h48000000;
  assign T_415 = T_412 & T_414;
  assign T_418 = T_415 ? 3'h3 : 3'h0;
  assign T_420 = 32'h60000000 <= paddr;
  assign T_422 = paddr < 32'h80000000;
  assign T_423 = T_420 & T_422;
  assign T_426 = T_423 ? 3'h7 : 3'h0;
  assign T_428 = 32'h80000000 <= paddr;
  assign T_430 = paddr < 32'h90000000;
  assign T_431 = T_428 & T_430;
  assign T_434 = T_431 ? 3'h7 : 3'h0;
  assign T_439 = T_394 | T_402;
  assign T_440 = T_439 | T_410;
  assign T_441 = T_440 | T_418;
  assign T_442 = T_441 | T_426;
  assign T_443 = T_442 | T_434;
  assign addr_prot_x = T_453;
  assign addr_prot_w = T_452;
  assign addr_prot_r = T_451;
  assign T_451 = T_443[0];
  assign T_452 = T_443[1];
  assign T_453 = T_443[2];
  assign T_454 = state == 2'h0;
  assign T_458 = addr_prot_r == 1'h0;
  assign T_471 = addr_prot_w == 1'h0;
  assign T_484 = addr_prot_x == 1'h0;
  assign T_502 = T_218 ? ppns_0 : 38'h0;
  assign T_504 = T_221 ? ppns_1 : 38'h0;
  assign T_506 = T_224 ? ppns_2 : 38'h0;
  assign T_508 = T_227 ? ppns_3 : 38'h0;
  assign T_510 = T_502 | T_504;
  assign T_511 = T_510 | T_506;
  assign T_512 = T_511 | T_508;
  assign T_513 = T_512;
  assign T_515 = {{18'd0}, io_req_bits_vpn};
  assign T_516 = state == 2'h1;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_10 = {1{$random}};
  valid = GEN_10[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_15 = {2{$random}};
  ppns_0 = GEN_15[37:0];
  `endif
  `ifdef RANDOMIZE
  GEN_26 = {2{$random}};
  ppns_1 = GEN_26[37:0];
  `endif
  `ifdef RANDOMIZE
  GEN_27 = {2{$random}};
  ppns_2 = GEN_27[37:0];
  `endif
  `ifdef RANDOMIZE
  GEN_28 = {2{$random}};
  ppns_3 = GEN_28[37:0];
  `endif
  `ifdef RANDOMIZE
  GEN_29 = {1{$random}};
  tags_0 = GEN_29[26:0];
  `endif
  `ifdef RANDOMIZE
  GEN_30 = {1{$random}};
  tags_1 = GEN_30[26:0];
  `endif
  `ifdef RANDOMIZE
  GEN_31 = {1{$random}};
  tags_2 = GEN_31[26:0];
  `endif
  `ifdef RANDOMIZE
  GEN_32 = {1{$random}};
  tags_3 = GEN_32[26:0];
  `endif
  `ifdef RANDOMIZE
  GEN_33 = {1{$random}};
  state = GEN_33[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_34 = {1{$random}};
  r_refill_tag = GEN_34[26:0];
  `endif
  `ifdef RANDOMIZE
  GEN_35 = {1{$random}};
  r_refill_waddr = GEN_35[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_36 = {1{$random}};
  r_req_vpn = GEN_36[19:0];
  `endif
  `ifdef RANDOMIZE
  GEN_37 = {1{$random}};
  r_req_passthrough = GEN_37[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_38 = {1{$random}};
  r_req_instruction = GEN_38[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_39 = {1{$random}};
  r_req_store = GEN_39[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_40 = {1{$random}};
  pte_array_reserved_for_hardware = GEN_40[15:0];
  `endif
  `ifdef RANDOMIZE
  GEN_41 = {2{$random}};
  pte_array_ppn = GEN_41[37:0];
  `endif
  `ifdef RANDOMIZE
  GEN_42 = {1{$random}};
  pte_array_reserved_for_software = GEN_42[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_43 = {1{$random}};
  pte_array_d = GEN_43[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_44 = {1{$random}};
  pte_array_a = GEN_44[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_45 = {1{$random}};
  pte_array_g = GEN_45[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_46 = {1{$random}};
  pte_array_u = GEN_46[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_47 = {1{$random}};
  pte_array_x = GEN_47[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_48 = {1{$random}};
  pte_array_w = GEN_48[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_49 = {1{$random}};
  pte_array_r = GEN_49[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_50 = {1{$random}};
  pte_array_v = GEN_50[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_51 = {1{$random}};
  u_array = GEN_51[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_52 = {1{$random}};
  sw_array = GEN_52[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_53 = {1{$random}};
  sx_array = GEN_53[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_54 = {1{$random}};
  sr_array = GEN_54[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_55 = {1{$random}};
  dirty_array = GEN_55[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_56 = {1{$random}};
  T_300 = GEN_56[3:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      valid <= 4'h0;
    end else begin
      if(io_ptw_resp_valid) begin
        valid <= T_260;
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h0 == r_refill_waddr) begin
          ppns_0 <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h1 == r_refill_waddr) begin
          ppns_1 <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h2 == r_refill_waddr) begin
          ppns_2 <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h3 == r_refill_waddr) begin
          ppns_3 <= GEN_0;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h0 == r_refill_waddr) begin
          tags_0 <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h1 == r_refill_waddr) begin
          tags_1 <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h2 == r_refill_waddr) begin
          tags_2 <= GEN_1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(2'h3 == r_refill_waddr) begin
          tags_3 <= GEN_1;
        end
      end
    end
    if(reset) begin
      state <= 2'h0;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(io_ptw_resp_bits_pte_u) begin
          u_array <= T_261;
        end else begin
          u_array <= T_263;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(T_280) begin
          sw_array <= T_281;
        end else begin
          sw_array <= T_283;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(T_290) begin
          sx_array <= T_291;
        end else begin
          sx_array <= T_293;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(T_270) begin
          sr_array <= T_271;
        end else begin
          sr_array <= T_273;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_ptw_resp_valid) begin
        if(io_ptw_resp_bits_pte_d) begin
          dirty_array <= T_295;
        end else begin
          dirty_array <= T_297;
        end
      end
    end
    if(1'h0) begin
    end
  end
endmodule
