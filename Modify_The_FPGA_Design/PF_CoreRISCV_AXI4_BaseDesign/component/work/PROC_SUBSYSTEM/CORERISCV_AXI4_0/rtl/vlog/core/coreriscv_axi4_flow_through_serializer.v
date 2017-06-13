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
// Description:
//
// SVN Revision Information:
// SVN $Revision: 29484 $
// SVN $Date: 2017-03-31 09:57:25 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_FLOW_THROUGH_SERIALIZER(
  input   clk,
  input   reset,
  output  io_in_ready,
  input   io_in_valid,
  input  [2:0] io_in_bits_addr_beat,
  input   io_in_bits_client_xact_id,
  input  [1:0] io_in_bits_manager_xact_id,
  input   io_in_bits_is_builtin_type,
  input  [3:0] io_in_bits_g_type,
  input  [63:0] io_in_bits_data,
  input   io_out_ready,
  output  io_out_valid,
  output [2:0] io_out_bits_addr_beat,
  output  io_out_bits_client_xact_id,
  output [1:0] io_out_bits_manager_xact_id,
  output  io_out_bits_is_builtin_type,
  output [3:0] io_out_bits_g_type,
  output [63:0] io_out_bits_data,
  output  io_cnt,
  output  io_done
);
  assign io_in_ready = io_out_ready;
  assign io_out_valid = io_in_valid;
  assign io_out_bits_addr_beat = io_in_bits_addr_beat;
  assign io_out_bits_client_xact_id = io_in_bits_client_xact_id;
  assign io_out_bits_manager_xact_id = io_in_bits_manager_xact_id;
  assign io_out_bits_is_builtin_type = io_in_bits_is_builtin_type;
  assign io_out_bits_g_type = io_in_bits_g_type;
  assign io_out_bits_data = io_in_bits_data;
  assign io_cnt = 1'h0;
  assign io_done = 1'h1;
endmodule
