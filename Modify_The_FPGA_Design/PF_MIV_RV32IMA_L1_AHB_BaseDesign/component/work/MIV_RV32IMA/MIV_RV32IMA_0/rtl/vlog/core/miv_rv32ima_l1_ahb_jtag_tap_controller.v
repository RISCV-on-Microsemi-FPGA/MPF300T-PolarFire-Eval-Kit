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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_JTAG_TAP_CONTROLLER(
  input        clock,
  input        reset,
  input        io_jtag_TMS,
  input        io_jtag_TDI,
  output       io_jtag_TDO_data,
  output       io_jtag_TDO_driven,
  input        io_control_jtag_reset,
  output [4:0] io_output_instruction,
  output       io_output_reset,
  output       io_dataChainOut_shift,
  output       io_dataChainOut_data,
  output       io_dataChainOut_capture,
  output       io_dataChainOut_update,
  input        io_dataChainIn_data
);
  wire  _T_20;
  wire  _T_22;
  wire  _T_23;
  wire  tdoReg_clock;
  wire  tdoReg_io_next;
  wire  tdoReg_io_enable;
  wire  tdoReg_io_output;
  wire  tdoeReg_clock;
  wire  tdoeReg_io_next;
  wire  tdoeReg_io_enable;
  wire  tdoeReg_io_output;
  wire  stateMachine_clock;
  wire  stateMachine_io_tms;
  wire [3:0] stateMachine_io_currState;
  wire  stateMachine_io_jtag_reset;
  wire  irChain_clock;
  wire  irChain_reset;
  wire  irChain_io_chainIn_shift;
  wire  irChain_io_chainIn_data;
  wire  irChain_io_chainIn_capture;
  wire  irChain_io_chainIn_update;
  wire  irChain_io_chainOut_data;
  wire [4:0] irChain_io_capture_bits;
  wire [4:0] irChain_io_update_bits;
  wire  _T_34;
  wire  _T_36;
  wire  _T_38;
  wire  irReg_clock;
  wire [4:0] irReg_io_next;
  wire  irReg_io_enable;
  wire [4:0] irReg_io_output;
  wire  _T_52;
  wire  _T_53;
  wire [4:0] _GEN_2;
  wire  _T_58;
  wire  _T_59;
  wire  _GEN_4;
  wire  _T_62;
  wire  _T_64;
  wire  _T_66;
  wire  _T_68;
  wire  _T_75;
  wire  _T_76;
  wire  _GEN_7;
  wire  _T_81;
  wire  _T_82;
  wire  _GEN_9;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_NEGATIVE_EDGE_LATCH tdoReg (
    .clock(tdoReg_clock),
    .io_next(tdoReg_io_next),
    .io_enable(tdoReg_io_enable),
    .io_output(tdoReg_io_output)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_NEGATIVE_EDGE_LATCH tdoeReg (
    .clock(tdoeReg_clock),
    .io_next(tdoeReg_io_next),
    .io_enable(tdoeReg_io_enable),
    .io_output(tdoeReg_io_output)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_JTAG_STATE_MACHINE stateMachine (
    .clock(stateMachine_clock),
    .io_tms(stateMachine_io_tms),
    .io_currState(stateMachine_io_currState),
    .io_jtag_reset(stateMachine_io_jtag_reset)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CAPTURE_UPDATE_CHAIN_2 irChain (
    .clock(irChain_clock),
    .reset(irChain_reset),
    .io_chainIn_shift(irChain_io_chainIn_shift),
    .io_chainIn_data(irChain_io_chainIn_data),
    .io_chainIn_capture(irChain_io_chainIn_capture),
    .io_chainIn_update(irChain_io_chainIn_update),
    .io_chainOut_data(irChain_io_chainOut_data),
    .io_capture_bits(irChain_io_capture_bits),
    .io_update_bits(irChain_io_update_bits)
  );
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_NEGATIVE_EDGE_LATCH_2 irReg (
    .clock(irReg_clock),
    .io_next(irReg_io_next),
    .io_enable(irReg_io_enable),
    .io_output(irReg_io_output)
  );
  assign io_jtag_TDO_data = tdoReg_io_output;
  assign io_jtag_TDO_driven = tdoeReg_io_output;
  assign io_output_instruction = irReg_io_output;
  assign io_output_reset = _T_62;
  assign io_dataChainOut_shift = _T_64;
  assign io_dataChainOut_data = io_jtag_TDI;
  assign io_dataChainOut_capture = _T_66;
  assign io_dataChainOut_update = _T_68;
  assign _T_20 = $unsigned(clock);
  assign _T_22 = _T_20 == 1'h0;
  assign _T_23 = $unsigned(_T_22);
  assign tdoReg_clock = _T_23;
  assign tdoReg_io_next = _GEN_7;
  assign tdoReg_io_enable = 1'h1;
  assign tdoeReg_clock = _T_23;
  assign tdoeReg_io_next = _GEN_9;
  assign tdoeReg_io_enable = 1'h1;
  assign stateMachine_clock = clock;
  assign stateMachine_io_tms = io_jtag_TMS;
  assign stateMachine_io_jtag_reset = io_control_jtag_reset;
  assign irChain_clock = clock;
  assign irChain_reset = reset;
  assign irChain_io_chainIn_shift = _T_34;
  assign irChain_io_chainIn_data = io_jtag_TDI;
  assign irChain_io_chainIn_capture = _T_36;
  assign irChain_io_chainIn_update = _T_38;
  assign irChain_io_capture_bits = 5'h1;
  assign _T_34 = stateMachine_io_currState == 4'ha;
  assign _T_36 = stateMachine_io_currState == 4'he;
  assign _T_38 = stateMachine_io_currState == 4'hd;
  assign irReg_clock = _T_23;
  assign irReg_io_next = _GEN_2;
  assign irReg_io_enable = _GEN_4;
  assign _T_52 = reset == 1'h0;
  assign _T_53 = _T_52 & _T_38;
  assign _GEN_2 = _T_53 ? irChain_io_update_bits : 5'h1;
  assign _T_58 = _T_38 == 1'h0;
  assign _T_59 = _T_52 & _T_58;
  assign _GEN_4 = _T_59 ? 1'h0 : 1'h1;
  assign _T_62 = stateMachine_io_currState == 4'hf;
  assign _T_64 = stateMachine_io_currState == 4'h2;
  assign _T_66 = stateMachine_io_currState == 4'h6;
  assign _T_68 = stateMachine_io_currState == 4'h5;
  assign _T_75 = _T_64 == 1'h0;
  assign _T_76 = _T_75 & _T_34;
  assign _GEN_7 = _T_76 ? irChain_io_chainOut_data : io_dataChainIn_data;
  assign _T_81 = _T_34 == 1'h0;
  assign _T_82 = _T_75 & _T_81;
  assign _GEN_9 = _T_82 ? 1'h0 : 1'h1;
endmodule
