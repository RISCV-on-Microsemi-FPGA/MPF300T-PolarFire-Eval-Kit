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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ARBITER(
  input         io_in_0_valid,
  input         io_in_0_bits_write,
  input  [31:0] io_in_0_bits_addr,
  input  [1:0]  io_in_0_bits_data_coh_state,
  input  [18:0] io_in_0_bits_data_tag,
  input         io_in_1_valid,
  input         io_in_1_bits_write,
  input  [31:0] io_in_1_bits_addr,
  input  [1:0]  io_in_1_bits_data_coh_state,
  input  [18:0] io_in_1_bits_data_tag,
  input         io_in_2_valid,
  input         io_in_2_bits_write,
  input  [31:0] io_in_2_bits_addr,
  input  [1:0]  io_in_2_bits_data_coh_state,
  input  [18:0] io_in_2_bits_data_tag,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input         io_in_3_bits_write,
  input  [31:0] io_in_3_bits_addr,
  input  [1:0]  io_in_3_bits_data_coh_state,
  input  [18:0] io_in_3_bits_data_tag,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input         io_in_4_bits_write,
  input  [31:0] io_in_4_bits_addr,
  input  [1:0]  io_in_4_bits_data_coh_state,
  input  [18:0] io_in_4_bits_data_tag,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input         io_in_5_bits_write,
  input  [31:0] io_in_5_bits_addr,
  input  [1:0]  io_in_5_bits_data_coh_state,
  input  [18:0] io_in_5_bits_data_tag,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input         io_in_6_bits_write,
  input  [31:0] io_in_6_bits_addr,
  input  [1:0]  io_in_6_bits_data_coh_state,
  input  [18:0] io_in_6_bits_data_tag,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input         io_in_7_bits_write,
  input  [31:0] io_in_7_bits_addr,
  input  [1:0]  io_in_7_bits_data_coh_state,
  input  [18:0] io_in_7_bits_data_tag,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_write,
  output [31:0] io_out_bits_addr,
  output [1:0]  io_out_bits_data_coh_state,
  output [18:0] io_out_bits_data_tag
);
  wire  _GEN_1;
  wire [31:0] _GEN_2;
  wire [1:0] _GEN_4;
  wire [18:0] _GEN_5;
  wire  _GEN_7;
  wire [31:0] _GEN_8;
  wire [1:0] _GEN_10;
  wire [18:0] _GEN_11;
  wire  _GEN_13;
  wire [31:0] _GEN_14;
  wire [1:0] _GEN_16;
  wire [18:0] _GEN_17;
  wire  _GEN_19;
  wire [31:0] _GEN_20;
  wire [1:0] _GEN_22;
  wire [18:0] _GEN_23;
  wire  _GEN_25;
  wire [31:0] _GEN_26;
  wire [1:0] _GEN_28;
  wire [18:0] _GEN_29;
  wire  _GEN_31;
  wire [31:0] _GEN_32;
  wire [1:0] _GEN_34;
  wire [18:0] _GEN_35;
  wire  _GEN_37;
  wire [31:0] _GEN_38;
  wire [1:0] _GEN_40;
  wire [18:0] _GEN_41;
  wire  _T_112;
  wire  _T_113;
  wire  _T_114;
  wire  _T_115;
  wire  _T_116;
  wire  _T_117;
  wire  _T_123;
  wire  _T_125;
  wire  _T_127;
  wire  _T_129;
  wire  _T_131;
  wire  _T_135;
  wire  _T_136;
  wire  _T_137;
  wire  _T_138;
  wire  _T_139;
  wire  _T_141;
  wire  _T_142;
  assign io_in_3_ready = _T_135;
  assign io_in_4_ready = _T_136;
  assign io_in_5_ready = _T_137;
  assign io_in_6_ready = _T_138;
  assign io_in_7_ready = _T_139;
  assign io_out_valid = _T_142;
  assign io_out_bits_write = _GEN_37;
  assign io_out_bits_addr = _GEN_38;
  assign io_out_bits_data_coh_state = _GEN_40;
  assign io_out_bits_data_tag = _GEN_41;
  assign _GEN_1 = io_in_6_valid ? io_in_6_bits_write : io_in_7_bits_write;
  assign _GEN_2 = io_in_6_valid ? io_in_6_bits_addr : io_in_7_bits_addr;
  assign _GEN_4 = io_in_6_valid ? io_in_6_bits_data_coh_state : io_in_7_bits_data_coh_state;
  assign _GEN_5 = io_in_6_valid ? io_in_6_bits_data_tag : io_in_7_bits_data_tag;
  assign _GEN_7 = io_in_5_valid ? io_in_5_bits_write : _GEN_1;
  assign _GEN_8 = io_in_5_valid ? io_in_5_bits_addr : _GEN_2;
  assign _GEN_10 = io_in_5_valid ? io_in_5_bits_data_coh_state : _GEN_4;
  assign _GEN_11 = io_in_5_valid ? io_in_5_bits_data_tag : _GEN_5;
  assign _GEN_13 = io_in_4_valid ? io_in_4_bits_write : _GEN_7;
  assign _GEN_14 = io_in_4_valid ? io_in_4_bits_addr : _GEN_8;
  assign _GEN_16 = io_in_4_valid ? io_in_4_bits_data_coh_state : _GEN_10;
  assign _GEN_17 = io_in_4_valid ? io_in_4_bits_data_tag : _GEN_11;
  assign _GEN_19 = io_in_3_valid ? io_in_3_bits_write : _GEN_13;
  assign _GEN_20 = io_in_3_valid ? io_in_3_bits_addr : _GEN_14;
  assign _GEN_22 = io_in_3_valid ? io_in_3_bits_data_coh_state : _GEN_16;
  assign _GEN_23 = io_in_3_valid ? io_in_3_bits_data_tag : _GEN_17;
  assign _GEN_25 = io_in_2_valid ? io_in_2_bits_write : _GEN_19;
  assign _GEN_26 = io_in_2_valid ? io_in_2_bits_addr : _GEN_20;
  assign _GEN_28 = io_in_2_valid ? io_in_2_bits_data_coh_state : _GEN_22;
  assign _GEN_29 = io_in_2_valid ? io_in_2_bits_data_tag : _GEN_23;
  assign _GEN_31 = io_in_1_valid ? io_in_1_bits_write : _GEN_25;
  assign _GEN_32 = io_in_1_valid ? io_in_1_bits_addr : _GEN_26;
  assign _GEN_34 = io_in_1_valid ? io_in_1_bits_data_coh_state : _GEN_28;
  assign _GEN_35 = io_in_1_valid ? io_in_1_bits_data_tag : _GEN_29;
  assign _GEN_37 = io_in_0_valid ? io_in_0_bits_write : _GEN_31;
  assign _GEN_38 = io_in_0_valid ? io_in_0_bits_addr : _GEN_32;
  assign _GEN_40 = io_in_0_valid ? io_in_0_bits_data_coh_state : _GEN_34;
  assign _GEN_41 = io_in_0_valid ? io_in_0_bits_data_tag : _GEN_35;
  assign _T_112 = io_in_0_valid | io_in_1_valid;
  assign _T_113 = _T_112 | io_in_2_valid;
  assign _T_114 = _T_113 | io_in_3_valid;
  assign _T_115 = _T_114 | io_in_4_valid;
  assign _T_116 = _T_115 | io_in_5_valid;
  assign _T_117 = _T_116 | io_in_6_valid;
  assign _T_123 = _T_113 == 1'h0;
  assign _T_125 = _T_114 == 1'h0;
  assign _T_127 = _T_115 == 1'h0;
  assign _T_129 = _T_116 == 1'h0;
  assign _T_131 = _T_117 == 1'h0;
  assign _T_135 = _T_123 & io_out_ready;
  assign _T_136 = _T_125 & io_out_ready;
  assign _T_137 = _T_127 & io_out_ready;
  assign _T_138 = _T_129 & io_out_ready;
  assign _T_139 = _T_131 & io_out_ready;
  assign _T_141 = _T_131 == 1'h0;
  assign _T_142 = _T_141 | io_in_7_valid;
endmodule
