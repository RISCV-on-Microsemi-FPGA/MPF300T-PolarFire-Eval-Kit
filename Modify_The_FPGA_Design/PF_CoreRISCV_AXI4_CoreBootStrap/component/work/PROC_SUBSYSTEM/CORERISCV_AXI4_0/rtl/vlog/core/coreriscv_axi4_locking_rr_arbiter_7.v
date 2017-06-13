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
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_7(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [2:0] io_in_0_bits_addr_beat,
  input  [1:0] io_in_0_bits_client_xact_id,
  input   io_in_0_bits_manager_xact_id,
  input   io_in_0_bits_is_builtin_type,
  input  [3:0] io_in_0_bits_g_type,
  input  [63:0] io_in_0_bits_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [2:0] io_in_1_bits_addr_beat,
  input  [1:0] io_in_1_bits_client_xact_id,
  input   io_in_1_bits_manager_xact_id,
  input   io_in_1_bits_is_builtin_type,
  input  [3:0] io_in_1_bits_g_type,
  input  [63:0] io_in_1_bits_data,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [2:0] io_in_2_bits_addr_beat,
  input  [1:0] io_in_2_bits_client_xact_id,
  input   io_in_2_bits_manager_xact_id,
  input   io_in_2_bits_is_builtin_type,
  input  [3:0] io_in_2_bits_g_type,
  input  [63:0] io_in_2_bits_data,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [2:0] io_in_3_bits_addr_beat,
  input  [1:0] io_in_3_bits_client_xact_id,
  input   io_in_3_bits_manager_xact_id,
  input   io_in_3_bits_is_builtin_type,
  input  [3:0] io_in_3_bits_g_type,
  input  [63:0] io_in_3_bits_data,
  input   io_out_ready,
  output  io_out_valid,
  output [2:0] io_out_bits_addr_beat,
  output [1:0] io_out_bits_client_xact_id,
  output  io_out_bits_manager_xact_id,
  output  io_out_bits_is_builtin_type,
  output [3:0] io_out_bits_g_type,
  output [63:0] io_out_bits_data,
  output [1:0] io_chosen
);
  wire [1:0] choice;
  wire  GEN_0;
  wire  GEN_7;
  wire  GEN_8;
  wire  GEN_9;
  wire [2:0] GEN_1;
  wire [2:0] GEN_10;
  wire [2:0] GEN_11;
  wire [2:0] GEN_12;
  wire [1:0] GEN_2;
  wire [1:0] GEN_13;
  wire [1:0] GEN_14;
  wire [1:0] GEN_15;
  wire  GEN_3;
  wire  GEN_16;
  wire  GEN_17;
  wire  GEN_18;
  wire  GEN_4;
  wire  GEN_19;
  wire  GEN_20;
  wire  GEN_21;
  wire [3:0] GEN_5;
  wire [3:0] GEN_22;
  wire [3:0] GEN_23;
  wire [3:0] GEN_24;
  wire [63:0] GEN_6;
  wire [63:0] GEN_25;
  wire [63:0] GEN_26;
  wire [63:0] GEN_27;
  reg [2:0] T_794;
  reg [31:0] GEN_39;
  reg [1:0] T_796;
  reg [31:0] GEN_40;
  wire  T_798;
  wire [2:0] T_806_0;
  wire [3:0] GEN_38;
  wire  T_808;
  wire  T_809;
  wire  T_810;
  wire  T_812;
  wire  T_813;
  wire [3:0] T_817;
  wire [2:0] T_818;
  wire [1:0] GEN_28;
  wire [2:0] GEN_29;
  wire [1:0] GEN_30;
  reg [1:0] lastGrant;
  reg [31:0] GEN_41;
  wire [1:0] GEN_31;
  wire  T_823;
  wire  T_825;
  wire  T_827;
  wire  T_829;
  wire  T_830;
  wire  T_831;
  wire  T_834;
  wire  T_835;
  wire  T_836;
  wire  T_837;
  wire  T_838;
  wire  T_842;
  wire  T_844;
  wire  T_846;
  wire  T_848;
  wire  T_850;
  wire  T_852;
  wire  T_856;
  wire  T_857;
  wire  T_858;
  wire  T_859;
  wire  T_860;
  wire  T_862;
  wire  T_863;
  wire  T_864;
  wire  T_866;
  wire  T_867;
  wire  T_868;
  wire  T_870;
  wire  T_871;
  wire  T_872;
  wire  T_874;
  wire  T_875;
  wire  T_876;
  wire [1:0] GEN_32;
  wire [1:0] GEN_33;
  wire [1:0] GEN_34;
  wire [1:0] GEN_35;
  wire [1:0] GEN_36;
  wire [1:0] GEN_37;
  assign io_in_0_ready = T_864;
  assign io_in_1_ready = T_868;
  assign io_in_2_ready = T_872;
  assign io_in_3_ready = T_876;
  assign io_out_valid = GEN_0;
  assign io_out_bits_addr_beat = GEN_1;
  assign io_out_bits_client_xact_id = GEN_2;
  assign io_out_bits_manager_xact_id = GEN_3;
  assign io_out_bits_is_builtin_type = GEN_4;
  assign io_out_bits_g_type = GEN_5;
  assign io_out_bits_data = GEN_6;
  assign io_chosen = GEN_30;
  assign choice = GEN_37;
  assign GEN_0 = GEN_9;
  assign GEN_7 = 2'h1 == io_chosen ? io_in_1_valid : io_in_0_valid;
  assign GEN_8 = 2'h2 == io_chosen ? io_in_2_valid : GEN_7;
  assign GEN_9 = 2'h3 == io_chosen ? io_in_3_valid : GEN_8;
  assign GEN_1 = GEN_12;
  assign GEN_10 = 2'h1 == io_chosen ? io_in_1_bits_addr_beat : io_in_0_bits_addr_beat;
  assign GEN_11 = 2'h2 == io_chosen ? io_in_2_bits_addr_beat : GEN_10;
  assign GEN_12 = 2'h3 == io_chosen ? io_in_3_bits_addr_beat : GEN_11;
  assign GEN_2 = GEN_15;
  assign GEN_13 = 2'h1 == io_chosen ? io_in_1_bits_client_xact_id : io_in_0_bits_client_xact_id;
  assign GEN_14 = 2'h2 == io_chosen ? io_in_2_bits_client_xact_id : GEN_13;
  assign GEN_15 = 2'h3 == io_chosen ? io_in_3_bits_client_xact_id : GEN_14;
  assign GEN_3 = GEN_18;
  assign GEN_16 = 2'h1 == io_chosen ? io_in_1_bits_manager_xact_id : io_in_0_bits_manager_xact_id;
  assign GEN_17 = 2'h2 == io_chosen ? io_in_2_bits_manager_xact_id : GEN_16;
  assign GEN_18 = 2'h3 == io_chosen ? io_in_3_bits_manager_xact_id : GEN_17;
  assign GEN_4 = GEN_21;
  assign GEN_19 = 2'h1 == io_chosen ? io_in_1_bits_is_builtin_type : io_in_0_bits_is_builtin_type;
  assign GEN_20 = 2'h2 == io_chosen ? io_in_2_bits_is_builtin_type : GEN_19;
  assign GEN_21 = 2'h3 == io_chosen ? io_in_3_bits_is_builtin_type : GEN_20;
  assign GEN_5 = GEN_24;
  assign GEN_22 = 2'h1 == io_chosen ? io_in_1_bits_g_type : io_in_0_bits_g_type;
  assign GEN_23 = 2'h2 == io_chosen ? io_in_2_bits_g_type : GEN_22;
  assign GEN_24 = 2'h3 == io_chosen ? io_in_3_bits_g_type : GEN_23;
  assign GEN_6 = GEN_27;
  assign GEN_25 = 2'h1 == io_chosen ? io_in_1_bits_data : io_in_0_bits_data;
  assign GEN_26 = 2'h2 == io_chosen ? io_in_2_bits_data : GEN_25;
  assign GEN_27 = 2'h3 == io_chosen ? io_in_3_bits_data : GEN_26;
  assign T_798 = T_794 != 3'h0;
  assign T_806_0 = 3'h5;
  assign GEN_38 = {{1'd0}, T_806_0};
  assign T_808 = io_out_bits_g_type == GEN_38;
  assign T_809 = io_out_bits_g_type == 4'h0;
  assign T_810 = io_out_bits_is_builtin_type ? T_808 : T_809;
  assign T_812 = io_out_ready & io_out_valid;
  assign T_813 = T_812 & T_810;
  assign T_817 = T_794 + 3'h1;
  assign T_818 = T_817[2:0];
  assign GEN_28 = T_813 ? io_chosen : T_796;
  assign GEN_29 = T_813 ? T_818 : T_794;
  assign GEN_30 = T_798 ? T_796 : choice;
  assign GEN_31 = T_812 ? io_chosen : lastGrant;
  assign T_823 = 2'h1 > lastGrant;
  assign T_825 = 2'h2 > lastGrant;
  assign T_827 = 2'h3 > lastGrant;
  assign T_829 = io_in_1_valid & T_823;
  assign T_830 = io_in_2_valid & T_825;
  assign T_831 = io_in_3_valid & T_827;
  assign T_834 = T_829 | T_830;
  assign T_835 = T_834 | T_831;
  assign T_836 = T_835 | io_in_0_valid;
  assign T_837 = T_836 | io_in_1_valid;
  assign T_838 = T_837 | io_in_2_valid;
  assign T_842 = T_829 == 1'h0;
  assign T_844 = T_834 == 1'h0;
  assign T_846 = T_835 == 1'h0;
  assign T_848 = T_836 == 1'h0;
  assign T_850 = T_837 == 1'h0;
  assign T_852 = T_838 == 1'h0;
  assign T_856 = T_823 | T_848;
  assign T_857 = T_842 & T_825;
  assign T_858 = T_857 | T_850;
  assign T_859 = T_844 & T_827;
  assign T_860 = T_859 | T_852;
  assign T_862 = T_796 == 2'h0;
  assign T_863 = T_798 ? T_862 : T_846;
  assign T_864 = T_863 & io_out_ready;
  assign T_866 = T_796 == 2'h1;
  assign T_867 = T_798 ? T_866 : T_856;
  assign T_868 = T_867 & io_out_ready;
  assign T_870 = T_796 == 2'h2;
  assign T_871 = T_798 ? T_870 : T_858;
  assign T_872 = T_871 & io_out_ready;
  assign T_874 = T_796 == 2'h3;
  assign T_875 = T_798 ? T_874 : T_860;
  assign T_876 = T_875 & io_out_ready;
  assign GEN_32 = io_in_2_valid ? 2'h2 : 2'h3;
  assign GEN_33 = io_in_1_valid ? 2'h1 : GEN_32;
  assign GEN_34 = io_in_0_valid ? 2'h0 : GEN_33;
  assign GEN_35 = T_831 ? 2'h3 : GEN_34;
  assign GEN_36 = T_830 ? 2'h2 : GEN_35;
  assign GEN_37 = T_829 ? 2'h1 : GEN_36;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002;
    `endif
  `ifdef RANDOMIZE
  GEN_39 = {1{$random}};
  T_794 = GEN_39[2:0];
  `endif
  `ifdef RANDOMIZE
  GEN_40 = {1{$random}};
  T_796 = GEN_40[1:0];
  `endif
  `ifdef RANDOMIZE
  GEN_41 = {1{$random}};
  lastGrant = GEN_41[1:0];
  `endif
  end
`endif
  always @(posedge clk) begin
    if(reset) begin
      T_794 <= 3'h0;
    end else begin
      if(T_813) begin
        T_794 <= T_818;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_813) begin
        T_796 <= io_chosen;
      end
    end
    if(1'h0) begin
    end else begin
      if(T_812) begin
        lastGrant <= io_chosen;
      end
    end
  end
endmodule
