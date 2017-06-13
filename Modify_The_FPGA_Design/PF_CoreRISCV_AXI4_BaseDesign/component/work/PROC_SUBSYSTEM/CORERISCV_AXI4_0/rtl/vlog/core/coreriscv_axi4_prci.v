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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_PRCI(
  input   clk,
  input   reset,
  input   io_interrupts_0_meip,
  input   io_interrupts_0_seip,
  input   io_interrupts_0_debug,
  output  io_tl_acquire_ready,
  input   io_tl_acquire_valid,
  input  [25:0] io_tl_acquire_bits_addr_block,
  input  [1:0] io_tl_acquire_bits_client_xact_id,
  input  [2:0] io_tl_acquire_bits_addr_beat,
  input   io_tl_acquire_bits_is_builtin_type,
  input  [2:0] io_tl_acquire_bits_a_type,
  input  [11:0] io_tl_acquire_bits_union,
  input  [63:0] io_tl_acquire_bits_data,
  input   io_tl_grant_ready,
  output  io_tl_grant_valid,
  output [2:0] io_tl_grant_bits_addr_beat,
  output [1:0] io_tl_grant_bits_client_xact_id,
  output  io_tl_grant_bits_manager_xact_id,
  output  io_tl_grant_bits_is_builtin_type,
  output [3:0] io_tl_grant_bits_g_type,
  output [63:0] io_tl_grant_bits_data,
  output  io_tiles_0_reset,
  output  io_tiles_0_id,
  output  io_tiles_0_interrupts_meip,
  output  io_tiles_0_interrupts_seip,
  output  io_tiles_0_interrupts_debug,
  output  io_tiles_0_interrupts_mtip,
  output  io_tiles_0_interrupts_msip,
  input   io_rtcTick
);
  reg [63:0] timecmp_0;
  reg [63:0] GEN_2;
  reg [63:0] time$;
  reg [63:0] GEN_3;
  wire [64:0] T_525;
  wire [63:0] T_526;
  wire [63:0] GEN_0;
  wire [31:0] T_533_0;
  reg [31:0] ipi_0;
  reg [31:0] GEN_6;
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
  wire [2:0] T_568_0;
  wire [2:0] T_568_1;
  wire  T_570;
  wire  T_571;
  wire  T_572;
  wire  T_573;
  wire [2:0] T_574;
  wire [2:0] T_576;
  wire [28:0] T_577;
  wire [31:0] T_578;
  wire [15:0] addr;
  wire [63:0] rdata;
  wire  T_598;
  wire [2:0] T_599;
  wire  T_600;
  wire [2:0] T_601;
  wire  T_602;
  wire [2:0] T_603;
  wire  T_604;
  wire [2:0] T_605;
  wire  T_606;
  wire [2:0] T_607;
  wire  T_608;
  wire [2:0] T_609;
  wire  T_610;
  wire [2:0] T_611;
  wire [2:0] T_636_addr_beat;
  wire [1:0] T_636_client_xact_id;
  wire  T_636_manager_xact_id;
  wire  T_636_is_builtin_type;
  wire [3:0] T_636_g_type;
  wire [63:0] T_636_data;
  wire  T_658;
  wire [64:0] T_660;
  wire [63:0] T_661;
  wire [63:0] T_667_0;
  wire [2:0] T_676_0;
  wire [2:0] T_676_1;
  wire [63:0] GEN_4;
  wire  T_688;
  wire  T_690;
  wire  T_691;
  wire [2:0] T_699_0;
  wire [2:0] T_699_1;
  wire [2:0] T_717_0;
  wire [2:0] T_717_1;
  wire  T_729;
  wire  T_730;
  wire  T_732;
  wire [1:0] T_734;
  wire  T_735;
  wire  T_736;
  wire [3:0] T_740;
  wire [3:0] T_744;
  wire [7:0] T_745;
  wire  T_747;
  wire  T_748;
  wire  T_750;
  wire  T_751;
  wire  T_752;
  wire [7:0] T_753;
  wire [7:0] T_755;
  wire [7:0] T_756;
  wire  T_757;
  wire  T_758;
  wire  T_759;
  wire  T_760;
  wire  T_761;
  wire  T_762;
  wire  T_763;
  wire  T_764;
  wire [7:0] T_768;
  wire [7:0] T_772;
  wire [7:0] T_776;
  wire [7:0] T_780;
  wire [7:0] T_784;
  wire [7:0] T_788;
  wire [7:0] T_792;
  wire [7:0] T_796;
  wire [15:0] T_797;
  wire [15:0] T_798;
  wire [31:0] T_799;
  wire [15:0] T_800;
  wire [15:0] T_801;
  wire [31:0] T_802;
  wire [63:0] T_803;
  wire [63:0] T_804;
  wire [63:0] T_881;
  wire [63:0] T_882;
  wire [63:0] T_883;
  wire [63:0] GEN_5;
  wire [63:0] GEN_10;
  wire [63:0] GEN_11;
  wire  T_895;
  wire  T_896;
  wire [2:0] T_904_0;
  wire [2:0] T_904_1;
  wire [2:0] T_922_0;
  wire [2:0] T_922_1;
  wire [63:0] GEN_19;
  wire [63:0] T_1087;
  wire [63:0] T_1088;
  wire [63:0] GEN_12;
  wire [63:0] T_1099;
  wire [63:0] GEN_17;
  wire [63:0] GEN_18;
  wire  T_1100;
  wire  T_1101;
  reg  GEN_1;
  reg [31:0] GEN_7;
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
  assign io_tl_acquire_ready = acq_io_enq_ready;
  assign io_tl_grant_valid = acq_io_deq_valid;
  assign io_tl_grant_bits_addr_beat = T_636_addr_beat;
  assign io_tl_grant_bits_client_xact_id = T_636_client_xact_id;
  assign io_tl_grant_bits_manager_xact_id = T_636_manager_xact_id;
  assign io_tl_grant_bits_is_builtin_type = T_636_is_builtin_type;
  assign io_tl_grant_bits_g_type = T_636_g_type;
  assign io_tl_grant_bits_data = T_636_data;
  assign io_tiles_0_reset = GEN_1;
  assign io_tiles_0_id = 1'h0;
  assign io_tiles_0_interrupts_meip = io_interrupts_0_meip;
  assign io_tiles_0_interrupts_seip = io_interrupts_0_seip;
  assign io_tiles_0_interrupts_debug = io_interrupts_0_debug;
  assign io_tiles_0_interrupts_mtip = T_1101;
  assign io_tiles_0_interrupts_msip = T_1100;
  assign T_525 = time$ + 64'h1;
  assign T_526 = T_525[63:0];
  assign GEN_0 = io_rtcTick ? T_526 : time$;
  assign T_533_0 = 32'h0;
  assign acq_clk = clk;
  assign acq_reset = reset;
  assign acq_io_enq_valid = io_tl_acquire_valid;
  assign acq_io_enq_bits_addr_block = io_tl_acquire_bits_addr_block;
  assign acq_io_enq_bits_client_xact_id = io_tl_acquire_bits_client_xact_id;
  assign acq_io_enq_bits_addr_beat = io_tl_acquire_bits_addr_beat;
  assign acq_io_enq_bits_is_builtin_type = io_tl_acquire_bits_is_builtin_type;
  assign acq_io_enq_bits_a_type = io_tl_acquire_bits_a_type;
  assign acq_io_enq_bits_union = io_tl_acquire_bits_union;
  assign acq_io_enq_bits_data = io_tl_acquire_bits_data;
  assign acq_io_deq_ready = io_tl_grant_ready;
  assign T_568_0 = 3'h0;
  assign T_568_1 = 3'h4;
  assign T_570 = acq_io_deq_bits_a_type == T_568_0;
  assign T_571 = acq_io_deq_bits_a_type == T_568_1;
  assign T_572 = T_570 | T_571;
  assign T_573 = acq_io_deq_bits_is_builtin_type & T_572;
  assign T_574 = acq_io_deq_bits_union[11:9];
  assign T_576 = T_573 ? T_574 : 3'h0;
  assign T_577 = {acq_io_deq_bits_addr_block,acq_io_deq_bits_addr_beat};
  assign T_578 = {T_577,T_576};
  assign addr = T_578[15:0];
  assign rdata = GEN_18;
  assign T_598 = 3'h6 == acq_io_deq_bits_a_type;
  assign T_599 = T_598 ? 3'h1 : 3'h3;
  assign T_600 = 3'h5 == acq_io_deq_bits_a_type;
  assign T_601 = T_600 ? 3'h1 : T_599;
  assign T_602 = 3'h4 == acq_io_deq_bits_a_type;
  assign T_603 = T_602 ? 3'h4 : T_601;
  assign T_604 = 3'h3 == acq_io_deq_bits_a_type;
  assign T_605 = T_604 ? 3'h3 : T_603;
  assign T_606 = 3'h2 == acq_io_deq_bits_a_type;
  assign T_607 = T_606 ? 3'h3 : T_605;
  assign T_608 = 3'h1 == acq_io_deq_bits_a_type;
  assign T_609 = T_608 ? 3'h5 : T_607;
  assign T_610 = 3'h0 == acq_io_deq_bits_a_type;
  assign T_611 = T_610 ? 3'h4 : T_609;
  assign T_636_addr_beat = 3'h0;
  assign T_636_client_xact_id = acq_io_deq_bits_client_xact_id;
  assign T_636_manager_xact_id = 1'h0;
  assign T_636_is_builtin_type = 1'h1;
  assign T_636_g_type = {{1'd0}, T_611};
  assign T_636_data = rdata;
  assign T_658 = addr[15];
  assign T_660 = time$ + 64'h0;
  assign T_661 = T_660[63:0];
  assign T_667_0 = T_661;
  assign T_676_0 = 3'h0;
  assign T_676_1 = 3'h4;
  assign GEN_4 = T_658 ? T_667_0 : 64'h0;
  assign T_688 = addr >= 16'h4000;
  assign T_690 = T_658 == 1'h0;
  assign T_691 = T_690 & T_688;
  assign T_699_0 = 3'h0;
  assign T_699_1 = 3'h4;
  assign T_717_0 = 3'h0;
  assign T_717_1 = 3'h4;
  assign T_729 = acq_io_deq_bits_a_type == 3'h4;
  assign T_730 = acq_io_deq_bits_is_builtin_type & T_729;
  assign T_732 = T_574[2];
  assign T_734 = 2'h1 << T_732;
  assign T_735 = T_734[0];
  assign T_736 = T_734[1];
  assign T_740 = T_735 ? 4'hf : 4'h0;
  assign T_744 = T_736 ? 4'hf : 4'h0;
  assign T_745 = {T_744,T_740};
  assign T_747 = acq_io_deq_bits_a_type == 3'h3;
  assign T_748 = acq_io_deq_bits_is_builtin_type & T_747;
  assign T_750 = acq_io_deq_bits_a_type == 3'h2;
  assign T_751 = acq_io_deq_bits_is_builtin_type & T_750;
  assign T_752 = T_748 | T_751;
  assign T_753 = acq_io_deq_bits_union[8:1];
  assign T_755 = T_752 ? T_753 : 8'h0;
  assign T_756 = T_730 ? T_745 : T_755;
  assign T_757 = T_756[0];
  assign T_758 = T_756[1];
  assign T_759 = T_756[2];
  assign T_760 = T_756[3];
  assign T_761 = T_756[4];
  assign T_762 = T_756[5];
  assign T_763 = T_756[6];
  assign T_764 = T_756[7];
  assign T_768 = T_757 ? 8'hff : 8'h0;
  assign T_772 = T_758 ? 8'hff : 8'h0;
  assign T_776 = T_759 ? 8'hff : 8'h0;
  assign T_780 = T_760 ? 8'hff : 8'h0;
  assign T_784 = T_761 ? 8'hff : 8'h0;
  assign T_788 = T_762 ? 8'hff : 8'h0;
  assign T_792 = T_763 ? 8'hff : 8'h0;
  assign T_796 = T_764 ? 8'hff : 8'h0;
  assign T_797 = {T_772,T_768};
  assign T_798 = {T_780,T_776};
  assign T_799 = {T_798,T_797};
  assign T_800 = {T_788,T_784};
  assign T_801 = {T_796,T_792};
  assign T_802 = {T_801,T_800};
  assign T_803 = {T_802,T_799};
  assign T_804 = acq_io_deq_bits_data & T_803;
  assign T_881 = ~ T_803;
  assign T_882 = timecmp_0 & T_881;
  assign T_883 = T_804 | T_882;
  assign GEN_5 = T_751 ? T_883 : timecmp_0;
  assign GEN_10 = T_691 ? GEN_5 : timecmp_0;
  assign GEN_11 = T_691 ? timecmp_0 : GEN_4;
  assign T_895 = T_688 == 1'h0;
  assign T_896 = T_690 & T_895;
  assign T_904_0 = 3'h0;
  assign T_904_1 = 3'h4;
  assign T_922_0 = 3'h0;
  assign T_922_1 = 3'h4;
  assign GEN_19 = {{32'd0}, ipi_0};
  assign T_1087 = GEN_19 & T_881;
  assign T_1088 = T_804 | T_1087;
  assign GEN_12 = T_751 ? T_1088 : {{32'd0}, ipi_0};
  assign T_1099 = GEN_19 & 64'h100000001;
  assign GEN_17 = T_896 ? GEN_12 : {{32'd0}, ipi_0};
  assign GEN_18 = T_896 ? T_1099 : GEN_11;
  assign T_1100 = ipi_0[0];
  assign T_1101 = time$ >= timecmp_0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_2 = {2{$random}};
  timecmp_0 = GEN_2[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_3 = {2{$random}};
  time$ = GEN_3[63:0];
  `endif
  `ifdef RANDOMIZE
  GEN_6 = {1{$random}};
  ipi_0 = GEN_6[31:0];
  `endif
  `ifdef RANDOMIZE
  GEN_7 = {1{$random}};
  GEN_1 = GEN_7[0:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(1'h0) begin
    end else begin
      if(T_691) begin
        if(T_751) begin
          timecmp_0 <= T_883;
        end
      end
    end
    if(reset) begin
      time$ <= 64'h0;
    end else begin
      if(io_rtcTick) begin
        time$ <= T_526;
      end
    end
    if(reset) begin
      ipi_0 <= T_533_0;
    end else begin
      ipi_0 <= GEN_17[31:0];
    end
  end
endmodule
