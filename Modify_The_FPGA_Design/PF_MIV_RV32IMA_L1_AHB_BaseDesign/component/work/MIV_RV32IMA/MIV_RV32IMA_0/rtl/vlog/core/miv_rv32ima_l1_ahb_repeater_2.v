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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_REPEATER_2(
  input         clock,
  input         reset,
  input         io_repeat,
  output        io_full,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_opcode,
  input  [2:0]  io_enq_bits_size,
  input  [1:0]  io_enq_bits_source,
  input  [11:0] io_enq_bits_address,
  input  [3:0]  io_enq_bits_mask,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [2:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_source,
  output [11:0] io_deq_bits_address,
  output [3:0]  io_deq_bits_mask
);
  reg  full;
  reg [31:0] _RAND_0;
  reg [2:0] saved_opcode;
  reg [31:0] _RAND_1;
  reg [2:0] saved_size;
  reg [31:0] _RAND_2;
  reg [1:0] saved_source;
  reg [31:0] _RAND_3;
  reg [11:0] saved_address;
  reg [31:0] _RAND_4;
  reg [3:0] saved_mask;
  reg [31:0] _RAND_5;
  wire  _T_16;
  wire  _T_18;
  wire  _T_19;
  wire [2:0] _T_20_opcode;
  wire [2:0] _T_20_size;
  wire [1:0] _T_20_source;
  wire [11:0] _T_20_address;
  wire [3:0] _T_20_mask;
  wire  _T_21;
  wire  _T_22;
  wire  _GEN_0;
  wire [2:0] _GEN_1;
  wire [2:0] _GEN_3;
  wire [1:0] _GEN_4;
  wire [11:0] _GEN_5;
  wire [3:0] _GEN_6;
  wire  _T_24;
  wire  _T_26;
  wire  _T_27;
  wire  _GEN_8;
  assign io_full = full;
  assign io_enq_ready = _T_19;
  assign io_deq_valid = _T_16;
  assign io_deq_bits_opcode = _T_20_opcode;
  assign io_deq_bits_size = _T_20_size;
  assign io_deq_bits_source = _T_20_source;
  assign io_deq_bits_address = _T_20_address;
  assign io_deq_bits_mask = _T_20_mask;
  assign _T_16 = io_enq_valid | full;
  assign _T_18 = full == 1'h0;
  assign _T_19 = io_deq_ready & _T_18;
  assign _T_20_opcode = full ? saved_opcode : io_enq_bits_opcode;
  assign _T_20_size = full ? saved_size : io_enq_bits_size;
  assign _T_20_source = full ? saved_source : io_enq_bits_source;
  assign _T_20_address = full ? saved_address : io_enq_bits_address;
  assign _T_20_mask = full ? saved_mask : io_enq_bits_mask;
  assign _T_21 = io_enq_ready & io_enq_valid;
  assign _T_22 = _T_21 & io_repeat;
  assign _GEN_0 = _T_22 ? 1'h1 : full;
  assign _GEN_1 = _T_22 ? io_enq_bits_opcode : saved_opcode;
  assign _GEN_3 = _T_22 ? io_enq_bits_size : saved_size;
  assign _GEN_4 = _T_22 ? io_enq_bits_source : saved_source;
  assign _GEN_5 = _T_22 ? io_enq_bits_address : saved_address;
  assign _GEN_6 = _T_22 ? io_enq_bits_mask : saved_mask;
  assign _T_24 = io_deq_ready & io_deq_valid;
  assign _T_26 = io_repeat == 1'h0;
  assign _T_27 = _T_24 & _T_26;
  assign _GEN_8 = _T_27 ? 1'h0 : _GEN_0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  saved_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  saved_size = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  saved_source = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  saved_address = _RAND_4[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  saved_mask = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      full <= 1'h0;
    end else begin
      if (_T_27) begin
        full <= 1'h0;
      end else begin
        if (_T_22) begin
          full <= 1'h1;
        end
      end
    end
    if (_T_22) begin
      saved_opcode <= io_enq_bits_opcode;
    end
    if (_T_22) begin
      saved_size <= io_enq_bits_size;
    end
    if (_T_22) begin
      saved_source <= io_enq_bits_source;
    end
    if (_T_22) begin
      saved_address <= io_enq_bits_address;
    end
    if (_T_22) begin
      saved_mask <= io_enq_bits_mask;
    end
  end
endmodule
