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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_RESET_CATCH_AND_SYNC(
  input   clock,
  input   reset,
  output  io_sync_reset
);
  wire  reset_n_catch_reg_clock;
  wire  reset_n_catch_reg_reset;
  wire [2:0] reset_n_catch_reg_io_d;
  wire [2:0] reset_n_catch_reg_io_q;
  wire  reset_n_catch_reg_io_en;
  wire [1:0] _T_5;
  wire [2:0] _T_6;
  wire  _T_7;
  wire  _T_8;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_89 reset_n_catch_reg (
    .clock(reset_n_catch_reg_clock),
    .reset(reset_n_catch_reg_reset),
    .io_d(reset_n_catch_reg_io_d),
    .io_q(reset_n_catch_reg_io_q),
    .io_en(reset_n_catch_reg_io_en)
  );
  assign io_sync_reset = _T_8;
  assign reset_n_catch_reg_clock = clock;
  assign reset_n_catch_reg_reset = reset;
  assign reset_n_catch_reg_io_d = _T_6;
  assign reset_n_catch_reg_io_en = 1'h1;
  assign _T_5 = reset_n_catch_reg_io_q[2:1];
  assign _T_6 = {1'h1,_T_5};
  assign _T_7 = reset_n_catch_reg_io_q[0];
  assign _T_8 = ~ _T_7;
endmodule
