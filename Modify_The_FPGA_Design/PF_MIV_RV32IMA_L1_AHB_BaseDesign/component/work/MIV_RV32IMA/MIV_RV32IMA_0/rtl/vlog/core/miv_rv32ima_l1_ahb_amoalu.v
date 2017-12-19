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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_AMOALU(
  input  [3:0]  io_mask,
  input  [4:0]  io_cmd,
  input  [31:0] io_lhs,
  input  [31:0] io_rhs,
  output [31:0] io_out
);
  wire  _T_8;
  wire  _T_10;
  wire  max;
  wire  _T_12;
  wire  _T_14;
  wire  min;
  wire  add;
  wire  _T_17;
  wire  _T_19;
  wire  logic_and;
  wire  _T_21;
  wire  logic_xor;
  wire [32:0] _T_24;
  wire [31:0] adder_out;
  wire [4:0] _T_28;
  wire  _T_31;
  wire  _T_32;
  wire  _T_33;
  wire  _T_34;
  wire  _T_35;
  wire  _T_38;
  wire  less;
  wire  _T_39;
  wire [31:0] minmax;
  wire [31:0] _T_40;
  wire [31:0] _T_42;
  wire [31:0] _T_43;
  wire [31:0] _T_45;
  wire [31:0] logic$;
  wire  _T_46;
  wire [31:0] _T_47;
  wire [31:0] out;
  wire  _T_48;
  wire  _T_49;
  wire  _T_50;
  wire  _T_51;
  wire [7:0] _T_55;
  wire [7:0] _T_59;
  wire [7:0] _T_63;
  wire [7:0] _T_67;
  wire [15:0] _T_68;
  wire [15:0] _T_69;
  wire [31:0] wmask;
  wire [31:0] _T_70;
  wire [31:0] _T_71;
  wire [31:0] _T_72;
  wire [31:0] _T_73;
  assign io_out = _T_73;
  assign _T_8 = io_cmd == 5'hd;
  assign _T_10 = io_cmd == 5'hf;
  assign max = _T_8 | _T_10;
  assign _T_12 = io_cmd == 5'hc;
  assign _T_14 = io_cmd == 5'he;
  assign min = _T_12 | _T_14;
  assign add = io_cmd == 5'h8;
  assign _T_17 = io_cmd == 5'ha;
  assign _T_19 = io_cmd == 5'hb;
  assign logic_and = _T_17 | _T_19;
  assign _T_21 = io_cmd == 5'h9;
  assign logic_xor = _T_21 | _T_17;
  assign _T_24 = io_lhs + io_rhs;
  assign adder_out = _T_24[31:0];
  assign _T_28 = io_cmd & 5'h2;
  assign _T_31 = _T_28 == 5'h0;
  assign _T_32 = io_lhs[31];
  assign _T_33 = io_rhs[31];
  assign _T_34 = _T_32 == _T_33;
  assign _T_35 = io_lhs < io_rhs;
  assign _T_38 = _T_31 ? _T_32 : _T_33;
  assign less = _T_34 ? _T_35 : _T_38;
  assign _T_39 = less ? min : max;
  assign minmax = _T_39 ? io_lhs : io_rhs;
  assign _T_40 = io_lhs & io_rhs;
  assign _T_42 = logic_and ? _T_40 : 32'h0;
  assign _T_43 = io_lhs ^ io_rhs;
  assign _T_45 = logic_xor ? _T_43 : 32'h0;
  assign logic$ = _T_42 | _T_45;
  assign _T_46 = logic_and | logic_xor;
  assign _T_47 = _T_46 ? logic$ : minmax;
  assign out = add ? adder_out : _T_47;
  assign _T_48 = io_mask[0];
  assign _T_49 = io_mask[1];
  assign _T_50 = io_mask[2];
  assign _T_51 = io_mask[3];
  assign _T_55 = _T_48 ? 8'hff : 8'h0;
  assign _T_59 = _T_49 ? 8'hff : 8'h0;
  assign _T_63 = _T_50 ? 8'hff : 8'h0;
  assign _T_67 = _T_51 ? 8'hff : 8'h0;
  assign _T_68 = {_T_59,_T_55};
  assign _T_69 = {_T_67,_T_63};
  assign wmask = {_T_69,_T_68};
  assign _T_70 = wmask & out;
  assign _T_71 = ~ wmask;
  assign _T_72 = _T_71 & io_lhs;
  assign _T_73 = _T_70 | _T_72;
endmodule
