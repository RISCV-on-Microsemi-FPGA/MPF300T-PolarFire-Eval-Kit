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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_ARBITER_1(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [2:0] io_in_0_bits_addr_beat,
  input  [1:0] io_in_0_bits_client_xact_id,
  input   io_in_0_bits_manager_xact_id,
  input   io_in_0_bits_is_builtin_type,
  input  [3:0] io_in_0_bits_g_type,
  input  [63:0] io_in_0_bits_data,
  input   io_in_0_bits_client_id,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [2:0] io_in_1_bits_addr_beat,
  input  [1:0] io_in_1_bits_client_xact_id,
  input   io_in_1_bits_manager_xact_id,
  input   io_in_1_bits_is_builtin_type,
  input  [3:0] io_in_1_bits_g_type,
  input  [63:0] io_in_1_bits_data,
  input   io_in_1_bits_client_id,
  input   io_out_ready,
  output  io_out_valid,
  output [2:0] io_out_bits_addr_beat,
  output [1:0] io_out_bits_client_xact_id,
  output  io_out_bits_manager_xact_id,
  output  io_out_bits_is_builtin_type,
  output [3:0] io_out_bits_g_type,
  output [63:0] io_out_bits_data,
  output  io_out_bits_client_id,
  output  io_chosen
);
  wire  choice;
  wire  GEN_0;
  wire  GEN_8;
  wire [2:0] GEN_1;
  wire [2:0] GEN_9;
  wire [1:0] GEN_2;
  wire [1:0] GEN_10;
  wire  GEN_3;
  wire  GEN_11;
  wire  GEN_4;
  wire  GEN_12;
  wire [3:0] GEN_5;
  wire [3:0] GEN_13;
  wire [63:0] GEN_6;
  wire [63:0] GEN_14;
  wire  GEN_7;
  wire  GEN_15;
  reg [2:0] T_636;
  reg [31:0] GEN_21;
  reg  T_638;
  reg [31:0] GEN_22;
  wire  T_640;
  wire [2:0] T_648_0;
  wire [3:0] GEN_20;
  wire  T_650;
  wire  T_651;
  wire  T_652;
  wire  T_654;
  wire  T_655;
  wire [3:0] T_659;
  wire [2:0] T_660;
  wire  GEN_16;
  wire [2:0] GEN_17;
  wire  GEN_18;
  wire  T_663;
  wire  T_665;
  wire  T_666;
  wire  T_667;
  wire  T_670;
  wire  T_671;
  wire  GEN_19;
  assign io_in_0_ready = T_667;
  assign io_in_1_ready = T_671;
  assign io_out_valid = GEN_0;
  assign io_out_bits_addr_beat = GEN_1;
  assign io_out_bits_client_xact_id = GEN_2;
  assign io_out_bits_manager_xact_id = GEN_3;
  assign io_out_bits_is_builtin_type = GEN_4;
  assign io_out_bits_g_type = GEN_5;
  assign io_out_bits_data = GEN_6;
  assign io_out_bits_client_id = GEN_7;
  assign io_chosen = GEN_18;
  assign choice = GEN_19;
  assign GEN_0 = GEN_8;
  assign GEN_8 = io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_1 = GEN_9;
  assign GEN_9 = io_chosen ? io_in_1_bits_addr_beat : io_in_0_bits_addr_beat;
  assign GEN_2 = GEN_10;
  assign GEN_10 = io_chosen ? io_in_1_bits_client_xact_id : io_in_0_bits_client_xact_id;
  assign GEN_3 = GEN_11;
  assign GEN_11 = io_chosen ? io_in_1_bits_manager_xact_id : io_in_0_bits_manager_xact_id;
  assign GEN_4 = GEN_12;
  assign GEN_12 = io_chosen ? io_in_1_bits_is_builtin_type : io_in_0_bits_is_builtin_type;
  assign GEN_5 = GEN_13;
  assign GEN_13 = io_chosen ? io_in_1_bits_g_type : io_in_0_bits_g_type;
  assign GEN_6 = GEN_14;
  assign GEN_14 = io_chosen ? io_in_1_bits_data : io_in_0_bits_data;
  assign GEN_7 = GEN_15;
  assign GEN_15 = io_chosen ? io_in_1_bits_client_id : io_in_0_bits_client_id;
  assign T_640 = T_636 != 3'h0;
  assign T_648_0 = 3'h5;
  assign GEN_20 = {{1'd0}, T_648_0};
  assign T_650 = io_out_bits_g_type == GEN_20;
  assign T_651 = io_out_bits_g_type == 4'h0;
  assign T_652 = io_out_bits_is_builtin_type ? T_650 : T_651;
  assign T_654 = io_out_ready & io_out_valid;
  assign T_655 = T_654 & T_652;
  assign T_659 = T_636 + 3'h1;
  assign T_660 = T_659[2:0];
  assign GEN_16 = T_655 ? io_chosen : T_638;
  assign GEN_17 = T_655 ? T_660 : T_636;
  assign GEN_18 = T_640 ? T_638 : choice;
  assign T_663 = io_in_0_valid == 1'h0;
  assign T_665 = T_638 == 1'h0;
  assign T_666 = T_640 ? T_665 : 1'h1;
  assign T_667 = T_666 & io_out_ready;
  assign T_670 = T_640 ? T_638 : T_663;
  assign T_671 = T_670 & io_out_ready;
  assign GEN_19 = io_in_0_valid ? 1'h0 : 1'h1;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_21 = {1{$random}};
  T_636 = GEN_21[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_22 = {1{$random}};
  T_638 = GEN_22[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_636 <= 3'h0;
    end else begin
      if(T_655) begin
        T_636 <= T_660;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_655) begin
        T_638 <= io_chosen;
      end
    end
  end
endmodule
