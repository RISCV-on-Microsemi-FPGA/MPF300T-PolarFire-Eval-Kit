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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SINK_2(
  input        clock,
  input        reset,
  input        io_deq_ready,
  output       io_deq_valid,
  output       io_deq_bits_resumereq,
  output [9:0] io_deq_bits_hartsel,
  output       io_ridx,
  input        io_widx,
  input        io_mem_0_resumereq,
  input  [9:0] io_mem_0_hartsel,
  input        io_source_reset_n,
  output       io_ridx_valid,
  input        io_widx_valid
);
  wire  source_ready;
  wire  _T_17;
  wire  _T_19;
  wire  ridx_bin_clock;
  wire  ridx_bin_reset;
  wire  ridx_bin_io_d;
  wire  ridx_bin_io_q;
  wire  ridx_bin_io_en;
  wire [1:0] _T_24;
  wire  _T_25;
  wire  _T_26;
  wire  _T_28;
  wire  ridx;
  wire  widx_gray_sync_0_clock;
  wire  widx_gray_sync_0_reset;
  wire  widx_gray_sync_0_io_d;
  wire  widx_gray_sync_0_io_q;
  wire  widx_gray_sync_0_io_en;
  wire  widx_gray_sync_1_clock;
  wire  widx_gray_sync_1_reset;
  wire  widx_gray_sync_1_io_d;
  wire  widx_gray_sync_1_io_q;
  wire  widx_gray_sync_1_io_en;
  wire  widx_gray_sync_2_clock;
  wire  widx_gray_sync_2_reset;
  wire  widx_gray_sync_2_io_d;
  wire  widx_gray_sync_2_io_q;
  wire  widx_gray_sync_2_io_en;
  wire  _T_32;
  wire  valid;
  reg  _T_36_resumereq;
  reg [31:0] _RAND_0;
  reg [9:0] _T_36_hartsel;
  reg [31:0] _RAND_1;
  wire  _GEN_0;
  wire [9:0] _GEN_1;
  wire  valid_reg_clock;
  wire  valid_reg_reset;
  wire  valid_reg_io_d;
  wire  valid_reg_io_q;
  wire  valid_reg_io_en;
  wire  valid_reg_1;
  wire  _T_38;
  wire  ridx_gray_clock;
  wire  ridx_gray_reset;
  wire  ridx_gray_io_d;
  wire  ridx_gray_io_q;
  wire  ridx_gray_io_en;
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
  wire  _T_42;
  wire  _T_43;
  wire  _T_60;
  wire  AsyncResetRegVec_clock;
  wire  AsyncResetRegVec_reset;
  wire  AsyncResetRegVec_io_d;
  wire  AsyncResetRegVec_io_q;
  wire  AsyncResetRegVec_io_en;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ridx_bin (
    .clock(ridx_bin_clock),
    .reset(ridx_bin_reset),
    .io_d(ridx_bin_io_d),
    .io_q(ridx_bin_io_q),
    .io_en(ridx_bin_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 widx_gray_sync_0 (
    .clock(widx_gray_sync_0_clock),
    .reset(widx_gray_sync_0_reset),
    .io_d(widx_gray_sync_0_io_d),
    .io_q(widx_gray_sync_0_io_q),
    .io_en(widx_gray_sync_0_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 widx_gray_sync_1 (
    .clock(widx_gray_sync_1_clock),
    .reset(widx_gray_sync_1_reset),
    .io_d(widx_gray_sync_1_io_d),
    .io_q(widx_gray_sync_1_io_q),
    .io_en(widx_gray_sync_1_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 widx_gray_sync_2 (
    .clock(widx_gray_sync_2_clock),
    .reset(widx_gray_sync_2_reset),
    .io_d(widx_gray_sync_2_io_d),
    .io_q(widx_gray_sync_2_io_q),
    .io_en(widx_gray_sync_2_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 valid_reg (
    .clock(valid_reg_clock),
    .reset(valid_reg_reset),
    .io_d(valid_reg_io_d),
    .io_q(valid_reg_io_q),
    .io_en(valid_reg_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 ridx_gray (
    .clock(ridx_gray_clock),
    .reset(ridx_gray_reset),
    .io_d(ridx_gray_io_d),
    .io_q(ridx_gray_io_q),
    .io_en(ridx_gray_io_en)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_3 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC (
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset),
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_4 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_1 (
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset),
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_5 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_2 (
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset),
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC (
    .clock(AsyncResetRegVec_clock),
    .reset(AsyncResetRegVec_reset),
    .io_d(AsyncResetRegVec_io_d),
    .io_q(AsyncResetRegVec_io_q),
    .io_en(AsyncResetRegVec_io_en)
  );
  assign io_deq_valid = _T_38;
  assign io_deq_bits_resumereq = _T_36_resumereq;
  assign io_deq_bits_hartsel = _T_36_hartsel;
  assign io_ridx = ridx_gray_io_q;
  assign io_ridx_valid = AsyncValidSync_io_out;
  assign source_ready = AsyncValidSync_2_io_out;
  assign _T_17 = io_deq_ready & io_deq_valid;
  assign _T_19 = source_ready == 1'h0;
  assign ridx_bin_clock = clock;
  assign ridx_bin_reset = reset;
  assign ridx_bin_io_d = _T_26;
  assign ridx_bin_io_en = 1'h1;
  assign _T_24 = ridx_bin_io_q + _T_17;
  assign _T_25 = _T_24[0:0];
  assign _T_26 = _T_19 ? 1'h0 : _T_25;
  assign _T_28 = _T_26 >> 1'h1;
  assign ridx = _T_26 ^ _T_28;
  assign widx_gray_sync_0_clock = clock;
  assign widx_gray_sync_0_reset = reset;
  assign widx_gray_sync_0_io_d = widx_gray_sync_1_io_q;
  assign widx_gray_sync_0_io_en = 1'h1;
  assign widx_gray_sync_1_clock = clock;
  assign widx_gray_sync_1_reset = reset;
  assign widx_gray_sync_1_io_d = widx_gray_sync_2_io_q;
  assign widx_gray_sync_1_io_en = 1'h1;
  assign widx_gray_sync_2_clock = clock;
  assign widx_gray_sync_2_reset = reset;
  assign widx_gray_sync_2_io_d = io_widx;
  assign widx_gray_sync_2_io_en = 1'h1;
  assign _T_32 = ridx != widx_gray_sync_0_io_q;
  assign valid = source_ready & _T_32;
  assign _GEN_0 = valid ? io_mem_0_resumereq : _T_36_resumereq;
  assign _GEN_1 = valid ? io_mem_0_hartsel : _T_36_hartsel;
  assign valid_reg_clock = clock;
  assign valid_reg_reset = reset;
  assign valid_reg_io_d = valid;
  assign valid_reg_io_en = 1'h1;
  assign valid_reg_1 = valid_reg_io_q;
  assign _T_38 = valid_reg_1 & source_ready;
  assign ridx_gray_clock = clock;
  assign ridx_gray_reset = reset;
  assign ridx_gray_io_d = ridx;
  assign ridx_gray_io_en = 1'h1;
  assign AsyncValidSync_clock = clock;
  assign AsyncValidSync_reset = _T_43;
  assign AsyncValidSync_io_in = 1'h1;
  assign AsyncValidSync_1_clock = clock;
  assign AsyncValidSync_1_reset = _T_43;
  assign AsyncValidSync_1_io_in = io_widx_valid;
  assign AsyncValidSync_2_clock = clock;
  assign AsyncValidSync_2_reset = reset;
  assign AsyncValidSync_2_io_in = AsyncValidSync_1_io_out;
  assign _T_42 = io_source_reset_n == 1'h0;
  assign _T_43 = reset | _T_42;
  assign _T_60 = io_widx == io_ridx;
  assign AsyncResetRegVec_clock = clock;
  assign AsyncResetRegVec_reset = reset;
  assign AsyncResetRegVec_io_d = _T_60;
  assign AsyncResetRegVec_io_en = 1'h1;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_36_resumereq = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_36_hartsel = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (valid) begin
      _T_36_resumereq <= io_mem_0_resumereq;
    end
    if (valid) begin
      _T_36_hartsel <= io_mem_0_hartsel;
    end
  end
endmodule
