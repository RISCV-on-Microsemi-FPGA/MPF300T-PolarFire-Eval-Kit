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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SOURCE(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_opcode,
  input  [1:0]  io_enq_bits_size,
  input         io_enq_bits_source,
  input  [8:0]  io_enq_bits_address,
  input  [3:0]  io_enq_bits_mask,
  input  [31:0] io_enq_bits_data,
  input         io_ridx,
  output        io_widx,
  output [2:0]  io_mem_0_opcode,
  output [1:0]  io_mem_0_size,
  output        io_mem_0_source,
  output [8:0]  io_mem_0_address,
  output [3:0]  io_mem_0_mask,
  output [31:0] io_mem_0_data,
  input         io_sink_reset_n,
  input         io_ridx_valid,
  output        io_widx_valid
);
  wire  sink_ready;
  reg [2:0] mem_0_opcode;
  reg [31:0] _RAND_0;
  reg [1:0] mem_0_size;
  reg [31:0] _RAND_1;
  reg  mem_0_source;
  reg [31:0] _RAND_2;
  reg [8:0] mem_0_address;
  reg [31:0] _RAND_3;
  reg [3:0] mem_0_mask;
  reg [31:0] _RAND_4;
  reg [31:0] mem_0_data;
  reg [31:0] _RAND_5;
  wire  _T_26;
  wire  _T_28;
  wire  widx_bin_clock;
  wire  widx_bin_reset;
  wire  widx_bin_io_d;
  wire  widx_bin_io_q;
  wire  widx_bin_io_en;
  wire [1:0] _T_33;
  wire  _T_34;
  wire  _T_35;
  wire  _T_37;
  wire  widx;
  wire  ridx_gray_sync_0_clock;
  wire  ridx_gray_sync_0_reset;
  wire  ridx_gray_sync_0_io_d;
  wire  ridx_gray_sync_0_io_q;
  wire  ridx_gray_sync_0_io_en;
  wire  ridx_gray_sync_1_clock;
  wire  ridx_gray_sync_1_reset;
  wire  ridx_gray_sync_1_io_d;
  wire  ridx_gray_sync_1_io_q;
  wire  ridx_gray_sync_1_io_en;
  wire  ridx_gray_sync_2_clock;
  wire  ridx_gray_sync_2_reset;
  wire  ridx_gray_sync_2_io_d;
  wire  ridx_gray_sync_2_io_q;
  wire  ridx_gray_sync_2_io_en;
  wire  _T_42;
  wire  _T_43;
  wire  ready;
  wire [2:0] _GEN_0;
  wire [1:0] _GEN_2;
  wire  _GEN_3;
  wire [8:0] _GEN_4;
  wire [3:0] _GEN_5;
  wire [31:0] _GEN_6;
  wire  ready_reg_clock;
  wire  ready_reg_reset;
  wire  ready_reg_io_d;
  wire  ready_reg_io_q;
  wire  ready_reg_io_en;
  wire  ready_reg_1;
  wire  _T_48;
  wire  widx_gray_clock;
  wire  widx_gray_reset;
  wire  widx_gray_io_d;
  wire  widx_gray_io_q;
  wire  widx_gray_io_en;
  wire  AsyncValidSync_clock;
  wire  AsyncValidSync_reset;
  wire  AsyncValidSync_io_in;
  wire  AsyncValidSync_io_out;
  wire  AsyncValidSync_1_clock;
  wire  AsyncValidSync_1_reset;
  wire  AsyncValidSync_1_io_in;
  wire  AsyncValidSync_1_io_out;
  wire  AsyncValidSync_2_clock;
  wire  AsyncValidSync_2_reset;
  wire  AsyncValidSync_2_io_in;
  wire  AsyncValidSync_2_io_out;
  wire  _T_52;
  wire  _T_53;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 widx_bin (
    .clock(widx_bin_clock),
    .reset(widx_bin_reset),
    .io_d(widx_bin_io_d),
    .io_q(widx_bin_io_q),
    .io_en(widx_bin_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ridx_gray_sync_0 (
    .clock(ridx_gray_sync_0_clock),
    .reset(ridx_gray_sync_0_reset),
    .io_d(ridx_gray_sync_0_io_d),
    .io_q(ridx_gray_sync_0_io_q),
    .io_en(ridx_gray_sync_0_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ridx_gray_sync_1 (
    .clock(ridx_gray_sync_1_clock),
    .reset(ridx_gray_sync_1_reset),
    .io_d(ridx_gray_sync_1_io_d),
    .io_q(ridx_gray_sync_1_io_q),
    .io_en(ridx_gray_sync_1_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ridx_gray_sync_2 (
    .clock(ridx_gray_sync_2_clock),
    .reset(ridx_gray_sync_2_reset),
    .io_d(ridx_gray_sync_2_io_d),
    .io_q(ridx_gray_sync_2_io_q),
    .io_en(ridx_gray_sync_2_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ready_reg (
    .clock(ready_reg_clock),
    .reset(ready_reg_reset),
    .io_d(ready_reg_io_d),
    .io_q(ready_reg_io_q),
    .io_en(ready_reg_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 widx_gray (
    .clock(widx_gray_clock),
    .reset(widx_gray_reset),
    .io_d(widx_gray_io_d),
    .io_q(widx_gray_io_q),
    .io_en(widx_gray_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC (
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset),
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_1 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_1 (
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset),
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_2 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_2 (
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset),
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out)
  );
  assign io_enq_ready = _T_48;
  assign io_widx = widx_gray_io_q;
  assign io_mem_0_opcode = mem_0_opcode;
  assign io_mem_0_size = mem_0_size;
  assign io_mem_0_source = mem_0_source;
  assign io_mem_0_address = mem_0_address;
  assign io_mem_0_mask = mem_0_mask;
  assign io_mem_0_data = mem_0_data;
  assign io_widx_valid = AsyncValidSync_io_out;
  assign sink_ready = AsyncValidSync_2_io_out;
  assign _T_26 = io_enq_ready & io_enq_valid;
  assign _T_28 = sink_ready == 1'h0;
  assign widx_bin_clock = clock;
  assign widx_bin_reset = reset;
  assign widx_bin_io_d = _T_35;
  assign widx_bin_io_en = 1'h1;
  assign _T_33 = widx_bin_io_q + _T_26;
  assign _T_34 = _T_33[0:0];
  assign _T_35 = _T_28 ? 1'h0 : _T_34;
  assign _T_37 = _T_35 >> 1'h1;
  assign widx = _T_35 ^ _T_37;
  assign ridx_gray_sync_0_clock = clock;
  assign ridx_gray_sync_0_reset = reset;
  assign ridx_gray_sync_0_io_d = ridx_gray_sync_1_io_q;
  assign ridx_gray_sync_0_io_en = 1'h1;
  assign ridx_gray_sync_1_clock = clock;
  assign ridx_gray_sync_1_reset = reset;
  assign ridx_gray_sync_1_io_d = ridx_gray_sync_2_io_q;
  assign ridx_gray_sync_1_io_en = 1'h1;
  assign ridx_gray_sync_2_clock = clock;
  assign ridx_gray_sync_2_reset = reset;
  assign ridx_gray_sync_2_io_d = io_ridx;
  assign ridx_gray_sync_2_io_en = 1'h1;
  assign _T_42 = ridx_gray_sync_0_io_q ^ 1'h1;
  assign _T_43 = widx != _T_42;
  assign ready = sink_ready & _T_43;
  assign _GEN_0 = _T_26 ? io_enq_bits_opcode : mem_0_opcode;
  assign _GEN_2 = _T_26 ? io_enq_bits_size : mem_0_size;
  assign _GEN_3 = _T_26 ? io_enq_bits_source : mem_0_source;
  assign _GEN_4 = _T_26 ? io_enq_bits_address : mem_0_address;
  assign _GEN_5 = _T_26 ? io_enq_bits_mask : mem_0_mask;
  assign _GEN_6 = _T_26 ? io_enq_bits_data : mem_0_data;
  assign ready_reg_clock = clock;
  assign ready_reg_reset = reset;
  assign ready_reg_io_d = ready;
  assign ready_reg_io_en = 1'h1;
  assign ready_reg_1 = ready_reg_io_q;
  assign _T_48 = ready_reg_1 & sink_ready;
  assign widx_gray_clock = clock;
  assign widx_gray_reset = reset;
  assign widx_gray_io_d = widx;
  assign widx_gray_io_en = 1'h1;
  assign AsyncValidSync_clock = clock;
  assign AsyncValidSync_reset = _T_53;
  assign AsyncValidSync_io_in = 1'h1;
  assign AsyncValidSync_1_clock = clock;
  assign AsyncValidSync_1_reset = _T_53;
  assign AsyncValidSync_1_io_in = io_ridx_valid;
  assign AsyncValidSync_2_clock = clock;
  assign AsyncValidSync_2_reset = reset;
  assign AsyncValidSync_2_io_in = AsyncValidSync_1_io_out;
  assign _T_52 = io_sink_reset_n == 1'h0;
  assign _T_53 = reset | _T_52;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  mem_0_opcode = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mem_0_size = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_0_source = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  mem_0_address = _RAND_3[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  mem_0_mask = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  mem_0_data = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_26) begin
      mem_0_opcode <= io_enq_bits_opcode;
    end
    if (_T_26) begin
      mem_0_size <= io_enq_bits_size;
    end
    if (_T_26) begin
      mem_0_source <= io_enq_bits_source;
    end
    if (_T_26) begin
      mem_0_address <= io_enq_bits_address;
    end
    if (_T_26) begin
      mem_0_mask <= io_enq_bits_mask;
    end
    if (_T_26) begin
      mem_0_data <= io_enq_bits_data;
    end
  end
endmodule
