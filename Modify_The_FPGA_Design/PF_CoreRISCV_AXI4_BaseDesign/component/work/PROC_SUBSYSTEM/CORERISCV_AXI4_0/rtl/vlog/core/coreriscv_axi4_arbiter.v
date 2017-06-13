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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ARBITER(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [6:0] io_in_0_bits_idx,
  input   io_in_0_bits_way_en,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [6:0] io_in_1_bits_idx,
  input   io_in_1_bits_way_en,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [6:0] io_in_2_bits_idx,
  input   io_in_2_bits_way_en,
  input   io_out_ready,
  output  io_out_valid,
  output [6:0] io_out_bits_idx,
  output  io_out_bits_way_en,
  output [1:0] io_chosen
);
  wire [1:0] GEN_0;
  wire [6:0] GEN_1;
  wire  GEN_2;
  wire [1:0] GEN_3;
  wire [6:0] GEN_4;
  wire  GEN_5;
  wire  T_638;
  wire  T_640;
  wire  T_642;
  wire  T_644;
  wire  T_645;
  wire  T_647;
  wire  T_648;
  assign io_in_0_ready = io_out_ready;
  assign io_in_1_ready = T_644;
  assign io_in_2_ready = T_645;
  assign io_out_valid = T_648;
  assign io_out_bits_idx = GEN_4;
  assign io_out_bits_way_en = GEN_5;
  assign io_chosen = GEN_3;
  assign GEN_0 = io_in_1_valid ? 2'h1 : 2'h2;
  assign GEN_1 = io_in_1_valid ? io_in_1_bits_idx : io_in_2_bits_idx;
  assign GEN_2 = io_in_1_valid ? io_in_1_bits_way_en : io_in_2_bits_way_en;
  assign GEN_3 = io_in_0_valid ? 2'h0 : GEN_0;
  assign GEN_4 = io_in_0_valid ? io_in_0_bits_idx : GEN_1;
  assign GEN_5 = io_in_0_valid ? io_in_0_bits_way_en : GEN_2;
  assign T_638 = io_in_0_valid | io_in_1_valid;
  assign T_640 = io_in_0_valid == 1'h0;
  assign T_642 = T_638 == 1'h0;
  assign T_644 = T_640 & io_out_ready;
  assign T_645 = T_642 & io_out_ready;
  assign T_647 = T_642 == 1'h0;
  assign T_648 = T_647 | io_in_2_valid;
endmodule
