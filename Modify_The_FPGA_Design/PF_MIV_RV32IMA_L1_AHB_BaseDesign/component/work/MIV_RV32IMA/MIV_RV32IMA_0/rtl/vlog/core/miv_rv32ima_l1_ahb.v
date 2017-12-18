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
module MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB (
                    input         CLK,
                    input         RESETN,
                    
                    // Cached IO
                    output        AHB_MST_MEM_HLOCK,
                    output [1:0]  AHB_MST_MEM_HTRANS,
                    output        AHB_MST_MEM_HSEL,
                    output        AHB_MST_MEM_HWRITE,
                    output [31:0] AHB_MST_MEM_HADDR,
                    output [2:0]  AHB_MST_MEM_HSIZE,
                    output [2:0]  AHB_MST_MEM_HBURST,
                    output [3:0]  AHB_MST_MEM_HPROT,
                    output [31:0] AHB_MST_MEM_HWDATA,
                    input         AHB_MST_MEM_HREADY,
                    input         AHB_MST_MEM_HRESP,
                    input  [31:0] AHB_MST_MEM_HRDATA,
                       
                    // Mmio IO
                    output        AHB_MST_MMIO_HLOCK, 
                    output [1:0]  AHB_MST_MMIO_HTRANS,
                    output        AHB_MST_MMIO_HSEL,
                    output        AHB_MST_MMIO_HWRITE,
                    output [30:0] AHB_MST_MMIO_HADDR,
                    output [2:0]  AHB_MST_MMIO_HSIZE,
                    output [2:0]  AHB_MST_MMIO_HBURST,
                    output [3:0]  AHB_MST_MMIO_HPROT,
                    output [31:0] AHB_MST_MMIO_HWDATA,
                    input         AHB_MST_MMIO_HREADY,
                    input         AHB_MST_MMIO_HRESP,
                    input  [31:0] AHB_MST_MMIO_HRDATA,

                     // Generic Interrupt Interface

                    input [30:0]  IRQ,

                     // JTAG Interface

                    input         TDI,
                    output        TDO,
                    input         TCK,
                    input         TMS,
                    input         TRST,

                    output        DRV_TDO
 
                  );

   parameter RESET_VECTOR_ADDR_1    = 6000;
   parameter RESET_VECTOR_ADDR_0    = 0000;
   
   localparam DEBUG_CDC_FIFO_DEPTH = 2;
   localparam DEBUG_ADDR_BITS = 5;
   localparam DEBUG_DATA_BITS = 34;
   localparam DEBUG_OP_BITS = 2;
   
   //|@Wires;
   wire [4:0] io_debug_req_bits_addr;
   wire [33:0] io_debug_req_bits_data;
   wire [1:0] io_debug_req_bits_op;
   wire  io_debug_req_ready;
   wire  io_debug_req_valid;
   wire [33:0] io_debug_resp_bits_data;
   wire [1:0] io_debug_resp_bits_resp;
   wire  io_debug_resp_ready;
   wire  io_debug_resp_valid;
   
   wire [31:0] RESET_VECTOR_ADDR;
   wire RESET;
   
    ////////////////////////////////////////////////////////////////////////////
    // clog2 function implementation. Returns the number of bits required to
    // hold the value passed as argument.
    ////////////////////////////////////////////////////////////////////////////
    function integer clog2;
        input integer x;
        integer x1, tmp, res;
        begin
            tmp = 1;
            res = 0;
            x1 = x + 1;
            while (tmp < x1)
                begin 
                    tmp = tmp * 2;
                    res = res + 1;
                end
            clog2 = res;
        end
    endfunction

   //=================================================
   // DTM <-> Synchronizers Interface 

   wire                           dtm_req_ready;
   wire                           dtm_req_valid;
   wire [DEBUG_OP_BITS + DEBUG_ADDR_BITS + DEBUG_DATA_BITS - 1 : 0 ] dtm_req_data;
   
   wire                                                             dtm_resp_ready;
   wire                                                             dtm_resp_valid;
   wire [DEBUG_OP_BITS + DEBUG_DATA_BITS - 1 :0 ]                   dtm_resp_data;
    
   //=================================================
   
   assign RESET_VECTOR_ADDR = (RESET_VECTOR_ADDR_1 << 16) | RESET_VECTOR_ADDR_0;
   assign RESET = !(RESETN);
   
   // Sub Instances

   MIV_RV32IMA_MIV_RV32IMA_0_MIV_RV32IMA_L1_AHB_CORE_RISC_VAHB_TOP ChiselTop0 (
    .clock(CLK)
   ,.reset(RESET)
   
   ,.reset_vector(RESET_VECTOR_ADDR)
   
   ,.mem_ahb_0_hmastlock(AHB_MST_MEM_HLOCK)
   ,.mem_ahb_0_htrans(AHB_MST_MEM_HTRANS)
   ,.mem_ahb_0_hsel(AHB_MST_MEM_HSEL)
   ,.mem_ahb_0_hready()
   ,.mem_ahb_0_hwrite(AHB_MST_MEM_HWRITE)
   ,.mem_ahb_0_haddr(AHB_MST_MEM_HADDR)
   ,.mem_ahb_0_hsize(AHB_MST_MEM_HSIZE)
   ,.mem_ahb_0_hburst(AHB_MST_MEM_HBURST)
   ,.mem_ahb_0_hprot(AHB_MST_MEM_HPROT)
   ,.mem_ahb_0_hwdata(AHB_MST_MEM_HWDATA)
   ,.mem_ahb_0_hreadyout(AHB_MST_MEM_HREADY)
   ,.mem_ahb_0_hresp(AHB_MST_MEM_HRESP)
   ,.mem_ahb_0_hrdata(AHB_MST_MEM_HRDATA)

   ,.interrupts(IRQ)
   
   ,.mmio_ahb_0_hmastlock(AHB_MST_MMIO_HLOCK)
   ,.mmio_ahb_0_htrans(AHB_MST_MMIO_HTRANS)
   ,.mmio_ahb_0_hsel(AHB_MST_MMIO_HSEL)
   ,.mmio_ahb_0_hwrite(AHB_MST_MMIO_HWRITE)
   ,.mmio_ahb_0_haddr(AHB_MST_MMIO_HADDR)
   ,.mmio_ahb_0_hsize(AHB_MST_MMIO_HSIZE)
   ,.mmio_ahb_0_hburst(AHB_MST_MMIO_HBURST)
   ,.mmio_ahb_0_hprot(AHB_MST_MMIO_HPROT)
   ,.mmio_ahb_0_hwdata(AHB_MST_MMIO_HWDATA)
   ,.mmio_ahb_0_hreadyout(AHB_MST_MMIO_HREADY)
   ,.mmio_ahb_0_hresp(AHB_MST_MMIO_HRESP)
   ,.mmio_ahb_0_hrdata(AHB_MST_MMIO_HRDATA)

    ,.debug_systemjtag_jtag_TCK(TCK)
    ,.debug_systemjtag_jtag_TMS(TMS)
    ,.debug_systemjtag_jtag_TDI(TDI)
    ,.debug_systemjtag_jtag_TDO_data(TDO)
    ,.debug_systemjtag_jtag_TDO_driven()
    ,.debug_systemjtag_reset(TRST)
    ,.debug_systemjtag_mfr_id(11'h489)
    ,.debug_ndreset()
   );
  

 endmodule // CoreSubsystem
