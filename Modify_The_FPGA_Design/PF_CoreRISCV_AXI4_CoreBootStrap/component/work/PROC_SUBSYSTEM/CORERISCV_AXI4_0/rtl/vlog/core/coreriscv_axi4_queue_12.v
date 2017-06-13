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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_12(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input   io_enq_bits_last,
  input  [4:0] io_enq_bits_id,
  input  [7:0] io_enq_bits_strb,
  input   io_enq_bits_user,
  input   io_deq_ready,
  output  io_deq_valid,
  output [63:0] io_deq_bits_data,
  output  io_deq_bits_last,
  output [4:0] io_deq_bits_id,
  output [7:0] io_deq_bits_strb,
  output  io_deq_bits_user,
  output [1:0] io_count
);
  `ifdef USE_REGISTERS
    reg [63:0] ram_data [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [63:0] ram_data [0:1];
  `endif
  reg [63:0] GEN_0;
  wire [63:0] ram_data_T_94_data;
  wire  ram_data_T_94_addr;
  wire  ram_data_T_94_en;
  wire [63:0] ram_data_T_73_data;
  wire  ram_data_T_73_addr;
  wire  ram_data_T_73_mask;
  wire  ram_data_T_73_en;
  reg  ram_last [0:1];
  reg [31:0] GEN_1;
  wire  ram_last_T_94_data;
  wire  ram_last_T_94_addr;
  wire  ram_last_T_94_en;
  wire  ram_last_T_73_data;
  wire  ram_last_T_73_addr;
  wire  ram_last_T_73_mask;
  wire  ram_last_T_73_en;
  `ifdef USE_REGISTERS
    reg [4:0] ram_id [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [4:0] ram_id [0:1];
  `endif
  reg [31:0] GEN_2;
  wire [4:0] ram_id_T_94_data;
  wire  ram_id_T_94_addr;
  wire  ram_id_T_94_en;
  wire [4:0] ram_id_T_73_data;
  wire  ram_id_T_73_addr;
  wire  ram_id_T_73_mask;
  wire  ram_id_T_73_en;
  `ifdef USE_REGISTERS
    reg [7:0] ram_strb [0:1] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [7:0] ram_strb [0:1];
  `endif
  reg [31:0] GEN_3;
  wire [7:0] ram_strb_T_94_data;
  wire  ram_strb_T_94_addr;
  wire  ram_strb_T_94_en;
  wire [7:0] ram_strb_T_73_data;
  wire  ram_strb_T_73_addr;
  wire  ram_strb_T_73_mask;
  wire  ram_strb_T_73_en;
  reg  ram_user [0:1];
  reg [31:0] GEN_4;
  wire  ram_user_T_94_data;
  wire  ram_user_T_94_addr;
  wire  ram_user_T_94_en;
  wire  ram_user_T_73_data;
  wire  ram_user_T_73_addr;
  wire  ram_user_T_73_mask;
  wire  ram_user_T_73_en;
  reg  T_65;
  reg [31:0] GEN_5;
  reg  T_67;
  reg [31:0] GEN_6;
  reg  maybe_full;
  reg [31:0] GEN_7;
  wire  ptr_match;
  wire  T_70;
  wire  empty;
  wire  full;
  wire  T_71;
  wire  do_enq;
  wire  T_72;
  wire  do_deq;
  wire [1:0] T_82;
  wire  T_83;
  wire  GEN_13;
  wire [1:0] T_87;
  wire  T_88;
  wire  GEN_14;
  wire  T_89;
  wire  GEN_15;
  wire  T_91;
  wire  T_93;
  wire [1:0] T_100;
  wire  ptr_diff;
  wire  T_101;
  wire [1:0] T_102;
  assign io_enq_ready = T_93;
  assign io_deq_valid = T_91;
  assign io_deq_bits_data = ram_data_T_94_data;
  assign io_deq_bits_last = ram_last_T_94_data;
  assign io_deq_bits_id = ram_id_T_94_data;
  assign io_deq_bits_strb = ram_strb_T_94_data;
  assign io_deq_bits_user = ram_user_T_94_data;
  assign io_count = T_102;
  assign ram_data_T_94_addr = T_67;
  assign ram_data_T_94_en = 1'h1;
  assign ram_data_T_94_data = ram_data[ram_data_T_94_addr];
  assign ram_data_T_73_data = io_enq_bits_data;
  assign ram_data_T_73_addr = T_65;
  assign ram_data_T_73_mask = do_enq;
  assign ram_data_T_73_en = do_enq;
  assign ram_last_T_94_addr = T_67;
  assign ram_last_T_94_en = 1'h1;
  assign ram_last_T_94_data = ram_last[ram_last_T_94_addr];
  assign ram_last_T_73_data = io_enq_bits_last;
  assign ram_last_T_73_addr = T_65;
  assign ram_last_T_73_mask = do_enq;
  assign ram_last_T_73_en = do_enq;
  assign ram_id_T_94_addr = T_67;
  assign ram_id_T_94_en = 1'h1;
  assign ram_id_T_94_data = ram_id[ram_id_T_94_addr];
  assign ram_id_T_73_data = io_enq_bits_id;
  assign ram_id_T_73_addr = T_65;
  assign ram_id_T_73_mask = do_enq;
  assign ram_id_T_73_en = do_enq;
  assign ram_strb_T_94_addr = T_67;
  assign ram_strb_T_94_en = 1'h1;
  assign ram_strb_T_94_data = ram_strb[ram_strb_T_94_addr];
  assign ram_strb_T_73_data = io_enq_bits_strb;
  assign ram_strb_T_73_addr = T_65;
  assign ram_strb_T_73_mask = do_enq;
  assign ram_strb_T_73_en = do_enq;
  assign ram_user_T_94_addr = T_67;
  assign ram_user_T_94_en = 1'h1;
  assign ram_user_T_94_data = ram_user[ram_user_T_94_addr];
  assign ram_user_T_73_data = io_enq_bits_user;
  assign ram_user_T_73_addr = T_65;
  assign ram_user_T_73_mask = do_enq;
  assign ram_user_T_73_en = do_enq;
  assign ptr_match = T_65 == T_67;
  assign T_70 = maybe_full == 1'h0;
  assign empty = ptr_match & T_70;
  assign full = ptr_match & maybe_full;
  assign T_71 = io_enq_ready & io_enq_valid;
  assign do_enq = T_71;
  assign T_72 = io_deq_ready & io_deq_valid;
  assign do_deq = T_72;
  assign T_82 = T_65 + 1'h1;
  assign T_83 = T_82[0:0];
  assign GEN_13 = do_enq ? T_83 : T_65;
  assign T_87 = T_67 + 1'h1;
  assign T_88 = T_87[0:0];
  assign GEN_14 = do_deq ? T_88 : T_67;
  assign T_89 = do_enq != do_deq;
  assign GEN_15 = T_89 ? do_enq : maybe_full;
  assign T_91 = empty == 1'h0;
  assign T_93 = full == 1'h0;
  assign T_100 = T_65 - T_67;
  assign ptr_diff = T_100[0:0];
  assign T_101 = maybe_full & ptr_match;
  assign T_102 = {T_101,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {2{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = GEN_0[63:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = GEN_1[0:0];
  `endif
  GEN_2 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = GEN_2[4:0];
  `endif
  GEN_3 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_strb[initvar] = GEN_3[7:0];
  `endif
  GEN_4 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user[initvar] = GEN_4[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_5 = {1{$random}};
  T_65 = GEN_5[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_6 = {1{$random}};
  T_67 = GEN_6[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_7 = {1{$random}};
  maybe_full = GEN_7[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_data_T_73_en & ram_data_T_73_mask) begin
      ram_data[ram_data_T_73_addr] <= ram_data_T_73_data;
    end
    if(ram_last_T_73_en & ram_last_T_73_mask) begin
      ram_last[ram_last_T_73_addr] <= ram_last_T_73_data;
    end
    if(ram_id_T_73_en & ram_id_T_73_mask) begin
      ram_id[ram_id_T_73_addr] <= ram_id_T_73_data;
    end
    if(ram_strb_T_73_en & ram_strb_T_73_mask) begin
      ram_strb[ram_strb_T_73_addr] <= ram_strb_T_73_data;
    end
    if(ram_user_T_73_en & ram_user_T_73_mask) begin
      ram_user[ram_user_T_73_addr] <= ram_user_T_73_data;
    end
    if(reset) begin
      T_65 <= 1'h0;
    end else begin
      if(do_enq) begin
        T_65 <= T_83;
      end
    end
    if(reset) begin
      T_67 <= 1'h0;
    end else begin
      if(do_deq) begin
        T_67 <= T_88;
      end
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_89) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
