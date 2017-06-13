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
// Description:
//
// SVN Revision Information:
// SVN $Revision: 29484 $
// SVN $Date: 2017-03-31 09:57:25 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
module PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4(
                    input         CLK,
                    input         RESET,
                     
                     // Cached IO
                    input         AXI_MST_MEM_AWREADY,
                    output        AXI_MST_MEM_AWVALID,
                    output [31:0] AXI_MST_MEM_AWADDR,
                    output [7:0]  AXI_MST_MEM_AWLEN,
                    output [2:0]  AXI_MST_MEM_AWSIZE,
                    output [1:0]  AXI_MST_MEM_AWBURST,
                    output        AXI_MST_MEM_AWLOCK,
                    output [3:0]  AXI_MST_MEM_AWCACHE,
                    output [2:0]  AXI_MST_MEM_AWPROT,
                    output [3:0]  AXI_MST_MEM_AWQOS,
                    output [3:0]  AXI_MST_MEM_AWREGION,
                    output [4:0]  AXI_MST_MEM_AWID,
                    output        AXI_MST_MEM_AWUSER,
                    input         AXI_MST_MEM_WREADY,
                    output        AXI_MST_MEM_WVALID,
                    output [63:0] AXI_MST_MEM_WDATA,
                    output        AXI_MST_MEM_WLAST,
                    output [4:0]  AXI_MST_MEM_WID, 
                    output [7:0]  AXI_MST_MEM_WSTRB,
                    output        AXI_MST_MEM_WUSER,
                    output        AXI_MST_MEM_BREADY,
                    input         AXI_MST_MEM_BVALID,
                    input [1:0]   AXI_MST_MEM_BRESP,
                    input [4:0]   AXI_MST_MEM_BID,
                    input         AXI_MST_MEM_BUSER,
                    input         AXI_MST_MEM_ARREADY,
                    output        AXI_MST_MEM_ARVALID,
                    output [31:0] AXI_MST_MEM_ARADDR,
                    output [7:0]  AXI_MST_MEM_ARLEN,
                    output [2:0]  AXI_MST_MEM_ARSIZE,
                    output [1:0]  AXI_MST_MEM_ARBURST,
                    output        AXI_MST_MEM_ARLOCK,
                    output [3:0]  AXI_MST_MEM_ARCACHE,
                    output [2:0]  AXI_MST_MEM_ARPROT,
                    output [3:0]  AXI_MST_MEM_ARQOS,
                    output [3:0]  AXI_MST_MEM_ARREGION,
                    output [4:0]  AXI_MST_MEM_ARID,
                    output        AXI_MST_MEM_ARUSER,
                    output        AXI_MST_MEM_RREADY,
                    input         AXI_MST_MEM_RVALID,
                    input [1:0]   AXI_MST_MEM_RRESP,
                    input [63:0]  AXI_MST_MEM_RDATA,
                    input         AXI_MST_MEM_RLAST,
                    input [4:0]   AXI_MST_MEM_RID,
                    input         AXI_MST_MEM_RUSER,
                     
                     // Mmio IO
                     
                    input         AXI_MST_MMIO_AWREADY,
                    output        AXI_MST_MMIO_AWVALID,
                    output [31:0] AXI_MST_MMIO_AWADDR,
                    output [7:0]  AXI_MST_MMIO_AWLEN,
                    output [2:0]  AXI_MST_MMIO_AWSIZE,
                    output [1:0]  AXI_MST_MMIO_AWBURST,
                    output        AXI_MST_MMIO_AWLOCK,
                    output [3:0]  AXI_MST_MMIO_AWCACHE,
                    output [2:0]  AXI_MST_MMIO_AWPROT,
                    output [3:0]  AXI_MST_MMIO_AWQOS,
                    output [3:0]  AXI_MST_MMIO_AWREGION,
                    output [4:0]  AXI_MST_MMIO_AWID,
                    output        AXI_MST_MMIO_AWUSER,
                    input         AXI_MST_MMIO_WREADY,
                    output        AXI_MST_MMIO_WVALID,
                    output [63:0] AXI_MST_MMIO_WDATA,
                    output        AXI_MST_MMIO_WLAST,
                    output [4:0]  AXI_MST_MMIO_WID,
                    output [7:0]  AXI_MST_MMIO_WSTRB,
                    output        AXI_MST_MMIO_WUSER,
                    output        AXI_MST_MMIO_BREADY,
                    input         AXI_MST_MMIO_BVALID,
                    input [1:0]   AXI_MST_MMIO_BRESP,
                    input [4:0]   AXI_MST_MMIO_BID,
                    input         AXI_MST_MMIO_BUSER,
                    input         AXI_MST_MMIO_ARREADY,
                    output        AXI_MST_MMIO_ARVALID,
                    output [31:0] AXI_MST_MMIO_ARADDR,
                    output [7:0]  AXI_MST_MMIO_ARLEN,
                    output [2:0]  AXI_MST_MMIO_ARSIZE,
                    output [1:0]  AXI_MST_MMIO_ARBURST,
                    output        AXI_MST_MMIO_ARLOCK,
                    output [3:0]  AXI_MST_MMIO_ARCACHE,
                    output [2:0]  AXI_MST_MMIO_ARPROT,
                    output [3:0]  AXI_MST_MMIO_ARQOS,
                    output [3:0]  AXI_MST_MMIO_ARREGION,
                    output [4:0]  AXI_MST_MMIO_ARID,
                    output        AXI_MST_MMIO_ARUSER,
                    output        AXI_MST_MMIO_RREADY,
                    input         AXI_MST_MMIO_RVALID,
                    input [1:0]   AXI_MST_MMIO_RRESP,
                    input [63:0]  AXI_MST_MMIO_RDATA,
                    input         AXI_MST_MMIO_RLAST,
                    input [4:0]   AXI_MST_MMIO_RID,
                    input         AXI_MST_MMIO_RUSER,

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

   parameter RESET_VECTOR_ADDR    = 60000000;
   
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
   wire  io_interrupts_0;
   wire  io_interrupts_1;
   wire  io_interrupts_10;
   wire  io_interrupts_11;
   wire  io_interrupts_12;
   wire  io_interrupts_13;
   wire  io_interrupts_14;
   wire  io_interrupts_15;
   wire  io_interrupts_16;
   wire  io_interrupts_17;
   wire  io_interrupts_18;
   wire  io_interrupts_19;
   wire  io_interrupts_2;
   wire  io_interrupts_20;
   wire  io_interrupts_21;
   wire  io_interrupts_22;
   wire  io_interrupts_23;
   wire  io_interrupts_24;
   wire  io_interrupts_25;
   wire  io_interrupts_26;
   wire  io_interrupts_27;
   wire  io_interrupts_28;
   wire  io_interrupts_29;
   wire  io_interrupts_3;
   wire  io_interrupts_30;
   wire  io_interrupts_4;
   wire  io_interrupts_5;
   wire  io_interrupts_6;
   wire  io_interrupts_7;
   wire  io_interrupts_8;
   wire  io_interrupts_9;
   
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
   // External Interrupts to PLIC
   // These do not directly correspond to the interrupt number.
   // The interrupt number is one higher.
   //  

   assign   io_interrupts_0 = IRQ[0];
   assign   io_interrupts_1 = IRQ[1];
   assign   io_interrupts_2 = IRQ[2];
   assign   io_interrupts_3 = IRQ[3];
   assign   io_interrupts_4 = IRQ[4];
   assign   io_interrupts_5 = IRQ[5];
   assign   io_interrupts_6 = IRQ[6];
   assign   io_interrupts_7 = IRQ[7];
   assign   io_interrupts_8 = IRQ[8];
   assign   io_interrupts_9 = IRQ[9];
   assign   io_interrupts_10 = IRQ[10];
   assign   io_interrupts_11 = IRQ[11];
   assign   io_interrupts_12 = IRQ[12];
   assign   io_interrupts_13 = IRQ[13];
   assign   io_interrupts_14 = IRQ[14];
   assign   io_interrupts_15 = IRQ[15];
   assign   io_interrupts_16 = IRQ[16];
   assign   io_interrupts_17 = IRQ[17];
   assign   io_interrupts_18 = IRQ[18];
   assign   io_interrupts_19 = IRQ[19];
   assign   io_interrupts_20 = IRQ[20];
   assign   io_interrupts_21 = IRQ[21];
   assign   io_interrupts_22 = IRQ[22];
   assign   io_interrupts_23 = IRQ[23];
   assign   io_interrupts_24 = IRQ[24];
   assign   io_interrupts_25 = IRQ[25];
   assign   io_interrupts_26 = IRQ[26];
   assign   io_interrupts_27 = IRQ[27];
   assign   io_interrupts_28 = IRQ[28];
   assign   io_interrupts_29 = IRQ[29];
   assign   io_interrupts_30 = IRQ[30];

   //=================================================
   // DTM <-> Synchronizers Interface 

   wire                           dtm_req_ready;
   wire                           dtm_req_valid;
   wire [DEBUG_OP_BITS + DEBUG_ADDR_BITS + DEBUG_DATA_BITS - 1 : 0 ] dtm_req_data;
   
   wire                                                             dtm_resp_ready;
   wire                                                             dtm_resp_valid;
   wire [DEBUG_OP_BITS + DEBUG_DATA_BITS - 1 :0 ]                   dtm_resp_data;
    
   //=================================================
   // Sub Instances

   //|@Instance Top ChiselTop0
   //|                  -connect /^io_mem_axi_0_([awrb]+)_(bits_)?(.*)/ axi_mst_mem_\U$1$3
   //|                  -connect /^io_mmio_axi_0_([awrb]+)_(bits_)?(.*)/ axi_mst_mmio_\U$1$3;
//<CJ> RESET_VECTOR_ADDR
   defparam ChiselTop0.RESET_VECTOR_ADDR = RESET_VECTOR_ADDR;
   
   PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_TOP ChiselTop0 (
    .clk(CLK)
   ,.reset(RESET)
   ,.io_mem_axi_0_aw_ready(AXI_MST_MEM_AWREADY)
   ,.io_mem_axi_0_aw_valid(AXI_MST_MEM_AWVALID)
   ,.io_mem_axi_0_aw_bits_addr(AXI_MST_MEM_AWADDR[31:0])
   ,.io_mem_axi_0_aw_bits_len(AXI_MST_MEM_AWLEN[7:0])
   ,.io_mem_axi_0_aw_bits_size(AXI_MST_MEM_AWSIZE[2:0])
   ,.io_mem_axi_0_aw_bits_burst(AXI_MST_MEM_AWBURST[1:0])
   ,.io_mem_axi_0_aw_bits_lock(AXI_MST_MEM_AWLOCK)
   ,.io_mem_axi_0_aw_bits_cache(AXI_MST_MEM_AWCACHE[3:0])
   ,.io_mem_axi_0_aw_bits_prot(AXI_MST_MEM_AWPROT[2:0])
   ,.io_mem_axi_0_aw_bits_qos(AXI_MST_MEM_AWQOS[3:0])
   ,.io_mem_axi_0_aw_bits_region(AXI_MST_MEM_AWREGION[3:0])
   ,.io_mem_axi_0_aw_bits_id(AXI_MST_MEM_AWID[4:0])
   ,.io_mem_axi_0_aw_bits_user(AXI_MST_MEM_AWUSER)
   ,.io_mem_axi_0_w_ready(AXI_MST_MEM_WREADY)
   ,.io_mem_axi_0_w_valid(AXI_MST_MEM_WVALID)
   ,.io_mem_axi_0_w_bits_data(AXI_MST_MEM_WDATA[63:0])
   ,.io_mem_axi_0_w_bits_last(AXI_MST_MEM_WLAST)
   ,.io_mem_axi_0_w_bits_id(AXI_MST_MEM_WID[4:0])
   ,.io_mem_axi_0_w_bits_strb(AXI_MST_MEM_WSTRB[7:0])
   ,.io_mem_axi_0_w_bits_user(AXI_MST_MEM_WUSER)
   ,.io_mem_axi_0_b_ready(AXI_MST_MEM_BREADY)
   ,.io_mem_axi_0_b_valid(AXI_MST_MEM_BVALID)
   ,.io_mem_axi_0_b_bits_resp(AXI_MST_MEM_BRESP[1:0])
   ,.io_mem_axi_0_b_bits_id(AXI_MST_MEM_BID[4:0])
   ,.io_mem_axi_0_b_bits_user(AXI_MST_MEM_BUSER)
   ,.io_mem_axi_0_ar_ready(AXI_MST_MEM_ARREADY)
   ,.io_mem_axi_0_ar_valid(AXI_MST_MEM_ARVALID)
   ,.io_mem_axi_0_ar_bits_addr(AXI_MST_MEM_ARADDR[31:0])
   ,.io_mem_axi_0_ar_bits_len(AXI_MST_MEM_ARLEN[7:0])
   ,.io_mem_axi_0_ar_bits_size(AXI_MST_MEM_ARSIZE[2:0])
   ,.io_mem_axi_0_ar_bits_burst(AXI_MST_MEM_ARBURST[1:0])
   ,.io_mem_axi_0_ar_bits_lock(AXI_MST_MEM_ARLOCK)
   ,.io_mem_axi_0_ar_bits_cache(AXI_MST_MEM_ARCACHE[3:0])
   ,.io_mem_axi_0_ar_bits_prot(AXI_MST_MEM_ARPROT[2:0])
   ,.io_mem_axi_0_ar_bits_qos(AXI_MST_MEM_ARQOS[3:0])
   ,.io_mem_axi_0_ar_bits_region(AXI_MST_MEM_ARREGION[3:0])
   ,.io_mem_axi_0_ar_bits_id(AXI_MST_MEM_ARID[4:0])
   ,.io_mem_axi_0_ar_bits_user(AXI_MST_MEM_ARUSER)
   ,.io_mem_axi_0_r_ready(AXI_MST_MEM_RREADY)
   ,.io_mem_axi_0_r_valid(AXI_MST_MEM_RVALID)
   ,.io_mem_axi_0_r_bits_resp(AXI_MST_MEM_RRESP[1:0])
   ,.io_mem_axi_0_r_bits_data(AXI_MST_MEM_RDATA[63:0])
   ,.io_mem_axi_0_r_bits_last(AXI_MST_MEM_RLAST)
   ,.io_mem_axi_0_r_bits_id(AXI_MST_MEM_RID[4:0])
   ,.io_mem_axi_0_r_bits_user(AXI_MST_MEM_RUSER)
   ,.io_interrupts_0(io_interrupts_0)
   ,.io_interrupts_1(io_interrupts_1)
   ,.io_interrupts_2(io_interrupts_2)
   ,.io_interrupts_3(io_interrupts_3)
   ,.io_interrupts_4(io_interrupts_4)
   ,.io_interrupts_5(io_interrupts_5)
   ,.io_interrupts_6(io_interrupts_6)
   ,.io_interrupts_7(io_interrupts_7)
   ,.io_interrupts_8(io_interrupts_8)
   ,.io_interrupts_9(io_interrupts_9)
   ,.io_interrupts_10(io_interrupts_10)
   ,.io_interrupts_11(io_interrupts_11)
   ,.io_interrupts_12(io_interrupts_12)
   ,.io_interrupts_13(io_interrupts_13)
   ,.io_interrupts_14(io_interrupts_14)
   ,.io_interrupts_15(io_interrupts_15)
   ,.io_interrupts_16(io_interrupts_16)
   ,.io_interrupts_17(io_interrupts_17)
   ,.io_interrupts_18(io_interrupts_18)
   ,.io_interrupts_19(io_interrupts_19)
   ,.io_interrupts_20(io_interrupts_20)
   ,.io_interrupts_21(io_interrupts_21)
   ,.io_interrupts_22(io_interrupts_22)
   ,.io_interrupts_23(io_interrupts_23)
   ,.io_interrupts_24(io_interrupts_24)
   ,.io_interrupts_25(io_interrupts_25)
   ,.io_interrupts_26(io_interrupts_26)
   ,.io_interrupts_27(io_interrupts_27)
   ,.io_interrupts_28(io_interrupts_28)
   ,.io_interrupts_29(io_interrupts_29)
   ,.io_interrupts_30(io_interrupts_30)
   ,.io_mmio_axi_0_aw_ready(AXI_MST_MMIO_AWREADY)
   ,.io_mmio_axi_0_aw_valid(AXI_MST_MMIO_AWVALID)
   ,.io_mmio_axi_0_aw_bits_addr(AXI_MST_MMIO_AWADDR[31:0])
   ,.io_mmio_axi_0_aw_bits_len(AXI_MST_MMIO_AWLEN[7:0])
   ,.io_mmio_axi_0_aw_bits_size(AXI_MST_MMIO_AWSIZE[2:0])
   ,.io_mmio_axi_0_aw_bits_burst(AXI_MST_MMIO_AWBURST[1:0])
   ,.io_mmio_axi_0_aw_bits_lock(AXI_MST_MMIO_AWLOCK)
   ,.io_mmio_axi_0_aw_bits_cache(AXI_MST_MMIO_AWCACHE[3:0])
   ,.io_mmio_axi_0_aw_bits_prot(AXI_MST_MMIO_AWPROT[2:0])
   ,.io_mmio_axi_0_aw_bits_qos(AXI_MST_MMIO_AWQOS[3:0])
   ,.io_mmio_axi_0_aw_bits_region(AXI_MST_MMIO_AWREGION[3:0])
   ,.io_mmio_axi_0_aw_bits_id(AXI_MST_MMIO_AWID[4:0])
   ,.io_mmio_axi_0_aw_bits_user(AXI_MST_MMIO_AWUSER)
   ,.io_mmio_axi_0_w_ready(AXI_MST_MMIO_WREADY)
   ,.io_mmio_axi_0_w_valid(AXI_MST_MMIO_WVALID)
   ,.io_mmio_axi_0_w_bits_data(AXI_MST_MMIO_WDATA[63:0])
   ,.io_mmio_axi_0_w_bits_last(AXI_MST_MMIO_WLAST)
   ,.io_mmio_axi_0_w_bits_id(AXI_MST_MMIO_WID[4:0])
   ,.io_mmio_axi_0_w_bits_strb(AXI_MST_MMIO_WSTRB[7:0])
   ,.io_mmio_axi_0_w_bits_user(AXI_MST_MMIO_WUSER)
   ,.io_mmio_axi_0_b_ready(AXI_MST_MMIO_BREADY)
   ,.io_mmio_axi_0_b_valid(AXI_MST_MMIO_BVALID)
   ,.io_mmio_axi_0_b_bits_resp(AXI_MST_MMIO_BRESP[1:0])
   ,.io_mmio_axi_0_b_bits_id(AXI_MST_MMIO_BID[4:0])
   ,.io_mmio_axi_0_b_bits_user(AXI_MST_MMIO_BUSER)
   ,.io_mmio_axi_0_ar_ready(AXI_MST_MMIO_ARREADY)
   ,.io_mmio_axi_0_ar_valid(AXI_MST_MMIO_ARVALID)
   ,.io_mmio_axi_0_ar_bits_addr(AXI_MST_MMIO_ARADDR[31:0])
   ,.io_mmio_axi_0_ar_bits_len(AXI_MST_MMIO_ARLEN[7:0])
   ,.io_mmio_axi_0_ar_bits_size(AXI_MST_MMIO_ARSIZE[2:0])
   ,.io_mmio_axi_0_ar_bits_burst(AXI_MST_MMIO_ARBURST[1:0])
   ,.io_mmio_axi_0_ar_bits_lock(AXI_MST_MMIO_ARLOCK)
   ,.io_mmio_axi_0_ar_bits_cache(AXI_MST_MMIO_ARCACHE[3:0])
   ,.io_mmio_axi_0_ar_bits_prot(AXI_MST_MMIO_ARPROT[2:0])
   ,.io_mmio_axi_0_ar_bits_qos(AXI_MST_MMIO_ARQOS[3:0])
   ,.io_mmio_axi_0_ar_bits_region(AXI_MST_MMIO_ARREGION[3:0])
   ,.io_mmio_axi_0_ar_bits_id(AXI_MST_MMIO_ARID[4:0])
   ,.io_mmio_axi_0_ar_bits_user(AXI_MST_MMIO_ARUSER)
   ,.io_mmio_axi_0_r_ready(AXI_MST_MMIO_RREADY)
   ,.io_mmio_axi_0_r_valid(AXI_MST_MMIO_RVALID)
   ,.io_mmio_axi_0_r_bits_resp(AXI_MST_MMIO_RRESP[1:0])
   ,.io_mmio_axi_0_r_bits_data(AXI_MST_MMIO_RDATA[63:0])
   ,.io_mmio_axi_0_r_bits_last(AXI_MST_MMIO_RLAST)
   ,.io_mmio_axi_0_r_bits_id(AXI_MST_MMIO_RID[4:0])
   ,.io_mmio_axi_0_r_bits_user(AXI_MST_MMIO_RUSER)
   ,.io_debug_req_ready(io_debug_req_ready)
   ,.io_debug_req_valid(io_debug_req_valid)
   ,.io_debug_req_bits_addr(io_debug_req_bits_addr[4:0])
   ,.io_debug_req_bits_op(io_debug_req_bits_op[1:0])
   ,.io_debug_req_bits_data(io_debug_req_bits_data[33:0])
   ,.io_debug_resp_ready(io_debug_resp_ready)
   ,.io_debug_resp_valid(io_debug_resp_valid)
   ,.io_debug_resp_bits_resp(io_debug_resp_bits_resp[1:0])
   ,.io_debug_resp_bits_data(io_debug_resp_bits_data[33:0])
   );

  
   //|@Waive no_source DRV_TDO;
   //|@Waive no_source TDO;
   //|@Waive no_sink TCK;
   //|@Waive no_sink TDI;
   //|@Waive no_sink TMS;
   //|@Waive no_sink TRST;
   
   //|@Unparsed begin;
      
      PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_DEBUG_TRANSPORT_MODULE_JTAG #(.DEBUG_OP_BITS(DEBUG_OP_BITS),
                                 .DEBUG_ADDR_BITS(DEBUG_ADDR_BITS),
                                 .DEBUG_DATA_BITS(DEBUG_DATA_BITS)
                                 //                              ,.JTAG_VERSION(4'h1)
                                 //                              ,.JTAG_PART_NUM(16'h5256)
                                 //                              ,.JTAG_MANUF_ID(12'h005)
                                 ) debugTransportModuleJtag0 (
                                                              
                                                           //JTAG Interface
                                                           
                                                              .TDI(TDI),
                                                              .TDO(TDO),
                                                              .TCK(TCK),
                                                              .TMS(TMS),
                                                              .TRST(TRST),

                                                              
                                                              
                                                              .DRV_TDO(DRV_TDO),
                                                              
                                                              .dtm_req_ready(dtm_req_ready),
                                                              .dtm_req_valid(dtm_req_valid),
                                                              .dtm_req_data(dtm_req_data),
                                                              
                                                              .dtm_resp_ready(dtm_resp_ready),
                                                              .dtm_resp_valid(dtm_resp_valid),
                                                              .dtm_resp_data(dtm_resp_data)
                                                              
                                                              );
      PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ASYNC_FIFO #(.DEPTH_LG_2(clog2(DEBUG_CDC_FIFO_DEPTH-1)),
                  .WIDTH(DEBUG_OP_BITS + DEBUG_ADDR_BITS + DEBUG_DATA_BITS),
                  .RESET_SYNC_WR_2_RD(1))
      debugBusReqFifo(
                      // Write Interface
                      
                      .clk_w(~TCK),
                      .reset_w(TRST),
                      .ready_w(dtm_req_ready), 
                      .valid_w(dtm_req_valid), 
                      .data_w(dtm_req_data),   

                      .clk_r(CLK),
                      .reset_r(RESET),
                      .ready_r(io_debug_req_ready),
                      .valid_r(io_debug_req_valid),
                      .data_r({io_debug_req_bits_addr, io_debug_req_bits_data, io_debug_req_bits_op})
                      
                      );
      
      PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4_ASYNC_FIFO #(.DEPTH_LG_2(clog2(DEBUG_CDC_FIFO_DEPTH-1)),
                  .WIDTH(DEBUG_OP_BITS + DEBUG_DATA_BITS),
                  .RESET_SYNC_WR_2_RD(0))
                  debugBusRespFifo(
                                   .clk_w(CLK),
                                   .reset_w(RESET),
                                   .ready_w(io_debug_resp_ready),
                                   .valid_w(io_debug_resp_valid),
                                   .data_w({io_debug_resp_bits_data, io_debug_resp_bits_resp}),

                                   .clk_r(TCK),
                                   .reset_r(TRST),
                                   .ready_r(dtm_resp_ready),
                                   .valid_r(dtm_resp_valid),
                                   .data_r(dtm_resp_data) 
                                   );

    //|@Unparsed end;
   
 endmodule // CoreSubsystem
