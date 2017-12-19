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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_INNER_ASYNC_DM_INNER(
  input         clock,
  input         reset,
  input  [2:0]  io_dmi_in_0_a_mem_0_opcode,
  input  [1:0]  io_dmi_in_0_a_mem_0_size,
  input         io_dmi_in_0_a_mem_0_source,
  input  [8:0]  io_dmi_in_0_a_mem_0_address,
  input  [3:0]  io_dmi_in_0_a_mem_0_mask,
  input  [31:0] io_dmi_in_0_a_mem_0_data,
  output        io_dmi_in_0_a_ridx,
  input         io_dmi_in_0_a_widx,
  output        io_dmi_in_0_a_ridx_valid,
  input         io_dmi_in_0_a_widx_valid,
  input         io_dmi_in_0_a_source_reset_n,
  output        io_dmi_in_0_a_sink_reset_n,
  output [2:0]  io_dmi_in_0_d_mem_0_opcode,
  output [1:0]  io_dmi_in_0_d_mem_0_param,
  output [1:0]  io_dmi_in_0_d_mem_0_size,
  output        io_dmi_in_0_d_mem_0_source,
  output        io_dmi_in_0_d_mem_0_sink,
  output [31:0] io_dmi_in_0_d_mem_0_data,
  output        io_dmi_in_0_d_mem_0_error,
  input         io_dmi_in_0_d_ridx,
  output        io_dmi_in_0_d_widx,
  input         io_dmi_in_0_d_ridx_valid,
  output        io_dmi_in_0_d_widx_valid,
  output        io_dmi_in_0_d_source_reset_n,
  input         io_dmi_in_0_d_sink_reset_n,
  output        io_tl_in_0_a_ready,
  input         io_tl_in_0_a_valid,
  input  [2:0]  io_tl_in_0_a_bits_opcode,
  input  [1:0]  io_tl_in_0_a_bits_size,
  input  [6:0]  io_tl_in_0_a_bits_source,
  input  [11:0] io_tl_in_0_a_bits_address,
  input  [3:0]  io_tl_in_0_a_bits_mask,
  input  [31:0] io_tl_in_0_a_bits_data,
  input         io_tl_in_0_d_ready,
  output        io_tl_in_0_d_valid,
  output [2:0]  io_tl_in_0_d_bits_opcode,
  output [1:0]  io_tl_in_0_d_bits_param,
  output [1:0]  io_tl_in_0_d_bits_size,
  output [6:0]  io_tl_in_0_d_bits_source,
  output        io_tl_in_0_d_bits_sink,
  output [31:0] io_tl_in_0_d_bits_data,
  output        io_tl_in_0_d_bits_error,
  input         io_dmactive,
  input         io_innerCtrl_mem_0_resumereq,
  input  [9:0]  io_innerCtrl_mem_0_hartsel,
  output        io_innerCtrl_ridx,
  input         io_innerCtrl_widx,
  output        io_innerCtrl_ridx_valid,
  input         io_innerCtrl_widx_valid,
  input         io_innerCtrl_source_reset_n,
  output        io_innerCtrl_sink_reset_n,
  input         io_debugUnavail_0
);
  wire  dmInner_clock;
  wire  dmInner_reset;
  wire  dmInner_io_hart_in_0_a_ready;
  wire  dmInner_io_hart_in_0_a_valid;
  wire [2:0] dmInner_io_hart_in_0_a_bits_opcode;
  wire [1:0] dmInner_io_hart_in_0_a_bits_size;
  wire [6:0] dmInner_io_hart_in_0_a_bits_source;
  wire [11:0] dmInner_io_hart_in_0_a_bits_address;
  wire [3:0] dmInner_io_hart_in_0_a_bits_mask;
  wire [31:0] dmInner_io_hart_in_0_a_bits_data;
  wire  dmInner_io_hart_in_0_d_ready;
  wire  dmInner_io_hart_in_0_d_valid;
  wire [2:0] dmInner_io_hart_in_0_d_bits_opcode;
  wire [1:0] dmInner_io_hart_in_0_d_bits_param;
  wire [1:0] dmInner_io_hart_in_0_d_bits_size;
  wire [6:0] dmInner_io_hart_in_0_d_bits_source;
  wire  dmInner_io_hart_in_0_d_bits_sink;
  wire [31:0] dmInner_io_hart_in_0_d_bits_data;
  wire  dmInner_io_hart_in_0_d_bits_error;
  wire  dmInner_io_dmi_in_0_a_ready;
  wire  dmInner_io_dmi_in_0_a_valid;
  wire [2:0] dmInner_io_dmi_in_0_a_bits_opcode;
  wire [1:0] dmInner_io_dmi_in_0_a_bits_size;
  wire  dmInner_io_dmi_in_0_a_bits_source;
  wire [8:0] dmInner_io_dmi_in_0_a_bits_address;
  wire [3:0] dmInner_io_dmi_in_0_a_bits_mask;
  wire [31:0] dmInner_io_dmi_in_0_a_bits_data;
  wire  dmInner_io_dmi_in_0_d_ready;
  wire  dmInner_io_dmi_in_0_d_valid;
  wire [2:0] dmInner_io_dmi_in_0_d_bits_opcode;
  wire [1:0] dmInner_io_dmi_in_0_d_bits_param;
  wire [1:0] dmInner_io_dmi_in_0_d_bits_size;
  wire  dmInner_io_dmi_in_0_d_bits_source;
  wire  dmInner_io_dmi_in_0_d_bits_sink;
  wire [31:0] dmInner_io_dmi_in_0_d_bits_data;
  wire  dmInner_io_dmi_in_0_d_bits_error;
  wire  dmInner_io_dmactive;
  wire  dmInner_io_innerCtrl_ready;
  wire  dmInner_io_innerCtrl_valid;
  wire  dmInner_io_innerCtrl_bits_resumereq;
  wire [9:0] dmInner_io_innerCtrl_bits_hartsel;
  wire  dmInner_io_debugUnavail_0;
  wire  TLAsyncCrossingSink_clock;
  wire  TLAsyncCrossingSink_reset;
  wire [2:0] TLAsyncCrossingSink_io_in_0_a_mem_0_opcode;
  wire [1:0] TLAsyncCrossingSink_io_in_0_a_mem_0_size;
  wire  TLAsyncCrossingSink_io_in_0_a_mem_0_source;
  wire [8:0] TLAsyncCrossingSink_io_in_0_a_mem_0_address;
  wire [3:0] TLAsyncCrossingSink_io_in_0_a_mem_0_mask;
  wire [31:0] TLAsyncCrossingSink_io_in_0_a_mem_0_data;
  wire  TLAsyncCrossingSink_io_in_0_a_ridx;
  wire  TLAsyncCrossingSink_io_in_0_a_widx;
  wire  TLAsyncCrossingSink_io_in_0_a_ridx_valid;
  wire  TLAsyncCrossingSink_io_in_0_a_widx_valid;
  wire  TLAsyncCrossingSink_io_in_0_a_source_reset_n;
  wire  TLAsyncCrossingSink_io_in_0_a_sink_reset_n;
  wire [2:0] TLAsyncCrossingSink_io_in_0_d_mem_0_opcode;
  wire [1:0] TLAsyncCrossingSink_io_in_0_d_mem_0_param;
  wire [1:0] TLAsyncCrossingSink_io_in_0_d_mem_0_size;
  wire  TLAsyncCrossingSink_io_in_0_d_mem_0_source;
  wire  TLAsyncCrossingSink_io_in_0_d_mem_0_sink;
  wire [31:0] TLAsyncCrossingSink_io_in_0_d_mem_0_data;
  wire  TLAsyncCrossingSink_io_in_0_d_mem_0_error;
  wire  TLAsyncCrossingSink_io_in_0_d_ridx;
  wire  TLAsyncCrossingSink_io_in_0_d_widx;
  wire  TLAsyncCrossingSink_io_in_0_d_ridx_valid;
  wire  TLAsyncCrossingSink_io_in_0_d_widx_valid;
  wire  TLAsyncCrossingSink_io_in_0_d_source_reset_n;
  wire  TLAsyncCrossingSink_io_in_0_d_sink_reset_n;
  wire  TLAsyncCrossingSink_io_out_0_a_ready;
  wire  TLAsyncCrossingSink_io_out_0_a_valid;
  wire [2:0] TLAsyncCrossingSink_io_out_0_a_bits_opcode;
  wire [1:0] TLAsyncCrossingSink_io_out_0_a_bits_size;
  wire  TLAsyncCrossingSink_io_out_0_a_bits_source;
  wire [8:0] TLAsyncCrossingSink_io_out_0_a_bits_address;
  wire [3:0] TLAsyncCrossingSink_io_out_0_a_bits_mask;
  wire [31:0] TLAsyncCrossingSink_io_out_0_a_bits_data;
  wire  TLAsyncCrossingSink_io_out_0_d_ready;
  wire  TLAsyncCrossingSink_io_out_0_d_valid;
  wire [2:0] TLAsyncCrossingSink_io_out_0_d_bits_opcode;
  wire [1:0] TLAsyncCrossingSink_io_out_0_d_bits_param;
  wire [1:0] TLAsyncCrossingSink_io_out_0_d_bits_size;
  wire  TLAsyncCrossingSink_io_out_0_d_bits_source;
  wire  TLAsyncCrossingSink_io_out_0_d_bits_sink;
  wire [31:0] TLAsyncCrossingSink_io_out_0_d_bits_data;
  wire  TLAsyncCrossingSink_io_out_0_d_bits_error;
  wire  AsyncQueueSink_clock;
  wire  AsyncQueueSink_reset;
  wire  AsyncQueueSink_io_deq_ready;
  wire  AsyncQueueSink_io_deq_valid;
  wire  AsyncQueueSink_io_deq_bits_resumereq;
  wire [9:0] AsyncQueueSink_io_deq_bits_hartsel;
  wire  AsyncQueueSink_io_ridx;
  wire  AsyncQueueSink_io_widx;
  wire  AsyncQueueSink_io_mem_0_resumereq;
  wire [9:0] AsyncQueueSink_io_mem_0_hartsel;
  wire  AsyncQueueSink_io_source_reset_n;
  wire  AsyncQueueSink_io_ridx_valid;
  wire  AsyncQueueSink_io_widx_valid;
  wire  _T_154;
  wire  _T_159_ready;
  wire  _T_159_valid;
  wire  _T_159_bits_resumereq;
  wire [9:0] _T_159_bits_hartsel;
  wire  _T_163;
  wire  ResetCatchAndSync_clock;
  wire  ResetCatchAndSync_reset;
  wire  ResetCatchAndSync_io_sync_reset;
  wire  _T_164;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_INNER_DM_INNER dmInner (
    .clock(dmInner_clock),
    .reset(dmInner_reset),
    .io_hart_in_0_a_ready(dmInner_io_hart_in_0_a_ready),
    .io_hart_in_0_a_valid(dmInner_io_hart_in_0_a_valid),
    .io_hart_in_0_a_bits_opcode(dmInner_io_hart_in_0_a_bits_opcode),
    .io_hart_in_0_a_bits_size(dmInner_io_hart_in_0_a_bits_size),
    .io_hart_in_0_a_bits_source(dmInner_io_hart_in_0_a_bits_source),
    .io_hart_in_0_a_bits_address(dmInner_io_hart_in_0_a_bits_address),
    .io_hart_in_0_a_bits_mask(dmInner_io_hart_in_0_a_bits_mask),
    .io_hart_in_0_a_bits_data(dmInner_io_hart_in_0_a_bits_data),
    .io_hart_in_0_d_ready(dmInner_io_hart_in_0_d_ready),
    .io_hart_in_0_d_valid(dmInner_io_hart_in_0_d_valid),
    .io_hart_in_0_d_bits_opcode(dmInner_io_hart_in_0_d_bits_opcode),
    .io_hart_in_0_d_bits_param(dmInner_io_hart_in_0_d_bits_param),
    .io_hart_in_0_d_bits_size(dmInner_io_hart_in_0_d_bits_size),
    .io_hart_in_0_d_bits_source(dmInner_io_hart_in_0_d_bits_source),
    .io_hart_in_0_d_bits_sink(dmInner_io_hart_in_0_d_bits_sink),
    .io_hart_in_0_d_bits_data(dmInner_io_hart_in_0_d_bits_data),
    .io_hart_in_0_d_bits_error(dmInner_io_hart_in_0_d_bits_error),
    .io_dmi_in_0_a_ready(dmInner_io_dmi_in_0_a_ready),
    .io_dmi_in_0_a_valid(dmInner_io_dmi_in_0_a_valid),
    .io_dmi_in_0_a_bits_opcode(dmInner_io_dmi_in_0_a_bits_opcode),
    .io_dmi_in_0_a_bits_size(dmInner_io_dmi_in_0_a_bits_size),
    .io_dmi_in_0_a_bits_source(dmInner_io_dmi_in_0_a_bits_source),
    .io_dmi_in_0_a_bits_address(dmInner_io_dmi_in_0_a_bits_address),
    .io_dmi_in_0_a_bits_mask(dmInner_io_dmi_in_0_a_bits_mask),
    .io_dmi_in_0_a_bits_data(dmInner_io_dmi_in_0_a_bits_data),
    .io_dmi_in_0_d_ready(dmInner_io_dmi_in_0_d_ready),
    .io_dmi_in_0_d_valid(dmInner_io_dmi_in_0_d_valid),
    .io_dmi_in_0_d_bits_opcode(dmInner_io_dmi_in_0_d_bits_opcode),
    .io_dmi_in_0_d_bits_param(dmInner_io_dmi_in_0_d_bits_param),
    .io_dmi_in_0_d_bits_size(dmInner_io_dmi_in_0_d_bits_size),
    .io_dmi_in_0_d_bits_source(dmInner_io_dmi_in_0_d_bits_source),
    .io_dmi_in_0_d_bits_sink(dmInner_io_dmi_in_0_d_bits_sink),
    .io_dmi_in_0_d_bits_data(dmInner_io_dmi_in_0_d_bits_data),
    .io_dmi_in_0_d_bits_error(dmInner_io_dmi_in_0_d_bits_error),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_ready(dmInner_io_innerCtrl_ready),
    .io_innerCtrl_valid(dmInner_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmInner_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmInner_io_innerCtrl_bits_hartsel),
    .io_debugUnavail_0(dmInner_io_debugUnavail_0)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ASYNC_CROSSING_SINK MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ASYNC_CROSSING_SINK (
    .clock(TLAsyncCrossingSink_clock),
    .reset(TLAsyncCrossingSink_reset),
    .io_in_0_a_mem_0_opcode(TLAsyncCrossingSink_io_in_0_a_mem_0_opcode),
    .io_in_0_a_mem_0_size(TLAsyncCrossingSink_io_in_0_a_mem_0_size),
    .io_in_0_a_mem_0_source(TLAsyncCrossingSink_io_in_0_a_mem_0_source),
    .io_in_0_a_mem_0_address(TLAsyncCrossingSink_io_in_0_a_mem_0_address),
    .io_in_0_a_mem_0_mask(TLAsyncCrossingSink_io_in_0_a_mem_0_mask),
    .io_in_0_a_mem_0_data(TLAsyncCrossingSink_io_in_0_a_mem_0_data),
    .io_in_0_a_ridx(TLAsyncCrossingSink_io_in_0_a_ridx),
    .io_in_0_a_widx(TLAsyncCrossingSink_io_in_0_a_widx),
    .io_in_0_a_ridx_valid(TLAsyncCrossingSink_io_in_0_a_ridx_valid),
    .io_in_0_a_widx_valid(TLAsyncCrossingSink_io_in_0_a_widx_valid),
    .io_in_0_a_source_reset_n(TLAsyncCrossingSink_io_in_0_a_source_reset_n),
    .io_in_0_a_sink_reset_n(TLAsyncCrossingSink_io_in_0_a_sink_reset_n),
    .io_in_0_d_mem_0_opcode(TLAsyncCrossingSink_io_in_0_d_mem_0_opcode),
    .io_in_0_d_mem_0_param(TLAsyncCrossingSink_io_in_0_d_mem_0_param),
    .io_in_0_d_mem_0_size(TLAsyncCrossingSink_io_in_0_d_mem_0_size),
    .io_in_0_d_mem_0_source(TLAsyncCrossingSink_io_in_0_d_mem_0_source),
    .io_in_0_d_mem_0_sink(TLAsyncCrossingSink_io_in_0_d_mem_0_sink),
    .io_in_0_d_mem_0_data(TLAsyncCrossingSink_io_in_0_d_mem_0_data),
    .io_in_0_d_mem_0_error(TLAsyncCrossingSink_io_in_0_d_mem_0_error),
    .io_in_0_d_ridx(TLAsyncCrossingSink_io_in_0_d_ridx),
    .io_in_0_d_widx(TLAsyncCrossingSink_io_in_0_d_widx),
    .io_in_0_d_ridx_valid(TLAsyncCrossingSink_io_in_0_d_ridx_valid),
    .io_in_0_d_widx_valid(TLAsyncCrossingSink_io_in_0_d_widx_valid),
    .io_in_0_d_source_reset_n(TLAsyncCrossingSink_io_in_0_d_source_reset_n),
    .io_in_0_d_sink_reset_n(TLAsyncCrossingSink_io_in_0_d_sink_reset_n),
    .io_out_0_a_ready(TLAsyncCrossingSink_io_out_0_a_ready),
    .io_out_0_a_valid(TLAsyncCrossingSink_io_out_0_a_valid),
    .io_out_0_a_bits_opcode(TLAsyncCrossingSink_io_out_0_a_bits_opcode),
    .io_out_0_a_bits_size(TLAsyncCrossingSink_io_out_0_a_bits_size),
    .io_out_0_a_bits_source(TLAsyncCrossingSink_io_out_0_a_bits_source),
    .io_out_0_a_bits_address(TLAsyncCrossingSink_io_out_0_a_bits_address),
    .io_out_0_a_bits_mask(TLAsyncCrossingSink_io_out_0_a_bits_mask),
    .io_out_0_a_bits_data(TLAsyncCrossingSink_io_out_0_a_bits_data),
    .io_out_0_d_ready(TLAsyncCrossingSink_io_out_0_d_ready),
    .io_out_0_d_valid(TLAsyncCrossingSink_io_out_0_d_valid),
    .io_out_0_d_bits_opcode(TLAsyncCrossingSink_io_out_0_d_bits_opcode),
    .io_out_0_d_bits_param(TLAsyncCrossingSink_io_out_0_d_bits_param),
    .io_out_0_d_bits_size(TLAsyncCrossingSink_io_out_0_d_bits_size),
    .io_out_0_d_bits_source(TLAsyncCrossingSink_io_out_0_d_bits_source),
    .io_out_0_d_bits_sink(TLAsyncCrossingSink_io_out_0_d_bits_sink),
    .io_out_0_d_bits_data(TLAsyncCrossingSink_io_out_0_d_bits_data),
    .io_out_0_d_bits_error(TLAsyncCrossingSink_io_out_0_d_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SINK_2 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SINK (
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_ready(AsyncQueueSink_io_deq_ready),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_resumereq(AsyncQueueSink_io_deq_bits_resumereq),
    .io_deq_bits_hartsel(AsyncQueueSink_io_deq_bits_hartsel),
    .io_ridx(AsyncQueueSink_io_ridx),
    .io_widx(AsyncQueueSink_io_widx),
    .io_mem_0_resumereq(AsyncQueueSink_io_mem_0_resumereq),
    .io_mem_0_hartsel(AsyncQueueSink_io_mem_0_hartsel),
    .io_source_reset_n(AsyncQueueSink_io_source_reset_n),
    .io_ridx_valid(AsyncQueueSink_io_ridx_valid),
    .io_widx_valid(AsyncQueueSink_io_widx_valid)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RESET_CATCH_AND_SYNC MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RESET_CATCH_AND_SYNC (
    .clock(ResetCatchAndSync_clock),
    .reset(ResetCatchAndSync_reset),
    .io_sync_reset(ResetCatchAndSync_io_sync_reset)
  );
  assign io_dmi_in_0_a_ridx = TLAsyncCrossingSink_io_in_0_a_ridx;
  assign io_dmi_in_0_a_ridx_valid = TLAsyncCrossingSink_io_in_0_a_ridx_valid;
  assign io_dmi_in_0_a_sink_reset_n = TLAsyncCrossingSink_io_in_0_a_sink_reset_n;
  assign io_dmi_in_0_d_mem_0_opcode = TLAsyncCrossingSink_io_in_0_d_mem_0_opcode;
  assign io_dmi_in_0_d_mem_0_param = TLAsyncCrossingSink_io_in_0_d_mem_0_param;
  assign io_dmi_in_0_d_mem_0_size = TLAsyncCrossingSink_io_in_0_d_mem_0_size;
  assign io_dmi_in_0_d_mem_0_source = TLAsyncCrossingSink_io_in_0_d_mem_0_source;
  assign io_dmi_in_0_d_mem_0_sink = TLAsyncCrossingSink_io_in_0_d_mem_0_sink;
  assign io_dmi_in_0_d_mem_0_data = TLAsyncCrossingSink_io_in_0_d_mem_0_data;
  assign io_dmi_in_0_d_mem_0_error = TLAsyncCrossingSink_io_in_0_d_mem_0_error;
  assign io_dmi_in_0_d_widx = TLAsyncCrossingSink_io_in_0_d_widx;
  assign io_dmi_in_0_d_widx_valid = TLAsyncCrossingSink_io_in_0_d_widx_valid;
  assign io_dmi_in_0_d_source_reset_n = TLAsyncCrossingSink_io_in_0_d_source_reset_n;
  assign io_tl_in_0_a_ready = dmInner_io_hart_in_0_a_ready;
  assign io_tl_in_0_d_valid = dmInner_io_hart_in_0_d_valid;
  assign io_tl_in_0_d_bits_opcode = dmInner_io_hart_in_0_d_bits_opcode;
  assign io_tl_in_0_d_bits_param = dmInner_io_hart_in_0_d_bits_param;
  assign io_tl_in_0_d_bits_size = dmInner_io_hart_in_0_d_bits_size;
  assign io_tl_in_0_d_bits_source = dmInner_io_hart_in_0_d_bits_source;
  assign io_tl_in_0_d_bits_sink = dmInner_io_hart_in_0_d_bits_sink;
  assign io_tl_in_0_d_bits_data = dmInner_io_hart_in_0_d_bits_data;
  assign io_tl_in_0_d_bits_error = dmInner_io_hart_in_0_d_bits_error;
  assign io_innerCtrl_ridx = AsyncQueueSink_io_ridx;
  assign io_innerCtrl_ridx_valid = AsyncQueueSink_io_ridx_valid;
  assign io_innerCtrl_sink_reset_n = _T_154;
  assign dmInner_clock = clock;
  assign dmInner_reset = reset;
  assign dmInner_io_hart_in_0_a_valid = io_tl_in_0_a_valid;
  assign dmInner_io_hart_in_0_a_bits_opcode = io_tl_in_0_a_bits_opcode;
  assign dmInner_io_hart_in_0_a_bits_size = io_tl_in_0_a_bits_size;
  assign dmInner_io_hart_in_0_a_bits_source = io_tl_in_0_a_bits_source;
  assign dmInner_io_hart_in_0_a_bits_address = io_tl_in_0_a_bits_address;
  assign dmInner_io_hart_in_0_a_bits_mask = io_tl_in_0_a_bits_mask;
  assign dmInner_io_hart_in_0_a_bits_data = io_tl_in_0_a_bits_data;
  assign dmInner_io_hart_in_0_d_ready = io_tl_in_0_d_ready;
  assign dmInner_io_dmi_in_0_a_valid = TLAsyncCrossingSink_io_out_0_a_valid;
  assign dmInner_io_dmi_in_0_a_bits_opcode = TLAsyncCrossingSink_io_out_0_a_bits_opcode;
  assign dmInner_io_dmi_in_0_a_bits_size = TLAsyncCrossingSink_io_out_0_a_bits_size;
  assign dmInner_io_dmi_in_0_a_bits_source = TLAsyncCrossingSink_io_out_0_a_bits_source;
  assign dmInner_io_dmi_in_0_a_bits_address = TLAsyncCrossingSink_io_out_0_a_bits_address;
  assign dmInner_io_dmi_in_0_a_bits_mask = TLAsyncCrossingSink_io_out_0_a_bits_mask;
  assign dmInner_io_dmi_in_0_a_bits_data = TLAsyncCrossingSink_io_out_0_a_bits_data;
  assign dmInner_io_dmi_in_0_d_ready = TLAsyncCrossingSink_io_out_0_d_ready;
  assign dmInner_io_dmactive = _T_164;
  assign dmInner_io_innerCtrl_valid = _T_159_valid;
  assign dmInner_io_innerCtrl_bits_resumereq = _T_159_bits_resumereq;
  assign dmInner_io_innerCtrl_bits_hartsel = _T_159_bits_hartsel;
  assign dmInner_io_debugUnavail_0 = io_debugUnavail_0;
  assign TLAsyncCrossingSink_clock = clock;
  assign TLAsyncCrossingSink_reset = reset;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_opcode = io_dmi_in_0_a_mem_0_opcode;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_size = io_dmi_in_0_a_mem_0_size;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_source = io_dmi_in_0_a_mem_0_source;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_address = io_dmi_in_0_a_mem_0_address;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_mask = io_dmi_in_0_a_mem_0_mask;
  assign TLAsyncCrossingSink_io_in_0_a_mem_0_data = io_dmi_in_0_a_mem_0_data;
  assign TLAsyncCrossingSink_io_in_0_a_widx = io_dmi_in_0_a_widx;
  assign TLAsyncCrossingSink_io_in_0_a_widx_valid = io_dmi_in_0_a_widx_valid;
  assign TLAsyncCrossingSink_io_in_0_a_source_reset_n = io_dmi_in_0_a_source_reset_n;
  assign TLAsyncCrossingSink_io_in_0_d_ridx = io_dmi_in_0_d_ridx;
  assign TLAsyncCrossingSink_io_in_0_d_ridx_valid = io_dmi_in_0_d_ridx_valid;
  assign TLAsyncCrossingSink_io_in_0_d_sink_reset_n = io_dmi_in_0_d_sink_reset_n;
  assign TLAsyncCrossingSink_io_out_0_a_ready = dmInner_io_dmi_in_0_a_ready;
  assign TLAsyncCrossingSink_io_out_0_d_valid = dmInner_io_dmi_in_0_d_valid;
  assign TLAsyncCrossingSink_io_out_0_d_bits_opcode = dmInner_io_dmi_in_0_d_bits_opcode;
  assign TLAsyncCrossingSink_io_out_0_d_bits_param = dmInner_io_dmi_in_0_d_bits_param;
  assign TLAsyncCrossingSink_io_out_0_d_bits_size = dmInner_io_dmi_in_0_d_bits_size;
  assign TLAsyncCrossingSink_io_out_0_d_bits_source = dmInner_io_dmi_in_0_d_bits_source;
  assign TLAsyncCrossingSink_io_out_0_d_bits_sink = dmInner_io_dmi_in_0_d_bits_sink;
  assign TLAsyncCrossingSink_io_out_0_d_bits_data = dmInner_io_dmi_in_0_d_bits_data;
  assign TLAsyncCrossingSink_io_out_0_d_bits_error = dmInner_io_dmi_in_0_d_bits_error;
  assign AsyncQueueSink_clock = clock;
  assign AsyncQueueSink_reset = reset;
  assign AsyncQueueSink_io_deq_ready = _T_159_ready;
  assign AsyncQueueSink_io_widx = io_innerCtrl_widx;
  assign AsyncQueueSink_io_mem_0_resumereq = io_innerCtrl_mem_0_resumereq;
  assign AsyncQueueSink_io_mem_0_hartsel = io_innerCtrl_mem_0_hartsel;
  assign AsyncQueueSink_io_source_reset_n = io_innerCtrl_source_reset_n;
  assign AsyncQueueSink_io_widx_valid = io_innerCtrl_widx_valid;
  assign _T_154 = AsyncQueueSink_reset == 1'h0;
  assign _T_159_ready = dmInner_io_innerCtrl_ready;
  assign _T_159_valid = AsyncQueueSink_io_deq_valid;
  assign _T_159_bits_resumereq = AsyncQueueSink_io_deq_bits_resumereq;
  assign _T_159_bits_hartsel = AsyncQueueSink_io_deq_bits_hartsel;
  assign _T_163 = ~ io_dmactive;
  assign ResetCatchAndSync_clock = clock;
  assign ResetCatchAndSync_reset = _T_163;
  assign _T_164 = ~ ResetCatchAndSync_io_sync_reset;
endmodule
