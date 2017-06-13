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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_CSR_FILE(
  input   clk,
  input   reset,
  input   io_prci_reset,
  input   io_prci_id,
  input   io_prci_interrupts_meip,
  input   io_prci_interrupts_seip,
  input   io_prci_interrupts_debug,
  input   io_prci_interrupts_mtip,
  input   io_prci_interrupts_msip,
  input  [11:0] io_rw_addr,
  input  [2:0] io_rw_cmd,
  output [31:0] io_rw_rdata,
  input  [31:0] io_rw_wdata,
  output  io_csr_stall,
  output  io_csr_xcpt,
  output  io_eret,
  output  io_singleStep,
  output  io_status_debug,
  output [1:0] io_status_prv,
  output  io_status_sd,
  output [30:0] io_status_zero3,
  output  io_status_sd_rv32,
  output [1:0] io_status_zero2,
  output [4:0] io_status_vm,
  output [3:0] io_status_zero1,
  output  io_status_mxr,
  output  io_status_pum,
  output  io_status_mprv,
  output [1:0] io_status_xs,
  output [1:0] io_status_fs,
  output [1:0] io_status_mpp,
  output [1:0] io_status_hpp,
  output  io_status_spp,
  output  io_status_mpie,
  output  io_status_hpie,
  output  io_status_spie,
  output  io_status_upie,
  output  io_status_mie,
  output  io_status_hie,
  output  io_status_sie,
  output  io_status_uie,
  output [6:0] io_ptbr_asid,
  output [21:0] io_ptbr_ppn,
  output [31:0] io_evec,
  input   io_exception,
  input   io_retire,
  input  [31:0] io_cause,
  input  [31:0] io_pc,
  input  [31:0] io_badaddr,
  output  io_fatc,
  output [31:0] io_time,
  output [2:0] io_fcsr_rm,
  input   io_fcsr_flags_valid,
  input  [4:0] io_fcsr_flags_bits,
  input   io_rocc_cmd_ready,
  output  io_rocc_cmd_valid,
  output [6:0] io_rocc_cmd_bits_inst_funct,
  output [4:0] io_rocc_cmd_bits_inst_rs2,
  output [4:0] io_rocc_cmd_bits_inst_rs1,
  output  io_rocc_cmd_bits_inst_xd,
  output  io_rocc_cmd_bits_inst_xs1,
  output  io_rocc_cmd_bits_inst_xs2,
  output [4:0] io_rocc_cmd_bits_inst_rd,
  output [6:0] io_rocc_cmd_bits_inst_opcode,
  output [31:0] io_rocc_cmd_bits_rs1,
  output [31:0] io_rocc_cmd_bits_rs2,
  output  io_rocc_cmd_bits_status_debug,
  output [1:0] io_rocc_cmd_bits_status_prv,
  output  io_rocc_cmd_bits_status_sd,
  output [30:0] io_rocc_cmd_bits_status_zero3,
  output  io_rocc_cmd_bits_status_sd_rv32,
  output [1:0] io_rocc_cmd_bits_status_zero2,
  output [4:0] io_rocc_cmd_bits_status_vm,
  output [3:0] io_rocc_cmd_bits_status_zero1,
  output  io_rocc_cmd_bits_status_mxr,
  output  io_rocc_cmd_bits_status_pum,
  output  io_rocc_cmd_bits_status_mprv,
  output [1:0] io_rocc_cmd_bits_status_xs,
  output [1:0] io_rocc_cmd_bits_status_fs,
  output [1:0] io_rocc_cmd_bits_status_mpp,
  output [1:0] io_rocc_cmd_bits_status_hpp,
  output  io_rocc_cmd_bits_status_spp,
  output  io_rocc_cmd_bits_status_mpie,
  output  io_rocc_cmd_bits_status_hpie,
  output  io_rocc_cmd_bits_status_spie,
  output  io_rocc_cmd_bits_status_upie,
  output  io_rocc_cmd_bits_status_mie,
  output  io_rocc_cmd_bits_status_hie,
  output  io_rocc_cmd_bits_status_sie,
  output  io_rocc_cmd_bits_status_uie,
  output  io_rocc_resp_ready,
  input   io_rocc_resp_valid,
  input  [4:0] io_rocc_resp_bits_rd,
  input  [31:0] io_rocc_resp_bits_data,
  output  io_rocc_mem_req_ready,
  input   io_rocc_mem_req_valid,
  input  [31:0] io_rocc_mem_req_bits_addr,
  input  [8:0] io_rocc_mem_req_bits_tag,
  input  [4:0] io_rocc_mem_req_bits_cmd,
  input  [2:0] io_rocc_mem_req_bits_typ,
  input   io_rocc_mem_req_bits_phys,
  input  [31:0] io_rocc_mem_req_bits_data,
  input   io_rocc_mem_s1_kill,
  input  [31:0] io_rocc_mem_s1_data,
  output  io_rocc_mem_s2_nack,
  output  io_rocc_mem_resp_valid,
  output [31:0] io_rocc_mem_resp_bits_addr,
  output [8:0] io_rocc_mem_resp_bits_tag,
  output [4:0] io_rocc_mem_resp_bits_cmd,
  output [2:0] io_rocc_mem_resp_bits_typ,
  output [31:0] io_rocc_mem_resp_bits_data,
  output  io_rocc_mem_resp_bits_replay,
  output  io_rocc_mem_resp_bits_has_data,
  output [31:0] io_rocc_mem_resp_bits_data_word_bypass,
  output [31:0] io_rocc_mem_resp_bits_store_data,
  output  io_rocc_mem_replay_next,
  output  io_rocc_mem_xcpt_ma_ld,
  output  io_rocc_mem_xcpt_ma_st,
  output  io_rocc_mem_xcpt_pf_ld,
  output  io_rocc_mem_xcpt_pf_st,
  input   io_rocc_mem_invalidate_lr,
  output  io_rocc_mem_ordered,
  input   io_rocc_busy,
  input   io_rocc_interrupt,
  output  io_rocc_autl_acquire_ready,
  input   io_rocc_autl_acquire_valid,
  input  [25:0] io_rocc_autl_acquire_bits_addr_block,
  input   io_rocc_autl_acquire_bits_client_xact_id,
  input  [2:0] io_rocc_autl_acquire_bits_addr_beat,
  input   io_rocc_autl_acquire_bits_is_builtin_type,
  input  [2:0] io_rocc_autl_acquire_bits_a_type,
  input  [11:0] io_rocc_autl_acquire_bits_union,
  input  [63:0] io_rocc_autl_acquire_bits_data,
  input   io_rocc_autl_grant_ready,
  output  io_rocc_autl_grant_valid,
  output [2:0] io_rocc_autl_grant_bits_addr_beat,
  output  io_rocc_autl_grant_bits_client_xact_id,
  output [1:0] io_rocc_autl_grant_bits_manager_xact_id,
  output  io_rocc_autl_grant_bits_is_builtin_type,
  output [3:0] io_rocc_autl_grant_bits_g_type,
  output [63:0] io_rocc_autl_grant_bits_data,
  output  io_rocc_fpu_req_ready,
  input   io_rocc_fpu_req_valid,
  input  [4:0] io_rocc_fpu_req_bits_cmd,
  input   io_rocc_fpu_req_bits_ldst,
  input   io_rocc_fpu_req_bits_wen,
  input   io_rocc_fpu_req_bits_ren1,
  input   io_rocc_fpu_req_bits_ren2,
  input   io_rocc_fpu_req_bits_ren3,
  input   io_rocc_fpu_req_bits_swap12,
  input   io_rocc_fpu_req_bits_swap23,
  input   io_rocc_fpu_req_bits_single,
  input   io_rocc_fpu_req_bits_fromint,
  input   io_rocc_fpu_req_bits_toint,
  input   io_rocc_fpu_req_bits_fastpipe,
  input   io_rocc_fpu_req_bits_fma,
  input   io_rocc_fpu_req_bits_div,
  input   io_rocc_fpu_req_bits_sqrt,
  input   io_rocc_fpu_req_bits_round,
  input   io_rocc_fpu_req_bits_wflags,
  input  [2:0] io_rocc_fpu_req_bits_rm,
  input  [1:0] io_rocc_fpu_req_bits_typ,
  input  [64:0] io_rocc_fpu_req_bits_in1,
  input  [64:0] io_rocc_fpu_req_bits_in2,
  input  [64:0] io_rocc_fpu_req_bits_in3,
  input   io_rocc_fpu_resp_ready,
  output  io_rocc_fpu_resp_valid,
  output [64:0] io_rocc_fpu_resp_bits_data,
  output [4:0] io_rocc_fpu_resp_bits_exc,
  output  io_rocc_exception,
  output [11:0] io_rocc_csr_waddr,
  output [31:0] io_rocc_csr_wdata,
  output  io_rocc_csr_wen,
  output  io_rocc_host_id,
  output  io_interrupt,
  output [31:0] io_interrupt_cause,
  output [3:0] io_bp_0_control_tdrtype,
  output [4:0] io_bp_0_control_bpamaskmax,
  output [3:0] io_bp_0_control_reserved,
  output [7:0] io_bp_0_control_bpaction,
  output [3:0] io_bp_0_control_bpmatch,
  output  io_bp_0_control_m,
  output  io_bp_0_control_h,
  output  io_bp_0_control_s,
  output  io_bp_0_control_u,
  output  io_bp_0_control_r,
  output  io_bp_0_control_w,
  output  io_bp_0_control_x,
  output [31:0] io_bp_0_address,
  output [3:0] io_bp_1_control_tdrtype,
  output [4:0] io_bp_1_control_bpamaskmax,
  output [3:0] io_bp_1_control_reserved,
  output [7:0] io_bp_1_control_bpaction,
  output [3:0] io_bp_1_control_bpmatch,
  output  io_bp_1_control_m,
  output  io_bp_1_control_h,
  output  io_bp_1_control_s,
  output  io_bp_1_control_u,
  output  io_bp_1_control_r,
  output  io_bp_1_control_w,
  output  io_bp_1_control_x,
  output [31:0] io_bp_1_address
);
  wire  T_5012_debug;
  wire [1:0] T_5012_prv;
  wire  T_5012_sd;
  wire [30:0] T_5012_zero3;
  wire  T_5012_sd_rv32;
  wire [1:0] T_5012_zero2;
  wire [4:0] T_5012_vm;
  wire [3:0] T_5012_zero1;
  wire  T_5012_mxr;
  wire  T_5012_pum;
  wire  T_5012_mprv;
  wire [1:0] T_5012_xs;
  wire [1:0] T_5012_fs;
  wire [1:0] T_5012_mpp;
  wire [1:0] T_5012_hpp;
  wire  T_5012_spp;
  wire  T_5012_mpie;
  wire  T_5012_hpie;
  wire  T_5012_spie;
  wire  T_5012_upie;
  wire  T_5012_mie;
  wire  T_5012_hie;
  wire  T_5012_sie;
  wire  T_5012_uie;
  wire [66:0] T_5038;
  wire  T_5039;
  wire  T_5040;
  wire  T_5041;
  wire  T_5042;
  wire  T_5043;
  wire  T_5044;
  wire  T_5045;
  wire  T_5046;
  wire  T_5047;
  wire [1:0] T_5048;
  wire [1:0] T_5049;
  wire [1:0] T_5050;
  wire [1:0] T_5051;
  wire  T_5052;
  wire  T_5053;
  wire  T_5054;
  wire [3:0] T_5055;
  wire [4:0] T_5056;
  wire [1:0] T_5057;
  wire  T_5058;
  wire [30:0] T_5059;
  wire  T_5060;
  wire [1:0] T_5061;
  wire  T_5062;
  wire  reset_mstatus_debug;
  wire [1:0] reset_mstatus_prv;
  wire  reset_mstatus_sd;
  wire [30:0] reset_mstatus_zero3;
  wire  reset_mstatus_sd_rv32;
  wire [1:0] reset_mstatus_zero2;
  wire [4:0] reset_mstatus_vm;
  wire [3:0] reset_mstatus_zero1;
  wire  reset_mstatus_mxr;
  wire  reset_mstatus_pum;
  wire  reset_mstatus_mprv;
  wire [1:0] reset_mstatus_xs;
  wire [1:0] reset_mstatus_fs;
  wire [1:0] reset_mstatus_mpp;
  wire [1:0] reset_mstatus_hpp;
  wire  reset_mstatus_spp;
  wire  reset_mstatus_mpie;
  wire  reset_mstatus_hpie;
  wire  reset_mstatus_spie;
  wire  reset_mstatus_upie;
  wire  reset_mstatus_mie;
  wire  reset_mstatus_hie;
  wire  reset_mstatus_sie;
  wire  reset_mstatus_uie;
  reg  reg_mstatus_debug;
  reg [31:0] GEN_152;
  reg [1:0] reg_mstatus_prv;
  reg [31:0] GEN_153;
  reg  reg_mstatus_sd;
  reg [31:0] GEN_154;
  reg [30:0] reg_mstatus_zero3;
  reg [31:0] GEN_155;
  reg  reg_mstatus_sd_rv32;
  reg [31:0] GEN_156;
  reg [1:0] reg_mstatus_zero2;
  reg [31:0] GEN_157;
  reg [4:0] reg_mstatus_vm;
  reg [31:0] GEN_158;
  reg [3:0] reg_mstatus_zero1;
  reg [31:0] GEN_159;
  reg  reg_mstatus_mxr;
  reg [31:0] GEN_160;
  reg  reg_mstatus_pum;
  reg [31:0] GEN_161;
  reg  reg_mstatus_mprv;
  reg [31:0] GEN_162;
  reg [1:0] reg_mstatus_xs;
  reg [31:0] GEN_163;
  reg [1:0] reg_mstatus_fs;
  reg [31:0] GEN_164;
  reg [1:0] reg_mstatus_mpp;
  reg [31:0] GEN_165;
  reg [1:0] reg_mstatus_hpp;
  reg [31:0] GEN_166;
  reg  reg_mstatus_spp;
  reg [31:0] GEN_167;
  reg  reg_mstatus_mpie;
  reg [31:0] GEN_168;
  reg  reg_mstatus_hpie;
  reg [31:0] GEN_175;
  reg  reg_mstatus_spie;
  reg [31:0] GEN_176;
  reg  reg_mstatus_upie;
  reg [31:0] GEN_177;
  reg  reg_mstatus_mie;
  reg [31:0] GEN_178;
  reg  reg_mstatus_hie;
  reg [31:0] GEN_179;
  reg  reg_mstatus_sie;
  reg [31:0] GEN_180;
  reg  reg_mstatus_uie;
  reg [31:0] GEN_181;
  wire [1:0] T_5150_xdebugver;
  wire  T_5150_ndreset;
  wire  T_5150_fullreset;
  wire [11:0] T_5150_hwbpcount;
  wire  T_5150_ebreakm;
  wire  T_5150_ebreakh;
  wire  T_5150_ebreaks;
  wire  T_5150_ebreaku;
  wire  T_5150_zero2;
  wire  T_5150_stopcycle;
  wire  T_5150_stoptime;
  wire [2:0] T_5150_cause;
  wire  T_5150_debugint;
  wire  T_5150_zero1;
  wire  T_5150_halt;
  wire  T_5150_step;
  wire [1:0] T_5150_prv;
  wire [31:0] T_5169;
  wire [1:0] T_5170;
  wire  T_5171;
  wire  T_5172;
  wire  T_5173;
  wire  T_5174;
  wire [2:0] T_5175;
  wire  T_5176;
  wire  T_5177;
  wire  T_5178;
  wire  T_5179;
  wire  T_5180;
  wire  T_5181;
  wire  T_5182;
  wire [11:0] T_5183;
  wire  T_5184;
  wire  T_5185;
  wire [1:0] T_5186;
  wire [1:0] reset_dcsr_xdebugver;
  wire  reset_dcsr_ndreset;
  wire  reset_dcsr_fullreset;
  wire [11:0] reset_dcsr_hwbpcount;
  wire  reset_dcsr_ebreakm;
  wire  reset_dcsr_ebreakh;
  wire  reset_dcsr_ebreaks;
  wire  reset_dcsr_ebreaku;
  wire  reset_dcsr_zero2;
  wire  reset_dcsr_stopcycle;
  wire  reset_dcsr_stoptime;
  wire [2:0] reset_dcsr_cause;
  wire  reset_dcsr_debugint;
  wire  reset_dcsr_zero1;
  wire  reset_dcsr_halt;
  wire  reset_dcsr_step;
  wire [1:0] reset_dcsr_prv;
  reg [1:0] reg_dcsr_xdebugver;
  reg [31:0] GEN_182;
  reg  reg_dcsr_ndreset;
  reg [31:0] GEN_185;
  reg  reg_dcsr_fullreset;
  reg [31:0] GEN_186;
  reg [11:0] reg_dcsr_hwbpcount;
  reg [31:0] GEN_187;
  reg  reg_dcsr_ebreakm;
  reg [31:0] GEN_188;
  reg  reg_dcsr_ebreakh;
  reg [31:0] GEN_189;
  reg  reg_dcsr_ebreaks;
  reg [31:0] GEN_190;
  reg  reg_dcsr_ebreaku;
  reg [31:0] GEN_191;
  reg  reg_dcsr_zero2;
  reg [31:0] GEN_192;
  reg  reg_dcsr_stopcycle;
  reg [31:0] GEN_201;
  reg  reg_dcsr_stoptime;
  reg [31:0] GEN_202;
  reg [2:0] reg_dcsr_cause;
  reg [31:0] GEN_203;
  reg  reg_dcsr_debugint;
  reg [31:0] GEN_204;
  reg  reg_dcsr_zero1;
  reg [31:0] GEN_205;
  reg  reg_dcsr_halt;
  reg [31:0] GEN_206;
  reg  reg_dcsr_step;
  reg [31:0] GEN_207;
  reg [1:0] reg_dcsr_prv;
  reg [31:0] GEN_208;
  wire  T_5252_rocc;
  wire  T_5252_meip;
  wire  T_5252_heip;
  wire  T_5252_seip;
  wire  T_5252_ueip;
  wire  T_5252_mtip;
  wire  T_5252_htip;
  wire  T_5252_stip;
  wire  T_5252_utip;
  wire  T_5252_msip;
  wire  T_5252_hsip;
  wire  T_5252_ssip;
  wire  T_5252_usip;
  wire [12:0] T_5267;
  wire  T_5268;
  wire  T_5269;
  wire  T_5270;
  wire  T_5271;
  wire  T_5272;
  wire  T_5273;
  wire  T_5274;
  wire  T_5275;
  wire  T_5276;
  wire  T_5277;
  wire  T_5278;
  wire  T_5279;
  wire  T_5280;
  wire  T_5281_rocc;
  wire  T_5281_meip;
  wire  T_5281_heip;
  wire  T_5281_seip;
  wire  T_5281_ueip;
  wire  T_5281_mtip;
  wire  T_5281_htip;
  wire  T_5281_stip;
  wire  T_5281_utip;
  wire  T_5281_msip;
  wire  T_5281_hsip;
  wire  T_5281_ssip;
  wire  T_5281_usip;
  wire  T_5302_rocc;
  wire  T_5302_meip;
  wire  T_5302_heip;
  wire  T_5302_seip;
  wire  T_5302_ueip;
  wire  T_5302_mtip;
  wire  T_5302_htip;
  wire  T_5302_stip;
  wire  T_5302_utip;
  wire  T_5302_msip;
  wire  T_5302_hsip;
  wire  T_5302_ssip;
  wire  T_5302_usip;
  wire [1:0] T_5319;
  wire [2:0] T_5320;
  wire [1:0] T_5321;
  wire [2:0] T_5322;
  wire [5:0] T_5323;
  wire [1:0] T_5324;
  wire [2:0] T_5325;
  wire [1:0] T_5326;
  wire [1:0] T_5327;
  wire [3:0] T_5328;
  wire [6:0] T_5329;
  wire [12:0] supported_interrupts;
  wire  exception;
  reg  reg_debug;
  reg [31:0] GEN_209;
  reg [31:0] reg_dpc;
  reg [31:0] GEN_210;
  reg [31:0] reg_dscratch;
  reg [31:0] GEN_211;
  reg  reg_singleStepped;
  reg [31:0] GEN_212;
  wire  T_5346;
  wire  GEN_27;
  wire  T_5349;
  wire  GEN_28;
  wire  T_5360;
  wire  T_5362;
  wire  T_5363;
  wire  T_5364;
  wire  T_5366;
  reg  reg_tdrselect_tdrmode;
  reg [31:0] GEN_213;
  reg [29:0] reg_tdrselect_reserved;
  reg [31:0] GEN_214;
  reg  reg_tdrselect_tdrindex;
  reg [31:0] GEN_215;
  reg [3:0] reg_bp_0_control_tdrtype;
  reg [31:0] GEN_216;
  reg [4:0] reg_bp_0_control_bpamaskmax;
  reg [31:0] GEN_217;
  reg [3:0] reg_bp_0_control_reserved;
  reg [31:0] GEN_218;
  reg [7:0] reg_bp_0_control_bpaction;
  reg [31:0] GEN_219;
  reg [3:0] reg_bp_0_control_bpmatch;
  reg [31:0] GEN_220;
  reg  reg_bp_0_control_m;
  reg [31:0] GEN_221;
  reg  reg_bp_0_control_h;
  reg [31:0] GEN_222;
  reg  reg_bp_0_control_s;
  reg [31:0] GEN_223;
  reg  reg_bp_0_control_u;
  reg [31:0] GEN_224;
  reg  reg_bp_0_control_r;
  reg [31:0] GEN_225;
  reg  reg_bp_0_control_w;
  reg [31:0] GEN_228;
  reg  reg_bp_0_control_x;
  reg [31:0] GEN_229;
  reg [31:0] reg_bp_0_address;
  reg [31:0] GEN_230;
  reg [3:0] reg_bp_1_control_tdrtype;
  reg [31:0] GEN_231;
  reg [4:0] reg_bp_1_control_bpamaskmax;
  reg [31:0] GEN_232;
  reg [3:0] reg_bp_1_control_reserved;
  reg [31:0] GEN_233;
  reg [7:0] reg_bp_1_control_bpaction;
  reg [31:0] GEN_234;
  reg [3:0] reg_bp_1_control_bpmatch;
  reg [31:0] GEN_235;
  reg  reg_bp_1_control_m;
  reg [31:0] GEN_236;
  reg  reg_bp_1_control_h;
  reg [31:0] GEN_237;
  reg  reg_bp_1_control_s;
  reg [31:0] GEN_238;
  reg  reg_bp_1_control_u;
  reg [31:0] GEN_239;
  reg  reg_bp_1_control_r;
  reg [31:0] GEN_240;
  reg  reg_bp_1_control_w;
  reg [31:0] GEN_243;
  reg  reg_bp_1_control_x;
  reg [31:0] GEN_246;
  reg [31:0] reg_bp_1_address;
  reg [31:0] GEN_249;
  reg [31:0] reg_mie;
  reg [31:0] GEN_252;
  reg [31:0] reg_mideleg;
  reg [31:0] GEN_255;
  reg [31:0] reg_medeleg;
  reg [31:0] GEN_256;
  reg  reg_mip_rocc;
  reg [31:0] GEN_257;
  reg  reg_mip_meip;
  reg [31:0] GEN_258;
  reg  reg_mip_heip;
  reg [31:0] GEN_259;
  reg  reg_mip_seip;
  reg [31:0] GEN_260;
  reg  reg_mip_ueip;
  reg [31:0] GEN_261;
  reg  reg_mip_mtip;
  reg [31:0] GEN_262;
  reg  reg_mip_htip;
  reg [31:0] GEN_263;
  reg  reg_mip_stip;
  reg [31:0] GEN_264;
  reg  reg_mip_utip;
  reg [31:0] GEN_265;
  reg  reg_mip_msip;
  reg [31:0] GEN_266;
  reg  reg_mip_hsip;
  reg [31:0] GEN_267;
  reg  reg_mip_ssip;
  reg [31:0] GEN_268;
  reg  reg_mip_usip;
  reg [31:0] GEN_269;
  reg [31:0] reg_mepc;
  reg [31:0] GEN_270;
  reg [31:0] reg_mcause;
  reg [31:0] GEN_271;
  reg [31:0] reg_mbadaddr;
  reg [31:0] GEN_272;
  reg [31:0] reg_mscratch;
  reg [31:0] GEN_273;
  reg [31:0] reg_mtvec;
  reg [31:0] GEN_274;
  reg [31:0] reg_sepc;
  reg [31:0] GEN_275;
  reg [31:0] reg_scause;
  reg [31:0] GEN_276;
  reg [31:0] reg_sbadaddr;
  reg [31:0] GEN_277;
  reg [31:0] reg_sscratch;
  reg [31:0] GEN_278;
  reg [31:0] reg_stvec;
  reg [31:0] GEN_279;
  reg [6:0] reg_sptbr_asid;
  reg [31:0] GEN_282;
  reg [21:0] reg_sptbr_ppn;
  reg [31:0] GEN_283;
  reg  reg_wfi;
  reg [31:0] GEN_284;
  reg [4:0] reg_fflags;
  reg [31:0] GEN_285;
  reg [2:0] reg_frm;
  reg [31:0] GEN_286;
  reg [5:0] T_5570;
  reg [31:0] GEN_287;
  wire [5:0] GEN_437;
  wire [6:0] T_5571;
  reg [57:0] T_5573;
  reg [63:0] GEN_288;
  wire  T_5574;
  wire [58:0] T_5576;
  wire [57:0] T_5577;
  wire [57:0] GEN_29;
  wire [63:0] T_5578;
  reg [5:0] T_5581;
  reg [31:0] GEN_289;
  wire [6:0] T_5582;
  reg [57:0] T_5584;
  reg [63:0] GEN_290;
  wire  T_5585;
  wire [58:0] T_5587;
  wire [57:0] T_5588;
  wire [57:0] GEN_30;
  wire [63:0] reg_cycle;
  wire  mip_rocc;
  wire  mip_meip;
  wire  mip_heip;
  wire  mip_seip;
  wire  mip_ueip;
  wire  mip_mtip;
  wire  mip_htip;
  wire  mip_stip;
  wire  mip_utip;
  wire  mip_msip;
  wire  mip_hsip;
  wire  mip_ssip;
  wire  mip_usip;
  wire [1:0] T_5602;
  wire [2:0] T_5603;
  wire [1:0] T_5604;
  wire [2:0] T_5605;
  wire [5:0] T_5606;
  wire [1:0] T_5607;
  wire [2:0] T_5608;
  wire [1:0] T_5609;
  wire [1:0] T_5610;
  wire [3:0] T_5611;
  wire [6:0] T_5612;
  wire [12:0] T_5613;
  wire [12:0] read_mip;
  wire [31:0] GEN_438;
  wire [31:0] pending_interrupts;
  wire  T_5615;
  wire  T_5617;
  wire  T_5619;
  wire  T_5620;
  wire  T_5621;
  wire  T_5622;
  wire [31:0] T_5623;
  wire [31:0] T_5624;
  wire [31:0] m_interrupts;
  wire  T_5629;
  wire  T_5631;
  wire  T_5632;
  wire  T_5633;
  wire  T_5634;
  wire [31:0] T_5635;
  wire [31:0] s_interrupts;
  wire [31:0] all_interrupts;
  wire  T_5638;
  wire  T_5639;
  wire  T_5640;
  wire  T_5641;
  wire  T_5642;
  wire  T_5643;
  wire  T_5644;
  wire  T_5645;
  wire  T_5646;
  wire  T_5647;
  wire  T_5648;
  wire  T_5649;
  wire  T_5650;
  wire  T_5651;
  wire  T_5652;
  wire  T_5653;
  wire  T_5654;
  wire  T_5655;
  wire  T_5656;
  wire  T_5657;
  wire  T_5658;
  wire  T_5659;
  wire  T_5660;
  wire  T_5661;
  wire  T_5662;
  wire  T_5663;
  wire  T_5664;
  wire  T_5665;
  wire  T_5666;
  wire  T_5667;
  wire  T_5668;
  wire [4:0] T_5702;
  wire [4:0] T_5703;
  wire [4:0] T_5704;
  wire [4:0] T_5705;
  wire [4:0] T_5706;
  wire [4:0] T_5707;
  wire [4:0] T_5708;
  wire [4:0] T_5709;
  wire [4:0] T_5710;
  wire [4:0] T_5711;
  wire [4:0] T_5712;
  wire [4:0] T_5713;
  wire [4:0] T_5714;
  wire [4:0] T_5715;
  wire [4:0] T_5716;
  wire [4:0] T_5717;
  wire [4:0] T_5718;
  wire [4:0] T_5719;
  wire [4:0] T_5720;
  wire [4:0] T_5721;
  wire [4:0] T_5722;
  wire [4:0] T_5723;
  wire [4:0] T_5724;
  wire [4:0] T_5725;
  wire [4:0] T_5726;
  wire [4:0] T_5727;
  wire [4:0] T_5728;
  wire [4:0] T_5729;
  wire [4:0] T_5730;
  wire [4:0] T_5731;
  wire [4:0] T_5732;
  wire [31:0] GEN_439;
  wire [32:0] T_5733;
  wire [31:0] interruptCause;
  wire  T_5735;
  wire  T_5738;
  wire  T_5739;
  wire  T_5744;
  wire  GEN_31;
  wire [31:0] GEN_32;
  wire  system_insn;
  wire  T_5747;
  wire  T_5749;
  wire  cpu_ren;
  wire [1:0] T_5750;
  wire [2:0] T_5751;
  wire [1:0] T_5752;
  wire [2:0] T_5753;
  wire [5:0] T_5754;
  wire [1:0] T_5755;
  wire [2:0] T_5756;
  wire [3:0] T_5757;
  wire [5:0] T_5758;
  wire [8:0] T_5759;
  wire [14:0] T_5760;
  wire [1:0] T_5761;
  wire [3:0] T_5762;
  wire [8:0] T_5763;
  wire [9:0] T_5764;
  wire [13:0] T_5765;
  wire [31:0] T_5766;
  wire [33:0] T_5767;
  wire [2:0] T_5768;
  wire [3:0] T_5769;
  wire [37:0] T_5770;
  wire [51:0] T_5771;
  wire [66:0] T_5772;
  wire [31:0] read_mstatus;
  wire [30:0] T_5773;
  wire [31:0] T_5774;
  wire  GEN_0;
  wire  GEN_33;
  wire  GEN_1;
  wire  GEN_34;
  wire [1:0] T_5789;
  wire  GEN_2;
  wire  GEN_35;
  wire [2:0] T_5790;
  wire  GEN_3;
  wire  GEN_36;
  wire  GEN_4;
  wire  GEN_37;
  wire [1:0] T_5791;
  wire  GEN_5;
  wire  GEN_38;
  wire [2:0] T_5792;
  wire [5:0] T_5793;
  wire [7:0] GEN_6;
  wire [7:0] GEN_39;
  wire [3:0] GEN_7;
  wire [3:0] GEN_40;
  wire [11:0] T_5794;
  wire  GEN_8;
  wire  GEN_41;
  wire [12:0] T_5795;
  wire [3:0] GEN_9;
  wire [3:0] GEN_42;
  wire [4:0] GEN_10;
  wire [4:0] GEN_43;
  wire [8:0] T_5796;
  wire [3:0] GEN_11;
  wire [3:0] GEN_44;
  wire [12:0] T_5797;
  wire [25:0] T_5798;
  wire [31:0] T_5799;
  wire [2:0] T_5822;
  wire [1:0] T_5823;
  wire [4:0] T_5824;
  wire [3:0] T_5825;
  wire [1:0] T_5826;
  wire [5:0] T_5827;
  wire [10:0] T_5828;
  wire [1:0] T_5829;
  wire [1:0] T_5830;
  wire [3:0] T_5831;
  wire [12:0] T_5832;
  wire [2:0] T_5833;
  wire [3:0] T_5834;
  wire [16:0] T_5835;
  wire [20:0] T_5836;
  wire [31:0] T_5837;
  wire [31:0] T_5838;
  wire [31:0] T_5839;
  wire  T_5844;
  wire  T_5846;
  wire  T_5848;
  wire  T_5850;
  wire  T_5852;
  wire  T_5854;
  wire  T_5856;
  wire  T_5858;
  wire  T_5860;
  wire  T_5862;
  wire  T_5864;
  wire  T_5866;
  wire  T_5868;
  wire  T_5870;
  wire  T_5872;
  wire  T_5874;
  wire  T_5876;
  wire  T_5878;
  wire  T_5880;
  wire  T_5882;
  wire  T_5884;
  wire  T_5886;
  wire  T_5888;
  wire  T_5890;
  wire  T_5892;
  wire  T_5894;
  wire  T_5896;
  wire  T_5898;
  wire  T_5900;
  wire  T_5902;
  wire  T_5904;
  wire  T_5906;
  wire  T_5907;
  wire  T_5908;
  wire  T_5909;
  wire  T_5910;
  wire  T_5911;
  wire  T_5912;
  wire  T_5913;
  wire  T_5914;
  wire  T_5915;
  wire  T_5916;
  wire  T_5917;
  wire  T_5918;
  wire  T_5919;
  wire  T_5920;
  wire  T_5921;
  wire  T_5922;
  wire  T_5923;
  wire  T_5924;
  wire  T_5925;
  wire  T_5926;
  wire  T_5927;
  wire  T_5928;
  wire  T_5929;
  wire  T_5930;
  wire  T_5931;
  wire  T_5932;
  wire  T_5933;
  wire  T_5934;
  wire  T_5935;
  wire  T_5936;
  wire  addr_valid;
  wire  T_5938;
  wire [1:0] T_5939;
  wire [1:0] T_5940;
  wire  T_5942;
  wire [1:0] T_5943;
  wire [2:0] csr_addr_priv;
  wire [2:0] T_5944;
  wire  priv_sufficient;
  wire [1:0] T_5945;
  wire [1:0] T_5946;
  wire  read_only;
  wire  T_5948;
  wire  T_5949;
  wire  cpu_wen;
  wire  T_5951;
  wire  wen;
  wire  T_5952;
  wire  T_5953;
  wire  T_5954;
  wire [31:0] T_5956;
  wire  T_5957;
  wire [31:0] T_5959;
  wire [31:0] T_5960;
  wire [31:0] T_5963;
  wire [31:0] T_5964;
  wire [31:0] wdata;
  wire  do_system_insn;
  wire [2:0] T_5966;
  wire [7:0] opcode;
  wire  T_5967;
  wire  insn_call;
  wire  T_5968;
  wire  insn_break;
  wire  T_5969;
  wire  insn_ret;
  wire  T_5970;
  wire  insn_sfence_vm;
  wire  T_5971;
  wire  insn_wfi;
  wire  T_5972;
  wire  T_5974;
  wire  T_5976;
  wire  T_5977;
  wire  T_5984;
  wire  T_5985;
  wire  T_5988;
  wire  T_5989;
  wire  T_5990;
  wire  T_5991;
  wire  GEN_45;
  wire  T_5994;
  wire  GEN_46;
  wire  T_5997;
  wire [3:0] GEN_440;
  wire [4:0] T_5999;
  wire [3:0] T_6000;
  wire [1:0] T_6003;
  wire [3:0] T_6004;
  wire [31:0] cause;
  wire [4:0] cause_lsbs;
  wire  T_6005;
  wire  T_6007;
  wire  causeIsDebugInt;
  wire  T_6009;
  wire [1:0] T_6010;
  wire [1:0] T_6011;
  wire [3:0] T_6012;
  wire [3:0] T_6013;
  wire  T_6014;
  wire  causeIsDebugBreak;
  wire  T_6016;
  wire  T_6017;
  wire  T_6018;
  wire [11:0] debugTVec;
  wire [31:0] tvec;
  wire [31:0] epc;
  wire [31:0] T_6038;
  wire  T_6041;
  wire [1:0] T_6042;
  wire  T_6044;
  wire [1:0] T_6045;
  wire  T_6047;
  wire  T_6048;
  wire [31:0] T_6049;
  wire [31:0] T_6051;
  wire [31:0] T_6052;
  wire [31:0] T_6053;
  wire  T_6054;
  wire [1:0] T_6059;
  wire [2:0] T_6060;
  wire  GEN_47;
  wire [31:0] GEN_48;
  wire [2:0] GEN_49;
  wire [1:0] GEN_50;
  wire  T_6062;
  wire [1:0] GEN_55;
  wire [31:0] GEN_58;
  wire [31:0] GEN_59;
  wire [31:0] GEN_60;
  wire  GEN_61;
  wire  GEN_63;
  wire  GEN_65;
  wire [31:0] GEN_66;
  wire [2:0] GEN_67;
  wire [1:0] GEN_68;
  wire [1:0] GEN_73;
  wire [31:0] GEN_76;
  wire [31:0] GEN_77;
  wire [31:0] GEN_78;
  wire  GEN_79;
  wire  GEN_81;
  wire  GEN_88;
  wire  T_6088;
  wire  T_6090;
  wire  GEN_89;
  wire  GEN_91;
  wire  GEN_93;
  wire  GEN_100;
  wire  GEN_101;
  wire  GEN_102;
  wire [1:0] T_6101;
  wire [1:0] GEN_441;
  wire [2:0] T_6102;
  wire [1:0] T_6103;
  wire [2:0] T_6104;
  wire [2:0] GEN_442;
  wire [3:0] T_6105;
  wire [2:0] T_6106;
  wire  T_6108;
  wire  T_6109;
  wire  T_6111;
  wire [31:0] T_6113;
  wire [31:0] T_6115;
  wire [31:0] GEN_12;
  wire [31:0] GEN_104;
  wire [31:0] T_6117;
  wire [63:0] T_6125;
  wire [63:0] T_6127;
  wire [30:0] T_6137;
  wire [31:0] T_6139;
  wire [31:0] T_6141;
  wire [12:0] T_6143;
  wire [31:0] T_6145;
  wire [31:0] T_6147;
  wire [31:0] T_6149;
  wire [31:0] T_6151;
  wire [31:0] T_6153;
  wire [31:0] T_6155;
  wire [31:0] T_6157;
  wire  T_6159;
  wire [31:0] T_6161;
  wire [31:0] T_6163;
  wire [31:0] T_6165;
  wire [31:0] T_6167;
  wire [31:0] T_6169;
  wire [31:0] T_6177;
  wire [31:0] T_6178;
  wire [63:0] GEN_443;
  wire [63:0] T_6182;
  wire [63:0] T_6183;
  wire [63:0] GEN_444;
  wire [63:0] T_6188;
  wire [63:0] GEN_445;
  wire [63:0] T_6189;
  wire [63:0] GEN_446;
  wire [63:0] T_6190;
  wire [63:0] GEN_447;
  wire [63:0] T_6191;
  wire [63:0] GEN_448;
  wire [63:0] T_6192;
  wire [63:0] GEN_449;
  wire [63:0] T_6193;
  wire [63:0] GEN_450;
  wire [63:0] T_6194;
  wire [63:0] GEN_451;
  wire [63:0] T_6195;
  wire [63:0] GEN_452;
  wire [63:0] T_6196;
  wire [63:0] GEN_453;
  wire [63:0] T_6197;
  wire [63:0] GEN_454;
  wire [63:0] T_6198;
  wire [63:0] GEN_455;
  wire [63:0] T_6199;
  wire [63:0] GEN_456;
  wire [63:0] T_6200;
  wire [63:0] GEN_457;
  wire [63:0] T_6201;
  wire [63:0] GEN_458;
  wire [63:0] T_6202;
  wire [63:0] GEN_459;
  wire [63:0] T_6203;
  wire [63:0] GEN_460;
  wire [63:0] T_6204;
  wire [63:0] T_6208;
  wire [4:0] T_6209;
  wire [4:0] GEN_105;
  wire [1:0] supportedModes_0;
  wire  T_6267_debug;
  wire [1:0] T_6267_prv;
  wire  T_6267_sd;
  wire [30:0] T_6267_zero3;
  wire  T_6267_sd_rv32;
  wire [1:0] T_6267_zero2;
  wire [4:0] T_6267_vm;
  wire [3:0] T_6267_zero1;
  wire  T_6267_mxr;
  wire  T_6267_pum;
  wire  T_6267_mprv;
  wire [1:0] T_6267_xs;
  wire [1:0] T_6267_fs;
  wire [1:0] T_6267_mpp;
  wire [1:0] T_6267_hpp;
  wire  T_6267_spp;
  wire  T_6267_mpie;
  wire  T_6267_hpie;
  wire  T_6267_spie;
  wire  T_6267_upie;
  wire  T_6267_mie;
  wire  T_6267_hie;
  wire  T_6267_sie;
  wire  T_6267_uie;
  wire [66:0] T_6293;
  wire  T_6294;
  wire  T_6295;
  wire  T_6296;
  wire  T_6297;
  wire  T_6298;
  wire  T_6299;
  wire  T_6300;
  wire  T_6301;
  wire  T_6302;
  wire [1:0] T_6303;
  wire [1:0] T_6304;
  wire [1:0] T_6305;
  wire [1:0] T_6306;
  wire  T_6307;
  wire  T_6308;
  wire  T_6309;
  wire [3:0] T_6310;
  wire [4:0] T_6311;
  wire [1:0] T_6312;
  wire  T_6313;
  wire [30:0] T_6314;
  wire  T_6315;
  wire [1:0] T_6316;
  wire  T_6317;
  wire  GEN_131;
  wire  GEN_132;
  wire  T_6346_rocc;
  wire  T_6346_meip;
  wire  T_6346_heip;
  wire  T_6346_seip;
  wire  T_6346_ueip;
  wire  T_6346_mtip;
  wire  T_6346_htip;
  wire  T_6346_stip;
  wire  T_6346_utip;
  wire  T_6346_msip;
  wire  T_6346_hsip;
  wire  T_6346_ssip;
  wire  T_6346_usip;
  wire  T_6360;
  wire  T_6361;
  wire  T_6362;
  wire  T_6363;
  wire  T_6364;
  wire  T_6365;
  wire  T_6366;
  wire  T_6367;
  wire  T_6368;
  wire  T_6369;
  wire  T_6370;
  wire  T_6371;
  wire  T_6372;
  wire [31:0] GEN_461;
  wire [31:0] T_6373;
  wire [31:0] GEN_146;
  wire [31:0] T_6374;
  wire [31:0] T_6376;
  wire [31:0] T_6377;
  wire [31:0] GEN_147;
  wire [31:0] GEN_148;
  wire [29:0] T_6378;
  wire [31:0] GEN_462;
  wire [31:0] T_6379;
  wire [31:0] GEN_149;
  wire [31:0] T_6381;
  wire [31:0] GEN_150;
  wire [31:0] GEN_151;
  wire [1:0] T_6419_xdebugver;
  wire  T_6419_ndreset;
  wire  T_6419_fullreset;
  wire [11:0] T_6419_hwbpcount;
  wire  T_6419_ebreakm;
  wire  T_6419_ebreakh;
  wire  T_6419_ebreaks;
  wire  T_6419_ebreaku;
  wire  T_6419_zero2;
  wire  T_6419_stopcycle;
  wire  T_6419_stoptime;
  wire [2:0] T_6419_cause;
  wire  T_6419_debugint;
  wire  T_6419_zero1;
  wire  T_6419_halt;
  wire  T_6419_step;
  wire [1:0] T_6419_prv;
  wire [1:0] T_6437;
  wire [2:0] T_6442;
  wire  T_6447;
  wire  T_6448;
  wire  T_6449;
  wire [11:0] T_6450;
  wire  T_6451;
  wire  T_6452;
  wire [1:0] T_6453;
  wire  GEN_169;
  wire  GEN_170;
  wire  GEN_171;
  wire [31:0] GEN_172;
  wire [31:0] GEN_173;
  wire  T_6466_tdrmode;
  wire [29:0] T_6466_reserved;
  wire  T_6466_tdrindex;
  wire [29:0] T_6471;
  wire  T_6472;
  wire  GEN_174;
  wire  T_6473;
  wire [3:0] T_6500_tdrtype;
  wire [4:0] T_6500_bpamaskmax;
  wire [3:0] T_6500_reserved;
  wire [7:0] T_6500_bpaction;
  wire [3:0] T_6500_bpmatch;
  wire  T_6500_m;
  wire  T_6500_h;
  wire  T_6500_s;
  wire  T_6500_u;
  wire  T_6500_r;
  wire  T_6500_w;
  wire  T_6500_x;
  wire [3:0] T_6520;
  wire [7:0] T_6521;
  wire [3:0] T_6522;
  wire [4:0] T_6523;
  wire [3:0] T_6524;
  wire [3:0] GEN_13;
  wire [4:0] GEN_14;
  wire [3:0] GEN_15;
  wire [7:0] GEN_16;
  wire [3:0] GEN_17;
  wire [3:0] GEN_183;
  wire [3:0] GEN_184;
  wire  GEN_18;
  wire  GEN_19;
  wire  GEN_20;
  wire  GEN_21;
  wire  GEN_22;
  wire  GEN_193;
  wire  GEN_194;
  wire  GEN_23;
  wire  GEN_195;
  wire  GEN_196;
  wire  GEN_24;
  wire  GEN_197;
  wire  GEN_198;
  wire [3:0] T_6554;
  wire [3:0] GEN_25;
  wire [3:0] GEN_199;
  wire [3:0] GEN_200;
  wire [3:0] GEN_226;
  wire [3:0] GEN_227;
  wire  GEN_241;
  wire  GEN_242;
  wire  GEN_244;
  wire  GEN_245;
  wire  GEN_247;
  wire  GEN_248;
  wire [31:0] GEN_26;
  wire [31:0] GEN_250;
  wire [31:0] GEN_251;
  wire [31:0] GEN_253;
  wire [31:0] GEN_254;
  wire [3:0] GEN_280;
  wire [3:0] GEN_281;
  wire  GEN_295;
  wire  GEN_296;
  wire  GEN_298;
  wire  GEN_299;
  wire  GEN_301;
  wire  GEN_302;
  wire [31:0] GEN_305;
  wire [31:0] GEN_306;
  wire  GEN_332;
  wire  GEN_333;
  wire [31:0] GEN_347;
  wire [31:0] GEN_348;
  wire [31:0] GEN_349;
  wire [31:0] GEN_350;
  wire [31:0] GEN_351;
  wire [31:0] GEN_352;
  wire  GEN_370;
  wire  GEN_371;
  wire  GEN_372;
  wire [31:0] GEN_373;
  wire [31:0] GEN_374;
  wire  GEN_378;
  wire [3:0] GEN_404;
  wire [3:0] GEN_405;
  wire  GEN_419;
  wire  GEN_420;
  wire  GEN_422;
  wire  GEN_423;
  wire  GEN_425;
  wire  GEN_426;
  wire [31:0] GEN_429;
  wire [31:0] GEN_430;
  wire  GEN_431;
  wire  GEN_432;
  wire  GEN_433;
  wire  GEN_434;
  wire  GEN_435;
  wire  GEN_436;
  reg  GEN_51;
  reg [31:0] GEN_291;
  reg [6:0] GEN_52;
  reg [31:0] GEN_292;
  reg [4:0] GEN_53;
  reg [31:0] GEN_293;
  reg [4:0] GEN_54;
  reg [31:0] GEN_294;
  reg  GEN_56;
  reg [31:0] GEN_297;
  reg  GEN_57;
  reg [31:0] GEN_300;
  reg  GEN_62;
  reg [31:0] GEN_303;
  reg [4:0] GEN_64;
  reg [31:0] GEN_304;
  reg [6:0] GEN_69;
  reg [31:0] GEN_307;
  reg [31:0] GEN_70;
  reg [31:0] GEN_308;
  reg [31:0] GEN_71;
  reg [31:0] GEN_309;
  reg  GEN_72;
  reg [31:0] GEN_310;
  reg [1:0] GEN_74;
  reg [31:0] GEN_311;
  reg  GEN_75;
  reg [31:0] GEN_312;
  reg [30:0] GEN_80;
  reg [31:0] GEN_313;
  reg  GEN_82;
  reg [31:0] GEN_314;
  reg [1:0] GEN_83;
  reg [31:0] GEN_315;
  reg [4:0] GEN_84;
  reg [31:0] GEN_316;
  reg [3:0] GEN_85;
  reg [31:0] GEN_317;
  reg  GEN_86;
  reg [31:0] GEN_318;
  reg  GEN_87;
  reg [31:0] GEN_319;
  reg  GEN_90;
  reg [31:0] GEN_320;
  reg [1:0] GEN_92;
  reg [31:0] GEN_321;
  reg [1:0] GEN_94;
  reg [31:0] GEN_322;
  reg [1:0] GEN_95;
  reg [31:0] GEN_323;
  reg [1:0] GEN_96;
  reg [31:0] GEN_324;
  reg  GEN_97;
  reg [31:0] GEN_325;
  reg  GEN_98;
  reg [31:0] GEN_326;
  reg  GEN_99;
  reg [31:0] GEN_327;
  reg  GEN_103;
  reg [31:0] GEN_328;
  reg  GEN_106;
  reg [31:0] GEN_329;
  reg  GEN_107;
  reg [31:0] GEN_330;
  reg  GEN_108;
  reg [31:0] GEN_331;
  reg  GEN_109;
  reg [31:0] GEN_334;
  reg  GEN_110;
  reg [31:0] GEN_335;
  reg  GEN_111;
  reg [31:0] GEN_336;
  reg  GEN_112;
  reg [31:0] GEN_337;
  reg  GEN_113;
  reg [31:0] GEN_338;
  reg  GEN_114;
  reg [31:0] GEN_339;
  reg [31:0] GEN_115;
  reg [31:0] GEN_340;
  reg [8:0] GEN_116;
  reg [31:0] GEN_341;
  reg [4:0] GEN_117;
  reg [31:0] GEN_342;
  reg [2:0] GEN_118;
  reg [31:0] GEN_343;
  reg [31:0] GEN_119;
  reg [31:0] GEN_344;
  reg  GEN_120;
  reg [31:0] GEN_345;
  reg  GEN_121;
  reg [31:0] GEN_346;
  reg [31:0] GEN_122;
  reg [31:0] GEN_353;
  reg [31:0] GEN_123;
  reg [31:0] GEN_354;
  reg  GEN_124;
  reg [31:0] GEN_355;
  reg  GEN_125;
  reg [31:0] GEN_356;
  reg  GEN_126;
  reg [31:0] GEN_357;
  reg  GEN_127;
  reg [31:0] GEN_358;
  reg  GEN_128;
  reg [31:0] GEN_359;
  reg  GEN_129;
  reg [31:0] GEN_360;
  reg  GEN_130;
  reg [31:0] GEN_361;
  reg  GEN_133;
  reg [31:0] GEN_362;
  reg [2:0] GEN_134;
  reg [31:0] GEN_363;
  reg  GEN_135;
  reg [31:0] GEN_364;
  reg [1:0] GEN_136;
  reg [31:0] GEN_365;
  reg  GEN_137;
  reg [31:0] GEN_366;
  reg [3:0] GEN_138;
  reg [31:0] GEN_367;
  reg [63:0] GEN_139;
  reg [63:0] GEN_368;
  reg  GEN_140;
  reg [31:0] GEN_369;
  reg  GEN_141;
  reg [31:0] GEN_375;
  reg [64:0] GEN_142;
  reg [95:0] GEN_376;
  reg [4:0] GEN_143;
  reg [31:0] GEN_377;
  reg  GEN_144;
  reg [31:0] GEN_379;
  reg  GEN_145;
  reg [31:0] GEN_380;
  assign io_rw_rdata = T_6208[31:0];
  assign io_csr_stall = reg_wfi;
  assign io_csr_xcpt = T_5991;
  assign io_eret = insn_ret;
  assign io_singleStep = T_6041;
  assign io_status_debug = reg_debug;
  assign io_status_prv = reg_mstatus_prv;
  assign io_status_sd = T_6048;
  assign io_status_zero3 = reg_mstatus_zero3;
  assign io_status_sd_rv32 = io_status_sd;
  assign io_status_zero2 = reg_mstatus_zero2;
  assign io_status_vm = reg_mstatus_vm;
  assign io_status_zero1 = reg_mstatus_zero1;
  assign io_status_mxr = reg_mstatus_mxr;
  assign io_status_pum = reg_mstatus_pum;
  assign io_status_mprv = reg_mstatus_mprv;
  assign io_status_xs = reg_mstatus_xs;
  assign io_status_fs = reg_mstatus_fs;
  assign io_status_mpp = reg_mstatus_mpp;
  assign io_status_hpp = reg_mstatus_hpp;
  assign io_status_spp = reg_mstatus_spp;
  assign io_status_mpie = reg_mstatus_mpie;
  assign io_status_hpie = reg_mstatus_hpie;
  assign io_status_spie = reg_mstatus_spie;
  assign io_status_upie = reg_mstatus_upie;
  assign io_status_mie = reg_mstatus_mie;
  assign io_status_hie = reg_mstatus_hie;
  assign io_status_sie = reg_mstatus_sie;
  assign io_status_uie = reg_mstatus_uie;
  assign io_ptbr_asid = reg_sptbr_asid;
  assign io_ptbr_ppn = reg_sptbr_ppn;
  assign io_evec = T_6038;
  assign io_fatc = insn_sfence_vm;
  assign io_time = reg_cycle[31:0];
  assign io_fcsr_rm = reg_frm;
  assign io_rocc_cmd_valid = GEN_51;
  assign io_rocc_cmd_bits_inst_funct = GEN_52;
  assign io_rocc_cmd_bits_inst_rs2 = GEN_53;
  assign io_rocc_cmd_bits_inst_rs1 = GEN_54;
  assign io_rocc_cmd_bits_inst_xd = GEN_56;
  assign io_rocc_cmd_bits_inst_xs1 = GEN_57;
  assign io_rocc_cmd_bits_inst_xs2 = GEN_62;
  assign io_rocc_cmd_bits_inst_rd = GEN_64;
  assign io_rocc_cmd_bits_inst_opcode = GEN_69;
  assign io_rocc_cmd_bits_rs1 = GEN_70;
  assign io_rocc_cmd_bits_rs2 = GEN_71;
  assign io_rocc_cmd_bits_status_debug = GEN_72;
  assign io_rocc_cmd_bits_status_prv = GEN_74;
  assign io_rocc_cmd_bits_status_sd = GEN_75;
  assign io_rocc_cmd_bits_status_zero3 = GEN_80;
  assign io_rocc_cmd_bits_status_sd_rv32 = GEN_82;
  assign io_rocc_cmd_bits_status_zero2 = GEN_83;
  assign io_rocc_cmd_bits_status_vm = GEN_84;
  assign io_rocc_cmd_bits_status_zero1 = GEN_85;
  assign io_rocc_cmd_bits_status_mxr = GEN_86;
  assign io_rocc_cmd_bits_status_pum = GEN_87;
  assign io_rocc_cmd_bits_status_mprv = GEN_90;
  assign io_rocc_cmd_bits_status_xs = GEN_92;
  assign io_rocc_cmd_bits_status_fs = GEN_94;
  assign io_rocc_cmd_bits_status_mpp = GEN_95;
  assign io_rocc_cmd_bits_status_hpp = GEN_96;
  assign io_rocc_cmd_bits_status_spp = GEN_97;
  assign io_rocc_cmd_bits_status_mpie = GEN_98;
  assign io_rocc_cmd_bits_status_hpie = GEN_99;
  assign io_rocc_cmd_bits_status_spie = GEN_103;
  assign io_rocc_cmd_bits_status_upie = GEN_106;
  assign io_rocc_cmd_bits_status_mie = GEN_107;
  assign io_rocc_cmd_bits_status_hie = GEN_108;
  assign io_rocc_cmd_bits_status_sie = GEN_109;
  assign io_rocc_cmd_bits_status_uie = GEN_110;
  assign io_rocc_resp_ready = GEN_111;
  assign io_rocc_mem_req_ready = GEN_112;
  assign io_rocc_mem_s2_nack = GEN_113;
  assign io_rocc_mem_resp_valid = GEN_114;
  assign io_rocc_mem_resp_bits_addr = GEN_115;
  assign io_rocc_mem_resp_bits_tag = GEN_116;
  assign io_rocc_mem_resp_bits_cmd = GEN_117;
  assign io_rocc_mem_resp_bits_typ = GEN_118;
  assign io_rocc_mem_resp_bits_data = GEN_119;
  assign io_rocc_mem_resp_bits_replay = GEN_120;
  assign io_rocc_mem_resp_bits_has_data = GEN_121;
  assign io_rocc_mem_resp_bits_data_word_bypass = GEN_122;
  assign io_rocc_mem_resp_bits_store_data = GEN_123;
  assign io_rocc_mem_replay_next = GEN_124;
  assign io_rocc_mem_xcpt_ma_ld = GEN_125;
  assign io_rocc_mem_xcpt_ma_st = GEN_126;
  assign io_rocc_mem_xcpt_pf_ld = GEN_127;
  assign io_rocc_mem_xcpt_pf_st = GEN_128;
  assign io_rocc_mem_ordered = GEN_129;
  assign io_rocc_autl_acquire_ready = GEN_130;
  assign io_rocc_autl_grant_valid = GEN_133;
  assign io_rocc_autl_grant_bits_addr_beat = GEN_134;
  assign io_rocc_autl_grant_bits_client_xact_id = GEN_135;
  assign io_rocc_autl_grant_bits_manager_xact_id = GEN_136;
  assign io_rocc_autl_grant_bits_is_builtin_type = GEN_137;
  assign io_rocc_autl_grant_bits_g_type = GEN_138;
  assign io_rocc_autl_grant_bits_data = GEN_139;
  assign io_rocc_fpu_req_ready = GEN_140;
  assign io_rocc_fpu_resp_valid = GEN_141;
  assign io_rocc_fpu_resp_bits_data = GEN_142;
  assign io_rocc_fpu_resp_bits_exc = GEN_143;
  assign io_rocc_exception = GEN_144;
  assign io_rocc_csr_waddr = io_rw_addr;
  assign io_rocc_csr_wdata = wdata;
  assign io_rocc_csr_wen = wen;
  assign io_rocc_host_id = GEN_145;
  assign io_interrupt = GEN_31;
  assign io_interrupt_cause = GEN_32;
  assign io_bp_0_control_tdrtype = reg_bp_0_control_tdrtype;
  assign io_bp_0_control_bpamaskmax = reg_bp_0_control_bpamaskmax;
  assign io_bp_0_control_reserved = reg_bp_0_control_reserved;
  assign io_bp_0_control_bpaction = reg_bp_0_control_bpaction;
  assign io_bp_0_control_bpmatch = reg_bp_0_control_bpmatch;
  assign io_bp_0_control_m = reg_bp_0_control_m;
  assign io_bp_0_control_h = reg_bp_0_control_h;
  assign io_bp_0_control_s = reg_bp_0_control_s;
  assign io_bp_0_control_u = reg_bp_0_control_u;
  assign io_bp_0_control_r = reg_bp_0_control_r;
  assign io_bp_0_control_w = reg_bp_0_control_w;
  assign io_bp_0_control_x = reg_bp_0_control_x;
  assign io_bp_0_address = reg_bp_0_address;
  assign io_bp_1_control_tdrtype = reg_bp_1_control_tdrtype;
  assign io_bp_1_control_bpamaskmax = reg_bp_1_control_bpamaskmax;
  assign io_bp_1_control_reserved = reg_bp_1_control_reserved;
  assign io_bp_1_control_bpaction = reg_bp_1_control_bpaction;
  assign io_bp_1_control_bpmatch = reg_bp_1_control_bpmatch;
  assign io_bp_1_control_m = reg_bp_1_control_m;
  assign io_bp_1_control_h = reg_bp_1_control_h;
  assign io_bp_1_control_s = reg_bp_1_control_s;
  assign io_bp_1_control_u = reg_bp_1_control_u;
  assign io_bp_1_control_r = reg_bp_1_control_r;
  assign io_bp_1_control_w = reg_bp_1_control_w;
  assign io_bp_1_control_x = reg_bp_1_control_x;
  assign io_bp_1_address = reg_bp_1_address;
  assign T_5012_debug = T_5062;
  assign T_5012_prv = T_5061;
  assign T_5012_sd = T_5060;
  assign T_5012_zero3 = T_5059;
  assign T_5012_sd_rv32 = T_5058;
  assign T_5012_zero2 = T_5057;
  assign T_5012_vm = T_5056;
  assign T_5012_zero1 = T_5055;
  assign T_5012_mxr = T_5054;
  assign T_5012_pum = T_5053;
  assign T_5012_mprv = T_5052;
  assign T_5012_xs = T_5051;
  assign T_5012_fs = T_5050;
  assign T_5012_mpp = T_5049;
  assign T_5012_hpp = T_5048;
  assign T_5012_spp = T_5047;
  assign T_5012_mpie = T_5046;
  assign T_5012_hpie = T_5045;
  assign T_5012_spie = T_5044;
  assign T_5012_upie = T_5043;
  assign T_5012_mie = T_5042;
  assign T_5012_hie = T_5041;
  assign T_5012_sie = T_5040;
  assign T_5012_uie = T_5039;
  assign T_5038 = 67'h0;
  assign T_5039 = T_5038[0];
  assign T_5040 = T_5038[1];
  assign T_5041 = T_5038[2];
  assign T_5042 = T_5038[3];
  assign T_5043 = T_5038[4];
  assign T_5044 = T_5038[5];
  assign T_5045 = T_5038[6];
  assign T_5046 = T_5038[7];
  assign T_5047 = T_5038[8];
  assign T_5048 = T_5038[10:9];
  assign T_5049 = T_5038[12:11];
  assign T_5050 = T_5038[14:13];
  assign T_5051 = T_5038[16:15];
  assign T_5052 = T_5038[17];
  assign T_5053 = T_5038[18];
  assign T_5054 = T_5038[19];
  assign T_5055 = T_5038[23:20];
  assign T_5056 = T_5038[28:24];
  assign T_5057 = T_5038[30:29];
  assign T_5058 = T_5038[31];
  assign T_5059 = T_5038[62:32];
  assign T_5060 = T_5038[63];
  assign T_5061 = T_5038[65:64];
  assign T_5062 = T_5038[66];
  assign reset_mstatus_debug = T_5012_debug;
  assign reset_mstatus_prv = 2'h3;
  assign reset_mstatus_sd = T_5012_sd;
  assign reset_mstatus_zero3 = T_5012_zero3;
  assign reset_mstatus_sd_rv32 = T_5012_sd_rv32;
  assign reset_mstatus_zero2 = T_5012_zero2;
  assign reset_mstatus_vm = T_5012_vm;
  assign reset_mstatus_zero1 = T_5012_zero1;
  assign reset_mstatus_mxr = T_5012_mxr;
  assign reset_mstatus_pum = T_5012_pum;
  assign reset_mstatus_mprv = T_5012_mprv;
  assign reset_mstatus_xs = T_5012_xs;
  assign reset_mstatus_fs = T_5012_fs;
  assign reset_mstatus_mpp = 2'h3;
  assign reset_mstatus_hpp = T_5012_hpp;
  assign reset_mstatus_spp = T_5012_spp;
  assign reset_mstatus_mpie = T_5012_mpie;
  assign reset_mstatus_hpie = T_5012_hpie;
  assign reset_mstatus_spie = T_5012_spie;
  assign reset_mstatus_upie = T_5012_upie;
  assign reset_mstatus_mie = T_5012_mie;
  assign reset_mstatus_hie = T_5012_hie;
  assign reset_mstatus_sie = T_5012_sie;
  assign reset_mstatus_uie = T_5012_uie;
  assign T_5150_xdebugver = T_5186;
  assign T_5150_ndreset = T_5185;
  assign T_5150_fullreset = T_5184;
  assign T_5150_hwbpcount = T_5183;
  assign T_5150_ebreakm = T_5182;
  assign T_5150_ebreakh = T_5181;
  assign T_5150_ebreaks = T_5180;
  assign T_5150_ebreaku = T_5179;
  assign T_5150_zero2 = T_5178;
  assign T_5150_stopcycle = T_5177;
  assign T_5150_stoptime = T_5176;
  assign T_5150_cause = T_5175;
  assign T_5150_debugint = T_5174;
  assign T_5150_zero1 = T_5173;
  assign T_5150_halt = T_5172;
  assign T_5150_step = T_5171;
  assign T_5150_prv = T_5170;
  assign T_5169 = 32'h0;
  assign T_5170 = T_5169[1:0];
  assign T_5171 = T_5169[2];
  assign T_5172 = T_5169[3];
  assign T_5173 = T_5169[4];
  assign T_5174 = T_5169[5];
  assign T_5175 = T_5169[8:6];
  assign T_5176 = T_5169[9];
  assign T_5177 = T_5169[10];
  assign T_5178 = T_5169[11];
  assign T_5179 = T_5169[12];
  assign T_5180 = T_5169[13];
  assign T_5181 = T_5169[14];
  assign T_5182 = T_5169[15];
  assign T_5183 = T_5169[27:16];
  assign T_5184 = T_5169[28];
  assign T_5185 = T_5169[29];
  assign T_5186 = T_5169[31:30];
  assign reset_dcsr_xdebugver = 2'h1;
  assign reset_dcsr_ndreset = T_5150_ndreset;
  assign reset_dcsr_fullreset = T_5150_fullreset;
  assign reset_dcsr_hwbpcount = T_5150_hwbpcount;
  assign reset_dcsr_ebreakm = T_5150_ebreakm;
  assign reset_dcsr_ebreakh = T_5150_ebreakh;
  assign reset_dcsr_ebreaks = T_5150_ebreaks;
  assign reset_dcsr_ebreaku = T_5150_ebreaku;
  assign reset_dcsr_zero2 = T_5150_zero2;
  assign reset_dcsr_stopcycle = T_5150_stopcycle;
  assign reset_dcsr_stoptime = T_5150_stoptime;
  assign reset_dcsr_cause = T_5150_cause;
  assign reset_dcsr_debugint = T_5150_debugint;
  assign reset_dcsr_zero1 = T_5150_zero1;
  assign reset_dcsr_halt = T_5150_halt;
  assign reset_dcsr_step = T_5150_step;
  assign reset_dcsr_prv = 2'h3;
  assign T_5252_rocc = T_5280;
  assign T_5252_meip = T_5279;
  assign T_5252_heip = T_5278;
  assign T_5252_seip = T_5277;
  assign T_5252_ueip = T_5276;
  assign T_5252_mtip = T_5275;
  assign T_5252_htip = T_5274;
  assign T_5252_stip = T_5273;
  assign T_5252_utip = T_5272;
  assign T_5252_msip = T_5271;
  assign T_5252_hsip = T_5270;
  assign T_5252_ssip = T_5269;
  assign T_5252_usip = T_5268;
  assign T_5267 = 13'h0;
  assign T_5268 = T_5267[0];
  assign T_5269 = T_5267[1];
  assign T_5270 = T_5267[2];
  assign T_5271 = T_5267[3];
  assign T_5272 = T_5267[4];
  assign T_5273 = T_5267[5];
  assign T_5274 = T_5267[6];
  assign T_5275 = T_5267[7];
  assign T_5276 = T_5267[8];
  assign T_5277 = T_5267[9];
  assign T_5278 = T_5267[10];
  assign T_5279 = T_5267[11];
  assign T_5280 = T_5267[12];
  assign T_5281_rocc = 1'h0;
  assign T_5281_meip = 1'h1;
  assign T_5281_heip = T_5252_heip;
  assign T_5281_seip = 1'h0;
  assign T_5281_ueip = T_5252_ueip;
  assign T_5281_mtip = 1'h1;
  assign T_5281_htip = T_5252_htip;
  assign T_5281_stip = 1'h0;
  assign T_5281_utip = T_5252_utip;
  assign T_5281_msip = 1'h1;
  assign T_5281_hsip = T_5252_hsip;
  assign T_5281_ssip = 1'h0;
  assign T_5281_usip = T_5252_usip;
  assign T_5302_rocc = T_5281_rocc;
  assign T_5302_meip = 1'h0;
  assign T_5302_heip = T_5281_heip;
  assign T_5302_seip = T_5281_seip;
  assign T_5302_ueip = T_5281_ueip;
  assign T_5302_mtip = 1'h0;
  assign T_5302_htip = T_5281_htip;
  assign T_5302_stip = T_5281_stip;
  assign T_5302_utip = T_5281_utip;
  assign T_5302_msip = 1'h0;
  assign T_5302_hsip = T_5281_hsip;
  assign T_5302_ssip = T_5281_ssip;
  assign T_5302_usip = T_5281_usip;
  assign T_5319 = {T_5281_hsip,T_5281_ssip};
  assign T_5320 = {T_5319,T_5281_usip};
  assign T_5321 = {T_5281_stip,T_5281_utip};
  assign T_5322 = {T_5321,T_5281_msip};
  assign T_5323 = {T_5322,T_5320};
  assign T_5324 = {T_5281_ueip,T_5281_mtip};
  assign T_5325 = {T_5324,T_5281_htip};
  assign T_5326 = {T_5281_heip,T_5281_seip};
  assign T_5327 = {T_5281_rocc,T_5281_meip};
  assign T_5328 = {T_5327,T_5326};
  assign T_5329 = {T_5328,T_5325};
  assign supported_interrupts = {T_5329,T_5323};
  assign exception = io_exception | io_csr_xcpt;
  assign T_5346 = io_retire | exception;
  assign GEN_27 = T_5346 ? 1'h1 : reg_singleStepped;
  assign T_5349 = io_singleStep == 1'h0;
  assign GEN_28 = T_5349 ? 1'h0 : GEN_27;
  assign T_5360 = reg_singleStepped == 1'h0;
  assign T_5362 = io_retire == 1'h0;
  assign T_5363 = T_5360 | T_5362;
  assign T_5364 = T_5363 | reset;
  assign T_5366 = T_5364 == 1'h0;
  assign GEN_437 = {{5'd0}, io_retire};
  assign T_5571 = T_5570 + GEN_437;
  assign T_5574 = T_5571[6];
  assign T_5576 = T_5573 + 58'h1;
  assign T_5577 = T_5576[57:0];
  assign GEN_29 = T_5574 ? T_5577 : T_5573;
  assign T_5578 = {T_5573,T_5570};
  assign T_5582 = T_5581 + 6'h1;
  assign T_5585 = T_5582[6];
  assign T_5587 = T_5584 + 58'h1;
  assign T_5588 = T_5587[57:0];
  assign GEN_30 = T_5585 ? T_5588 : T_5584;
  assign reg_cycle = {T_5584,T_5581};
  assign mip_rocc = io_rocc_interrupt;
  assign mip_meip = reg_mip_meip;
  assign mip_heip = reg_mip_heip;
  assign mip_seip = reg_mip_seip;
  assign mip_ueip = reg_mip_ueip;
  assign mip_mtip = reg_mip_mtip;
  assign mip_htip = reg_mip_htip;
  assign mip_stip = reg_mip_stip;
  assign mip_utip = reg_mip_utip;
  assign mip_msip = reg_mip_msip;
  assign mip_hsip = reg_mip_hsip;
  assign mip_ssip = reg_mip_ssip;
  assign mip_usip = reg_mip_usip;
  assign T_5602 = {mip_hsip,mip_ssip};
  assign T_5603 = {T_5602,mip_usip};
  assign T_5604 = {mip_stip,mip_utip};
  assign T_5605 = {T_5604,mip_msip};
  assign T_5606 = {T_5605,T_5603};
  assign T_5607 = {mip_ueip,mip_mtip};
  assign T_5608 = {T_5607,mip_htip};
  assign T_5609 = {mip_heip,mip_seip};
  assign T_5610 = {mip_rocc,mip_meip};
  assign T_5611 = {T_5610,T_5609};
  assign T_5612 = {T_5611,T_5608};
  assign T_5613 = {T_5612,T_5606};
  assign read_mip = T_5613 & supported_interrupts;
  assign GEN_438 = {{19'd0}, read_mip};
  assign pending_interrupts = GEN_438 & reg_mie;
  assign T_5615 = reg_debug == 1'h0;
  assign T_5617 = reg_mstatus_prv < 2'h3;
  assign T_5619 = reg_mstatus_prv == 2'h3;
  assign T_5620 = T_5619 & reg_mstatus_mie;
  assign T_5621 = T_5617 | T_5620;
  assign T_5622 = T_5615 & T_5621;
  assign T_5623 = ~ reg_mideleg;
  assign T_5624 = pending_interrupts & T_5623;
  assign m_interrupts = T_5622 ? T_5624 : 32'h0;
  assign T_5629 = reg_mstatus_prv < 2'h1;
  assign T_5631 = reg_mstatus_prv == 2'h1;
  assign T_5632 = T_5631 & reg_mstatus_sie;
  assign T_5633 = T_5629 | T_5632;
  assign T_5634 = T_5615 & T_5633;
  assign T_5635 = pending_interrupts & reg_mideleg;
  assign s_interrupts = T_5634 ? T_5635 : 32'h0;
  assign all_interrupts = m_interrupts | s_interrupts;
  assign T_5638 = all_interrupts[0];
  assign T_5639 = all_interrupts[1];
  assign T_5640 = all_interrupts[2];
  assign T_5641 = all_interrupts[3];
  assign T_5642 = all_interrupts[4];
  assign T_5643 = all_interrupts[5];
  assign T_5644 = all_interrupts[6];
  assign T_5645 = all_interrupts[7];
  assign T_5646 = all_interrupts[8];
  assign T_5647 = all_interrupts[9];
  assign T_5648 = all_interrupts[10];
  assign T_5649 = all_interrupts[11];
  assign T_5650 = all_interrupts[12];
  assign T_5651 = all_interrupts[13];
  assign T_5652 = all_interrupts[14];
  assign T_5653 = all_interrupts[15];
  assign T_5654 = all_interrupts[16];
  assign T_5655 = all_interrupts[17];
  assign T_5656 = all_interrupts[18];
  assign T_5657 = all_interrupts[19];
  assign T_5658 = all_interrupts[20];
  assign T_5659 = all_interrupts[21];
  assign T_5660 = all_interrupts[22];
  assign T_5661 = all_interrupts[23];
  assign T_5662 = all_interrupts[24];
  assign T_5663 = all_interrupts[25];
  assign T_5664 = all_interrupts[26];
  assign T_5665 = all_interrupts[27];
  assign T_5666 = all_interrupts[28];
  assign T_5667 = all_interrupts[29];
  assign T_5668 = all_interrupts[30];
  assign T_5702 = T_5668 ? 5'h1e : 5'h1f;
  assign T_5703 = T_5667 ? 5'h1d : T_5702;
  assign T_5704 = T_5666 ? 5'h1c : T_5703;
  assign T_5705 = T_5665 ? 5'h1b : T_5704;
  assign T_5706 = T_5664 ? 5'h1a : T_5705;
  assign T_5707 = T_5663 ? 5'h19 : T_5706;
  assign T_5708 = T_5662 ? 5'h18 : T_5707;
  assign T_5709 = T_5661 ? 5'h17 : T_5708;
  assign T_5710 = T_5660 ? 5'h16 : T_5709;
  assign T_5711 = T_5659 ? 5'h15 : T_5710;
  assign T_5712 = T_5658 ? 5'h14 : T_5711;
  assign T_5713 = T_5657 ? 5'h13 : T_5712;
  assign T_5714 = T_5656 ? 5'h12 : T_5713;
  assign T_5715 = T_5655 ? 5'h11 : T_5714;
  assign T_5716 = T_5654 ? 5'h10 : T_5715;
  assign T_5717 = T_5653 ? 5'hf : T_5716;
  assign T_5718 = T_5652 ? 5'he : T_5717;
  assign T_5719 = T_5651 ? 5'hd : T_5718;
  assign T_5720 = T_5650 ? 5'hc : T_5719;
  assign T_5721 = T_5649 ? 5'hb : T_5720;
  assign T_5722 = T_5648 ? 5'ha : T_5721;
  assign T_5723 = T_5647 ? 5'h9 : T_5722;
  assign T_5724 = T_5646 ? 5'h8 : T_5723;
  assign T_5725 = T_5645 ? 5'h7 : T_5724;
  assign T_5726 = T_5644 ? 5'h6 : T_5725;
  assign T_5727 = T_5643 ? 5'h5 : T_5726;
  assign T_5728 = T_5642 ? 5'h4 : T_5727;
  assign T_5729 = T_5641 ? 5'h3 : T_5728;
  assign T_5730 = T_5640 ? 5'h2 : T_5729;
  assign T_5731 = T_5639 ? 5'h1 : T_5730;
  assign T_5732 = T_5638 ? 5'h0 : T_5731;
  assign GEN_439 = {{27'd0}, T_5732};
  assign T_5733 = 32'h80000000 + GEN_439;
  assign interruptCause = T_5733[31:0];
  assign T_5735 = all_interrupts != 32'h0;
  assign T_5738 = T_5735 & T_5349;
  assign T_5739 = T_5738 | reg_singleStepped;
  assign T_5744 = reg_dcsr_debugint & T_5615;
  assign GEN_31 = T_5744 ? 1'h1 : T_5739;
  assign GEN_32 = T_5744 ? 32'h8000000d : interruptCause;
  assign system_insn = io_rw_cmd == 3'h4;
  assign T_5747 = io_rw_cmd != 3'h0;
  assign T_5749 = system_insn == 1'h0;
  assign cpu_ren = T_5747 & T_5749;
  assign T_5750 = {io_status_hie,io_status_sie};
  assign T_5751 = {T_5750,io_status_uie};
  assign T_5752 = {io_status_spie,io_status_upie};
  assign T_5753 = {T_5752,io_status_mie};
  assign T_5754 = {T_5753,T_5751};
  assign T_5755 = {io_status_spp,io_status_mpie};
  assign T_5756 = {T_5755,io_status_hpie};
  assign T_5757 = {io_status_fs,io_status_mpp};
  assign T_5758 = {T_5757,io_status_hpp};
  assign T_5759 = {T_5758,T_5756};
  assign T_5760 = {T_5759,T_5754};
  assign T_5761 = {io_status_pum,io_status_mprv};
  assign T_5762 = {T_5761,io_status_xs};
  assign T_5763 = {io_status_vm,io_status_zero1};
  assign T_5764 = {T_5763,io_status_mxr};
  assign T_5765 = {T_5764,T_5762};
  assign T_5766 = {io_status_zero3,io_status_sd_rv32};
  assign T_5767 = {T_5766,io_status_zero2};
  assign T_5768 = {io_status_debug,io_status_prv};
  assign T_5769 = {T_5768,io_status_sd};
  assign T_5770 = {T_5769,T_5767};
  assign T_5771 = {T_5770,T_5765};
  assign T_5772 = {T_5771,T_5760};
  assign read_mstatus = T_5772[31:0];
  assign T_5773 = {reg_tdrselect_tdrmode,reg_tdrselect_reserved};
  assign T_5774 = {T_5773,reg_tdrselect_tdrindex};
  assign GEN_0 = GEN_33;
  assign GEN_33 = reg_tdrselect_tdrindex ? reg_bp_1_control_r : reg_bp_0_control_r;
  assign GEN_1 = GEN_34;
  assign GEN_34 = reg_tdrselect_tdrindex ? reg_bp_1_control_w : reg_bp_0_control_w;
  assign T_5789 = {GEN_0,GEN_1};
  assign GEN_2 = GEN_35;
  assign GEN_35 = reg_tdrselect_tdrindex ? reg_bp_1_control_x : reg_bp_0_control_x;
  assign T_5790 = {T_5789,GEN_2};
  assign GEN_3 = GEN_36;
  assign GEN_36 = reg_tdrselect_tdrindex ? reg_bp_1_control_h : reg_bp_0_control_h;
  assign GEN_4 = GEN_37;
  assign GEN_37 = reg_tdrselect_tdrindex ? reg_bp_1_control_s : reg_bp_0_control_s;
  assign T_5791 = {GEN_3,GEN_4};
  assign GEN_5 = GEN_38;
  assign GEN_38 = reg_tdrselect_tdrindex ? reg_bp_1_control_u : reg_bp_0_control_u;
  assign T_5792 = {T_5791,GEN_5};
  assign T_5793 = {T_5792,T_5790};
  assign GEN_6 = GEN_39;
  assign GEN_39 = reg_tdrselect_tdrindex ? reg_bp_1_control_bpaction : reg_bp_0_control_bpaction;
  assign GEN_7 = GEN_40;
  assign GEN_40 = reg_tdrselect_tdrindex ? reg_bp_1_control_bpmatch : reg_bp_0_control_bpmatch;
  assign T_5794 = {GEN_6,GEN_7};
  assign GEN_8 = GEN_41;
  assign GEN_41 = reg_tdrselect_tdrindex ? reg_bp_1_control_m : reg_bp_0_control_m;
  assign T_5795 = {T_5794,GEN_8};
  assign GEN_9 = GEN_42;
  assign GEN_42 = reg_tdrselect_tdrindex ? reg_bp_1_control_tdrtype : reg_bp_0_control_tdrtype;
  assign GEN_10 = GEN_43;
  assign GEN_43 = reg_tdrselect_tdrindex ? reg_bp_1_control_bpamaskmax : reg_bp_0_control_bpamaskmax;
  assign T_5796 = {GEN_9,GEN_10};
  assign GEN_11 = GEN_44;
  assign GEN_44 = reg_tdrselect_tdrindex ? reg_bp_1_control_reserved : reg_bp_0_control_reserved;
  assign T_5797 = {T_5796,GEN_11};
  assign T_5798 = {T_5797,T_5795};
  assign T_5799 = {T_5798,T_5793};
  assign T_5822 = {reg_dcsr_step,reg_dcsr_prv};
  assign T_5823 = {reg_dcsr_zero1,reg_dcsr_halt};
  assign T_5824 = {T_5823,T_5822};
  assign T_5825 = {reg_dcsr_cause,reg_dcsr_debugint};
  assign T_5826 = {reg_dcsr_stopcycle,reg_dcsr_stoptime};
  assign T_5827 = {T_5826,T_5825};
  assign T_5828 = {T_5827,T_5824};
  assign T_5829 = {reg_dcsr_ebreaku,reg_dcsr_zero2};
  assign T_5830 = {reg_dcsr_ebreakh,reg_dcsr_ebreaks};
  assign T_5831 = {T_5830,T_5829};
  assign T_5832 = {reg_dcsr_hwbpcount,reg_dcsr_ebreakm};
  assign T_5833 = {reg_dcsr_xdebugver,reg_dcsr_ndreset};
  assign T_5834 = {T_5833,reg_dcsr_fullreset};
  assign T_5835 = {T_5834,T_5832};
  assign T_5836 = {T_5835,T_5831};
  assign T_5837 = {T_5836,T_5828};
  assign T_5838 = reg_cycle[63:32];
  assign T_5839 = T_5578[63:32];
  assign T_5844 = io_rw_addr == 12'h7a0;
  assign T_5846 = io_rw_addr == 12'h7a1;
  assign T_5848 = io_rw_addr == 12'h7a2;
  assign T_5850 = io_rw_addr == 12'hf13;
  assign T_5852 = io_rw_addr == 12'hf12;
  assign T_5854 = io_rw_addr == 12'hf11;
  assign T_5856 = io_rw_addr == 12'hf00;
  assign T_5858 = io_rw_addr == 12'hf02;
  assign T_5860 = io_rw_addr == 12'h310;
  assign T_5862 = io_rw_addr == 12'h701;
  assign T_5864 = io_rw_addr == 12'h700;
  assign T_5866 = io_rw_addr == 12'h702;
  assign T_5868 = io_rw_addr == 12'hf10;
  assign T_5870 = io_rw_addr == 12'h300;
  assign T_5872 = io_rw_addr == 12'h305;
  assign T_5874 = io_rw_addr == 12'h344;
  assign T_5876 = io_rw_addr == 12'h304;
  assign T_5878 = io_rw_addr == 12'h303;
  assign T_5880 = io_rw_addr == 12'h302;
  assign T_5882 = io_rw_addr == 12'h340;
  assign T_5884 = io_rw_addr == 12'h341;
  assign T_5886 = io_rw_addr == 12'h343;
  assign T_5888 = io_rw_addr == 12'h342;
  assign T_5890 = io_rw_addr == 12'hf14;
  assign T_5892 = io_rw_addr == 12'h7b0;
  assign T_5894 = io_rw_addr == 12'h7b1;
  assign T_5896 = io_rw_addr == 12'h7b2;
  assign T_5898 = io_rw_addr == 12'hf80;
  assign T_5900 = io_rw_addr == 12'hf82;
  assign T_5902 = io_rw_addr == 12'h781;
  assign T_5904 = io_rw_addr == 12'h780;
  assign T_5906 = io_rw_addr == 12'h782;
  assign T_5907 = T_5844 | T_5846;
  assign T_5908 = T_5907 | T_5848;
  assign T_5909 = T_5908 | T_5850;
  assign T_5910 = T_5909 | T_5852;
  assign T_5911 = T_5910 | T_5854;
  assign T_5912 = T_5911 | T_5856;
  assign T_5913 = T_5912 | T_5858;
  assign T_5914 = T_5913 | T_5860;
  assign T_5915 = T_5914 | T_5862;
  assign T_5916 = T_5915 | T_5864;
  assign T_5917 = T_5916 | T_5866;
  assign T_5918 = T_5917 | T_5868;
  assign T_5919 = T_5918 | T_5870;
  assign T_5920 = T_5919 | T_5872;
  assign T_5921 = T_5920 | T_5874;
  assign T_5922 = T_5921 | T_5876;
  assign T_5923 = T_5922 | T_5878;
  assign T_5924 = T_5923 | T_5880;
  assign T_5925 = T_5924 | T_5882;
  assign T_5926 = T_5925 | T_5884;
  assign T_5927 = T_5926 | T_5886;
  assign T_5928 = T_5927 | T_5888;
  assign T_5929 = T_5928 | T_5890;
  assign T_5930 = T_5929 | T_5892;
  assign T_5931 = T_5930 | T_5894;
  assign T_5932 = T_5931 | T_5896;
  assign T_5933 = T_5932 | T_5898;
  assign T_5934 = T_5933 | T_5900;
  assign T_5935 = T_5934 | T_5902;
  assign T_5936 = T_5935 | T_5904;
  assign addr_valid = T_5936 | T_5906;
  assign T_5938 = io_rw_addr[5];
  assign T_5939 = io_rw_addr[6:5];
  assign T_5940 = ~ T_5939;
  assign T_5942 = T_5940 == 2'h0;
  assign T_5943 = io_rw_addr[9:8];
  assign csr_addr_priv = {T_5942,T_5943};
  assign T_5944 = {reg_debug,reg_mstatus_prv};
  assign priv_sufficient = T_5944 >= csr_addr_priv;
  assign T_5945 = io_rw_addr[11:10];
  assign T_5946 = ~ T_5945;
  assign read_only = T_5946 == 2'h0;
  assign T_5948 = io_rw_cmd != 3'h5;
  assign T_5949 = cpu_ren & T_5948;
  assign cpu_wen = T_5949 & priv_sufficient;
  assign T_5951 = read_only == 1'h0;
  assign wen = cpu_wen & T_5951;
  assign T_5952 = io_rw_cmd == 3'h2;
  assign T_5953 = io_rw_cmd == 3'h3;
  assign T_5954 = T_5952 | T_5953;
  assign T_5956 = T_5954 ? io_rw_rdata : 32'h0;
  assign T_5957 = io_rw_cmd != 3'h3;
  assign T_5959 = T_5957 ? io_rw_wdata : 32'h0;
  assign T_5960 = T_5956 | T_5959;
  assign T_5963 = T_5953 ? io_rw_wdata : 32'h0;
  assign T_5964 = ~ T_5963;
  assign wdata = T_5960 & T_5964;
  assign do_system_insn = priv_sufficient & system_insn;
  assign T_5966 = io_rw_addr[2:0];
  assign opcode = 8'h1 << T_5966;
  assign T_5967 = opcode[0];
  assign insn_call = do_system_insn & T_5967;
  assign T_5968 = opcode[1];
  assign insn_break = do_system_insn & T_5968;
  assign T_5969 = opcode[2];
  assign insn_ret = do_system_insn & T_5969;
  assign T_5970 = opcode[4];
  assign insn_sfence_vm = do_system_insn & T_5970;
  assign T_5971 = opcode[5];
  assign insn_wfi = do_system_insn & T_5971;
  assign T_5972 = cpu_wen & read_only;
  assign T_5974 = priv_sufficient == 1'h0;
  assign T_5976 = addr_valid == 1'h0;
  assign T_5977 = T_5974 | T_5976;
  assign T_5984 = cpu_ren & T_5977;
  assign T_5985 = T_5972 | T_5984;
  assign T_5988 = system_insn & T_5974;
  assign T_5989 = T_5985 | T_5988;
  assign T_5990 = T_5989 | insn_call;
  assign T_5991 = T_5990 | insn_break;
  assign GEN_45 = insn_wfi ? 1'h1 : reg_wfi;
  assign T_5994 = pending_interrupts != 32'h0;
  assign GEN_46 = T_5994 ? 1'h0 : GEN_45;
  assign T_5997 = io_csr_xcpt == 1'h0;
  assign GEN_440 = {{2'd0}, reg_mstatus_prv};
  assign T_5999 = GEN_440 + 4'h8;
  assign T_6000 = T_5999[3:0];
  assign T_6003 = insn_break ? 2'h3 : 2'h2;
  assign T_6004 = insn_call ? T_6000 : {{2'd0}, T_6003};
  assign cause = T_5997 ? io_cause : {{28'd0}, T_6004};
  assign cause_lsbs = cause[4:0];
  assign T_6005 = cause[31];
  assign T_6007 = cause_lsbs == 5'hd;
  assign causeIsDebugInt = T_6005 & T_6007;
  assign T_6009 = cause == 32'h3;
  assign T_6010 = {reg_dcsr_ebreaks,reg_dcsr_ebreaku};
  assign T_6011 = {reg_dcsr_ebreakm,reg_dcsr_ebreakh};
  assign T_6012 = {T_6011,T_6010};
  assign T_6013 = T_6012 >> reg_mstatus_prv;
  assign T_6014 = T_6013[0];
  assign causeIsDebugBreak = T_6009 & T_6014;
  assign T_6016 = reg_singleStepped | causeIsDebugInt;
  assign T_6017 = T_6016 | causeIsDebugBreak;
  assign T_6018 = T_6017 | reg_debug;
  assign debugTVec = reg_debug ? 12'h808 : 12'h800;
  assign tvec = T_6018 ? {{20'd0}, debugTVec} : reg_mtvec;
  assign epc = T_5938 ? reg_dpc : reg_mepc;
  assign T_6038 = exception ? tvec : epc;
  assign T_6041 = reg_dcsr_step & T_5615;
  assign T_6042 = ~ io_status_fs;
  assign T_6044 = T_6042 == 2'h0;
  assign T_6045 = ~ io_status_xs;
  assign T_6047 = T_6045 == 2'h0;
  assign T_6048 = T_6044 | T_6047;
  assign T_6049 = ~ io_pc;
  assign T_6051 = T_6049 | 32'h3;
  assign T_6052 = ~ T_6051;
  assign T_6053 = read_mstatus >> reg_mstatus_prv;
  assign T_6054 = T_6053[0];
  assign T_6059 = causeIsDebugInt ? 2'h3 : 2'h1;
  assign T_6060 = reg_singleStepped ? 3'h4 : {{1'd0}, T_6059};
  assign GEN_47 = T_6018 ? 1'h1 : reg_debug;
  assign GEN_48 = T_6018 ? T_6052 : reg_dpc;
  assign GEN_49 = T_6018 ? T_6060 : reg_dcsr_cause;
  assign GEN_50 = T_6018 ? reg_mstatus_prv : reg_dcsr_prv;
  assign T_6062 = T_6018 == 1'h0;
  assign GEN_55 = {{1'd0}, reg_mstatus_spp};
  assign GEN_58 = T_6062 ? T_6052 : reg_mepc;
  assign GEN_59 = T_6062 ? cause : reg_mcause;
  assign GEN_60 = T_6062 ? io_badaddr : reg_mbadaddr;
  assign GEN_61 = T_6062 ? T_6054 : reg_mstatus_mpie;
  assign GEN_63 = T_6062 ? 1'h0 : reg_mstatus_mie;
  assign GEN_65 = exception ? GEN_47 : reg_debug;
  assign GEN_66 = exception ? GEN_48 : reg_dpc;
  assign GEN_67 = exception ? GEN_49 : reg_dcsr_cause;
  assign GEN_68 = exception ? GEN_50 : reg_dcsr_prv;
  assign GEN_73 = exception ? GEN_55 : {{1'd0}, reg_mstatus_spp};
  assign GEN_76 = exception ? GEN_58 : reg_mepc;
  assign GEN_77 = exception ? GEN_59 : reg_mcause;
  assign GEN_78 = exception ? GEN_60 : reg_mbadaddr;
  assign GEN_79 = exception ? GEN_61 : reg_mstatus_mpie;
  assign GEN_81 = exception ? GEN_63 : reg_mstatus_mie;
  assign GEN_88 = T_5938 ? 1'h0 : GEN_65;
  assign T_6088 = T_5938 == 1'h0;
  assign T_6090 = reg_mstatus_mpp[1];
  assign GEN_89 = T_6090 ? reg_mstatus_mpie : GEN_81;
  assign GEN_91 = T_6088 ? GEN_89 : GEN_81;
  assign GEN_93 = T_6088 ? 1'h0 : GEN_79;
  assign GEN_100 = insn_ret ? GEN_88 : GEN_65;
  assign GEN_101 = insn_ret ? GEN_91 : GEN_81;
  assign GEN_102 = insn_ret ? GEN_93 : GEN_79;
  assign T_6101 = {1'h0,io_csr_xcpt};
  assign GEN_441 = {{1'd0}, io_exception};
  assign T_6102 = GEN_441 + T_6101;
  assign T_6103 = T_6102[1:0];
  assign T_6104 = {1'h0,T_6103};
  assign GEN_442 = {{2'd0}, insn_ret};
  assign T_6105 = GEN_442 + T_6104;
  assign T_6106 = T_6105[2:0];
  assign T_6108 = T_6106 <= 3'h1;
  assign T_6109 = T_6108 | reset;
  assign T_6111 = T_6109 == 1'h0;
  assign T_6113 = T_5844 ? T_5774 : 32'h0;
  assign T_6115 = T_5846 ? T_5799 : 32'h0;
  assign GEN_12 = GEN_104;
  assign GEN_104 = reg_tdrselect_tdrindex ? reg_bp_1_address : reg_bp_0_address;
  assign T_6117 = T_5848 ? GEN_12 : 32'h0;
  assign T_6125 = T_5856 ? reg_cycle : 64'h0;
  assign T_6127 = T_5858 ? T_5578 : 64'h0;
  assign T_6137 = T_5868 ? 31'h40001100 : 31'h0;
  assign T_6139 = T_5870 ? read_mstatus : 32'h0;
  assign T_6141 = T_5872 ? reg_mtvec : 32'h0;
  assign T_6143 = T_5874 ? read_mip : 13'h0;
  assign T_6145 = T_5876 ? reg_mie : 32'h0;
  assign T_6147 = T_5878 ? reg_mideleg : 32'h0;
  assign T_6149 = T_5880 ? reg_medeleg : 32'h0;
  assign T_6151 = T_5882 ? reg_mscratch : 32'h0;
  assign T_6153 = T_5884 ? reg_mepc : 32'h0;
  assign T_6155 = T_5886 ? reg_mbadaddr : 32'h0;
  assign T_6157 = T_5888 ? reg_mcause : 32'h0;
  assign T_6159 = T_5890 ? io_prci_id : 1'h0;
  assign T_6161 = T_5892 ? T_5837 : 32'h0;
  assign T_6163 = T_5894 ? reg_dpc : 32'h0;
  assign T_6165 = T_5896 ? reg_dscratch : 32'h0;
  assign T_6167 = T_5898 ? T_5838 : 32'h0;
  assign T_6169 = T_5900 ? T_5839 : 32'h0;
  assign T_6177 = T_6113 | T_6115;
  assign T_6178 = T_6177 | T_6117;
  assign GEN_443 = {{32'd0}, T_6178};
  assign T_6182 = GEN_443 | T_6125;
  assign T_6183 = T_6182 | T_6127;
  assign GEN_444 = {{33'd0}, T_6137};
  assign T_6188 = T_6183 | GEN_444;
  assign GEN_445 = {{32'd0}, T_6139};
  assign T_6189 = T_6188 | GEN_445;
  assign GEN_446 = {{32'd0}, T_6141};
  assign T_6190 = T_6189 | GEN_446;
  assign GEN_447 = {{51'd0}, T_6143};
  assign T_6191 = T_6190 | GEN_447;
  assign GEN_448 = {{32'd0}, T_6145};
  assign T_6192 = T_6191 | GEN_448;
  assign GEN_449 = {{32'd0}, T_6147};
  assign T_6193 = T_6192 | GEN_449;
  assign GEN_450 = {{32'd0}, T_6149};
  assign T_6194 = T_6193 | GEN_450;
  assign GEN_451 = {{32'd0}, T_6151};
  assign T_6195 = T_6194 | GEN_451;
  assign GEN_452 = {{32'd0}, T_6153};
  assign T_6196 = T_6195 | GEN_452;
  assign GEN_453 = {{32'd0}, T_6155};
  assign T_6197 = T_6196 | GEN_453;
  assign GEN_454 = {{32'd0}, T_6157};
  assign T_6198 = T_6197 | GEN_454;
  assign GEN_455 = {{63'd0}, T_6159};
  assign T_6199 = T_6198 | GEN_455;
  assign GEN_456 = {{32'd0}, T_6161};
  assign T_6200 = T_6199 | GEN_456;
  assign GEN_457 = {{32'd0}, T_6163};
  assign T_6201 = T_6200 | GEN_457;
  assign GEN_458 = {{32'd0}, T_6165};
  assign T_6202 = T_6201 | GEN_458;
  assign GEN_459 = {{32'd0}, T_6167};
  assign T_6203 = T_6202 | GEN_459;
  assign GEN_460 = {{32'd0}, T_6169};
  assign T_6204 = T_6203 | GEN_460;
  assign T_6208 = T_6204;
  assign T_6209 = reg_fflags | io_fcsr_flags_bits;
  assign GEN_105 = io_fcsr_flags_valid ? T_6209 : reg_fflags;
  assign supportedModes_0 = 2'h3;
  assign T_6267_debug = T_6317;
  assign T_6267_prv = T_6316;
  assign T_6267_sd = T_6315;
  assign T_6267_zero3 = T_6314;
  assign T_6267_sd_rv32 = T_6313;
  assign T_6267_zero2 = T_6312;
  assign T_6267_vm = T_6311;
  assign T_6267_zero1 = T_6310;
  assign T_6267_mxr = T_6309;
  assign T_6267_pum = T_6308;
  assign T_6267_mprv = T_6307;
  assign T_6267_xs = T_6306;
  assign T_6267_fs = T_6305;
  assign T_6267_mpp = T_6304;
  assign T_6267_hpp = T_6303;
  assign T_6267_spp = T_6302;
  assign T_6267_mpie = T_6301;
  assign T_6267_hpie = T_6300;
  assign T_6267_spie = T_6299;
  assign T_6267_upie = T_6298;
  assign T_6267_mie = T_6297;
  assign T_6267_hie = T_6296;
  assign T_6267_sie = T_6295;
  assign T_6267_uie = T_6294;
  assign T_6293 = {{35'd0}, wdata};
  assign T_6294 = T_6293[0];
  assign T_6295 = T_6293[1];
  assign T_6296 = T_6293[2];
  assign T_6297 = T_6293[3];
  assign T_6298 = T_6293[4];
  assign T_6299 = T_6293[5];
  assign T_6300 = T_6293[6];
  assign T_6301 = T_6293[7];
  assign T_6302 = T_6293[8];
  assign T_6303 = T_6293[10:9];
  assign T_6304 = T_6293[12:11];
  assign T_6305 = T_6293[14:13];
  assign T_6306 = T_6293[16:15];
  assign T_6307 = T_6293[17];
  assign T_6308 = T_6293[18];
  assign T_6309 = T_6293[19];
  assign T_6310 = T_6293[23:20];
  assign T_6311 = T_6293[28:24];
  assign T_6312 = T_6293[30:29];
  assign T_6313 = T_6293[31];
  assign T_6314 = T_6293[62:32];
  assign T_6315 = T_6293[63];
  assign T_6316 = T_6293[65:64];
  assign T_6317 = T_6293[66];
  assign GEN_131 = T_5870 ? T_6267_mie : GEN_101;
  assign GEN_132 = T_5870 ? T_6267_mpie : GEN_102;
  assign T_6346_rocc = T_6372;
  assign T_6346_meip = T_6371;
  assign T_6346_heip = T_6370;
  assign T_6346_seip = T_6369;
  assign T_6346_ueip = T_6368;
  assign T_6346_mtip = T_6367;
  assign T_6346_htip = T_6366;
  assign T_6346_stip = T_6365;
  assign T_6346_utip = T_6364;
  assign T_6346_msip = T_6363;
  assign T_6346_hsip = T_6362;
  assign T_6346_ssip = T_6361;
  assign T_6346_usip = T_6360;
  assign T_6360 = wdata[0];
  assign T_6361 = wdata[1];
  assign T_6362 = wdata[2];
  assign T_6363 = wdata[3];
  assign T_6364 = wdata[4];
  assign T_6365 = wdata[5];
  assign T_6366 = wdata[6];
  assign T_6367 = wdata[7];
  assign T_6368 = wdata[8];
  assign T_6369 = wdata[9];
  assign T_6370 = wdata[10];
  assign T_6371 = wdata[11];
  assign T_6372 = wdata[12];
  assign GEN_461 = {{19'd0}, supported_interrupts};
  assign T_6373 = wdata & GEN_461;
  assign GEN_146 = T_5876 ? T_6373 : reg_mie;
  assign T_6374 = ~ wdata;
  assign T_6376 = T_6374 | 32'h3;
  assign T_6377 = ~ T_6376;
  assign GEN_147 = T_5884 ? T_6377 : GEN_76;
  assign GEN_148 = T_5882 ? wdata : reg_mscratch;
  assign T_6378 = wdata[31:2];
  assign GEN_462 = {{2'd0}, T_6378};
  assign T_6379 = GEN_462 << 2;
  assign GEN_149 = T_5872 ? T_6379 : reg_mtvec;
  assign T_6381 = wdata & 32'h8000001f;
  assign GEN_150 = T_5888 ? T_6381 : GEN_77;
  assign GEN_151 = T_5886 ? wdata : GEN_78;
  assign T_6419_xdebugver = T_6453;
  assign T_6419_ndreset = T_6452;
  assign T_6419_fullreset = T_6451;
  assign T_6419_hwbpcount = T_6450;
  assign T_6419_ebreakm = T_6449;
  assign T_6419_ebreakh = T_6448;
  assign T_6419_ebreaks = T_6447;
  assign T_6419_ebreaku = T_6372;
  assign T_6419_zero2 = T_6371;
  assign T_6419_stopcycle = T_6370;
  assign T_6419_stoptime = T_6369;
  assign T_6419_cause = T_6442;
  assign T_6419_debugint = T_6365;
  assign T_6419_zero1 = T_6364;
  assign T_6419_halt = T_6363;
  assign T_6419_step = T_6362;
  assign T_6419_prv = T_6437;
  assign T_6437 = wdata[1:0];
  assign T_6442 = wdata[8:6];
  assign T_6447 = wdata[13];
  assign T_6448 = wdata[14];
  assign T_6449 = wdata[15];
  assign T_6450 = wdata[27:16];
  assign T_6451 = wdata[28];
  assign T_6452 = wdata[29];
  assign T_6453 = wdata[31:30];
  assign GEN_169 = T_5892 ? T_6419_halt : reg_dcsr_halt;
  assign GEN_170 = T_5892 ? T_6419_step : reg_dcsr_step;
  assign GEN_171 = T_5892 ? T_6419_ebreakm : reg_dcsr_ebreakm;
  assign GEN_172 = T_5894 ? T_6377 : GEN_66;
  assign GEN_173 = T_5896 ? wdata : reg_dscratch;
  assign T_6466_tdrmode = T_6472;
  assign T_6466_reserved = T_6471;
  assign T_6466_tdrindex = T_6360;
  assign T_6471 = wdata[30:1];
  assign T_6472 = wdata[31];
  assign GEN_174 = T_5844 ? T_6466_tdrindex : reg_tdrselect_tdrindex;
  assign T_6473 = reg_tdrselect_tdrmode | reg_debug;
  assign T_6500_tdrtype = T_6524;
  assign T_6500_bpamaskmax = T_6523;
  assign T_6500_reserved = T_6522;
  assign T_6500_bpaction = T_6521;
  assign T_6500_bpmatch = T_6520;
  assign T_6500_m = T_6366;
  assign T_6500_h = T_6365;
  assign T_6500_s = T_6364;
  assign T_6500_u = T_6363;
  assign T_6500_r = T_6362;
  assign T_6500_w = T_6361;
  assign T_6500_x = T_6360;
  assign T_6520 = wdata[10:7];
  assign T_6521 = wdata[18:11];
  assign T_6522 = wdata[22:19];
  assign T_6523 = wdata[27:23];
  assign T_6524 = wdata[31:28];
  assign GEN_13 = T_6500_tdrtype;
  assign GEN_14 = T_6500_bpamaskmax;
  assign GEN_15 = T_6500_reserved;
  assign GEN_16 = T_6500_bpaction;
  assign GEN_17 = T_6500_bpmatch;
  assign GEN_183 = 1'h0 == reg_tdrselect_tdrindex ? GEN_17 : reg_bp_0_control_bpmatch;
  assign GEN_184 = reg_tdrselect_tdrindex ? GEN_17 : reg_bp_1_control_bpmatch;
  assign GEN_18 = T_6500_m;
  assign GEN_19 = T_6500_h;
  assign GEN_20 = T_6500_s;
  assign GEN_21 = T_6500_u;
  assign GEN_22 = T_6500_r;
  assign GEN_193 = 1'h0 == reg_tdrselect_tdrindex ? GEN_22 : reg_bp_0_control_r;
  assign GEN_194 = reg_tdrselect_tdrindex ? GEN_22 : reg_bp_1_control_r;
  assign GEN_23 = T_6500_w;
  assign GEN_195 = 1'h0 == reg_tdrselect_tdrindex ? GEN_23 : reg_bp_0_control_w;
  assign GEN_196 = reg_tdrselect_tdrindex ? GEN_23 : reg_bp_1_control_w;
  assign GEN_24 = T_6500_x;
  assign GEN_197 = 1'h0 == reg_tdrselect_tdrindex ? GEN_24 : reg_bp_0_control_x;
  assign GEN_198 = reg_tdrselect_tdrindex ? GEN_24 : reg_bp_1_control_x;
  assign T_6554 = T_6500_bpmatch & 4'h2;
  assign GEN_25 = T_6554;
  assign GEN_199 = 1'h0 == reg_tdrselect_tdrindex ? GEN_25 : GEN_183;
  assign GEN_200 = reg_tdrselect_tdrindex ? GEN_25 : GEN_184;
  assign GEN_226 = T_5846 ? GEN_199 : reg_bp_0_control_bpmatch;
  assign GEN_227 = T_5846 ? GEN_200 : reg_bp_1_control_bpmatch;
  assign GEN_241 = T_5846 ? GEN_193 : reg_bp_0_control_r;
  assign GEN_242 = T_5846 ? GEN_194 : reg_bp_1_control_r;
  assign GEN_244 = T_5846 ? GEN_195 : reg_bp_0_control_w;
  assign GEN_245 = T_5846 ? GEN_196 : reg_bp_1_control_w;
  assign GEN_247 = T_5846 ? GEN_197 : reg_bp_0_control_x;
  assign GEN_248 = T_5846 ? GEN_198 : reg_bp_1_control_x;
  assign GEN_26 = wdata;
  assign GEN_250 = 1'h0 == reg_tdrselect_tdrindex ? GEN_26 : reg_bp_0_address;
  assign GEN_251 = reg_tdrselect_tdrindex ? GEN_26 : reg_bp_1_address;
  assign GEN_253 = T_5848 ? GEN_250 : reg_bp_0_address;
  assign GEN_254 = T_5848 ? GEN_251 : reg_bp_1_address;
  assign GEN_280 = T_6473 ? GEN_226 : reg_bp_0_control_bpmatch;
  assign GEN_281 = T_6473 ? GEN_227 : reg_bp_1_control_bpmatch;
  assign GEN_295 = T_6473 ? GEN_241 : reg_bp_0_control_r;
  assign GEN_296 = T_6473 ? GEN_242 : reg_bp_1_control_r;
  assign GEN_298 = T_6473 ? GEN_244 : reg_bp_0_control_w;
  assign GEN_299 = T_6473 ? GEN_245 : reg_bp_1_control_w;
  assign GEN_301 = T_6473 ? GEN_247 : reg_bp_0_control_x;
  assign GEN_302 = T_6473 ? GEN_248 : reg_bp_1_control_x;
  assign GEN_305 = T_6473 ? GEN_253 : reg_bp_0_address;
  assign GEN_306 = T_6473 ? GEN_254 : reg_bp_1_address;
  assign GEN_332 = wen ? GEN_131 : GEN_101;
  assign GEN_333 = wen ? GEN_132 : GEN_102;
  assign GEN_347 = wen ? GEN_146 : reg_mie;
  assign GEN_348 = wen ? GEN_147 : GEN_76;
  assign GEN_349 = wen ? GEN_148 : reg_mscratch;
  assign GEN_350 = wen ? GEN_149 : reg_mtvec;
  assign GEN_351 = wen ? GEN_150 : GEN_77;
  assign GEN_352 = wen ? GEN_151 : GEN_78;
  assign GEN_370 = wen ? GEN_169 : reg_dcsr_halt;
  assign GEN_371 = wen ? GEN_170 : reg_dcsr_step;
  assign GEN_372 = wen ? GEN_171 : reg_dcsr_ebreakm;
  assign GEN_373 = wen ? GEN_172 : GEN_66;
  assign GEN_374 = wen ? GEN_173 : reg_dscratch;
  assign GEN_378 = wen ? GEN_174 : reg_tdrselect_tdrindex;
  assign GEN_404 = wen ? GEN_280 : reg_bp_0_control_bpmatch;
  assign GEN_405 = wen ? GEN_281 : reg_bp_1_control_bpmatch;
  assign GEN_419 = wen ? GEN_295 : reg_bp_0_control_r;
  assign GEN_420 = wen ? GEN_296 : reg_bp_1_control_r;
  assign GEN_422 = wen ? GEN_298 : reg_bp_0_control_w;
  assign GEN_423 = wen ? GEN_299 : reg_bp_1_control_w;
  assign GEN_425 = wen ? GEN_301 : reg_bp_0_control_x;
  assign GEN_426 = wen ? GEN_302 : reg_bp_1_control_x;
  assign GEN_429 = wen ? GEN_305 : reg_bp_0_address;
  assign GEN_430 = wen ? GEN_306 : reg_bp_1_address;
  assign GEN_431 = reset ? 1'h0 : GEN_419;
  assign GEN_432 = reset ? 1'h0 : GEN_422;
  assign GEN_433 = reset ? 1'h0 : GEN_425;
  assign GEN_434 = reset ? 1'h0 : GEN_420;
  assign GEN_435 = reset ? 1'h0 : GEN_423;
  assign GEN_436 = reset ? 1'h0 : GEN_426;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_152 = {1{$random}};
  reg_mstatus_debug = GEN_152[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_153 = {1{$random}};
  reg_mstatus_prv = GEN_153[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_154 = {1{$random}};
  reg_mstatus_sd = GEN_154[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_155 = {1{$random}};
  reg_mstatus_zero3 = GEN_155[30:0];
  `endif
  `ifdef RANDOMIZE
  GEN_156 = {1{$random}};
  reg_mstatus_sd_rv32 = GEN_156[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_157 = {1{$random}};
  reg_mstatus_zero2 = GEN_157[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_158 = {1{$random}};
  reg_mstatus_vm = GEN_158[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_159 = {1{$random}};
  reg_mstatus_zero1 = GEN_159[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_160 = {1{$random}};
  reg_mstatus_mxr = GEN_160[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_161 = {1{$random}};
  reg_mstatus_pum = GEN_161[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_162 = {1{$random}};
  reg_mstatus_mprv = GEN_162[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_163 = {1{$random}};
  reg_mstatus_xs = GEN_163[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_164 = {1{$random}};
  reg_mstatus_fs = GEN_164[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_165 = {1{$random}};
  reg_mstatus_mpp = GEN_165[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_166 = {1{$random}};
  reg_mstatus_hpp = GEN_166[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_167 = {1{$random}};
  reg_mstatus_spp = GEN_167[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_168 = {1{$random}};
  reg_mstatus_mpie = GEN_168[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_175 = {1{$random}};
  reg_mstatus_hpie = GEN_175[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_176 = {1{$random}};
  reg_mstatus_spie = GEN_176[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_177 = {1{$random}};
  reg_mstatus_upie = GEN_177[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_178 = {1{$random}};
  reg_mstatus_mie = GEN_178[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_179 = {1{$random}};
  reg_mstatus_hie = GEN_179[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_180 = {1{$random}};
  reg_mstatus_sie = GEN_180[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_181 = {1{$random}};
  reg_mstatus_uie = GEN_181[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_182 = {1{$random}};
  reg_dcsr_xdebugver = GEN_182[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_185 = {1{$random}};
  reg_dcsr_ndreset = GEN_185[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_186 = {1{$random}};
  reg_dcsr_fullreset = GEN_186[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_187 = {1{$random}};
  reg_dcsr_hwbpcount = GEN_187[11:0];
  `endif
  `ifdef RANDOMIZE
  GEN_188 = {1{$random}};
  reg_dcsr_ebreakm = GEN_188[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_189 = {1{$random}};
  reg_dcsr_ebreakh = GEN_189[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_190 = {1{$random}};
  reg_dcsr_ebreaks = GEN_190[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_191 = {1{$random}};
  reg_dcsr_ebreaku = GEN_191[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_192 = {1{$random}};
  reg_dcsr_zero2 = GEN_192[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_201 = {1{$random}};
  reg_dcsr_stopcycle = GEN_201[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_202 = {1{$random}};
  reg_dcsr_stoptime = GEN_202[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_203 = {1{$random}};
  reg_dcsr_cause = GEN_203[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_204 = {1{$random}};
  reg_dcsr_debugint = GEN_204[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_205 = {1{$random}};
  reg_dcsr_zero1 = GEN_205[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_206 = {1{$random}};
  reg_dcsr_halt = GEN_206[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_207 = {1{$random}};
  reg_dcsr_step = GEN_207[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_208 = {1{$random}};
  reg_dcsr_prv = GEN_208[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_209 = {1{$random}};
  reg_debug = GEN_209[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_210 = {1{$random}};
  reg_dpc = GEN_210[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_211 = {1{$random}};
  reg_dscratch = GEN_211[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_212 = {1{$random}};
  reg_singleStepped = GEN_212[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_213 = {1{$random}};
  reg_tdrselect_tdrmode = GEN_213[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_214 = {1{$random}};
  reg_tdrselect_reserved = GEN_214[29:0];
  `endif
  `ifdef RANDOMIZE
  GEN_215 = {1{$random}};
  reg_tdrselect_tdrindex = GEN_215[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_216 = {1{$random}};
  reg_bp_0_control_tdrtype = GEN_216[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_217 = {1{$random}};
  reg_bp_0_control_bpamaskmax = GEN_217[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_218 = {1{$random}};
  reg_bp_0_control_reserved = GEN_218[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_219 = {1{$random}};
  reg_bp_0_control_bpaction = GEN_219[7:0];
  `endif
  `ifdef RANDOMIZE
  GEN_220 = {1{$random}};
  reg_bp_0_control_bpmatch = GEN_220[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_221 = {1{$random}};
  reg_bp_0_control_m = GEN_221[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_222 = {1{$random}};
  reg_bp_0_control_h = GEN_222[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_223 = {1{$random}};
  reg_bp_0_control_s = GEN_223[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_224 = {1{$random}};
  reg_bp_0_control_u = GEN_224[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_225 = {1{$random}};
  reg_bp_0_control_r = GEN_225[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_228 = {1{$random}};
  reg_bp_0_control_w = GEN_228[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_229 = {1{$random}};
  reg_bp_0_control_x = GEN_229[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_230 = {1{$random}};
  reg_bp_0_address = GEN_230[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_231 = {1{$random}};
  reg_bp_1_control_tdrtype = GEN_231[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_232 = {1{$random}};
  reg_bp_1_control_bpamaskmax = GEN_232[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_233 = {1{$random}};
  reg_bp_1_control_reserved = GEN_233[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_234 = {1{$random}};
  reg_bp_1_control_bpaction = GEN_234[7:0];
  `endif
  `ifdef RANDOMIZE
  GEN_235 = {1{$random}};
  reg_bp_1_control_bpmatch = GEN_235[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_236 = {1{$random}};
  reg_bp_1_control_m = GEN_236[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_237 = {1{$random}};
  reg_bp_1_control_h = GEN_237[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_238 = {1{$random}};
  reg_bp_1_control_s = GEN_238[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_239 = {1{$random}};
  reg_bp_1_control_u = GEN_239[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_240 = {1{$random}};
  reg_bp_1_control_r = GEN_240[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_243 = {1{$random}};
  reg_bp_1_control_w = GEN_243[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_246 = {1{$random}};
  reg_bp_1_control_x = GEN_246[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_249 = {1{$random}};
  reg_bp_1_address = GEN_249[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_252 = {1{$random}};
  reg_mie = GEN_252[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_255 = {1{$random}};
  reg_mideleg = GEN_255[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_256 = {1{$random}};
  reg_medeleg = GEN_256[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_257 = {1{$random}};
  reg_mip_rocc = GEN_257[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_258 = {1{$random}};
  reg_mip_meip = GEN_258[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_259 = {1{$random}};
  reg_mip_heip = GEN_259[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_260 = {1{$random}};
  reg_mip_seip = GEN_260[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_261 = {1{$random}};
  reg_mip_ueip = GEN_261[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_262 = {1{$random}};
  reg_mip_mtip = GEN_262[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_263 = {1{$random}};
  reg_mip_htip = GEN_263[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_264 = {1{$random}};
  reg_mip_stip = GEN_264[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_265 = {1{$random}};
  reg_mip_utip = GEN_265[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_266 = {1{$random}};
  reg_mip_msip = GEN_266[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_267 = {1{$random}};
  reg_mip_hsip = GEN_267[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_268 = {1{$random}};
  reg_mip_ssip = GEN_268[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_269 = {1{$random}};
  reg_mip_usip = GEN_269[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_270 = {1{$random}};
  reg_mepc = GEN_270[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_271 = {1{$random}};
  reg_mcause = GEN_271[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_272 = {1{$random}};
  reg_mbadaddr = GEN_272[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_273 = {1{$random}};
  reg_mscratch = GEN_273[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_274 = {1{$random}};
  reg_mtvec = GEN_274[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_275 = {1{$random}};
  reg_sepc = GEN_275[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_276 = {1{$random}};
  reg_scause = GEN_276[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_277 = {1{$random}};
  reg_sbadaddr = GEN_277[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_278 = {1{$random}};
  reg_sscratch = GEN_278[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_279 = {1{$random}};
  reg_stvec = GEN_279[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_282 = {1{$random}};
  reg_sptbr_asid = GEN_282[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_283 = {1{$random}};
  reg_sptbr_ppn = GEN_283[21:0];
  `endif
  `ifdef RANDOMIZE
  GEN_284 = {1{$random}};
  reg_wfi = GEN_284[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_285 = {1{$random}};
  reg_fflags = GEN_285[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_286 = {1{$random}};
  reg_frm = GEN_286[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_287 = {1{$random}};
  T_5570 = GEN_287[5:0];
  `endif
  `ifdef RANDOMIZE
  GEN_288 = {2{$random}};
  T_5573 = GEN_288[57:0];
  `endif
  `ifdef RANDOMIZE
  GEN_289 = {1{$random}};
  T_5581 = GEN_289[5:0];
  `endif
  `ifdef RANDOMIZE
  GEN_290 = {2{$random}};
  T_5584 = GEN_290[57:0];
  `endif
  `ifdef RANDOMIZE
  GEN_291 = {1{$random}};
  GEN_51 = GEN_291[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_292 = {1{$random}};
  GEN_52 = GEN_292[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_293 = {1{$random}};
  GEN_53 = GEN_293[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_294 = {1{$random}};
  GEN_54 = GEN_294[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_297 = {1{$random}};
  GEN_56 = GEN_297[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_300 = {1{$random}};
  GEN_57 = GEN_300[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_303 = {1{$random}};
  GEN_62 = GEN_303[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_304 = {1{$random}};
  GEN_64 = GEN_304[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_307 = {1{$random}};
  GEN_69 = GEN_307[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_308 = {1{$random}};
  GEN_70 = GEN_308[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_309 = {1{$random}};
  GEN_71 = GEN_309[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_310 = {1{$random}};
  GEN_72 = GEN_310[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_311 = {1{$random}};
  GEN_74 = GEN_311[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_312 = {1{$random}};
  GEN_75 = GEN_312[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_313 = {1{$random}};
  GEN_80 = GEN_313[30:0];
  `endif
  `ifdef RANDOMIZE
  GEN_314 = {1{$random}};
  GEN_82 = GEN_314[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_315 = {1{$random}};
  GEN_83 = GEN_315[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_316 = {1{$random}};
  GEN_84 = GEN_316[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_317 = {1{$random}};
  GEN_85 = GEN_317[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_318 = {1{$random}};
  GEN_86 = GEN_318[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_319 = {1{$random}};
  GEN_87 = GEN_319[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_320 = {1{$random}};
  GEN_90 = GEN_320[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_321 = {1{$random}};
  GEN_92 = GEN_321[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_322 = {1{$random}};
  GEN_94 = GEN_322[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_323 = {1{$random}};
  GEN_95 = GEN_323[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_324 = {1{$random}};
  GEN_96 = GEN_324[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_325 = {1{$random}};
  GEN_97 = GEN_325[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_326 = {1{$random}};
  GEN_98 = GEN_326[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_327 = {1{$random}};
  GEN_99 = GEN_327[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_328 = {1{$random}};
  GEN_103 = GEN_328[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_329 = {1{$random}};
  GEN_106 = GEN_329[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_330 = {1{$random}};
  GEN_107 = GEN_330[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_331 = {1{$random}};
  GEN_108 = GEN_331[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_334 = {1{$random}};
  GEN_109 = GEN_334[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_335 = {1{$random}};
  GEN_110 = GEN_335[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_336 = {1{$random}};
  GEN_111 = GEN_336[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_337 = {1{$random}};
  GEN_112 = GEN_337[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_338 = {1{$random}};
  GEN_113 = GEN_338[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_339 = {1{$random}};
  GEN_114 = GEN_339[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_340 = {1{$random}};
  GEN_115 = GEN_340[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_341 = {1{$random}};
  GEN_116 = GEN_341[8:0];
  `endif
  `ifdef RANDOMIZE
  GEN_342 = {1{$random}};
  GEN_117 = GEN_342[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_343 = {1{$random}};
  GEN_118 = GEN_343[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_344 = {1{$random}};
  GEN_119 = GEN_344[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_345 = {1{$random}};
  GEN_120 = GEN_345[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_346 = {1{$random}};
  GEN_121 = GEN_346[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_353 = {1{$random}};
  GEN_122 = GEN_353[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_354 = {1{$random}};
  GEN_123 = GEN_354[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_355 = {1{$random}};
  GEN_124 = GEN_355[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_356 = {1{$random}};
  GEN_125 = GEN_356[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_357 = {1{$random}};
  GEN_126 = GEN_357[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_358 = {1{$random}};
  GEN_127 = GEN_358[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_359 = {1{$random}};
  GEN_128 = GEN_359[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_360 = {1{$random}};
  GEN_129 = GEN_360[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_361 = {1{$random}};
  GEN_130 = GEN_361[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_362 = {1{$random}};
  GEN_133 = GEN_362[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_363 = {1{$random}};
  GEN_134 = GEN_363[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_364 = {1{$random}};
  GEN_135 = GEN_364[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_365 = {1{$random}};
  GEN_136 = GEN_365[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_366 = {1{$random}};
  GEN_137 = GEN_366[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_367 = {1{$random}};
  GEN_138 = GEN_367[3:0];
  `endif
  `ifdef RANDOMIZE
  GEN_368 = {2{$random}};
  GEN_139 = GEN_368[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_369 = {1{$random}};
  GEN_140 = GEN_369[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_375 = {1{$random}};
  GEN_141 = GEN_375[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_376 = {3{$random}};
  GEN_142 = GEN_376[64:0];
  `endif
  `ifdef RANDOMIZE
  GEN_377 = {1{$random}};
  GEN_143 = GEN_377[4:0];
  `endif
  `ifdef RANDOMIZE
  GEN_379 = {1{$random}};
  GEN_144 = GEN_379[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_380 = {1{$random}};
  GEN_145 = GEN_380[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      reg_mstatus_debug <= reset_mstatus_debug;
    end
    if(reset) begin
      reg_mstatus_prv <= reset_mstatus_prv;
    end else begin
      reg_mstatus_prv <= 2'h3;
    end
    if(reset) begin
      reg_mstatus_sd <= reset_mstatus_sd;
    end
    if(reset) begin
      reg_mstatus_zero3 <= reset_mstatus_zero3;
    end
    if(reset) begin
      reg_mstatus_sd_rv32 <= reset_mstatus_sd_rv32;
    end
    if(reset) begin
      reg_mstatus_zero2 <= reset_mstatus_zero2;
    end
    if(reset) begin
      reg_mstatus_vm <= reset_mstatus_vm;
    end
    if(reset) begin
      reg_mstatus_zero1 <= reset_mstatus_zero1;
    end
    if(reset) begin
      reg_mstatus_mxr <= reset_mstatus_mxr;
    end
    if(reset) begin
      reg_mstatus_pum <= reset_mstatus_pum;
    end
    if(reset) begin
      reg_mstatus_mprv <= reset_mstatus_mprv;
    end else begin
      reg_mstatus_mprv <= 1'h0;
    end
    if(reset) begin
      reg_mstatus_xs <= reset_mstatus_xs;
    end
    if(reset) begin
      reg_mstatus_fs <= reset_mstatus_fs;
    end
    if(reset) begin
      reg_mstatus_mpp <= reset_mstatus_mpp;
    end else begin
      reg_mstatus_mpp <= 2'h3;
    end
    if(reset) begin
      reg_mstatus_hpp <= reset_mstatus_hpp;
    end
    if(reset) begin
      reg_mstatus_spp <= reset_mstatus_spp;
    end else begin
      reg_mstatus_spp <= GEN_73[0];
    end
    if(reset) begin
      reg_mstatus_mpie <= reset_mstatus_mpie;
    end else begin
      if(wen) begin
        if(T_5870) begin
          reg_mstatus_mpie <= T_6267_mpie;
        end else begin
          if(insn_ret) begin
            if(T_6088) begin
              reg_mstatus_mpie <= 1'h0;
            end else begin
              if(exception) begin
                if(T_6062) begin
                  reg_mstatus_mpie <= T_6054;
                end
              end
            end
          end else begin
            if(exception) begin
              if(T_6062) begin
                reg_mstatus_mpie <= T_6054;
              end
            end
          end
        end
      end else begin
        if(insn_ret) begin
          if(T_6088) begin
            reg_mstatus_mpie <= 1'h0;
          end else begin
            if(exception) begin
              if(T_6062) begin
                reg_mstatus_mpie <= T_6054;
              end
            end
          end
        end else begin
          if(exception) begin
            if(T_6062) begin
              reg_mstatus_mpie <= T_6054;
            end
          end
        end
      end
    end
    if(reset) begin
      reg_mstatus_hpie <= reset_mstatus_hpie;
    end
    if(reset) begin
      reg_mstatus_spie <= reset_mstatus_spie;
    end
    if(reset) begin
      reg_mstatus_upie <= reset_mstatus_upie;
    end
    if(reset) begin
      reg_mstatus_mie <= reset_mstatus_mie;
    end else begin
      if(wen) begin
        if(T_5870) begin
          reg_mstatus_mie <= T_6267_mie;
        end else begin
          if(insn_ret) begin
            if(T_6088) begin
              if(T_6090) begin
                reg_mstatus_mie <= reg_mstatus_mpie;
              end else begin
                if(exception) begin
                  if(T_6062) begin
                    reg_mstatus_mie <= 1'h0;
                  end
                end
              end
            end else begin
              if(exception) begin
                if(T_6062) begin
                  reg_mstatus_mie <= 1'h0;
                end
              end
            end
          end else begin
            if(exception) begin
              if(T_6062) begin
                reg_mstatus_mie <= 1'h0;
              end
            end
          end
        end
      end else begin
        if(insn_ret) begin
          if(T_6088) begin
            if(T_6090) begin
              reg_mstatus_mie <= reg_mstatus_mpie;
            end else begin
              if(exception) begin
                if(T_6062) begin
                  reg_mstatus_mie <= 1'h0;
                end
              end
            end
          end else begin
            reg_mstatus_mie <= GEN_81;
          end
        end else begin
          reg_mstatus_mie <= GEN_81;
        end
      end
    end
    if(reset) begin
      reg_mstatus_hie <= reset_mstatus_hie;
    end
    if(reset) begin
      reg_mstatus_sie <= reset_mstatus_sie;
    end
    if(reset) begin
      reg_mstatus_uie <= reset_mstatus_uie;
    end
    if(reset) begin
      reg_dcsr_xdebugver <= reset_dcsr_xdebugver;
    end
    if(reset) begin
      reg_dcsr_ndreset <= reset_dcsr_ndreset;
    end
    if(reset) begin
      reg_dcsr_fullreset <= reset_dcsr_fullreset;
    end
    if(reset) begin
      reg_dcsr_hwbpcount <= reset_dcsr_hwbpcount;
    end else begin
      reg_dcsr_hwbpcount <= 12'h2;
    end
    if(reset) begin
      reg_dcsr_ebreakm <= reset_dcsr_ebreakm;
    end else begin
      if(wen) begin
        if(T_5892) begin
          reg_dcsr_ebreakm <= T_6419_ebreakm;
        end
      end
    end
    if(reset) begin
      reg_dcsr_ebreakh <= reset_dcsr_ebreakh;
    end
    if(reset) begin
      reg_dcsr_ebreaks <= reset_dcsr_ebreaks;
    end
    if(reset) begin
      reg_dcsr_ebreaku <= reset_dcsr_ebreaku;
    end
    if(reset) begin
      reg_dcsr_zero2 <= reset_dcsr_zero2;
    end
    if(reset) begin
      reg_dcsr_stopcycle <= reset_dcsr_stopcycle;
    end
    if(reset) begin
      reg_dcsr_stoptime <= reset_dcsr_stoptime;
    end
    if(reset) begin
      reg_dcsr_cause <= reset_dcsr_cause;
    end else begin
      if(exception) begin
        if(T_6018) begin
          if(reg_singleStepped) begin
            reg_dcsr_cause <= 3'h4;
          end else begin
            reg_dcsr_cause <= {{1'd0}, T_6059};
          end
        end
      end
    end
    if(reset) begin
      reg_dcsr_debugint <= reset_dcsr_debugint;
    end else begin
      reg_dcsr_debugint <= io_prci_interrupts_debug;
    end
    if(reset) begin
      reg_dcsr_zero1 <= reset_dcsr_zero1;
    end
    if(reset) begin
      reg_dcsr_halt <= reset_dcsr_halt;
    end else begin
      if(wen) begin
        if(T_5892) begin
          reg_dcsr_halt <= T_6419_halt;
        end
      end
    end
    if(reset) begin
      reg_dcsr_step <= reset_dcsr_step;
    end else begin
      if(wen) begin
        if(T_5892) begin
          reg_dcsr_step <= T_6419_step;
        end
      end
    end
    if(reset) begin
      reg_dcsr_prv <= reset_dcsr_prv;
    end else begin
      if(exception) begin
        if(T_6018) begin
          reg_dcsr_prv <= reg_mstatus_prv;
        end
      end
    end
    if(reset) begin
      reg_debug <= 1'h0;
    end else begin
      if(insn_ret) begin
        if(T_5938) begin
          reg_debug <= 1'h0;
        end else begin
          if(exception) begin
            if(T_6018) begin
              reg_debug <= 1'h1;
            end
          end
        end
      end else begin
        if(exception) begin
          if(T_6018) begin
            reg_debug <= 1'h1;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5894) begin
          reg_dpc <= T_6377;
        end else begin
          if(exception) begin
            if(T_6018) begin
              reg_dpc <= T_6052;
            end
          end
        end
      end else begin
        if(exception) begin
          if(T_6018) begin
            reg_dpc <= T_6052;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5896) begin
          reg_dscratch <= wdata;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_5349) begin
        reg_singleStepped <= 1'h0;
      end else begin
        if(T_5346) begin
          reg_singleStepped <= 1'h1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      reg_tdrselect_tdrmode <= 1'h1;
    end
    if(1'h0) begin
    end else begin
      reg_tdrselect_reserved <= 30'h0;
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5844) begin
          reg_tdrselect_tdrindex <= T_6466_tdrindex;
        end
      end
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_tdrtype <= 4'h1;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_bpamaskmax <= 5'h4;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_reserved <= 4'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_bpaction <= 8'h0;
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_6473) begin
          if(T_5846) begin
            if(1'h0 == reg_tdrselect_tdrindex) begin
              reg_bp_0_control_bpmatch <= GEN_25;
            end else begin
              if(1'h0 == reg_tdrselect_tdrindex) begin
                reg_bp_0_control_bpmatch <= GEN_17;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_m <= 1'h1;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_h <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_s <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_0_control_u <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_0_control_r <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(1'h0 == reg_tdrselect_tdrindex) begin
                reg_bp_0_control_r <= GEN_22;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_0_control_w <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(1'h0 == reg_tdrselect_tdrindex) begin
                reg_bp_0_control_w <= GEN_23;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_0_control_x <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(1'h0 == reg_tdrselect_tdrindex) begin
                reg_bp_0_control_x <= GEN_24;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_6473) begin
          if(T_5848) begin
            if(1'h0 == reg_tdrselect_tdrindex) begin
              reg_bp_0_address <= GEN_26;
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_tdrtype <= 4'h1;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_bpamaskmax <= 5'h4;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_reserved <= 4'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_bpaction <= 8'h0;
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_6473) begin
          if(T_5846) begin
            if(reg_tdrselect_tdrindex) begin
              reg_bp_1_control_bpmatch <= GEN_25;
            end else begin
              if(reg_tdrselect_tdrindex) begin
                reg_bp_1_control_bpmatch <= GEN_17;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_m <= 1'h1;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_h <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_s <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      reg_bp_1_control_u <= 1'h0;
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_1_control_r <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(reg_tdrselect_tdrindex) begin
                reg_bp_1_control_r <= GEN_22;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_1_control_w <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(reg_tdrselect_tdrindex) begin
                reg_bp_1_control_w <= GEN_23;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(reset) begin
        reg_bp_1_control_x <= 1'h0;
      end else begin
        if(wen) begin
          if(T_6473) begin
            if(T_5846) begin
              if(reg_tdrselect_tdrindex) begin
                reg_bp_1_control_x <= GEN_24;
              end
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_6473) begin
          if(T_5848) begin
            if(reg_tdrselect_tdrindex) begin
              reg_bp_1_address <= GEN_26;
            end
          end
        end
      end
    end
    if(reset) begin
      reg_mie <= 32'h0;
    end else begin
      if(wen) begin
        if(T_5876) begin
          reg_mie <= T_6373;
        end
      end
    end
    if(reset) begin
      reg_mideleg <= 32'h0;
    end
    if(reset) begin
      reg_medeleg <= 32'h0;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      reg_mip_meip <= io_prci_interrupts_meip;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      reg_mip_seip <= io_prci_interrupts_seip;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      reg_mip_mtip <= io_prci_interrupts_mtip;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      reg_mip_msip <= io_prci_interrupts_msip;
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5884) begin
          reg_mepc <= T_6377;
        end else begin
          if(exception) begin
            if(T_6062) begin
              reg_mepc <= T_6052;
            end
          end
        end
      end else begin
        if(exception) begin
          if(T_6062) begin
            reg_mepc <= T_6052;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5888) begin
          reg_mcause <= T_6381;
        end else begin
          if(exception) begin
            if(T_6062) begin
              if(T_5997) begin
                reg_mcause <= io_cause;
              end else begin
                reg_mcause <= {{28'd0}, T_6004};
              end
            end
          end
        end
      end else begin
        if(exception) begin
          if(T_6062) begin
            if(T_5997) begin
              reg_mcause <= io_cause;
            end else begin
              reg_mcause <= {{28'd0}, T_6004};
            end
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5886) begin
          reg_mbadaddr <= wdata;
        end else begin
          if(exception) begin
            if(T_6062) begin
              reg_mbadaddr <= io_badaddr;
            end
          end
        end
      end else begin
        if(exception) begin
          if(T_6062) begin
            reg_mbadaddr <= io_badaddr;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(wen) begin
        if(T_5882) begin
          reg_mscratch <= wdata;
        end
      end
    end
    if(reset) begin
      reg_mtvec <= 32'h1010;
    end else begin
      if(wen) begin
        if(T_5872) begin
          reg_mtvec <= T_6379;
        end
      end
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
      reg_sptbr_asid <= 7'h0;
    end
    if(1'h0) begin
    end
    if(reset) begin
      reg_wfi <= 1'h0;
    end else begin
      if(T_5994) begin
        reg_wfi <= 1'h0;
      end else begin
        if(insn_wfi) begin
          reg_wfi <= 1'h1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(io_fcsr_flags_valid) begin
        reg_fflags <= T_6209;
      end
    end
    if(1'h0) begin
    end
    if(reset) begin
      T_5570 <= 6'h0;
    end else begin
      T_5570 <= T_5571[5:0];
    end
    if(reset) begin
      T_5573 <= 58'h0;
    end else begin
      if(T_5574) begin
        T_5573 <= T_5577;
      end
    end
    if(reset) begin
      T_5581 <= 6'h0;
    end else begin
      T_5581 <= T_5582[5:0];
    end
    if(reset) begin
      T_5584 <= 58'h0;
    end else begin
      if(T_5585) begin
        T_5584 <= T_5588;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at csr.scala:185 assert(!io.singleStep || io.retire <= UInt(1))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
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
        if (T_5366) begin
          $fwrite(32'h80000002,"Assertion failed\n    at csr.scala:186 assert(!reg_singleStepped || io.retire === UInt(0))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_5366) begin
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
        if (T_6111) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at csr.scala:442 assert(PopCount(insn_ret :: io.exception :: io.csr_xcpt :: Nil) <= 1, ---these conditions must be mutually exclusive---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_6111) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
