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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_DMI_TO_TL_DMI2TL(
  output        io_dmi_req_ready,
  input         io_dmi_req_valid,
  input  [6:0]  io_dmi_req_bits_addr,
  input  [31:0] io_dmi_req_bits_data,
  input  [1:0]  io_dmi_req_bits_op,
  input         io_dmi_resp_ready,
  output        io_dmi_resp_valid,
  output [31:0] io_dmi_resp_bits_data,
  output [1:0]  io_dmi_resp_bits_resp,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [1:0]  io_out_0_a_bits_size,
  output        io_out_0_a_bits_source,
  output [8:0]  io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  wire [8:0] _GEN_21;
  wire [8:0] _T_57;
  wire  _T_203;
  wire  _T_205;
  wire  _T_207;
  wire  _T_208;
  wire [2:0] _GEN_7;
  wire [31:0] _GEN_13;
  wire  _T_212;
  wire  _T_213;
  wire [2:0] _GEN_14;
  wire [8:0] _GEN_18;
  wire [3:0] _GEN_19;
  wire [31:0] _GEN_20;
  assign io_dmi_req_ready = io_out_0_a_ready;
  assign io_dmi_resp_valid = io_out_0_d_valid;
  assign io_dmi_resp_bits_data = io_out_0_d_bits_data;
  assign io_dmi_resp_bits_resp = {{1'd0}, io_out_0_d_bits_error};
  assign io_out_0_a_valid = io_dmi_req_valid;
  assign io_out_0_a_bits_opcode = _GEN_14;
  assign io_out_0_a_bits_size = 2'h2;
  assign io_out_0_a_bits_source = 1'h0;
  assign io_out_0_a_bits_address = _GEN_18;
  assign io_out_0_a_bits_mask = _GEN_19;
  assign io_out_0_a_bits_data = _GEN_20;
  assign io_out_0_d_ready = io_dmi_resp_ready;
  assign _GEN_21 = {{2'd0}, io_dmi_req_bits_addr};
  assign _T_57 = _GEN_21 << 2;
  assign _T_203 = io_dmi_req_bits_op == 2'h2;
  assign _T_205 = io_dmi_req_bits_op == 2'h1;
  assign _T_207 = _T_203 == 1'h0;
  assign _T_208 = _T_207 & _T_205;
  assign _GEN_7 = _T_208 ? 3'h4 : 3'h0;
  assign _GEN_13 = _T_208 ? 32'h0 : io_dmi_req_bits_data;
  assign _T_212 = _T_205 == 1'h0;
  assign _T_213 = _T_207 & _T_212;
  assign _GEN_14 = _T_213 ? 3'h1 : _GEN_7;
  assign _GEN_18 = _T_213 ? 9'h40 : _T_57;
  assign _GEN_19 = _T_213 ? 4'h0 : 4'hf;
  assign _GEN_20 = _T_213 ? 32'h0 : _GEN_13;
endmodule
