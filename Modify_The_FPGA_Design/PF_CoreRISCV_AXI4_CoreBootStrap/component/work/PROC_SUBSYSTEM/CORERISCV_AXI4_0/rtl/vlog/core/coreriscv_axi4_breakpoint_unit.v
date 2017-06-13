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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_BREAKPOINT_UNIT(
  input   clk,
  input   reset,
  input   io_status_debug,
  input  [1:0] io_status_prv,
  input   io_status_sd,
  input  [30:0] io_status_zero3,
  input   io_status_sd_rv32,
  input  [1:0] io_status_zero2,
  input  [4:0] io_status_vm,
  input  [3:0] io_status_zero1,
  input   io_status_mxr,
  input   io_status_pum,
  input   io_status_mprv,
  input  [1:0] io_status_xs,
  input  [1:0] io_status_fs,
  input  [1:0] io_status_mpp,
  input  [1:0] io_status_hpp,
  input   io_status_spp,
  input   io_status_mpie,
  input   io_status_hpie,
  input   io_status_spie,
  input   io_status_upie,
  input   io_status_mie,
  input   io_status_hie,
  input   io_status_sie,
  input   io_status_uie,
  input  [3:0] io_bp_0_control_tdrtype,
  input  [4:0] io_bp_0_control_bpamaskmax,
  input  [3:0] io_bp_0_control_reserved,
  input  [7:0] io_bp_0_control_bpaction,
  input  [3:0] io_bp_0_control_bpmatch,
  input   io_bp_0_control_m,
  input   io_bp_0_control_h,
  input   io_bp_0_control_s,
  input   io_bp_0_control_u,
  input   io_bp_0_control_r,
  input   io_bp_0_control_w,
  input   io_bp_0_control_x,
  input  [31:0] io_bp_0_address,
  input  [3:0] io_bp_1_control_tdrtype,
  input  [4:0] io_bp_1_control_bpamaskmax,
  input  [3:0] io_bp_1_control_reserved,
  input  [7:0] io_bp_1_control_bpaction,
  input  [3:0] io_bp_1_control_bpmatch,
  input   io_bp_1_control_m,
  input   io_bp_1_control_h,
  input   io_bp_1_control_s,
  input   io_bp_1_control_u,
  input   io_bp_1_control_r,
  input   io_bp_1_control_w,
  input   io_bp_1_control_x,
  input  [31:0] io_bp_1_address,
  input  [31:0] io_pc,
  input  [31:0] io_ea,
  output  io_xcpt_if,
  output  io_xcpt_ld,
  output  io_xcpt_st
);
  wire [1:0] T_206;
  wire [1:0] T_207;
  wire [3:0] T_208;
  wire [3:0] T_209;
  wire  T_210;
  wire [31:0] T_211;
  wire  T_212;
  wire  T_214;
  wire  T_215;
  wire [1:0] T_216;
  wire  T_217;
  wire  T_218;
  wire  T_219;
  wire [2:0] T_220;
  wire  T_221;
  wire  T_222;
  wire  T_223;
  wire [3:0] T_224;
  wire [31:0] GEN_18;
  wire [31:0] T_225;
  wire [31:0] T_226;
  wire [31:0] T_240;
  wire  T_241;
  wire  T_242;
  wire [31:0] T_244;
  wire [31:0] T_258;
  wire  T_274;
  wire  T_275;
  wire  T_308;
  wire  GEN_3;
  wire  GEN_4;
  wire  GEN_5;
  wire [1:0] T_310;
  wire [1:0] T_311;
  wire [3:0] T_312;
  wire [3:0] T_313;
  wire  T_314;
  wire  T_316;
  wire  T_318;
  wire  T_319;
  wire [1:0] T_320;
  wire  T_321;
  wire  T_322;
  wire  T_323;
  wire [2:0] T_324;
  wire  T_325;
  wire  T_326;
  wire  T_327;
  wire [3:0] T_328;
  wire [31:0] GEN_24;
  wire [31:0] T_329;
  wire [31:0] T_330;
  wire [31:0] T_344;
  wire  T_345;
  wire  T_346;
  wire  GEN_6;
  wire [31:0] T_362;
  wire  T_378;
  wire  T_379;
  wire  GEN_7;
  wire  T_412;
  wire  GEN_8;
  wire  GEN_9;
  wire  GEN_10;
  wire  GEN_11;
  wire  T_420;
  wire  T_421;
  wire  T_422;
  wire  T_424;
  wire  T_425;
  wire  T_426;
  wire  T_427;
  wire  GEN_12;
  wire  T_429;
  wire  T_431;
  wire  T_432;
  wire  T_433;
  wire  T_434;
  wire  GEN_13;
  wire  T_441;
  wire  GEN_14;
  wire  GEN_15;
  wire  GEN_16;
  wire  GEN_17;
  assign io_xcpt_if = GEN_15;
  assign io_xcpt_ld = GEN_16;
  assign io_xcpt_st = GEN_17;
  assign T_206 = {io_bp_0_control_s,io_bp_0_control_u};
  assign T_207 = {io_bp_0_control_m,io_bp_0_control_h};
  assign T_208 = {T_207,T_206};
  assign T_209 = T_208 >> io_status_prv;
  assign T_210 = T_209[0];
  assign T_211 = ~ io_pc;
  assign T_212 = io_bp_0_control_bpmatch[1];
  assign T_214 = io_bp_0_address[0];
  assign T_215 = T_212 & T_214;
  assign T_216 = {T_215,T_212};
  assign T_217 = T_216[1];
  assign T_218 = io_bp_0_address[1];
  assign T_219 = T_217 & T_218;
  assign T_220 = {T_219,T_216};
  assign T_221 = T_220[2];
  assign T_222 = io_bp_0_address[2];
  assign T_223 = T_221 & T_222;
  assign T_224 = {T_223,T_220};
  assign GEN_18 = {{28'd0}, T_224};
  assign T_225 = T_211 | GEN_18;
  assign T_226 = ~ io_bp_0_address;
  assign T_240 = T_226 | GEN_18;
  assign T_241 = T_225 == T_240;
  assign T_242 = T_241 & io_bp_0_control_x;
  assign T_244 = ~ io_ea;
  assign T_258 = T_244 | GEN_18;
  assign T_274 = T_258 == T_240;
  assign T_275 = T_274 & io_bp_0_control_r;
  assign T_308 = T_274 & io_bp_0_control_w;
  assign GEN_3 = T_210 ? T_242 : 1'h0;
  assign GEN_4 = T_210 ? T_275 : 1'h0;
  assign GEN_5 = T_210 ? T_308 : 1'h0;
  assign T_310 = {io_bp_1_control_s,io_bp_1_control_u};
  assign T_311 = {io_bp_1_control_m,io_bp_1_control_h};
  assign T_312 = {T_311,T_310};
  assign T_313 = T_312 >> io_status_prv;
  assign T_314 = T_313[0];
  assign T_316 = io_bp_1_control_bpmatch[1];
  assign T_318 = io_bp_1_address[0];
  assign T_319 = T_316 & T_318;
  assign T_320 = {T_319,T_316};
  assign T_321 = T_320[1];
  assign T_322 = io_bp_1_address[1];
  assign T_323 = T_321 & T_322;
  assign T_324 = {T_323,T_320};
  assign T_325 = T_324[2];
  assign T_326 = io_bp_1_address[2];
  assign T_327 = T_325 & T_326;
  assign T_328 = {T_327,T_324};
  assign GEN_24 = {{28'd0}, T_328};
  assign T_329 = T_211 | GEN_24;
  assign T_330 = ~ io_bp_1_address;
  assign T_344 = T_330 | GEN_24;
  assign T_345 = T_329 == T_344;
  assign T_346 = T_345 & io_bp_1_control_x;
  assign GEN_6 = T_346 ? 1'h1 : GEN_3;
  assign T_362 = T_244 | GEN_24;
  assign T_378 = T_362 == T_344;
  assign T_379 = T_378 & io_bp_1_control_r;
  assign GEN_7 = T_379 ? 1'h1 : GEN_4;
  assign T_412 = T_378 & io_bp_1_control_w;
  assign GEN_8 = T_412 ? 1'h1 : GEN_5;
  assign GEN_9 = T_314 ? GEN_6 : GEN_3;
  assign GEN_10 = T_314 ? GEN_7 : GEN_4;
  assign GEN_11 = T_314 ? GEN_8 : GEN_5;
  assign T_420 = io_bp_1_control_bpmatch == 4'h1;
  assign T_421 = T_314 & T_420;
  assign T_422 = io_pc < io_bp_0_address;
  assign T_424 = T_422 == 1'h0;
  assign T_425 = io_pc < io_bp_1_address;
  assign T_426 = T_424 & T_425;
  assign T_427 = T_426 & io_bp_1_control_x;
  assign GEN_12 = T_427 ? 1'h1 : GEN_9;
  assign T_429 = io_ea < io_bp_0_address;
  assign T_431 = T_429 == 1'h0;
  assign T_432 = io_ea < io_bp_1_address;
  assign T_433 = T_431 & T_432;
  assign T_434 = T_433 & io_bp_1_control_r;
  assign GEN_13 = T_434 ? 1'h1 : GEN_10;
  assign T_441 = T_433 & io_bp_1_control_w;
  assign GEN_14 = T_441 ? 1'h1 : GEN_11;
  assign GEN_15 = T_421 ? GEN_12 : GEN_9;
  assign GEN_16 = T_421 ? GEN_13 : GEN_10;
  assign GEN_17 = T_421 ? GEN_14 : GEN_11;
endmodule
