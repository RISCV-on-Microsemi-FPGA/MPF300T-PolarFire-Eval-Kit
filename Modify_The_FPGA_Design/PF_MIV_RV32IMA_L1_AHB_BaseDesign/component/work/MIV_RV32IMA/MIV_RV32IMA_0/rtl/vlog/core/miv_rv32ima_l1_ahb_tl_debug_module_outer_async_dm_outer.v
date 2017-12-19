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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_OUTER_ASYNC_DM_OUTER(
  input         clock,
  input         reset,
  output        io_debugInterrupts_0_0,
  output [2:0]  io_dmiInner_0_a_mem_0_opcode,
  output [1:0]  io_dmiInner_0_a_mem_0_size,
  output        io_dmiInner_0_a_mem_0_source,
  output [8:0]  io_dmiInner_0_a_mem_0_address,
  output [3:0]  io_dmiInner_0_a_mem_0_mask,
  output [31:0] io_dmiInner_0_a_mem_0_data,
  input         io_dmiInner_0_a_ridx,
  output        io_dmiInner_0_a_widx,
  input         io_dmiInner_0_a_ridx_valid,
  output        io_dmiInner_0_a_widx_valid,
  output        io_dmiInner_0_a_source_reset_n,
  input         io_dmiInner_0_a_sink_reset_n,
  input  [2:0]  io_dmiInner_0_d_mem_0_opcode,
  input  [1:0]  io_dmiInner_0_d_mem_0_param,
  input  [1:0]  io_dmiInner_0_d_mem_0_size,
  input         io_dmiInner_0_d_mem_0_source,
  input         io_dmiInner_0_d_mem_0_sink,
  input  [31:0] io_dmiInner_0_d_mem_0_data,
  input         io_dmiInner_0_d_mem_0_error,
  output        io_dmiInner_0_d_ridx,
  input         io_dmiInner_0_d_widx,
  output        io_dmiInner_0_d_ridx_valid,
  input         io_dmiInner_0_d_widx_valid,
  input         io_dmiInner_0_d_source_reset_n,
  output        io_dmiInner_0_d_sink_reset_n,
  output        io_dmi_req_ready,
  input         io_dmi_req_valid,
  input  [6:0]  io_dmi_req_bits_addr,
  input  [31:0] io_dmi_req_bits_data,
  input  [1:0]  io_dmi_req_bits_op,
  input         io_dmi_resp_ready,
  output        io_dmi_resp_valid,
  output [31:0] io_dmi_resp_bits_data,
  output [1:0]  io_dmi_resp_bits_resp,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  output        io_innerCtrl_mem_0_resumereq,
  output [9:0]  io_innerCtrl_mem_0_hartsel,
  input         io_innerCtrl_ridx,
  output        io_innerCtrl_widx,
  input         io_innerCtrl_ridx_valid,
  output        io_innerCtrl_widx_valid,
  output        io_innerCtrl_source_reset_n,
  input         io_innerCtrl_sink_reset_n
);
  wire  dmi2tl_io_dmi_req_ready;
  wire  dmi2tl_io_dmi_req_valid;
  wire [6:0] dmi2tl_io_dmi_req_bits_addr;
  wire [31:0] dmi2tl_io_dmi_req_bits_data;
  wire [1:0] dmi2tl_io_dmi_req_bits_op;
  wire  dmi2tl_io_dmi_resp_ready;
  wire  dmi2tl_io_dmi_resp_valid;
  wire [31:0] dmi2tl_io_dmi_resp_bits_data;
  wire [1:0] dmi2tl_io_dmi_resp_bits_resp;
  wire  dmi2tl_io_out_0_a_ready;
  wire  dmi2tl_io_out_0_a_valid;
  wire [2:0] dmi2tl_io_out_0_a_bits_opcode;
  wire [1:0] dmi2tl_io_out_0_a_bits_size;
  wire  dmi2tl_io_out_0_a_bits_source;
  wire [8:0] dmi2tl_io_out_0_a_bits_address;
  wire [3:0] dmi2tl_io_out_0_a_bits_mask;
  wire [31:0] dmi2tl_io_out_0_a_bits_data;
  wire  dmi2tl_io_out_0_d_ready;
  wire  dmi2tl_io_out_0_d_valid;
  wire [31:0] dmi2tl_io_out_0_d_bits_data;
  wire  dmi2tl_io_out_0_d_bits_error;
  wire  dmiXbar_clock;
  wire  dmiXbar_reset;
  wire  dmiXbar_io_in_0_a_ready;
  wire  dmiXbar_io_in_0_a_valid;
  wire [2:0] dmiXbar_io_in_0_a_bits_opcode;
  wire [1:0] dmiXbar_io_in_0_a_bits_size;
  wire  dmiXbar_io_in_0_a_bits_source;
  wire [8:0] dmiXbar_io_in_0_a_bits_address;
  wire [3:0] dmiXbar_io_in_0_a_bits_mask;
  wire [31:0] dmiXbar_io_in_0_a_bits_data;
  wire  dmiXbar_io_in_0_d_ready;
  wire  dmiXbar_io_in_0_d_valid;
  wire [31:0] dmiXbar_io_in_0_d_bits_data;
  wire  dmiXbar_io_in_0_d_bits_error;
  wire  dmiXbar_io_out_1_a_ready;
  wire  dmiXbar_io_out_1_a_valid;
  wire [2:0] dmiXbar_io_out_1_a_bits_opcode;
  wire [1:0] dmiXbar_io_out_1_a_bits_size;
  wire  dmiXbar_io_out_1_a_bits_source;
  wire [8:0] dmiXbar_io_out_1_a_bits_address;
  wire [3:0] dmiXbar_io_out_1_a_bits_mask;
  wire [31:0] dmiXbar_io_out_1_a_bits_data;
  wire  dmiXbar_io_out_1_d_ready;
  wire  dmiXbar_io_out_1_d_valid;
  wire [2:0] dmiXbar_io_out_1_d_bits_opcode;
  wire [1:0] dmiXbar_io_out_1_d_bits_param;
  wire [1:0] dmiXbar_io_out_1_d_bits_size;
  wire  dmiXbar_io_out_1_d_bits_source;
  wire  dmiXbar_io_out_1_d_bits_sink;
  wire [31:0] dmiXbar_io_out_1_d_bits_data;
  wire  dmiXbar_io_out_1_d_bits_error;
  wire  dmiXbar_io_out_0_a_ready;
  wire  dmiXbar_io_out_0_a_valid;
  wire [2:0] dmiXbar_io_out_0_a_bits_opcode;
  wire [1:0] dmiXbar_io_out_0_a_bits_size;
  wire  dmiXbar_io_out_0_a_bits_source;
  wire [6:0] dmiXbar_io_out_0_a_bits_address;
  wire [3:0] dmiXbar_io_out_0_a_bits_mask;
  wire [31:0] dmiXbar_io_out_0_a_bits_data;
  wire  dmiXbar_io_out_0_d_ready;
  wire  dmiXbar_io_out_0_d_valid;
  wire [2:0] dmiXbar_io_out_0_d_bits_opcode;
  wire [1:0] dmiXbar_io_out_0_d_bits_param;
  wire [1:0] dmiXbar_io_out_0_d_bits_size;
  wire  dmiXbar_io_out_0_d_bits_source;
  wire  dmiXbar_io_out_0_d_bits_sink;
  wire [31:0] dmiXbar_io_out_0_d_bits_data;
  wire  dmiXbar_io_out_0_d_bits_error;
  wire  dmOuter_clock;
  wire  dmOuter_reset;
  wire  dmOuter_io_debugInterrupts_0_0;
  wire  dmOuter_io_ctrl_ndreset;
  wire  dmOuter_io_ctrl_dmactive;
  wire  dmOuter_io_tlIn_0_a_ready;
  wire  dmOuter_io_tlIn_0_a_valid;
  wire [2:0] dmOuter_io_tlIn_0_a_bits_opcode;
  wire [1:0] dmOuter_io_tlIn_0_a_bits_size;
  wire  dmOuter_io_tlIn_0_a_bits_source;
  wire [6:0] dmOuter_io_tlIn_0_a_bits_address;
  wire [3:0] dmOuter_io_tlIn_0_a_bits_mask;
  wire [31:0] dmOuter_io_tlIn_0_a_bits_data;
  wire  dmOuter_io_tlIn_0_d_ready;
  wire  dmOuter_io_tlIn_0_d_valid;
  wire [2:0] dmOuter_io_tlIn_0_d_bits_opcode;
  wire [1:0] dmOuter_io_tlIn_0_d_bits_param;
  wire [1:0] dmOuter_io_tlIn_0_d_bits_size;
  wire  dmOuter_io_tlIn_0_d_bits_source;
  wire  dmOuter_io_tlIn_0_d_bits_sink;
  wire [31:0] dmOuter_io_tlIn_0_d_bits_data;
  wire  dmOuter_io_tlIn_0_d_bits_error;
  wire  dmOuter_io_innerCtrl_valid;
  wire  dmOuter_io_innerCtrl_bits_resumereq;
  wire [9:0] dmOuter_io_innerCtrl_bits_hartsel;
  wire  dmInner_TLAsyncCrossingSource_clock;
  wire  dmInner_TLAsyncCrossingSource_reset;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_a_ready;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_a_valid;
  wire [2:0] dmInner_TLAsyncCrossingSource_io_in_0_a_bits_opcode;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_in_0_a_bits_size;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_a_bits_source;
  wire [8:0] dmInner_TLAsyncCrossingSource_io_in_0_a_bits_address;
  wire [3:0] dmInner_TLAsyncCrossingSource_io_in_0_a_bits_mask;
  wire [31:0] dmInner_TLAsyncCrossingSource_io_in_0_a_bits_data;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_d_ready;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_d_valid;
  wire [2:0] dmInner_TLAsyncCrossingSource_io_in_0_d_bits_opcode;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_in_0_d_bits_param;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_in_0_d_bits_size;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_d_bits_source;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_d_bits_sink;
  wire [31:0] dmInner_TLAsyncCrossingSource_io_in_0_d_bits_data;
  wire  dmInner_TLAsyncCrossingSource_io_in_0_d_bits_error;
  wire [2:0] dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_opcode;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_size;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_source;
  wire [8:0] dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_address;
  wire [3:0] dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_mask;
  wire [31:0] dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_data;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_ridx;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_widx;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_ridx_valid;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_widx_valid;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_source_reset_n;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_a_sink_reset_n;
  wire [2:0] dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_opcode;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_param;
  wire [1:0] dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_size;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_source;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_sink;
  wire [31:0] dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_data;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_error;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_ridx;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_widx;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_ridx_valid;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_widx_valid;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_source_reset_n;
  wire  dmInner_TLAsyncCrossingSource_io_out_0_d_sink_reset_n;
  wire  AsyncQueueSource_clock;
  wire  AsyncQueueSource_reset;
  wire  AsyncQueueSource_io_enq_ready;
  wire  AsyncQueueSource_io_enq_valid;
  wire  AsyncQueueSource_io_enq_bits_resumereq;
  wire [9:0] AsyncQueueSource_io_enq_bits_hartsel;
  wire  AsyncQueueSource_io_ridx;
  wire  AsyncQueueSource_io_widx;
  wire  AsyncQueueSource_io_mem_0_resumereq;
  wire [9:0] AsyncQueueSource_io_mem_0_hartsel;
  wire  AsyncQueueSource_io_sink_reset_n;
  wire  AsyncQueueSource_io_ridx_valid;
  wire  AsyncQueueSource_io_widx_valid;
  wire  _T_86_mem_0_resumereq;
  wire [9:0] _T_86_mem_0_hartsel;
  wire  _T_86_widx;
  wire  _T_86_widx_valid;
  wire  _T_92;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_DMI_TO_TL_DMI2TL dmi2tl (
    .io_dmi_req_ready(dmi2tl_io_dmi_req_ready),
    .io_dmi_req_valid(dmi2tl_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmi2tl_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmi2tl_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmi2tl_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmi2tl_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmi2tl_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmi2tl_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmi2tl_io_dmi_resp_bits_resp),
    .io_out_0_a_ready(dmi2tl_io_out_0_a_ready),
    .io_out_0_a_valid(dmi2tl_io_out_0_a_valid),
    .io_out_0_a_bits_opcode(dmi2tl_io_out_0_a_bits_opcode),
    .io_out_0_a_bits_size(dmi2tl_io_out_0_a_bits_size),
    .io_out_0_a_bits_source(dmi2tl_io_out_0_a_bits_source),
    .io_out_0_a_bits_address(dmi2tl_io_out_0_a_bits_address),
    .io_out_0_a_bits_mask(dmi2tl_io_out_0_a_bits_mask),
    .io_out_0_a_bits_data(dmi2tl_io_out_0_a_bits_data),
    .io_out_0_d_ready(dmi2tl_io_out_0_d_ready),
    .io_out_0_d_valid(dmi2tl_io_out_0_d_valid),
    .io_out_0_d_bits_data(dmi2tl_io_out_0_d_bits_data),
    .io_out_0_d_bits_error(dmi2tl_io_out_0_d_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_XBAR_DMI_XBAR dmiXbar (
    .clock(dmiXbar_clock),
    .reset(dmiXbar_reset),
    .io_in_0_a_ready(dmiXbar_io_in_0_a_ready),
    .io_in_0_a_valid(dmiXbar_io_in_0_a_valid),
    .io_in_0_a_bits_opcode(dmiXbar_io_in_0_a_bits_opcode),
    .io_in_0_a_bits_size(dmiXbar_io_in_0_a_bits_size),
    .io_in_0_a_bits_source(dmiXbar_io_in_0_a_bits_source),
    .io_in_0_a_bits_address(dmiXbar_io_in_0_a_bits_address),
    .io_in_0_a_bits_mask(dmiXbar_io_in_0_a_bits_mask),
    .io_in_0_a_bits_data(dmiXbar_io_in_0_a_bits_data),
    .io_in_0_d_ready(dmiXbar_io_in_0_d_ready),
    .io_in_0_d_valid(dmiXbar_io_in_0_d_valid),
    .io_in_0_d_bits_data(dmiXbar_io_in_0_d_bits_data),
    .io_in_0_d_bits_error(dmiXbar_io_in_0_d_bits_error),
    .io_out_1_a_ready(dmiXbar_io_out_1_a_ready),
    .io_out_1_a_valid(dmiXbar_io_out_1_a_valid),
    .io_out_1_a_bits_opcode(dmiXbar_io_out_1_a_bits_opcode),
    .io_out_1_a_bits_size(dmiXbar_io_out_1_a_bits_size),
    .io_out_1_a_bits_source(dmiXbar_io_out_1_a_bits_source),
    .io_out_1_a_bits_address(dmiXbar_io_out_1_a_bits_address),
    .io_out_1_a_bits_mask(dmiXbar_io_out_1_a_bits_mask),
    .io_out_1_a_bits_data(dmiXbar_io_out_1_a_bits_data),
    .io_out_1_d_ready(dmiXbar_io_out_1_d_ready),
    .io_out_1_d_valid(dmiXbar_io_out_1_d_valid),
    .io_out_1_d_bits_opcode(dmiXbar_io_out_1_d_bits_opcode),
    .io_out_1_d_bits_param(dmiXbar_io_out_1_d_bits_param),
    .io_out_1_d_bits_size(dmiXbar_io_out_1_d_bits_size),
    .io_out_1_d_bits_source(dmiXbar_io_out_1_d_bits_source),
    .io_out_1_d_bits_sink(dmiXbar_io_out_1_d_bits_sink),
    .io_out_1_d_bits_data(dmiXbar_io_out_1_d_bits_data),
    .io_out_1_d_bits_error(dmiXbar_io_out_1_d_bits_error),
    .io_out_0_a_ready(dmiXbar_io_out_0_a_ready),
    .io_out_0_a_valid(dmiXbar_io_out_0_a_valid),
    .io_out_0_a_bits_opcode(dmiXbar_io_out_0_a_bits_opcode),
    .io_out_0_a_bits_size(dmiXbar_io_out_0_a_bits_size),
    .io_out_0_a_bits_source(dmiXbar_io_out_0_a_bits_source),
    .io_out_0_a_bits_address(dmiXbar_io_out_0_a_bits_address),
    .io_out_0_a_bits_mask(dmiXbar_io_out_0_a_bits_mask),
    .io_out_0_a_bits_data(dmiXbar_io_out_0_a_bits_data),
    .io_out_0_d_ready(dmiXbar_io_out_0_d_ready),
    .io_out_0_d_valid(dmiXbar_io_out_0_d_valid),
    .io_out_0_d_bits_opcode(dmiXbar_io_out_0_d_bits_opcode),
    .io_out_0_d_bits_param(dmiXbar_io_out_0_d_bits_param),
    .io_out_0_d_bits_size(dmiXbar_io_out_0_d_bits_size),
    .io_out_0_d_bits_source(dmiXbar_io_out_0_d_bits_source),
    .io_out_0_d_bits_sink(dmiXbar_io_out_0_d_bits_sink),
    .io_out_0_d_bits_data(dmiXbar_io_out_0_d_bits_data),
    .io_out_0_d_bits_error(dmiXbar_io_out_0_d_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_OUTER_DM_OUTER dmOuter (
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .io_debugInterrupts_0_0(dmOuter_io_debugInterrupts_0_0),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_tlIn_0_a_ready(dmOuter_io_tlIn_0_a_ready),
    .io_tlIn_0_a_valid(dmOuter_io_tlIn_0_a_valid),
    .io_tlIn_0_a_bits_opcode(dmOuter_io_tlIn_0_a_bits_opcode),
    .io_tlIn_0_a_bits_size(dmOuter_io_tlIn_0_a_bits_size),
    .io_tlIn_0_a_bits_source(dmOuter_io_tlIn_0_a_bits_source),
    .io_tlIn_0_a_bits_address(dmOuter_io_tlIn_0_a_bits_address),
    .io_tlIn_0_a_bits_mask(dmOuter_io_tlIn_0_a_bits_mask),
    .io_tlIn_0_a_bits_data(dmOuter_io_tlIn_0_a_bits_data),
    .io_tlIn_0_d_ready(dmOuter_io_tlIn_0_d_ready),
    .io_tlIn_0_d_valid(dmOuter_io_tlIn_0_d_valid),
    .io_tlIn_0_d_bits_opcode(dmOuter_io_tlIn_0_d_bits_opcode),
    .io_tlIn_0_d_bits_param(dmOuter_io_tlIn_0_d_bits_param),
    .io_tlIn_0_d_bits_size(dmOuter_io_tlIn_0_d_bits_size),
    .io_tlIn_0_d_bits_source(dmOuter_io_tlIn_0_d_bits_source),
    .io_tlIn_0_d_bits_sink(dmOuter_io_tlIn_0_d_bits_sink),
    .io_tlIn_0_d_bits_data(dmOuter_io_tlIn_0_d_bits_data),
    .io_tlIn_0_d_bits_error(dmOuter_io_tlIn_0_d_bits_error),
    .io_innerCtrl_valid(dmOuter_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmOuter_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmOuter_io_innerCtrl_bits_hartsel)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_ASYNC_CROSSING_SOURCE_DM_INNER dmInner_TLAsyncCrossingSource (
    .clock(dmInner_TLAsyncCrossingSource_clock),
    .reset(dmInner_TLAsyncCrossingSource_reset),
    .io_in_0_a_ready(dmInner_TLAsyncCrossingSource_io_in_0_a_ready),
    .io_in_0_a_valid(dmInner_TLAsyncCrossingSource_io_in_0_a_valid),
    .io_in_0_a_bits_opcode(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_opcode),
    .io_in_0_a_bits_size(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_size),
    .io_in_0_a_bits_source(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_source),
    .io_in_0_a_bits_address(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_address),
    .io_in_0_a_bits_mask(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_mask),
    .io_in_0_a_bits_data(dmInner_TLAsyncCrossingSource_io_in_0_a_bits_data),
    .io_in_0_d_ready(dmInner_TLAsyncCrossingSource_io_in_0_d_ready),
    .io_in_0_d_valid(dmInner_TLAsyncCrossingSource_io_in_0_d_valid),
    .io_in_0_d_bits_opcode(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_opcode),
    .io_in_0_d_bits_param(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_param),
    .io_in_0_d_bits_size(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_size),
    .io_in_0_d_bits_source(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_source),
    .io_in_0_d_bits_sink(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_sink),
    .io_in_0_d_bits_data(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_data),
    .io_in_0_d_bits_error(dmInner_TLAsyncCrossingSource_io_in_0_d_bits_error),
    .io_out_0_a_mem_0_opcode(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_opcode),
    .io_out_0_a_mem_0_size(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_size),
    .io_out_0_a_mem_0_source(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_source),
    .io_out_0_a_mem_0_address(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_address),
    .io_out_0_a_mem_0_mask(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_mask),
    .io_out_0_a_mem_0_data(dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_data),
    .io_out_0_a_ridx(dmInner_TLAsyncCrossingSource_io_out_0_a_ridx),
    .io_out_0_a_widx(dmInner_TLAsyncCrossingSource_io_out_0_a_widx),
    .io_out_0_a_ridx_valid(dmInner_TLAsyncCrossingSource_io_out_0_a_ridx_valid),
    .io_out_0_a_widx_valid(dmInner_TLAsyncCrossingSource_io_out_0_a_widx_valid),
    .io_out_0_a_source_reset_n(dmInner_TLAsyncCrossingSource_io_out_0_a_source_reset_n),
    .io_out_0_a_sink_reset_n(dmInner_TLAsyncCrossingSource_io_out_0_a_sink_reset_n),
    .io_out_0_d_mem_0_opcode(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_opcode),
    .io_out_0_d_mem_0_param(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_param),
    .io_out_0_d_mem_0_size(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_size),
    .io_out_0_d_mem_0_source(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_source),
    .io_out_0_d_mem_0_sink(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_sink),
    .io_out_0_d_mem_0_data(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_data),
    .io_out_0_d_mem_0_error(dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_error),
    .io_out_0_d_ridx(dmInner_TLAsyncCrossingSource_io_out_0_d_ridx),
    .io_out_0_d_widx(dmInner_TLAsyncCrossingSource_io_out_0_d_widx),
    .io_out_0_d_ridx_valid(dmInner_TLAsyncCrossingSource_io_out_0_d_ridx_valid),
    .io_out_0_d_widx_valid(dmInner_TLAsyncCrossingSource_io_out_0_d_widx_valid),
    .io_out_0_d_source_reset_n(dmInner_TLAsyncCrossingSource_io_out_0_d_source_reset_n),
    .io_out_0_d_sink_reset_n(dmInner_TLAsyncCrossingSource_io_out_0_d_sink_reset_n)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SOURCE_1 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_QUEUE_SOURCE (
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_resumereq(AsyncQueueSource_io_enq_bits_resumereq),
    .io_enq_bits_hartsel(AsyncQueueSource_io_enq_bits_hartsel),
    .io_ridx(AsyncQueueSource_io_ridx),
    .io_widx(AsyncQueueSource_io_widx),
    .io_mem_0_resumereq(AsyncQueueSource_io_mem_0_resumereq),
    .io_mem_0_hartsel(AsyncQueueSource_io_mem_0_hartsel),
    .io_sink_reset_n(AsyncQueueSource_io_sink_reset_n),
    .io_ridx_valid(AsyncQueueSource_io_ridx_valid),
    .io_widx_valid(AsyncQueueSource_io_widx_valid)
  );
  assign io_debugInterrupts_0_0 = dmOuter_io_debugInterrupts_0_0;
  assign io_dmiInner_0_a_mem_0_opcode = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_opcode;
  assign io_dmiInner_0_a_mem_0_size = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_size;
  assign io_dmiInner_0_a_mem_0_source = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_source;
  assign io_dmiInner_0_a_mem_0_address = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_address;
  assign io_dmiInner_0_a_mem_0_mask = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_mask;
  assign io_dmiInner_0_a_mem_0_data = dmInner_TLAsyncCrossingSource_io_out_0_a_mem_0_data;
  assign io_dmiInner_0_a_widx = dmInner_TLAsyncCrossingSource_io_out_0_a_widx;
  assign io_dmiInner_0_a_widx_valid = dmInner_TLAsyncCrossingSource_io_out_0_a_widx_valid;
  assign io_dmiInner_0_a_source_reset_n = dmInner_TLAsyncCrossingSource_io_out_0_a_source_reset_n;
  assign io_dmiInner_0_d_ridx = dmInner_TLAsyncCrossingSource_io_out_0_d_ridx;
  assign io_dmiInner_0_d_ridx_valid = dmInner_TLAsyncCrossingSource_io_out_0_d_ridx_valid;
  assign io_dmiInner_0_d_sink_reset_n = dmInner_TLAsyncCrossingSource_io_out_0_d_sink_reset_n;
  assign io_dmi_req_ready = dmi2tl_io_dmi_req_ready;
  assign io_dmi_resp_valid = dmi2tl_io_dmi_resp_valid;
  assign io_dmi_resp_bits_data = dmi2tl_io_dmi_resp_bits_data;
  assign io_dmi_resp_bits_resp = dmi2tl_io_dmi_resp_bits_resp;
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset;
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive;
  assign io_innerCtrl_mem_0_resumereq = _T_86_mem_0_resumereq;
  assign io_innerCtrl_mem_0_hartsel = _T_86_mem_0_hartsel;
  assign io_innerCtrl_widx = _T_86_widx;
  assign io_innerCtrl_widx_valid = _T_86_widx_valid;
  assign io_innerCtrl_source_reset_n = _T_92;
  assign dmi2tl_io_dmi_req_valid = io_dmi_req_valid;
  assign dmi2tl_io_dmi_req_bits_addr = io_dmi_req_bits_addr;
  assign dmi2tl_io_dmi_req_bits_data = io_dmi_req_bits_data;
  assign dmi2tl_io_dmi_req_bits_op = io_dmi_req_bits_op;
  assign dmi2tl_io_dmi_resp_ready = io_dmi_resp_ready;
  assign dmi2tl_io_out_0_a_ready = dmiXbar_io_in_0_a_ready;
  assign dmi2tl_io_out_0_d_valid = dmiXbar_io_in_0_d_valid;
  assign dmi2tl_io_out_0_d_bits_data = dmiXbar_io_in_0_d_bits_data;
  assign dmi2tl_io_out_0_d_bits_error = dmiXbar_io_in_0_d_bits_error;
  assign dmiXbar_clock = clock;
  assign dmiXbar_reset = reset;
  assign dmiXbar_io_in_0_a_valid = dmi2tl_io_out_0_a_valid;
  assign dmiXbar_io_in_0_a_bits_opcode = dmi2tl_io_out_0_a_bits_opcode;
  assign dmiXbar_io_in_0_a_bits_size = dmi2tl_io_out_0_a_bits_size;
  assign dmiXbar_io_in_0_a_bits_source = dmi2tl_io_out_0_a_bits_source;
  assign dmiXbar_io_in_0_a_bits_address = dmi2tl_io_out_0_a_bits_address;
  assign dmiXbar_io_in_0_a_bits_mask = dmi2tl_io_out_0_a_bits_mask;
  assign dmiXbar_io_in_0_a_bits_data = dmi2tl_io_out_0_a_bits_data;
  assign dmiXbar_io_in_0_d_ready = dmi2tl_io_out_0_d_ready;
  assign dmiXbar_io_out_1_a_ready = dmInner_TLAsyncCrossingSource_io_in_0_a_ready;
  assign dmiXbar_io_out_1_d_valid = dmInner_TLAsyncCrossingSource_io_in_0_d_valid;
  assign dmiXbar_io_out_1_d_bits_opcode = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_opcode;
  assign dmiXbar_io_out_1_d_bits_param = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_param;
  assign dmiXbar_io_out_1_d_bits_size = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_size;
  assign dmiXbar_io_out_1_d_bits_source = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_source;
  assign dmiXbar_io_out_1_d_bits_sink = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_sink;
  assign dmiXbar_io_out_1_d_bits_data = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_data;
  assign dmiXbar_io_out_1_d_bits_error = dmInner_TLAsyncCrossingSource_io_in_0_d_bits_error;
  assign dmiXbar_io_out_0_a_ready = dmOuter_io_tlIn_0_a_ready;
  assign dmiXbar_io_out_0_d_valid = dmOuter_io_tlIn_0_d_valid;
  assign dmiXbar_io_out_0_d_bits_opcode = dmOuter_io_tlIn_0_d_bits_opcode;
  assign dmiXbar_io_out_0_d_bits_param = dmOuter_io_tlIn_0_d_bits_param;
  assign dmiXbar_io_out_0_d_bits_size = dmOuter_io_tlIn_0_d_bits_size;
  assign dmiXbar_io_out_0_d_bits_source = dmOuter_io_tlIn_0_d_bits_source;
  assign dmiXbar_io_out_0_d_bits_sink = dmOuter_io_tlIn_0_d_bits_sink;
  assign dmiXbar_io_out_0_d_bits_data = dmOuter_io_tlIn_0_d_bits_data;
  assign dmiXbar_io_out_0_d_bits_error = dmOuter_io_tlIn_0_d_bits_error;
  assign dmOuter_clock = clock;
  assign dmOuter_reset = reset;
  assign dmOuter_io_tlIn_0_a_valid = dmiXbar_io_out_0_a_valid;
  assign dmOuter_io_tlIn_0_a_bits_opcode = dmiXbar_io_out_0_a_bits_opcode;
  assign dmOuter_io_tlIn_0_a_bits_size = dmiXbar_io_out_0_a_bits_size;
  assign dmOuter_io_tlIn_0_a_bits_source = dmiXbar_io_out_0_a_bits_source;
  assign dmOuter_io_tlIn_0_a_bits_address = dmiXbar_io_out_0_a_bits_address;
  assign dmOuter_io_tlIn_0_a_bits_mask = dmiXbar_io_out_0_a_bits_mask;
  assign dmOuter_io_tlIn_0_a_bits_data = dmiXbar_io_out_0_a_bits_data;
  assign dmOuter_io_tlIn_0_d_ready = dmiXbar_io_out_0_d_ready;
  assign dmInner_TLAsyncCrossingSource_clock = clock;
  assign dmInner_TLAsyncCrossingSource_reset = reset;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_valid = dmiXbar_io_out_1_a_valid;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_opcode = dmiXbar_io_out_1_a_bits_opcode;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_size = dmiXbar_io_out_1_a_bits_size;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_source = dmiXbar_io_out_1_a_bits_source;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_address = dmiXbar_io_out_1_a_bits_address;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_mask = dmiXbar_io_out_1_a_bits_mask;
  assign dmInner_TLAsyncCrossingSource_io_in_0_a_bits_data = dmiXbar_io_out_1_a_bits_data;
  assign dmInner_TLAsyncCrossingSource_io_in_0_d_ready = dmiXbar_io_out_1_d_ready;
  assign dmInner_TLAsyncCrossingSource_io_out_0_a_ridx = io_dmiInner_0_a_ridx;
  assign dmInner_TLAsyncCrossingSource_io_out_0_a_ridx_valid = io_dmiInner_0_a_ridx_valid;
  assign dmInner_TLAsyncCrossingSource_io_out_0_a_sink_reset_n = io_dmiInner_0_a_sink_reset_n;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_opcode = io_dmiInner_0_d_mem_0_opcode;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_param = io_dmiInner_0_d_mem_0_param;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_size = io_dmiInner_0_d_mem_0_size;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_source = io_dmiInner_0_d_mem_0_source;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_sink = io_dmiInner_0_d_mem_0_sink;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_data = io_dmiInner_0_d_mem_0_data;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_mem_0_error = io_dmiInner_0_d_mem_0_error;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_widx = io_dmiInner_0_d_widx;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_widx_valid = io_dmiInner_0_d_widx_valid;
  assign dmInner_TLAsyncCrossingSource_io_out_0_d_source_reset_n = io_dmiInner_0_d_source_reset_n;
  assign AsyncQueueSource_clock = clock;
  assign AsyncQueueSource_reset = reset;
  assign AsyncQueueSource_io_enq_valid = dmOuter_io_innerCtrl_valid;
  assign AsyncQueueSource_io_enq_bits_resumereq = dmOuter_io_innerCtrl_bits_resumereq;
  assign AsyncQueueSource_io_enq_bits_hartsel = dmOuter_io_innerCtrl_bits_hartsel;
  assign AsyncQueueSource_io_ridx = io_innerCtrl_ridx;
  assign AsyncQueueSource_io_sink_reset_n = io_innerCtrl_sink_reset_n;
  assign AsyncQueueSource_io_ridx_valid = io_innerCtrl_ridx_valid;
  assign _T_86_mem_0_resumereq = AsyncQueueSource_io_mem_0_resumereq;
  assign _T_86_mem_0_hartsel = AsyncQueueSource_io_mem_0_hartsel;
  assign _T_86_widx = AsyncQueueSource_io_widx;
  assign _T_86_widx_valid = AsyncQueueSource_io_widx_valid;
  assign _T_92 = AsyncQueueSource_reset == 1'h0;
endmodule
