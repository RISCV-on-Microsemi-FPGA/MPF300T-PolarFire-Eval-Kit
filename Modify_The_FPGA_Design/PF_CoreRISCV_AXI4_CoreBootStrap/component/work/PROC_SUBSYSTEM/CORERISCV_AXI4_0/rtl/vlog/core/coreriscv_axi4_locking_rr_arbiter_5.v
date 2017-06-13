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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_5(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [25:0] io_in_0_bits_addr_block,
  input  [1:0] io_in_0_bits_client_xact_id,
  input  [2:0] io_in_0_bits_addr_beat,
  input   io_in_0_bits_is_builtin_type,
  input  [2:0] io_in_0_bits_a_type,
  input  [11:0] io_in_0_bits_union,
  input  [63:0] io_in_0_bits_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [25:0] io_in_1_bits_addr_block,
  input  [1:0] io_in_1_bits_client_xact_id,
  input  [2:0] io_in_1_bits_addr_beat,
  input   io_in_1_bits_is_builtin_type,
  input  [2:0] io_in_1_bits_a_type,
  input  [11:0] io_in_1_bits_union,
  input  [63:0] io_in_1_bits_data,
  input   io_out_ready,
  output  io_out_valid,
  output [25:0] io_out_bits_addr_block,
  output [1:0] io_out_bits_client_xact_id,
  output [2:0] io_out_bits_addr_beat,
  output  io_out_bits_is_builtin_type,
  output [2:0] io_out_bits_a_type,
  output [11:0] io_out_bits_union,
  output [63:0] io_out_bits_data,
  output  io_chosen
);
  wire  choice;
  wire  GEN_0;
  wire  GEN_8;
  wire [25:0] GEN_1;
  wire [25:0] GEN_9;
  wire [1:0] GEN_2;
  wire [1:0] GEN_10;
  wire [2:0] GEN_3;
  wire [2:0] GEN_11;
  wire  GEN_4;
  wire  GEN_12;
  wire [2:0] GEN_5;
  wire [2:0] GEN_13;
  wire [11:0] GEN_6;
  wire [11:0] GEN_14;
  wire [63:0] GEN_7;
  wire [63:0] GEN_15;
  reg [2:0] T_766;
  reg [31:0] GEN_22;
  reg  T_768;
  reg [31:0] GEN_23;
  wire  T_770;
  wire [2:0] T_779_0;
  wire  T_781;
  wire  T_782;
  wire  T_783;
  wire  T_784;
  wire [3:0] T_788;
  wire [2:0] T_789;
  wire  GEN_16;
  wire [2:0] GEN_17;
  wire  GEN_18;
  reg  lastGrant;
  reg [31:0] GEN_24;
  wire  GEN_19;
  wire  T_794;
  wire  T_796;
  wire  T_799;
  wire  T_803;
  wire  T_805;
  wire  T_809;
  wire  T_811;
  wire  T_812;
  wire  T_813;
  wire  T_816;
  wire  T_817;
  wire  GEN_20;
  wire  GEN_21;
  assign io_in_0_ready = T_813;
  assign io_in_1_ready = T_817;
  assign io_out_valid = GEN_0;
  assign io_out_bits_addr_block = GEN_1;
  assign io_out_bits_client_xact_id = GEN_2;
  assign io_out_bits_addr_beat = GEN_3;
  assign io_out_bits_is_builtin_type = GEN_4;
  assign io_out_bits_a_type = GEN_5;
  assign io_out_bits_union = GEN_6;
  assign io_out_bits_data = GEN_7;
  assign io_chosen = GEN_18;
  assign choice = GEN_21;
  assign GEN_0 = GEN_8;
  assign GEN_8 = io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_1 = GEN_9;
  assign GEN_9 = io_chosen ? io_in_1_bits_addr_block : io_in_0_bits_addr_block;
  assign GEN_2 = GEN_10;
  assign GEN_10 = io_chosen ? io_in_1_bits_client_xact_id : io_in_0_bits_client_xact_id;
  assign GEN_3 = GEN_11;
  assign GEN_11 = io_chosen ? io_in_1_bits_addr_beat : io_in_0_bits_addr_beat;
  assign GEN_4 = GEN_12;
  assign GEN_12 = io_chosen ? io_in_1_bits_is_builtin_type : io_in_0_bits_is_builtin_type;
  assign GEN_5 = GEN_13;
  assign GEN_13 = io_chosen ? io_in_1_bits_a_type : io_in_0_bits_a_type;
  assign GEN_6 = GEN_14;
  assign GEN_14 = io_chosen ? io_in_1_bits_union : io_in_0_bits_union;
  assign GEN_7 = GEN_15;
  assign GEN_15 = io_chosen ? io_in_1_bits_data : io_in_0_bits_data;
  assign T_770 = T_766 != 3'h0;
  assign T_779_0 = 3'h3;
  assign T_781 = io_out_bits_a_type == T_779_0;
  assign T_782 = io_out_bits_is_builtin_type & T_781;
  assign T_783 = io_out_ready & io_out_valid;
  assign T_784 = T_783 & T_782;
  assign T_788 = T_766 + 3'h1;
  assign T_789 = T_788[2:0];
  assign GEN_16 = T_784 ? io_chosen : T_768;
  assign GEN_17 = T_784 ? T_789 : T_766;
  assign GEN_18 = T_770 ? T_768 : choice;
  assign GEN_19 = T_783 ? io_chosen : lastGrant;
  assign T_794 = 1'h1 > lastGrant;
  assign T_796 = io_in_1_valid & T_794;
  assign T_799 = T_796 | io_in_0_valid;
  assign T_803 = T_796 == 1'h0;
  assign T_805 = T_799 == 1'h0;
  assign T_809 = T_794 | T_805;
  assign T_811 = T_768 == 1'h0;
  assign T_812 = T_770 ? T_811 : T_803;
  assign T_813 = T_812 & io_out_ready;
  assign T_816 = T_770 ? T_768 : T_809;
  assign T_817 = T_816 & io_out_ready;
  assign GEN_20 = io_in_0_valid ? 1'h0 : 1'h1;
  assign GEN_21 = T_796 ? 1'h1 : GEN_20;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_22 = {1{$random}};
  T_766 = GEN_22[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_23 = {1{$random}};
  T_768 = GEN_23[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_24 = {1{$random}};
  lastGrant = GEN_24[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_766 <= 3'h0;
    end else begin
      if(T_784) begin
        T_766 <= T_789;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_784) begin
        T_768 <= io_chosen;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_783) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
