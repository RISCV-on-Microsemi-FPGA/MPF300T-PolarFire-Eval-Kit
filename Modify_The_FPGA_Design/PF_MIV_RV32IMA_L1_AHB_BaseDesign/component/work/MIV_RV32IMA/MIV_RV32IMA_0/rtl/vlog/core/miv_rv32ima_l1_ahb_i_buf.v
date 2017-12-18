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
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_I_BUF(
  input         clock,
  output        io_imem_ready,
  input         io_imem_valid,
  input         io_imem_bits_btb_valid,
  input         io_imem_bits_btb_bits_taken,
  input         io_imem_bits_btb_bits_bridx,
  input  [31:0] io_imem_bits_pc,
  input  [31:0] io_imem_bits_data,
  input         io_imem_bits_xcpt_pf_inst,
  input         io_imem_bits_xcpt_ae_inst,
  input         io_imem_bits_replay,
  output [31:0] io_pc,
  input         io_inst_0_ready,
  output        io_inst_0_valid,
  output        io_inst_0_bits_xcpt0_pf_inst,
  output        io_inst_0_bits_xcpt0_ae_inst,
  output        io_inst_0_bits_xcpt1_pf_inst,
  output        io_inst_0_bits_xcpt1_ae_inst,
  output        io_inst_0_bits_replay,
  output        io_inst_0_bits_rvc,
  output [31:0] io_inst_0_bits_inst_bits,
  output [4:0]  io_inst_0_bits_inst_rd,
  output [4:0]  io_inst_0_bits_inst_rs1,
  output [4:0]  io_inst_0_bits_inst_rs2,
  output [4:0]  io_inst_0_bits_inst_rs3,
  output [31:0] io_inst_0_bits_raw,
  output [31:0] io_inst_0_bits_cinst
);
  reg [31:0] buf__data;
  reg [31:0] _RAND_0;
  reg  buf__xcpt_pf_inst;
  reg [31:0] _RAND_1;
  reg  buf__xcpt_ae_inst;
  reg [31:0] _RAND_2;
  reg  buf__replay;
  reg [31:0] _RAND_3;
  wire  _T_47;
  wire [1:0] _T_49;
  wire [1:0] _T_51;
  wire [2:0] _T_52;
  wire [2:0] _T_53;
  wire [1:0] nIC;
  wire [1:0] _T_54;
  wire [1:0] _T_55;
  wire  nICReady;
  wire [1:0] _T_57;
  wire [2:0] _T_58;
  wire [1:0] nValid;
  wire [1:0] _GEN_1;
  wire  _T_61;
  wire [2:0] _T_63;
  wire [2:0] _T_64;
  wire [1:0] _T_65;
  wire  _T_66;
  wire  _T_67;
  wire  _T_68;
  wire [1:0] _T_70;
  wire  _T_71;
  wire [1:0] _T_72;
  wire [1:0] _T_73;
  wire  _T_74;
  wire [63:0] _T_76;
  wire [31:0] _T_77;
  wire [63:0] _T_78;
  wire [127:0] _T_79;
  wire [5:0] _GEN_3;
  wire [5:0] _T_80;
  wire [190:0] _GEN_4;
  wire [190:0] _T_81;
  wire [31:0] icData;
  wire [94:0] _T_85;
  wire [31:0] icMask;
  wire [31:0] _T_86;
  wire [31:0] _T_87;
  wire [31:0] _T_88;
  wire [31:0] inst;
  wire [3:0] _T_90;
  wire [4:0] _T_92;
  wire [4:0] _T_93;
  wire [3:0] _T_94;
  wire  valid;
  wire [1:0] _T_96;
  wire [2:0] _T_98;
  wire [2:0] _T_99;
  wire [1:0] bufMask;
  wire  _T_100;
  wire  xcpt_0_pf_inst;
  wire  xcpt_0_ae_inst;
  wire [1:0] buf_replay;
  wire [1:0] _T_103;
  wire [1:0] _GEN_5;
  wire [1:0] _T_104;
  wire [1:0] _T_106;
  wire [1:0] ic_replay;
  wire [31:0] RVCExpander_io_in;
  wire [31:0] RVCExpander_io_out_bits;
  wire [4:0] RVCExpander_io_out_rd;
  wire [4:0] RVCExpander_io_out_rs1;
  wire [4:0] RVCExpander_io_out_rs2;
  wire [4:0] RVCExpander_io_out_rs3;
  wire  RVCExpander_io_rvc;
  wire [31:0] _T_139;
  wire [31:0] _T_140;
  wire  _T_153;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RVC_EXPANDER MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RVC_EXPANDER (
    .io_in(RVCExpander_io_in),
    .io_out_bits(RVCExpander_io_out_bits),
    .io_out_rd(RVCExpander_io_out_rd),
    .io_out_rs1(RVCExpander_io_out_rs1),
    .io_out_rs2(RVCExpander_io_out_rs2),
    .io_out_rs3(RVCExpander_io_out_rs3),
    .io_rvc(RVCExpander_io_rvc)
  );
  assign io_imem_ready = _T_68;
  assign io_pc = io_imem_bits_pc;
  assign io_inst_0_valid = valid;
  assign io_inst_0_bits_xcpt0_pf_inst = xcpt_0_pf_inst;
  assign io_inst_0_bits_xcpt0_ae_inst = xcpt_0_ae_inst;
  assign io_inst_0_bits_xcpt1_pf_inst = 1'h0;
  assign io_inst_0_bits_xcpt1_ae_inst = 1'h0;
  assign io_inst_0_bits_replay = _T_153;
  assign io_inst_0_bits_rvc = 1'h0;
  assign io_inst_0_bits_inst_bits = RVCExpander_io_out_bits;
  assign io_inst_0_bits_inst_rd = RVCExpander_io_out_rd;
  assign io_inst_0_bits_inst_rs1 = RVCExpander_io_out_rs1;
  assign io_inst_0_bits_inst_rs2 = RVCExpander_io_out_rs2;
  assign io_inst_0_bits_inst_rs3 = RVCExpander_io_out_rs3;
  assign io_inst_0_bits_raw = inst;
  assign io_inst_0_bits_cinst = _T_140;
  assign _T_47 = io_imem_bits_btb_valid & io_imem_bits_btb_bits_taken;
  assign _T_49 = io_imem_bits_btb_bits_bridx + 1'h1;
  assign _T_51 = _T_47 ? _T_49 : 2'h1;
  assign _T_52 = _T_51 - 2'h0;
  assign _T_53 = $unsigned(_T_52);
  assign nIC = _T_53[1:0];
  assign _T_54 = 1'h1 - 1'h0;
  assign _T_55 = $unsigned(_T_54);
  assign nICReady = _T_55[0:0];
  assign _T_57 = io_imem_valid ? nIC : 2'h0;
  assign _T_58 = _T_57 + 2'h0;
  assign nValid = _T_58[1:0];
  assign _GEN_1 = {{1'd0}, nICReady};
  assign _T_61 = _GEN_1 >= nIC;
  assign _T_63 = nIC - _GEN_1;
  assign _T_64 = $unsigned(_T_63);
  assign _T_65 = _T_64[1:0];
  assign _T_66 = 2'h0 >= _T_65;
  assign _T_67 = _T_61 | _T_66;
  assign _T_68 = io_inst_0_ready & _T_67;
  assign _T_70 = 1'h1 + 1'h0;
  assign _T_71 = _T_70[0:0];
  assign _T_72 = _T_71 - 1'h0;
  assign _T_73 = $unsigned(_T_72);
  assign _T_74 = _T_73[0:0];
  assign _T_76 = {io_imem_bits_data,io_imem_bits_data};
  assign _T_77 = _T_76[63:32];
  assign _T_78 = {_T_77,_T_77};
  assign _T_79 = {_T_78,_T_76};
  assign _GEN_3 = {{5'd0}, _T_74};
  assign _T_80 = _GEN_3 << 5;
  assign _GEN_4 = {{63'd0}, _T_79};
  assign _T_81 = _GEN_4 << _T_80;
  assign icData = _T_81[95:64];
  assign _T_85 = 95'hffffffff << 6'h0;
  assign icMask = _T_85[31:0];
  assign _T_86 = icData & icMask;
  assign _T_87 = ~ icMask;
  assign _T_88 = buf__data & _T_87;
  assign inst = _T_86 | _T_88;
  assign _T_90 = 4'h1 << nValid;
  assign _T_92 = _T_90 - 4'h1;
  assign _T_93 = $unsigned(_T_92);
  assign _T_94 = _T_93[3:0];
  assign valid = _T_94[0];
  assign _T_96 = 2'h1 << 1'h0;
  assign _T_98 = _T_96 - 2'h1;
  assign _T_99 = $unsigned(_T_98);
  assign bufMask = _T_99[1:0];
  assign _T_100 = bufMask[0];
  assign xcpt_0_pf_inst = _T_100 ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst;
  assign xcpt_0_ae_inst = _T_100 ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst;
  assign buf_replay = buf__replay ? bufMask : 2'h0;
  assign _T_103 = ~ bufMask;
  assign _GEN_5 = {{1'd0}, valid};
  assign _T_104 = _GEN_5 & _T_103;
  assign _T_106 = io_imem_bits_replay ? _T_104 : 2'h0;
  assign ic_replay = buf_replay | _T_106;
  assign RVCExpander_io_in = inst;
  assign _T_139 = inst & 32'hffff;
  assign _T_140 = RVCExpander_io_rvc ? _T_139 : inst;
  assign _T_153 = ic_replay[0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  buf__data = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  buf__xcpt_pf_inst = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  buf__xcpt_ae_inst = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  buf__replay = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IBuf.scala:86 assert(!io.imem.valid || !io.imem.bits.btb.valid || io.imem.bits.btb.bits.bridx >= pcWordBits)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
