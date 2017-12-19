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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_DEBUG(
  input         clock,
  input         reset,
  output        io_debugInterrupts_0_0,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [1:0]  io_in_0_a_bits_size,
  input  [6:0]  io_in_0_a_bits_source,
  input  [11:0] io_in_0_a_bits_address,
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
  output        io_in_0_d_bits_error,
  input         io_ctrl_debugUnavail_0,
  output        io_ctrl_ndreset,
  output        io_dmi_dmi_req_ready,
  input         io_dmi_dmi_req_valid,
  input  [6:0]  io_dmi_dmi_req_bits_addr,
  input  [31:0] io_dmi_dmi_req_bits_data,
  input  [1:0]  io_dmi_dmi_req_bits_op,
  input         io_dmi_dmi_resp_ready,
  output        io_dmi_dmi_resp_valid,
  output [31:0] io_dmi_dmi_resp_bits_data,
  output [1:0]  io_dmi_dmi_resp_bits_resp,
  input         io_dmi_dmiClock,
  input         io_dmi_dmiReset
);
  wire  dmOuter_clock;
  wire  dmOuter_reset;
  wire  dmOuter_io_debugInterrupts_0_0;
  wire [2:0] dmOuter_io_dmiInner_0_a_mem_0_opcode;
  wire [1:0] dmOuter_io_dmiInner_0_a_mem_0_size;
  wire  dmOuter_io_dmiInner_0_a_mem_0_source;
  wire [8:0] dmOuter_io_dmiInner_0_a_mem_0_address;
  wire [3:0] dmOuter_io_dmiInner_0_a_mem_0_mask;
  wire [31:0] dmOuter_io_dmiInner_0_a_mem_0_data;
  wire  dmOuter_io_dmiInner_0_a_ridx;
  wire  dmOuter_io_dmiInner_0_a_widx;
  wire  dmOuter_io_dmiInner_0_a_ridx_valid;
  wire  dmOuter_io_dmiInner_0_a_widx_valid;
  wire  dmOuter_io_dmiInner_0_a_source_reset_n;
  wire  dmOuter_io_dmiInner_0_a_sink_reset_n;
  wire [2:0] dmOuter_io_dmiInner_0_d_mem_0_opcode;
  wire [1:0] dmOuter_io_dmiInner_0_d_mem_0_param;
  wire [1:0] dmOuter_io_dmiInner_0_d_mem_0_size;
  wire  dmOuter_io_dmiInner_0_d_mem_0_source;
  wire  dmOuter_io_dmiInner_0_d_mem_0_sink;
  wire [31:0] dmOuter_io_dmiInner_0_d_mem_0_data;
  wire  dmOuter_io_dmiInner_0_d_mem_0_error;
  wire  dmOuter_io_dmiInner_0_d_ridx;
  wire  dmOuter_io_dmiInner_0_d_widx;
  wire  dmOuter_io_dmiInner_0_d_ridx_valid;
  wire  dmOuter_io_dmiInner_0_d_widx_valid;
  wire  dmOuter_io_dmiInner_0_d_source_reset_n;
  wire  dmOuter_io_dmiInner_0_d_sink_reset_n;
  wire  dmOuter_io_dmi_req_ready;
  wire  dmOuter_io_dmi_req_valid;
  wire [6:0] dmOuter_io_dmi_req_bits_addr;
  wire [31:0] dmOuter_io_dmi_req_bits_data;
  wire [1:0] dmOuter_io_dmi_req_bits_op;
  wire  dmOuter_io_dmi_resp_ready;
  wire  dmOuter_io_dmi_resp_valid;
  wire [31:0] dmOuter_io_dmi_resp_bits_data;
  wire [1:0] dmOuter_io_dmi_resp_bits_resp;
  wire  dmOuter_io_ctrl_ndreset;
  wire  dmOuter_io_ctrl_dmactive;
  wire  dmOuter_io_innerCtrl_mem_0_resumereq;
  wire [9:0] dmOuter_io_innerCtrl_mem_0_hartsel;
  wire  dmOuter_io_innerCtrl_ridx;
  wire  dmOuter_io_innerCtrl_widx;
  wire  dmOuter_io_innerCtrl_ridx_valid;
  wire  dmOuter_io_innerCtrl_widx_valid;
  wire  dmOuter_io_innerCtrl_source_reset_n;
  wire  dmOuter_io_innerCtrl_sink_reset_n;
  wire  dmInner_clock;
  wire  dmInner_reset;
  wire [2:0] dmInner_io_dmi_in_0_a_mem_0_opcode;
  wire [1:0] dmInner_io_dmi_in_0_a_mem_0_size;
  wire  dmInner_io_dmi_in_0_a_mem_0_source;
  wire [8:0] dmInner_io_dmi_in_0_a_mem_0_address;
  wire [3:0] dmInner_io_dmi_in_0_a_mem_0_mask;
  wire [31:0] dmInner_io_dmi_in_0_a_mem_0_data;
  wire  dmInner_io_dmi_in_0_a_ridx;
  wire  dmInner_io_dmi_in_0_a_widx;
  wire  dmInner_io_dmi_in_0_a_ridx_valid;
  wire  dmInner_io_dmi_in_0_a_widx_valid;
  wire  dmInner_io_dmi_in_0_a_source_reset_n;
  wire  dmInner_io_dmi_in_0_a_sink_reset_n;
  wire [2:0] dmInner_io_dmi_in_0_d_mem_0_opcode;
  wire [1:0] dmInner_io_dmi_in_0_d_mem_0_param;
  wire [1:0] dmInner_io_dmi_in_0_d_mem_0_size;
  wire  dmInner_io_dmi_in_0_d_mem_0_source;
  wire  dmInner_io_dmi_in_0_d_mem_0_sink;
  wire [31:0] dmInner_io_dmi_in_0_d_mem_0_data;
  wire  dmInner_io_dmi_in_0_d_mem_0_error;
  wire  dmInner_io_dmi_in_0_d_ridx;
  wire  dmInner_io_dmi_in_0_d_widx;
  wire  dmInner_io_dmi_in_0_d_ridx_valid;
  wire  dmInner_io_dmi_in_0_d_widx_valid;
  wire  dmInner_io_dmi_in_0_d_source_reset_n;
  wire  dmInner_io_dmi_in_0_d_sink_reset_n;
  wire  dmInner_io_tl_in_0_a_ready;
  wire  dmInner_io_tl_in_0_a_valid;
  wire [2:0] dmInner_io_tl_in_0_a_bits_opcode;
  wire [1:0] dmInner_io_tl_in_0_a_bits_size;
  wire [6:0] dmInner_io_tl_in_0_a_bits_source;
  wire [11:0] dmInner_io_tl_in_0_a_bits_address;
  wire [3:0] dmInner_io_tl_in_0_a_bits_mask;
  wire [31:0] dmInner_io_tl_in_0_a_bits_data;
  wire  dmInner_io_tl_in_0_d_ready;
  wire  dmInner_io_tl_in_0_d_valid;
  wire [2:0] dmInner_io_tl_in_0_d_bits_opcode;
  wire [1:0] dmInner_io_tl_in_0_d_bits_param;
  wire [1:0] dmInner_io_tl_in_0_d_bits_size;
  wire [6:0] dmInner_io_tl_in_0_d_bits_source;
  wire  dmInner_io_tl_in_0_d_bits_sink;
  wire [31:0] dmInner_io_tl_in_0_d_bits_data;
  wire  dmInner_io_tl_in_0_d_bits_error;
  wire  dmInner_io_dmactive;
  wire  dmInner_io_innerCtrl_mem_0_resumereq;
  wire [9:0] dmInner_io_innerCtrl_mem_0_hartsel;
  wire  dmInner_io_innerCtrl_ridx;
  wire  dmInner_io_innerCtrl_widx;
  wire  dmInner_io_innerCtrl_ridx_valid;
  wire  dmInner_io_innerCtrl_widx_valid;
  wire  dmInner_io_innerCtrl_source_reset_n;
  wire  dmInner_io_innerCtrl_sink_reset_n;
  wire  dmInner_io_debugUnavail_0;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_OUTER_ASYNC_DM_OUTER dmOuter (
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .io_debugInterrupts_0_0(dmOuter_io_debugInterrupts_0_0),
    .io_dmiInner_0_a_mem_0_opcode(dmOuter_io_dmiInner_0_a_mem_0_opcode),
    .io_dmiInner_0_a_mem_0_size(dmOuter_io_dmiInner_0_a_mem_0_size),
    .io_dmiInner_0_a_mem_0_source(dmOuter_io_dmiInner_0_a_mem_0_source),
    .io_dmiInner_0_a_mem_0_address(dmOuter_io_dmiInner_0_a_mem_0_address),
    .io_dmiInner_0_a_mem_0_mask(dmOuter_io_dmiInner_0_a_mem_0_mask),
    .io_dmiInner_0_a_mem_0_data(dmOuter_io_dmiInner_0_a_mem_0_data),
    .io_dmiInner_0_a_ridx(dmOuter_io_dmiInner_0_a_ridx),
    .io_dmiInner_0_a_widx(dmOuter_io_dmiInner_0_a_widx),
    .io_dmiInner_0_a_ridx_valid(dmOuter_io_dmiInner_0_a_ridx_valid),
    .io_dmiInner_0_a_widx_valid(dmOuter_io_dmiInner_0_a_widx_valid),
    .io_dmiInner_0_a_source_reset_n(dmOuter_io_dmiInner_0_a_source_reset_n),
    .io_dmiInner_0_a_sink_reset_n(dmOuter_io_dmiInner_0_a_sink_reset_n),
    .io_dmiInner_0_d_mem_0_opcode(dmOuter_io_dmiInner_0_d_mem_0_opcode),
    .io_dmiInner_0_d_mem_0_param(dmOuter_io_dmiInner_0_d_mem_0_param),
    .io_dmiInner_0_d_mem_0_size(dmOuter_io_dmiInner_0_d_mem_0_size),
    .io_dmiInner_0_d_mem_0_source(dmOuter_io_dmiInner_0_d_mem_0_source),
    .io_dmiInner_0_d_mem_0_sink(dmOuter_io_dmiInner_0_d_mem_0_sink),
    .io_dmiInner_0_d_mem_0_data(dmOuter_io_dmiInner_0_d_mem_0_data),
    .io_dmiInner_0_d_mem_0_error(dmOuter_io_dmiInner_0_d_mem_0_error),
    .io_dmiInner_0_d_ridx(dmOuter_io_dmiInner_0_d_ridx),
    .io_dmiInner_0_d_widx(dmOuter_io_dmiInner_0_d_widx),
    .io_dmiInner_0_d_ridx_valid(dmOuter_io_dmiInner_0_d_ridx_valid),
    .io_dmiInner_0_d_widx_valid(dmOuter_io_dmiInner_0_d_widx_valid),
    .io_dmiInner_0_d_source_reset_n(dmOuter_io_dmiInner_0_d_source_reset_n),
    .io_dmiInner_0_d_sink_reset_n(dmOuter_io_dmiInner_0_d_sink_reset_n),
    .io_dmi_req_ready(dmOuter_io_dmi_req_ready),
    .io_dmi_req_valid(dmOuter_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmOuter_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmOuter_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmOuter_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmOuter_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmOuter_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmOuter_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmOuter_io_dmi_resp_bits_resp),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_innerCtrl_mem_0_resumereq(dmOuter_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_hartsel(dmOuter_io_innerCtrl_mem_0_hartsel),
    .io_innerCtrl_ridx(dmOuter_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmOuter_io_innerCtrl_widx),
    .io_innerCtrl_ridx_valid(dmOuter_io_innerCtrl_ridx_valid),
    .io_innerCtrl_widx_valid(dmOuter_io_innerCtrl_widx_valid),
    .io_innerCtrl_source_reset_n(dmOuter_io_innerCtrl_source_reset_n),
    .io_innerCtrl_sink_reset_n(dmOuter_io_innerCtrl_sink_reset_n)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_DEBUG_MODULE_INNER_ASYNC_DM_INNER dmInner (
    .clock(dmInner_clock),
    .reset(dmInner_reset),
    .io_dmi_in_0_a_mem_0_opcode(dmInner_io_dmi_in_0_a_mem_0_opcode),
    .io_dmi_in_0_a_mem_0_size(dmInner_io_dmi_in_0_a_mem_0_size),
    .io_dmi_in_0_a_mem_0_source(dmInner_io_dmi_in_0_a_mem_0_source),
    .io_dmi_in_0_a_mem_0_address(dmInner_io_dmi_in_0_a_mem_0_address),
    .io_dmi_in_0_a_mem_0_mask(dmInner_io_dmi_in_0_a_mem_0_mask),
    .io_dmi_in_0_a_mem_0_data(dmInner_io_dmi_in_0_a_mem_0_data),
    .io_dmi_in_0_a_ridx(dmInner_io_dmi_in_0_a_ridx),
    .io_dmi_in_0_a_widx(dmInner_io_dmi_in_0_a_widx),
    .io_dmi_in_0_a_ridx_valid(dmInner_io_dmi_in_0_a_ridx_valid),
    .io_dmi_in_0_a_widx_valid(dmInner_io_dmi_in_0_a_widx_valid),
    .io_dmi_in_0_a_source_reset_n(dmInner_io_dmi_in_0_a_source_reset_n),
    .io_dmi_in_0_a_sink_reset_n(dmInner_io_dmi_in_0_a_sink_reset_n),
    .io_dmi_in_0_d_mem_0_opcode(dmInner_io_dmi_in_0_d_mem_0_opcode),
    .io_dmi_in_0_d_mem_0_param(dmInner_io_dmi_in_0_d_mem_0_param),
    .io_dmi_in_0_d_mem_0_size(dmInner_io_dmi_in_0_d_mem_0_size),
    .io_dmi_in_0_d_mem_0_source(dmInner_io_dmi_in_0_d_mem_0_source),
    .io_dmi_in_0_d_mem_0_sink(dmInner_io_dmi_in_0_d_mem_0_sink),
    .io_dmi_in_0_d_mem_0_data(dmInner_io_dmi_in_0_d_mem_0_data),
    .io_dmi_in_0_d_mem_0_error(dmInner_io_dmi_in_0_d_mem_0_error),
    .io_dmi_in_0_d_ridx(dmInner_io_dmi_in_0_d_ridx),
    .io_dmi_in_0_d_widx(dmInner_io_dmi_in_0_d_widx),
    .io_dmi_in_0_d_ridx_valid(dmInner_io_dmi_in_0_d_ridx_valid),
    .io_dmi_in_0_d_widx_valid(dmInner_io_dmi_in_0_d_widx_valid),
    .io_dmi_in_0_d_source_reset_n(dmInner_io_dmi_in_0_d_source_reset_n),
    .io_dmi_in_0_d_sink_reset_n(dmInner_io_dmi_in_0_d_sink_reset_n),
    .io_tl_in_0_a_ready(dmInner_io_tl_in_0_a_ready),
    .io_tl_in_0_a_valid(dmInner_io_tl_in_0_a_valid),
    .io_tl_in_0_a_bits_opcode(dmInner_io_tl_in_0_a_bits_opcode),
    .io_tl_in_0_a_bits_size(dmInner_io_tl_in_0_a_bits_size),
    .io_tl_in_0_a_bits_source(dmInner_io_tl_in_0_a_bits_source),
    .io_tl_in_0_a_bits_address(dmInner_io_tl_in_0_a_bits_address),
    .io_tl_in_0_a_bits_mask(dmInner_io_tl_in_0_a_bits_mask),
    .io_tl_in_0_a_bits_data(dmInner_io_tl_in_0_a_bits_data),
    .io_tl_in_0_d_ready(dmInner_io_tl_in_0_d_ready),
    .io_tl_in_0_d_valid(dmInner_io_tl_in_0_d_valid),
    .io_tl_in_0_d_bits_opcode(dmInner_io_tl_in_0_d_bits_opcode),
    .io_tl_in_0_d_bits_param(dmInner_io_tl_in_0_d_bits_param),
    .io_tl_in_0_d_bits_size(dmInner_io_tl_in_0_d_bits_size),
    .io_tl_in_0_d_bits_source(dmInner_io_tl_in_0_d_bits_source),
    .io_tl_in_0_d_bits_sink(dmInner_io_tl_in_0_d_bits_sink),
    .io_tl_in_0_d_bits_data(dmInner_io_tl_in_0_d_bits_data),
    .io_tl_in_0_d_bits_error(dmInner_io_tl_in_0_d_bits_error),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_mem_0_resumereq(dmInner_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_hartsel(dmInner_io_innerCtrl_mem_0_hartsel),
    .io_innerCtrl_ridx(dmInner_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmInner_io_innerCtrl_widx),
    .io_innerCtrl_ridx_valid(dmInner_io_innerCtrl_ridx_valid),
    .io_innerCtrl_widx_valid(dmInner_io_innerCtrl_widx_valid),
    .io_innerCtrl_source_reset_n(dmInner_io_innerCtrl_source_reset_n),
    .io_innerCtrl_sink_reset_n(dmInner_io_innerCtrl_sink_reset_n),
    .io_debugUnavail_0(dmInner_io_debugUnavail_0)
  );
  assign io_debugInterrupts_0_0 = dmOuter_io_debugInterrupts_0_0;
  assign io_in_0_a_ready = dmInner_io_tl_in_0_a_ready;
  assign io_in_0_d_valid = dmInner_io_tl_in_0_d_valid;
  assign io_in_0_d_bits_opcode = dmInner_io_tl_in_0_d_bits_opcode;
  assign io_in_0_d_bits_param = dmInner_io_tl_in_0_d_bits_param;
  assign io_in_0_d_bits_size = dmInner_io_tl_in_0_d_bits_size;
  assign io_in_0_d_bits_source = dmInner_io_tl_in_0_d_bits_source;
  assign io_in_0_d_bits_sink = dmInner_io_tl_in_0_d_bits_sink;
  assign io_in_0_d_bits_data = dmInner_io_tl_in_0_d_bits_data;
  assign io_in_0_d_bits_error = dmInner_io_tl_in_0_d_bits_error;
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset;
  assign io_dmi_dmi_req_ready = dmOuter_io_dmi_req_ready;
  assign io_dmi_dmi_resp_valid = dmOuter_io_dmi_resp_valid;
  assign io_dmi_dmi_resp_bits_data = dmOuter_io_dmi_resp_bits_data;
  assign io_dmi_dmi_resp_bits_resp = dmOuter_io_dmi_resp_bits_resp;
  assign dmOuter_clock = io_dmi_dmiClock;
  assign dmOuter_reset = io_dmi_dmiReset;
  assign dmOuter_io_dmiInner_0_a_ridx = dmInner_io_dmi_in_0_a_ridx;
  assign dmOuter_io_dmiInner_0_a_ridx_valid = dmInner_io_dmi_in_0_a_ridx_valid;
  assign dmOuter_io_dmiInner_0_a_sink_reset_n = dmInner_io_dmi_in_0_a_sink_reset_n;
  assign dmOuter_io_dmiInner_0_d_mem_0_opcode = dmInner_io_dmi_in_0_d_mem_0_opcode;
  assign dmOuter_io_dmiInner_0_d_mem_0_param = dmInner_io_dmi_in_0_d_mem_0_param;
  assign dmOuter_io_dmiInner_0_d_mem_0_size = dmInner_io_dmi_in_0_d_mem_0_size;
  assign dmOuter_io_dmiInner_0_d_mem_0_source = dmInner_io_dmi_in_0_d_mem_0_source;
  assign dmOuter_io_dmiInner_0_d_mem_0_sink = dmInner_io_dmi_in_0_d_mem_0_sink;
  assign dmOuter_io_dmiInner_0_d_mem_0_data = dmInner_io_dmi_in_0_d_mem_0_data;
  assign dmOuter_io_dmiInner_0_d_mem_0_error = dmInner_io_dmi_in_0_d_mem_0_error;
  assign dmOuter_io_dmiInner_0_d_widx = dmInner_io_dmi_in_0_d_widx;
  assign dmOuter_io_dmiInner_0_d_widx_valid = dmInner_io_dmi_in_0_d_widx_valid;
  assign dmOuter_io_dmiInner_0_d_source_reset_n = dmInner_io_dmi_in_0_d_source_reset_n;
  assign dmOuter_io_dmi_req_valid = io_dmi_dmi_req_valid;
  assign dmOuter_io_dmi_req_bits_addr = io_dmi_dmi_req_bits_addr;
  assign dmOuter_io_dmi_req_bits_data = io_dmi_dmi_req_bits_data;
  assign dmOuter_io_dmi_req_bits_op = io_dmi_dmi_req_bits_op;
  assign dmOuter_io_dmi_resp_ready = io_dmi_dmi_resp_ready;
  assign dmOuter_io_innerCtrl_ridx = dmInner_io_innerCtrl_ridx;
  assign dmOuter_io_innerCtrl_ridx_valid = dmInner_io_innerCtrl_ridx_valid;
  assign dmOuter_io_innerCtrl_sink_reset_n = dmInner_io_innerCtrl_sink_reset_n;
  assign dmInner_clock = clock;
  assign dmInner_reset = reset;
  assign dmInner_io_dmi_in_0_a_mem_0_opcode = dmOuter_io_dmiInner_0_a_mem_0_opcode;
  assign dmInner_io_dmi_in_0_a_mem_0_size = dmOuter_io_dmiInner_0_a_mem_0_size;
  assign dmInner_io_dmi_in_0_a_mem_0_source = dmOuter_io_dmiInner_0_a_mem_0_source;
  assign dmInner_io_dmi_in_0_a_mem_0_address = dmOuter_io_dmiInner_0_a_mem_0_address;
  assign dmInner_io_dmi_in_0_a_mem_0_mask = dmOuter_io_dmiInner_0_a_mem_0_mask;
  assign dmInner_io_dmi_in_0_a_mem_0_data = dmOuter_io_dmiInner_0_a_mem_0_data;
  assign dmInner_io_dmi_in_0_a_widx = dmOuter_io_dmiInner_0_a_widx;
  assign dmInner_io_dmi_in_0_a_widx_valid = dmOuter_io_dmiInner_0_a_widx_valid;
  assign dmInner_io_dmi_in_0_a_source_reset_n = dmOuter_io_dmiInner_0_a_source_reset_n;
  assign dmInner_io_dmi_in_0_d_ridx = dmOuter_io_dmiInner_0_d_ridx;
  assign dmInner_io_dmi_in_0_d_ridx_valid = dmOuter_io_dmiInner_0_d_ridx_valid;
  assign dmInner_io_dmi_in_0_d_sink_reset_n = dmOuter_io_dmiInner_0_d_sink_reset_n;
  assign dmInner_io_tl_in_0_a_valid = io_in_0_a_valid;
  assign dmInner_io_tl_in_0_a_bits_opcode = io_in_0_a_bits_opcode;
  assign dmInner_io_tl_in_0_a_bits_size = io_in_0_a_bits_size;
  assign dmInner_io_tl_in_0_a_bits_source = io_in_0_a_bits_source;
  assign dmInner_io_tl_in_0_a_bits_address = io_in_0_a_bits_address;
  assign dmInner_io_tl_in_0_a_bits_mask = io_in_0_a_bits_mask;
  assign dmInner_io_tl_in_0_a_bits_data = io_in_0_a_bits_data;
  assign dmInner_io_tl_in_0_d_ready = io_in_0_d_ready;
  assign dmInner_io_dmactive = dmOuter_io_ctrl_dmactive;
  assign dmInner_io_innerCtrl_mem_0_resumereq = dmOuter_io_innerCtrl_mem_0_resumereq;
  assign dmInner_io_innerCtrl_mem_0_hartsel = dmOuter_io_innerCtrl_mem_0_hartsel;
  assign dmInner_io_innerCtrl_widx = dmOuter_io_innerCtrl_widx;
  assign dmInner_io_innerCtrl_widx_valid = dmOuter_io_innerCtrl_widx_valid;
  assign dmInner_io_innerCtrl_source_reset_n = dmOuter_io_innerCtrl_source_reset_n;
  assign dmInner_io_debugUnavail_0 = io_ctrl_debugUnavail_0;
endmodule
