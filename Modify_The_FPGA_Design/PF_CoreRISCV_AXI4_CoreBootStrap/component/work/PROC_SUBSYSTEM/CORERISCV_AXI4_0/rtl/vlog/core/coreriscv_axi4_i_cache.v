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
`include "coreriscv_axi4_defines.v"
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_I_CACHE(
  input   clk,
  input   reset,
  input   io_req_valid,
  input  [31:0] io_req_bits_addr,
  input  [19:0] io_s1_ppn,
  input   io_s1_kill,
  input   io_s2_kill,
  input   io_resp_ready,
  output  io_resp_valid,
  output [31:0] io_resp_bits_data,
  output [63:0] io_resp_bits_datablock,
  input   io_invalidate,
  input   io_mem_acquire_ready,
  output  io_mem_acquire_valid,
  output [25:0] io_mem_acquire_bits_addr_block,
  output  io_mem_acquire_bits_client_xact_id,
  output [2:0] io_mem_acquire_bits_addr_beat,
  output  io_mem_acquire_bits_is_builtin_type,
  output [2:0] io_mem_acquire_bits_a_type,
  output [11:0] io_mem_acquire_bits_union,
  output [63:0] io_mem_acquire_bits_data,
  output  io_mem_grant_ready,
  input   io_mem_grant_valid,
  input  [2:0] io_mem_grant_bits_addr_beat,
  input   io_mem_grant_bits_client_xact_id,
  input  [1:0] io_mem_grant_bits_manager_xact_id,
  input   io_mem_grant_bits_is_builtin_type,
  input  [3:0] io_mem_grant_bits_g_type,
  input  [63:0] io_mem_grant_bits_data
);
  reg [1:0] state;
  reg [31:0] GEN_4;
  reg  invalidated;
  reg [31:0] GEN_5;
  wire  stall;
  wire  rdy;
  reg [31:0] refill_addr;
  reg [31:0] GEN_6;
  wire  s1_any_tag_hit;
  reg  s1_valid;
  reg [31:0] GEN_7;
  reg [31:0] s1_vaddr;
  reg [31:0] GEN_8;
  wire [11:0] T_827;
  wire [31:0] s1_paddr;
  wire [18:0] s1_tag;
  wire  T_828;
  wire [31:0] s0_vaddr;
  wire  T_830;
  wire  T_833;
  wire  T_834;
  wire  T_835;
  wire [31:0] GEN_0;
  wire  T_839;
  wire  T_840;
  wire  out_valid;
  wire [6:0] s1_idx;
  wire  s1_hit;
  wire  T_842;
  wire  s1_miss;
  wire  T_845;
  wire  T_846;
  wire  T_848;
  wire [31:0] GEN_1;
  wire [18:0] refill_tag;
  wire  FlowThroughSerializer_1_clk;
  wire  FlowThroughSerializer_1_reset;
  wire  FlowThroughSerializer_1_io_in_ready;
  wire  FlowThroughSerializer_1_io_in_valid;
  wire [2:0] FlowThroughSerializer_1_io_in_bits_addr_beat;
  wire  FlowThroughSerializer_1_io_in_bits_client_xact_id;
  wire [1:0] FlowThroughSerializer_1_io_in_bits_manager_xact_id;
  wire  FlowThroughSerializer_1_io_in_bits_is_builtin_type;
  wire [3:0] FlowThroughSerializer_1_io_in_bits_g_type;
  wire [63:0] FlowThroughSerializer_1_io_in_bits_data;
  wire  FlowThroughSerializer_1_io_out_ready;
  wire  FlowThroughSerializer_1_io_out_valid;
  wire [2:0] FlowThroughSerializer_1_io_out_bits_addr_beat;
  wire  FlowThroughSerializer_1_io_out_bits_client_xact_id;
  wire [1:0] FlowThroughSerializer_1_io_out_bits_manager_xact_id;
  wire  FlowThroughSerializer_1_io_out_bits_is_builtin_type;
  wire [3:0] FlowThroughSerializer_1_io_out_bits_g_type;
  wire [63:0] FlowThroughSerializer_1_io_out_bits_data;
  wire  FlowThroughSerializer_1_io_cnt;
  wire  FlowThroughSerializer_1_io_done;
  wire  T_849;
  reg [2:0] refill_cnt;
  reg [31:0] GEN_9;
  wire  T_852;
  wire [3:0] T_854;
  wire [2:0] T_855;
  wire [2:0] GEN_2;
  wire  refill_wrap;
  wire  T_856;
  wire  refill_done;
  `ifdef USE_REGISTERS_FOR_CACHE
    reg [18:0] tag_array_0 [0:127] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [18:0] tag_array_0 [0:127];
  `endif
  reg [31:0] GEN_10;
  wire [18:0] tag_array_0_tag_rdata_data;
  wire [6:0] tag_array_0_tag_rdata_addr;
  wire  tag_array_0_tag_rdata_en;
  reg [6:0] GEN_11;
  reg [31:0] GEN_17;
  reg  GEN_18;
  reg [31:0] GEN_19;
  wire [18:0] tag_array_0_T_893_data;
  wire [6:0] tag_array_0_T_893_addr;
  wire  tag_array_0_T_893_mask;
  wire  tag_array_0_T_893_en;
  wire [6:0] T_866;
  wire [6:0] T_871;
  wire [18:0] T_880_0;
  wire  T_889_0;
  wire  GEN_12;
  reg [127:0] vb_array;
  reg [127:0] GEN_21;
  wire  T_897;
  wire  T_898;
  wire [7:0] T_899;
  wire [255:0] T_902;
  wire [255:0] GEN_36;
  wire [255:0] T_903;
  wire [127:0] T_904;
  wire [255:0] GEN_37;
  wire [255:0] T_905;
  wire [255:0] T_906;
  wire [255:0] GEN_13;
  wire [255:0] GEN_14;
  wire  GEN_15;
  wire  s1_disparity_0;
  wire  T_917;
  wire [255:0] GEN_16;
  wire  s1_tag_match_0;
  wire  s1_tag_hit_0;
  wire [63:0] s1_dout_0;
  wire  T_950;
  wire [127:0] T_954;
  wire  T_955;
  wire  T_957;
  wire [18:0] T_961;
  wire  T_962;
  wire  T_963;
  wire  T_970;
  wire  T_971;
  `ifdef USE_REGISTERS_FOR_CACHE
    reg [63:0] T_974 [0:1023] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [63:0] T_974 [0:1023];
  `endif
  reg [63:0] GEN_22;
  wire [63:0] T_974_T_987_data;
  wire [9:0] T_974_T_987_addr;
  wire  T_974_T_987_en;
  reg [9:0] GEN_38;
  reg [31:0] GEN_39;
  reg  GEN_42;
  reg [31:0] GEN_43;
  wire [63:0] T_974_T_980_data;
  wire [9:0] T_974_T_980_addr;
  wire  T_974_T_980_mask;
  wire  T_974_T_980_en;
  wire  T_977;
  wire [9:0] GEN_40;
  wire [9:0] T_978;
  wire [9:0] GEN_41;
  wire [9:0] T_979;
  wire [63:0] GEN_20;
  wire [9:0] T_981;
  wire [9:0] T_986;
  wire  T_989;
  reg  T_990;
  reg [31:0] GEN_44;
  wire  GEN_23;
  reg  T_995_0;
  reg [31:0] GEN_45;
  wire  GEN_24;
  reg [63:0] T_1001_0;
  reg [63:0] GEN_46;
  wire [63:0] GEN_25;
  wire  T_1003;
  wire  T_1005;
  wire  T_1006;
  wire [25:0] T_1007;
  wire [25:0] T_1110_addr_block;
  wire  T_1110_client_xact_id;
  wire [2:0] T_1110_addr_beat;
  wire  T_1110_is_builtin_type;
  wire [2:0] T_1110_a_type;
  wire [11:0] T_1110_union;
  wire [63:0] T_1110_data;
  wire  T_1138;
  wire [1:0] GEN_26;
  wire [1:0] GEN_27;
  wire  GEN_28;
  wire  T_1140;
  wire [1:0] GEN_29;
  wire [1:0] GEN_30;
  wire [1:0] GEN_31;
  wire  T_1141;
  wire [1:0] GEN_32;
  wire [1:0] GEN_33;
  wire  T_1142;
  wire [1:0] GEN_34;
  wire [1:0] GEN_35;
  reg [31:0] GEN_3;
  reg [31:0] GEN_47;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FLOW_THROUGH_SERIALIZER FlowThroughSerializer_1 (
    .clk(FlowThroughSerializer_1_clk),
    .reset(FlowThroughSerializer_1_reset),
    .io_in_ready(FlowThroughSerializer_1_io_in_ready),
    .io_in_valid(FlowThroughSerializer_1_io_in_valid),
    .io_in_bits_addr_beat(FlowThroughSerializer_1_io_in_bits_addr_beat),
    .io_in_bits_client_xact_id(FlowThroughSerializer_1_io_in_bits_client_xact_id),
    .io_in_bits_manager_xact_id(FlowThroughSerializer_1_io_in_bits_manager_xact_id),
    .io_in_bits_is_builtin_type(FlowThroughSerializer_1_io_in_bits_is_builtin_type),
    .io_in_bits_g_type(FlowThroughSerializer_1_io_in_bits_g_type),
    .io_in_bits_data(FlowThroughSerializer_1_io_in_bits_data),
    .io_out_ready(FlowThroughSerializer_1_io_out_ready),
    .io_out_valid(FlowThroughSerializer_1_io_out_valid),
    .io_out_bits_addr_beat(FlowThroughSerializer_1_io_out_bits_addr_beat),
    .io_out_bits_client_xact_id(FlowThroughSerializer_1_io_out_bits_client_xact_id),
    .io_out_bits_manager_xact_id(FlowThroughSerializer_1_io_out_bits_manager_xact_id),
    .io_out_bits_is_builtin_type(FlowThroughSerializer_1_io_out_bits_is_builtin_type),
    .io_out_bits_g_type(FlowThroughSerializer_1_io_out_bits_g_type),
    .io_out_bits_data(FlowThroughSerializer_1_io_out_bits_data),
    .io_cnt(FlowThroughSerializer_1_io_cnt),
    .io_done(FlowThroughSerializer_1_io_done)
  );
  assign io_resp_valid = T_990;
  assign io_resp_bits_data = GEN_3;
  assign io_resp_bits_datablock = T_1001_0;
  assign io_mem_acquire_valid = T_1006;
  assign io_mem_acquire_bits_addr_block = T_1110_addr_block;
  assign io_mem_acquire_bits_client_xact_id = T_1110_client_xact_id;
  assign io_mem_acquire_bits_addr_beat = T_1110_addr_beat;
  assign io_mem_acquire_bits_is_builtin_type = T_1110_is_builtin_type;
  assign io_mem_acquire_bits_a_type = T_1110_a_type;
  assign io_mem_acquire_bits_union = T_1110_union;
  assign io_mem_acquire_bits_data = T_1110_data;
  assign io_mem_grant_ready = FlowThroughSerializer_1_io_in_ready;
  assign stall = io_resp_ready == 1'h0;
  assign rdy = T_846;
  assign s1_any_tag_hit = T_971;
  assign T_827 = s1_vaddr[11:0];
  assign s1_paddr = {io_s1_ppn,T_827};
  assign s1_tag = s1_paddr[31:13];
  assign T_828 = s1_valid & stall;
  assign s0_vaddr = T_828 ? s1_vaddr : io_req_bits_addr;
  assign T_830 = io_req_valid & rdy;
  assign T_833 = io_s1_kill == 1'h0;
  assign T_834 = T_828 & T_833;
  assign T_835 = T_830 | T_834;
  assign GEN_0 = T_830 ? io_req_bits_addr : s1_vaddr;
  assign T_839 = s1_valid & T_833;
  assign T_840 = state == 2'h0;
  assign out_valid = T_839 & T_840;
  assign s1_idx = s1_vaddr[12:6];
  assign s1_hit = out_valid & s1_any_tag_hit;
  assign T_842 = s1_any_tag_hit == 1'h0;
  assign s1_miss = out_valid & T_842;
  assign T_845 = s1_miss == 1'h0;
  assign T_846 = T_840 & T_845;
  assign T_848 = s1_miss & T_840;
  assign GEN_1 = T_848 ? s1_paddr : refill_addr;
  assign refill_tag = refill_addr[31:13];
  assign FlowThroughSerializer_1_clk = clk;
  assign FlowThroughSerializer_1_reset = reset;
  assign FlowThroughSerializer_1_io_in_valid = io_mem_grant_valid;
  assign FlowThroughSerializer_1_io_in_bits_addr_beat = io_mem_grant_bits_addr_beat;
  assign FlowThroughSerializer_1_io_in_bits_client_xact_id = io_mem_grant_bits_client_xact_id;
  assign FlowThroughSerializer_1_io_in_bits_manager_xact_id = io_mem_grant_bits_manager_xact_id;
  assign FlowThroughSerializer_1_io_in_bits_is_builtin_type = io_mem_grant_bits_is_builtin_type;
  assign FlowThroughSerializer_1_io_in_bits_g_type = io_mem_grant_bits_g_type;
  assign FlowThroughSerializer_1_io_in_bits_data = io_mem_grant_bits_data;
  assign FlowThroughSerializer_1_io_out_ready = 1'h1;
  assign T_849 = FlowThroughSerializer_1_io_out_ready & FlowThroughSerializer_1_io_out_valid;
  assign T_852 = refill_cnt == 3'h7;
  assign T_854 = refill_cnt + 3'h1;
  assign T_855 = T_854[2:0];
  assign GEN_2 = T_849 ? T_855 : refill_cnt;
  assign refill_wrap = T_849 & T_852;
  assign T_856 = state == 2'h3;
  assign refill_done = T_856 & refill_wrap;
  assign tag_array_0_tag_rdata_addr = T_871;
  assign tag_array_0_tag_rdata_en = 1'h1;
  assign tag_array_0_tag_rdata_data = tag_array_0[GEN_11];
  assign tag_array_0_T_893_data = T_880_0;
  assign tag_array_0_T_893_addr = s1_idx;
  assign tag_array_0_T_893_mask = GEN_12;
  assign tag_array_0_T_893_en = refill_done;
  assign T_866 = s0_vaddr[12:6];
  assign T_871 = T_866;
  assign T_880_0 = refill_tag;
  assign T_889_0 = 1'h1;
  assign GEN_12 = refill_done ? T_889_0 : 1'h0;
  assign T_897 = invalidated == 1'h0;
  assign T_898 = refill_done & T_897;
  assign T_899 = {1'h0,s1_idx};
  assign T_902 = 256'h1 << T_899;
  assign GEN_36 = {{128'd0}, vb_array};
  assign T_903 = GEN_36 | T_902;
  assign T_904 = ~ vb_array;
  assign GEN_37 = {{128'd0}, T_904};
  assign T_905 = GEN_37 | T_902;
  assign T_906 = ~ T_905;
  assign GEN_13 = T_898 ? T_903 : {{128'd0}, vb_array};
  assign GEN_14 = io_invalidate ? 256'h0 : GEN_13;
  assign GEN_15 = io_invalidate ? 1'h1 : invalidated;
  assign s1_disparity_0 = 1'h0;
  assign T_917 = s1_valid & s1_disparity_0;
  assign GEN_16 = T_917 ? T_906 : GEN_14;
  assign s1_tag_match_0 = T_962;
  assign s1_tag_hit_0 = T_963;
  assign s1_dout_0 = T_974_T_987_data;
  assign T_950 = io_invalidate == 1'h0;
  assign T_954 = vb_array >> T_899;
  assign T_955 = T_954[0];
  assign T_957 = T_950 & T_955;
  assign T_961 = tag_array_0_tag_rdata_data;
  assign T_962 = T_961 == s1_tag;
  assign T_963 = T_957 & s1_tag_match_0;
  assign T_970 = s1_disparity_0 == 1'h0;
  assign T_971 = s1_tag_hit_0 & T_970;
  assign T_974_T_987_addr = T_986;
  assign T_974_T_987_en = 1'h1;
  assign T_974_T_987_data = T_974[GEN_38];
  assign T_974_T_980_data = GEN_20;
  assign T_974_T_980_addr = T_979;
  assign T_974_T_980_mask = T_977;
  assign T_974_T_980_en = T_977;
  assign T_977 = FlowThroughSerializer_1_io_out_valid;
  assign GEN_40 = {{3'd0}, s1_idx};
  assign T_978 = GEN_40 << 3;
  assign GEN_41 = {{7'd0}, refill_cnt};
  assign T_979 = T_978 | GEN_41;
  assign GEN_20 = FlowThroughSerializer_1_io_out_bits_data;
  assign T_981 = s0_vaddr[12:3];
  assign T_986 = T_981;
  assign T_989 = stall == 1'h0;
  assign GEN_23 = T_989 ? s1_hit : T_990;
  assign GEN_24 = T_989 ? s1_tag_hit_0 : T_995_0;
  assign GEN_25 = T_989 ? s1_dout_0 : T_1001_0;
  assign T_1003 = state == 2'h1;
  assign T_1005 = io_s2_kill == 1'h0;
  assign T_1006 = T_1003 & T_1005;
  assign T_1007 = refill_addr[31:6];
  assign T_1110_addr_block = T_1007;
  assign T_1110_client_xact_id = 1'h0;
  assign T_1110_addr_beat = 3'h0;
  assign T_1110_is_builtin_type = 1'h1;
  assign T_1110_a_type = 3'h1;
  assign T_1110_union = 12'h1c1;
  assign T_1110_data = 64'h0;
  assign T_1138 = 2'h0 == state;
  assign GEN_26 = s1_miss ? 2'h1 : state;
  assign GEN_27 = T_1138 ? GEN_26 : state;
  assign GEN_28 = T_1138 ? 1'h0 : GEN_15;
  assign T_1140 = 2'h1 == state;
  assign GEN_29 = io_mem_acquire_ready ? 2'h2 : GEN_27;
  assign GEN_30 = io_s2_kill ? 2'h0 : GEN_29;
  assign GEN_31 = T_1140 ? GEN_30 : GEN_27;
  assign T_1141 = 2'h2 == state;
  assign GEN_32 = io_mem_grant_valid ? 2'h3 : GEN_31;
  assign GEN_33 = T_1141 ? GEN_32 : GEN_31;
  assign T_1142 = 2'h3 == state;
  assign GEN_34 = refill_done ? 2'h0 : GEN_33;
  assign GEN_35 = T_1142 ? GEN_34 : GEN_33;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_4 = {1{$random}};
  state = GEN_4[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_5 = {1{$random}};
  invalidated = GEN_5[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_6 = {1{$random}};
  refill_addr = GEN_6[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_7 = {1{$random}};
  s1_valid = GEN_7[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_8 = {1{$random}};
  s1_vaddr = GEN_8[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_9 = {1{$random}};
  refill_cnt = GEN_9[2:0];
  `endif
  GEN_10 = {1{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    tag_array_0[initvar] = GEN_10[18:0];
  `endif
  `ifdef RANDOMIZE
  GEN_17 = {1{$random}};
  GEN_11 = GEN_17[6:0];
  `endif
  `ifdef RANDOMIZE
  GEN_19 = {1{$random}};
  GEN_18 = GEN_19[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_21 = {4{$random}};
  vb_array = GEN_21[127:0];
  `endif
  GEN_22 = {2{$random}};
  `ifdef RANDOMIZE
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    T_974[initvar] = GEN_22[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_39 = {1{$random}};
  GEN_38 = GEN_39[9:0];
  `endif
  `ifdef RANDOMIZE
  GEN_43 = {1{$random}};
  GEN_42 = GEN_43[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_44 = {1{$random}};
  T_990 = GEN_44[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_45 = {1{$random}};
  T_995_0 = GEN_45[0:0];
  `endif
  `ifdef RANDOMIZE
  GEN_46 = {2{$random}};
  T_1001_0 = GEN_46[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_47 = {1{$random}};
  GEN_3 = GEN_47[31:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      state <= 2'h0;
    end else begin
      if(T_1142) begin
        if(refill_done) begin
          state <= 2'h0;
        end else begin
          if(T_1141) begin
            if(io_mem_grant_valid) begin
              state <= 2'h3;
            end else begin
              if(T_1140) begin
                if(io_s2_kill) begin
                  state <= 2'h0;
                end else begin
                  if(io_mem_acquire_ready) begin
                    state <= 2'h2;
                  end else begin
                    if(T_1138) begin
                      if(s1_miss) begin
                        state <= 2'h1;
                      end
                    end
                  end
                end
              end else begin
                if(T_1138) begin
                  if(s1_miss) begin
                    state <= 2'h1;
                  end
                end
              end
            end
          end else begin
            if(T_1140) begin
              if(io_s2_kill) begin
                state <= 2'h0;
              end else begin
                if(io_mem_acquire_ready) begin
                  state <= 2'h2;
                end else begin
                  if(T_1138) begin
                    if(s1_miss) begin
                      state <= 2'h1;
                    end
                  end
                end
              end
            end else begin
              if(T_1138) begin
                if(s1_miss) begin
                  state <= 2'h1;
                end
              end
            end
          end
        end
      end else begin
        if(T_1141) begin
          if(io_mem_grant_valid) begin
            state <= 2'h3;
          end else begin
            if(T_1140) begin
              if(io_s2_kill) begin
                state <= 2'h0;
              end else begin
                if(io_mem_acquire_ready) begin
                  state <= 2'h2;
                end else begin
                  state <= GEN_27;
                end
              end
            end else begin
              state <= GEN_27;
            end
          end
        end else begin
          if(T_1140) begin
            if(io_s2_kill) begin
              state <= 2'h0;
            end else begin
              if(io_mem_acquire_ready) begin
                state <= 2'h2;
              end else begin
                state <= GEN_27;
              end
            end
          end else begin
            state <= GEN_27;
          end
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_1138) begin
        invalidated <= 1'h0;
      end else begin
        if(io_invalidate) begin
          invalidated <= 1'h1;
        end
      end
    end
    if(1'h0) begin
    end else begin
      if(T_848) begin
        refill_addr <= s1_paddr;
      end
    end
    if(reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= T_835;
    end
    if(1'h0) begin
    end else begin
      if(T_830) begin
        s1_vaddr <= io_req_bits_addr;
      end
    end
    if(reset) begin
      refill_cnt <= 3'h0;
    end else begin
      if(T_849) begin
        refill_cnt <= T_855;
      end
    end
    GEN_11 <= tag_array_0_tag_rdata_addr;
    GEN_18 <= tag_array_0_tag_rdata_en;
    if(tag_array_0_T_893_en & tag_array_0_T_893_mask) begin
      tag_array_0[tag_array_0_T_893_addr] <= tag_array_0_T_893_data;
    end
    if(reset) begin
      vb_array <= 128'h0;
    end else begin
      vb_array <= GEN_16[127:0];
    end
    GEN_38 <= T_974_T_987_addr;
    GEN_42 <= T_974_T_987_en;
    if(T_974_T_980_en & T_974_T_980_mask) begin
      T_974[T_974_T_980_addr] <= T_974_T_980_data;
    end
    if(1'h0) begin
    end else begin
      if(T_989) begin
        T_990 <= s1_hit;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_989) begin
        T_995_0 <= s1_tag_hit_0;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_989) begin
        T_1001_0 <= s1_dout_0;
      end
    end
  end
endmodule
