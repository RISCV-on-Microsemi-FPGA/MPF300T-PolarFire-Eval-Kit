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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_1(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [1:0] io_enq_bits_header_src,
  input  [1:0] io_enq_bits_header_dst,
  input  [25:0] io_enq_bits_payload_addr_block,
  input  [1:0] io_enq_bits_payload_p_type,
  input   io_deq_ready,
  output  io_deq_valid,
  output [1:0] io_deq_bits_header_src,
  output [1:0] io_deq_bits_header_dst,
  output [25:0] io_deq_bits_payload_addr_block,
  output [1:0] io_deq_bits_payload_p_type,
  output  io_count
);
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_src [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_src [0:0];
  `endif
  reg [31:0] GEN_0;
  wire [1:0] ram_header_src_T_1094_data;
  wire  ram_header_src_T_1094_addr;
  wire  ram_header_src_T_1094_en;
  wire [1:0] ram_header_src_T_980_data;
  wire  ram_header_src_T_980_addr;
  wire  ram_header_src_T_980_mask;
  wire  ram_header_src_T_980_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_header_dst [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_header_dst [0:0];
  `endif
  reg [31:0] GEN_1;
  wire [1:0] ram_header_dst_T_1094_data;
  wire  ram_header_dst_T_1094_addr;
  wire  ram_header_dst_T_1094_en;
  wire [1:0] ram_header_dst_T_980_data;
  wire  ram_header_dst_T_980_addr;
  wire  ram_header_dst_T_980_mask;
  wire  ram_header_dst_T_980_en;
  `ifdef USE_REGISTERS
    reg [25:0] ram_payload_addr_block [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [25:0] ram_payload_addr_block [0:0];
  `endif
  reg [31:0] GEN_2;
  wire [25:0] ram_payload_addr_block_T_1094_data;
  wire  ram_payload_addr_block_T_1094_addr;
  wire  ram_payload_addr_block_T_1094_en;
  wire [25:0] ram_payload_addr_block_T_980_data;
  wire  ram_payload_addr_block_T_980_addr;
  wire  ram_payload_addr_block_T_980_mask;
  wire  ram_payload_addr_block_T_980_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_payload_p_type [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_payload_p_type [0:0];
  `endif
  reg [31:0] GEN_3;
  wire [1:0] ram_payload_p_type_T_1094_data;
  wire  ram_payload_p_type_T_1094_addr;
  wire  ram_payload_p_type_T_1094_en;
  wire [1:0] ram_payload_p_type_T_980_data;
  wire  ram_payload_p_type_T_980_addr;
  wire  ram_payload_p_type_T_980_mask;
  wire  ram_payload_p_type_T_980_en;
  reg  maybe_full;
  reg [31:0] GEN_4;
  wire  T_977;
  wire  T_978;
  wire  do_enq;
  wire  T_979;
  wire  do_deq;
  wire  T_1089;
  wire  GEN_11;
  wire  T_1091;
  wire [1:0] T_1201;
  wire  ptr_diff;
  wire [1:0] T_1203;
  assign io_enq_ready = T_977;
  assign io_deq_valid = T_1091;
  assign io_deq_bits_header_src = ram_header_src_T_1094_data;
  assign io_deq_bits_header_dst = ram_header_dst_T_1094_data;
  assign io_deq_bits_payload_addr_block = ram_payload_addr_block_T_1094_data;
  assign io_deq_bits_payload_p_type = ram_payload_p_type_T_1094_data;
  assign io_count = T_1203[0];
  assign ram_header_src_T_1094_addr = 1'h0;
  assign ram_header_src_T_1094_en = 1'h1;
  assign ram_header_src_T_1094_data = ram_header_src[ram_header_src_T_1094_addr];
  assign ram_header_src_T_980_data = io_enq_bits_header_src;
  assign ram_header_src_T_980_addr = 1'h0;
  assign ram_header_src_T_980_mask = do_enq;
  assign ram_header_src_T_980_en = do_enq;
  assign ram_header_dst_T_1094_addr = 1'h0;
  assign ram_header_dst_T_1094_en = 1'h1;
  assign ram_header_dst_T_1094_data = ram_header_dst[ram_header_dst_T_1094_addr];
  assign ram_header_dst_T_980_data = io_enq_bits_header_dst;
  assign ram_header_dst_T_980_addr = 1'h0;
  assign ram_header_dst_T_980_mask = do_enq;
  assign ram_header_dst_T_980_en = do_enq;
  assign ram_payload_addr_block_T_1094_addr = 1'h0;
  assign ram_payload_addr_block_T_1094_en = 1'h1;
  assign ram_payload_addr_block_T_1094_data = ram_payload_addr_block[ram_payload_addr_block_T_1094_addr];
  assign ram_payload_addr_block_T_980_data = io_enq_bits_payload_addr_block;
  assign ram_payload_addr_block_T_980_addr = 1'h0;
  assign ram_payload_addr_block_T_980_mask = do_enq;
  assign ram_payload_addr_block_T_980_en = do_enq;
  assign ram_payload_p_type_T_1094_addr = 1'h0;
  assign ram_payload_p_type_T_1094_en = 1'h1;
  assign ram_payload_p_type_T_1094_data = ram_payload_p_type[ram_payload_p_type_T_1094_addr];
  assign ram_payload_p_type_T_980_data = io_enq_bits_payload_p_type;
  assign ram_payload_p_type_T_980_addr = 1'h0;
  assign ram_payload_p_type_T_980_mask = do_enq;
  assign ram_payload_p_type_T_980_en = do_enq;
  assign T_977 = maybe_full == 1'h0;
  assign T_978 = io_enq_ready & io_enq_valid;
  assign do_enq = T_978;
  assign T_979 = io_deq_ready & io_deq_valid;
  assign do_deq = T_979;
  assign T_1089 = do_enq != do_deq;
  assign GEN_11 = T_1089 ? do_enq : maybe_full;
  assign T_1091 = T_977 == 1'h0;
  assign T_1201 = 1'h0 - 1'h0;
  assign ptr_diff = T_1201[0:0];
  assign T_1203 = {maybe_full,ptr_diff};
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
    ram_payload_p_type[initvar] = GEN_3[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_4 = {1{$random}};
  maybe_full = GEN_4[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_header_src_T_980_en & ram_header_src_T_980_mask) begin
      ram_header_src[ram_header_src_T_980_addr] <= ram_header_src_T_980_data;
    end
    if(ram_header_dst_T_980_en & ram_header_dst_T_980_mask) begin
      ram_header_dst[ram_header_dst_T_980_addr] <= ram_header_dst_T_980_data;
    end
    if(ram_payload_addr_block_T_980_en & ram_payload_addr_block_T_980_mask) begin
      ram_payload_addr_block[ram_payload_addr_block_T_980_addr] <= ram_payload_addr_block_T_980_data;
    end
    if(ram_payload_p_type_T_980_en & ram_payload_p_type_T_980_mask) begin
      ram_payload_p_type[ram_payload_p_type_T_980_addr] <= ram_payload_p_type_T_980_data;
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_1089) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
