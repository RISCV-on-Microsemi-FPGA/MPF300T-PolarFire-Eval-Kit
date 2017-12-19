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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_SYNC_ROCKET_TILE_TILE(
  input         clock,
  input         reset,
  input         io_master_0_a_ready,
  output        io_master_0_a_valid,
  output [2:0]  io_master_0_a_bits_opcode,
  output [2:0]  io_master_0_a_bits_param,
  output [3:0]  io_master_0_a_bits_size,
  output [1:0]  io_master_0_a_bits_source,
  output [31:0] io_master_0_a_bits_address,
  output [3:0]  io_master_0_a_bits_mask,
  output [31:0] io_master_0_a_bits_data,
  output        io_master_0_b_ready,
  input         io_master_0_b_valid,
  input  [1:0]  io_master_0_b_bits_param,
  input  [3:0]  io_master_0_b_bits_size,
  input  [1:0]  io_master_0_b_bits_source,
  input  [31:0] io_master_0_b_bits_address,
  input         io_master_0_c_ready,
  output        io_master_0_c_valid,
  output [2:0]  io_master_0_c_bits_opcode,
  output [2:0]  io_master_0_c_bits_param,
  output [3:0]  io_master_0_c_bits_size,
  output [1:0]  io_master_0_c_bits_source,
  output [31:0] io_master_0_c_bits_address,
  output [31:0] io_master_0_c_bits_data,
  output        io_master_0_d_ready,
  input         io_master_0_d_valid,
  input  [2:0]  io_master_0_d_bits_opcode,
  input  [1:0]  io_master_0_d_bits_param,
  input  [3:0]  io_master_0_d_bits_size,
  input  [1:0]  io_master_0_d_bits_source,
  input  [1:0]  io_master_0_d_bits_sink,
  input  [31:0] io_master_0_d_bits_data,
  input         io_master_0_d_bits_error,
  input         io_master_0_e_ready,
  output        io_master_0_e_valid,
  output [1:0]  io_master_0_e_bits_sink,
  input         io_asyncInterrupts_0_0,
  input         io_periphInterrupts_0_0,
  input         io_periphInterrupts_0_1,
  input         io_periphInterrupts_0_2,
  input         io_hartid,
  input  [31:0] io_resetVector
);
  wire  rocket_clock;
  wire  rocket_reset;
  wire  rocket_io_master_0_a_ready;
  wire  rocket_io_master_0_a_valid;
  wire [2:0] rocket_io_master_0_a_bits_opcode;
  wire [2:0] rocket_io_master_0_a_bits_param;
  wire [3:0] rocket_io_master_0_a_bits_size;
  wire [1:0] rocket_io_master_0_a_bits_source;
  wire [31:0] rocket_io_master_0_a_bits_address;
  wire [3:0] rocket_io_master_0_a_bits_mask;
  wire [31:0] rocket_io_master_0_a_bits_data;
  wire  rocket_io_master_0_b_ready;
  wire  rocket_io_master_0_b_valid;
  wire [1:0] rocket_io_master_0_b_bits_param;
  wire [3:0] rocket_io_master_0_b_bits_size;
  wire [1:0] rocket_io_master_0_b_bits_source;
  wire [31:0] rocket_io_master_0_b_bits_address;
  wire  rocket_io_master_0_c_ready;
  wire  rocket_io_master_0_c_valid;
  wire [2:0] rocket_io_master_0_c_bits_opcode;
  wire [2:0] rocket_io_master_0_c_bits_param;
  wire [3:0] rocket_io_master_0_c_bits_size;
  wire [1:0] rocket_io_master_0_c_bits_source;
  wire [31:0] rocket_io_master_0_c_bits_address;
  wire [31:0] rocket_io_master_0_c_bits_data;
  wire  rocket_io_master_0_d_ready;
  wire  rocket_io_master_0_d_valid;
  wire [2:0] rocket_io_master_0_d_bits_opcode;
  wire [1:0] rocket_io_master_0_d_bits_param;
  wire [3:0] rocket_io_master_0_d_bits_size;
  wire [1:0] rocket_io_master_0_d_bits_source;
  wire [1:0] rocket_io_master_0_d_bits_sink;
  wire [31:0] rocket_io_master_0_d_bits_data;
  wire  rocket_io_master_0_d_bits_error;
  wire  rocket_io_master_0_e_ready;
  wire  rocket_io_master_0_e_valid;
  wire [1:0] rocket_io_master_0_e_bits_sink;
  wire  rocket_io_hartid;
  wire [31:0] rocket_io_resetVector;
  wire  rocket_io_interrupts_0_0;
  wire  rocket_io_interrupts_0_1;
  wire  rocket_io_interrupts_0_2;
  wire  rocket_io_interrupts_0_3;
  wire  intXbar_io_in_1_0;
  wire  intXbar_io_in_1_1;
  wire  intXbar_io_in_1_2;
  wire  intXbar_io_in_0_0;
  wire  intXbar_io_out_0_0;
  wire  intXbar_io_out_0_1;
  wire  intXbar_io_out_0_2;
  wire  intXbar_io_out_0_3;
  wire  xing_clock;
  wire  xing_io_in_0_0;
  wire  xing_io_out_0_0;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ROCKET_TILE_ROCKET rocket (
    .clock(rocket_clock),
    .reset(rocket_reset),
    .io_master_0_a_ready(rocket_io_master_0_a_ready),
    .io_master_0_a_valid(rocket_io_master_0_a_valid),
    .io_master_0_a_bits_opcode(rocket_io_master_0_a_bits_opcode),
    .io_master_0_a_bits_param(rocket_io_master_0_a_bits_param),
    .io_master_0_a_bits_size(rocket_io_master_0_a_bits_size),
    .io_master_0_a_bits_source(rocket_io_master_0_a_bits_source),
    .io_master_0_a_bits_address(rocket_io_master_0_a_bits_address),
    .io_master_0_a_bits_mask(rocket_io_master_0_a_bits_mask),
    .io_master_0_a_bits_data(rocket_io_master_0_a_bits_data),
    .io_master_0_b_ready(rocket_io_master_0_b_ready),
    .io_master_0_b_valid(rocket_io_master_0_b_valid),
    .io_master_0_b_bits_param(rocket_io_master_0_b_bits_param),
    .io_master_0_b_bits_size(rocket_io_master_0_b_bits_size),
    .io_master_0_b_bits_source(rocket_io_master_0_b_bits_source),
    .io_master_0_b_bits_address(rocket_io_master_0_b_bits_address),
    .io_master_0_c_ready(rocket_io_master_0_c_ready),
    .io_master_0_c_valid(rocket_io_master_0_c_valid),
    .io_master_0_c_bits_opcode(rocket_io_master_0_c_bits_opcode),
    .io_master_0_c_bits_param(rocket_io_master_0_c_bits_param),
    .io_master_0_c_bits_size(rocket_io_master_0_c_bits_size),
    .io_master_0_c_bits_source(rocket_io_master_0_c_bits_source),
    .io_master_0_c_bits_address(rocket_io_master_0_c_bits_address),
    .io_master_0_c_bits_data(rocket_io_master_0_c_bits_data),
    .io_master_0_d_ready(rocket_io_master_0_d_ready),
    .io_master_0_d_valid(rocket_io_master_0_d_valid),
    .io_master_0_d_bits_opcode(rocket_io_master_0_d_bits_opcode),
    .io_master_0_d_bits_param(rocket_io_master_0_d_bits_param),
    .io_master_0_d_bits_size(rocket_io_master_0_d_bits_size),
    .io_master_0_d_bits_source(rocket_io_master_0_d_bits_source),
    .io_master_0_d_bits_sink(rocket_io_master_0_d_bits_sink),
    .io_master_0_d_bits_data(rocket_io_master_0_d_bits_data),
    .io_master_0_d_bits_error(rocket_io_master_0_d_bits_error),
    .io_master_0_e_ready(rocket_io_master_0_e_ready),
    .io_master_0_e_valid(rocket_io_master_0_e_valid),
    .io_master_0_e_bits_sink(rocket_io_master_0_e_bits_sink),
    .io_hartid(rocket_io_hartid),
    .io_resetVector(rocket_io_resetVector),
    .io_interrupts_0_0(rocket_io_interrupts_0_0),
    .io_interrupts_0_1(rocket_io_interrupts_0_1),
    .io_interrupts_0_2(rocket_io_interrupts_0_2),
    .io_interrupts_0_3(rocket_io_interrupts_0_3)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_INT_XBAR_INT_XBAR intXbar (
    .io_in_1_0(intXbar_io_in_1_0),
    .io_in_1_1(intXbar_io_in_1_1),
    .io_in_1_2(intXbar_io_in_1_2),
    .io_in_0_0(intXbar_io_in_0_0),
    .io_out_0_0(intXbar_io_out_0_0),
    .io_out_0_1(intXbar_io_out_0_1),
    .io_out_0_2(intXbar_io_out_0_2),
    .io_out_0_3(intXbar_io_out_0_3)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_INT_XING_XING xing (
    .clock(xing_clock),
    .io_in_0_0(xing_io_in_0_0),
    .io_out_0_0(xing_io_out_0_0)
  );
  assign io_master_0_a_valid = rocket_io_master_0_a_valid;
  assign io_master_0_a_bits_opcode = rocket_io_master_0_a_bits_opcode;
  assign io_master_0_a_bits_param = rocket_io_master_0_a_bits_param;
  assign io_master_0_a_bits_size = rocket_io_master_0_a_bits_size;
  assign io_master_0_a_bits_source = rocket_io_master_0_a_bits_source;
  assign io_master_0_a_bits_address = rocket_io_master_0_a_bits_address;
  assign io_master_0_a_bits_mask = rocket_io_master_0_a_bits_mask;
  assign io_master_0_a_bits_data = rocket_io_master_0_a_bits_data;
  assign io_master_0_b_ready = rocket_io_master_0_b_ready;
  assign io_master_0_c_valid = rocket_io_master_0_c_valid;
  assign io_master_0_c_bits_opcode = rocket_io_master_0_c_bits_opcode;
  assign io_master_0_c_bits_param = rocket_io_master_0_c_bits_param;
  assign io_master_0_c_bits_size = rocket_io_master_0_c_bits_size;
  assign io_master_0_c_bits_source = rocket_io_master_0_c_bits_source;
  assign io_master_0_c_bits_address = rocket_io_master_0_c_bits_address;
  assign io_master_0_c_bits_data = rocket_io_master_0_c_bits_data;
  assign io_master_0_d_ready = rocket_io_master_0_d_ready;
  assign io_master_0_e_valid = rocket_io_master_0_e_valid;
  assign io_master_0_e_bits_sink = rocket_io_master_0_e_bits_sink;
  assign rocket_clock = clock;
  assign rocket_reset = reset;
  assign rocket_io_master_0_a_ready = io_master_0_a_ready;
  assign rocket_io_master_0_b_valid = io_master_0_b_valid;
  assign rocket_io_master_0_b_bits_param = io_master_0_b_bits_param;
  assign rocket_io_master_0_b_bits_size = io_master_0_b_bits_size;
  assign rocket_io_master_0_b_bits_source = io_master_0_b_bits_source;
  assign rocket_io_master_0_b_bits_address = io_master_0_b_bits_address;
  assign rocket_io_master_0_c_ready = io_master_0_c_ready;
  assign rocket_io_master_0_d_valid = io_master_0_d_valid;
  assign rocket_io_master_0_d_bits_opcode = io_master_0_d_bits_opcode;
  assign rocket_io_master_0_d_bits_param = io_master_0_d_bits_param;
  assign rocket_io_master_0_d_bits_size = io_master_0_d_bits_size;
  assign rocket_io_master_0_d_bits_source = io_master_0_d_bits_source;
  assign rocket_io_master_0_d_bits_sink = io_master_0_d_bits_sink;
  assign rocket_io_master_0_d_bits_data = io_master_0_d_bits_data;
  assign rocket_io_master_0_d_bits_error = io_master_0_d_bits_error;
  assign rocket_io_master_0_e_ready = io_master_0_e_ready;
  assign rocket_io_hartid = io_hartid;
  assign rocket_io_resetVector = io_resetVector;
  assign rocket_io_interrupts_0_0 = intXbar_io_out_0_0;
  assign rocket_io_interrupts_0_1 = intXbar_io_out_0_1;
  assign rocket_io_interrupts_0_2 = intXbar_io_out_0_2;
  assign rocket_io_interrupts_0_3 = intXbar_io_out_0_3;
  assign intXbar_io_in_1_0 = io_periphInterrupts_0_0;
  assign intXbar_io_in_1_1 = io_periphInterrupts_0_1;
  assign intXbar_io_in_1_2 = io_periphInterrupts_0_2;
  assign intXbar_io_in_0_0 = xing_io_out_0_0;
  assign xing_clock = clock;
  assign xing_io_in_0_0 = io_asyncInterrupts_0_0;
endmodule
