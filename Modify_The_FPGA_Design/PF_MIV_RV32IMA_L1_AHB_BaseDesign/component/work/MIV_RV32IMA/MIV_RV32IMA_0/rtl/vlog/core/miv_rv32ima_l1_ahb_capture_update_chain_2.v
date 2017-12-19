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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CAPTURE_UPDATE_CHAIN_2(
  input        clock,
  input        reset,
  input        io_chainIn_shift,
  input        io_chainIn_data,
  input        io_chainIn_capture,
  input        io_chainIn_update,
  output       io_chainOut_data,
  input  [4:0] io_capture_bits,
  output [4:0] io_update_bits
);
  reg  regs_0;
  reg [31:0] _RAND_0;
  reg  regs_1;
  reg [31:0] _RAND_1;
  reg  regs_2;
  reg [31:0] _RAND_2;
  reg  regs_3;
  reg [31:0] _RAND_3;
  reg  regs_4;
  reg [31:0] _RAND_4;
  wire [1:0] _T_12;
  wire [1:0] _T_13;
  wire [2:0] _T_14;
  wire [4:0] _T_15;
  wire  _T_18;
  wire  _T_19;
  wire  _T_20;
  wire  _T_21;
  wire  _T_22;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _GEN_4;
  wire  _T_26;
  wire  _T_33;
  wire  _T_34;
  wire  _T_35;
  wire  _GEN_9;
  wire  _GEN_10;
  wire  _GEN_11;
  wire  _GEN_12;
  wire  _GEN_13;
  wire  _T_48;
  wire  _T_50;
  wire  _T_51;
  wire  _T_53;
  wire  _T_54;
  wire  _T_55;
  wire  _T_57;
  wire  _T_58;
  wire  _T_59;
  wire  _T_61;
  assign io_chainOut_data = regs_0;
  assign io_update_bits = _T_15;
  assign _T_12 = {regs_1,regs_0};
  assign _T_13 = {regs_4,regs_3};
  assign _T_14 = {_T_13,regs_2};
  assign _T_15 = {_T_14,_T_12};
  assign _T_18 = io_capture_bits[0];
  assign _T_19 = io_capture_bits[1];
  assign _T_20 = io_capture_bits[2];
  assign _T_21 = io_capture_bits[3];
  assign _T_22 = io_capture_bits[4];
  assign _GEN_0 = io_chainIn_capture ? _T_18 : regs_0;
  assign _GEN_1 = io_chainIn_capture ? _T_19 : regs_1;
  assign _GEN_2 = io_chainIn_capture ? _T_20 : regs_2;
  assign _GEN_3 = io_chainIn_capture ? _T_21 : regs_3;
  assign _GEN_4 = io_chainIn_capture ? _T_22 : regs_4;
  assign _T_26 = io_chainIn_capture == 1'h0;
  assign _T_33 = io_chainIn_update == 1'h0;
  assign _T_34 = _T_26 & _T_33;
  assign _T_35 = _T_34 & io_chainIn_shift;
  assign _GEN_9 = _T_35 ? io_chainIn_data : _GEN_4;
  assign _GEN_10 = _T_35 ? regs_1 : _GEN_0;
  assign _GEN_11 = _T_35 ? regs_2 : _GEN_1;
  assign _GEN_12 = _T_35 ? regs_3 : _GEN_2;
  assign _GEN_13 = _T_35 ? regs_4 : _GEN_3;
  assign _T_48 = io_chainIn_capture & io_chainIn_update;
  assign _T_50 = _T_48 == 1'h0;
  assign _T_51 = io_chainIn_capture & io_chainIn_shift;
  assign _T_53 = _T_51 == 1'h0;
  assign _T_54 = _T_50 & _T_53;
  assign _T_55 = io_chainIn_update & io_chainIn_shift;
  assign _T_57 = _T_55 == 1'h0;
  assign _T_58 = _T_54 & _T_57;
  assign _T_59 = _T_58 | reset;
  assign _T_61 = _T_59 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  regs_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  regs_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  regs_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  regs_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  regs_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_35) begin
      regs_0 <= regs_1;
    end else begin
      if (io_chainIn_capture) begin
        regs_0 <= _T_18;
      end
    end
    if (_T_35) begin
      regs_1 <= regs_2;
    end else begin
      if (io_chainIn_capture) begin
        regs_1 <= _T_19;
      end
    end
    if (_T_35) begin
      regs_2 <= regs_3;
    end else begin
      if (io_chainIn_capture) begin
        regs_2 <= _T_20;
      end
    end
    if (_T_35) begin
      regs_3 <= regs_4;
    end else begin
      if (io_chainIn_capture) begin
        regs_3 <= _T_21;
      end
    end
    if (_T_35) begin
      regs_4 <= io_chainIn_data;
    end else begin
      if (io_chainIn_capture) begin
        regs_4 <= _T_22;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_61) begin
          $fwrite(32'h80000002,"Assertion failed\n    at JtagShifter.scala:174 assert(!(io.chainIn.capture && io.chainIn.update)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_61) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
