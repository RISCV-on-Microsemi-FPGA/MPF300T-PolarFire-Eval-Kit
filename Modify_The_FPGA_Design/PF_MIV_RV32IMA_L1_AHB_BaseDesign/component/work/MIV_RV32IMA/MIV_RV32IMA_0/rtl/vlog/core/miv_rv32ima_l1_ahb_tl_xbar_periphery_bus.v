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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TL_XBAR_PERIPHERY_BUS(
  input         clock,
  input         reset,
  output        io_in_0_a_ready,
  input         io_in_0_a_valid,
  input  [2:0]  io_in_0_a_bits_opcode,
  input  [2:0]  io_in_0_a_bits_size,
  input  [1:0]  io_in_0_a_bits_source,
  input  [30:0] io_in_0_a_bits_address,
  input  [3:0]  io_in_0_a_bits_mask,
  input  [31:0] io_in_0_a_bits_data,
  input         io_in_0_d_ready,
  output        io_in_0_d_valid,
  output [2:0]  io_in_0_d_bits_opcode,
  output [1:0]  io_in_0_d_bits_param,
  output [2:0]  io_in_0_d_bits_size,
  output [1:0]  io_in_0_d_bits_source,
  output        io_in_0_d_bits_sink,
  output [31:0] io_in_0_d_bits_data,
  output        io_in_0_d_bits_error,
  input         io_out_2_a_ready,
  output        io_out_2_a_valid,
  output [2:0]  io_out_2_a_bits_opcode,
  output [2:0]  io_out_2_a_bits_size,
  output [1:0]  io_out_2_a_bits_source,
  output [11:0] io_out_2_a_bits_address,
  output [3:0]  io_out_2_a_bits_mask,
  output [31:0] io_out_2_a_bits_data,
  output        io_out_2_d_ready,
  input         io_out_2_d_valid,
  input  [2:0]  io_out_2_d_bits_opcode,
  input  [1:0]  io_out_2_d_bits_param,
  input  [2:0]  io_out_2_d_bits_size,
  input  [1:0]  io_out_2_d_bits_source,
  input         io_out_2_d_bits_sink,
  input  [31:0] io_out_2_d_bits_data,
  input         io_out_2_d_bits_error,
  input         io_out_1_a_ready,
  output        io_out_1_a_valid,
  output [2:0]  io_out_1_a_bits_opcode,
  output [2:0]  io_out_1_a_bits_size,
  output [1:0]  io_out_1_a_bits_source,
  output [30:0] io_out_1_a_bits_address,
  output [3:0]  io_out_1_a_bits_mask,
  output [31:0] io_out_1_a_bits_data,
  output        io_out_1_d_ready,
  input         io_out_1_d_valid,
  input  [2:0]  io_out_1_d_bits_opcode,
  input  [1:0]  io_out_1_d_bits_param,
  input  [2:0]  io_out_1_d_bits_size,
  input  [1:0]  io_out_1_d_bits_source,
  input         io_out_1_d_bits_sink,
  input  [31:0] io_out_1_d_bits_data,
  input         io_out_1_d_bits_error,
  input         io_out_0_a_ready,
  output        io_out_0_a_valid,
  output [2:0]  io_out_0_a_bits_opcode,
  output [2:0]  io_out_0_a_bits_size,
  output [1:0]  io_out_0_a_bits_source,
  output [30:0] io_out_0_a_bits_address,
  output [3:0]  io_out_0_a_bits_mask,
  output [31:0] io_out_0_a_bits_data,
  output        io_out_0_d_ready,
  input         io_out_0_d_valid,
  input  [2:0]  io_out_0_d_bits_opcode,
  input  [1:0]  io_out_0_d_bits_param,
  input  [2:0]  io_out_0_d_bits_size,
  input  [1:0]  io_out_0_d_bits_source,
  input         io_out_0_d_bits_sink,
  input  [31:0] io_out_0_d_bits_data,
  input         io_out_0_d_bits_error
);
  wire [30:0] _T_756;
  wire [31:0] _T_757;
  wire [31:0] _T_759;
  wire [31:0] _T_760;
  wire  _T_762;
  wire [30:0] _T_764;
  wire [31:0] _T_765;
  wire [31:0] _T_767;
  wire [31:0] _T_768;
  wire  _T_770;
  wire [31:0] _T_773;
  wire [31:0] _T_775;
  wire [31:0] _T_776;
  wire  _T_778;
  wire [12:0] _T_1364;
  wire [5:0] _T_1365;
  wire [5:0] _T_1366;
  wire [3:0] _T_1367;
  wire  _T_1368;
  wire [3:0] _T_1370;
  wire [12:0] _T_1373;
  wire [5:0] _T_1374;
  wire [5:0] _T_1375;
  wire [3:0] _T_1376;
  wire  _T_1377;
  wire [3:0] _T_1379;
  wire [12:0] _T_1382;
  wire [5:0] _T_1383;
  wire [5:0] _T_1384;
  wire [3:0] _T_1385;
  wire  _T_1386;
  wire [3:0] _T_1388;
  wire  _T_1446;
  wire  _T_1447;
  wire  _T_1448;
  wire  _T_1451;
  wire  _T_1453;
  wire  _T_1455;
  wire  _T_1456;
  wire  _T_1457;
  wire  _T_1752;
  wire  _T_1759;
  wire  _T_1760;
  wire  _T_1762;
  wire  _T_1826;
  wire  _T_1833;
  wire  _T_1834;
  wire  _T_1836;
  wire  _T_1900;
  wire  _T_1907;
  wire  _T_1908;
  wire  _T_1910;
  reg [3:0] _T_1951;
  reg [31:0] _RAND_0;
  wire  _T_1953;
  wire  _T_1954;
  wire [1:0] _T_1955;
  wire [2:0] _T_1956;
  wire  _T_1958;
  wire  _T_1959;
  wire  _T_1961;
  reg [2:0] _T_1965;
  reg [31:0] _RAND_1;
  wire [2:0] _T_1966;
  wire [2:0] _T_1967;
  wire [5:0] _T_1968;
  wire [4:0] _T_1969;
  wire [5:0] _GEN_4;
  wire [5:0] _T_1970;
  wire [3:0] _T_1971;
  wire [5:0] _GEN_5;
  wire [5:0] _T_1972;
  wire [4:0] _T_1974;
  wire [5:0] _GEN_6;
  wire [5:0] _T_1975;
  wire [5:0] _GEN_7;
  wire [5:0] _T_1976;
  wire [2:0] _T_1977;
  wire [2:0] _T_1978;
  wire [2:0] _T_1979;
  wire [2:0] _T_1980;
  wire  _T_1982;
  wire  _T_1983;
  wire [2:0] _T_1984;
  wire [3:0] _GEN_8;
  wire [3:0] _T_1985;
  wire [2:0] _T_1986;
  wire [2:0] _T_1987;
  wire [4:0] _GEN_9;
  wire [4:0] _T_1988;
  wire [2:0] _T_1989;
  wire [2:0] _T_1990;
  wire [2:0] _GEN_0;
  wire  _T_1993;
  wire  _T_1994;
  wire  _T_1995;
  wire  _T_2004;
  wire  _T_2005;
  wire  _T_2006;
  wire  _T_2017;
  wire  _T_2018;
  wire  _T_2022;
  wire  _T_2027;
  wire  _T_2028;
  wire  _T_2030;
  wire  _T_2032;
  wire  _T_2033;
  wire  _T_2035;
  wire  _T_2036;
  wire  _T_2038;
  wire  _T_2039;
  wire  _T_2040;
  wire  _T_2042;
  wire  _T_2045;
  wire  _T_2046;
  wire  _T_2048;
  wire [3:0] _T_2050;
  wire [3:0] _T_2052;
  wire [3:0] _T_2054;
  wire [3:0] _T_2055;
  wire [3:0] _T_2056;
  wire  _T_2057;
  wire [3:0] _GEN_10;
  wire [4:0] _T_2058;
  wire [4:0] _T_2059;
  wire [3:0] _T_2060;
  wire [3:0] _T_2061;
  reg  _T_2083_0;
  reg [31:0] _RAND_2;
  reg  _T_2083_1;
  reg [31:0] _RAND_3;
  reg  _T_2083_2;
  reg [31:0] _RAND_4;
  wire  _T_2097_0;
  wire  _T_2097_1;
  wire  _T_2097_2;
  wire  _T_2107_0;
  wire  _T_2107_1;
  wire  _T_2107_2;
  wire  _T_2117;
  wire  _T_2118;
  wire  _T_2119;
  wire  _T_2124;
  wire  _T_2126;
  wire  _T_2128;
  wire  _T_2129;
  wire  _T_2130;
  wire  _T_2133;
  wire [32:0] _T_2135;
  wire [33:0] _T_2136;
  wire [4:0] _T_2137;
  wire [4:0] _T_2138;
  wire [9:0] _T_2139;
  wire [43:0] _T_2140;
  wire [43:0] _T_2142;
  wire [32:0] _T_2143;
  wire [33:0] _T_2144;
  wire [4:0] _T_2145;
  wire [4:0] _T_2146;
  wire [9:0] _T_2147;
  wire [43:0] _T_2148;
  wire [43:0] _T_2150;
  wire [32:0] _T_2151;
  wire [33:0] _T_2152;
  wire [4:0] _T_2153;
  wire [4:0] _T_2154;
  wire [9:0] _T_2155;
  wire [43:0] _T_2156;
  wire [43:0] _T_2158;
  wire [43:0] _T_2159;
  wire [43:0] _T_2160;
  wire  _T_2165;
  wire [31:0] _T_2166;
  wire  _T_2167;
  wire [1:0] _T_2168;
  wire [2:0] _T_2169;
  wire [1:0] _T_2170;
  wire [2:0] _T_2171;
  assign io_in_0_a_ready = _T_1457;
  assign io_in_0_d_valid = _T_2133;
  assign io_in_0_d_bits_opcode = _T_2171;
  assign io_in_0_d_bits_param = _T_2170;
  assign io_in_0_d_bits_size = _T_2169;
  assign io_in_0_d_bits_source = _T_2168;
  assign io_in_0_d_bits_sink = _T_2167;
  assign io_in_0_d_bits_data = _T_2166;
  assign io_in_0_d_bits_error = _T_2165;
  assign io_out_2_a_valid = _T_1448;
  assign io_out_2_a_bits_opcode = io_in_0_a_bits_opcode;
  assign io_out_2_a_bits_size = io_in_0_a_bits_size;
  assign io_out_2_a_bits_source = io_in_0_a_bits_source;
  assign io_out_2_a_bits_address = io_in_0_a_bits_address[11:0];
  assign io_out_2_a_bits_mask = io_in_0_a_bits_mask;
  assign io_out_2_a_bits_data = io_in_0_a_bits_data;
  assign io_out_2_d_ready = _T_2119;
  assign io_out_1_a_valid = _T_1447;
  assign io_out_1_a_bits_opcode = io_in_0_a_bits_opcode;
  assign io_out_1_a_bits_size = io_in_0_a_bits_size;
  assign io_out_1_a_bits_source = io_in_0_a_bits_source;
  assign io_out_1_a_bits_address = io_in_0_a_bits_address;
  assign io_out_1_a_bits_mask = io_in_0_a_bits_mask;
  assign io_out_1_a_bits_data = io_in_0_a_bits_data;
  assign io_out_1_d_ready = _T_2118;
  assign io_out_0_a_valid = _T_1446;
  assign io_out_0_a_bits_opcode = io_in_0_a_bits_opcode;
  assign io_out_0_a_bits_size = io_in_0_a_bits_size;
  assign io_out_0_a_bits_source = io_in_0_a_bits_source;
  assign io_out_0_a_bits_address = io_in_0_a_bits_address;
  assign io_out_0_a_bits_mask = io_in_0_a_bits_mask;
  assign io_out_0_a_bits_data = io_in_0_a_bits_data;
  assign io_out_0_d_ready = _T_2117;
  assign _T_756 = io_in_0_a_bits_address ^ 31'h40000000;
  assign _T_757 = {1'b0,$signed(_T_756)};
  assign _T_759 = $signed(_T_757) & $signed(32'sh44000000);
  assign _T_760 = $signed(_T_759);
  assign _T_762 = $signed(_T_760) == $signed(32'sh0);
  assign _T_764 = io_in_0_a_bits_address ^ 31'h44000000;
  assign _T_765 = {1'b0,$signed(_T_764)};
  assign _T_767 = $signed(_T_765) & $signed(32'sh44000000);
  assign _T_768 = $signed(_T_767);
  assign _T_770 = $signed(_T_768) == $signed(32'sh0);
  assign _T_773 = {1'b0,$signed(io_in_0_a_bits_address)};
  assign _T_775 = $signed(_T_773) & $signed(32'sh44000000);
  assign _T_776 = $signed(_T_775);
  assign _T_778 = $signed(_T_776) == $signed(32'sh0);
  assign _T_1364 = 13'h3f << io_out_0_d_bits_size;
  assign _T_1365 = _T_1364[5:0];
  assign _T_1366 = ~ _T_1365;
  assign _T_1367 = _T_1366[5:2];
  assign _T_1368 = io_out_0_d_bits_opcode[0];
  assign _T_1370 = _T_1368 ? _T_1367 : 4'h0;
  assign _T_1373 = 13'h3f << io_out_1_d_bits_size;
  assign _T_1374 = _T_1373[5:0];
  assign _T_1375 = ~ _T_1374;
  assign _T_1376 = _T_1375[5:2];
  assign _T_1377 = io_out_1_d_bits_opcode[0];
  assign _T_1379 = _T_1377 ? _T_1376 : 4'h0;
  assign _T_1382 = 13'h3f << io_out_2_d_bits_size;
  assign _T_1383 = _T_1382[5:0];
  assign _T_1384 = ~ _T_1383;
  assign _T_1385 = _T_1384[5:2];
  assign _T_1386 = io_out_2_d_bits_opcode[0];
  assign _T_1388 = _T_1386 ? _T_1385 : 4'h0;
  assign _T_1446 = io_in_0_a_valid & _T_762;
  assign _T_1447 = io_in_0_a_valid & _T_770;
  assign _T_1448 = io_in_0_a_valid & _T_778;
  assign _T_1451 = _T_762 ? io_out_0_a_ready : 1'h0;
  assign _T_1453 = _T_770 ? io_out_1_a_ready : 1'h0;
  assign _T_1455 = _T_778 ? io_out_2_a_ready : 1'h0;
  assign _T_1456 = _T_1451 | _T_1453;
  assign _T_1457 = _T_1456 | _T_1455;
  assign _T_1752 = _T_1446 == 1'h0;
  assign _T_1759 = _T_1752 | _T_1446;
  assign _T_1760 = _T_1759 | reset;
  assign _T_1762 = _T_1760 == 1'h0;
  assign _T_1826 = _T_1447 == 1'h0;
  assign _T_1833 = _T_1826 | _T_1447;
  assign _T_1834 = _T_1833 | reset;
  assign _T_1836 = _T_1834 == 1'h0;
  assign _T_1900 = _T_1448 == 1'h0;
  assign _T_1907 = _T_1900 | _T_1448;
  assign _T_1908 = _T_1907 | reset;
  assign _T_1910 = _T_1908 == 1'h0;
  assign _T_1953 = _T_1951 == 4'h0;
  assign _T_1954 = _T_1953 & io_in_0_d_ready;
  assign _T_1955 = {io_out_2_d_valid,io_out_1_d_valid};
  assign _T_1956 = {_T_1955,io_out_0_d_valid};
  assign _T_1958 = _T_1956 == _T_1956;
  assign _T_1959 = _T_1958 | reset;
  assign _T_1961 = _T_1959 == 1'h0;
  assign _T_1966 = ~ _T_1965;
  assign _T_1967 = _T_1956 & _T_1966;
  assign _T_1968 = {_T_1967,_T_1956};
  assign _T_1969 = _T_1968[5:1];
  assign _GEN_4 = {{1'd0}, _T_1969};
  assign _T_1970 = _T_1968 | _GEN_4;
  assign _T_1971 = _T_1970[5:2];
  assign _GEN_5 = {{2'd0}, _T_1971};
  assign _T_1972 = _T_1970 | _GEN_5;
  assign _T_1974 = _T_1972[5:1];
  assign _GEN_6 = {{3'd0}, _T_1965};
  assign _T_1975 = _GEN_6 << 3;
  assign _GEN_7 = {{1'd0}, _T_1974};
  assign _T_1976 = _GEN_7 | _T_1975;
  assign _T_1977 = _T_1976[5:3];
  assign _T_1978 = _T_1976[2:0];
  assign _T_1979 = _T_1977 & _T_1978;
  assign _T_1980 = ~ _T_1979;
  assign _T_1982 = _T_1956 != 3'h0;
  assign _T_1983 = _T_1954 & _T_1982;
  assign _T_1984 = _T_1980 & _T_1956;
  assign _GEN_8 = {{1'd0}, _T_1984};
  assign _T_1985 = _GEN_8 << 1;
  assign _T_1986 = _T_1985[2:0];
  assign _T_1987 = _T_1984 | _T_1986;
  assign _GEN_9 = {{2'd0}, _T_1987};
  assign _T_1988 = _GEN_9 << 2;
  assign _T_1989 = _T_1988[2:0];
  assign _T_1990 = _T_1987 | _T_1989;
  assign _GEN_0 = _T_1983 ? _T_1990 : _T_1965;
  assign _T_1993 = _T_1980[0];
  assign _T_1994 = _T_1980[1];
  assign _T_1995 = _T_1980[2];
  assign _T_2004 = _T_1993 & io_out_0_d_valid;
  assign _T_2005 = _T_1994 & io_out_1_d_valid;
  assign _T_2006 = _T_1995 & io_out_2_d_valid;
  assign _T_2017 = _T_2004 | _T_2005;
  assign _T_2018 = _T_2017 | _T_2006;
  assign _T_2022 = _T_2004 == 1'h0;
  assign _T_2027 = _T_2005 == 1'h0;
  assign _T_2028 = _T_2022 | _T_2027;
  assign _T_2030 = _T_2017 == 1'h0;
  assign _T_2032 = _T_2006 == 1'h0;
  assign _T_2033 = _T_2030 | _T_2032;
  assign _T_2035 = _T_2028 & _T_2033;
  assign _T_2036 = _T_2035 | reset;
  assign _T_2038 = _T_2036 == 1'h0;
  assign _T_2039 = io_out_0_d_valid | io_out_1_d_valid;
  assign _T_2040 = _T_2039 | io_out_2_d_valid;
  assign _T_2042 = _T_2040 == 1'h0;
  assign _T_2045 = _T_2042 | _T_2018;
  assign _T_2046 = _T_2045 | reset;
  assign _T_2048 = _T_2046 == 1'h0;
  assign _T_2050 = _T_2004 ? _T_1370 : 4'h0;
  assign _T_2052 = _T_2005 ? _T_1379 : 4'h0;
  assign _T_2054 = _T_2006 ? _T_1388 : 4'h0;
  assign _T_2055 = _T_2050 | _T_2052;
  assign _T_2056 = _T_2055 | _T_2054;
  assign _T_2057 = io_in_0_d_ready & _T_2133;
  assign _GEN_10 = {{3'd0}, _T_2057};
  assign _T_2058 = _T_1951 - _GEN_10;
  assign _T_2059 = $unsigned(_T_2058);
  assign _T_2060 = _T_2059[3:0];
  assign _T_2061 = _T_1954 ? _T_2056 : _T_2060;
  assign _T_2097_0 = _T_1953 ? _T_2004 : _T_2083_0;
  assign _T_2097_1 = _T_1953 ? _T_2005 : _T_2083_1;
  assign _T_2097_2 = _T_1953 ? _T_2006 : _T_2083_2;
  assign _T_2107_0 = _T_1953 ? _T_1993 : _T_2083_0;
  assign _T_2107_1 = _T_1953 ? _T_1994 : _T_2083_1;
  assign _T_2107_2 = _T_1953 ? _T_1995 : _T_2083_2;
  assign _T_2117 = io_in_0_d_ready & _T_2107_0;
  assign _T_2118 = io_in_0_d_ready & _T_2107_1;
  assign _T_2119 = io_in_0_d_ready & _T_2107_2;
  assign _T_2124 = _T_2083_0 ? io_out_0_d_valid : 1'h0;
  assign _T_2126 = _T_2083_1 ? io_out_1_d_valid : 1'h0;
  assign _T_2128 = _T_2083_2 ? io_out_2_d_valid : 1'h0;
  assign _T_2129 = _T_2124 | _T_2126;
  assign _T_2130 = _T_2129 | _T_2128;
  assign _T_2133 = _T_1953 ? _T_2040 : _T_2130;
  assign _T_2135 = {io_out_0_d_bits_sink,io_out_0_d_bits_data};
  assign _T_2136 = {_T_2135,io_out_0_d_bits_error};
  assign _T_2137 = {io_out_0_d_bits_size,io_out_0_d_bits_source};
  assign _T_2138 = {io_out_0_d_bits_opcode,io_out_0_d_bits_param};
  assign _T_2139 = {_T_2138,_T_2137};
  assign _T_2140 = {_T_2139,_T_2136};
  assign _T_2142 = _T_2097_0 ? _T_2140 : 44'h0;
  assign _T_2143 = {io_out_1_d_bits_sink,io_out_1_d_bits_data};
  assign _T_2144 = {_T_2143,io_out_1_d_bits_error};
  assign _T_2145 = {io_out_1_d_bits_size,io_out_1_d_bits_source};
  assign _T_2146 = {io_out_1_d_bits_opcode,io_out_1_d_bits_param};
  assign _T_2147 = {_T_2146,_T_2145};
  assign _T_2148 = {_T_2147,_T_2144};
  assign _T_2150 = _T_2097_1 ? _T_2148 : 44'h0;
  assign _T_2151 = {io_out_2_d_bits_sink,io_out_2_d_bits_data};
  assign _T_2152 = {_T_2151,io_out_2_d_bits_error};
  assign _T_2153 = {io_out_2_d_bits_size,io_out_2_d_bits_source};
  assign _T_2154 = {io_out_2_d_bits_opcode,io_out_2_d_bits_param};
  assign _T_2155 = {_T_2154,_T_2153};
  assign _T_2156 = {_T_2155,_T_2152};
  assign _T_2158 = _T_2097_2 ? _T_2156 : 44'h0;
  assign _T_2159 = _T_2142 | _T_2150;
  assign _T_2160 = _T_2159 | _T_2158;
  assign _T_2165 = _T_2160[0];
  assign _T_2166 = _T_2160[32:1];
  assign _T_2167 = _T_2160[33];
  assign _T_2168 = _T_2160[35:34];
  assign _T_2169 = _T_2160[38:36];
  assign _T_2170 = _T_2160[40:39];
  assign _T_2171 = _T_2160[43:41];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_1951 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_1965 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_2083_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_2083_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_2083_2 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_1951 <= 4'h0;
    end else begin
      if (_T_1954) begin
        _T_1951 <= _T_2056;
      end else begin
        _T_1951 <= _T_2060;
      end
    end
    if (reset) begin
      _T_1965 <= 3'h7;
    end else begin
      if (_T_1983) begin
        _T_1965 <= _T_1990;
      end
    end
    if (reset) begin
      _T_2083_0 <= 1'h0;
    end else begin
      if (_T_1953) begin
        _T_2083_0 <= _T_2004;
      end
    end
    if (reset) begin
      _T_2083_1 <= 1'h0;
    end else begin
      if (_T_1953) begin
        _T_2083_1 <= _T_2005;
      end
    end
    if (reset) begin
      _T_2083_2 <= 1'h0;
    end else begin
      if (_T_1953) begin
        _T_2083_2 <= _T_2006;
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
        if (_T_1762) begin
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
        if (_T_1762) begin
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
        if (_T_1836) begin
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
        if (_T_1836) begin
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
        if (_T_1910) begin
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
        if (_T_1910) begin
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
        if (_T_1961) begin
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
        if (_T_1961) begin
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
        if (_T_2038) begin
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
        if (_T_2038) begin
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
        if (_T_2048) begin
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
        if (_T_2048) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
