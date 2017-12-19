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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ASYNC_CROSSING_SOURCE_DM_INNER(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [1:0]  io_in_0_a_bits_size,
  input         io_in_0_a_bits_source,
  input  [8:0]  io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [1:0]  io_in_0_d_bits_size,
  output        io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  output [2:0]  io_out_0_a_mem_0_opcode,
  output [1:0]  io_out_0_a_mem_0_size,
  output        io_out_0_a_mem_0_source,
  output [8:0]  io_out_0_a_mem_0_address,
  output [3:0]  io_out_0_a_mem_0_mask,
  output [31:0] io_out_0_a_mem_0_data,
  input         io_out_0_a_ridx,
  output        io_out_0_a_widx,
  input         io_out_0_a_ridx_valid,
  output        io_out_0_a_widx_valid,
  output        io_out_0_a_source_reset_n,
  input         io_out_0_a_sink_reset_n,
  input  [2:0]  io_out_0_d_mem_0_opcode,
  input  [1:0]  io_out_0_d_mem_0_param,
  input  [1:0]  io_out_0_d_mem_0_size,
  input         io_out_0_d_mem_0_source,
  input         io_out_0_d_mem_0_sink,
  input  [31:0] io_out_0_d_mem_0_data,
  input         io_out_0_d_mem_0_error,
  output        io_out_0_d_ridx,
  input         io_out_0_d_widx,
  output        io_out_0_d_ridx_valid,
  input         io_out_0_d_widx_valid,
  input         io_out_0_d_source_reset_n,
  output        io_out_0_d_sink_reset_n
);
  wire  AsyncQueueSource_clock;
  wire  AsyncQueueSource_reset;
  wire  AsyncQueueSource_io_enq_ready;
  wire  AsyncQueueSource_io_enq_valid;
  wire [2:0] AsyncQueueSource_io_enq_bits_opcode;
  wire [1:0] AsyncQueueSource_io_enq_bits_size;
  wire  AsyncQueueSource_io_enq_bits_source;
  wire [8:0] AsyncQueueSource_io_enq_bits_address;
  wire [3:0] AsyncQueueSource_io_enq_bits_mask;
  wire [31:0] AsyncQueueSource_io_enq_bits_data;
  wire  AsyncQueueSource_io_ridx;
  wire  AsyncQueueSource_io_widx;
  wire [2:0] AsyncQueueSource_io_mem_0_opcode;
  wire [1:0] AsyncQueueSource_io_mem_0_size;
  wire  AsyncQueueSource_io_mem_0_source;
  wire [8:0] AsyncQueueSource_io_mem_0_address;
  wire [3:0] AsyncQueueSource_io_mem_0_mask;
  wire [31:0] AsyncQueueSource_io_mem_0_data;
  wire  AsyncQueueSource_io_sink_reset_n;
  wire  AsyncQueueSource_io_ridx_valid;
  wire  AsyncQueueSource_io_widx_valid;
  wire [2:0] _T_102_mem_0_opcode;
  wire [1:0] _T_102_mem_0_size;
  wire  _T_102_mem_0_source;
  wire [8:0] _T_102_mem_0_address;
  wire [3:0] _T_102_mem_0_mask;
  wire [31:0] _T_102_mem_0_data;
  wire  _T_102_widx;
  wire  _T_102_widx_valid;
  wire  _T_108;
  wire  AsyncQueueSink_clock;
  wire  AsyncQueueSink_reset;
  wire  AsyncQueueSink_io_deq_ready;
  wire  AsyncQueueSink_io_deq_valid;
  wire [2:0] AsyncQueueSink_io_deq_bits_opcode;
  wire [1:0] AsyncQueueSink_io_deq_bits_param;
  wire [1:0] AsyncQueueSink_io_deq_bits_size;
  wire  AsyncQueueSink_io_deq_bits_source;
  wire  AsyncQueueSink_io_deq_bits_sink;
  wire [31:0] AsyncQueueSink_io_deq_bits_data;
  wire  AsyncQueueSink_io_deq_bits_error;
  wire  AsyncQueueSink_io_ridx;
  wire  AsyncQueueSink_io_widx;
  wire [2:0] AsyncQueueSink_io_mem_0_opcode;
  wire [1:0] AsyncQueueSink_io_mem_0_param;
  wire [1:0] AsyncQueueSink_io_mem_0_size;
  wire  AsyncQueueSink_io_mem_0_source;
  wire  AsyncQueueSink_io_mem_0_sink;
  wire [31:0] AsyncQueueSink_io_mem_0_data;
  wire  AsyncQueueSink_io_mem_0_error;
  wire  AsyncQueueSink_io_source_reset_n;
  wire  AsyncQueueSink_io_ridx_valid;
  wire  AsyncQueueSink_io_widx_valid;
  wire  _T_110;
  wire  _T_115_valid;
  wire [2:0] _T_115_bits_opcode;
  wire [1:0] _T_115_bits_param;
  wire [1:0] _T_115_bits_size;
  wire  _T_115_bits_source;
  wire  _T_115_bits_sink;
  wire [31:0] _T_115_bits_data;
  wire  _T_115_bits_error;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SOURCE MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SOURCE (
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_opcode(AsyncQueueSource_io_enq_bits_opcode),
    .io_enq_bits_size(AsyncQueueSource_io_enq_bits_size),
    .io_enq_bits_source(AsyncQueueSource_io_enq_bits_source),
    .io_enq_bits_address(AsyncQueueSource_io_enq_bits_address),
    .io_enq_bits_mask(AsyncQueueSource_io_enq_bits_mask),
    .io_enq_bits_data(AsyncQueueSource_io_enq_bits_data),
    .io_ridx(AsyncQueueSource_io_ridx),
    .io_widx(AsyncQueueSource_io_widx),
    .io_mem_0_opcode(AsyncQueueSource_io_mem_0_opcode),
    .io_mem_0_size(AsyncQueueSource_io_mem_0_size),
    .io_mem_0_source(AsyncQueueSource_io_mem_0_source),
    .io_mem_0_address(AsyncQueueSource_io_mem_0_address),
    .io_mem_0_mask(AsyncQueueSource_io_mem_0_mask),
    .io_mem_0_data(AsyncQueueSource_io_mem_0_data),
    .io_sink_reset_n(AsyncQueueSource_io_sink_reset_n),
    .io_ridx_valid(AsyncQueueSource_io_ridx_valid),
    .io_widx_valid(AsyncQueueSource_io_widx_valid)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SINK MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SINK (
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_ready(AsyncQueueSink_io_deq_ready),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_opcode(AsyncQueueSink_io_deq_bits_opcode),
    .io_deq_bits_param(AsyncQueueSink_io_deq_bits_param),
    .io_deq_bits_size(AsyncQueueSink_io_deq_bits_size),
    .io_deq_bits_source(AsyncQueueSink_io_deq_bits_source),
    .io_deq_bits_sink(AsyncQueueSink_io_deq_bits_sink),
    .io_deq_bits_data(AsyncQueueSink_io_deq_bits_data),
    .io_deq_bits_error(AsyncQueueSink_io_deq_bits_error),
    .io_ridx(AsyncQueueSink_io_ridx),
    .io_widx(AsyncQueueSink_io_widx),
    .io_mem_0_opcode(AsyncQueueSink_io_mem_0_opcode),
    .io_mem_0_param(AsyncQueueSink_io_mem_0_param),
    .io_mem_0_size(AsyncQueueSink_io_mem_0_size),
    .io_mem_0_source(AsyncQueueSink_io_mem_0_source),
    .io_mem_0_sink(AsyncQueueSink_io_mem_0_sink),
    .io_mem_0_data(AsyncQueueSink_io_mem_0_data),
    .io_mem_0_error(AsyncQueueSink_io_mem_0_error),
    .io_source_reset_n(AsyncQueueSink_io_source_reset_n),
    .io_ridx_valid(AsyncQueueSink_io_ridx_valid),
    .io_widx_valid(AsyncQueueSink_io_widx_valid)
  );
  assign io_in_0_a_ready = AsyncQueueSource_io_enq_ready;
  assign io_in_0_d_valid = _T_115_valid;
  assign io_in_0_d_bits_opcode = _T_115_bits_opcode;
  assign io_in_0_d_bits_param = _T_115_bits_param;
  assign io_in_0_d_bits_size = _T_115_bits_size;
  assign io_in_0_d_bits_source = _T_115_bits_source;
  assign io_in_0_d_bits_sink = _T_115_bits_sink;
  assign io_in_0_d_bits_data = _T_115_bits_data;
  assign io_in_0_d_bits_error = _T_115_bits_error;
  assign io_out_0_a_mem_0_opcode = _T_102_mem_0_opcode;
  assign io_out_0_a_mem_0_size = _T_102_mem_0_size;
  assign io_out_0_a_mem_0_source = _T_102_mem_0_source;
  assign io_out_0_a_mem_0_address = _T_102_mem_0_address;
  assign io_out_0_a_mem_0_mask = _T_102_mem_0_mask;
  assign io_out_0_a_mem_0_data = _T_102_mem_0_data;
  assign io_out_0_a_widx = _T_102_widx;
  assign io_out_0_a_widx_valid = _T_102_widx_valid;
  assign io_out_0_a_source_reset_n = _T_108;
  assign io_out_0_d_ridx = AsyncQueueSink_io_ridx;
  assign io_out_0_d_ridx_valid = AsyncQueueSink_io_ridx_valid;
  assign io_out_0_d_sink_reset_n = _T_110;
  assign AsyncQueueSource_clock = clock;
  assign AsyncQueueSource_reset = reset;
  assign AsyncQueueSource_io_enq_valid = io_in_0_a_valid;
  assign AsyncQueueSource_io_enq_bits_opcode = io_in_0_a_bits_opcode;
  assign AsyncQueueSource_io_enq_bits_size = io_in_0_a_bits_size;
  assign AsyncQueueSource_io_enq_bits_source = io_in_0_a_bits_source;
  assign AsyncQueueSource_io_enq_bits_address = io_in_0_a_bits_address;
  assign AsyncQueueSource_io_enq_bits_mask = io_in_0_a_bits_mask;
  assign AsyncQueueSource_io_enq_bits_data = io_in_0_a_bits_data;
  assign AsyncQueueSource_io_ridx = io_out_0_a_ridx;
  assign AsyncQueueSource_io_sink_reset_n = io_out_0_a_sink_reset_n;
  assign AsyncQueueSource_io_ridx_valid = io_out_0_a_ridx_valid;
  assign _T_102_mem_0_opcode = AsyncQueueSource_io_mem_0_opcode;
  assign _T_102_mem_0_size = AsyncQueueSource_io_mem_0_size;
  assign _T_102_mem_0_source = AsyncQueueSource_io_mem_0_source;
  assign _T_102_mem_0_address = AsyncQueueSource_io_mem_0_address;
  assign _T_102_mem_0_mask = AsyncQueueSource_io_mem_0_mask;
  assign _T_102_mem_0_data = AsyncQueueSource_io_mem_0_data;
  assign _T_102_widx = AsyncQueueSource_io_widx;
  assign _T_102_widx_valid = AsyncQueueSource_io_widx_valid;
  assign _T_108 = AsyncQueueSource_reset == 1'h0;
  assign AsyncQueueSink_clock = clock;
  assign AsyncQueueSink_reset = reset;
  assign AsyncQueueSink_io_deq_ready = io_in_0_d_ready;
  assign AsyncQueueSink_io_widx = io_out_0_d_widx;
  assign AsyncQueueSink_io_mem_0_opcode = io_out_0_d_mem_0_opcode;
  assign AsyncQueueSink_io_mem_0_param = io_out_0_d_mem_0_param;
  assign AsyncQueueSink_io_mem_0_size = io_out_0_d_mem_0_size;
  assign AsyncQueueSink_io_mem_0_source = io_out_0_d_mem_0_source;
  assign AsyncQueueSink_io_mem_0_sink = io_out_0_d_mem_0_sink;
  assign AsyncQueueSink_io_mem_0_data = io_out_0_d_mem_0_data;
  assign AsyncQueueSink_io_mem_0_error = io_out_0_d_mem_0_error;
  assign AsyncQueueSink_io_source_reset_n = io_out_0_d_source_reset_n;
  assign AsyncQueueSink_io_widx_valid = io_out_0_d_widx_valid;
  assign _T_110 = AsyncQueueSink_reset == 1'h0;
  assign _T_115_valid = AsyncQueueSink_io_deq_valid;
  assign _T_115_bits_opcode = AsyncQueueSink_io_deq_bits_opcode;
  assign _T_115_bits_param = AsyncQueueSink_io_deq_bits_param;
  assign _T_115_bits_size = AsyncQueueSink_io_deq_bits_size;
  assign _T_115_bits_source = AsyncQueueSink_io_deq_bits_source;
  assign _T_115_bits_sink = AsyncQueueSink_io_deq_bits_sink;
  assign _T_115_bits_data = AsyncQueueSink_io_deq_bits_data;
  assign _T_115_bits_error = AsyncQueueSink_io_deq_bits_error;
endmodule
