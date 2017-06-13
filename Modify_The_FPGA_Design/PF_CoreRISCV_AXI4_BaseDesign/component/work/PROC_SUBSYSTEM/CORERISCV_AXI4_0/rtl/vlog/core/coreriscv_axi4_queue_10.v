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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_10(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [31:0] io_enq_bits_addr,
  input  [7:0] io_enq_bits_len,
  input  [2:0] io_enq_bits_size,
  input  [1:0] io_enq_bits_burst,
  input   io_enq_bits_lock,
  input  [3:0] io_enq_bits_cache,
  input  [2:0] io_enq_bits_prot,
  input  [3:0] io_enq_bits_qos,
  input  [3:0] io_enq_bits_region,
  input  [4:0] io_enq_bits_id,
  input   io_enq_bits_user,
  input   io_deq_ready,
  output  io_deq_valid,
  output [31:0] io_deq_bits_addr,
  output [7:0] io_deq_bits_len,
  output [2:0] io_deq_bits_size,
  output [1:0] io_deq_bits_burst,
  output  io_deq_bits_lock,
  output [3:0] io_deq_bits_cache,
  output [2:0] io_deq_bits_prot,
  output [3:0] io_deq_bits_qos,
  output [3:0] io_deq_bits_region,
  output [4:0] io_deq_bits_id,
  output  io_deq_bits_user,
  output  io_count
);
  `ifdef USE_REGISTERS
    reg [31:0] ram_addr [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [31:0] ram_addr [0:0];
  `endif
  reg [31:0] GEN_0;
  wire [31:0] ram_addr_T_144_data;
  wire  ram_addr_T_144_addr;
  wire  ram_addr_T_144_en;
  wire [31:0] ram_addr_T_125_data;
  wire  ram_addr_T_125_addr;
  wire  ram_addr_T_125_mask;
  wire  ram_addr_T_125_en;
  `ifdef USE_REGISTERS
    reg [7:0] ram_len [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [7:0] ram_len [0:0];
  `endif
  reg [31:0] GEN_1;
  wire [7:0] ram_len_T_144_data;
  wire  ram_len_T_144_addr;
  wire  ram_len_T_144_en;
  wire [7:0] ram_len_T_125_data;
  wire  ram_len_T_125_addr;
  wire  ram_len_T_125_mask;
  wire  ram_len_T_125_en;
  `ifdef USE_REGISTERS
    reg [2:0] ram_size [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_size [0:0];
  `endif
  reg [31:0] GEN_2;
  wire [2:0] ram_size_T_144_data;
  wire  ram_size_T_144_addr;
  wire  ram_size_T_144_en;
  wire [2:0] ram_size_T_125_data;
  wire  ram_size_T_125_addr;
  wire  ram_size_T_125_mask;
  wire  ram_size_T_125_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_burst [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_burst [0:0];
  `endif
  reg [31:0] GEN_3;
  wire [1:0] ram_burst_T_144_data;
  wire  ram_burst_T_144_addr;
  wire  ram_burst_T_144_en;
  wire [1:0] ram_burst_T_125_data;
  wire  ram_burst_T_125_addr;
  wire  ram_burst_T_125_mask;
  wire  ram_burst_T_125_en;
  reg  ram_lock [0:0];
  reg [31:0] GEN_4;
  wire  ram_lock_T_144_data;
  wire  ram_lock_T_144_addr;
  wire  ram_lock_T_144_en;
  wire  ram_lock_T_125_data;
  wire  ram_lock_T_125_addr;
  wire  ram_lock_T_125_mask;
  wire  ram_lock_T_125_en;
  `ifdef USE_REGISTERS
    reg [3:0] ram_cache [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [3:0] ram_cache [0:0];
  `endif
  reg [31:0] GEN_5;
  wire [3:0] ram_cache_T_144_data;
  wire  ram_cache_T_144_addr;
  wire  ram_cache_T_144_en;
  wire [3:0] ram_cache_T_125_data;
  wire  ram_cache_T_125_addr;
  wire  ram_cache_T_125_mask;
  wire  ram_cache_T_125_en;
  `ifdef USE_REGISTERS
    reg [2:0] ram_prot [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_prot [0:0];
  `endif
  reg [31:0] GEN_6;
  wire [2:0] ram_prot_T_144_data;
  wire  ram_prot_T_144_addr;
  wire  ram_prot_T_144_en;
  wire [2:0] ram_prot_T_125_data;
  wire  ram_prot_T_125_addr;
  wire  ram_prot_T_125_mask;
  wire  ram_prot_T_125_en;
  `ifdef USE_REGISTERS
    reg [3:0] ram_qos [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [3:0] ram_qos [0:0];
  `endif
  reg [31:0] GEN_7;
  wire [3:0] ram_qos_T_144_data;
  wire  ram_qos_T_144_addr;
  wire  ram_qos_T_144_en;
  wire [3:0] ram_qos_T_125_data;
  wire  ram_qos_T_125_addr;
  wire  ram_qos_T_125_mask;
  wire  ram_qos_T_125_en;
  `ifdef USE_REGISTERS
    reg [3:0] ram_region [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [3:0] ram_region [0:0];
  `endif
  reg [31:0] GEN_8;
  wire [3:0] ram_region_T_144_data;
  wire  ram_region_T_144_addr;
  wire  ram_region_T_144_en;
  wire [3:0] ram_region_T_125_data;
  wire  ram_region_T_125_addr;
  wire  ram_region_T_125_mask;
  wire  ram_region_T_125_en;
  `ifdef USE_REGISTERS
    reg [4:0] ram_id [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [4:0] ram_id [0:0];
  `endif
  reg [31:0] GEN_9;
  wire [4:0] ram_id_T_144_data;
  wire  ram_id_T_144_addr;
  wire  ram_id_T_144_en;
  wire [4:0] ram_id_T_125_data;
  wire  ram_id_T_125_addr;
  wire  ram_id_T_125_mask;
  wire  ram_id_T_125_en;
  reg  ram_user [0:0];
  reg [31:0] GEN_10;
  wire  ram_user_T_144_data;
  wire  ram_user_T_144_addr;
  wire  ram_user_T_144_en;
  wire  ram_user_T_125_data;
  wire  ram_user_T_125_addr;
  wire  ram_user_T_125_mask;
  wire  ram_user_T_125_en;
  reg  maybe_full;
  reg [31:0] GEN_11;
  wire  T_122;
  wire  T_123;
  wire  do_enq;
  wire  T_124;
  wire  do_deq;
  wire  T_139;
  wire  GEN_25;
  wire  T_141;
  wire [1:0] T_156;
  wire  ptr_diff;
  wire [1:0] T_158;
  assign io_enq_ready = T_122;
  assign io_deq_valid = T_141;
  assign io_deq_bits_addr = ram_addr_T_144_data;
  assign io_deq_bits_len = ram_len_T_144_data;
  assign io_deq_bits_size = ram_size_T_144_data;
  assign io_deq_bits_burst = ram_burst_T_144_data;
  assign io_deq_bits_lock = ram_lock_T_144_data;
  assign io_deq_bits_cache = ram_cache_T_144_data;
  assign io_deq_bits_prot = ram_prot_T_144_data;
  assign io_deq_bits_qos = ram_qos_T_144_data;
  assign io_deq_bits_region = ram_region_T_144_data;
  assign io_deq_bits_id = ram_id_T_144_data;
  assign io_deq_bits_user = ram_user_T_144_data;
  assign io_count = T_158[0];
  assign ram_addr_T_144_addr = 1'h0;
  assign ram_addr_T_144_en = 1'h1;
  assign ram_addr_T_144_data = ram_addr[ram_addr_T_144_addr];
  assign ram_addr_T_125_data = io_enq_bits_addr;
  assign ram_addr_T_125_addr = 1'h0;
  assign ram_addr_T_125_mask = do_enq;
  assign ram_addr_T_125_en = do_enq;
  assign ram_len_T_144_addr = 1'h0;
  assign ram_len_T_144_en = 1'h1;
  assign ram_len_T_144_data = ram_len[ram_len_T_144_addr];
  assign ram_len_T_125_data = io_enq_bits_len;
  assign ram_len_T_125_addr = 1'h0;
  assign ram_len_T_125_mask = do_enq;
  assign ram_len_T_125_en = do_enq;
  assign ram_size_T_144_addr = 1'h0;
  assign ram_size_T_144_en = 1'h1;
  assign ram_size_T_144_data = ram_size[ram_size_T_144_addr];
  assign ram_size_T_125_data = io_enq_bits_size;
  assign ram_size_T_125_addr = 1'h0;
  assign ram_size_T_125_mask = do_enq;
  assign ram_size_T_125_en = do_enq;
  assign ram_burst_T_144_addr = 1'h0;
  assign ram_burst_T_144_en = 1'h1;
  assign ram_burst_T_144_data = ram_burst[ram_burst_T_144_addr];
  assign ram_burst_T_125_data = io_enq_bits_burst;
  assign ram_burst_T_125_addr = 1'h0;
  assign ram_burst_T_125_mask = do_enq;
  assign ram_burst_T_125_en = do_enq;
  assign ram_lock_T_144_addr = 1'h0;
  assign ram_lock_T_144_en = 1'h1;
  assign ram_lock_T_144_data = ram_lock[ram_lock_T_144_addr];
  assign ram_lock_T_125_data = io_enq_bits_lock;
  assign ram_lock_T_125_addr = 1'h0;
  assign ram_lock_T_125_mask = do_enq;
  assign ram_lock_T_125_en = do_enq;
  assign ram_cache_T_144_addr = 1'h0;
  assign ram_cache_T_144_en = 1'h1;
  assign ram_cache_T_144_data = ram_cache[ram_cache_T_144_addr];
  assign ram_cache_T_125_data = io_enq_bits_cache;
  assign ram_cache_T_125_addr = 1'h0;
  assign ram_cache_T_125_mask = do_enq;
  assign ram_cache_T_125_en = do_enq;
  assign ram_prot_T_144_addr = 1'h0;
  assign ram_prot_T_144_en = 1'h1;
  assign ram_prot_T_144_data = ram_prot[ram_prot_T_144_addr];
  assign ram_prot_T_125_data = io_enq_bits_prot;
  assign ram_prot_T_125_addr = 1'h0;
  assign ram_prot_T_125_mask = do_enq;
  assign ram_prot_T_125_en = do_enq;
  assign ram_qos_T_144_addr = 1'h0;
  assign ram_qos_T_144_en = 1'h1;
  assign ram_qos_T_144_data = ram_qos[ram_qos_T_144_addr];
  assign ram_qos_T_125_data = io_enq_bits_qos;
  assign ram_qos_T_125_addr = 1'h0;
  assign ram_qos_T_125_mask = do_enq;
  assign ram_qos_T_125_en = do_enq;
  assign ram_region_T_144_addr = 1'h0;
  assign ram_region_T_144_en = 1'h1;
  assign ram_region_T_144_data = ram_region[ram_region_T_144_addr];
  assign ram_region_T_125_data = io_enq_bits_region;
  assign ram_region_T_125_addr = 1'h0;
  assign ram_region_T_125_mask = do_enq;
  assign ram_region_T_125_en = do_enq;
  assign ram_id_T_144_addr = 1'h0;
  assign ram_id_T_144_en = 1'h1;
  assign ram_id_T_144_data = ram_id[ram_id_T_144_addr];
  assign ram_id_T_125_data = io_enq_bits_id;
  assign ram_id_T_125_addr = 1'h0;
  assign ram_id_T_125_mask = do_enq;
  assign ram_id_T_125_en = do_enq;
  assign ram_user_T_144_addr = 1'h0;
  assign ram_user_T_144_en = 1'h1;
  assign ram_user_T_144_data = ram_user[ram_user_T_144_addr];
  assign ram_user_T_125_data = io_enq_bits_user;
  assign ram_user_T_125_addr = 1'h0;
  assign ram_user_T_125_mask = do_enq;
  assign ram_user_T_125_en = do_enq;
  assign T_122 = maybe_full == 1'h0;
  assign T_123 = io_enq_ready & io_enq_valid;
  assign do_enq = T_123;
  assign T_124 = io_deq_ready & io_deq_valid;
  assign do_deq = T_124;
  assign T_139 = do_enq != do_deq;
  assign GEN_25 = T_139 ? do_enq : maybe_full;
  assign T_141 = T_122 == 1'h0;
  assign T_156 = 1'h0 - 1'h0;
  assign ptr_diff = T_156[0:0];
  assign T_158 = {maybe_full,ptr_diff};
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_0 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_addr[initvar] = GEN_0[31:0];
  `endif
  GEN_1 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_len[initvar] = GEN_1[7:0];
  `endif
  GEN_2 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = GEN_2[2:0];
  `endif
  GEN_3 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_burst[initvar] = GEN_3[1:0];
  `endif
  GEN_4 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_lock[initvar] = GEN_4[0:0];
  `endif
  GEN_5 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_cache[initvar] = GEN_5[3:0];
  `endif
  GEN_6 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_prot[initvar] = GEN_6[2:0];
  `endif
  GEN_7 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_qos[initvar] = GEN_7[3:0];
  `endif
  GEN_8 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_region[initvar] = GEN_8[3:0];
  `endif
  GEN_9 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_id[initvar] = GEN_9[4:0];
  `endif
  GEN_10 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_user[initvar] = GEN_10[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_11 = {1{$random}};
  maybe_full = GEN_11[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(ram_addr_T_125_en & ram_addr_T_125_mask) begin
      ram_addr[ram_addr_T_125_addr] <= ram_addr_T_125_data;
    end
    if(ram_len_T_125_en & ram_len_T_125_mask) begin
      ram_len[ram_len_T_125_addr] <= ram_len_T_125_data;
    end
    if(ram_size_T_125_en & ram_size_T_125_mask) begin
      ram_size[ram_size_T_125_addr] <= ram_size_T_125_data;
    end
    if(ram_burst_T_125_en & ram_burst_T_125_mask) begin
      ram_burst[ram_burst_T_125_addr] <= ram_burst_T_125_data;
    end
    if(ram_lock_T_125_en & ram_lock_T_125_mask) begin
      ram_lock[ram_lock_T_125_addr] <= ram_lock_T_125_data;
    end
    if(ram_cache_T_125_en & ram_cache_T_125_mask) begin
      ram_cache[ram_cache_T_125_addr] <= ram_cache_T_125_data;
    end
    if(ram_prot_T_125_en & ram_prot_T_125_mask) begin
      ram_prot[ram_prot_T_125_addr] <= ram_prot_T_125_data;
    end
    if(ram_qos_T_125_en & ram_qos_T_125_mask) begin
      ram_qos[ram_qos_T_125_addr] <= ram_qos_T_125_data;
    end
    if(ram_region_T_125_en & ram_region_T_125_mask) begin
      ram_region[ram_region_T_125_addr] <= ram_region_T_125_data;
    end
    if(ram_id_T_125_en & ram_id_T_125_mask) begin
      ram_id[ram_id_T_125_addr] <= ram_id_T_125_data;
    end
    if(ram_user_T_125_en & ram_user_T_125_mask) begin
      ram_user[ram_user_T_125_addr] <= ram_user_T_125_data;
    end
    if(reset) begin
      maybe_full <= 1'h0;
    end else begin
      if(T_139) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
