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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_BUFFER_1(
  input         clock,
  input         reset,
  output        io_in_2_a_ready,
  input         io_in_2_a_valid,
  input  [2:0]  io_in_2_a_bits_opcode,
  input  [3:0]  io_in_2_a_bits_size,
  input  [1:0]  io_in_2_a_bits_source,
  input         io_in_2_b_ready,
  output        io_in_2_b_valid,
  output [2:0]  io_in_2_b_bits_opcode,
  output [1:0]  io_in_2_b_bits_param,
  output [3:0]  io_in_2_b_bits_size,
  output [1:0]  io_in_2_b_bits_source,
  output [13:0] io_in_2_b_bits_address,
  output [3:0]  io_in_2_b_bits_mask,
  output [31:0] io_in_2_b_bits_data,
  output        io_in_2_c_ready,
  input         io_in_2_c_valid,
  input  [2:0]  io_in_2_c_bits_opcode,
  input  [2:0]  io_in_2_c_bits_param,
  input  [3:0]  io_in_2_c_bits_size,
  input  [1:0]  io_in_2_c_bits_source,
  input         io_in_2_d_ready,
  output        io_in_2_d_valid,
  output [2:0]  io_in_2_d_bits_opcode,
  output [1:0]  io_in_2_d_bits_param,
  output [3:0]  io_in_2_d_bits_size,
  output [1:0]  io_in_2_d_bits_source,
  output [31:0] io_in_2_d_bits_data,
  output        io_in_2_d_bits_error,
  output        io_in_2_e_ready,
  input         io_in_2_e_valid,
  output        io_in_1_a_ready,
  input         io_in_1_a_valid,
  input  [2:0]  io_in_1_a_bits_opcode,
  input  [2:0]  io_in_1_a_bits_param,
  input  [2:0]  io_in_1_a_bits_size,
  input  [1:0]  io_in_1_a_bits_source,
  input  [30:0] io_in_1_a_bits_address,
  input  [3:0]  io_in_1_a_bits_mask,
  input  [31:0] io_in_1_a_bits_data,
  input         io_in_1_d_ready,
  output        io_in_1_d_valid,
  output [2:0]  io_in_1_d_bits_opcode,
  output [1:0]  io_in_1_d_bits_param,
  output [2:0]  io_in_1_d_bits_size,
  output [1:0]  io_in_1_d_bits_source,
  output        io_in_1_d_bits_sink,
  output [31:0] io_in_1_d_bits_data,
  output        io_in_1_d_bits_error,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_param,
  input  [2:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  input  [30:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [2:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  input         io_out_2_a_ready,
  output        io_out_2_a_valid,
  output [2:0]  io_out_2_a_bits_opcode,
  output [3:0]  io_out_2_a_bits_size,
  output [1:0]  io_out_2_a_bits_source,
  output        io_out_2_b_ready,
  input         io_out_2_b_valid,
  input  [2:0]  io_out_2_b_bits_opcode,
  input  [1:0]  io_out_2_b_bits_param,
  input  [3:0]  io_out_2_b_bits_size,
  input  [1:0]  io_out_2_b_bits_source,
  input  [13:0] io_out_2_b_bits_address,
  input  [3:0]  io_out_2_b_bits_mask,
  input  [31:0] io_out_2_b_bits_data,
  input         io_out_2_c_ready,
  output        io_out_2_c_valid,
  output [2:0]  io_out_2_c_bits_opcode,
  output [2:0]  io_out_2_c_bits_param,
  output [3:0]  io_out_2_c_bits_size,
  output [1:0]  io_out_2_c_bits_source,
  output        io_out_2_d_ready,
  input         io_out_2_d_valid,
  input  [2:0]  io_out_2_d_bits_opcode,
  input  [1:0]  io_out_2_d_bits_param,
  input  [3:0]  io_out_2_d_bits_size,
  input  [1:0]  io_out_2_d_bits_source,
  input  [31:0] io_out_2_d_bits_data,
  input         io_out_2_d_bits_error,
  input         io_out_2_e_ready,
  output        io_out_2_e_valid,
  input         io_out_1_a_ready,
  output        io_out_1_a_valid,
  output [2:0]  io_out_1_a_bits_opcode,
  output [2:0]  io_out_1_a_bits_size,
  output [1:0]  io_out_1_a_bits_source,
  output [30:0] io_out_1_a_bits_address,
  output [31:0] io_out_1_a_bits_data,
  output        io_out_1_d_ready,
  input         io_out_1_d_valid,
  input  [2:0]  io_out_1_d_bits_opcode,
  input  [1:0]  io_out_1_d_bits_param,
  input  [2:0]  io_out_1_d_bits_size,
  input  [1:0]  io_out_1_d_bits_source,
  input         io_out_1_d_bits_sink,
  input  [31:0] io_out_1_d_bits_data,
  input         io_out_1_d_bits_error,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_param,
  output [2:0]  io_out_0_a_bits_size,
  output [1:0]  io_out_0_a_bits_source,
  output [30:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [2:0]  io_out_0_d_bits_size,
  input  [1:0]  io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  wire  Queue_clock;
  wire  Queue_reset;
  wire  Queue_io_enq_ready;
  wire  Queue_io_enq_valid;
  wire [2:0] Queue_io_enq_bits_opcode;
  wire [2:0] Queue_io_enq_bits_param;
  wire [2:0] Queue_io_enq_bits_size;
  wire [1:0] Queue_io_enq_bits_source;
  wire [30:0] Queue_io_enq_bits_address;
  wire [3:0] Queue_io_enq_bits_mask;
  wire [31:0] Queue_io_enq_bits_data;
  wire  Queue_io_deq_ready;
  wire  Queue_io_deq_valid;
  wire [2:0] Queue_io_deq_bits_opcode;
  wire [2:0] Queue_io_deq_bits_param;
  wire [2:0] Queue_io_deq_bits_size;
  wire [1:0] Queue_io_deq_bits_source;
  wire [30:0] Queue_io_deq_bits_address;
  wire [3:0] Queue_io_deq_bits_mask;
  wire [31:0] Queue_io_deq_bits_data;
  wire  Queue_1_clock;
  wire  Queue_1_reset;
  wire  Queue_1_io_enq_ready;
  wire  Queue_1_io_enq_valid;
  wire [2:0] Queue_1_io_enq_bits_opcode;
  wire [1:0] Queue_1_io_enq_bits_param;
  wire [2:0] Queue_1_io_enq_bits_size;
  wire [1:0] Queue_1_io_enq_bits_source;
  wire  Queue_1_io_enq_bits_sink;
  wire [31:0] Queue_1_io_enq_bits_data;
  wire  Queue_1_io_enq_bits_error;
  wire  Queue_1_io_deq_ready;
  wire  Queue_1_io_deq_valid;
  wire [2:0] Queue_1_io_deq_bits_opcode;
  wire [1:0] Queue_1_io_deq_bits_param;
  wire [2:0] Queue_1_io_deq_bits_size;
  wire [1:0] Queue_1_io_deq_bits_source;
  wire  Queue_1_io_deq_bits_sink;
  wire [31:0] Queue_1_io_deq_bits_data;
  wire  Queue_1_io_deq_bits_error;
  wire  Queue_2_clock;
  wire  Queue_2_reset;
  wire  Queue_2_io_enq_ready;
  wire  Queue_2_io_enq_valid;
  wire [2:0] Queue_2_io_enq_bits_opcode;
  wire [2:0] Queue_2_io_enq_bits_param;
  wire [2:0] Queue_2_io_enq_bits_size;
  wire [1:0] Queue_2_io_enq_bits_source;
  wire [30:0] Queue_2_io_enq_bits_address;
  wire [3:0] Queue_2_io_enq_bits_mask;
  wire [31:0] Queue_2_io_enq_bits_data;
  wire  Queue_2_io_deq_ready;
  wire  Queue_2_io_deq_valid;
  wire [2:0] Queue_2_io_deq_bits_opcode;
  wire [2:0] Queue_2_io_deq_bits_param;
  wire [2:0] Queue_2_io_deq_bits_size;
  wire [1:0] Queue_2_io_deq_bits_source;
  wire [30:0] Queue_2_io_deq_bits_address;
  wire [3:0] Queue_2_io_deq_bits_mask;
  wire [31:0] Queue_2_io_deq_bits_data;
  wire  Queue_3_clock;
  wire  Queue_3_reset;
  wire  Queue_3_io_enq_ready;
  wire  Queue_3_io_enq_valid;
  wire [2:0] Queue_3_io_enq_bits_opcode;
  wire [1:0] Queue_3_io_enq_bits_param;
  wire [2:0] Queue_3_io_enq_bits_size;
  wire [1:0] Queue_3_io_enq_bits_source;
  wire  Queue_3_io_enq_bits_sink;
  wire [31:0] Queue_3_io_enq_bits_data;
  wire  Queue_3_io_enq_bits_error;
  wire  Queue_3_io_deq_ready;
  wire  Queue_3_io_deq_valid;
  wire [2:0] Queue_3_io_deq_bits_opcode;
  wire [1:0] Queue_3_io_deq_bits_param;
  wire [2:0] Queue_3_io_deq_bits_size;
  wire [1:0] Queue_3_io_deq_bits_source;
  wire  Queue_3_io_deq_bits_sink;
  wire [31:0] Queue_3_io_deq_bits_data;
  wire  Queue_3_io_deq_bits_error;
  wire  Queue_4_clock;
  wire  Queue_4_reset;
  wire  Queue_4_io_enq_ready;
  wire  Queue_4_io_enq_valid;
  wire [2:0] Queue_4_io_enq_bits_opcode;
  wire [3:0] Queue_4_io_enq_bits_size;
  wire [1:0] Queue_4_io_enq_bits_source;
  wire  Queue_4_io_deq_ready;
  wire  Queue_4_io_deq_valid;
  wire [2:0] Queue_4_io_deq_bits_opcode;
  wire [3:0] Queue_4_io_deq_bits_size;
  wire [1:0] Queue_4_io_deq_bits_source;
  wire  Queue_5_clock;
  wire  Queue_5_reset;
  wire  Queue_5_io_enq_ready;
  wire  Queue_5_io_enq_valid;
  wire [2:0] Queue_5_io_enq_bits_opcode;
  wire [1:0] Queue_5_io_enq_bits_param;
  wire [3:0] Queue_5_io_enq_bits_size;
  wire [1:0] Queue_5_io_enq_bits_source;
  wire [31:0] Queue_5_io_enq_bits_data;
  wire  Queue_5_io_enq_bits_error;
  wire  Queue_5_io_deq_ready;
  wire  Queue_5_io_deq_valid;
  wire [2:0] Queue_5_io_deq_bits_opcode;
  wire [1:0] Queue_5_io_deq_bits_param;
  wire [3:0] Queue_5_io_deq_bits_size;
  wire [1:0] Queue_5_io_deq_bits_source;
  wire [31:0] Queue_5_io_deq_bits_data;
  wire  Queue_5_io_deq_bits_error;
  wire  Queue_6_clock;
  wire  Queue_6_reset;
  wire  Queue_6_io_enq_ready;
  wire  Queue_6_io_enq_valid;
  wire [2:0] Queue_6_io_enq_bits_opcode;
  wire [1:0] Queue_6_io_enq_bits_param;
  wire [3:0] Queue_6_io_enq_bits_size;
  wire [1:0] Queue_6_io_enq_bits_source;
  wire [13:0] Queue_6_io_enq_bits_address;
  wire [3:0] Queue_6_io_enq_bits_mask;
  wire [31:0] Queue_6_io_enq_bits_data;
  wire  Queue_6_io_deq_ready;
  wire  Queue_6_io_deq_valid;
  wire [2:0] Queue_6_io_deq_bits_opcode;
  wire [1:0] Queue_6_io_deq_bits_param;
  wire [3:0] Queue_6_io_deq_bits_size;
  wire [1:0] Queue_6_io_deq_bits_source;
  wire [13:0] Queue_6_io_deq_bits_address;
  wire [3:0] Queue_6_io_deq_bits_mask;
  wire [31:0] Queue_6_io_deq_bits_data;
  wire  Queue_7_clock;
  wire  Queue_7_reset;
  wire  Queue_7_io_enq_ready;
  wire  Queue_7_io_enq_valid;
  wire [2:0] Queue_7_io_enq_bits_opcode;
  wire [2:0] Queue_7_io_enq_bits_param;
  wire [3:0] Queue_7_io_enq_bits_size;
  wire [1:0] Queue_7_io_enq_bits_source;
  wire  Queue_7_io_deq_ready;
  wire  Queue_7_io_deq_valid;
  wire [2:0] Queue_7_io_deq_bits_opcode;
  wire [2:0] Queue_7_io_deq_bits_param;
  wire [3:0] Queue_7_io_deq_bits_size;
  wire [1:0] Queue_7_io_deq_bits_source;
  wire  Queue_8_clock;
  wire  Queue_8_reset;
  wire  Queue_8_io_enq_ready;
  wire  Queue_8_io_enq_valid;
  wire  Queue_8_io_deq_ready;
  wire  Queue_8_io_deq_valid;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE (
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_data(Queue_io_deq_bits_data)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_1 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_1 (
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_error(Queue_1_io_enq_bits_error),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_error(Queue_1_io_deq_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE Queue_2 (
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_opcode(Queue_2_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_2_io_enq_bits_param),
    .io_enq_bits_size(Queue_2_io_enq_bits_size),
    .io_enq_bits_source(Queue_2_io_enq_bits_source),
    .io_enq_bits_address(Queue_2_io_enq_bits_address),
    .io_enq_bits_mask(Queue_2_io_enq_bits_mask),
    .io_enq_bits_data(Queue_2_io_enq_bits_data),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_opcode(Queue_2_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_2_io_deq_bits_param),
    .io_deq_bits_size(Queue_2_io_deq_bits_size),
    .io_deq_bits_source(Queue_2_io_deq_bits_source),
    .io_deq_bits_address(Queue_2_io_deq_bits_address),
    .io_deq_bits_mask(Queue_2_io_deq_bits_mask),
    .io_deq_bits_data(Queue_2_io_deq_bits_data)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_1 Queue_3 (
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_opcode(Queue_3_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_3_io_enq_bits_param),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_source(Queue_3_io_enq_bits_source),
    .io_enq_bits_sink(Queue_3_io_enq_bits_sink),
    .io_enq_bits_data(Queue_3_io_enq_bits_data),
    .io_enq_bits_error(Queue_3_io_enq_bits_error),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_opcode(Queue_3_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_3_io_deq_bits_param),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_source(Queue_3_io_deq_bits_source),
    .io_deq_bits_sink(Queue_3_io_deq_bits_sink),
    .io_deq_bits_data(Queue_3_io_deq_bits_data),
    .io_deq_bits_error(Queue_3_io_deq_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_4 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_4 (
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_opcode(Queue_4_io_enq_bits_opcode),
    .io_enq_bits_size(Queue_4_io_enq_bits_size),
    .io_enq_bits_source(Queue_4_io_enq_bits_source),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_opcode(Queue_4_io_deq_bits_opcode),
    .io_deq_bits_size(Queue_4_io_deq_bits_size),
    .io_deq_bits_source(Queue_4_io_deq_bits_source)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_5 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_5 (
    .clock(Queue_5_clock),
    .reset(Queue_5_reset),
    .io_enq_ready(Queue_5_io_enq_ready),
    .io_enq_valid(Queue_5_io_enq_valid),
    .io_enq_bits_opcode(Queue_5_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_5_io_enq_bits_param),
    .io_enq_bits_size(Queue_5_io_enq_bits_size),
    .io_enq_bits_source(Queue_5_io_enq_bits_source),
    .io_enq_bits_data(Queue_5_io_enq_bits_data),
    .io_enq_bits_error(Queue_5_io_enq_bits_error),
    .io_deq_ready(Queue_5_io_deq_ready),
    .io_deq_valid(Queue_5_io_deq_valid),
    .io_deq_bits_opcode(Queue_5_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_5_io_deq_bits_param),
    .io_deq_bits_size(Queue_5_io_deq_bits_size),
    .io_deq_bits_source(Queue_5_io_deq_bits_source),
    .io_deq_bits_data(Queue_5_io_deq_bits_data),
    .io_deq_bits_error(Queue_5_io_deq_bits_error)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_6 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_6 (
    .clock(Queue_6_clock),
    .reset(Queue_6_reset),
    .io_enq_ready(Queue_6_io_enq_ready),
    .io_enq_valid(Queue_6_io_enq_valid),
    .io_enq_bits_opcode(Queue_6_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_6_io_enq_bits_param),
    .io_enq_bits_size(Queue_6_io_enq_bits_size),
    .io_enq_bits_source(Queue_6_io_enq_bits_source),
    .io_enq_bits_address(Queue_6_io_enq_bits_address),
    .io_enq_bits_mask(Queue_6_io_enq_bits_mask),
    .io_enq_bits_data(Queue_6_io_enq_bits_data),
    .io_deq_ready(Queue_6_io_deq_ready),
    .io_deq_valid(Queue_6_io_deq_valid),
    .io_deq_bits_opcode(Queue_6_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_6_io_deq_bits_param),
    .io_deq_bits_size(Queue_6_io_deq_bits_size),
    .io_deq_bits_source(Queue_6_io_deq_bits_source),
    .io_deq_bits_address(Queue_6_io_deq_bits_address),
    .io_deq_bits_mask(Queue_6_io_deq_bits_mask),
    .io_deq_bits_data(Queue_6_io_deq_bits_data)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_7 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_7 (
    .clock(Queue_7_clock),
    .reset(Queue_7_reset),
    .io_enq_ready(Queue_7_io_enq_ready),
    .io_enq_valid(Queue_7_io_enq_valid),
    .io_enq_bits_opcode(Queue_7_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_7_io_enq_bits_param),
    .io_enq_bits_size(Queue_7_io_enq_bits_size),
    .io_enq_bits_source(Queue_7_io_enq_bits_source),
    .io_deq_ready(Queue_7_io_deq_ready),
    .io_deq_valid(Queue_7_io_deq_valid),
    .io_deq_bits_opcode(Queue_7_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_7_io_deq_bits_param),
    .io_deq_bits_size(Queue_7_io_deq_bits_size),
    .io_deq_bits_source(Queue_7_io_deq_bits_source)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_8 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_8 (
    .clock(Queue_8_clock),
    .reset(Queue_8_reset),
    .io_enq_ready(Queue_8_io_enq_ready),
    .io_enq_valid(Queue_8_io_enq_valid),
    .io_deq_ready(Queue_8_io_deq_ready),
    .io_deq_valid(Queue_8_io_deq_valid)
  );
  assign io_in_2_a_ready = Queue_4_io_enq_ready;
  assign io_in_2_b_valid = Queue_6_io_deq_valid;
  assign io_in_2_b_bits_opcode = Queue_6_io_deq_bits_opcode;
  assign io_in_2_b_bits_param = Queue_6_io_deq_bits_param;
  assign io_in_2_b_bits_size = Queue_6_io_deq_bits_size;
  assign io_in_2_b_bits_source = Queue_6_io_deq_bits_source;
  assign io_in_2_b_bits_address = Queue_6_io_deq_bits_address;
  assign io_in_2_b_bits_mask = Queue_6_io_deq_bits_mask;
  assign io_in_2_b_bits_data = Queue_6_io_deq_bits_data;
  assign io_in_2_c_ready = Queue_7_io_enq_ready;
  assign io_in_2_d_valid = Queue_5_io_deq_valid;
  assign io_in_2_d_bits_opcode = Queue_5_io_deq_bits_opcode;
  assign io_in_2_d_bits_param = Queue_5_io_deq_bits_param;
  assign io_in_2_d_bits_size = Queue_5_io_deq_bits_size;
  assign io_in_2_d_bits_source = Queue_5_io_deq_bits_source;
  assign io_in_2_d_bits_data = Queue_5_io_deq_bits_data;
  assign io_in_2_d_bits_error = Queue_5_io_deq_bits_error;
  assign io_in_2_e_ready = Queue_8_io_enq_ready;
  assign io_in_1_a_ready = Queue_2_io_enq_ready;
  assign io_in_1_d_valid = Queue_3_io_deq_valid;
  assign io_in_1_d_bits_opcode = Queue_3_io_deq_bits_opcode;
  assign io_in_1_d_bits_param = Queue_3_io_deq_bits_param;
  assign io_in_1_d_bits_size = Queue_3_io_deq_bits_size;
  assign io_in_1_d_bits_source = Queue_3_io_deq_bits_source;
  assign io_in_1_d_bits_sink = Queue_3_io_deq_bits_sink;
  assign io_in_1_d_bits_data = Queue_3_io_deq_bits_data;
  assign io_in_1_d_bits_error = Queue_3_io_deq_bits_error;
  assign io_in_0_a_ready = Queue_io_enq_ready;
  assign io_in_0_d_valid = Queue_1_io_deq_valid;
  assign io_in_0_d_bits_opcode = Queue_1_io_deq_bits_opcode;
  assign io_in_0_d_bits_param = Queue_1_io_deq_bits_param;
  assign io_in_0_d_bits_size = Queue_1_io_deq_bits_size;
  assign io_in_0_d_bits_source = Queue_1_io_deq_bits_source;
  assign io_in_0_d_bits_sink = Queue_1_io_deq_bits_sink;
  assign io_in_0_d_bits_data = Queue_1_io_deq_bits_data;
  assign io_in_0_d_bits_error = Queue_1_io_deq_bits_error;
  assign io_out_2_a_valid = Queue_4_io_deq_valid;
  assign io_out_2_a_bits_opcode = Queue_4_io_deq_bits_opcode;
  assign io_out_2_a_bits_size = Queue_4_io_deq_bits_size;
  assign io_out_2_a_bits_source = Queue_4_io_deq_bits_source;
  assign io_out_2_b_ready = Queue_6_io_enq_ready;
  assign io_out_2_c_valid = Queue_7_io_deq_valid;
  assign io_out_2_c_bits_opcode = Queue_7_io_deq_bits_opcode;
  assign io_out_2_c_bits_param = Queue_7_io_deq_bits_param;
  assign io_out_2_c_bits_size = Queue_7_io_deq_bits_size;
  assign io_out_2_c_bits_source = Queue_7_io_deq_bits_source;
  assign io_out_2_d_ready = Queue_5_io_enq_ready;
  assign io_out_2_e_valid = Queue_8_io_deq_valid;
  assign io_out_1_a_valid = Queue_2_io_deq_valid;
  assign io_out_1_a_bits_opcode = Queue_2_io_deq_bits_opcode;
  assign io_out_1_a_bits_size = Queue_2_io_deq_bits_size;
  assign io_out_1_a_bits_source = Queue_2_io_deq_bits_source;
  assign io_out_1_a_bits_address = Queue_2_io_deq_bits_address;
  assign io_out_1_a_bits_data = Queue_2_io_deq_bits_data;
  assign io_out_1_d_ready = Queue_3_io_enq_ready;
  assign io_out_0_a_valid = Queue_io_deq_valid;
  assign io_out_0_a_bits_opcode = Queue_io_deq_bits_opcode;
  assign io_out_0_a_bits_param = Queue_io_deq_bits_param;
  assign io_out_0_a_bits_size = Queue_io_deq_bits_size;
  assign io_out_0_a_bits_source = Queue_io_deq_bits_source;
  assign io_out_0_a_bits_address = Queue_io_deq_bits_address;
  assign io_out_0_a_bits_mask = Queue_io_deq_bits_mask;
  assign io_out_0_a_bits_data = Queue_io_deq_bits_data;
  assign io_out_0_d_ready = Queue_1_io_enq_ready;
  assign Queue_clock = clock;
  assign Queue_reset = reset;
  assign Queue_io_enq_valid = io_in_0_a_valid;
  assign Queue_io_enq_bits_opcode = io_in_0_a_bits_opcode;
  assign Queue_io_enq_bits_param = io_in_0_a_bits_param;
  assign Queue_io_enq_bits_size = io_in_0_a_bits_size;
  assign Queue_io_enq_bits_source = io_in_0_a_bits_source;
  assign Queue_io_enq_bits_address = io_in_0_a_bits_address;
  assign Queue_io_enq_bits_mask = io_in_0_a_bits_mask;
  assign Queue_io_enq_bits_data = io_in_0_a_bits_data;
  assign Queue_io_deq_ready = io_out_0_a_ready;
  assign Queue_1_clock = clock;
  assign Queue_1_reset = reset;
  assign Queue_1_io_enq_valid = io_out_0_d_valid;
  assign Queue_1_io_enq_bits_opcode = io_out_0_d_bits_opcode;
  assign Queue_1_io_enq_bits_param = io_out_0_d_bits_param;
  assign Queue_1_io_enq_bits_size = io_out_0_d_bits_size;
  assign Queue_1_io_enq_bits_source = io_out_0_d_bits_source;
  assign Queue_1_io_enq_bits_sink = io_out_0_d_bits_sink;
  assign Queue_1_io_enq_bits_data = io_out_0_d_bits_data;
  assign Queue_1_io_enq_bits_error = io_out_0_d_bits_error;
  assign Queue_1_io_deq_ready = io_in_0_d_ready;
  assign Queue_2_clock = clock;
  assign Queue_2_reset = reset;
  assign Queue_2_io_enq_valid = io_in_1_a_valid;
  assign Queue_2_io_enq_bits_opcode = io_in_1_a_bits_opcode;
  assign Queue_2_io_enq_bits_param = io_in_1_a_bits_param;
  assign Queue_2_io_enq_bits_size = io_in_1_a_bits_size;
  assign Queue_2_io_enq_bits_source = io_in_1_a_bits_source;
  assign Queue_2_io_enq_bits_address = io_in_1_a_bits_address;
  assign Queue_2_io_enq_bits_mask = io_in_1_a_bits_mask;
  assign Queue_2_io_enq_bits_data = io_in_1_a_bits_data;
  assign Queue_2_io_deq_ready = io_out_1_a_ready;
  assign Queue_3_clock = clock;
  assign Queue_3_reset = reset;
  assign Queue_3_io_enq_valid = io_out_1_d_valid;
  assign Queue_3_io_enq_bits_opcode = io_out_1_d_bits_opcode;
  assign Queue_3_io_enq_bits_param = io_out_1_d_bits_param;
  assign Queue_3_io_enq_bits_size = io_out_1_d_bits_size;
  assign Queue_3_io_enq_bits_source = io_out_1_d_bits_source;
  assign Queue_3_io_enq_bits_sink = io_out_1_d_bits_sink;
  assign Queue_3_io_enq_bits_data = io_out_1_d_bits_data;
  assign Queue_3_io_enq_bits_error = io_out_1_d_bits_error;
  assign Queue_3_io_deq_ready = io_in_1_d_ready;
  assign Queue_4_clock = clock;
  assign Queue_4_reset = reset;
  assign Queue_4_io_enq_valid = io_in_2_a_valid;
  assign Queue_4_io_enq_bits_opcode = io_in_2_a_bits_opcode;
  assign Queue_4_io_enq_bits_size = io_in_2_a_bits_size;
  assign Queue_4_io_enq_bits_source = io_in_2_a_bits_source;
  assign Queue_4_io_deq_ready = io_out_2_a_ready;
  assign Queue_5_clock = clock;
  assign Queue_5_reset = reset;
  assign Queue_5_io_enq_valid = io_out_2_d_valid;
  assign Queue_5_io_enq_bits_opcode = io_out_2_d_bits_opcode;
  assign Queue_5_io_enq_bits_param = io_out_2_d_bits_param;
  assign Queue_5_io_enq_bits_size = io_out_2_d_bits_size;
  assign Queue_5_io_enq_bits_source = io_out_2_d_bits_source;
  assign Queue_5_io_enq_bits_data = io_out_2_d_bits_data;
  assign Queue_5_io_enq_bits_error = io_out_2_d_bits_error;
  assign Queue_5_io_deq_ready = io_in_2_d_ready;
  assign Queue_6_clock = clock;
  assign Queue_6_reset = reset;
  assign Queue_6_io_enq_valid = io_out_2_b_valid;
  assign Queue_6_io_enq_bits_opcode = io_out_2_b_bits_opcode;
  assign Queue_6_io_enq_bits_param = io_out_2_b_bits_param;
  assign Queue_6_io_enq_bits_size = io_out_2_b_bits_size;
  assign Queue_6_io_enq_bits_source = io_out_2_b_bits_source;
  assign Queue_6_io_enq_bits_address = io_out_2_b_bits_address;
  assign Queue_6_io_enq_bits_mask = io_out_2_b_bits_mask;
  assign Queue_6_io_enq_bits_data = io_out_2_b_bits_data;
  assign Queue_6_io_deq_ready = io_in_2_b_ready;
  assign Queue_7_clock = clock;
  assign Queue_7_reset = reset;
  assign Queue_7_io_enq_valid = io_in_2_c_valid;
  assign Queue_7_io_enq_bits_opcode = io_in_2_c_bits_opcode;
  assign Queue_7_io_enq_bits_param = io_in_2_c_bits_param;
  assign Queue_7_io_enq_bits_size = io_in_2_c_bits_size;
  assign Queue_7_io_enq_bits_source = io_in_2_c_bits_source;
  assign Queue_7_io_deq_ready = io_out_2_c_ready;
  assign Queue_8_clock = clock;
  assign Queue_8_reset = reset;
  assign Queue_8_io_enq_valid = io_in_2_e_valid;
  assign Queue_8_io_deq_ready = io_out_2_e_ready;
endmodule
