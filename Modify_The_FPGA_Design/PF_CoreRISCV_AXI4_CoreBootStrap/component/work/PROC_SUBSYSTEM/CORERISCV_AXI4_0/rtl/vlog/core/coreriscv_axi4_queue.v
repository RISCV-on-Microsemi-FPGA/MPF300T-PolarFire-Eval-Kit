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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [1:0] io_enq_bits_header_src,
  input  [1:0] io_enq_bits_header_dst,
  input  [25:0] io_enq_bits_payload_addr_block,
  input   io_enq_bits_payload_client_xact_id,
  input  [2:0] io_enq_bits_payload_addr_beat,
  input   io_enq_bits_payload_is_builtin_type,
  input  [2:0] io_enq_bits_payload_a_type,
  input  [11:0] io_enq_bits_payload_union,
  input  [63:0] io_enq_bits_payload_data,
  input   io_deq_ready,
  output  io_deq_valid,
  output [1:0] io_deq_bits_header_src,
  output [1:0] io_deq_bits_header_dst,
  output [25:0] io_deq_bits_payload_addr_block,
  output  io_deq_bits_payload_client_xact_id,
  output [2:0] io_deq_bits_payload_addr_beat,
  output  io_deq_bits_payload_is_builtin_type,
  output [2:0] io_deq_bits_payload_a_type,
  output [11:0] io_deq_bits_payload_union,
  output [63:0] io_deq_bits_payload_data,
  output  io_count
);
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_src [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_src [0:0];
  `endif
  reg [31:0] GEN_0;
  wire [1:0] ram_header_src_T_1144_data;
  wire  ram_header_src_T_1144_addr;
  wire  ram_header_src_T_1144_en;
  wire [1:0] ram_header_src_T_1025_data;
  wire  ram_header_src_T_1025_addr;
  wire  ram_header_src_T_1025_mask;
  wire  ram_header_src_T_1025_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_dst [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_dst [0:0];
  `endif
  reg [31:0] GEN_1;
  wire [1:0] ram_header_dst_T_1144_data;
  wire  ram_header_dst_T_1144_addr;
  wire  ram_header_dst_T_1144_en;
  wire [1:0] ram_header_dst_T_1025_data;
  wire  ram_header_dst_T_1025_addr;
  wire  ram_header_dst_T_1025_mask;
  wire  ram_header_dst_T_1025_en;
  `ifdef USE_REGISTERS
    reg [25:0] ram_payload_addr_block [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [25:0] ram_payload_addr_block [0:0];
  `endif
  reg [31:0] GEN_2;
  wire [25:0] ram_payload_addr_block_T_1144_data;
  wire  ram_payload_addr_block_T_1144_addr;
  wire  ram_payload_addr_block_T_1144_en;
  wire [25:0] ram_payload_addr_block_T_1025_data;
  wire  ram_payload_addr_block_T_1025_addr;
  wire  ram_payload_addr_block_T_1025_mask;
  wire  ram_payload_addr_block_T_1025_en;
  reg  ram_payload_client_xact_id [0:0];
  reg [31:0] GEN_3;
  wire  ram_payload_client_xact_id_T_1144_data;
  wire  ram_payload_client_xact_id_T_1144_addr;
  wire  ram_payload_client_xact_id_T_1144_en;
  wire  ram_payload_client_xact_id_T_1025_data;
  wire  ram_payload_client_xact_id_T_1025_addr;
  wire  ram_payload_client_xact_id_T_1025_mask;
  wire  ram_payload_client_xact_id_T_1025_en;
  `ifdef USE_REGISTERS
    reg [2:0] ram_payload_addr_beat [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_payload_addr_beat [0:0];
  `endif
  reg [31:0] GEN_4;
  wire [2:0] ram_payload_addr_beat_T_1144_data;
  wire  ram_payload_addr_beat_T_1144_addr;
  wire  ram_payload_addr_beat_T_1144_en;
  wire [2:0] ram_payload_addr_beat_T_1025_data;
  wire  ram_payload_addr_beat_T_1025_addr;
  wire  ram_payload_addr_beat_T_1025_mask;
  wire  ram_payload_addr_beat_T_1025_en;
  reg  ram_payload_is_builtin_type [0:0];
  reg [31:0] GEN_5;
  wire  ram_payload_is_builtin_type_T_1144_data;
  wire  ram_payload_is_builtin_type_T_1144_addr;
  wire  ram_payload_is_builtin_type_T_1144_en;
  wire  ram_payload_is_builtin_type_T_1025_data;
  wire  ram_payload_is_builtin_type_T_1025_addr;
  wire  ram_payload_is_builtin_type_T_1025_mask;
  wire  ram_payload_is_builtin_type_T_1025_en;
  `ifdef USE_REGISTERS
    reg [2:0] ram_payload_a_type [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_payload_a_type [0:0];
  `endif
  reg [31:0] GEN_6;
  wire [2:0] ram_payload_a_type_T_1144_data;
  wire  ram_payload_a_type_T_1144_addr;
  wire  ram_payload_a_type_T_1144_en;
  wire [2:0] ram_payload_a_type_T_1025_data;
  wire  ram_payload_a_type_T_1025_addr;
  wire  ram_payload_a_type_T_1025_mask;
  wire  ram_payload_a_type_T_1025_en;
  `ifdef USE_REGISTERS
    reg [11:0] ram_payload_union [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [11:0] ram_payload_union [0:0];
  `endif
  reg [31:0] GEN_7;
  wire [11:0] ram_payload_union_T_1144_data;
  wire  ram_payload_union_T_1144_addr;
  wire  ram_payload_union_T_1144_en;
  wire [11:0] ram_payload_union_T_1025_data;
  wire  ram_payload_union_T_1025_addr;
  wire  ram_payload_union_T_1025_mask;
  wire  ram_payload_union_T_1025_en;
  `ifdef USE_REGISTERS
    reg [63:0] ram_payload_data [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [63:0] ram_payload_data [0:0];
  `endif
  reg [63:0] GEN_8;
  wire [63:0] ram_payload_data_T_1144_data;
  wire  ram_payload_data_T_1144_addr;
  wire  ram_payload_data_T_1144_en;
  wire [63:0] ram_payload_data_T_1025_data;
  wire  ram_payload_data_T_1025_addr;
  wire  ram_payload_data_T_1025_mask;
  wire  ram_payload_data_T_1025_en;
  reg  maybe_full;
  reg [31:0] GEN_9;
  wire  T_1022;
  wire  T_1023;
  wire  do_enq;
  wire  T_1024;
  wire  do_deq;
  wire  T_1139;
  wire  GEN_21;
  wire  T_1141;
  wire [1:0] T_1256;
  wire  ptr_diff;
  wire [1:0] T_1258;
  assign io_enq_ready = T_1022;
  assign io_deq_valid = T_1141;
  assign io_deq_bits_header_src = ram_header_src_T_1144_data;
  assign io_deq_bits_header_dst = ram_header_dst_T_1144_data;
  assign io_deq_bits_payload_addr_block = ram_payload_addr_block_T_1144_data;
  assign io_deq_bits_payload_client_xact_id = ram_payload_client_xact_id_T_1144_data;
  assign io_deq_bits_payload_addr_beat = ram_payload_addr_beat_T_1144_data;
  assign io_deq_bits_payload_is_builtin_type = ram_payload_is_builtin_type_T_1144_data;
  assign io_deq_bits_payload_a_type = ram_payload_a_type_T_1144_data;
  assign io_deq_bits_payload_union = ram_payload_union_T_1144_data;
  assign io_deq_bits_payload_data = ram_payload_data_T_1144_data;
  assign io_count = T_1258[0];
  assign ram_header_src_T_1144_addr = 1'h0;
  assign ram_header_src_T_1144_en = 1'h1;
  assign ram_header_src_T_1144_data = ram_header_src[ram_header_src_T_1144_addr];
  assign ram_header_src_T_1025_data = io_enq_bits_header_src;
  assign ram_header_src_T_1025_addr = 1'h0;
  assign ram_header_src_T_1025_mask = do_enq;
  assign ram_header_src_T_1025_en = do_enq;
  assign ram_header_dst_T_1144_addr = 1'h0;
  assign ram_header_dst_T_1144_en = 1'h1;
  assign ram_header_dst_T_1144_data = ram_header_dst[ram_header_dst_T_1144_addr];
  assign ram_header_dst_T_1025_data = io_enq_bits_header_dst;
  assign ram_header_dst_T_1025_addr = 1'h0;
  assign ram_header_dst_T_1025_mask = do_enq;
  assign ram_header_dst_T_1025_en = do_enq;
  assign ram_payload_addr_block_T_1144_addr = 1'h0;
  assign ram_payload_addr_block_T_1144_en = 1'h1;
  assign ram_payload_addr_block_T_1144_data = ram_payload_addr_block[ram_payload_addr_block_T_1144_addr];
  assign ram_payload_addr_block_T_1025_data = io_enq_bits_payload_addr_block;
  assign ram_payload_addr_block_T_1025_addr = 1'h0;
  assign ram_payload_addr_block_T_1025_mask = do_enq;
  assign ram_payload_addr_block_T_1025_en = do_enq;
  assign ram_payload_client_xact_id_T_1144_addr = 1'h0;
  assign ram_payload_client_xact_id_T_1144_en = 1'h1;
  assign ram_payload_client_xact_id_T_1144_data = ram_payload_client_xact_id[ram_payload_client_xact_id_T_1144_addr];
  assign ram_payload_client_xact_id_T_1025_data = io_enq_bits_payload_client_xact_id;
  assign ram_payload_client_xact_id_T_1025_addr = 1'h0;
  assign ram_payload_client_xact_id_T_1025_mask = do_enq;
  assign ram_payload_client_xact_id_T_1025_en = do_enq;
  assign ram_payload_addr_beat_T_1144_addr = 1'h0;
  assign ram_payload_addr_beat_T_1144_en = 1'h1;
  assign ram_payload_addr_beat_T_1144_data = ram_payload_addr_beat[ram_payload_addr_beat_T_1144_addr];
  assign ram_payload_addr_beat_T_1025_data = io_enq_bits_payload_addr_beat;
  assign ram_payload_addr_beat_T_1025_addr = 1'h0;
  assign ram_payload_addr_beat_T_1025_mask = do_enq;
  assign ram_payload_addr_beat_T_1025_en = do_enq;
  assign ram_payload_is_builtin_type_T_1144_addr = 1'h0;
  assign ram_payload_is_builtin_type_T_1144_en = 1'h1;
  assign ram_payload_is_builtin_type_T_1144_data = ram_payload_is_builtin_type[ram_payload_is_builtin_type_T_1144_addr];
  assign ram_payload_is_builtin_type_T_1025_data = io_enq_bits_payload_is_builtin_type;
  assign ram_payload_is_builtin_type_T_1025_addr = 1'h0;
  assign ram_payload_is_builtin_type_T_1025_mask = do_enq;
  assign ram_payload_is_builtin_type_T_1025_en = do_enq;
  assign ram_payload_a_type_T_1144_addr = 1'h0;
  assign ram_payload_a_type_T_1144_en = 1'h1;
  assign ram_payload_a_type_T_1144_data = ram_payload_a_type[ram_payload_a_type_T_1144_addr];
  assign ram_payload_a_type_T_1025_data = io_enq_bits_payload_a_type;
  assign ram_payload_a_type_T_1025_addr = 1'h0;
  assign ram_payload_a_type_T_1025_mask = do_enq;
  assign ram_payload_a_type_T_1025_en = do_enq;
  assign ram_payload_union_T_1144_addr = 1'h0;
  assign ram_payload_union_T_1144_en = 1'h1;
  assign ram_payload_union_T_1144_data = ram_payload_union[ram_payload_union_T_1144_addr];
  assign ram_payload_union_T_1025_data = io_enq_bits_payload_union;
  assign ram_payload_union_T_1025_addr = 1'h0;
  assign ram_payload_union_T_1025_mask = do_enq;
  assign ram_payload_union_T_1025_en = do_enq;
  assign ram_payload_data_T_1144_addr = 1'h0;
  assign ram_payload_data_T_1144_en = 1'h1;
  assign ram_payload_data_T_1144_data = ram_payload_data[ram_payload_data_T_1144_addr];
  assign ram_payload_data_T_1025_data = io_enq_bits_payload_data;
  assign ram_payload_data_T_1025_addr = 1'h0;
  assign ram_payload_data_T_1025_mask = do_enq;
  assign ram_payload_data_T_1025_en = do_enq;
  assign T_1022 = maybe_full == 1'h0;
  assign T_1023 = io_enq_ready & io_enq_valid;
  assign do_enq = T_1023;
  assign T_1024 = io_deq_ready & io_deq_valid;
  assign do_deq = T_1024;
  assign T_1139 = do_enq != do_deq;
  assign GEN_21 = T_1139 ? do_enq : maybe_full;
  assign T_1141 = T_1022 == 1'h0;
  assign T_1256 = 1'h0 - 1'h0;
  assign ptr_diff = T_1256[0:0];
  assign T_1258 = {maybe_full,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_header_src[initvar] = GEN_0[1:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_header_dst[initvar] = GEN_1[1:0];
  `endif
  GEN_2 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_addr_block[initvar] = GEN_2[25:0];
  `endif
  GEN_3 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_client_xact_id[initvar] = GEN_3[0:0];
  `endif
  GEN_4 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_addr_beat[initvar] = GEN_4[2:0];
  `endif
  GEN_5 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_is_builtin_type[initvar] = GEN_5[0:0];
  `endif
  GEN_6 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_a_type[initvar] = GEN_6[2:0];
  `endif
  GEN_7 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_union[initvar] = GEN_7[11:0];
  `endif
  GEN_8 = {2{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_payload_data[initvar] = GEN_8[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_9 = {1{$random}};
  maybe_full = GEN_9[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_header_src_T_1025_en & ram_header_src_T_1025_mask) begin
      ram_header_src[ram_header_src_T_1025_addr] <= ram_header_src_T_1025_data;
    end
    if(ram_header_dst_T_1025_en & ram_header_dst_T_1025_mask) begin
      ram_header_dst[ram_header_dst_T_1025_addr] <= ram_header_dst_T_1025_data;
    end
    if(ram_payload_addr_block_T_1025_en & ram_payload_addr_block_T_1025_mask) begin
      ram_payload_addr_block[ram_payload_addr_block_T_1025_addr] <= ram_payload_addr_block_T_1025_data;
    end
    if(ram_payload_client_xact_id_T_1025_en & ram_payload_client_xact_id_T_1025_mask) begin
      ram_payload_client_xact_id[ram_payload_client_xact_id_T_1025_addr] <= ram_payload_client_xact_id_T_1025_data;
    end
    if(ram_payload_addr_beat_T_1025_en & ram_payload_addr_beat_T_1025_mask) begin
      ram_payload_addr_beat[ram_payload_addr_beat_T_1025_addr] <= ram_payload_addr_beat_T_1025_data;
    end
    if(ram_payload_is_builtin_type_T_1025_en & ram_payload_is_builtin_type_T_1025_mask) begin
      ram_payload_is_builtin_type[ram_payload_is_builtin_type_T_1025_addr] <= ram_payload_is_builtin_type_T_1025_data;
    end
    if(ram_payload_a_type_T_1025_en & ram_payload_a_type_T_1025_mask) begin
      ram_payload_a_type[ram_payload_a_type_T_1025_addr] <= ram_payload_a_type_T_1025_data;
    end
    if(ram_payload_union_T_1025_en & ram_payload_union_T_1025_mask) begin
      ram_payload_union[ram_payload_union_T_1025_addr] <= ram_payload_union_T_1025_data;
    end
    if(ram_payload_data_T_1025_en & ram_payload_data_T_1025_mask) begin
      ram_payload_data[ram_payload_data_T_1025_addr] <= ram_payload_data_T_1025_data;
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
