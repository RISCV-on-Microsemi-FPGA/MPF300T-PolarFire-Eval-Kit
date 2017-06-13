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
// SVN $Revision: 29485 $
// SVN $Date: 2017-03-31 10:16:24 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`include "coreriscv_axi4_defines.v"
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_3(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [1:0] io_enq_bits_header_src,
  input  [1:0] io_enq_bits_header_dst,
  input  [2:0] io_enq_bits_payload_addr_beat,
  input   io_enq_bits_payload_client_xact_id,
  input  [1:0] io_enq_bits_payload_manager_xact_id,
  input   io_enq_bits_payload_is_builtin_type,
  input  [3:0] io_enq_bits_payload_g_type,
  input  [63:0] io_enq_bits_payload_data,
  input   io_deq_ready,
  output  io_deq_valid,
  output [1:0] io_deq_bits_header_src,
  output [1:0] io_deq_bits_header_dst,
  output [2:0] io_deq_bits_payload_addr_beat,
  output  io_deq_bits_payload_client_xact_id,
  output [1:0] io_deq_bits_payload_manager_xact_id,
  output  io_deq_bits_payload_is_builtin_type,
  output [3:0] io_deq_bits_payload_g_type,
  output [63:0] io_deq_bits_payload_data,
  output [1:0] io_count
);
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_src [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_src [0:1];
  `endif
  reg [31:0] GEN_0;
  wire [1:0] ram_header_src_T_1144_data;
  wire  ram_header_src_T_1144_addr;
  wire  ram_header_src_T_1144_en;
  wire [1:0] ram_header_src_T_1018_data;
  wire  ram_header_src_T_1018_addr;
  wire  ram_header_src_T_1018_mask;
  wire  ram_header_src_T_1018_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_dst [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_dst [0:1];
  `endif
  reg [31:0] GEN_1;
  wire [1:0] ram_header_dst_T_1144_data;
  wire  ram_header_dst_T_1144_addr;
  wire  ram_header_dst_T_1144_en;
  wire [1:0] ram_header_dst_T_1018_data;
  wire  ram_header_dst_T_1018_addr;
  wire  ram_header_dst_T_1018_mask;
  wire  ram_header_dst_T_1018_en;
  `ifdef USE_REGISTERS
    reg [2:0] ram_payload_addr_beat [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_payload_addr_beat [0:1];
  `endif
  reg [31:0] GEN_2;
  wire [2:0] ram_payload_addr_beat_T_1144_data;
  wire  ram_payload_addr_beat_T_1144_addr;
  wire  ram_payload_addr_beat_T_1144_en;
  wire [2:0] ram_payload_addr_beat_T_1018_data;
  wire  ram_payload_addr_beat_T_1018_addr;
  wire  ram_payload_addr_beat_T_1018_mask;
  wire  ram_payload_addr_beat_T_1018_en;
  reg  ram_payload_client_xact_id [0:1];
  reg [31:0] GEN_3;
  wire  ram_payload_client_xact_id_T_1144_data;
  wire  ram_payload_client_xact_id_T_1144_addr;
  wire  ram_payload_client_xact_id_T_1144_en;
  wire  ram_payload_client_xact_id_T_1018_data;
  wire  ram_payload_client_xact_id_T_1018_addr;
  wire  ram_payload_client_xact_id_T_1018_mask;
  wire  ram_payload_client_xact_id_T_1018_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_payload_manager_xact_id [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_payload_manager_xact_id [0:1];
  `endif
  reg [31:0] GEN_4;
  wire [1:0] ram_payload_manager_xact_id_T_1144_data;
  wire  ram_payload_manager_xact_id_T_1144_addr;
  wire  ram_payload_manager_xact_id_T_1144_en;
  wire [1:0] ram_payload_manager_xact_id_T_1018_data;
  wire  ram_payload_manager_xact_id_T_1018_addr;
  wire  ram_payload_manager_xact_id_T_1018_mask;
  wire  ram_payload_manager_xact_id_T_1018_en;
  reg  ram_payload_is_builtin_type [0:1];
  reg [31:0] GEN_5;
  wire  ram_payload_is_builtin_type_T_1144_data;
  wire  ram_payload_is_builtin_type_T_1144_addr;
  wire  ram_payload_is_builtin_type_T_1144_en;
  wire  ram_payload_is_builtin_type_T_1018_data;
  wire  ram_payload_is_builtin_type_T_1018_addr;
  wire  ram_payload_is_builtin_type_T_1018_mask;
  wire  ram_payload_is_builtin_type_T_1018_en;
  `ifdef USE_REGISTERS
    reg [3:0] ram_payload_g_type [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [3:0] ram_payload_g_type [0:1];
  `endif
  reg [31:0] GEN_6;
  wire [3:0] ram_payload_g_type_T_1144_data;
  wire  ram_payload_g_type_T_1144_addr;
  wire  ram_payload_g_type_T_1144_en;
  wire [3:0] ram_payload_g_type_T_1018_data;
  wire  ram_payload_g_type_T_1018_addr;
  wire  ram_payload_g_type_T_1018_mask;
  wire  ram_payload_g_type_T_1018_en;
  `ifdef USE_REGISTERS
    reg [63:0] ram_payload_data [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [63:0] ram_payload_data [0:1];
  `endif
  reg [63:0] GEN_7;
  wire [63:0] ram_payload_data_T_1144_data;
  wire  ram_payload_data_T_1144_addr;
  wire  ram_payload_data_T_1144_en;
  wire [63:0] ram_payload_data_T_1018_data;
  wire  ram_payload_data_T_1018_addr;
  wire  ram_payload_data_T_1018_mask;
  wire  ram_payload_data_T_1018_en;
  reg  T_1010;
  reg [31:0] GEN_8;
  reg  T_1012;
  reg [31:0] GEN_9;
  reg  maybe_full;
  reg [31:0] GEN_10;
  wire  ptr_match;
  wire  T_1015;
  wire  empty;
  wire  full;
  wire  T_1016;
  wire  do_enq;
  wire  T_1017;
  wire  do_deq;
  wire [1:0] T_1132;
  wire  T_1133;
  wire  GEN_19;
  wire [1:0] T_1137;
  wire  T_1138;
  wire  GEN_20;
  wire  T_1139;
  wire  GEN_21;
  wire  T_1141;
  wire  T_1143;
  wire [1:0] T_1255;
  wire  ptr_diff;
  wire  T_1256;
  wire [1:0] T_1257;
  assign io_enq_ready = T_1143;
  assign io_deq_valid = T_1141;
  assign io_deq_bits_header_src = ram_header_src_T_1144_data;
  assign io_deq_bits_header_dst = ram_header_dst_T_1144_data;
  assign io_deq_bits_payload_addr_beat = ram_payload_addr_beat_T_1144_data;
  assign io_deq_bits_payload_client_xact_id = ram_payload_client_xact_id_T_1144_data;
  assign io_deq_bits_payload_manager_xact_id = ram_payload_manager_xact_id_T_1144_data;
  assign io_deq_bits_payload_is_builtin_type = ram_payload_is_builtin_type_T_1144_data;
  assign io_deq_bits_payload_g_type = ram_payload_g_type_T_1144_data;
  assign io_deq_bits_payload_data = ram_payload_data_T_1144_data;
  assign io_count = T_1257;
  assign ram_header_src_T_1144_addr = T_1012;
  assign ram_header_src_T_1144_en = 1'h1;
  assign ram_header_src_T_1144_data = ram_header_src[ram_header_src_T_1144_addr];
  assign ram_header_src_T_1018_data = io_enq_bits_header_src;
  assign ram_header_src_T_1018_addr = T_1010;
  assign ram_header_src_T_1018_mask = do_enq;
  assign ram_header_src_T_1018_en = do_enq;
  assign ram_header_dst_T_1144_addr = T_1012;
  assign ram_header_dst_T_1144_en = 1'h1;
  assign ram_header_dst_T_1144_data = ram_header_dst[ram_header_dst_T_1144_addr];
  assign ram_header_dst_T_1018_data = io_enq_bits_header_dst;
  assign ram_header_dst_T_1018_addr = T_1010;
  assign ram_header_dst_T_1018_mask = do_enq;
  assign ram_header_dst_T_1018_en = do_enq;
  assign ram_payload_addr_beat_T_1144_addr = T_1012;
  assign ram_payload_addr_beat_T_1144_en = 1'h1;
  assign ram_payload_addr_beat_T_1144_data = ram_payload_addr_beat[ram_payload_addr_beat_T_1144_addr];
  assign ram_payload_addr_beat_T_1018_data = io_enq_bits_payload_addr_beat;
  assign ram_payload_addr_beat_T_1018_addr = T_1010;
  assign ram_payload_addr_beat_T_1018_mask = do_enq;
  assign ram_payload_addr_beat_T_1018_en = do_enq;
  assign ram_payload_client_xact_id_T_1144_addr = T_1012;
  assign ram_payload_client_xact_id_T_1144_en = 1'h1;
  assign ram_payload_client_xact_id_T_1144_data = ram_payload_client_xact_id[ram_payload_client_xact_id_T_1144_addr];
  assign ram_payload_client_xact_id_T_1018_data = io_enq_bits_payload_client_xact_id;
  assign ram_payload_client_xact_id_T_1018_addr = T_1010;
  assign ram_payload_client_xact_id_T_1018_mask = do_enq;
  assign ram_payload_client_xact_id_T_1018_en = do_enq;
  assign ram_payload_manager_xact_id_T_1144_addr = T_1012;
  assign ram_payload_manager_xact_id_T_1144_en = 1'h1;
  assign ram_payload_manager_xact_id_T_1144_data = ram_payload_manager_xact_id[ram_payload_manager_xact_id_T_1144_addr];
  assign ram_payload_manager_xact_id_T_1018_data = io_enq_bits_payload_manager_xact_id;
  assign ram_payload_manager_xact_id_T_1018_addr = T_1010;
  assign ram_payload_manager_xact_id_T_1018_mask = do_enq;
  assign ram_payload_manager_xact_id_T_1018_en = do_enq;
  assign ram_payload_is_builtin_type_T_1144_addr = T_1012;
  assign ram_payload_is_builtin_type_T_1144_en = 1'h1;
  assign ram_payload_is_builtin_type_T_1144_data = ram_payload_is_builtin_type[ram_payload_is_builtin_type_T_1144_addr];
  assign ram_payload_is_builtin_type_T_1018_data = io_enq_bits_payload_is_builtin_type;
  assign ram_payload_is_builtin_type_T_1018_addr = T_1010;
  assign ram_payload_is_builtin_type_T_1018_mask = do_enq;
  assign ram_payload_is_builtin_type_T_1018_en = do_enq;
  assign ram_payload_g_type_T_1144_addr = T_1012;
  assign ram_payload_g_type_T_1144_en = 1'h1;
  assign ram_payload_g_type_T_1144_data = ram_payload_g_type[ram_payload_g_type_T_1144_addr];
  assign ram_payload_g_type_T_1018_data = io_enq_bits_payload_g_type;
  assign ram_payload_g_type_T_1018_addr = T_1010;
  assign ram_payload_g_type_T_1018_mask = do_enq;
  assign ram_payload_g_type_T_1018_en = do_enq;
  assign ram_payload_data_T_1144_addr = T_1012;
  assign ram_payload_data_T_1144_en = 1'h1;
  assign ram_payload_data_T_1144_data = ram_payload_data[ram_payload_data_T_1144_addr];
  assign ram_payload_data_T_1018_data = io_enq_bits_payload_data;
  assign ram_payload_data_T_1018_addr = T_1010;
  assign ram_payload_data_T_1018_mask = do_enq;
  assign ram_payload_data_T_1018_en = do_enq;
  assign ptr_match = T_1010 == T_1012;
  assign T_1015 = maybe_full == 1'h0;
  assign empty = ptr_match & T_1015;
  assign full = ptr_match & maybe_full;
  assign T_1016 = io_enq_ready & io_enq_valid;
  assign do_enq = T_1016;
  assign T_1017 = io_deq_ready & io_deq_valid;
  assign do_deq = T_1017;
  assign T_1132 = T_1010 + 1'h1;
  assign T_1133 = T_1132[0:0];
  assign GEN_19 = do_enq ? T_1133 : T_1010;
  assign T_1137 = T_1012 + 1'h1;
  assign T_1138 = T_1137[0:0];
  assign GEN_20 = do_deq ? T_1138 : T_1012;
  assign T_1139 = do_enq != do_deq;
  assign GEN_21 = T_1139 ? do_enq : maybe_full;
  assign T_1141 = empty == 1'h0;
  assign T_1143 = full == 1'h0;
  assign T_1255 = T_1010 - T_1012;
  assign ptr_diff = T_1255[0:0];
  assign T_1256 = maybe_full & ptr_match;
  assign T_1257 = {T_1256,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_header_src[initvar] = GEN_0[1:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_header_dst[initvar] = GEN_1[1:0];
  `endif
  GEN_2 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_addr_beat[initvar] = GEN_2[2:0];
  `endif
  GEN_3 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_client_xact_id[initvar] = GEN_3[0:0];
  `endif
  GEN_4 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_manager_xact_id[initvar] = GEN_4[1:0];
  `endif
  GEN_5 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_is_builtin_type[initvar] = GEN_5[0:0];
  `endif
  GEN_6 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_g_type[initvar] = GEN_6[3:0];
  `endif
  GEN_7 = {2{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_payload_data[initvar] = GEN_7[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_8 = {1{$random}};
  T_1010 = GEN_8[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_9 = {1{$random}};
  T_1012 = GEN_9[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_10 = {1{$random}};
  maybe_full = GEN_10[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_header_src_T_1018_en & ram_header_src_T_1018_mask) begin
      ram_header_src[ram_header_src_T_1018_addr] <= ram_header_src_T_1018_data;
    end
    if(ram_header_dst_T_1018_en & ram_header_dst_T_1018_mask) begin
      ram_header_dst[ram_header_dst_T_1018_addr] <= ram_header_dst_T_1018_data;
    end
    if(ram_payload_addr_beat_T_1018_en & ram_payload_addr_beat_T_1018_mask) begin
      ram_payload_addr_beat[ram_payload_addr_beat_T_1018_addr] <= ram_payload_addr_beat_T_1018_data;
    end
    if(ram_payload_client_xact_id_T_1018_en & ram_payload_client_xact_id_T_1018_mask) begin
      ram_payload_client_xact_id[ram_payload_client_xact_id_T_1018_addr] <= ram_payload_client_xact_id_T_1018_data;
    end
    if(ram_payload_manager_xact_id_T_1018_en & ram_payload_manager_xact_id_T_1018_mask) begin
      ram_payload_manager_xact_id[ram_payload_manager_xact_id_T_1018_addr] <= ram_payload_manager_xact_id_T_1018_data;
    end
    if(ram_payload_is_builtin_type_T_1018_en & ram_payload_is_builtin_type_T_1018_mask) begin
      ram_payload_is_builtin_type[ram_payload_is_builtin_type_T_1018_addr] <= ram_payload_is_builtin_type_T_1018_data;
    end
    if(ram_payload_g_type_T_1018_en & ram_payload_g_type_T_1018_mask) begin
      ram_payload_g_type[ram_payload_g_type_T_1018_addr] <= ram_payload_g_type_T_1018_data;
    end
    if(ram_payload_data_T_1018_en & ram_payload_data_T_1018_mask) begin
      ram_payload_data[ram_payload_data_T_1018_addr] <= ram_payload_data_T_1018_data;
    end
    if(reset) begin
      T_1010 <= 1'h0;
    end else begin
      if(do_enq) begin
        T_1010 <= T_1133;
      end
    end
    if(reset) begin
      T_1012 <= 1'h0;
    end else begin
      if(do_deq) begin
        T_1012 <= T_1138;
      end
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_1139) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
