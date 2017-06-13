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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_REORDER_QUEUE(
  input   clk,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input   io_enq_bits_data,
  input  [1:0] io_enq_bits_tag,
  input   io_deq_valid,
  input  [1:0] io_deq_tag,
  output  io_deq_data,
  output  io_deq_matches
);
  reg  T_31 [0:3];
  reg [31:0] GEN_14;
  wire  T_31_T_47_data;
  wire [1:0] T_31_T_47_addr;
  wire  T_31_T_47_en;
  wire  T_31_T_51_data;
  wire [1:0] T_31_T_51_addr;
  wire  T_31_T_51_mask;
  wire  T_31_T_51_en;
  wire  T_41_0;
  wire  T_41_1;
  wire  T_41_2;
  wire  T_41_3;
  reg  T_45_0;
  reg [31:0] GEN_15;
  reg  T_45_1;
  reg [31:0] GEN_16;
  reg  T_45_2;
  reg [31:0] GEN_17;
  reg  T_45_3;
  reg [31:0] GEN_18;
  wire  GEN_0;
  wire  GEN_4;
  wire  GEN_5;
  wire  GEN_6;
  wire  GEN_1;
  wire  GEN_7;
  wire  GEN_8;
  wire  GEN_9;
  wire  T_49;
  wire  T_50;
  wire  GEN_2;
  wire  GEN_10;
  wire  GEN_11;
  wire  GEN_12;
  wire  GEN_13;
  wire  GEN_20;
  wire  GEN_21;
  wire  GEN_22;
  wire  GEN_23;
  wire  GEN_3;
  wire  GEN_24;
  wire  GEN_25;
  wire  GEN_26;
  wire  GEN_27;
  wire  GEN_29;
  wire  GEN_30;
  wire  GEN_31;
  wire  GEN_32;
  assign io_enq_ready = GEN_0;
  assign io_deq_data = T_31_T_47_data;
  assign io_deq_matches = T_49;
  assign T_31_T_47_addr = io_deq_tag;
  assign T_31_T_47_en = 1'h1;
  assign T_31_T_47_data = T_31[T_31_T_47_addr];
  assign T_31_T_51_data = io_enq_bits_data;
  assign T_31_T_51_addr = io_enq_bits_tag;
  assign T_31_T_51_mask = T_50;
  assign T_31_T_51_en = T_50;
  assign T_41_0 = 1'h1;
  assign T_41_1 = 1'h1;
  assign T_41_2 = 1'h1;
  assign T_41_3 = 1'h1;
  assign GEN_0 = GEN_6;
  assign GEN_4 = 2'h1 == io_enq_bits_tag ? T_45_1 : T_45_0;
  assign GEN_5 = 2'h2 == io_enq_bits_tag ? T_45_2 : GEN_4;
  assign GEN_6 = 2'h3 == io_enq_bits_tag ? T_45_3 : GEN_5;
  assign GEN_1 = GEN_9;
  assign GEN_7 = 2'h1 == io_deq_tag ? T_45_1 : T_45_0;
  assign GEN_8 = 2'h2 == io_deq_tag ? T_45_2 : GEN_7;
  assign GEN_9 = 2'h3 == io_deq_tag ? T_45_3 : GEN_8;
  assign T_49 = GEN_1 == 1'h0;
  assign T_50 = io_enq_valid & io_enq_ready;
  assign GEN_2 = 1'h0;
  assign GEN_10 = 2'h0 == io_enq_bits_tag ? GEN_2 : T_45_0;
  assign GEN_11 = 2'h1 == io_enq_bits_tag ? GEN_2 : T_45_1;
  assign GEN_12 = 2'h2 == io_enq_bits_tag ? GEN_2 : T_45_2;
  assign GEN_13 = 2'h3 == io_enq_bits_tag ? GEN_2 : T_45_3;
  assign GEN_20 = T_50 ? GEN_10 : T_45_0;
  assign GEN_21 = T_50 ? GEN_11 : T_45_1;
  assign GEN_22 = T_50 ? GEN_12 : T_45_2;
  assign GEN_23 = T_50 ? GEN_13 : T_45_3;
  assign GEN_3 = 1'h1;
  assign GEN_24 = 2'h0 == io_deq_tag ? GEN_3 : GEN_20;
  assign GEN_25 = 2'h1 == io_deq_tag ? GEN_3 : GEN_21;
  assign GEN_26 = 2'h2 == io_deq_tag ? GEN_3 : GEN_22;
  assign GEN_27 = 2'h3 == io_deq_tag ? GEN_3 : GEN_23;
  assign GEN_29 = io_deq_valid ? GEN_24 : GEN_20;
  assign GEN_30 = io_deq_valid ? GEN_25 : GEN_21;
  assign GEN_31 = io_deq_valid ? GEN_26 : GEN_22;
  assign GEN_32 = io_deq_valid ? GEN_27 : GEN_23;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  GEN_14 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    T_31[initvar] = GEN_14[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_15 = {1{$random}};
  T_45_0 = GEN_15[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_16 = {1{$random}};
  T_45_1 = GEN_16[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_17 = {1{$random}};
  T_45_2 = GEN_17[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_18 = {1{$random}};
  T_45_3 = GEN_18[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(T_31_T_51_en & T_31_T_51_mask) begin
      T_31[T_31_T_51_addr] <= T_31_T_51_data;
    end
    if(reset) begin
      T_45_0 <= T_41_0;
    end else begin
      if(io_deq_valid) begin
        if(2'h0 == io_deq_tag) begin
          T_45_0 <= GEN_3;
        end else begin
          if(T_50) begin
            if(2'h0 == io_enq_bits_tag) begin
              T_45_0 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_50) begin
          if(2'h0 == io_enq_bits_tag) begin
            T_45_0 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_45_1 <= T_41_1;
    end else begin
      if(io_deq_valid) begin
        if(2'h1 == io_deq_tag) begin
          T_45_1 <= GEN_3;
        end else begin
          if(T_50) begin
            if(2'h1 == io_enq_bits_tag) begin
              T_45_1 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_50) begin
          if(2'h1 == io_enq_bits_tag) begin
            T_45_1 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_45_2 <= T_41_2;
    end else begin
      if(io_deq_valid) begin
        if(2'h2 == io_deq_tag) begin
          T_45_2 <= GEN_3;
        end else begin
          if(T_50) begin
            if(2'h2 == io_enq_bits_tag) begin
              T_45_2 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_50) begin
          if(2'h2 == io_enq_bits_tag) begin
            T_45_2 <= GEN_2;
          end
        end
      end
    end
    if(reset) begin
      T_45_3 <= T_41_3;
    end else begin
      if(io_deq_valid) begin
        if(2'h3 == io_deq_tag) begin
          T_45_3 <= GEN_3;
        end else begin
          if(T_50) begin
            if(2'h3 == io_enq_bits_tag) begin
              T_45_3 <= GEN_2;
            end
          end
        end
      end else begin
        if(T_50) begin
          if(2'h3 == io_enq_bits_tag) begin
            T_45_3 <= GEN_2;
          end
        end
      end
    end
  end
endmodule
