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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_4(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [1:0] io_in_0_bits_payload_manager_xact_id,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [1:0] io_in_1_bits_payload_manager_xact_id,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [1:0] io_in_2_bits_payload_manager_xact_id,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [1:0] io_in_3_bits_payload_manager_xact_id,
  input   io_out_ready,
  output  io_out_valid,
  output [1:0] io_out_bits_header_src,
  output [1:0] io_out_bits_header_dst,
  output [1:0] io_out_bits_payload_manager_xact_id,
  output [1:0] io_chosen
);
  wire [1:0] choice;
  wire  GEN_0;
  wire  GEN_4;
  wire  GEN_5;
  wire  GEN_6;
  wire [1:0] GEN_1;
  wire [1:0] GEN_7;
  wire [1:0] GEN_8;
  wire [1:0] GEN_9;
  wire [1:0] GEN_2;
  wire [1:0] GEN_10;
  wire [1:0] GEN_11;
  wire [1:0] GEN_12;
  wire [1:0] GEN_3;
  wire [1:0] GEN_13;
  wire [1:0] GEN_14;
  wire [1:0] GEN_15;
  wire  T_930;
  reg [1:0] lastGrant;
  reg [31:0] GEN_23;
  wire [1:0] GEN_16;
  wire  T_933;
  wire  T_935;
  wire  T_937;
  wire  T_939;
  wire  T_940;
  wire  T_941;
  wire  T_944;
  wire  T_945;
  wire  T_946;
  wire  T_947;
  wire  T_948;
  wire  T_952;
  wire  T_954;
  wire  T_956;
  wire  T_958;
  wire  T_960;
  wire  T_962;
  wire  T_966;
  wire  T_967;
  wire  T_968;
  wire  T_969;
  wire  T_970;
  wire  T_971;
  wire  T_972;
  wire  T_973;
  wire  T_974;
  wire [1:0] GEN_17;
  wire [1:0] GEN_18;
  wire [1:0] GEN_19;
  wire [1:0] GEN_20;
  wire [1:0] GEN_21;
  wire [1:0] GEN_22;
  assign io_in_0_ready = T_971;
  assign io_in_1_ready = T_972;
  assign io_in_2_ready = T_973;
  assign io_in_3_ready = T_974;
  assign io_out_valid = GEN_0;
  assign io_out_bits_header_src = GEN_1;
  assign io_out_bits_header_dst = GEN_2;
  assign io_out_bits_payload_manager_xact_id = GEN_3;
  assign io_chosen = choice;
  assign choice = GEN_22;
  assign GEN_0 = GEN_6;
  assign GEN_4 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_5 = 2'h2 == io_chosen ? io_in_2_valid : GEN_4;
  assign GEN_6 = 2'h3 == io_chosen ? io_in_3_valid : GEN_5;
  assign GEN_1 = GEN_9;
  assign GEN_7 = 2'h1 == io_chosen ? io_in_1_bits_header_src : io_in_0_bits_header_src;
  assign GEN_8 = 2'h2 == io_chosen ? io_in_2_bits_header_src : GEN_7;
  assign GEN_9 = 2'h3 == io_chosen ? io_in_3_bits_header_src : GEN_8;
  assign GEN_2 = GEN_12;
  assign GEN_10 = 2'h1 == io_chosen ? io_in_1_bits_header_dst : io_in_0_bits_header_dst;
  assign GEN_11 = 2'h2 == io_chosen ? io_in_2_bits_header_dst : GEN_10;
  assign GEN_12 = 2'h3 == io_chosen ? io_in_3_bits_header_dst : GEN_11;
  assign GEN_3 = GEN_15;
  assign GEN_13 = 2'h1 == io_chosen ? io_in_1_bits_payload_manager_xact_id : io_in_0_bits_payload_manager_xact_id;
  assign GEN_14 = 2'h2 == io_chosen ? io_in_2_bits_payload_manager_xact_id : GEN_13;
  assign GEN_15 = 2'h3 == io_chosen ? io_in_3_bits_payload_manager_xact_id : GEN_14;
  assign T_930 = io_out_ready & io_out_valid;
  assign GEN_16 = T_930 ? io_chosen : lastGrant;
  assign T_933 = 2'h1 > lastGrant;
  assign T_935 = 2'h2 > lastGrant;
  assign T_937 = 2'h3 > lastGrant;
  assign T_939 = io_in_1_valid & T_933;
  assign T_940 = io_in_2_valid & T_935;
  assign T_941 = io_in_3_valid & T_937;
  assign T_944 = T_939 | T_940;
  assign T_945 = T_944 | T_941;
  assign T_946 = T_945 | io_in_0_valid;
  assign T_947 = T_946 | io_in_1_valid;
  assign T_948 = T_947 | io_in_2_valid;
  assign T_952 = T_939 == 1'h0;
  assign T_954 = T_944 == 1'h0;
  assign T_956 = T_945 == 1'h0;
  assign T_958 = T_946 == 1'h0;
  assign T_960 = T_947 == 1'h0;
  assign T_962 = T_948 == 1'h0;
  assign T_966 = T_933 | T_958;
  assign T_967 = T_952 & T_935;
  assign T_968 = T_967 | T_960;
  assign T_969 = T_954 & T_937;
  assign T_970 = T_969 | T_962;
  assign T_971 = T_956 & io_out_ready;
  assign T_972 = T_966 & io_out_ready;
  assign T_973 = T_968 & io_out_ready;
  assign T_974 = T_970 & io_out_ready;
  assign GEN_17 = io_in_2_valid ? 2'h2 : 2'h3;
  assign GEN_18 = io_in_1_valid ? 2'h1 : GEN_17;
  assign GEN_19 = io_in_0_valid ? 2'h0 : GEN_18;
  assign GEN_20 = T_941 ? 2'h3 : GEN_19;
  assign GEN_21 = T_940 ? 2'h2 : GEN_20;
  assign GEN_22 = T_939 ? 2'h1 : GEN_21;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_23 = {1{$random}};
  lastGrant = GEN_23[1:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(T_930) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
