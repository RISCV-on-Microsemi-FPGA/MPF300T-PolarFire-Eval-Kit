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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_2(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [25:0] io_in_0_bits_payload_addr_block,
  input  [1:0] io_in_0_bits_payload_p_type,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [25:0] io_in_1_bits_payload_addr_block,
  input  [1:0] io_in_1_bits_payload_p_type,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [25:0] io_in_2_bits_payload_addr_block,
  input  [1:0] io_in_2_bits_payload_p_type,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [25:0] io_in_3_bits_payload_addr_block,
  input  [1:0] io_in_3_bits_payload_p_type,
  input   io_out_ready,
  output  io_out_valid,
  output [1:0] io_out_bits_header_src,
  output [1:0] io_out_bits_header_dst,
  output [25:0] io_out_bits_payload_addr_block,
  output [1:0] io_out_bits_payload_p_type,
  output [1:0] io_chosen
);
  wire [1:0] choice;
  wire  GEN_0;
  wire  GEN_5;
  wire  GEN_6;
  wire  GEN_7;
  wire [1:0] GEN_1;
  wire [1:0] GEN_8;
  wire [1:0] GEN_9;
  wire [1:0] GEN_10;
  wire [1:0] GEN_2;
  wire [1:0] GEN_11;
  wire [1:0] GEN_12;
  wire [1:0] GEN_13;
  wire [25:0] GEN_3;
  wire [25:0] GEN_14;
  wire [25:0] GEN_15;
  wire [25:0] GEN_16;
  wire [1:0] GEN_4;
  wire [1:0] GEN_17;
  wire [1:0] GEN_18;
  wire [1:0] GEN_19;
  wire  T_964;
  reg [1:0] lastGrant;
  reg [31:0] GEN_27;
  wire [1:0] GEN_20;
  wire  T_967;
  wire  T_969;
  wire  T_971;
  wire  T_973;
  wire  T_974;
  wire  T_975;
  wire  T_978;
  wire  T_979;
  wire  T_980;
  wire  T_981;
  wire  T_982;
  wire  T_986;
  wire  T_988;
  wire  T_990;
  wire  T_992;
  wire  T_994;
  wire  T_996;
  wire  T_1000;
  wire  T_1001;
  wire  T_1002;
  wire  T_1003;
  wire  T_1004;
  wire  T_1005;
  wire  T_1006;
  wire  T_1007;
  wire  T_1008;
  wire [1:0] GEN_21;
  wire [1:0] GEN_22;
  wire [1:0] GEN_23;
  wire [1:0] GEN_24;
  wire [1:0] GEN_25;
  wire [1:0] GEN_26;
  assign io_in_0_ready = T_1005;
  assign io_in_1_ready = T_1006;
  assign io_in_2_ready = T_1007;
  assign io_in_3_ready = T_1008;
  assign io_out_valid = GEN_0;
  assign io_out_bits_header_src = GEN_1;
  assign io_out_bits_header_dst = GEN_2;
  assign io_out_bits_payload_addr_block = GEN_3;
  assign io_out_bits_payload_p_type = GEN_4;
  assign io_chosen = choice;
  assign choice = GEN_26;
  assign GEN_0 = GEN_7;
  assign GEN_5 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_6 = 2'h2 == io_chosen ? io_in_2_valid : GEN_5;
  assign GEN_7 = 2'h3 == io_chosen ? io_in_3_valid : GEN_6;
  assign GEN_1 = GEN_10;
  assign GEN_8 = 2'h1 == io_chosen ? io_in_1_bits_header_src : io_in_0_bits_header_src;
  assign GEN_9 = 2'h2 == io_chosen ? io_in_2_bits_header_src : GEN_8;
  assign GEN_10 = 2'h3 == io_chosen ? io_in_3_bits_header_src : GEN_9;
  assign GEN_2 = GEN_13;
  assign GEN_11 = 2'h1 == io_chosen ? io_in_1_bits_header_dst : io_in_0_bits_header_dst;
  assign GEN_12 = 2'h2 == io_chosen ? io_in_2_bits_header_dst : GEN_11;
  assign GEN_13 = 2'h3 == io_chosen ? io_in_3_bits_header_dst : GEN_12;
  assign GEN_3 = GEN_16;
  assign GEN_14 = 2'h1 == io_chosen ? io_in_1_bits_payload_addr_block : io_in_0_bits_payload_addr_block;
  assign GEN_15 = 2'h2 == io_chosen ? io_in_2_bits_payload_addr_block : GEN_14;
  assign GEN_16 = 2'h3 == io_chosen ? io_in_3_bits_payload_addr_block : GEN_15;
  assign GEN_4 = GEN_19;
  assign GEN_17 = 2'h1 == io_chosen ? io_in_1_bits_payload_p_type : io_in_0_bits_payload_p_type;
  assign GEN_18 = 2'h2 == io_chosen ? io_in_2_bits_payload_p_type : GEN_17;
  assign GEN_19 = 2'h3 == io_chosen ? io_in_3_bits_payload_p_type : GEN_18;
  assign T_964 = io_out_ready & io_out_valid;
  assign GEN_20 = T_964 ? io_chosen : lastGrant;
  assign T_967 = 2'h1 > lastGrant;
  assign T_969 = 2'h2 > lastGrant;
  assign T_971 = 2'h3 > lastGrant;
  assign T_973 = io_in_1_valid & T_967;
  assign T_974 = io_in_2_valid & T_969;
  assign T_975 = io_in_3_valid & T_971;
  assign T_978 = T_973 | T_974;
  assign T_979 = T_978 | T_975;
  assign T_980 = T_979 | io_in_0_valid;
  assign T_981 = T_980 | io_in_1_valid;
  assign T_982 = T_981 | io_in_2_valid;
  assign T_986 = T_973 == 1'h0;
  assign T_988 = T_978 == 1'h0;
  assign T_990 = T_979 == 1'h0;
  assign T_992 = T_980 == 1'h0;
  assign T_994 = T_981 == 1'h0;
  assign T_996 = T_982 == 1'h0;
  assign T_1000 = T_967 | T_992;
  assign T_1001 = T_986 & T_969;
  assign T_1002 = T_1001 | T_994;
  assign T_1003 = T_988 & T_971;
  assign T_1004 = T_1003 | T_996;
  assign T_1005 = T_990 & io_out_ready;
  assign T_1006 = T_1000 & io_out_ready;
  assign T_1007 = T_1002 & io_out_ready;
  assign T_1008 = T_1004 & io_out_ready;
  assign GEN_21 = io_in_2_valid ? 2'h2 : 2'h3;
  assign GEN_22 = io_in_1_valid ? 2'h1 : GEN_21;
  assign GEN_23 = io_in_0_valid ? 2'h0 : GEN_22;
  assign GEN_24 = T_975 ? 2'h3 : GEN_23;
  assign GEN_25 = T_974 ? 2'h2 : GEN_24;
  assign GEN_26 = T_973 ? 2'h1 : GEN_25;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_27 = {1{$random}};
  lastGrant = GEN_27[1:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(T_964) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
