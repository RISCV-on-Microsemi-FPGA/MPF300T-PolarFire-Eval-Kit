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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_COREPLEX_LOCAL_INTERRUPTER_CLINT(
  input         clock,
  input         reset,
  input         io_rtcTick,
  output        io_int_0_0,
  output        io_int_0_1,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [1:0]  io_in_0_a_bits_size,
  input  [6:0]  io_in_0_a_bits_source,
  input  [30:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [1:0]  io_in_0_d_bits_size,
  output [6:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error
);
  reg [31:0] time_0;
  reg [31:0] _RAND_0;
  reg [31:0] time_1;
  reg [31:0] _RAND_1;
  wire [63:0] _T_69;
  wire [64:0] _T_71;
  wire [63:0] _T_72;
  wire [31:0] _T_74;
  wire [63:0] _GEN_6;
  wire [31:0] _GEN_7;
  reg [31:0] timecmp_0_0;
  reg [31:0] _RAND_2;
  reg [31:0] timecmp_0_1;
  reg [31:0] _RAND_3;
  reg  ipi_0;
  reg [31:0] _RAND_4;
  wire [63:0] _T_81;
  wire  _T_82;
  wire [13:0] _T_88_bits_index;
  wire  _T_93;
  wire [28:0] _T_94;
  wire [8:0] _T_95;
  wire [13:0] _T_134;
  wire  _T_136;
  wire [13:0] _T_142;
  wire [13:0] _T_143;
  wire  _T_145;
  wire [13:0] _T_151;
  wire [13:0] _T_152;
  wire  _T_154;
  wire [13:0] _T_160;
  wire [13:0] _T_161;
  wire  _T_163;
  wire [13:0] _T_169;
  wire [13:0] _T_170;
  wire  _T_172;
  wire  _T_229;
  wire  _T_230;
  wire  _T_231;
  wire  _T_232;
  wire [7:0] _T_236;
  wire [7:0] _T_240;
  wire [7:0] _T_244;
  wire [7:0] _T_248;
  wire [15:0] _T_249;
  wire [15:0] _T_250;
  wire [31:0] _T_251;
  wire [31:0] _T_279;
  wire  _T_281;
  wire  _T_294;
  wire [31:0] _GEN_8;
  wire [31:0] _T_313;
  wire  _T_334;
  wire [31:0] _GEN_9;
  wire  _T_374;
  wire [63:0] _GEN_10;
  wire  _T_414;
  wire [31:0] _GEN_11;
  wire  _T_454;
  wire [31:0] _GEN_12;
  wire  _T_475;
  wire  _T_476;
  wire  _T_487;
  wire [1:0] _T_489;
  wire [2:0] _T_490;
  wire [7:0] _T_508;
  wire  _T_509;
  wire  _T_511;
  wire  _T_512;
  wire  _T_513;
  wire  _T_514;
  wire  _T_527;
  wire  _T_608;
  wire  _T_609;
  wire  _T_612;
  wire  _T_628;
  wire  _T_636;
  wire  _T_644;
  wire  _T_652;
  wire  _T_773;
  wire  _T_789;
  wire  _T_797;
  wire  _T_805;
  wire  _T_813;
  wire  _GEN_41;
  wire  _GEN_42;
  wire  _GEN_43;
  wire  _GEN_44;
  wire  _GEN_45;
  wire  _GEN_46;
  wire  _GEN_47;
  wire [31:0] _GEN_48;
  wire [31:0] _GEN_49;
  wire [31:0] _GEN_50;
  wire [31:0] _GEN_51;
  wire [31:0] _GEN_52;
  wire [31:0] _GEN_53;
  wire [31:0] _GEN_54;
  wire [31:0] _T_886;
  wire [6:0] _T_887;
  wire [1:0] _T_888;
  assign io_int_0_0 = ipi_0;
  assign io_int_0_1 = _T_82;
  assign io_in_0_a_ready = io_in_0_d_ready;
  assign io_in_0_d_valid = io_in_0_a_valid;
  assign io_in_0_d_bits_opcode = {{2'd0}, _T_93};
  assign io_in_0_d_bits_param = 2'h0;
  assign io_in_0_d_bits_size = _T_888;
  assign io_in_0_d_bits_source = _T_887;
  assign io_in_0_d_bits_sink = 1'h0;
  assign io_in_0_d_bits_data = _T_886;
  assign io_in_0_d_bits_error = 1'h0;
  assign _T_69 = {time_1,time_0};
  assign _T_71 = _T_69 + 64'h1;
  assign _T_72 = _T_71[63:0];
  assign _T_74 = _T_72[63:32];
  assign _GEN_6 = io_rtcTick ? _T_72 : {{32'd0}, time_0};
  assign _GEN_7 = io_rtcTick ? _T_74 : time_1;
  assign _T_81 = {timecmp_0_1,timecmp_0_0};
  assign _T_82 = _T_69 >= _T_81;
  assign _T_88_bits_index = _T_94[13:0];
  assign _T_93 = io_in_0_a_bits_opcode == 3'h4;
  assign _T_94 = io_in_0_a_bits_address[30:2];
  assign _T_95 = {io_in_0_a_bits_source,io_in_0_a_bits_size};
  assign _T_134 = _T_88_bits_index & 14'h2ffc;
  assign _T_136 = _T_134 == 14'h0;
  assign _T_142 = _T_88_bits_index ^ 14'h1001;
  assign _T_143 = _T_142 & 14'h2ffc;
  assign _T_145 = _T_143 == 14'h0;
  assign _T_151 = _T_88_bits_index ^ 14'h2ffe;
  assign _T_152 = _T_151 & 14'h2ffc;
  assign _T_154 = _T_152 == 14'h0;
  assign _T_160 = _T_88_bits_index ^ 14'h2fff;
  assign _T_161 = _T_160 & 14'h2ffc;
  assign _T_163 = _T_161 == 14'h0;
  assign _T_169 = _T_88_bits_index ^ 14'h1000;
  assign _T_170 = _T_169 & 14'h2ffc;
  assign _T_172 = _T_170 == 14'h0;
  assign _T_229 = io_in_0_a_bits_mask[0];
  assign _T_230 = io_in_0_a_bits_mask[1];
  assign _T_231 = io_in_0_a_bits_mask[2];
  assign _T_232 = io_in_0_a_bits_mask[3];
  assign _T_236 = _T_229 ? 8'hff : 8'h0;
  assign _T_240 = _T_230 ? 8'hff : 8'h0;
  assign _T_244 = _T_231 ? 8'hff : 8'h0;
  assign _T_248 = _T_232 ? 8'hff : 8'h0;
  assign _T_249 = {_T_240,_T_236};
  assign _T_250 = {_T_248,_T_244};
  assign _T_251 = {_T_250,_T_249};
  assign _T_279 = ~ _T_251;
  assign _T_281 = _T_279 == 32'h0;
  assign _T_294 = _T_773 & _T_281;
  assign _GEN_8 = _T_294 ? io_in_0_a_bits_data : {{31'd0}, ipi_0};
  assign _T_313 = {{31'd0}, ipi_0};
  assign _T_334 = _T_813 & _T_281;
  assign _GEN_9 = _T_334 ? io_in_0_a_bits_data : timecmp_0_1;
  assign _T_374 = _T_789 & _T_281;
  assign _GEN_10 = _T_374 ? {{32'd0}, io_in_0_a_bits_data} : _GEN_6;
  assign _T_414 = _T_797 & _T_281;
  assign _GEN_11 = _T_414 ? io_in_0_a_bits_data : _GEN_7;
  assign _T_454 = _T_805 & _T_281;
  assign _GEN_12 = _T_454 ? io_in_0_a_bits_data : timecmp_0_0;
  assign _T_475 = _T_88_bits_index[0];
  assign _T_476 = _T_88_bits_index[1];
  assign _T_487 = _T_88_bits_index[12];
  assign _T_489 = {_T_487,_T_476};
  assign _T_490 = {_T_489,_T_475};
  assign _T_508 = 8'h1 << _T_490;
  assign _T_509 = _T_508[0];
  assign _T_511 = _T_508[2];
  assign _T_512 = _T_508[3];
  assign _T_513 = _T_508[4];
  assign _T_514 = _T_508[5];
  assign _T_527 = io_in_0_a_valid & io_in_0_d_ready;
  assign _T_608 = _T_93 == 1'h0;
  assign _T_609 = _T_527 & _T_608;
  assign _T_612 = _T_609 & _T_509;
  assign _T_628 = _T_609 & _T_511;
  assign _T_636 = _T_609 & _T_512;
  assign _T_644 = _T_609 & _T_513;
  assign _T_652 = _T_609 & _T_514;
  assign _T_773 = _T_612 & _T_136;
  assign _T_789 = _T_628 & _T_154;
  assign _T_797 = _T_636 & _T_163;
  assign _T_805 = _T_644 & _T_172;
  assign _T_813 = _T_652 & _T_145;
  assign _GEN_41 = 3'h1 == _T_490 ? 1'h1 : _T_136;
  assign _GEN_42 = 3'h2 == _T_490 ? _T_154 : _GEN_41;
  assign _GEN_43 = 3'h3 == _T_490 ? _T_163 : _GEN_42;
  assign _GEN_44 = 3'h4 == _T_490 ? _T_172 : _GEN_43;
  assign _GEN_45 = 3'h5 == _T_490 ? _T_145 : _GEN_44;
  assign _GEN_46 = 3'h6 == _T_490 ? 1'h1 : _GEN_45;
  assign _GEN_47 = 3'h7 == _T_490 ? 1'h1 : _GEN_46;
  assign _GEN_48 = 3'h1 == _T_490 ? 32'h0 : _T_313;
  assign _GEN_49 = 3'h2 == _T_490 ? time_0 : _GEN_48;
  assign _GEN_50 = 3'h3 == _T_490 ? time_1 : _GEN_49;
  assign _GEN_51 = 3'h4 == _T_490 ? timecmp_0_0 : _GEN_50;
  assign _GEN_52 = 3'h5 == _T_490 ? timecmp_0_1 : _GEN_51;
  assign _GEN_53 = 3'h6 == _T_490 ? 32'h0 : _GEN_52;
  assign _GEN_54 = 3'h7 == _T_490 ? 32'h0 : _GEN_53;
  assign _T_886 = _GEN_47 ? _GEN_54 : 32'h0;
  assign _T_887 = _T_95[8:2];
  assign _T_888 = _T_95[1:0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  time_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  time_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  timecmp_0_0 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  timecmp_0_1 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  ipi_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      time_0 <= 32'h0;
    end else begin
      time_0 <= _GEN_10[31:0];
    end
    if (reset) begin
      time_1 <= 32'h0;
    end else begin
      if (_T_414) begin
        time_1 <= io_in_0_a_bits_data;
      end else begin
        if (io_rtcTick) begin
          time_1 <= _T_74;
        end
      end
    end
    if (_T_454) begin
      timecmp_0_0 <= io_in_0_a_bits_data;
    end
    if (_T_334) begin
      timecmp_0_1 <= io_in_0_a_bits_data;
    end
    if (reset) begin
      ipi_0 <= 1'h0;
    end else begin
      ipi_0 <= _GEN_8[0];
    end
  end
endmodule
