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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_JTAG_BYPASS_CHAIN(
  input   clock,
  input   reset,
  input   io_chainIn_shift,
  input   io_chainIn_data,
  input   io_chainIn_capture,
  input   io_chainIn_update,
  output  io_chainOut_data
);
  reg  reg$;
  reg [31:0] _RAND_0;
  wire  _GEN_0;
  wire  _T_7;
  wire  _T_8;
  wire  _GEN_1;
  wire  _T_9;
  wire  _T_11;
  wire  _T_12;
  wire  _T_14;
  wire  _T_15;
  wire  _T_16;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire  _T_22;
  assign io_chainOut_data = reg$;
  assign _GEN_0 = io_chainIn_capture ? 1'h0 : reg$;
  assign _T_7 = io_chainIn_capture == 1'h0;
  assign _T_8 = _T_7 & io_chainIn_shift;
  assign _GEN_1 = _T_8 ? io_chainIn_data : _GEN_0;
  assign _T_9 = io_chainIn_capture & io_chainIn_update;
  assign _T_11 = _T_9 == 1'h0;
  assign _T_12 = io_chainIn_capture & io_chainIn_shift;
  assign _T_14 = _T_12 == 1'h0;
  assign _T_15 = _T_11 & _T_14;
  assign _T_16 = io_chainIn_update & io_chainIn_shift;
  assign _T_18 = _T_16 == 1'h0;
  assign _T_19 = _T_15 & _T_18;
  assign _T_20 = _T_19 | reset;
  assign _T_22 = _T_20 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  reg$ = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_8) begin
      reg$ <= io_chainIn_data;
    end else begin
      if (io_chainIn_capture) begin
        reg$ <= 1'h0;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_22) begin
          $fwrite(32'h80000002,"Assertion failed\n    at JtagShifter.scala:68 assert(!(io.chainIn.capture && io.chainIn.update)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_22) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
