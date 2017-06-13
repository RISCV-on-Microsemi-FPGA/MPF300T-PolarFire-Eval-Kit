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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_METADATA_ARRAY(
  input   clk,
  input   reset,
  output  io_read_ready,
  input   io_read_valid,
  input  [6:0] io_read_bits_idx,
  input   io_read_bits_way_en,
  output  io_write_ready,
  input   io_write_valid,
  input  [6:0] io_write_bits_idx,
  input   io_write_bits_way_en,
  input  [18:0] io_write_bits_data_tag,
  input  [1:0] io_write_bits_data_coh_state,
  output [18:0] io_resp_0_tag,
  output [1:0] io_resp_0_coh_state
);
  wire [1:0] T_44_state;
  wire [18:0] rstVal_tag;
  wire [1:0] rstVal_coh_state;
  reg [7:0] rst_cnt;
  reg [31:0] GEN_1;
  wire  rst;
  wire [7:0] waddr;
  wire [18:0] T_1569_tag;
  wire [1:0] T_1569_coh_state;
  wire [20:0] wdata;
  wire [8:0] T_1666;
  wire [7:0] T_1667;
  wire [7:0] GEN_0;
  `ifdef USE_REGISTERS
    reg [20:0] T_1676_0 [0:127] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [20:0] T_1676_0 [0:127];
  `endif
  reg [31:0] GEN_2;
  wire [20:0] T_1676_0_T_1693_data;
  wire [6:0] T_1676_0_T_1693_addr;
  wire  T_1676_0_T_1693_en;
  reg [6:0] GEN_3;
  reg [31:0] GEN_4;
  reg  GEN_5;
  reg [31:0] GEN_6;
  wire [20:0] T_1676_0_T_1687_data;
  wire [6:0] T_1676_0_T_1687_addr;
  wire  T_1676_0_T_1687_mask;
  wire  T_1676_0_T_1687_en;
  wire  T_1677;
  wire [20:0] T_1683_0;
  wire [6:0] T_1690;
  wire [18:0] T_2199_0_tag;
  wire [1:0] T_2199_0_coh_state;
  wire [1:0] T_2367;
  wire [18:0] T_2368;
  wire  T_2370;
  wire  T_2372;
  wire  T_2373;
  assign io_read_ready = T_2373;
  assign io_write_ready = T_2370;
  assign io_resp_0_tag = T_2199_0_tag;
  assign io_resp_0_coh_state = T_2199_0_coh_state;
  assign T_44_state = 2'h0;
  assign rstVal_tag = 19'h0;
  assign rstVal_coh_state = T_44_state;
  assign rst = rst_cnt < 8'h80;
  assign waddr = rst ? rst_cnt : {{1'd0}, io_write_bits_idx};
  assign T_1569_tag = rst ? rstVal_tag : io_write_bits_data_tag;
  assign T_1569_coh_state = rst ? rstVal_coh_state : io_write_bits_data_coh_state;
  assign wdata = {T_1569_tag,T_1569_coh_state};
  assign T_1666 = rst_cnt + 8'h1;
  assign T_1667 = T_1666[7:0];
  assign GEN_0 = rst ? T_1667 : rst_cnt;
  assign T_1676_0_T_1693_addr = T_1690;
  assign T_1676_0_T_1693_en = 1'h1;
  assign T_1676_0_T_1693_data = T_1676_0[GEN_3];
  assign T_1676_0_T_1687_data = T_1683_0;
  assign T_1676_0_T_1687_addr = waddr[6:0];
  assign T_1676_0_T_1687_mask = T_1677;
  assign T_1676_0_T_1687_en = T_1677;
  assign T_1677 = rst | io_write_valid;
  assign T_1683_0 = wdata;
  assign T_1690 = io_read_bits_idx;
  assign T_2199_0_tag = T_2368;
  assign T_2199_0_coh_state = T_2367;
  assign T_2367 = T_1676_0_T_1693_data[1:0];
  assign T_2368 = T_1676_0_T_1693_data[20:2];
  assign T_2370 = rst == 1'h0;
  assign T_2372 = io_write_valid == 1'h0;
  assign T_2373 = T_2370 & T_2372;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_1 = {1{$random}};
  rst_cnt = GEN_1[7:0];
  `endif
  GEN_2 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    T_1676_0[initvar] = GEN_2[20:0];
  `endif
  `ifdef RANDOMIZE
  GEN_4 = {1{$random}};
  GEN_3 = GEN_4[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_6 = {1{$random}};
  GEN_5 = GEN_6[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      rst_cnt <= 8'h0;
    end else begin
      if(rst) begin
        rst_cnt <= T_1667;
      end
    end
    GEN_3 <= T_1676_0_T_1693_addr;
    GEN_5 <= T_1676_0_T_1693_en;
    if(T_1676_0_T_1687_en & T_1676_0_T_1687_mask) begin
      T_1676_0[T_1676_0_T_1687_addr] <= T_1676_0_T_1687_data;
    end
  end
endmodule
