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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_XBAR_DMI_XBAR(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [1:0]  io_in_0_a_bits_size,
  input         io_in_0_a_bits_source,
  input  [8:0]  io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  input         io_out_1_a_ready,
  output        io_out_1_a_valid,
  output [2:0]  io_out_1_a_bits_opcode,
  output [1:0]  io_out_1_a_bits_size,
  output        io_out_1_a_bits_source,
  output [8:0]  io_out_1_a_bits_address,
  output [3:0]  io_out_1_a_bits_mask,
  output [31:0] io_out_1_a_bits_data,
  output        io_out_1_d_ready,
  input         io_out_1_d_valid,
  input  [2:0]  io_out_1_d_bits_opcode,
  input  [1:0]  io_out_1_d_bits_param,
  input  [1:0]  io_out_1_d_bits_size,
  input         io_out_1_d_bits_source,
  input         io_out_1_d_bits_sink,
  input  [31:0] io_out_1_d_bits_data,
  input         io_out_1_d_bits_error,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [1:0]  io_out_0_a_bits_size,
  output        io_out_0_a_bits_source,
  output [6:0]  io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [1:0]  io_out_0_d_bits_size,
  input         io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  wire [8:0] _T_634;
  wire [9:0] _T_635;
  wire [9:0] _T_637;
  wire [9:0] _T_638;
  wire  _T_640;
  wire [9:0] _T_643;
  wire [9:0] _T_645;
  wire [9:0] _T_646;
  wire  _T_648;
  wire [8:0] _T_650;
  wire [9:0] _T_651;
  wire [9:0] _T_653;
  wire [9:0] _T_654;
  wire  _T_656;
  wire [8:0] _T_658;
  wire [9:0] _T_659;
  wire [9:0] _T_661;
  wire [9:0] _T_662;
  wire  _T_664;
  wire [8:0] _T_666;
  wire [9:0] _T_667;
  wire [9:0] _T_669;
  wire [9:0] _T_670;
  wire  _T_672;
  wire [8:0] _T_674;
  wire [9:0] _T_675;
  wire [9:0] _T_677;
  wire [9:0] _T_678;
  wire  _T_680;
  wire [8:0] _T_682;
  wire [9:0] _T_683;
  wire [9:0] _T_685;
  wire [9:0] _T_686;
  wire  _T_688;
  wire [8:0] _T_690;
  wire [9:0] _T_691;
  wire [9:0] _T_693;
  wire [9:0] _T_694;
  wire  _T_696;
  wire  _T_697;
  wire  _T_698;
  wire  _T_699;
  wire  _T_700;
  wire  _T_701;
  wire  _T_702;
  wire  _T_967;
  wire  _T_975;
  wire  _T_1226;
  wire  _T_1227;
  wire  _T_1230;
  wire  _T_1232;
  wire  _T_1233;
  wire  _T_1354;
  wire  _T_1379;
  wire  _T_1450;
  wire  _T_1457;
  wire  _T_1458;
  wire  _T_1460;
  wire  _T_1524;
  wire  _T_1531;
  wire  _T_1532;
  wire  _T_1534;
  reg  _T_1575;
  reg [31:0] _RAND_0;
  wire  _T_1577;
  wire  _T_1578;
  wire [1:0] _T_1579;
  wire  _T_1581;
  wire  _T_1582;
  wire  _T_1584;
  reg [1:0] _T_1588;
  reg [31:0] _RAND_1;
  wire [1:0] _T_1589;
  wire [1:0] _T_1590;
  wire [3:0] _T_1591;
  wire [2:0] _T_1592;
  wire [3:0] _GEN_1;
  wire [3:0] _T_1593;
  wire [2:0] _T_1595;
  wire [3:0] _GEN_2;
  wire [3:0] _T_1596;
  wire [3:0] _GEN_3;
  wire [3:0] _T_1597;
  wire [1:0] _T_1598;
  wire [1:0] _T_1599;
  wire [1:0] _T_1600;
  wire [1:0] _T_1601;
  wire  _T_1603;
  wire  _T_1604;
  wire [1:0] _T_1605;
  wire [2:0] _GEN_4;
  wire [2:0] _T_1606;
  wire [1:0] _T_1607;
  wire [1:0] _T_1608;
  wire [1:0] _GEN_0;
  wire  _T_1611;
  wire  _T_1612;
  wire  _T_1620;
  wire  _T_1621;
  wire  _T_1631;
  wire  _T_1635;
  wire  _T_1640;
  wire  _T_1641;
  wire  _T_1643;
  wire  _T_1645;
  wire  _T_1646;
  wire  _T_1648;
  wire  _T_1650;
  wire  _T_1651;
  wire  _T_1653;
  wire  _T_1659;
  wire [1:0] _T_1660;
  wire [1:0] _T_1661;
  wire  _T_1662;
  wire  _T_1663;
  reg  _T_1681_0;
  reg [31:0] _RAND_2;
  reg  _T_1681_1;
  reg [31:0] _RAND_3;
  wire  _T_1692_0;
  wire  _T_1692_1;
  wire  _T_1700_0;
  wire  _T_1700_1;
  wire  _T_1708;
  wire  _T_1709;
  wire  _T_1713;
  wire  _T_1715;
  wire  _T_1716;
  wire  _T_1719;
  wire [32:0] _T_1721;
  wire [33:0] _T_1722;
  wire [2:0] _T_1723;
  wire [4:0] _T_1724;
  wire [7:0] _T_1725;
  wire [41:0] _T_1726;
  wire [41:0] _T_1728;
  wire [32:0] _T_1729;
  wire [33:0] _T_1730;
  wire [2:0] _T_1731;
  wire [4:0] _T_1732;
  wire [7:0] _T_1733;
  wire [41:0] _T_1734;
  wire [41:0] _T_1736;
  wire [41:0] _T_1737;
  wire  _T_1742;
  wire [31:0] _T_1743;
  assign io_in_0_a_ready = _T_1233;
  assign io_in_0_d_valid = _T_1719;
  assign io_in_0_d_bits_data = _T_1743;
  assign io_in_0_d_bits_error = _T_1742;
  assign io_out_1_a_valid = _T_1227;
  assign io_out_1_a_bits_opcode = io_in_0_a_bits_opcode;
  assign io_out_1_a_bits_size = io_in_0_a_bits_size;
  assign io_out_1_a_bits_source = io_in_0_a_bits_source;
  assign io_out_1_a_bits_address = io_in_0_a_bits_address;
  assign io_out_1_a_bits_mask = io_in_0_a_bits_mask;
  assign io_out_1_a_bits_data = io_in_0_a_bits_data;
  assign io_out_1_d_ready = _T_1709;
  assign io_out_0_a_valid = _T_1226;
  assign io_out_0_a_bits_opcode = io_in_0_a_bits_opcode;
  assign io_out_0_a_bits_size = io_in_0_a_bits_size;
  assign io_out_0_a_bits_source = io_in_0_a_bits_source;
  assign io_out_0_a_bits_address = io_in_0_a_bits_address[6:0];
  assign io_out_0_a_bits_mask = io_in_0_a_bits_mask;
  assign io_out_0_a_bits_data = io_in_0_a_bits_data;
  assign io_out_0_d_ready = _T_1708;
  assign _T_634 = io_in_0_a_bits_address ^ 9'h40;
  assign _T_635 = {1'b0,$signed(_T_634)};
  assign _T_637 = $signed(_T_635) & $signed(10'sh1fc);
  assign _T_638 = $signed(_T_637);
  assign _T_640 = $signed(_T_638) == $signed(10'sh0);
  assign _T_643 = {1'b0,$signed(io_in_0_a_bits_address)};
  assign _T_645 = $signed(_T_643) & $signed(10'sh1c0);
  assign _T_646 = $signed(_T_645);
  assign _T_648 = $signed(_T_646) == $signed(10'sh0);
  assign _T_650 = io_in_0_a_bits_address ^ 9'h44;
  assign _T_651 = {1'b0,$signed(_T_650)};
  assign _T_653 = $signed(_T_651) & $signed(10'sh1fc);
  assign _T_654 = $signed(_T_653);
  assign _T_656 = $signed(_T_654) == $signed(10'sh0);
  assign _T_658 = io_in_0_a_bits_address ^ 9'h48;
  assign _T_659 = {1'b0,$signed(_T_658)};
  assign _T_661 = $signed(_T_659) & $signed(10'sh1f8);
  assign _T_662 = $signed(_T_661);
  assign _T_664 = $signed(_T_662) == $signed(10'sh0);
  assign _T_666 = io_in_0_a_bits_address ^ 9'h50;
  assign _T_667 = {1'b0,$signed(_T_666)};
  assign _T_669 = $signed(_T_667) & $signed(10'sh1f0);
  assign _T_670 = $signed(_T_669);
  assign _T_672 = $signed(_T_670) == $signed(10'sh0);
  assign _T_674 = io_in_0_a_bits_address ^ 9'h60;
  assign _T_675 = {1'b0,$signed(_T_674)};
  assign _T_677 = $signed(_T_675) & $signed(10'sh1e0);
  assign _T_678 = $signed(_T_677);
  assign _T_680 = $signed(_T_678) == $signed(10'sh0);
  assign _T_682 = io_in_0_a_bits_address ^ 9'h80;
  assign _T_683 = {1'b0,$signed(_T_682)};
  assign _T_685 = $signed(_T_683) & $signed(10'sh180);
  assign _T_686 = $signed(_T_685);
  assign _T_688 = $signed(_T_686) == $signed(10'sh0);
  assign _T_690 = io_in_0_a_bits_address ^ 9'h100;
  assign _T_691 = {1'b0,$signed(_T_690)};
  assign _T_693 = $signed(_T_691) & $signed(10'sh100);
  assign _T_694 = $signed(_T_693);
  assign _T_696 = $signed(_T_694) == $signed(10'sh0);
  assign _T_697 = _T_648 | _T_656;
  assign _T_698 = _T_697 | _T_664;
  assign _T_699 = _T_698 | _T_672;
  assign _T_700 = _T_699 | _T_680;
  assign _T_701 = _T_700 | _T_688;
  assign _T_702 = _T_701 | _T_696;
  assign _T_967 = io_out_0_d_bits_source == 1'h0;
  assign _T_975 = io_out_1_d_bits_source == 1'h0;
  assign _T_1226 = io_in_0_a_valid & _T_640;
  assign _T_1227 = io_in_0_a_valid & _T_702;
  assign _T_1230 = _T_640 ? io_out_0_a_ready : 1'h0;
  assign _T_1232 = _T_702 ? io_out_1_a_ready : 1'h0;
  assign _T_1233 = _T_1230 | _T_1232;
  assign _T_1354 = io_out_0_d_valid & _T_967;
  assign _T_1379 = io_out_1_d_valid & _T_975;
  assign _T_1450 = _T_1226 == 1'h0;
  assign _T_1457 = _T_1450 | _T_1226;
  assign _T_1458 = _T_1457 | reset;
  assign _T_1460 = _T_1458 == 1'h0;
  assign _T_1524 = _T_1227 == 1'h0;
  assign _T_1531 = _T_1524 | _T_1227;
  assign _T_1532 = _T_1531 | reset;
  assign _T_1534 = _T_1532 == 1'h0;
  assign _T_1577 = _T_1575 == 1'h0;
  assign _T_1578 = _T_1577 & io_in_0_d_ready;
  assign _T_1579 = {_T_1379,_T_1354};
  assign _T_1581 = _T_1579 == _T_1579;
  assign _T_1582 = _T_1581 | reset;
  assign _T_1584 = _T_1582 == 1'h0;
  assign _T_1589 = ~ _T_1588;
  assign _T_1590 = _T_1579 & _T_1589;
  assign _T_1591 = {_T_1590,_T_1579};
  assign _T_1592 = _T_1591[3:1];
  assign _GEN_1 = {{1'd0}, _T_1592};
  assign _T_1593 = _T_1591 | _GEN_1;
  assign _T_1595 = _T_1593[3:1];
  assign _GEN_2 = {{2'd0}, _T_1588};
  assign _T_1596 = _GEN_2 << 2;
  assign _GEN_3 = {{1'd0}, _T_1595};
  assign _T_1597 = _GEN_3 | _T_1596;
  assign _T_1598 = _T_1597[3:2];
  assign _T_1599 = _T_1597[1:0];
  assign _T_1600 = _T_1598 & _T_1599;
  assign _T_1601 = ~ _T_1600;
  assign _T_1603 = _T_1579 != 2'h0;
  assign _T_1604 = _T_1578 & _T_1603;
  assign _T_1605 = _T_1601 & _T_1579;
  assign _GEN_4 = {{1'd0}, _T_1605};
  assign _T_1606 = _GEN_4 << 1;
  assign _T_1607 = _T_1606[1:0];
  assign _T_1608 = _T_1605 | _T_1607;
  assign _GEN_0 = _T_1604 ? _T_1608 : _T_1588;
  assign _T_1611 = _T_1601[0];
  assign _T_1612 = _T_1601[1];
  assign _T_1620 = _T_1611 & _T_1354;
  assign _T_1621 = _T_1612 & _T_1379;
  assign _T_1631 = _T_1620 | _T_1621;
  assign _T_1635 = _T_1620 == 1'h0;
  assign _T_1640 = _T_1621 == 1'h0;
  assign _T_1641 = _T_1635 | _T_1640;
  assign _T_1643 = _T_1641 | reset;
  assign _T_1645 = _T_1643 == 1'h0;
  assign _T_1646 = _T_1354 | _T_1379;
  assign _T_1648 = _T_1646 == 1'h0;
  assign _T_1650 = _T_1648 | _T_1631;
  assign _T_1651 = _T_1650 | reset;
  assign _T_1653 = _T_1651 == 1'h0;
  assign _T_1659 = io_in_0_d_ready & _T_1719;
  assign _T_1660 = _T_1575 - _T_1659;
  assign _T_1661 = $unsigned(_T_1660);
  assign _T_1662 = _T_1661[0:0];
  assign _T_1663 = _T_1578 ? 1'h0 : _T_1662;
  assign _T_1692_0 = _T_1577 ? _T_1620 : _T_1681_0;
  assign _T_1692_1 = _T_1577 ? _T_1621 : _T_1681_1;
  assign _T_1700_0 = _T_1577 ? _T_1611 : _T_1681_0;
  assign _T_1700_1 = _T_1577 ? _T_1612 : _T_1681_1;
  assign _T_1708 = io_in_0_d_ready & _T_1700_0;
  assign _T_1709 = io_in_0_d_ready & _T_1700_1;
  assign _T_1713 = _T_1681_0 ? _T_1354 : 1'h0;
  assign _T_1715 = _T_1681_1 ? _T_1379 : 1'h0;
  assign _T_1716 = _T_1713 | _T_1715;
  assign _T_1719 = _T_1577 ? _T_1646 : _T_1716;
  assign _T_1721 = {io_out_0_d_bits_sink,io_out_0_d_bits_data};
  assign _T_1722 = {_T_1721,io_out_0_d_bits_error};
  assign _T_1723 = {io_out_0_d_bits_size,io_out_0_d_bits_source};
  assign _T_1724 = {io_out_0_d_bits_opcode,io_out_0_d_bits_param};
  assign _T_1725 = {_T_1724,_T_1723};
  assign _T_1726 = {_T_1725,_T_1722};
  assign _T_1728 = _T_1692_0 ? _T_1726 : 42'h0;
  assign _T_1729 = {io_out_1_d_bits_sink,io_out_1_d_bits_data};
  assign _T_1730 = {_T_1729,io_out_1_d_bits_error};
  assign _T_1731 = {io_out_1_d_bits_size,io_out_1_d_bits_source};
  assign _T_1732 = {io_out_1_d_bits_opcode,io_out_1_d_bits_param};
  assign _T_1733 = {_T_1732,_T_1731};
  assign _T_1734 = {_T_1733,_T_1730};
  assign _T_1736 = _T_1692_1 ? _T_1734 : 42'h0;
  assign _T_1737 = _T_1728 | _T_1736;
  assign _T_1742 = _T_1737[0];
  assign _T_1743 = _T_1737[32:1];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_1575 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_1588 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_1681_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_1681_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_1575 <= 1'h0;
    end else begin
      if (_T_1578) begin
        _T_1575 <= 1'h0;
      end else begin
        _T_1575 <= _T_1662;
      end
    end
    if (reset) begin
      _T_1588 <= 2'h3;
    end else begin
      if (_T_1604) begin
        _T_1588 <= _T_1608;
      end
    end
    if (reset) begin
      _T_1681_0 <= 1'h0;
    end else begin
      if (_T_1577) begin
        _T_1681_0 <= _T_1620;
      end
    end
    if (reset) begin
      _T_1681_1 <= 1'h0;
    end else begin
      if (_T_1577) begin
        _T_1681_1 <= _T_1621;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:66 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1460) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:68 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1460) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:66 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1534) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:68 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1534) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1584) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:19 assert (valid === valids)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1584) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1645) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:66 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1645) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1653) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:68 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1653) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
