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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE_3(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input  [2:0] io_enq_bits_data_addr_beat,
  input   io_enq_bits_data_subblock,
  input  [1:0] io_enq_bits_tag,
  input   io_deq_valid,
  input  [1:0] io_deq_tag,
  output [2:0] io_deq_data_addr_beat,
  output  io_deq_data_subblock,
  output  io_deq_matches
);
  `ifdef USE_REGISTERS
    reg [2:0] T_184_addr_beat [0:3] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] T_184_addr_beat [0:3];
  `endif
  reg [31:0] GEN_14;
  wire [2:0] T_184_addr_beat_T_200_data;
  wire [1:0] T_184_addr_beat_T_200_addr;
  wire  T_184_addr_beat_T_200_en;
  wire [2:0] T_184_addr_beat_T_221_data;
  wire [1:0] T_184_addr_beat_T_221_addr;
  wire  T_184_addr_beat_T_221_mask;
  wire  T_184_addr_beat_T_221_en;
  reg  T_184_subblock [0:3];
  reg [31:0] GEN_15;
  wire  T_184_subblock_T_200_data;
  wire [1:0] T_184_subblock_T_200_addr;
  wire  T_184_subblock_T_200_en;
  wire  T_184_subblock_T_221_data;
  wire [1:0] T_184_subblock_T_221_addr;
  wire  T_184_subblock_T_221_mask;
  wire  T_184_subblock_T_221_en;
  wire  T_194_0;
  wire  T_194_1;
  wire  T_194_2;
  wire  T_194_3;
  reg  T_198_0;
  reg [31:0] GEN_16;
  reg  T_198_1;
  reg [31:0] GEN_17;
  reg  T_198_2;
  reg [31:0] GEN_18;
  reg  T_198_3;
  reg [31:0] GEN_19;
  wire  GEN_0;
  wire  GEN_4;
  wire  GEN_5;
  wire  GEN_6;
  wire  GEN_1;
  wire  GEN_7;
  wire  GEN_8;
  wire  GEN_9;
  wire  T_219;
  wire  T_220;
  wire  GEN_2;
  wire  GEN_10;
  wire  GEN_11;
  wire  GEN_12;
  wire  GEN_13;
  wire  GEN_22;
  wire  GEN_23;
  wire  GEN_24;
  wire  GEN_25;
  wire  GEN_3;
  wire  GEN_26;
  wire  GEN_27;
  wire  GEN_28;
  wire  GEN_29;
  wire  GEN_31;
  wire  GEN_32;
  wire  GEN_33;
  wire  GEN_34;
  assign io_enq_ready = GEN_0;
  assign io_deq_data_addr_beat = T_184_addr_beat_T_200_data;
  assign io_deq_data_subblock = T_184_subblock_T_200_data;
  assign io_deq_matches = T_219;
  assign T_184_addr_beat_T_200_addr = io_deq_tag;
  assign T_184_addr_beat_T_200_en = 1'h1;
  assign T_184_addr_beat_T_200_data = T_184_addr_beat[T_184_addr_beat_T_200_addr];
  assign T_184_addr_beat_T_221_data = io_enq_bits_data_addr_beat;
  assign T_184_addr_beat_T_221_addr = io_enq_bits_tag;
  assign T_184_addr_beat_T_221_mask = T_220;
  assign T_184_addr_beat_T_221_en = T_220;
  assign T_184_subblock_T_200_addr = io_deq_tag;
  assign T_184_subblock_T_200_en = 1'h1;
  assign T_184_subblock_T_200_data = T_184_subblock[T_184_subblock_T_200_addr];
  assign T_184_subblock_T_221_data = io_enq_bits_data_subblock;
  assign T_184_subblock_T_221_addr = io_enq_bits_tag;
  assign T_184_subblock_T_221_mask = T_220;
  assign T_184_subblock_T_221_en = T_220;
  assign T_194_0 = 1'h1;
  assign T_194_1 = 1'h1;
  assign T_194_2 = 1'h1;
  assign T_194_3 = 1'h1;
  assign GEN_0 = GEN_6;
  assign GEN_4 = 2'h1 == io_enq_bits_tag ? T_198_1 : T_198_0;
  assign GEN_5 = 2'h2 == io_enq_bits_tag ? T_198_2 : GEN_4;
  assign GEN_6 = 2'h3 == io_enq_bits_tag ? T_198_3 : GEN_5;
  assign GEN_1 = GEN_9;
  assign GEN_7 = 2'h1 == io_deq_tag ? T_198_1 : T_198_0;
  assign GEN_8 = 2'h2 == io_deq_tag ? T_198_2 : GEN_7;
  assign GEN_9 = 2'h3 == io_deq_tag ? T_198_3 : GEN_8;
  assign T_219 = GEN_1 == 1'h0;
  assign T_220 = io_enq_valid & io_enq_ready;
  assign GEN_2 = 1'h0;
  assign GEN_10 = 2'h0 == io_enq_bits_tag ? GEN_2 : T_198_0;
  assign GEN_11 = 2'h1 == io_enq_bits_tag ? GEN_2 : T_198_1;
  assign GEN_12 = 2'h2 == io_enq_bits_tag ? GEN_2 : T_198_2;
  assign GEN_13 = 2'h3 == io_enq_bits_tag ? GEN_2 : T_198_3;
  assign GEN_22 = T_220 ? GEN_10 : T_198_0;
  assign GEN_23 = T_220 ? GEN_11 : T_198_1;
  assign GEN_24 = T_220 ? GEN_12 : T_198_2;
  assign GEN_25 = T_220 ? GEN_13 : T_198_3;
  assign GEN_3 = 1'h1;
  assign GEN_26 = 2'h0 == io_deq_tag ? GEN_3 : GEN_22;
  assign GEN_27 = 2'h1 == io_deq_tag ? GEN_3 : GEN_23;
  assign GEN_28 = 2'h2 == io_deq_tag ? GEN_3 : GEN_24;
  assign GEN_29 = 2'h3 == io_deq_tag ? GEN_3 : GEN_25;
  assign GEN_31 = io_deq_valid ? GEN_26 : GEN_22;
  assign GEN_32 = io_deq_valid ? GEN_27 : GEN_23;
  assign GEN_33 = io_deq_valid ? GEN_28 : GEN_24;
  assign GEN_34 = io_deq_valid ? GEN_29 : GEN_25;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_14 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    T_184_addr_beat[initvar] = GEN_14[2:0];
  `endif
  GEN_15 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    T_184_subblock[initvar] = GEN_15[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_16 = {1{$random}};
  T_198_0 = GEN_16[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_17 = {1{$random}};
  T_198_1 = GEN_17[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_18 = {1{$random}};
  T_198_2 = GEN_18[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_19 = {1{$random}};
  T_198_3 = GEN_19[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(T_184_addr_beat_T_221_en & T_184_addr_beat_T_221_mask) begin
      T_184_addr_beat[T_184_addr_beat_T_221_addr] <= T_184_addr_beat_T_221_data;
    end
    if(T_184_subblock_T_221_en & T_184_subblock_T_221_mask) begin
      T_184_subblock[T_184_subblock_T_221_addr] <= T_184_subblock_T_221_data;
    end
    if(reset) begin
      T_198_0 <= T_194_0;
    end else begin
      if(io_deq_valid) begin
        if(2'h0 == io_deq_tag) begin
          T_198_0 <= GEN_3;
        end else begin
          if(T_220) begin
            if(2'h0 == io_enq_bits_tag) begin
              T_198_0 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_220) begin
          if(2'h0 == io_enq_bits_tag) begin
            T_198_0 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_198_1 <= T_194_1;
    end else begin
      if(io_deq_valid) begin
        if(2'h1 == io_deq_tag) begin
          T_198_1 <= GEN_3;
        end else begin
          if(T_220) begin
            if(2'h1 == io_enq_bits_tag) begin
              T_198_1 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_220) begin
          if(2'h1 == io_enq_bits_tag) begin
            T_198_1 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_198_2 <= T_194_2;
    end else begin
      if(io_deq_valid) begin
        if(2'h2 == io_deq_tag) begin
          T_198_2 <= GEN_3;
        end else begin
          if(T_220) begin
            if(2'h2 == io_enq_bits_tag) begin
              T_198_2 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_220) begin
          if(2'h2 == io_enq_bits_tag) begin
            T_198_2 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_198_3 <= T_194_3;
    end else begin
      if(io_deq_valid) begin
        if(2'h3 == io_deq_tag) begin
          T_198_3 <= GEN_3;
        end else begin
          if(T_220) begin
            if(2'h3 == io_enq_bits_tag) begin
              T_198_3 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_220) begin
          if(2'h3 == io_enq_bits_tag) begin
            T_198_3 <= GEN_2;
          end
        end
      end
    end
  end
endmodule
