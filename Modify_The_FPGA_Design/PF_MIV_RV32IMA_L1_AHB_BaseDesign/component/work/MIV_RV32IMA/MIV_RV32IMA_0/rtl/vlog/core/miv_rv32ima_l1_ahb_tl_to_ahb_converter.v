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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_TO_AHB_CONVERTER(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_size,
  input  [2:0]  io_in_0_a_bits_source,
  input  [31:0] io_in_0_a_bits_address,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [2:0]  io_in_0_d_bits_size,
  output [2:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  output        io_out_0_hmastlock,
  output [1:0]  io_out_0_htrans,
  output        io_out_0_hsel,
  output        io_out_0_hready,
  output        io_out_0_hwrite,
  output [31:0] io_out_0_haddr,
  output [2:0]  io_out_0_hsize,
  output [2:0]  io_out_0_hburst,
  output [3:0]  io_out_0_hprot,
  output [31:0] io_out_0_hwdata,
  input         io_out_0_hreadyout,
  input         io_out_0_hresp,
  input  [31:0] io_out_0_hrdata
);
  reg  _T_84_full;
  reg [31:0] _RAND_0;
  reg  _T_84_send;
  reg [31:0] _RAND_1;
  reg  _T_84_first;
  reg [31:0] _RAND_2;
  reg  _T_84_last;
  reg [31:0] _RAND_3;
  reg  _T_84_write;
  reg [31:0] _RAND_4;
  reg [2:0] _T_84_size;
  reg [31:0] _RAND_5;
  reg [2:0] _T_84_source;
  reg [31:0] _RAND_6;
  reg [2:0] _T_84_hsize;
  reg [31:0] _RAND_7;
  reg [2:0] _T_84_hburst;
  reg [31:0] _RAND_8;
  reg [31:0] _T_84_addr;
  reg [31:0] _RAND_9;
  reg [31:0] _T_84_data;
  reg [31:0] _RAND_10;
  wire [2:0] _T_86_hburst;
  wire  _T_92;
  wire  _T_93;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _T_97;
  wire  _T_98;
  wire  _T_100;
  wire  _T_101;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _T_105;
  wire  _T_106;
  wire  _T_110;
  wire  _T_111;
  wire  _T_112;
  wire [12:0] _T_118;
  wire [5:0] _T_119;
  wire [5:0] _T_120;
  wire [31:0] _T_121;
  wire [31:0] _GEN_47;
  wire [31:0] _T_122;
  wire [28:0] _T_123;
  wire  _T_125;
  wire  _T_127;
  wire [25:0] _T_128;
  wire [5:0] _T_129;
  wire [6:0] _T_131;
  wire [5:0] _T_132;
  wire [31:0] _T_133;
  wire  _GEN_4;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_7;
  wire [31:0] _GEN_8;
  wire  _T_140;
  wire  _T_141;
  wire  _GEN_9;
  wire  _GEN_10;
  wire  _GEN_11;
  wire [3:0] _T_148;
  wire [4:0] _T_150;
  wire [4:0] _T_151;
  wire [3:0] _T_152;
  wire  _T_154;
  wire [2:0] _T_156;
  wire  _T_162;
  wire  _T_163;
  wire  _T_165;
  wire  _T_167;
  wire  _T_168;
  wire  _T_169;
  wire  _T_174;
  wire  _T_177;
  wire  _GEN_13;
  wire [31:0] _GEN_14;
  wire  _GEN_15;
  wire  _GEN_16;
  wire  _T_181;
  wire  _T_182;
  wire  _T_183;
  wire  _T_189;
  wire  _T_191;
  wire [2:0] _T_193;
  wire [3:0] _GEN_48;
  wire [3:0] _T_195;
  wire [3:0] _T_197;
  wire [3:0] _T_198;
  wire  _GEN_17;
  wire  _GEN_18;
  wire  _GEN_19;
  wire  _GEN_20;
  wire [2:0] _GEN_21;
  wire [2:0] _GEN_22;
  wire [2:0] _GEN_23;
  wire [3:0] _GEN_24;
  wire [31:0] _GEN_25;
  wire [31:0] _GEN_26;
  wire  _GEN_27;
  wire  _GEN_28;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire  _GEN_32;
  wire [2:0] _GEN_33;
  wire [2:0] _GEN_34;
  wire [2:0] _GEN_35;
  wire [3:0] _GEN_36;
  wire [31:0] _GEN_37;
  wire [31:0] _GEN_38;
  wire [1:0] _T_202;
  wire [1:0] _T_205;
  wire [1:0] _T_206;
  wire  _T_208;
  wire  _T_209;
  reg [31:0] _T_214;
  reg [31:0] _RAND_11;
  wire [31:0] _GEN_39;
  wire  _T_215_ready;
  wire [2:0] _T_215_bits_opcode;
  wire  Queue_clock;
  wire  Queue_reset;
  wire  Queue_io_enq_ready;
  wire  Queue_io_enq_valid;
  wire [2:0] Queue_io_enq_bits_opcode;
  wire [1:0] Queue_io_enq_bits_param;
  wire [2:0] Queue_io_enq_bits_size;
  wire [2:0] Queue_io_enq_bits_source;
  wire  Queue_io_enq_bits_sink;
  wire [31:0] Queue_io_enq_bits_data;
  wire  Queue_io_enq_bits_error;
  wire  Queue_io_deq_ready;
  wire  Queue_io_deq_valid;
  wire [2:0] Queue_io_deq_bits_opcode;
  wire [1:0] Queue_io_deq_bits_param;
  wire [2:0] Queue_io_deq_bits_size;
  wire [2:0] Queue_io_deq_bits_source;
  wire  Queue_io_deq_bits_sink;
  wire [31:0] Queue_io_deq_bits_data;
  wire  Queue_io_deq_bits_error;
  wire  _T_221;
  wire  _T_222;
  wire  _T_223;
  wire  _T_225;
  reg [1:0] _T_228;
  reg [31:0] _RAND_12;
  wire  _T_230;
  wire  _T_231;
  wire  _T_233;
  wire [1:0] _GEN_49;
  wire [2:0] _T_234;
  wire [1:0] _T_235;
  wire  _T_236;
  wire [1:0] _GEN_50;
  wire [2:0] _T_237;
  wire [2:0] _T_238;
  wire [1:0] _T_239;
  wire  _T_241;
  reg  _T_244;
  reg [31:0] _RAND_13;
  reg  _T_246;
  reg [31:0] _RAND_14;
  reg  _T_248;
  reg [31:0] _RAND_15;
  wire  _GEN_40;
  reg [2:0] _T_250;
  reg [31:0] _RAND_16;
  wire [2:0] _GEN_41;
  reg [2:0] _T_252;
  reg [31:0] _RAND_17;
  wire [2:0] _GEN_42;
  wire  _T_254;
  wire  _T_255;
  wire  _T_256;
  wire  _GEN_43;
  wire  _GEN_44;
  wire  _GEN_45;
  wire  _GEN_46;
  wire  _T_258;
  wire  _T_259;
  wire  _T_267;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_19 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE (
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_sink(Queue_io_enq_bits_sink),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_error(Queue_io_enq_bits_error),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_sink(Queue_io_deq_bits_sink),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_error(Queue_io_deq_bits_error)
  );
  assign io_in_0_a_ready = _GEN_28;
  assign io_in_0_d_valid = Queue_io_deq_valid;
  assign io_in_0_d_bits_opcode = Queue_io_deq_bits_opcode;
  assign io_in_0_d_bits_param = Queue_io_deq_bits_param;
  assign io_in_0_d_bits_size = Queue_io_deq_bits_size;
  assign io_in_0_d_bits_source = Queue_io_deq_bits_source;
  assign io_in_0_d_bits_sink = Queue_io_deq_bits_sink;
  assign io_in_0_d_bits_data = Queue_io_deq_bits_data;
  assign io_in_0_d_bits_error = Queue_io_deq_bits_error;
  assign io_out_0_hmastlock = 1'h0;
  assign io_out_0_htrans = _T_206;
  assign io_out_0_hsel = _T_209;
  assign io_out_0_hready = io_out_0_hreadyout;
  assign io_out_0_hwrite = _GEN_32;
  assign io_out_0_haddr = _GEN_37;
  assign io_out_0_hsize = _GEN_35;
  assign io_out_0_hburst = _T_86_hburst;
  assign io_out_0_hprot = 4'h3;
  assign io_out_0_hwdata = _T_214;
  assign _T_86_hburst = _GEN_36[2:0];
  assign _T_92 = io_out_0_hreadyout == 1'h0;
  assign _T_93 = _GEN_30 & _T_92;
  assign _GEN_0 = _T_93 ? 1'h1 : _GEN_29;
  assign _GEN_1 = _T_93 ? 1'h1 : _GEN_30;
  assign _T_97 = _GEN_30 == 1'h0;
  assign _T_98 = _GEN_29 & _T_97;
  assign _T_100 = _T_93 == 1'h0;
  assign _T_101 = _T_100 & _T_98;
  assign _GEN_2 = _T_101 ? 1'h1 : _GEN_0;
  assign _GEN_3 = _T_101 ? 1'h0 : _GEN_1;
  assign _T_105 = _GEN_31 == 1'h0;
  assign _T_106 = _GEN_29 & _T_105;
  assign _T_110 = _T_98 == 1'h0;
  assign _T_111 = _T_100 & _T_110;
  assign _T_112 = _T_111 & _T_106;
  assign _T_118 = 13'h3f << _GEN_33;
  assign _T_119 = _T_118[5:0];
  assign _T_120 = ~ _T_119;
  assign _T_121 = ~ _GEN_37;
  assign _GEN_47 = {{26'd0}, _T_120};
  assign _T_122 = _GEN_47 & _T_121;
  assign _T_123 = _T_122[31:3];
  assign _T_125 = _T_123 != 29'h0;
  assign _T_127 = _T_125 == 1'h0;
  assign _T_128 = _GEN_37[31:6];
  assign _T_129 = _GEN_37[5:0];
  assign _T_131 = _T_129 + 6'h4;
  assign _T_132 = _T_131[5:0];
  assign _T_133 = {_T_128,_T_132};
  assign _GEN_4 = _T_112 ? 1'h1 : _GEN_2;
  assign _GEN_5 = _T_112 ? 1'h0 : _GEN_3;
  assign _GEN_6 = _T_112 ? 1'h0 : _T_84_first;
  assign _GEN_7 = _T_112 ? _T_127 : _GEN_31;
  assign _GEN_8 = _T_112 ? _T_133 : _GEN_37;
  assign _T_140 = _T_106 == 1'h0;
  assign _T_141 = _T_111 & _T_140;
  assign _GEN_9 = _T_141 ? 1'h0 : _GEN_4;
  assign _GEN_10 = _T_141 ? 1'h0 : _GEN_5;
  assign _GEN_11 = _T_141 ? 1'h1 : _GEN_6;
  assign _T_148 = {1'h0,io_in_0_a_bits_size};
  assign _T_150 = _T_148 - 4'h3;
  assign _T_151 = $unsigned(_T_150);
  assign _T_152 = _T_151[3:0];
  assign _T_154 = _T_152[3];
  assign _T_156 = _T_152[2:0];
  assign _T_162 = _T_84_send == 1'h0;
  assign _T_163 = _T_162 & _T_84_full;
  assign _T_165 = _T_241 == 1'h0;
  assign _T_167 = _T_84_write == 1'h0;
  assign _T_168 = _T_167 | io_in_0_a_valid;
  assign _T_169 = _T_165 & _T_168;
  assign _T_174 = _T_165 & _T_167;
  assign _T_177 = _T_165 & _T_84_write;
  assign _GEN_13 = _T_163 ? _T_169 : _T_84_send;
  assign _GEN_14 = _T_163 ? io_in_0_a_bits_data : _T_84_data;
  assign _GEN_15 = _T_163 ? _T_174 : 1'h0;
  assign _GEN_16 = _T_163 ? _T_177 : 1'h0;
  assign _T_181 = _T_84_full == 1'h0;
  assign _T_182 = _T_162 & _T_181;
  assign _T_183 = io_in_0_a_ready & io_in_0_a_valid;
  assign _T_189 = io_in_0_a_bits_opcode[2];
  assign _T_191 = _T_189 == 1'h0;
  assign _T_193 = _T_154 ? io_in_0_a_bits_size : 3'h2;
  assign _GEN_48 = {{1'd0}, _T_156};
  assign _T_195 = _GEN_48 << 1;
  assign _T_197 = _T_195 | 4'h1;
  assign _T_198 = _T_154 ? 4'h0 : _T_197;
  assign _GEN_17 = _T_183 ? 1'h1 : _T_84_full;
  assign _GEN_18 = _T_183 ? 1'h1 : _GEN_13;
  assign _GEN_19 = _T_183 ? _T_154 : _T_84_last;
  assign _GEN_20 = _T_183 ? _T_191 : _T_84_write;
  assign _GEN_21 = _T_183 ? io_in_0_a_bits_size : _T_84_size;
  assign _GEN_22 = _T_183 ? io_in_0_a_bits_source : _T_84_source;
  assign _GEN_23 = _T_183 ? _T_193 : _T_84_hsize;
  assign _GEN_24 = _T_183 ? _T_198 : {{1'd0}, _T_84_hburst};
  assign _GEN_25 = _T_183 ? io_in_0_a_bits_address : _T_84_addr;
  assign _GEN_26 = _T_183 ? io_in_0_a_bits_data : _GEN_14;
  assign _GEN_27 = _T_182 ? _T_183 : _GEN_15;
  assign _GEN_28 = _T_182 ? _T_165 : _GEN_16;
  assign _GEN_29 = _T_182 ? _GEN_17 : _T_84_full;
  assign _GEN_30 = _T_182 ? _GEN_18 : _GEN_13;
  assign _GEN_31 = _T_182 ? _GEN_19 : _T_84_last;
  assign _GEN_32 = _T_182 ? _GEN_20 : _T_84_write;
  assign _GEN_33 = _T_182 ? _GEN_21 : _T_84_size;
  assign _GEN_34 = _T_182 ? _GEN_22 : _T_84_source;
  assign _GEN_35 = _T_182 ? _GEN_23 : _T_84_hsize;
  assign _GEN_36 = _T_182 ? _GEN_24 : {{1'd0}, _T_84_hburst};
  assign _GEN_37 = _T_182 ? _GEN_25 : _T_84_addr;
  assign _GEN_38 = _T_182 ? _GEN_26 : _GEN_14;
  assign _T_202 = _T_84_first ? 2'h2 : 2'h3;
  assign _T_205 = _T_84_first ? 2'h0 : 2'h1;
  assign _T_206 = _GEN_30 ? _T_202 : _T_205;
  assign _T_208 = _T_84_first == 1'h0;
  assign _T_209 = _GEN_30 | _T_208;
  assign _GEN_39 = io_out_0_hreadyout ? _GEN_38 : _T_214;
  assign _T_215_ready = Queue_io_enq_ready;
  assign _T_215_bits_opcode = {{2'd0}, _T_267};
  assign Queue_clock = clock;
  assign Queue_reset = reset;
  assign Queue_io_enq_valid = _T_258;
  assign Queue_io_enq_bits_opcode = _T_215_bits_opcode;
  assign Queue_io_enq_bits_param = 2'h0;
  assign Queue_io_enq_bits_size = _T_252;
  assign Queue_io_enq_bits_source = _T_250;
  assign Queue_io_enq_bits_sink = 1'h0;
  assign Queue_io_enq_bits_data = io_out_0_hrdata;
  assign Queue_io_enq_bits_error = _T_259;
  assign Queue_io_deq_ready = io_in_0_d_ready;
  assign _T_221 = _T_258 == 1'h0;
  assign _T_222 = _T_221 | _T_215_ready;
  assign _T_223 = _T_222 | reset;
  assign _T_225 = _T_223 == 1'h0;
  assign _T_230 = _T_228 <= 2'h2;
  assign _T_231 = _T_230 | reset;
  assign _T_233 = _T_231 == 1'h0;
  assign _GEN_49 = {{1'd0}, _GEN_27};
  assign _T_234 = _T_228 + _GEN_49;
  assign _T_235 = _T_234[1:0];
  assign _T_236 = io_in_0_d_ready & io_in_0_d_valid;
  assign _GEN_50 = {{1'd0}, _T_236};
  assign _T_237 = _T_235 - _GEN_50;
  assign _T_238 = $unsigned(_T_237);
  assign _T_239 = _T_238[1:0];
  assign _T_241 = _T_228 >= 2'h2;
  assign _GEN_40 = io_out_0_hreadyout ? _GEN_32 : _T_248;
  assign _GEN_41 = io_out_0_hreadyout ? _GEN_34 : _T_250;
  assign _GEN_42 = io_out_0_hreadyout ? _GEN_33 : _T_252;
  assign _T_254 = _GEN_32 == 1'h0;
  assign _T_255 = _GEN_31 | _T_254;
  assign _T_256 = _GEN_30 & _T_255;
  assign _GEN_43 = io_out_0_hresp ? _T_248 : _T_246;
  assign _GEN_44 = _T_84_first ? 1'h0 : _GEN_43;
  assign _GEN_45 = io_out_0_hreadyout ? _T_256 : _T_244;
  assign _GEN_46 = io_out_0_hreadyout ? _GEN_44 : _T_246;
  assign _T_258 = _T_244 & io_out_0_hreadyout;
  assign _T_259 = io_out_0_hresp | _T_246;
  assign _T_267 = _T_248 ? 1'h0 : 1'h1;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_84_full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_84_send = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_84_first = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_84_last = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_84_write = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_84_size = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_84_source = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_84_hsize = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_84_hburst = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_84_addr = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_84_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_214 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_228 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_244 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_246 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_248 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_250 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_252 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_84_full <= 1'h0;
    end else begin
      if (_T_141) begin
        _T_84_full <= 1'h0;
      end else begin
        if (_T_112) begin
          _T_84_full <= 1'h1;
        end else begin
          if (_T_101) begin
            _T_84_full <= 1'h1;
          end else begin
            if (_T_93) begin
              _T_84_full <= 1'h1;
            end else begin
              if (_T_182) begin
                if (_T_183) begin
                  _T_84_full <= 1'h1;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      _T_84_send <= 1'h0;
    end else begin
      if (_T_141) begin
        _T_84_send <= 1'h0;
      end else begin
        if (_T_112) begin
          _T_84_send <= 1'h0;
        end else begin
          if (_T_101) begin
            _T_84_send <= 1'h0;
          end else begin
            if (_T_93) begin
              _T_84_send <= 1'h1;
            end else begin
              if (_T_182) begin
                if (_T_183) begin
                  _T_84_send <= 1'h1;
                end else begin
                  if (_T_163) begin
                    _T_84_send <= _T_169;
                  end
                end
              end else begin
                if (_T_163) begin
                  _T_84_send <= _T_169;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      _T_84_first <= 1'h1;
    end else begin
      if (_T_141) begin
        _T_84_first <= 1'h1;
      end else begin
        if (_T_112) begin
          _T_84_first <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_84_last <= 1'h0;
    end else begin
      if (_T_112) begin
        _T_84_last <= _T_127;
      end else begin
        if (_T_182) begin
          if (_T_183) begin
            _T_84_last <= _T_154;
          end
        end
      end
    end
    if (reset) begin
      _T_84_write <= 1'h0;
    end else begin
      if (_T_182) begin
        if (_T_183) begin
          _T_84_write <= _T_191;
        end
      end
    end
    if (reset) begin
      _T_84_size <= 3'h0;
    end else begin
      if (_T_182) begin
        if (_T_183) begin
          _T_84_size <= io_in_0_a_bits_size;
        end
      end
    end
    if (reset) begin
      _T_84_source <= 3'h0;
    end else begin
      if (_T_182) begin
        if (_T_183) begin
          _T_84_source <= io_in_0_a_bits_source;
        end
      end
    end
    if (reset) begin
      _T_84_hsize <= 3'h0;
    end else begin
      if (_T_182) begin
        if (_T_183) begin
          if (_T_154) begin
            _T_84_hsize <= io_in_0_a_bits_size;
          end else begin
            _T_84_hsize <= 3'h2;
          end
        end
      end
    end
    if (reset) begin
      _T_84_hburst <= 3'h0;
    end else begin
      _T_84_hburst <= _T_86_hburst;
    end
    if (reset) begin
      _T_84_addr <= 32'h0;
    end else begin
      if (_T_112) begin
        _T_84_addr <= _T_133;
      end else begin
        if (_T_182) begin
          if (_T_183) begin
            _T_84_addr <= io_in_0_a_bits_address;
          end
        end
      end
    end
    if (reset) begin
      _T_84_data <= 32'h0;
    end else begin
      if (_T_182) begin
        if (_T_183) begin
          _T_84_data <= io_in_0_a_bits_data;
        end else begin
          if (_T_163) begin
            _T_84_data <= io_in_0_a_bits_data;
          end
        end
      end else begin
        if (_T_163) begin
          _T_84_data <= io_in_0_a_bits_data;
        end
      end
    end
    if (io_out_0_hreadyout) begin
      if (_T_182) begin
        if (_T_183) begin
          _T_214 <= io_in_0_a_bits_data;
        end else begin
          if (_T_163) begin
            _T_214 <= io_in_0_a_bits_data;
          end else begin
            _T_214 <= _T_84_data;
          end
        end
      end else begin
        if (_T_163) begin
          _T_214 <= io_in_0_a_bits_data;
        end else begin
          _T_214 <= _T_84_data;
        end
      end
    end
    if (reset) begin
      _T_228 <= 2'h0;
    end else begin
      _T_228 <= _T_239;
    end
    if (reset) begin
      _T_244 <= 1'h0;
    end else begin
      if (io_out_0_hreadyout) begin
        _T_244 <= _T_256;
      end
    end
    if (io_out_0_hreadyout) begin
      if (_T_84_first) begin
        _T_246 <= 1'h0;
      end else begin
        if (io_out_0_hresp) begin
          _T_246 <= _T_248;
        end
      end
    end
    if (io_out_0_hreadyout) begin
      if (_T_182) begin
        if (_T_183) begin
          _T_248 <= _T_191;
        end else begin
          _T_248 <= _T_84_write;
        end
      end else begin
        _T_248 <= _T_84_write;
      end
    end
    if (io_out_0_hreadyout) begin
      if (_T_182) begin
        if (_T_183) begin
          _T_250 <= io_in_0_a_bits_source;
        end else begin
          _T_250 <= _T_84_source;
        end
      end else begin
        _T_250 <= _T_84_source;
      end
    end
    if (io_out_0_hreadyout) begin
      if (_T_182) begin
        if (_T_183) begin
          _T_252 <= io_in_0_a_bits_size;
        end else begin
          _T_252 <= _T_84_size;
        end
      end else begin
        _T_252 <= _T_84_size;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_225) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAHB.scala:162 assert (!d.valid || d.ready)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_225) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_233) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ToAHB.scala:165 assert (d_flight <= UInt(depth))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_233) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
