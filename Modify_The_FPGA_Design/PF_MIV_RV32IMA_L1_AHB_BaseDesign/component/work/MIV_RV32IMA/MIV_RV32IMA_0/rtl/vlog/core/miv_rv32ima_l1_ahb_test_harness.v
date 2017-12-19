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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_TEST_HARNESS(
  input   clock,
  input   reset,
  output  io_success
);
  wire  CoreRISCVahbTop_clock;
  wire  CoreRISCVahbTop_reset;
  wire  CoreRISCVahbTop_debug_systemjtag_jtag_TCK;
  wire  CoreRISCVahbTop_debug_systemjtag_jtag_TMS;
  wire  CoreRISCVahbTop_debug_systemjtag_jtag_TDI;
  wire  CoreRISCVahbTop_debug_systemjtag_jtag_TDO_data;
  wire  CoreRISCVahbTop_debug_systemjtag_jtag_TDO_driven;
  wire  CoreRISCVahbTop_debug_systemjtag_reset;
  wire [10:0] CoreRISCVahbTop_debug_systemjtag_mfr_id;
  wire  CoreRISCVahbTop_debug_ndreset;
  wire [30:0] CoreRISCVahbTop_interrupts;
  wire  CoreRISCVahbTop_mem_ahb_0_hmastlock;
  wire [1:0] CoreRISCVahbTop_mem_ahb_0_htrans;
  wire  CoreRISCVahbTop_mem_ahb_0_hsel;
  wire  CoreRISCVahbTop_mem_ahb_0_hready;
  wire  CoreRISCVahbTop_mem_ahb_0_hwrite;
  wire [31:0] CoreRISCVahbTop_mem_ahb_0_haddr;
  wire [2:0] CoreRISCVahbTop_mem_ahb_0_hsize;
  wire [2:0] CoreRISCVahbTop_mem_ahb_0_hburst;
  wire [3:0] CoreRISCVahbTop_mem_ahb_0_hprot;
  wire [31:0] CoreRISCVahbTop_mem_ahb_0_hwdata;
  wire  CoreRISCVahbTop_mem_ahb_0_hreadyout;
  wire  CoreRISCVahbTop_mem_ahb_0_hresp;
  wire [31:0] CoreRISCVahbTop_mem_ahb_0_hrdata;
  wire  CoreRISCVahbTop_mmio_ahb_0_hmastlock;
  wire [1:0] CoreRISCVahbTop_mmio_ahb_0_htrans;
  wire  CoreRISCVahbTop_mmio_ahb_0_hsel;
  wire  CoreRISCVahbTop_mmio_ahb_0_hready;
  wire  CoreRISCVahbTop_mmio_ahb_0_hwrite;
  wire [30:0] CoreRISCVahbTop_mmio_ahb_0_haddr;
  wire [2:0] CoreRISCVahbTop_mmio_ahb_0_hsize;
  wire [2:0] CoreRISCVahbTop_mmio_ahb_0_hburst;
  wire [3:0] CoreRISCVahbTop_mmio_ahb_0_hprot;
  wire [31:0] CoreRISCVahbTop_mmio_ahb_0_hwdata;
  wire  CoreRISCVahbTop_mmio_ahb_0_hreadyout;
  wire  CoreRISCVahbTop_mmio_ahb_0_hresp;
  wire [31:0] CoreRISCVahbTop_mmio_ahb_0_hrdata;
  wire [31:0] CoreRISCVahbTop_reset_vector;
  wire  _T_3;
  wire [63:0] MirroredMasterAHBInterface_hrdata;
  wire  MirroredMasterAHBInterface_hresp;
  wire  MirroredMasterAHBInterface_hreadyout;
  wire [63:0] MirroredMasterAHBInterface_hwdata;
  wire [3:0] MirroredMasterAHBInterface_hprot;
  wire [3:0] MirroredMasterAHBInterface_hburst;
  wire [2:0] MirroredMasterAHBInterface_hsize;
  wire [31:0] MirroredMasterAHBInterface_haddr;
  wire  MirroredMasterAHBInterface_hwrite;
  wire  MirroredMasterAHBInterface_hready;
  wire  MirroredMasterAHBInterface_hsel;
  wire [1:0] MirroredMasterAHBInterface_htrans;
  wire  MirroredMasterAHBInterface_hmastlock;
  wire  JTAGVPI_init_done;
  wire  JTAGVPI_enable;
  wire  JTAGVPI_jtag_TCK;
  wire  JTAGVPI_jtag_TMS;
  wire  JTAGVPI_jtag_TDI;
  wire  JTAGVPI_jtag_TDO_data;
  wire  JTAGVPI_jtag_TDO_driven;
  wire  _T_7;
  wire [63:0] MirroredMasterAHBInterface_1_hrdata;
  wire  MirroredMasterAHBInterface_1_hresp;
  wire  MirroredMasterAHBInterface_1_hreadyout;
  wire [63:0] MirroredMasterAHBInterface_1_hwdata;
  wire [3:0] MirroredMasterAHBInterface_1_hprot;
  wire [3:0] MirroredMasterAHBInterface_1_hburst;
  wire [2:0] MirroredMasterAHBInterface_1_hsize;
  wire [31:0] MirroredMasterAHBInterface_1_haddr;
  wire  MirroredMasterAHBInterface_1_hwrite;
  wire  MirroredMasterAHBInterface_1_hready;
  wire  MirroredMasterAHBInterface_1_hsel;
  wire [1:0] MirroredMasterAHBInterface_1_htrans;
  wire  MirroredMasterAHBInterface_1_hmastlock;
  MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CORE_RISC_VAHB_TOP MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CORE_RISC_VAHB_TOP (
    .clock(CoreRISCVahbTop_clock),
    .reset(CoreRISCVahbTop_reset),
    .debug_systemjtag_jtag_TCK(CoreRISCVahbTop_debug_systemjtag_jtag_TCK),
    .debug_systemjtag_jtag_TMS(CoreRISCVahbTop_debug_systemjtag_jtag_TMS),
    .debug_systemjtag_jtag_TDI(CoreRISCVahbTop_debug_systemjtag_jtag_TDI),
    .debug_systemjtag_jtag_TDO_data(CoreRISCVahbTop_debug_systemjtag_jtag_TDO_data),
    .debug_systemjtag_jtag_TDO_driven(CoreRISCVahbTop_debug_systemjtag_jtag_TDO_driven),
    .debug_systemjtag_reset(CoreRISCVahbTop_debug_systemjtag_reset),
    .debug_systemjtag_mfr_id(CoreRISCVahbTop_debug_systemjtag_mfr_id),
    .debug_ndreset(CoreRISCVahbTop_debug_ndreset),
    .interrupts(CoreRISCVahbTop_interrupts),
    .mem_ahb_0_hmastlock(CoreRISCVahbTop_mem_ahb_0_hmastlock),
    .mem_ahb_0_htrans(CoreRISCVahbTop_mem_ahb_0_htrans),
    .mem_ahb_0_hsel(CoreRISCVahbTop_mem_ahb_0_hsel),
    .mem_ahb_0_hready(CoreRISCVahbTop_mem_ahb_0_hready),
    .mem_ahb_0_hwrite(CoreRISCVahbTop_mem_ahb_0_hwrite),
    .mem_ahb_0_haddr(CoreRISCVahbTop_mem_ahb_0_haddr),
    .mem_ahb_0_hsize(CoreRISCVahbTop_mem_ahb_0_hsize),
    .mem_ahb_0_hburst(CoreRISCVahbTop_mem_ahb_0_hburst),
    .mem_ahb_0_hprot(CoreRISCVahbTop_mem_ahb_0_hprot),
    .mem_ahb_0_hwdata(CoreRISCVahbTop_mem_ahb_0_hwdata),
    .mem_ahb_0_hreadyout(CoreRISCVahbTop_mem_ahb_0_hreadyout),
    .mem_ahb_0_hresp(CoreRISCVahbTop_mem_ahb_0_hresp),
    .mem_ahb_0_hrdata(CoreRISCVahbTop_mem_ahb_0_hrdata),
    .mmio_ahb_0_hmastlock(CoreRISCVahbTop_mmio_ahb_0_hmastlock),
    .mmio_ahb_0_htrans(CoreRISCVahbTop_mmio_ahb_0_htrans),
    .mmio_ahb_0_hsel(CoreRISCVahbTop_mmio_ahb_0_hsel),
    .mmio_ahb_0_hready(CoreRISCVahbTop_mmio_ahb_0_hready),
    .mmio_ahb_0_hwrite(CoreRISCVahbTop_mmio_ahb_0_hwrite),
    .mmio_ahb_0_haddr(CoreRISCVahbTop_mmio_ahb_0_haddr),
    .mmio_ahb_0_hsize(CoreRISCVahbTop_mmio_ahb_0_hsize),
    .mmio_ahb_0_hburst(CoreRISCVahbTop_mmio_ahb_0_hburst),
    .mmio_ahb_0_hprot(CoreRISCVahbTop_mmio_ahb_0_hprot),
    .mmio_ahb_0_hwdata(CoreRISCVahbTop_mmio_ahb_0_hwdata),
    .mmio_ahb_0_hreadyout(CoreRISCVahbTop_mmio_ahb_0_hreadyout),
    .mmio_ahb_0_hresp(CoreRISCVahbTop_mmio_ahb_0_hresp),
    .mmio_ahb_0_hrdata(CoreRISCVahbTop_mmio_ahb_0_hrdata),
    .reset_vector(CoreRISCVahbTop_reset_vector)
  );
  MirroredMasterAHBInterface MirroredMasterAHBInterface (
    .hrdata(MirroredMasterAHBInterface_hrdata),
    .hresp(MirroredMasterAHBInterface_hresp),
    .hreadyout(MirroredMasterAHBInterface_hreadyout),
    .hwdata(MirroredMasterAHBInterface_hwdata),
    .hprot(MirroredMasterAHBInterface_hprot),
    .hburst(MirroredMasterAHBInterface_hburst),
    .hsize(MirroredMasterAHBInterface_hsize),
    .haddr(MirroredMasterAHBInterface_haddr),
    .hwrite(MirroredMasterAHBInterface_hwrite),
    .hready(MirroredMasterAHBInterface_hready),
    .hsel(MirroredMasterAHBInterface_hsel),
    .htrans(MirroredMasterAHBInterface_htrans),
    .hmastlock(MirroredMasterAHBInterface_hmastlock)
  );
  JTAGVPI JTAGVPI (
    .init_done(JTAGVPI_init_done),
    .enable(JTAGVPI_enable),
    .jtag_TCK(JTAGVPI_jtag_TCK),
    .jtag_TMS(JTAGVPI_jtag_TMS),
    .jtag_TDI(JTAGVPI_jtag_TDI),
    .jtag_TDO_data(JTAGVPI_jtag_TDO_data),
    .jtag_TDO_driven(JTAGVPI_jtag_TDO_driven)
  );
  MirroredMasterAHBInterface MirroredMasterAHBInterface_1 (
    .hrdata(MirroredMasterAHBInterface_1_hrdata),
    .hresp(MirroredMasterAHBInterface_1_hresp),
    .hreadyout(MirroredMasterAHBInterface_1_hreadyout),
    .hwdata(MirroredMasterAHBInterface_1_hwdata),
    .hprot(MirroredMasterAHBInterface_1_hprot),
    .hburst(MirroredMasterAHBInterface_1_hburst),
    .hsize(MirroredMasterAHBInterface_1_hsize),
    .haddr(MirroredMasterAHBInterface_1_haddr),
    .hwrite(MirroredMasterAHBInterface_1_hwrite),
    .hready(MirroredMasterAHBInterface_1_hready),
    .hsel(MirroredMasterAHBInterface_1_hsel),
    .htrans(MirroredMasterAHBInterface_1_htrans),
    .hmastlock(MirroredMasterAHBInterface_1_hmastlock)
  );
  assign io_success = 1'h0;
  assign CoreRISCVahbTop_clock = clock;
  assign CoreRISCVahbTop_reset = _T_3;
  assign CoreRISCVahbTop_debug_systemjtag_jtag_TCK = JTAGVPI_jtag_TCK;
  assign CoreRISCVahbTop_debug_systemjtag_jtag_TMS = JTAGVPI_jtag_TMS;
  assign CoreRISCVahbTop_debug_systemjtag_jtag_TDI = JTAGVPI_jtag_TDI;
  assign CoreRISCVahbTop_debug_systemjtag_reset = reset;
  assign CoreRISCVahbTop_debug_systemjtag_mfr_id = 11'h0;
  assign CoreRISCVahbTop_interrupts = 31'h0;
  assign CoreRISCVahbTop_mem_ahb_0_hreadyout = MirroredMasterAHBInterface_hreadyout;
  assign CoreRISCVahbTop_mem_ahb_0_hresp = MirroredMasterAHBInterface_hresp;
  assign CoreRISCVahbTop_mem_ahb_0_hrdata = MirroredMasterAHBInterface_hrdata[31:0];
  assign CoreRISCVahbTop_mmio_ahb_0_hreadyout = MirroredMasterAHBInterface_1_hreadyout;
  assign CoreRISCVahbTop_mmio_ahb_0_hresp = MirroredMasterAHBInterface_1_hresp;
  assign CoreRISCVahbTop_mmio_ahb_0_hrdata = MirroredMasterAHBInterface_1_hrdata[31:0];
  assign CoreRISCVahbTop_reset_vector = 32'h0;
  assign _T_3 = reset | CoreRISCVahbTop_debug_ndreset;
  assign MirroredMasterAHBInterface_hwdata = {{32'd0}, CoreRISCVahbTop_mem_ahb_0_hwdata};
  assign MirroredMasterAHBInterface_hprot = CoreRISCVahbTop_mem_ahb_0_hprot;
  assign MirroredMasterAHBInterface_hburst = {{1'd0}, CoreRISCVahbTop_mem_ahb_0_hburst};
  assign MirroredMasterAHBInterface_hsize = CoreRISCVahbTop_mem_ahb_0_hsize;
  assign MirroredMasterAHBInterface_haddr = CoreRISCVahbTop_mem_ahb_0_haddr;
  assign MirroredMasterAHBInterface_hwrite = CoreRISCVahbTop_mem_ahb_0_hwrite;
  assign MirroredMasterAHBInterface_hready = CoreRISCVahbTop_mem_ahb_0_hready;
  assign MirroredMasterAHBInterface_hsel = CoreRISCVahbTop_mem_ahb_0_hsel;
  assign MirroredMasterAHBInterface_htrans = CoreRISCVahbTop_mem_ahb_0_htrans;
  assign MirroredMasterAHBInterface_hmastlock = CoreRISCVahbTop_mem_ahb_0_hmastlock;
  assign JTAGVPI_init_done = _T_7;
  assign JTAGVPI_enable = _T_7;
  assign JTAGVPI_jtag_TDO_data = CoreRISCVahbTop_debug_systemjtag_jtag_TDO_data;
  assign JTAGVPI_jtag_TDO_driven = CoreRISCVahbTop_debug_systemjtag_jtag_TDO_driven;
  assign _T_7 = ~ reset;
  assign MirroredMasterAHBInterface_1_hwdata = {{32'd0}, CoreRISCVahbTop_mmio_ahb_0_hwdata};
  assign MirroredMasterAHBInterface_1_hprot = CoreRISCVahbTop_mmio_ahb_0_hprot;
  assign MirroredMasterAHBInterface_1_hburst = {{1'd0}, CoreRISCVahbTop_mmio_ahb_0_hburst};
  assign MirroredMasterAHBInterface_1_hsize = CoreRISCVahbTop_mmio_ahb_0_hsize;
  assign MirroredMasterAHBInterface_1_haddr = {{1'd0}, CoreRISCVahbTop_mmio_ahb_0_haddr};
  assign MirroredMasterAHBInterface_1_hwrite = CoreRISCVahbTop_mmio_ahb_0_hwrite;
  assign MirroredMasterAHBInterface_1_hready = CoreRISCVahbTop_mmio_ahb_0_hready;
  assign MirroredMasterAHBInterface_1_hsel = CoreRISCVahbTop_mmio_ahb_0_hsel;
  assign MirroredMasterAHBInterface_1_htrans = CoreRISCVahbTop_mmio_ahb_0_htrans;
  assign MirroredMasterAHBInterface_1_hmastlock = CoreRISCVahbTop_mmio_ahb_0_hmastlock;
endmodule
