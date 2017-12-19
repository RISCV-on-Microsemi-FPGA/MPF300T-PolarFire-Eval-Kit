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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_QUEUE_16(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [1:0]  io_enq_bits_param,
  input  [3:0]  io_enq_bits_size,
  input  [1:0]  io_enq_bits_source,
  input  [31:0] io_enq_bits_address,
  input         io_deq_ready,
  output        io_deq_valid,
  output [1:0]  io_deq_bits_param,
  output [3:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_source,
  output [31:0] io_deq_bits_address
);
  reg [1:0] ram_param [0:1] /* synthesis syn_ramstyle = "registers" */;
  reg [31:0] _RAND_0;
  wire [1:0] ram_param__T_43_data;
  wire  ram_param__T_43_addr;
  wire [1:0] ram_param__T_29_data;
  wire  ram_param__T_29_addr;
  wire  ram_param__T_29_mask;
  wire  ram_param__T_29_en;
  reg [3:0] ram_size [0:1] /* synthesis syn_ramstyle = "registers" */;
  reg [31:0] _RAND_1;
  wire [3:0] ram_size__T_43_data;
  wire  ram_size__T_43_addr;
  wire [3:0] ram_size__T_29_data;
  wire  ram_size__T_29_addr;
  wire  ram_size__T_29_mask;
  wire  ram_size__T_29_en;
  reg [1:0] ram_source [0:1] /* synthesis syn_ramstyle = "registers" */;
  reg [31:0] _RAND_2;
  wire [1:0] ram_source__T_43_data;
  wire  ram_source__T_43_addr;
  wire [1:0] ram_source__T_29_data;
  wire  ram_source__T_29_addr;
  wire  ram_source__T_29_mask;
  wire  ram_source__T_29_en;
  reg [31:0] ram_address [0:1] /* synthesis syn_ramstyle = "registers" */;
  reg [31:0] _RAND_3;
  wire [31:0] ram_address__T_43_data;
  wire  ram_address__T_43_addr;
  wire [31:0] ram_address__T_29_data;
  wire  ram_address__T_29_addr;
  wire  ram_address__T_29_mask;
  wire  ram_address__T_29_en;
  reg  value;
  reg [31:0] _RAND_4;
  reg  value_1;
  reg [31:0] _RAND_5;
  reg  maybe_full;
  reg [31:0] _RAND_6;
  wire  _T_20;
  wire  _T_22;
  wire  _T_23;
  wire  _T_24;
  wire  _T_25;
  wire  _T_27;
  wire [1:0] _T_32;
  wire  _T_33;
  wire  _GEN_10;
  wire [1:0] _T_36;
  wire  _T_37;
  wire  _GEN_11;
  wire  _T_38;
  wire  _GEN_12;
  wire  _T_40;
  wire  _T_42;
  assign io_enq_ready = _T_42;
  assign io_deq_valid = _T_40;
  assign io_deq_bits_param = ram_param__T_43_data;
  assign io_deq_bits_size = ram_size__T_43_data;
  assign io_deq_bits_source = ram_source__T_43_data;
  assign io_deq_bits_address = ram_address__T_43_data;
  assign ram_param__T_43_addr = value_1;
  assign ram_param__T_43_data = ram_param[ram_param__T_43_addr];
  assign ram_param__T_29_data = io_enq_bits_param;
  assign ram_param__T_29_addr = value;
  assign ram_param__T_29_mask = _T_25;
  assign ram_param__T_29_en = _T_25;
  assign ram_size__T_43_addr = value_1;
  assign ram_size__T_43_data = ram_size[ram_size__T_43_addr];
  assign ram_size__T_29_data = io_enq_bits_size;
  assign ram_size__T_29_addr = value;
  assign ram_size__T_29_mask = _T_25;
  assign ram_size__T_29_en = _T_25;
  assign ram_source__T_43_addr = value_1;
  assign ram_source__T_43_data = ram_source[ram_source__T_43_addr];
  assign ram_source__T_29_data = io_enq_bits_source;
  assign ram_source__T_29_addr = value;
  assign ram_source__T_29_mask = _T_25;
  assign ram_source__T_29_en = _T_25;
  assign ram_address__T_43_addr = value_1;
  assign ram_address__T_43_data = ram_address[ram_address__T_43_addr];
  assign ram_address__T_29_data = io_enq_bits_address;
  assign ram_address__T_29_addr = value;
  assign ram_address__T_29_mask = _T_25;
  assign ram_address__T_29_en = _T_25;
  assign _T_20 = value == value_1;
  assign _T_22 = maybe_full == 1'h0;
  assign _T_23 = _T_20 & _T_22;
  assign _T_24 = _T_20 & maybe_full;
  assign _T_25 = io_enq_ready & io_enq_valid;
  assign _T_27 = io_deq_ready & io_deq_valid;
  assign _T_32 = value + 1'h1;
  assign _T_33 = _T_32[0:0];
  assign _GEN_10 = _T_25 ? _T_33 : value;
  assign _T_36 = value_1 + 1'h1;
  assign _T_37 = _T_36[0:0];
  assign _GEN_11 = _T_27 ? _T_37 : value_1;
  assign _T_38 = _T_25 != _T_27;
  assign _GEN_12 = _T_38 ? _T_25 : maybe_full;
  assign _T_40 = _T_23 == 1'h0;
  assign _T_42 = _T_24 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_0[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_2[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_address[initvar] = _RAND_3[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  value = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  value_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  maybe_full = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_param__T_29_en & ram_param__T_29_mask) begin
      ram_param[ram_param__T_29_addr] <= ram_param__T_29_data;
    end
    if(ram_size__T_29_en & ram_size__T_29_mask) begin
      ram_size[ram_size__T_29_addr] <= ram_size__T_29_data;
    end
    if(ram_source__T_29_en & ram_source__T_29_mask) begin
      ram_source[ram_source__T_29_addr] <= ram_source__T_29_data;
    end
    if(ram_address__T_29_en & ram_address__T_29_mask) begin
      ram_address[ram_address__T_29_addr] <= ram_address__T_29_data;
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_25) begin
        value <= _T_33;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_27) begin
        value_1 <= _T_37;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_38) begin
        maybe_full <= _T_25;
      end
    end
  end
endmodule
