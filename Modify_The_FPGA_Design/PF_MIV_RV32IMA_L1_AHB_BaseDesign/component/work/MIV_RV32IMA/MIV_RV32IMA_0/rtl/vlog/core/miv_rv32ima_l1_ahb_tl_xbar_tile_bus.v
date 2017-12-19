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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_XBAR_TILE_BUS(
  input         clock,
  input         reset,
  output        io_in_1_a_ready,
  input         io_in_1_a_valid,
  input  [2:0]  io_in_1_a_bits_opcode,
  input  [2:0]  io_in_1_a_bits_param,
  input  [3:0]  io_in_1_a_bits_size,
  input         io_in_1_a_bits_source,
  input  [31:0] io_in_1_a_bits_address,
  input  [3:0]  io_in_1_a_bits_mask,
  input  [31:0] io_in_1_a_bits_data,
  input         io_in_1_d_ready,
  output        io_in_1_d_valid,
  output [2:0]  io_in_1_d_bits_opcode,
  output [3:0]  io_in_1_d_bits_size,
  output [31:0] io_in_1_d_bits_data,
  output        io_in_1_d_bits_error,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_param,
  input  [3:0]  io_in_0_a_bits_size,
  input         io_in_0_a_bits_source,
  input  [31:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_b_ready,
  output        io_in_0_b_valid,
  output [1:0]  io_in_0_b_bits_param,
  output [3:0]  io_in_0_b_bits_size,
  output        io_in_0_b_bits_source,
  output [31:0] io_in_0_b_bits_address,
  output        io_in_0_c_ready,
  input         io_in_0_c_valid,
  input  [2:0]  io_in_0_c_bits_opcode,
  input  [2:0]  io_in_0_c_bits_param,
  input  [3:0]  io_in_0_c_bits_size,
  input         io_in_0_c_bits_source,
  input  [31:0] io_in_0_c_bits_address,
  input  [31:0] io_in_0_c_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [3:0]  io_in_0_d_bits_size,
  output        io_in_0_d_bits_source,
  output [1:0]  io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_e_ready,
  input         io_in_0_e_valid,
  input  [1:0]  io_in_0_e_bits_sink,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_param,
  output [3:0]  io_out_0_a_bits_size,
  output [1:0]  io_out_0_a_bits_source,
  output [31:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_b_ready,
  input         io_out_0_b_valid,
  input  [1:0]  io_out_0_b_bits_param,
  input  [3:0]  io_out_0_b_bits_size,
  input  [1:0]  io_out_0_b_bits_source,
  input  [31:0] io_out_0_b_bits_address,
  input         io_out_0_c_ready,
  output        io_out_0_c_valid,
  output [2:0]  io_out_0_c_bits_opcode,
  output [2:0]  io_out_0_c_bits_param,
  output [3:0]  io_out_0_c_bits_size,
  output [1:0]  io_out_0_c_bits_source,
  output [31:0] io_out_0_c_bits_address,
  output [31:0] io_out_0_c_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [3:0]  io_out_0_d_bits_size,
  input  [1:0]  io_out_0_d_bits_source,
  input  [1:0]  io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error,
  input         io_out_0_e_ready,
  output        io_out_0_e_valid,
  output [1:0]  io_out_0_e_bits_sink
);
  wire [1:0] in_0_a_bits_source;
  wire [1:0] in_0_c_bits_source;
  wire  _T_437;
  wire  _T_440;
  wire [1:0] _GEN_1;
  wire [1:0] _T_442;
  wire  _T_828;
  wire  _T_830;
  wire  _T_902;
  wire  _T_904;
  wire  _T_912;
  wire [26:0] _T_1068;
  wire [11:0] _T_1069;
  wire [11:0] _T_1070;
  wire [9:0] _T_1071;
  wire  _T_1072;
  wire  _T_1074;
  wire [9:0] _T_1076;
  wire [26:0] _T_1079;
  wire [11:0] _T_1080;
  wire [11:0] _T_1081;
  wire [9:0] _T_1082;
  wire  _T_1083;
  wire  _T_1085;
  wire [9:0] _T_1087;
  wire  _T_1242;
  wire  _T_1246;
  wire  _T_1336;
  wire  _T_1337;
  wire  _T_1340;
  wire  _T_1342;
  wire  _T_1343;
  reg [9:0] _T_1398;
  reg [31:0] _RAND_0;
  wire  _T_1400;
  wire  _T_1401;
  wire [1:0] _T_1402;
  wire  _T_1404;
  wire  _T_1405;
  wire  _T_1407;
  reg [1:0] _T_1411;
  reg [31:0] _RAND_1;
  wire [1:0] _T_1412;
  wire [1:0] _T_1413;
  wire [3:0] _T_1414;
  wire [2:0] _T_1415;
  wire [3:0] _GEN_2;
  wire [3:0] _T_1416;
  wire [2:0] _T_1418;
  wire [3:0] _GEN_3;
  wire [3:0] _T_1419;
  wire [3:0] _GEN_4;
  wire [3:0] _T_1420;
  wire [1:0] _T_1421;
  wire [1:0] _T_1422;
  wire [1:0] _T_1423;
  wire [1:0] _T_1424;
  wire  _T_1426;
  wire  _T_1427;
  wire [1:0] _T_1428;
  wire [2:0] _GEN_5;
  wire [2:0] _T_1429;
  wire [1:0] _T_1430;
  wire [1:0] _T_1431;
  wire [1:0] _GEN_0;
  wire  _T_1434;
  wire  _T_1435;
  wire  _T_1443;
  wire  _T_1444;
  wire  _T_1454;
  wire  _T_1458;
  wire  _T_1463;
  wire  _T_1464;
  wire  _T_1466;
  wire  _T_1468;
  wire  _T_1469;
  wire  _T_1471;
  wire  _T_1473;
  wire  _T_1474;
  wire  _T_1476;
  wire [9:0] _T_1478;
  wire [9:0] _T_1480;
  wire [9:0] _T_1481;
  wire  _T_1482;
  wire [9:0] _GEN_6;
  wire [10:0] _T_1483;
  wire [10:0] _T_1484;
  wire [9:0] _T_1485;
  wire [9:0] _T_1486;
  reg  _T_1504_0;
  reg [31:0] _RAND_2;
  reg  _T_1504_1;
  reg [31:0] _RAND_3;
  wire  _T_1515_0;
  wire  _T_1515_1;
  wire  _T_1523_0;
  wire  _T_1523_1;
  wire  _T_1531;
  wire  _T_1532;
  wire  _T_1536;
  wire  _T_1538;
  wire  _T_1539;
  wire  _T_1542;
  wire [35:0] _T_1544;
  wire [67:0] _T_1545;
  wire [5:0] _T_1546;
  wire [5:0] _T_1547;
  wire [11:0] _T_1548;
  wire [79:0] _T_1549;
  wire [79:0] _T_1551;
  wire [35:0] _T_1552;
  wire [67:0] _T_1553;
  wire [5:0] _T_1554;
  wire [5:0] _T_1555;
  wire [11:0] _T_1556;
  wire [79:0] _T_1557;
  wire [79:0] _T_1559;
  wire [79:0] _T_1560;
  wire [31:0] _T_1565;
  wire [3:0] _T_1566;
  wire [31:0] _T_1567;
  wire [1:0] _T_1568;
  wire [3:0] _T_1569;
  wire [2:0] _T_1570;
  wire [2:0] _T_1571;
  wire  _T_1598;
  wire  _T_1605;
  wire  _T_1606;
  wire  _T_1608;
  wire  _T_1670;
  wire  _T_1677;
  wire  _T_1678;
  wire  _T_1680;
  wire  _T_1742;
  wire  _T_1749;
  wire  _T_1750;
  wire  _T_1752;
  wire  _T_1814;
  wire  _T_1821;
  wire  _T_1822;
  wire  _T_1824;
  wire  _T_1887;
  wire  _T_1894;
  wire  _T_1895;
  wire  _T_1897;
  assign io_in_1_a_ready = _T_1532;
  assign io_in_1_d_valid = _T_1337;
  assign io_in_1_d_bits_opcode = io_out_0_d_bits_opcode;
  assign io_in_1_d_bits_size = io_out_0_d_bits_size;
  assign io_in_1_d_bits_data = io_out_0_d_bits_data;
  assign io_in_1_d_bits_error = io_out_0_d_bits_error;
  assign io_in_0_a_ready = _T_1531;
  assign io_in_0_b_valid = _T_1242;
  assign io_in_0_b_bits_param = io_out_0_b_bits_param;
  assign io_in_0_b_bits_size = io_out_0_b_bits_size;
  assign io_in_0_b_bits_source = _T_440;
  assign io_in_0_b_bits_address = io_out_0_b_bits_address;
  assign io_in_0_c_ready = io_out_0_c_ready;
  assign io_in_0_d_valid = _T_1336;
  assign io_in_0_d_bits_opcode = io_out_0_d_bits_opcode;
  assign io_in_0_d_bits_param = io_out_0_d_bits_param;
  assign io_in_0_d_bits_size = io_out_0_d_bits_size;
  assign io_in_0_d_bits_source = _T_437;
  assign io_in_0_d_bits_sink = io_out_0_d_bits_sink;
  assign io_in_0_d_bits_data = io_out_0_d_bits_data;
  assign io_in_0_e_ready = io_out_0_e_ready;
  assign io_out_0_a_valid = _T_1542;
  assign io_out_0_a_bits_opcode = _T_1571;
  assign io_out_0_a_bits_param = _T_1570;
  assign io_out_0_a_bits_size = _T_1569;
  assign io_out_0_a_bits_source = _T_1568;
  assign io_out_0_a_bits_address = _T_1567;
  assign io_out_0_a_bits_mask = _T_1566;
  assign io_out_0_a_bits_data = _T_1565;
  assign io_out_0_b_ready = _T_1246;
  assign io_out_0_c_valid = io_in_0_c_valid;
  assign io_out_0_c_bits_opcode = io_in_0_c_bits_opcode;
  assign io_out_0_c_bits_param = io_in_0_c_bits_param;
  assign io_out_0_c_bits_size = io_in_0_c_bits_size;
  assign io_out_0_c_bits_source = in_0_c_bits_source;
  assign io_out_0_c_bits_address = io_in_0_c_bits_address;
  assign io_out_0_c_bits_data = io_in_0_c_bits_data;
  assign io_out_0_d_ready = _T_1343;
  assign io_out_0_e_valid = io_in_0_e_valid;
  assign io_out_0_e_bits_sink = io_in_0_e_bits_sink;
  assign in_0_a_bits_source = {{1'd0}, io_in_0_a_bits_source};
  assign in_0_c_bits_source = {{1'd0}, io_in_0_c_bits_source};
  assign _T_437 = io_out_0_d_bits_source[0];
  assign _T_440 = io_out_0_b_bits_source[0];
  assign _GEN_1 = {{1'd0}, io_in_1_a_bits_source};
  assign _T_442 = _GEN_1 | 2'h2;
  assign _T_828 = io_out_0_b_bits_source[1:1];
  assign _T_830 = _T_828 == 1'h0;
  assign _T_902 = io_out_0_d_bits_source[1:1];
  assign _T_904 = _T_902 == 1'h0;
  assign _T_912 = io_out_0_d_bits_source == 2'h2;
  assign _T_1068 = 27'hfff << io_in_0_a_bits_size;
  assign _T_1069 = _T_1068[11:0];
  assign _T_1070 = ~ _T_1069;
  assign _T_1071 = _T_1070[11:2];
  assign _T_1072 = io_in_0_a_bits_opcode[2];
  assign _T_1074 = _T_1072 == 1'h0;
  assign _T_1076 = _T_1074 ? _T_1071 : 10'h0;
  assign _T_1079 = 27'hfff << io_in_1_a_bits_size;
  assign _T_1080 = _T_1079[11:0];
  assign _T_1081 = ~ _T_1080;
  assign _T_1082 = _T_1081[11:2];
  assign _T_1083 = io_in_1_a_bits_opcode[2];
  assign _T_1085 = _T_1083 == 1'h0;
  assign _T_1087 = _T_1085 ? _T_1082 : 10'h0;
  assign _T_1242 = io_out_0_b_valid & _T_830;
  assign _T_1246 = _T_830 ? io_in_0_b_ready : 1'h0;
  assign _T_1336 = io_out_0_d_valid & _T_904;
  assign _T_1337 = io_out_0_d_valid & _T_912;
  assign _T_1340 = _T_904 ? io_in_0_d_ready : 1'h0;
  assign _T_1342 = _T_912 ? io_in_1_d_ready : 1'h0;
  assign _T_1343 = _T_1340 | _T_1342;
  assign _T_1400 = _T_1398 == 10'h0;
  assign _T_1401 = _T_1400 & io_out_0_a_ready;
  assign _T_1402 = {io_in_1_a_valid,io_in_0_a_valid};
  assign _T_1404 = _T_1402 == _T_1402;
  assign _T_1405 = _T_1404 | reset;
  assign _T_1407 = _T_1405 == 1'h0;
  assign _T_1412 = ~ _T_1411;
  assign _T_1413 = _T_1402 & _T_1412;
  assign _T_1414 = {_T_1413,_T_1402};
  assign _T_1415 = _T_1414[3:1];
  assign _GEN_2 = {{1'd0}, _T_1415};
  assign _T_1416 = _T_1414 | _GEN_2;
  assign _T_1418 = _T_1416[3:1];
  assign _GEN_3 = {{2'd0}, _T_1411};
  assign _T_1419 = _GEN_3 << 2;
  assign _GEN_4 = {{1'd0}, _T_1418};
  assign _T_1420 = _GEN_4 | _T_1419;
  assign _T_1421 = _T_1420[3:2];
  assign _T_1422 = _T_1420[1:0];
  assign _T_1423 = _T_1421 & _T_1422;
  assign _T_1424 = ~ _T_1423;
  assign _T_1426 = _T_1402 != 2'h0;
  assign _T_1427 = _T_1401 & _T_1426;
  assign _T_1428 = _T_1424 & _T_1402;
  assign _GEN_5 = {{1'd0}, _T_1428};
  assign _T_1429 = _GEN_5 << 1;
  assign _T_1430 = _T_1429[1:0];
  assign _T_1431 = _T_1428 | _T_1430;
  assign _GEN_0 = _T_1427 ? _T_1431 : _T_1411;
  assign _T_1434 = _T_1424[0];
  assign _T_1435 = _T_1424[1];
  assign _T_1443 = _T_1434 & io_in_0_a_valid;
  assign _T_1444 = _T_1435 & io_in_1_a_valid;
  assign _T_1454 = _T_1443 | _T_1444;
  assign _T_1458 = _T_1443 == 1'h0;
  assign _T_1463 = _T_1444 == 1'h0;
  assign _T_1464 = _T_1458 | _T_1463;
  assign _T_1466 = _T_1464 | reset;
  assign _T_1468 = _T_1466 == 1'h0;
  assign _T_1469 = io_in_0_a_valid | io_in_1_a_valid;
  assign _T_1471 = _T_1469 == 1'h0;
  assign _T_1473 = _T_1471 | _T_1454;
  assign _T_1474 = _T_1473 | reset;
  assign _T_1476 = _T_1474 == 1'h0;
  assign _T_1478 = _T_1443 ? _T_1076 : 10'h0;
  assign _T_1480 = _T_1444 ? _T_1087 : 10'h0;
  assign _T_1481 = _T_1478 | _T_1480;
  assign _T_1482 = io_out_0_a_ready & _T_1542;
  assign _GEN_6 = {{9'd0}, _T_1482};
  assign _T_1483 = _T_1398 - _GEN_6;
  assign _T_1484 = $unsigned(_T_1483);
  assign _T_1485 = _T_1484[9:0];
  assign _T_1486 = _T_1401 ? _T_1481 : _T_1485;
  assign _T_1515_0 = _T_1400 ? _T_1443 : _T_1504_0;
  assign _T_1515_1 = _T_1400 ? _T_1444 : _T_1504_1;
  assign _T_1523_0 = _T_1400 ? _T_1434 : _T_1504_0;
  assign _T_1523_1 = _T_1400 ? _T_1435 : _T_1504_1;
  assign _T_1531 = io_out_0_a_ready & _T_1523_0;
  assign _T_1532 = io_out_0_a_ready & _T_1523_1;
  assign _T_1536 = _T_1504_0 ? io_in_0_a_valid : 1'h0;
  assign _T_1538 = _T_1504_1 ? io_in_1_a_valid : 1'h0;
  assign _T_1539 = _T_1536 | _T_1538;
  assign _T_1542 = _T_1400 ? _T_1469 : _T_1539;
  assign _T_1544 = {io_in_0_a_bits_address,io_in_0_a_bits_mask};
  assign _T_1545 = {_T_1544,io_in_0_a_bits_data};
  assign _T_1546 = {io_in_0_a_bits_size,in_0_a_bits_source};
  assign _T_1547 = {io_in_0_a_bits_opcode,io_in_0_a_bits_param};
  assign _T_1548 = {_T_1547,_T_1546};
  assign _T_1549 = {_T_1548,_T_1545};
  assign _T_1551 = _T_1515_0 ? _T_1549 : 80'h0;
  assign _T_1552 = {io_in_1_a_bits_address,io_in_1_a_bits_mask};
  assign _T_1553 = {_T_1552,io_in_1_a_bits_data};
  assign _T_1554 = {io_in_1_a_bits_size,_T_442};
  assign _T_1555 = {io_in_1_a_bits_opcode,io_in_1_a_bits_param};
  assign _T_1556 = {_T_1555,_T_1554};
  assign _T_1557 = {_T_1556,_T_1553};
  assign _T_1559 = _T_1515_1 ? _T_1557 : 80'h0;
  assign _T_1560 = _T_1551 | _T_1559;
  assign _T_1565 = _T_1560[31:0];
  assign _T_1566 = _T_1560[35:32];
  assign _T_1567 = _T_1560[67:36];
  assign _T_1568 = _T_1560[69:68];
  assign _T_1569 = _T_1560[73:70];
  assign _T_1570 = _T_1560[76:74];
  assign _T_1571 = _T_1560[79:77];
  assign _T_1598 = io_in_0_c_valid == 1'h0;
  assign _T_1605 = _T_1598 | io_in_0_c_valid;
  assign _T_1606 = _T_1605 | reset;
  assign _T_1608 = _T_1606 == 1'h0;
  assign _T_1670 = io_in_0_e_valid == 1'h0;
  assign _T_1677 = _T_1670 | io_in_0_e_valid;
  assign _T_1678 = _T_1677 | reset;
  assign _T_1680 = _T_1678 == 1'h0;
  assign _T_1742 = _T_1242 == 1'h0;
  assign _T_1749 = _T_1742 | _T_1242;
  assign _T_1750 = _T_1749 | reset;
  assign _T_1752 = _T_1750 == 1'h0;
  assign _T_1814 = _T_1336 == 1'h0;
  assign _T_1821 = _T_1814 | _T_1336;
  assign _T_1822 = _T_1821 | reset;
  assign _T_1824 = _T_1822 == 1'h0;
  assign _T_1887 = _T_1337 == 1'h0;
  assign _T_1894 = _T_1887 | _T_1337;
  assign _T_1895 = _T_1894 | reset;
  assign _T_1897 = _T_1895 == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_1398 = _RAND_0[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_1411 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_1504_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_1504_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_1398 <= 10'h0;
    end else begin
      if (_T_1401) begin
        _T_1398 <= _T_1481;
      end else begin
        _T_1398 <= _T_1485;
      end
    end
    if (reset) begin
      _T_1411 <= 2'h3;
    end else begin
      if (_T_1427) begin
        _T_1411 <= _T_1431;
      end
    end
    if (reset) begin
      _T_1504_0 <= 1'h0;
    end else begin
      if (_T_1400) begin
        _T_1504_0 <= _T_1443;
      end
    end
    if (reset) begin
      _T_1504_1 <= 1'h0;
    end else begin
      if (_T_1400) begin
        _T_1504_1 <= _T_1444;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1407) begin
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
        if (_T_1407) begin
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
        if (_T_1468) begin
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
        if (_T_1468) begin
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
        if (_T_1476) begin
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
        if (_T_1476) begin
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
        if (_T_1608) begin
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
        if (_T_1608) begin
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
        if (_T_1680) begin
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
        if (_T_1680) begin
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
        if (_T_1752) begin
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
        if (_T_1752) begin
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
        if (_T_1824) begin
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
        if (_T_1824) begin
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
        if (_T_1897) begin
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
        if (_T_1897) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
