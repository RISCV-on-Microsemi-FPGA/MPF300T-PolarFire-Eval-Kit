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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_BUFFER_SYSTEM_BUS(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_param,
  input  [3:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  input  [31:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_b_ready,
  output        io_in_0_b_valid,
  output [1:0]  io_in_0_b_bits_param,
  output [3:0]  io_in_0_b_bits_size,
  output [1:0]  io_in_0_b_bits_source,
  output [31:0] io_in_0_b_bits_address,
  output        io_in_0_c_ready,
  input         io_in_0_c_valid,
  input  [2:0]  io_in_0_c_bits_opcode,
  input  [2:0]  io_in_0_c_bits_param,
  input  [3:0]  io_in_0_c_bits_size,
  input  [1:0]  io_in_0_c_bits_source,
  input  [31:0] io_in_0_c_bits_address,
  input  [31:0] io_in_0_c_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [3:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output [1:0]  io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  output        io_in_0_e_ready,
  input         io_in_0_e_valid,
  input  [1:0]  io_in_0_e_bits_sink,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_param,
  output [3:0]  io_out_0_a_bits_size,
  output [1:0]  io_out_0_a_bits_source,
  output [31:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_b_ready,
  input         io_out_0_b_valid,
  input  [1:0]  io_out_0_b_bits_param,
  input  [3:0]  io_out_0_b_bits_size,
  input  [1:0]  io_out_0_b_bits_source,
  input  [31:0] io_out_0_b_bits_address,
  input         io_out_0_c_ready,
  output        io_out_0_c_valid,
  output [2:0]  io_out_0_c_bits_opcode,
  output [2:0]  io_out_0_c_bits_param,
  output [3:0]  io_out_0_c_bits_size,
  output [1:0]  io_out_0_c_bits_source,
  output [31:0] io_out_0_c_bits_address,
  output [31:0] io_out_0_c_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [3:0]  io_out_0_d_bits_size,
  input  [1:0]  io_out_0_d_bits_source,
  input  [1:0]  io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error,
  input         io_out_0_e_ready,
  output        io_out_0_e_valid,
  output [1:0]  io_out_0_e_bits_sink
);
  wire  Queue_clock;
  wire  Queue_reset;
  wire  Queue_io_enq_ready;
  wire  Queue_io_enq_valid;
  wire [2:0] Queue_io_enq_bits_opcode;
  wire [2:0] Queue_io_enq_bits_param;
  wire [3:0] Queue_io_enq_bits_size;
  wire [1:0] Queue_io_enq_bits_source;
  wire [31:0] Queue_io_enq_bits_address;
  wire [3:0] Queue_io_enq_bits_mask;
  wire [31:0] Queue_io_enq_bits_data;
  wire  Queue_io_deq_ready;
  wire  Queue_io_deq_valid;
  wire [2:0] Queue_io_deq_bits_opcode;
  wire [2:0] Queue_io_deq_bits_param;
  wire [3:0] Queue_io_deq_bits_size;
  wire [1:0] Queue_io_deq_bits_source;
  wire [31:0] Queue_io_deq_bits_address;
  wire [3:0] Queue_io_deq_bits_mask;
  wire [31:0] Queue_io_deq_bits_data;
  wire  Queue_1_clock;
  wire  Queue_1_reset;
  wire  Queue_1_io_enq_ready;
  wire  Queue_1_io_enq_valid;
  wire [2:0] Queue_1_io_enq_bits_opcode;
  wire [1:0] Queue_1_io_enq_bits_param;
  wire [3:0] Queue_1_io_enq_bits_size;
  wire [1:0] Queue_1_io_enq_bits_source;
  wire [1:0] Queue_1_io_enq_bits_sink;
  wire [31:0] Queue_1_io_enq_bits_data;
  wire  Queue_1_io_enq_bits_error;
  wire  Queue_1_io_deq_ready;
  wire  Queue_1_io_deq_valid;
  wire [2:0] Queue_1_io_deq_bits_opcode;
  wire [1:0] Queue_1_io_deq_bits_param;
  wire [3:0] Queue_1_io_deq_bits_size;
  wire [1:0] Queue_1_io_deq_bits_source;
  wire [1:0] Queue_1_io_deq_bits_sink;
  wire [31:0] Queue_1_io_deq_bits_data;
  wire  Queue_1_io_deq_bits_error;
  wire  Queue_2_clock;
  wire  Queue_2_reset;
  wire  Queue_2_io_enq_ready;
  wire  Queue_2_io_enq_valid;
  wire [1:0] Queue_2_io_enq_bits_param;
  wire [3:0] Queue_2_io_enq_bits_size;
  wire [1:0] Queue_2_io_enq_bits_source;
  wire [31:0] Queue_2_io_enq_bits_address;
  wire  Queue_2_io_deq_ready;
  wire  Queue_2_io_deq_valid;
  wire [1:0] Queue_2_io_deq_bits_param;
  wire [3:0] Queue_2_io_deq_bits_size;
  wire [1:0] Queue_2_io_deq_bits_source;
  wire [31:0] Queue_2_io_deq_bits_address;
  wire  Queue_3_clock;
  wire  Queue_3_reset;
  wire  Queue_3_io_enq_ready;
  wire  Queue_3_io_enq_valid;
  wire [2:0] Queue_3_io_enq_bits_opcode;
  wire [2:0] Queue_3_io_enq_bits_param;
  wire [3:0] Queue_3_io_enq_bits_size;
  wire [1:0] Queue_3_io_enq_bits_source;
  wire [31:0] Queue_3_io_enq_bits_address;
  wire [31:0] Queue_3_io_enq_bits_data;
  wire  Queue_3_io_deq_ready;
  wire  Queue_3_io_deq_valid;
  wire [2:0] Queue_3_io_deq_bits_opcode;
  wire [2:0] Queue_3_io_deq_bits_param;
  wire [3:0] Queue_3_io_deq_bits_size;
  wire [1:0] Queue_3_io_deq_bits_source;
  wire [31:0] Queue_3_io_deq_bits_address;
  wire [31:0] Queue_3_io_deq_bits_data;
  wire  Queue_4_clock;
  wire  Queue_4_reset;
  wire  Queue_4_io_enq_ready;
  wire  Queue_4_io_enq_valid;
  wire [1:0] Queue_4_io_enq_bits_sink;
  wire  Queue_4_io_deq_ready;
  wire  Queue_4_io_deq_valid;
  wire [1:0] Queue_4_io_deq_bits_sink;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_14 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE (
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
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_15 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_1 (
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
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_16 Queue_2 (
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_param(Queue_2_io_enq_bits_param),
    .io_enq_bits_size(Queue_2_io_enq_bits_size),
    .io_enq_bits_source(Queue_2_io_enq_bits_source),
    .io_enq_bits_address(Queue_2_io_enq_bits_address),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_param(Queue_2_io_deq_bits_param),
    .io_deq_bits_size(Queue_2_io_deq_bits_size),
    .io_deq_bits_source(Queue_2_io_deq_bits_source),
    .io_deq_bits_address(Queue_2_io_deq_bits_address)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_17 Queue_3 (
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_opcode(Queue_3_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_3_io_enq_bits_param),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_source(Queue_3_io_enq_bits_source),
    .io_enq_bits_address(Queue_3_io_enq_bits_address),
    .io_enq_bits_data(Queue_3_io_enq_bits_data),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_opcode(Queue_3_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_3_io_deq_bits_param),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_source(Queue_3_io_deq_bits_source),
    .io_deq_bits_address(Queue_3_io_deq_bits_address),
    .io_deq_bits_data(Queue_3_io_deq_bits_data)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_18 MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_4 (
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_sink(Queue_4_io_enq_bits_sink),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_sink(Queue_4_io_deq_bits_sink)
  );
  assign io_in_0_a_ready = Queue_io_enq_ready;
  assign io_in_0_b_valid = Queue_2_io_deq_valid;
  assign io_in_0_b_bits_param = Queue_2_io_deq_bits_param;
  assign io_in_0_b_bits_size = Queue_2_io_deq_bits_size;
  assign io_in_0_b_bits_source = Queue_2_io_deq_bits_source;
  assign io_in_0_b_bits_address = Queue_2_io_deq_bits_address;
  assign io_in_0_c_ready = Queue_3_io_enq_ready;
  assign io_in_0_d_valid = Queue_1_io_deq_valid;
  assign io_in_0_d_bits_opcode = Queue_1_io_deq_bits_opcode;
  assign io_in_0_d_bits_param = Queue_1_io_deq_bits_param;
  assign io_in_0_d_bits_size = Queue_1_io_deq_bits_size;
  assign io_in_0_d_bits_source = Queue_1_io_deq_bits_source;
  assign io_in_0_d_bits_sink = Queue_1_io_deq_bits_sink;
  assign io_in_0_d_bits_data = Queue_1_io_deq_bits_data;
  assign io_in_0_d_bits_error = Queue_1_io_deq_bits_error;
  assign io_in_0_e_ready = Queue_4_io_enq_ready;
  assign io_out_0_a_valid = Queue_io_deq_valid;
  assign io_out_0_a_bits_opcode = Queue_io_deq_bits_opcode;
  assign io_out_0_a_bits_param = Queue_io_deq_bits_param;
  assign io_out_0_a_bits_size = Queue_io_deq_bits_size;
  assign io_out_0_a_bits_source = Queue_io_deq_bits_source;
  assign io_out_0_a_bits_address = Queue_io_deq_bits_address;
  assign io_out_0_a_bits_mask = Queue_io_deq_bits_mask;
  assign io_out_0_a_bits_data = Queue_io_deq_bits_data;
  assign io_out_0_b_ready = Queue_2_io_enq_ready;
  assign io_out_0_c_valid = Queue_3_io_deq_valid;
  assign io_out_0_c_bits_opcode = Queue_3_io_deq_bits_opcode;
  assign io_out_0_c_bits_param = Queue_3_io_deq_bits_param;
  assign io_out_0_c_bits_size = Queue_3_io_deq_bits_size;
  assign io_out_0_c_bits_source = Queue_3_io_deq_bits_source;
  assign io_out_0_c_bits_address = Queue_3_io_deq_bits_address;
  assign io_out_0_c_bits_data = Queue_3_io_deq_bits_data;
  assign io_out_0_d_ready = Queue_1_io_enq_ready;
  assign io_out_0_e_valid = Queue_4_io_deq_valid;
  assign io_out_0_e_bits_sink = Queue_4_io_deq_bits_sink;
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
  assign Queue_2_io_enq_valid = io_out_0_b_valid;
  assign Queue_2_io_enq_bits_param = io_out_0_b_bits_param;
  assign Queue_2_io_enq_bits_size = io_out_0_b_bits_size;
  assign Queue_2_io_enq_bits_source = io_out_0_b_bits_source;
  assign Queue_2_io_enq_bits_address = io_out_0_b_bits_address;
  assign Queue_2_io_deq_ready = io_in_0_b_ready;
  assign Queue_3_clock = clock;
  assign Queue_3_reset = reset;
  assign Queue_3_io_enq_valid = io_in_0_c_valid;
  assign Queue_3_io_enq_bits_opcode = io_in_0_c_bits_opcode;
  assign Queue_3_io_enq_bits_param = io_in_0_c_bits_param;
  assign Queue_3_io_enq_bits_size = io_in_0_c_bits_size;
  assign Queue_3_io_enq_bits_source = io_in_0_c_bits_source;
  assign Queue_3_io_enq_bits_address = io_in_0_c_bits_address;
  assign Queue_3_io_enq_bits_data = io_in_0_c_bits_data;
  assign Queue_3_io_deq_ready = io_out_0_c_ready;
  assign Queue_4_clock = clock;
  assign Queue_4_reset = reset;
  assign Queue_4_io_enq_valid = io_in_0_e_valid;
  assign Queue_4_io_enq_bits_sink = io_in_0_e_bits_sink;
  assign Queue_4_io_deq_ready = io_out_0_e_ready;
endmodule
