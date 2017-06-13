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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ROM_SLAVE(
  input   clk,
  input   reset,
  output  io_acquire_ready,
  input   io_acquire_valid,
  input  [25:0] io_acquire_bits_addr_block,
  input  [1:0] io_acquire_bits_client_xact_id,
  input  [2:0] io_acquire_bits_addr_beat,
  input   io_acquire_bits_is_builtin_type,
  input  [2:0] io_acquire_bits_a_type,
  input  [11:0] io_acquire_bits_union,
  input  [63:0] io_acquire_bits_data,
  input   io_grant_ready,
  output  io_grant_valid,
  output [2:0] io_grant_bits_addr_beat,
  output [1:0] io_grant_bits_client_xact_id,
  output  io_grant_bits_manager_xact_id,
  output  io_grant_bits_is_builtin_type,
  output [3:0] io_grant_bits_g_type,
  output [63:0] io_grant_bits_data
);
  wire  acq_clk;
  wire  acq_reset;
  wire  acq_io_enq_ready;
  wire  acq_io_enq_valid;
  wire [25:0] acq_io_enq_bits_addr_block;
  wire [1:0] acq_io_enq_bits_client_xact_id;
  wire [2:0] acq_io_enq_bits_addr_beat;
  wire  acq_io_enq_bits_is_builtin_type;
  wire [2:0] acq_io_enq_bits_a_type;
  wire [11:0] acq_io_enq_bits_union;
  wire [63:0] acq_io_enq_bits_data;
  wire  acq_io_deq_ready;
  wire  acq_io_deq_valid;
  wire [25:0] acq_io_deq_bits_addr_block;
  wire [1:0] acq_io_deq_bits_client_xact_id;
  wire [2:0] acq_io_deq_bits_addr_beat;
  wire  acq_io_deq_bits_is_builtin_type;
  wire [2:0] acq_io_deq_bits_a_type;
  wire [11:0] acq_io_deq_bits_union;
  wire [63:0] acq_io_deq_bits_data;
  wire  acq_io_count;
  wire  T_446;
  wire  single_beat;
  wire  T_448;
  wire  multi_beat;
  wire  T_450;
  wire  T_451;
  wire  T_452;
  wire  T_453;
  wire  T_455;
  reg [2:0] addr_beat;
  reg [31:0] GEN_54;
  wire  T_457;
  wire [3:0] T_459;
  wire [2:0] T_460;
  wire [2:0] GEN_1;
  wire  T_461;
  wire [2:0] GEN_2;
  wire [63:0] rom_0;
  wire [63:0] rom_1;
  wire [63:0] rom_2;
  wire [63:0] rom_3;
  wire [63:0] rom_4;
  wire [63:0] rom_5;
  wire [63:0] rom_6;
  wire [63:0] rom_7;
  wire [63:0] rom_8;
  wire [63:0] rom_9;
  wire [63:0] rom_10;
  wire [63:0] rom_11;
  wire [63:0] rom_12;
  wire [63:0] rom_13;
  wire [63:0] rom_14;
  wire [63:0] rom_15;
  wire [63:0] rom_16;
  wire [63:0] rom_17;
  wire [63:0] rom_18;
  wire [63:0] rom_19;
  wire [63:0] rom_20;
  wire [63:0] rom_21;
  wire [63:0] rom_22;
  wire [63:0] rom_23;
  wire [63:0] rom_24;
  wire [63:0] rom_25;
  wire [63:0] rom_26;
  wire [63:0] rom_27;
  wire [63:0] rom_28;
  wire [63:0] rom_29;
  wire [63:0] rom_30;
  wire [63:0] rom_31;
  wire [63:0] rom_32;
  wire [63:0] rom_33;
  wire [63:0] rom_34;
  wire [63:0] rom_35;
  wire [63:0] rom_36;
  wire [63:0] rom_37;
  wire [63:0] rom_38;
  wire [63:0] rom_39;
  wire [63:0] rom_40;
  wire [63:0] rom_41;
  wire [63:0] rom_42;
  wire [63:0] rom_43;
  wire [63:0] rom_44;
  wire [63:0] rom_45;
  wire [63:0] rom_46;
  wire [63:0] rom_47;
  wire [63:0] rom_48;
  wire [63:0] rom_49;
  wire [63:0] rom_50;
  wire [63:0] rom_51;
  wire [28:0] raddr;
  wire [5:0] T_520;
  wire  T_522;
  wire  T_524;
  wire  last;
  wire  T_525;
  wire  T_542;
  wire [2:0] T_543;
  wire  T_544;
  wire [2:0] T_545;
  wire  T_546;
  wire [2:0] T_547;
  wire  T_548;
  wire [2:0] T_549;
  wire  T_550;
  wire [2:0] T_551;
  wire  T_552;
  wire [2:0] T_553;
  wire  T_554;
  wire [2:0] T_555;
  wire [2:0] T_579_addr_beat;
  wire [1:0] T_579_client_xact_id;
  wire  T_579_manager_xact_id;
  wire  T_579_is_builtin_type;
  wire [3:0] T_579_g_type;
  wire [63:0] T_579_data;
  wire [63:0] GEN_0;
  wire [63:0] GEN_3;
  wire [63:0] GEN_4;
  wire [63:0] GEN_5;
  wire [63:0] GEN_6;
  wire [63:0] GEN_7;
  wire [63:0] GEN_8;
  wire [63:0] GEN_9;
  wire [63:0] GEN_10;
  wire [63:0] GEN_11;
  wire [63:0] GEN_12;
  wire [63:0] GEN_13;
  wire [63:0] GEN_14;
  wire [63:0] GEN_15;
  wire [63:0] GEN_16;
  wire [63:0] GEN_17;
  wire [63:0] GEN_18;
  wire [63:0] GEN_19;
  wire [63:0] GEN_20;
  wire [63:0] GEN_21;
  wire [63:0] GEN_22;
  wire [63:0] GEN_23;
  wire [63:0] GEN_24;
  wire [63:0] GEN_25;
  wire [63:0] GEN_26;
  wire [63:0] GEN_27;
  wire [63:0] GEN_28;
  wire [63:0] GEN_29;
  wire [63:0] GEN_30;
  wire [63:0] GEN_31;
  wire [63:0] GEN_32;
  wire [63:0] GEN_33;
  wire [63:0] GEN_34;
  wire [63:0] GEN_35;
  wire [63:0] GEN_36;
  wire [63:0] GEN_37;
  wire [63:0] GEN_38;
  wire [63:0] GEN_39;
  wire [63:0] GEN_40;
  wire [63:0] GEN_41;
  wire [63:0] GEN_42;
  wire [63:0] GEN_43;
  wire [63:0] GEN_44;
  wire [63:0] GEN_45;
  wire [63:0] GEN_46;
  wire [63:0] GEN_47;
  wire [63:0] GEN_48;
  wire [63:0] GEN_49;
  wire [63:0] GEN_50;
  wire [63:0] GEN_51;
  wire [63:0] GEN_52;
  wire [63:0] GEN_53;
  PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_QUEUE_8 acq (
    .clk(acq_clk),
    .reset(acq_reset),
    .io_enq_ready(acq_io_enq_ready),
    .io_enq_valid(acq_io_enq_valid),
    .io_enq_bits_addr_block(acq_io_enq_bits_addr_block),
    .io_enq_bits_client_xact_id(acq_io_enq_bits_client_xact_id),
    .io_enq_bits_addr_beat(acq_io_enq_bits_addr_beat),
    .io_enq_bits_is_builtin_type(acq_io_enq_bits_is_builtin_type),
    .io_enq_bits_a_type(acq_io_enq_bits_a_type),
    .io_enq_bits_union(acq_io_enq_bits_union),
    .io_enq_bits_data(acq_io_enq_bits_data),
    .io_deq_ready(acq_io_deq_ready),
    .io_deq_valid(acq_io_deq_valid),
    .io_deq_bits_addr_block(acq_io_deq_bits_addr_block),
    .io_deq_bits_client_xact_id(acq_io_deq_bits_client_xact_id),
    .io_deq_bits_addr_beat(acq_io_deq_bits_addr_beat),
    .io_deq_bits_is_builtin_type(acq_io_deq_bits_is_builtin_type),
    .io_deq_bits_a_type(acq_io_deq_bits_a_type),
    .io_deq_bits_union(acq_io_deq_bits_union),
    .io_deq_bits_data(acq_io_deq_bits_data),
    .io_count(acq_io_count)
  );
  assign io_acquire_ready = acq_io_enq_ready;
  assign io_grant_valid = acq_io_deq_valid;
  assign io_grant_bits_addr_beat = T_579_addr_beat;
  assign io_grant_bits_client_xact_id = T_579_client_xact_id;
  assign io_grant_bits_manager_xact_id = T_579_manager_xact_id;
  assign io_grant_bits_is_builtin_type = T_579_is_builtin_type;
  assign io_grant_bits_g_type = T_579_g_type;
  assign io_grant_bits_data = T_579_data;
  assign acq_clk = clk;
  assign acq_reset = reset;
  assign acq_io_enq_valid = io_acquire_valid;
  assign acq_io_enq_bits_addr_block = io_acquire_bits_addr_block;
  assign acq_io_enq_bits_client_xact_id = io_acquire_bits_client_xact_id;
  assign acq_io_enq_bits_addr_beat = io_acquire_bits_addr_beat;
  assign acq_io_enq_bits_is_builtin_type = io_acquire_bits_is_builtin_type;
  assign acq_io_enq_bits_a_type = io_acquire_bits_a_type;
  assign acq_io_enq_bits_union = io_acquire_bits_union;
  assign acq_io_enq_bits_data = io_acquire_bits_data;
  assign acq_io_deq_ready = T_525;
  assign T_446 = acq_io_deq_bits_a_type == 3'h0;
  assign single_beat = acq_io_deq_bits_is_builtin_type & T_446;
  assign T_448 = acq_io_deq_bits_a_type == 3'h1;
  assign multi_beat = acq_io_deq_bits_is_builtin_type & T_448;
  assign T_450 = acq_io_deq_valid == 1'h0;
  assign T_451 = T_450 | single_beat;
  assign T_452 = T_451 | multi_beat;
  assign T_453 = T_452 | reset;
  assign T_455 = T_453 == 1'h0;
  assign T_457 = io_grant_ready & io_grant_valid;
  assign T_459 = addr_beat + 3'h1;
  assign T_460 = T_459[2:0];
  assign GEN_1 = T_457 ? T_460 : addr_beat;
  assign T_461 = io_acquire_ready & io_acquire_valid;
  assign GEN_2 = T_461 ? io_acquire_bits_addr_beat : GEN_1;
  assign rom_0 = 64'h6f;
  assign rom_1 = 64'h6000002000000000;
  assign rom_2 = 64'h0;
  assign rom_3 = 64'h0;
  assign rom_4 = 64'h200a7b2063696c70;
  assign rom_5 = 64'h7469726f69727020;
  assign rom_6 = 64'h3030303478302079;
  assign rom_7 = 64'h20200a3b30303030;
  assign rom_8 = 64'h20676e69646e6570;
  assign rom_9 = 64'h3031303030347830;
  assign rom_10 = 64'h646e20200a3b3030;
  assign rom_11 = 64'ha3b313320737665;
  assign rom_12 = 64'h7b206374720a3b7d;
  assign rom_13 = 64'h207264646120200a;
  assign rom_14 = 64'h6662303034347830;
  assign rom_15 = 64'h720a3b7d0a3b3866;
  assign rom_16 = 64'h3020200a7b206d61;
  assign rom_17 = 64'h61202020200a7b20;
  assign rom_18 = 64'h3038783020726464;
  assign rom_19 = 64'ha3b303030303030;
  assign rom_20 = 64'h657a697320202020;
  assign rom_21 = 64'h3030303031783020;
  assign rom_22 = 64'h7d20200a3b303030;
  assign rom_23 = 64'h726f630a3b7d0a3b;
  assign rom_24 = 64'h203020200a7b2065;
  assign rom_25 = 64'h2030202020200a7b;
  assign rom_26 = 64'h2020202020200a7b;
  assign rom_27 = 64'h3233767220617369;
  assign rom_28 = 64'h202020200a3b6d69;
  assign rom_29 = 64'h6d63656d69742020;
  assign rom_30 = 64'h3030343478302070;
  assign rom_31 = 64'h20200a3b30303034;
  assign rom_32 = 64'h2069706920202020;
  assign rom_33 = 64'h3030303034347830;
  assign rom_34 = 64'h202020200a3b3030;
  assign rom_35 = 64'h7b2063696c702020;
  assign rom_36 = 64'h202020202020200a;
  assign rom_37 = 64'h2020200a7b206d20;
  assign rom_38 = 64'h6569202020202020;
  assign rom_39 = 64'h3230303034783020;
  assign rom_40 = 64'h2020200a3b303030;
  assign rom_41 = 64'h6874202020202020;
  assign rom_42 = 64'h3478302068736572;
  assign rom_43 = 64'h3b30303030303230;
  assign rom_44 = 64'h202020202020200a;
  assign rom_45 = 64'h206d69616c632020;
  assign rom_46 = 64'h3030303230347830;
  assign rom_47 = 64'h202020200a3b3430;
  assign rom_48 = 64'h200a3b7d20202020;
  assign rom_49 = 64'ha3b7d2020202020;
  assign rom_50 = 64'h200a3b7d20202020;
  assign rom_51 = 64'ha3b7d0a3b7d20;
  assign raddr = {acq_io_deq_bits_addr_block,addr_beat};
  assign T_520 = raddr[5:0];
  assign T_522 = multi_beat == 1'h0;
  assign T_524 = addr_beat == 3'h7;
  assign last = T_522 | T_524;
  assign T_525 = io_grant_ready & last;
  assign T_542 = 3'h6 == acq_io_deq_bits_a_type;
  assign T_543 = T_542 ? 3'h1 : 3'h3;
  assign T_544 = 3'h5 == acq_io_deq_bits_a_type;
  assign T_545 = T_544 ? 3'h1 : T_543;
  assign T_546 = 3'h4 == acq_io_deq_bits_a_type;
  assign T_547 = T_546 ? 3'h4 : T_545;
  assign T_548 = 3'h3 == acq_io_deq_bits_a_type;
  assign T_549 = T_548 ? 3'h3 : T_547;
  assign T_550 = 3'h2 == acq_io_deq_bits_a_type;
  assign T_551 = T_550 ? 3'h3 : T_549;
  assign T_552 = 3'h1 == acq_io_deq_bits_a_type;
  assign T_553 = T_552 ? 3'h5 : T_551;
  assign T_554 = 3'h0 == acq_io_deq_bits_a_type;
  assign T_555 = T_554 ? 3'h4 : T_553;
  assign T_579_addr_beat = addr_beat;
  assign T_579_client_xact_id = acq_io_deq_bits_client_xact_id;
  assign T_579_manager_xact_id = 1'h0;
  assign T_579_is_builtin_type = 1'h1;
  assign T_579_g_type = {{1'd0}, T_555};
  assign T_579_data = GEN_0;
  assign GEN_0 = GEN_53;
  assign GEN_3 = 6'h1 == T_520 ? rom_1 : rom_0;
  assign GEN_4 = 6'h2 == T_520 ? rom_2 : GEN_3;
  assign GEN_5 = 6'h3 == T_520 ? rom_3 : GEN_4;
  assign GEN_6 = 6'h4 == T_520 ? rom_4 : GEN_5;
  assign GEN_7 = 6'h5 == T_520 ? rom_5 : GEN_6;
  assign GEN_8 = 6'h6 == T_520 ? rom_6 : GEN_7;
  assign GEN_9 = 6'h7 == T_520 ? rom_7 : GEN_8;
  assign GEN_10 = 6'h8 == T_520 ? rom_8 : GEN_9;
  assign GEN_11 = 6'h9 == T_520 ? rom_9 : GEN_10;
  assign GEN_12 = 6'ha == T_520 ? rom_10 : GEN_11;
  assign GEN_13 = 6'hb == T_520 ? rom_11 : GEN_12;
  assign GEN_14 = 6'hc == T_520 ? rom_12 : GEN_13;
  assign GEN_15 = 6'hd == T_520 ? rom_13 : GEN_14;
  assign GEN_16 = 6'he == T_520 ? rom_14 : GEN_15;
  assign GEN_17 = 6'hf == T_520 ? rom_15 : GEN_16;
  assign GEN_18 = 6'h10 == T_520 ? rom_16 : GEN_17;
  assign GEN_19 = 6'h11 == T_520 ? rom_17 : GEN_18;
  assign GEN_20 = 6'h12 == T_520 ? rom_18 : GEN_19;
  assign GEN_21 = 6'h13 == T_520 ? rom_19 : GEN_20;
  assign GEN_22 = 6'h14 == T_520 ? rom_20 : GEN_21;
  assign GEN_23 = 6'h15 == T_520 ? rom_21 : GEN_22;
  assign GEN_24 = 6'h16 == T_520 ? rom_22 : GEN_23;
  assign GEN_25 = 6'h17 == T_520 ? rom_23 : GEN_24;
  assign GEN_26 = 6'h18 == T_520 ? rom_24 : GEN_25;
  assign GEN_27 = 6'h19 == T_520 ? rom_25 : GEN_26;
  assign GEN_28 = 6'h1a == T_520 ? rom_26 : GEN_27;
  assign GEN_29 = 6'h1b == T_520 ? rom_27 : GEN_28;
  assign GEN_30 = 6'h1c == T_520 ? rom_28 : GEN_29;
  assign GEN_31 = 6'h1d == T_520 ? rom_29 : GEN_30;
  assign GEN_32 = 6'h1e == T_520 ? rom_30 : GEN_31;
  assign GEN_33 = 6'h1f == T_520 ? rom_31 : GEN_32;
  assign GEN_34 = 6'h20 == T_520 ? rom_32 : GEN_33;
  assign GEN_35 = 6'h21 == T_520 ? rom_33 : GEN_34;
  assign GEN_36 = 6'h22 == T_520 ? rom_34 : GEN_35;
  assign GEN_37 = 6'h23 == T_520 ? rom_35 : GEN_36;
  assign GEN_38 = 6'h24 == T_520 ? rom_36 : GEN_37;
  assign GEN_39 = 6'h25 == T_520 ? rom_37 : GEN_38;
  assign GEN_40 = 6'h26 == T_520 ? rom_38 : GEN_39;
  assign GEN_41 = 6'h27 == T_520 ? rom_39 : GEN_40;
  assign GEN_42 = 6'h28 == T_520 ? rom_40 : GEN_41;
  assign GEN_43 = 6'h29 == T_520 ? rom_41 : GEN_42;
  assign GEN_44 = 6'h2a == T_520 ? rom_42 : GEN_43;
  assign GEN_45 = 6'h2b == T_520 ? rom_43 : GEN_44;
  assign GEN_46 = 6'h2c == T_520 ? rom_44 : GEN_45;
  assign GEN_47 = 6'h2d == T_520 ? rom_45 : GEN_46;
  assign GEN_48 = 6'h2e == T_520 ? rom_46 : GEN_47;
  assign GEN_49 = 6'h2f == T_520 ? rom_47 : GEN_48;
  assign GEN_50 = 6'h30 == T_520 ? rom_48 : GEN_49;
  assign GEN_51 = 6'h31 == T_520 ? rom_49 : GEN_50;
  assign GEN_52 = 6'h32 == T_520 ? rom_50 : GEN_51;
  assign GEN_53 = 6'h33 == T_520 ? rom_51 : GEN_52;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_54 = {1{$random}};
  addr_beat = GEN_54[2:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(T_461) begin
        addr_beat <= io_acquire_bits_addr_beat;
      end else begin
        if(T_457) begin
          addr_beat <= T_460;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_455) begin
          $fwrite(32'h80000002,"Assertion failed: unsupported PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ROM_SLAVE operation\n    at Rom.scala:17 assert(!acq.valid || single_beat || multi_beat, ---unsupported PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ROM_SLAVE operation---)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_455) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule
