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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_UNIT(
  input   clk,
  input   reset,
  output  io_grant_ready,
  input   io_grant_valid,
  input  [1:0] io_grant_bits_header_src,
  input  [1:0] io_grant_bits_header_dst,
  input  [2:0] io_grant_bits_payload_addr_beat,
  input   io_grant_bits_payload_client_xact_id,
  input  [1:0] io_grant_bits_payload_manager_xact_id,
  input   io_grant_bits_payload_is_builtin_type,
  input  [3:0] io_grant_bits_payload_g_type,
  input  [63:0] io_grant_bits_payload_data,
  input   io_refill_ready,
  output  io_refill_valid,
  output [2:0] io_refill_bits_addr_beat,
  output  io_refill_bits_client_xact_id,
  output [1:0] io_refill_bits_manager_xact_id,
  output  io_refill_bits_is_builtin_type,
  output [3:0] io_refill_bits_g_type,
  output [63:0] io_refill_bits_data,
  input   io_finish_ready,
  output  io_finish_valid,
  output [1:0] io_finish_bits_header_src,
  output [1:0] io_finish_bits_header_dst,
  output [1:0] io_finish_bits_payload_manager_xact_id,
  output  io_ready
);
  wire  T_1035;
  wire [2:0] T_1044_0;
  wire [3:0] GEN_1;
  wire  T_1046;
  wire  T_1047;
  wire  T_1048;
  wire  T_1050;
  reg [2:0] T_1052;
  reg [31:0] GEN_3;
  wire  T_1054;
  wire [3:0] T_1056;
  wire [2:0] T_1057;
  wire [2:0] GEN_0;
  wire  T_1058;
  wire  T_1060;
  wire  FinishQueue_1_1_clk;
  wire  FinishQueue_1_1_reset;
  wire  FinishQueue_1_1_io_enq_ready;
  wire  FinishQueue_1_1_io_enq_valid;
  wire [1:0] FinishQueue_1_1_io_enq_bits_manager_xact_id;
  wire  FinishQueue_1_1_io_enq_bits_manager_id;
  wire  FinishQueue_1_1_io_deq_ready;
  wire  FinishQueue_1_1_io_deq_valid;
  wire [1:0] FinishQueue_1_1_io_deq_bits_manager_xact_id;
  wire  FinishQueue_1_1_io_deq_bits_manager_id;
  wire [1:0] FinishQueue_1_1_io_count;
  wire  T_1090;
  wire  T_1092;
  wire  T_1094;
  wire [2:0] T_1102_0;
  wire [3:0] GEN_2;
  wire  T_1104;
  wire  T_1106;
  wire  T_1109;
  wire  T_1110;
  wire  T_1111;
  wire [1:0] T_1134_manager_xact_id;
  wire  T_1167;
  wire  T_1168;
  wire  T_1169;
  wire  T_1182;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FINISH_QUEUE_1 FinishQueue_1_1 (
    .clk(FinishQueue_1_1_clk),
    .reset(FinishQueue_1_1_reset),
    .io_enq_ready(FinishQueue_1_1_io_enq_ready),
    .io_enq_valid(FinishQueue_1_1_io_enq_valid),
    .io_enq_bits_manager_xact_id(FinishQueue_1_1_io_enq_bits_manager_xact_id),
    .io_enq_bits_manager_id(FinishQueue_1_1_io_enq_bits_manager_id),
    .io_deq_ready(FinishQueue_1_1_io_deq_ready),
    .io_deq_valid(FinishQueue_1_1_io_deq_valid),
    .io_deq_bits_manager_xact_id(FinishQueue_1_1_io_deq_bits_manager_xact_id),
    .io_deq_bits_manager_id(FinishQueue_1_1_io_deq_bits_manager_id),
    .io_count(FinishQueue_1_1_io_count)
  );
  assign io_grant_ready = T_1182;
  assign io_refill_valid = T_1169;
  assign io_refill_bits_addr_beat = io_grant_bits_payload_addr_beat;
  assign io_refill_bits_client_xact_id = io_grant_bits_payload_client_xact_id;
  assign io_refill_bits_manager_xact_id = io_grant_bits_payload_manager_xact_id;
  assign io_refill_bits_is_builtin_type = io_grant_bits_payload_is_builtin_type;
  assign io_refill_bits_g_type = io_grant_bits_payload_g_type;
  assign io_refill_bits_data = io_grant_bits_payload_data;
  assign io_finish_valid = FinishQueue_1_1_io_deq_valid;
  assign io_finish_bits_header_src = 2'h1;
  assign io_finish_bits_header_dst = {{1'd0}, FinishQueue_1_1_io_deq_bits_manager_id};
  assign io_finish_bits_payload_manager_xact_id = FinishQueue_1_1_io_deq_bits_manager_xact_id;
  assign io_ready = FinishQueue_1_1_io_enq_ready;
  assign T_1035 = io_grant_ready & io_grant_valid;
  assign T_1044_0 = 3'h5;
  assign GEN_1 = {{1'd0}, T_1044_0};
  assign T_1046 = io_grant_bits_payload_g_type == GEN_1;
  assign T_1047 = io_grant_bits_payload_g_type == 4'h0;
  assign T_1048 = io_grant_bits_payload_is_builtin_type ? T_1046 : T_1047;
  assign T_1050 = T_1035 & T_1048;
  assign T_1054 = T_1052 == 3'h7;
  assign T_1056 = T_1052 + 3'h1;
  assign T_1057 = T_1056[2:0];
  assign GEN_0 = T_1050 ? T_1057 : T_1052;
  assign T_1058 = T_1050 & T_1054;
  assign T_1060 = T_1048 ? T_1058 : T_1035;
  assign FinishQueue_1_1_clk = clk;
  assign FinishQueue_1_1_reset = reset;
  assign FinishQueue_1_1_io_enq_valid = T_1111;
  assign FinishQueue_1_1_io_enq_bits_manager_xact_id = T_1134_manager_xact_id;
  assign FinishQueue_1_1_io_enq_bits_manager_id = io_grant_bits_header_src[0];
  assign FinishQueue_1_1_io_deq_ready = io_finish_ready;
  assign T_1090 = io_grant_bits_payload_is_builtin_type & T_1047;
  assign T_1092 = T_1090 == 1'h0;
  assign T_1094 = T_1035 & T_1092;
  assign T_1102_0 = 3'h5;
  assign GEN_2 = {{1'd0}, T_1102_0};
  assign T_1104 = io_grant_bits_payload_g_type == GEN_2;
  assign T_1106 = io_grant_bits_payload_is_builtin_type ? T_1104 : T_1047;
  assign T_1109 = T_1106 == 1'h0;
  assign T_1110 = T_1109 | T_1060;
  assign T_1111 = T_1094 & T_1110;
  assign T_1134_manager_xact_id = io_grant_bits_payload_manager_xact_id;
  assign T_1167 = T_1092 == 1'h0;
  assign T_1168 = FinishQueue_1_1_io_enq_ready | T_1167;
  assign T_1169 = T_1168 & io_grant_valid;
  assign T_1182 = T_1168 & io_refill_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_3 = {1{$random}};
  T_1052 = GEN_3[2:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_1052 <= 3'h0;
    end else begin
      if(T_1050) begin
        T_1052 <= T_1057;
      end
    end
  end
endmodule
