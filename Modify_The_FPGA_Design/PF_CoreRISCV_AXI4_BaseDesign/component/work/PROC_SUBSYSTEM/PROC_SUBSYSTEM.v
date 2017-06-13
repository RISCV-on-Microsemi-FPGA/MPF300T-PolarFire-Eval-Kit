//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jun 13 14:30:50 2017
// Version: PolarFire v1.1SP1 12.100.9.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PROC_SUBSYSTEM
module PROC_SUBSYSTEM(
    // Inputs
    GPIO_IN,
    RX,
    TCK,
    TDI,
    TMS,
    TRSTB,
    USER_RST,
    // Outputs
    GPIO_OUT,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [3:0] GPIO_IN;
input        RX;
input        TCK;
input        TDI;
input        TMS;
input        TRSTB;
input        USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] GPIO_OUT;
output       TDO;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AND2_1_Y_3;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave7_HBURST;
wire          CoreAHBLite_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave7_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HRDATA;
wire          CoreAHBLite_0_AHBmslave7_HREADY;
wire          CoreAHBLite_0_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBLite_0_AHBmslave7_HRESP;
wire          CoreAHBLite_0_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBLite_0_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBLite_0_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HWDATA;
wire          CoreAHBLite_0_AHBmslave7_HWRITE;
wire   [31:0] CoreAHBLite_1_AHBmslave8_HADDR;
wire   [2:0]  CoreAHBLite_1_AHBmslave8_HBURST;
wire          CoreAHBLite_1_AHBmslave8_HMASTLOCK;
wire   [3:0]  CoreAHBLite_1_AHBmslave8_HPROT;
wire   [31:0] CoreAHBLite_1_AHBmslave8_HRDATA;
wire          CoreAHBLite_1_AHBmslave8_HREADY;
wire          CoreAHBLite_1_AHBmslave8_HREADYOUT;
wire   [1:0]  CoreAHBLite_1_AHBmslave8_HRESP;
wire          CoreAHBLite_1_AHBmslave8_HSELx;
wire   [2:0]  CoreAHBLite_1_AHBmslave8_HSIZE;
wire   [1:0]  CoreAHBLite_1_AHBmslave8_HTRANS;
wire   [31:0] CoreAHBLite_1_AHBmslave8_HWDATA;
wire          CoreAHBLite_1_AHBmslave8_HWRITE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PADDR;
wire          COREAHBTOAPB3_0_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
wire          COREAHBTOAPB3_0_APBmaster_PREADY;
wire          COREAHBTOAPB3_0_APBmaster_PSELx;
wire          COREAHBTOAPB3_0_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PWDATA;
wire          COREAHBTOAPB3_0_APBmaster_PWRITE;
wire          CoreAPB3_0_APBmslave1_PENABLE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreAPB3_0_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HWRITE;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HWRITE;
wire          COREJTAGDEBUG_0_TGT_TCK;
wire          COREJTAGDEBUG_0_TGT_TDI;
wire          COREJTAGDEBUG_0_TGT_TMS;
wire          COREJTAGDEBUG_0_TGT_TRST;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_BID;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_BRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MEM_RDATA;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_RID;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_RRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MEM_WDATA;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WREADY;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_WID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_BID;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_RID;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_WID;
wire          CORERISCV_AXI4_0_TDO;
wire          CoreTimer_0_TIMINT;
wire          CoreTimer_1_TIMINT;
wire   [3:0]  GPIO_IN;
wire   [3:0]  GPIO_OUT_net_0;
wire          PF_CCC_0_OUT0_FABCLK_0;
wire          PF_CCC_0_PLL_LOCK_0;
wire          PF_OSC_0_RCOSC_160MHZ_GL;
wire          reset_synchronizer_0_reset_sync_2;
wire          RX;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TX_net_1;
wire          TDO_net_1;
wire   [3:0]  GPIO_OUT_net_1;
wire   [30:0] IRQ_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [3:0]  GPIO_IN_const_net_0;
wire   [28:0] IRQ_const_net_0;
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [7:0]  UIREG_IN_const_net_0;
wire   [10:0] DRI_CTRL_0_const_net_0;
wire   [32:0] DRI_WDATA_0_const_net_0;
wire   [10:0] DRI_CTRL_1_const_net_0;
wire   [32:0] DRI_WDATA_1_const_net_0;
wire   [10:0] DLL_DRI_CTRL_const_net_0;
wire   [32:0] DLL_DRI_WDATA_const_net_0;
wire   [3:0]  HPROT_M0_const_net_0;
wire   [31:0] HADDR_M1_const_net_0;
wire   [1:0]  HTRANS_M1_const_net_0;
wire   [2:0]  HSIZE_M1_const_net_0;
wire   [2:0]  HBURST_M1_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
wire   [31:0] HWDATA_M1_const_net_0;
wire   [31:0] HADDR_M2_const_net_0;
wire   [1:0]  HTRANS_M2_const_net_0;
wire   [2:0]  HSIZE_M2_const_net_0;
wire   [2:0]  HBURST_M2_const_net_0;
wire   [3:0]  HPROT_M2_const_net_0;
wire   [31:0] HWDATA_M2_const_net_0;
wire   [31:0] HADDR_M3_const_net_0;
wire   [1:0]  HTRANS_M3_const_net_0;
wire   [2:0]  HSIZE_M3_const_net_0;
wire   [2:0]  HBURST_M3_const_net_0;
wire   [3:0]  HPROT_M3_const_net_0;
wire   [31:0] HWDATA_M3_const_net_0;
wire   [31:0] HRDATA_S0_const_net_0;
wire   [1:0]  HRESP_S0_const_net_0;
wire   [31:0] HRDATA_S1_const_net_0;
wire   [1:0]  HRESP_S1_const_net_0;
wire   [31:0] HRDATA_S2_const_net_0;
wire   [1:0]  HRESP_S2_const_net_0;
wire   [31:0] HRDATA_S3_const_net_0;
wire   [1:0]  HRESP_S3_const_net_0;
wire   [31:0] HRDATA_S4_const_net_0;
wire   [1:0]  HRESP_S4_const_net_0;
wire   [31:0] HRDATA_S5_const_net_0;
wire   [1:0]  HRESP_S5_const_net_0;
wire   [31:0] HRDATA_S6_const_net_0;
wire   [1:0]  HRESP_S6_const_net_0;
wire   [31:0] HRDATA_S8_const_net_0;
wire   [1:0]  HRESP_S8_const_net_0;
wire   [31:0] HRDATA_S9_const_net_0;
wire   [1:0]  HRESP_S9_const_net_0;
wire   [31:0] HRDATA_S10_const_net_0;
wire   [1:0]  HRESP_S10_const_net_0;
wire   [31:0] HRDATA_S11_const_net_0;
wire   [1:0]  HRESP_S11_const_net_0;
wire   [31:0] HRDATA_S12_const_net_0;
wire   [1:0]  HRESP_S12_const_net_0;
wire   [31:0] HRDATA_S13_const_net_0;
wire   [1:0]  HRESP_S13_const_net_0;
wire   [31:0] HRDATA_S14_const_net_0;
wire   [1:0]  HRESP_S14_const_net_0;
wire   [31:0] HRDATA_S15_const_net_0;
wire   [1:0]  HRESP_S15_const_net_0;
wire   [31:0] HRDATA_S16_const_net_0;
wire   [1:0]  HRESP_S16_const_net_0;
wire   [3:0]  HPROT_M0_const_net_1;
wire   [31:0] HADDR_M1_const_net_1;
wire   [1:0]  HTRANS_M1_const_net_1;
wire   [2:0]  HSIZE_M1_const_net_1;
wire   [2:0]  HBURST_M1_const_net_1;
wire   [3:0]  HPROT_M1_const_net_1;
wire   [31:0] HWDATA_M1_const_net_1;
wire   [31:0] HADDR_M2_const_net_1;
wire   [1:0]  HTRANS_M2_const_net_1;
wire   [2:0]  HSIZE_M2_const_net_1;
wire   [2:0]  HBURST_M2_const_net_1;
wire   [3:0]  HPROT_M2_const_net_1;
wire   [31:0] HWDATA_M2_const_net_1;
wire   [31:0] HADDR_M3_const_net_1;
wire   [1:0]  HTRANS_M3_const_net_1;
wire   [2:0]  HSIZE_M3_const_net_1;
wire   [2:0]  HBURST_M3_const_net_1;
wire   [3:0]  HPROT_M3_const_net_1;
wire   [31:0] HWDATA_M3_const_net_1;
wire   [31:0] HRDATA_S0_const_net_1;
wire   [1:0]  HRESP_S0_const_net_1;
wire   [31:0] HRDATA_S1_const_net_1;
wire   [1:0]  HRESP_S1_const_net_1;
wire   [31:0] HRDATA_S2_const_net_1;
wire   [1:0]  HRESP_S2_const_net_1;
wire   [31:0] HRDATA_S3_const_net_1;
wire   [1:0]  HRESP_S3_const_net_1;
wire   [31:0] HRDATA_S4_const_net_1;
wire   [1:0]  HRESP_S4_const_net_1;
wire   [31:0] HRDATA_S5_const_net_1;
wire   [1:0]  HRESP_S5_const_net_1;
wire   [31:0] HRDATA_S6_const_net_1;
wire   [1:0]  HRESP_S6_const_net_1;
wire   [31:0] HRDATA_S7_const_net_0;
wire   [1:0]  HRESP_S7_const_net_0;
wire   [31:0] HRDATA_S9_const_net_1;
wire   [1:0]  HRESP_S9_const_net_1;
wire   [31:0] HRDATA_S10_const_net_1;
wire   [1:0]  HRESP_S10_const_net_1;
wire   [31:0] HRDATA_S11_const_net_1;
wire   [1:0]  HRESP_S11_const_net_1;
wire   [31:0] HRDATA_S12_const_net_1;
wire   [1:0]  HRESP_S12_const_net_1;
wire   [31:0] HRDATA_S13_const_net_1;
wire   [1:0]  HRESP_S13_const_net_1;
wire   [31:0] HRDATA_S14_const_net_1;
wire   [1:0]  HRESP_S14_const_net_1;
wire   [31:0] HRDATA_S15_const_net_1;
wire   [1:0]  HRESP_S15_const_net_1;
wire   [31:0] HRDATA_S16_const_net_1;
wire   [1:0]  HRESP_S16_const_net_1;
wire   [31:0] PRDATAS0_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          RESET_IN_POST_INV0_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3;
wire   [31:0] CoreAPB3_0_APBmslave1_PADDR;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [31:0] CoreAPB3_0_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_0_AHBMasterIF_HRESP_0;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_1_AHBMasterIF_HRESP_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0       = 4'h0;
assign IRQ_const_net_0           = 29'h00000000;
assign GND_net                   = 1'b0;
assign VCC_net                   = 1'b1;
assign IADDR_const_net_0         = 32'h00000000;
assign UIREG_IN_const_net_0      = 8'h00;
assign DRI_CTRL_0_const_net_0    = 11'h000;
assign DRI_WDATA_0_const_net_0   = 33'h000000000;
assign DRI_CTRL_1_const_net_0    = 11'h000;
assign DRI_WDATA_1_const_net_0   = 33'h000000000;
assign DLL_DRI_CTRL_const_net_0  = 11'h000;
assign DLL_DRI_WDATA_const_net_0 = 33'h000000000;
assign HPROT_M0_const_net_0      = 4'h0;
assign HADDR_M1_const_net_0      = 32'h00000000;
assign HTRANS_M1_const_net_0     = 2'h0;
assign HSIZE_M1_const_net_0      = 3'h0;
assign HBURST_M1_const_net_0     = 3'h0;
assign HPROT_M1_const_net_0      = 4'h0;
assign HWDATA_M1_const_net_0     = 32'h00000000;
assign HADDR_M2_const_net_0      = 32'h00000000;
assign HTRANS_M2_const_net_0     = 2'h0;
assign HSIZE_M2_const_net_0      = 3'h0;
assign HBURST_M2_const_net_0     = 3'h0;
assign HPROT_M2_const_net_0      = 4'h0;
assign HWDATA_M2_const_net_0     = 32'h00000000;
assign HADDR_M3_const_net_0      = 32'h00000000;
assign HTRANS_M3_const_net_0     = 2'h0;
assign HSIZE_M3_const_net_0      = 3'h0;
assign HBURST_M3_const_net_0     = 3'h0;
assign HPROT_M3_const_net_0      = 4'h0;
assign HWDATA_M3_const_net_0     = 32'h00000000;
assign HRDATA_S0_const_net_0     = 32'h00000000;
assign HRESP_S0_const_net_0      = 2'h0;
assign HRDATA_S1_const_net_0     = 32'h00000000;
assign HRESP_S1_const_net_0      = 2'h0;
assign HRDATA_S2_const_net_0     = 32'h00000000;
assign HRESP_S2_const_net_0      = 2'h0;
assign HRDATA_S3_const_net_0     = 32'h00000000;
assign HRESP_S3_const_net_0      = 2'h0;
assign HRDATA_S4_const_net_0     = 32'h00000000;
assign HRESP_S4_const_net_0      = 2'h0;
assign HRDATA_S5_const_net_0     = 32'h00000000;
assign HRESP_S5_const_net_0      = 2'h0;
assign HRDATA_S6_const_net_0     = 32'h00000000;
assign HRESP_S6_const_net_0      = 2'h0;
assign HRDATA_S8_const_net_0     = 32'h00000000;
assign HRESP_S8_const_net_0      = 2'h0;
assign HRDATA_S9_const_net_0     = 32'h00000000;
assign HRESP_S9_const_net_0      = 2'h0;
assign HRDATA_S10_const_net_0    = 32'h00000000;
assign HRESP_S10_const_net_0     = 2'h0;
assign HRDATA_S11_const_net_0    = 32'h00000000;
assign HRESP_S11_const_net_0     = 2'h0;
assign HRDATA_S12_const_net_0    = 32'h00000000;
assign HRESP_S12_const_net_0     = 2'h0;
assign HRDATA_S13_const_net_0    = 32'h00000000;
assign HRESP_S13_const_net_0     = 2'h0;
assign HRDATA_S14_const_net_0    = 32'h00000000;
assign HRESP_S14_const_net_0     = 2'h0;
assign HRDATA_S15_const_net_0    = 32'h00000000;
assign HRESP_S15_const_net_0     = 2'h0;
assign HRDATA_S16_const_net_0    = 32'h00000000;
assign HRESP_S16_const_net_0     = 2'h0;
assign HPROT_M0_const_net_1      = 4'h0;
assign HADDR_M1_const_net_1      = 32'h00000000;
assign HTRANS_M1_const_net_1     = 2'h0;
assign HSIZE_M1_const_net_1      = 3'h0;
assign HBURST_M1_const_net_1     = 3'h0;
assign HPROT_M1_const_net_1      = 4'h0;
assign HWDATA_M1_const_net_1     = 32'h00000000;
assign HADDR_M2_const_net_1      = 32'h00000000;
assign HTRANS_M2_const_net_1     = 2'h0;
assign HSIZE_M2_const_net_1      = 3'h0;
assign HBURST_M2_const_net_1     = 3'h0;
assign HPROT_M2_const_net_1      = 4'h0;
assign HWDATA_M2_const_net_1     = 32'h00000000;
assign HADDR_M3_const_net_1      = 32'h00000000;
assign HTRANS_M3_const_net_1     = 2'h0;
assign HSIZE_M3_const_net_1      = 3'h0;
assign HBURST_M3_const_net_1     = 3'h0;
assign HPROT_M3_const_net_1      = 4'h0;
assign HWDATA_M3_const_net_1     = 32'h00000000;
assign HRDATA_S0_const_net_1     = 32'h00000000;
assign HRESP_S0_const_net_1      = 2'h0;
assign HRDATA_S1_const_net_1     = 32'h00000000;
assign HRESP_S1_const_net_1      = 2'h0;
assign HRDATA_S2_const_net_1     = 32'h00000000;
assign HRESP_S2_const_net_1      = 2'h0;
assign HRDATA_S3_const_net_1     = 32'h00000000;
assign HRESP_S3_const_net_1      = 2'h0;
assign HRDATA_S4_const_net_1     = 32'h00000000;
assign HRESP_S4_const_net_1      = 2'h0;
assign HRDATA_S5_const_net_1     = 32'h00000000;
assign HRESP_S5_const_net_1      = 2'h0;
assign HRDATA_S6_const_net_1     = 32'h00000000;
assign HRESP_S6_const_net_1      = 2'h0;
assign HRDATA_S7_const_net_0     = 32'h00000000;
assign HRESP_S7_const_net_0      = 2'h0;
assign HRDATA_S9_const_net_1     = 32'h00000000;
assign HRESP_S9_const_net_1      = 2'h0;
assign HRDATA_S10_const_net_1    = 32'h00000000;
assign HRESP_S10_const_net_1     = 2'h0;
assign HRDATA_S11_const_net_1    = 32'h00000000;
assign HRESP_S11_const_net_1     = 2'h0;
assign HRDATA_S12_const_net_1    = 32'h00000000;
assign HRESP_S12_const_net_1     = 2'h0;
assign HRDATA_S13_const_net_1    = 32'h00000000;
assign HRESP_S13_const_net_1     = 2'h0;
assign HRDATA_S14_const_net_1    = 32'h00000000;
assign HRESP_S14_const_net_1     = 2'h0;
assign HRDATA_S15_const_net_1    = 32'h00000000;
assign HRESP_S15_const_net_1     = 2'h0;
assign HRDATA_S16_const_net_1    = 32'h00000000;
assign HRESP_S16_const_net_1     = 2'h0;
assign PRDATAS0_const_net_0      = 32'h00000000;
assign PRDATAS6_const_net_0      = 32'h00000000;
assign PRDATAS7_const_net_0      = 32'h00000000;
assign PRDATAS8_const_net_0      = 32'h00000000;
assign PRDATAS9_const_net_0      = 32'h00000000;
assign PRDATAS10_const_net_0     = 32'h00000000;
assign PRDATAS11_const_net_0     = 32'h00000000;
assign PRDATAS12_const_net_0     = 32'h00000000;
assign PRDATAS13_const_net_0     = 32'h00000000;
assign PRDATAS14_const_net_0     = 32'h00000000;
assign PRDATAS15_const_net_0     = 32'h00000000;
assign PRDATAS16_const_net_0     = 32'h00000000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign RESET_IN_POST_INV0_0 = ~ reset_synchronizer_0_reset_sync_2;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1       = TX_net_0;
assign TX             = TX_net_1;
assign TDO_net_1      = TDO_net_0;
assign TDO            = TDO_net_1;
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0 = { CoreTimer_1_TIMINT , CoreTimer_0_TIMINT , 29'h00000000 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0 };

assign CoreAPB3_0_APBmslave1_PADDR_1_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_1 = { CoreAPB3_0_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_4_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_4 = { CoreAPB3_0_APBmslave1_PADDR_4_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_0_4to0 = CoreAPB3_0_APBmslave1_PADDR[4:0];
assign CoreAPB3_0_APBmslave1_PADDR_0 = { CoreAPB3_0_APBmslave1_PADDR_0_4to0 };
assign CoreAPB3_0_APBmslave1_PADDR_2_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_2 = { CoreAPB3_0_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_3_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_3 = { CoreAPB3_0_APBmslave1_PADDR_3_4to2 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PWDATA_0_7to0 = CoreAPB3_0_APBmslave1_PWDATA[7:0];
assign CoreAPB3_0_APBmslave1_PWDATA_0 = { CoreAPB3_0_APBmslave1_PWDATA_0_7to0 };

assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_0_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 };

assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_1_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( PF_CCC_0_PLL_LOCK_0 ),
        .B ( USER_RST ),
        // Outputs
        .Y ( AND2_1_Y_3 ) 
        );

//--------AXI_GLUE_LOGIC   -   User:GlueLogic:AXI_GLUE_LOGIC:1.0.7
AXI_GLUE_LOGIC AXI_GLUE_LOGIC_0(
        // Inputs
        .CLK                          ( PF_CCC_0_OUT0_FABCLK_0 ),
        .RESET                        ( reset_synchronizer_0_reset_sync_2 ),
        .AXI_MIRROR_MST_MEM_AWVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID ),
        .AXI_MIRROR_MST_MEM_AWLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK ),
        .AXI_MIRROR_MST_MEM_AWUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER ),
        .AXI_MIRROR_MST_MEM_WVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_WVALID ),
        .AXI_MIRROR_MST_MEM_WLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_WLAST ),
        .AXI_MIRROR_MST_MEM_WUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_WUSER ),
        .AXI_MIRROR_MST_MEM_BREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_BREADY ),
        .AXI_MIRROR_MST_MEM_ARVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID ),
        .AXI_MIRROR_MST_MEM_ARLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK ),
        .AXI_MIRROR_MST_MEM_ARUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER ),
        .AXI_MIRROR_MST_MEM_RREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_RREADY ),
        .AXI_MIRROR_MST_MMIO_AWVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID ),
        .AXI_MIRROR_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK ),
        .AXI_MIRROR_MST_MMIO_AWUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER ),
        .AXI_MIRROR_MST_MMIO_WVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID ),
        .AXI_MIRROR_MST_MMIO_WLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST ),
        .AXI_MIRROR_MST_MMIO_WUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER ),
        .AXI_MIRROR_MST_MMIO_BREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY ),
        .AXI_MIRROR_MST_MMIO_ARVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID ),
        .AXI_MIRROR_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK ),
        .AXI_MIRROR_MST_MMIO_ARUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER ),
        .AXI_MIRROR_MST_MMIO_RREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY ),
        .AXI_MSLAVE_MEM_AWREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY ),
        .AXI_MSLAVE_MEM_WREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY ),
        .AXI_MSLAVE_MEM_BVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID ),
        .AXI_MSLAVE_MEM_BUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MEM_ARREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY ),
        .AXI_MSLAVE_MEM_RVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID ),
        .AXI_MSLAVE_MEM_RLAST         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST ),
        .AXI_MSLAVE_MEM_RUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_AWREADY      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY ),
        .AXI_MSLAVE_MMIO_WREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY ),
        .AXI_MSLAVE_MMIO_BVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID ),
        .AXI_MSLAVE_MMIO_BUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_ARREADY      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY ),
        .AXI_MSLAVE_MMIO_RVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID ),
        .AXI_MSLAVE_MMIO_RLAST        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST ),
        .AXI_MSLAVE_MMIO_RUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MIRROR_MST_MEM_AWADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR ),
        .AXI_MIRROR_MST_MEM_AWLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN ),
        .AXI_MIRROR_MST_MEM_AWSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE ),
        .AXI_MIRROR_MST_MEM_AWBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST ),
        .AXI_MIRROR_MST_MEM_AWCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE ),
        .AXI_MIRROR_MST_MEM_AWPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT ),
        .AXI_MIRROR_MST_MEM_AWQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS ),
        .AXI_MIRROR_MST_MEM_AWREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION ),
        .AXI_MIRROR_MST_MEM_AWID      ( CORERISCV_AXI4_0_AXI_MST_MEM_AWID ),
        .AXI_MIRROR_MST_MEM_WDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_WDATA ),
        .AXI_MIRROR_MST_MEM_WID       ( CORERISCV_AXI4_0_AXI_MST_MEM_WID ),
        .AXI_MIRROR_MST_MEM_WSTRB     ( CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB ),
        .AXI_MIRROR_MST_MEM_ARADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR ),
        .AXI_MIRROR_MST_MEM_ARLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN ),
        .AXI_MIRROR_MST_MEM_ARSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE ),
        .AXI_MIRROR_MST_MEM_ARBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST ),
        .AXI_MIRROR_MST_MEM_ARCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE ),
        .AXI_MIRROR_MST_MEM_ARPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT ),
        .AXI_MIRROR_MST_MEM_ARQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS ),
        .AXI_MIRROR_MST_MEM_ARREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION ),
        .AXI_MIRROR_MST_MEM_ARID      ( CORERISCV_AXI4_0_AXI_MST_MEM_ARID ),
        .AXI_MIRROR_MST_MMIO_AWADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR ),
        .AXI_MIRROR_MST_MMIO_AWLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN ),
        .AXI_MIRROR_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE ),
        .AXI_MIRROR_MST_MMIO_AWBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST ),
        .AXI_MIRROR_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE ),
        .AXI_MIRROR_MST_MMIO_AWPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT ),
        .AXI_MIRROR_MST_MMIO_AWQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS ),
        .AXI_MIRROR_MST_MMIO_AWREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION ),
        .AXI_MIRROR_MST_MMIO_AWID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWID ),
        .AXI_MIRROR_MST_MMIO_WDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA ),
        .AXI_MIRROR_MST_MMIO_WID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_WID ),
        .AXI_MIRROR_MST_MMIO_WSTRB    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB ),
        .AXI_MIRROR_MST_MMIO_ARADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR ),
        .AXI_MIRROR_MST_MMIO_ARLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN ),
        .AXI_MIRROR_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE ),
        .AXI_MIRROR_MST_MMIO_ARBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST ),
        .AXI_MIRROR_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE ),
        .AXI_MIRROR_MST_MMIO_ARPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT ),
        .AXI_MIRROR_MST_MMIO_ARQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS ),
        .AXI_MIRROR_MST_MMIO_ARREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION ),
        .AXI_MIRROR_MST_MMIO_ARID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARID ),
        .AXI_MSLAVE_MEM_BRESP         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP ),
        .AXI_MSLAVE_MEM_BID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID ),
        .AXI_MSLAVE_MEM_RRESP         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP ),
        .AXI_MSLAVE_MEM_RDATA         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA ),
        .AXI_MSLAVE_MEM_RID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID ),
        .AXI_MSLAVE_MMIO_BRESP        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP ),
        .AXI_MSLAVE_MMIO_BID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID ),
        .AXI_MSLAVE_MMIO_RRESP        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP ),
        .AXI_MSLAVE_MMIO_RDATA        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA ),
        .AXI_MSLAVE_MMIO_RID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID ),
        // Outputs
        .AXI_MIRROR_MST_MEM_AWREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY ),
        .AXI_MIRROR_MST_MEM_WREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_WREADY ),
        .AXI_MIRROR_MST_MEM_BVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_BVALID ),
        .AXI_MIRROR_MST_MEM_BUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_BUSER ),
        .AXI_MIRROR_MST_MEM_ARREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY ),
        .AXI_MIRROR_MST_MEM_RVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_RVALID ),
        .AXI_MIRROR_MST_MEM_RLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_RLAST ),
        .AXI_MIRROR_MST_MEM_RUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_RUSER ),
        .AXI_MIRROR_MST_MMIO_AWREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY ),
        .AXI_MIRROR_MST_MMIO_WREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY ),
        .AXI_MIRROR_MST_MMIO_BVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID ),
        .AXI_MIRROR_MST_MMIO_BUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER ),
        .AXI_MIRROR_MST_MMIO_ARREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY ),
        .AXI_MIRROR_MST_MMIO_RVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID ),
        .AXI_MIRROR_MST_MMIO_RLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST ),
        .AXI_MIRROR_MST_MMIO_RUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER ),
        .AXI_MSLAVE_MEM_AWVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID ),
        .AXI_MSLAVE_MEM_AWLOCK        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLOCK ),
        .AXI_MSLAVE_MEM_AWUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWUSER ),
        .AXI_MSLAVE_MEM_WVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID ),
        .AXI_MSLAVE_MEM_WLAST         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST ),
        .AXI_MSLAVE_MEM_WUSER         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WUSER ),
        .AXI_MSLAVE_MEM_BREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY ),
        .AXI_MSLAVE_MEM_ARVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID ),
        .AXI_MSLAVE_MEM_ARLOCK        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLOCK ),
        .AXI_MSLAVE_MEM_ARUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARUSER ),
        .AXI_MSLAVE_MEM_RREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY ),
        .AXI_MSLAVE_MMIO_AWVALID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID ),
        .AXI_MSLAVE_MMIO_AWLOCK       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLOCK ),
        .AXI_MSLAVE_MMIO_AWUSER       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWUSER ),
        .AXI_MSLAVE_MMIO_WVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID ),
        .AXI_MSLAVE_MMIO_WLAST        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST ),
        .AXI_MSLAVE_MMIO_WUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WUSER ),
        .AXI_MSLAVE_MMIO_BREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY ),
        .AXI_MSLAVE_MMIO_ARVALID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID ),
        .AXI_MSLAVE_MMIO_ARLOCK       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLOCK ),
        .AXI_MSLAVE_MMIO_ARUSER       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARUSER ),
        .AXI_MSLAVE_MMIO_RREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY ),
        .AXI_MIRROR_MST_MEM_BRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_BRESP ),
        .AXI_MIRROR_MST_MEM_BID       ( CORERISCV_AXI4_0_AXI_MST_MEM_BID ),
        .AXI_MIRROR_MST_MEM_RRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_RRESP ),
        .AXI_MIRROR_MST_MEM_RDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_RDATA ),
        .AXI_MIRROR_MST_MEM_RID       ( CORERISCV_AXI4_0_AXI_MST_MEM_RID ),
        .AXI_MIRROR_MST_MMIO_BRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP ),
        .AXI_MIRROR_MST_MMIO_BID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_BID ),
        .AXI_MIRROR_MST_MMIO_RRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP ),
        .AXI_MIRROR_MST_MMIO_RDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA ),
        .AXI_MIRROR_MST_MMIO_RID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_RID ),
        .AXI_MSLAVE_MEM_AWADDR        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR ),
        .AXI_MSLAVE_MEM_AWLEN         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN ),
        .AXI_MSLAVE_MEM_AWSIZE        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE ),
        .AXI_MSLAVE_MEM_AWBURST       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST ),
        .AXI_MSLAVE_MEM_AWCACHE       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWCACHE ),
        .AXI_MSLAVE_MEM_AWPROT        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWPROT ),
        .AXI_MSLAVE_MEM_AWID          ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID ),
        .AXI_MSLAVE_MEM_WDATA         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA ),
        .AXI_MSLAVE_MEM_WID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID ),
        .AXI_MSLAVE_MEM_WSTRB         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB ),
        .AXI_MSLAVE_MEM_ARADDR        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR ),
        .AXI_MSLAVE_MEM_ARLEN         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN ),
        .AXI_MSLAVE_MEM_ARSIZE        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE ),
        .AXI_MSLAVE_MEM_ARBURST       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST ),
        .AXI_MSLAVE_MEM_ARCACHE       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARCACHE ),
        .AXI_MSLAVE_MEM_ARPROT        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARPROT ),
        .AXI_MSLAVE_MEM_ARID          ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID ),
        .AXI_MSLAVE_MMIO_AWADDR       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR ),
        .AXI_MSLAVE_MMIO_AWLEN        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN ),
        .AXI_MSLAVE_MMIO_AWSIZE       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE ),
        .AXI_MSLAVE_MMIO_AWBURST      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST ),
        .AXI_MSLAVE_MMIO_AWCACHE      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWCACHE ),
        .AXI_MSLAVE_MMIO_AWPROT       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWPROT ),
        .AXI_MSLAVE_MMIO_AWID         ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID ),
        .AXI_MSLAVE_MMIO_WDATA        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA ),
        .AXI_MSLAVE_MMIO_WID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID ),
        .AXI_MSLAVE_MMIO_WSTRB        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB ),
        .AXI_MSLAVE_MMIO_ARADDR       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR ),
        .AXI_MSLAVE_MMIO_ARLEN        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN ),
        .AXI_MSLAVE_MMIO_ARSIZE       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE ),
        .AXI_MSLAVE_MMIO_ARBURST      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST ),
        .AXI_MSLAVE_MMIO_ARCACHE      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARCACHE ),
        .AXI_MSLAVE_MMIO_ARPROT       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARPROT ),
        .AXI_MSLAVE_MMIO_ARID         ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 15 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 1 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_0(
        // Inputs
        .HCLK          ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN       ( reset_synchronizer_0_reset_sync_2 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( CoreAHBLite_0_AHBmslave7_HREADYOUT ),
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_1_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_0 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( CoreAHBLite_0_AHBmslave7_HRDATA ),
        .HRESP_S7      ( CoreAHBLite_0_AHBmslave7_HRESP ),
        .HRDATA_S8     ( HRDATA_S8_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_0 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HREADY_M1     (  ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       ( CoreAHBLite_0_AHBmslave7_HSELx ),
        .HWRITE_S7     ( CoreAHBLite_0_AHBmslave7_HWRITE ),
        .HREADY_S7     ( CoreAHBLite_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7  ( CoreAHBLite_0_AHBmslave7_HMASTLOCK ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      ( COREAXITOAHBL_1_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      ( CoreAHBLite_0_AHBmslave7_HADDR ),
        .HSIZE_S7      ( CoreAHBLite_0_AHBmslave7_HSIZE ),
        .HTRANS_S7     ( CoreAHBLite_0_AHBmslave7_HTRANS ),
        .HWDATA_S7     ( CoreAHBLite_0_AHBmslave7_HWDATA ),
        .HBURST_S7     ( CoreAHBLite_0_AHBmslave7_HBURST ),
        .HPROT_S7      ( CoreAHBLite_0_AHBmslave7_HPROT ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 15 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 1 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_1(
        // Inputs
        .HCLK          ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN       ( reset_synchronizer_0_reset_sync_2 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S8  ( CoreAHBLite_1_AHBmslave8_HREADYOUT ),
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_0_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_1 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S7      ( HRESP_S7_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( CoreAHBLite_1_AHBmslave8_HRDATA ),
        .HRESP_S8      ( CoreAHBLite_1_AHBmslave8_HRESP ),
        .HRDATA_S9     ( HRDATA_S9_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_1 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HREADY_M1     (  ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       (  ),
        .HWRITE_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HSEL_S8       ( CoreAHBLite_1_AHBmslave8_HSELx ),
        .HWRITE_S8     ( CoreAHBLite_1_AHBmslave8_HWRITE ),
        .HREADY_S8     ( CoreAHBLite_1_AHBmslave8_HREADY ),
        .HMASTLOCK_S8  ( CoreAHBLite_1_AHBmslave8_HMASTLOCK ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      ( COREAXITOAHBL_0_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWDATA_S7     (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HADDR_S8      ( CoreAHBLite_1_AHBmslave8_HADDR ),
        .HSIZE_S8      ( CoreAHBLite_1_AHBmslave8_HSIZE ),
        .HTRANS_S8     ( CoreAHBLite_1_AHBmslave8_HTRANS ),
        .HWDATA_S8     ( CoreAHBLite_1_AHBmslave8_HWDATA ),
        .HBURST_S8     ( CoreAHBLite_1_AHBmslave8_HBURST ),
        .HPROT_S8      ( CoreAHBLite_1_AHBmslave8_HPROT ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------COREAHBTOAPB3   -   Actel:DirectCore:COREAHBTOAPB3:3.1.100
COREAHBTOAPB3 #( 
        .FAMILY ( 15 ) )
COREAHBTOAPB3_0(
        // Inputs
        .HCLK      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN   ( reset_synchronizer_0_reset_sync_2 ),
        .HWRITE    ( CoreAHBLite_0_AHBmslave7_HWRITE ),
        .HSEL      ( CoreAHBLite_0_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBLite_0_AHBmslave7_HREADY ),
        .PREADY    ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .HADDR     ( CoreAHBLite_0_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBLite_0_AHBmslave7_HTRANS ),
        .HWDATA    ( CoreAHBLite_0_AHBmslave7_HWDATA ),
        .PRDATA    ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBLite_0_AHBmslave7_HREADYOUT ),
        .PENABLE   ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PSEL      ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .HRDATA    ( CoreAHBLite_0_AHBmslave7_HRDATA ),
        .HRESP     ( CoreAHBLite_0_AHBmslave7_HRESP ),
        .PWDATA    ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PADDR     ( COREAHBTOAPB3_0_APBmaster_PADDR ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 15 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 6 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PENABLE    ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PSEL       ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREAHBTOAPB3_0_APBmaster_PADDR ),
        .PWDATA     ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA ),
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR    ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave1_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave1_PWDATA ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_0(
        // Inputs
        .ACLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .ARESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .AWVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY ),
        .HCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .HREADYIN ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_0_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST ),
        .HWRITE   ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID ),
        .RID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP ),
        .HSIZE    ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_0_AHBMasterIF_HBURST ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_1(
        // Inputs
        .ACLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .ARESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .AWVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY ),
        .HCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .HREADYIN ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_1_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST ),
        .HWRITE   ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID ),
        .RID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP ),
        .HSIZE    ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_1_AHBMasterIF_HBURST ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 15 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 0 ),
        .FIXED_CONFIG_5  ( 0 ),
        .FIXED_CONFIG_6  ( 0 ),
        .FIXED_CONFIG_7  ( 0 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 4 ),
        .IO_TYPE_0       ( 0 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_0(
        // Inputs
        .PRESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .PCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PSEL     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_1 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave2_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .INT      (  ),
        .GPIO_OUT (  ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 15 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 0 ),
        .FIXED_CONFIG_5  ( 0 ),
        .FIXED_CONFIG_6  ( 0 ),
        .FIXED_CONFIG_7  ( 0 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 4 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_OUT(
        // Inputs
        .PRESETN  ( reset_synchronizer_0_reset_sync_2 ),
        .PCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PSEL     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_4 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave5_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  (  ) 
        );

//--------COREJTAGDEBUG   -   Actel:DirectCore:COREJTAGDEBUG:2.0.100
COREJTAGDEBUG #( 
        .ACTIVE_HIGH_TGT_RESET ( 1 ),
        .IR_CODE               ( 'h55 ) )
COREJTAGDEBUG_0(
        // Inputs
        .TGT_TDO     ( CORERISCV_AXI4_0_TDO ),
        .TDI         ( TDI ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TRSTB       ( TRSTB ),
        .UTDODRV_0   ( GND_net ), // tied to 1'b0 from definition
        .UTDODRV_1   ( GND_net ), // tied to 1'b0 from definition
        .UTDODRV_2   ( GND_net ), // tied to 1'b0 from definition
        .UTDODRV_3   ( GND_net ), // tied to 1'b0 from definition
        .UTDO_IN_0   ( GND_net ), // tied to 1'b0 from definition
        .UTDO_IN_1   ( GND_net ), // tied to 1'b0 from definition
        .UTDO_IN_2   ( GND_net ), // tied to 1'b0 from definition
        .UTDO_IN_3   ( GND_net ), // tied to 1'b0 from definition
        .UDRCAP_IN   ( GND_net ), // tied to 1'b0 from definition
        .UDRSH_IN    ( GND_net ), // tied to 1'b0 from definition
        .UDRUPD_IN   ( GND_net ), // tied to 1'b0 from definition
        .URSTB_IN    ( GND_net ), // tied to 1'b0 from definition
        .UDRCK_IN    ( GND_net ), // tied to 1'b0 from definition
        .UTDI_IN     ( GND_net ), // tied to 1'b0 from definition
        .UIREG_IN    ( UIREG_IN_const_net_0 ), // tied to 8'h00 from definition
        // Outputs
        .TGT_TCK     ( COREJTAGDEBUG_0_TGT_TCK ),
        .TGT_TRST    ( COREJTAGDEBUG_0_TGT_TRST ),
        .TGT_TMS     ( COREJTAGDEBUG_0_TGT_TMS ),
        .TGT_TDI     ( COREJTAGDEBUG_0_TGT_TDI ),
        .TDO         ( TDO_net_0 ),
        .UDRCAP_OUT  (  ),
        .UDRSH_OUT   (  ),
        .UDRUPD_OUT  (  ),
        .URSTB_OUT   (  ),
        .UDRCK_OUT   (  ),
        .UTDI_OUT    (  ),
        .UTDODRV_OUT (  ),
        .UTDO_OUT    (  ),
        .UIREG_OUT   (  ) 
        );

//--------PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4   -   Actel:DirectCore:CORERISCV_AXI4:2.0.102
PROC_SUBSYSTEM_CORERISCV_AXI4_0_CORERISCV_AXI4 #( 
        .RESET_VECTOR_ADDR ( 'h80000000 ) )
CORERISCV_AXI4_0(
        // Inputs
        .CLK                   ( PF_CCC_0_OUT0_FABCLK_0 ),
        .RESET                 ( RESET_IN_POST_INV0_0 ),
        .AXI_MST_MEM_AWREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY ),
        .AXI_MST_MEM_WREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_WREADY ),
        .AXI_MST_MEM_BVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_BVALID ),
        .AXI_MST_MEM_BUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_BUSER ),
        .AXI_MST_MEM_ARREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY ),
        .AXI_MST_MEM_RVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_RVALID ),
        .AXI_MST_MEM_RLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_RLAST ),
        .AXI_MST_MEM_RUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_RUSER ),
        .AXI_MST_MMIO_AWREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY ),
        .AXI_MST_MMIO_WREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY ),
        .AXI_MST_MMIO_BVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID ),
        .AXI_MST_MMIO_BUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER ),
        .AXI_MST_MMIO_ARREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY ),
        .AXI_MST_MMIO_RVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID ),
        .AXI_MST_MMIO_RLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST ),
        .AXI_MST_MMIO_RUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER ),
        .TDI                   ( COREJTAGDEBUG_0_TGT_TDI ),
        .TCK                   ( COREJTAGDEBUG_0_TGT_TCK ),
        .TMS                   ( COREJTAGDEBUG_0_TGT_TMS ),
        .TRST                  ( COREJTAGDEBUG_0_TGT_TRST ),
        .AXI_MST_MEM_BRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_BRESP ),
        .AXI_MST_MEM_BID       ( CORERISCV_AXI4_0_AXI_MST_MEM_BID ),
        .AXI_MST_MEM_RRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_RRESP ),
        .AXI_MST_MEM_RDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_RDATA ),
        .AXI_MST_MEM_RID       ( CORERISCV_AXI4_0_AXI_MST_MEM_RID ),
        .AXI_MST_MMIO_BRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP ),
        .AXI_MST_MMIO_BID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_BID ),
        .AXI_MST_MMIO_RRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP ),
        .AXI_MST_MMIO_RDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA ),
        .AXI_MST_MMIO_RID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_RID ),
        .IRQ                   ( IRQ_net_0 ),
        // Outputs
        .AXI_MST_MEM_AWVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID ),
        .AXI_MST_MEM_AWLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK ),
        .AXI_MST_MEM_AWUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER ),
        .AXI_MST_MEM_WVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_WVALID ),
        .AXI_MST_MEM_WLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_WLAST ),
        .AXI_MST_MEM_WUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_WUSER ),
        .AXI_MST_MEM_BREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_BREADY ),
        .AXI_MST_MEM_ARVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID ),
        .AXI_MST_MEM_ARLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK ),
        .AXI_MST_MEM_ARUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER ),
        .AXI_MST_MEM_RREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_RREADY ),
        .AXI_MST_MMIO_AWVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID ),
        .AXI_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK ),
        .AXI_MST_MMIO_AWUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER ),
        .AXI_MST_MMIO_WVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID ),
        .AXI_MST_MMIO_WLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST ),
        .AXI_MST_MMIO_WUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER ),
        .AXI_MST_MMIO_BREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY ),
        .AXI_MST_MMIO_ARVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID ),
        .AXI_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK ),
        .AXI_MST_MMIO_ARUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER ),
        .AXI_MST_MMIO_RREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY ),
        .TDO                   ( CORERISCV_AXI4_0_TDO ),
        .DRV_TDO               (  ),
        .AXI_MST_MEM_AWADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR ),
        .AXI_MST_MEM_AWLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN ),
        .AXI_MST_MEM_AWSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE ),
        .AXI_MST_MEM_AWBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST ),
        .AXI_MST_MEM_AWCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE ),
        .AXI_MST_MEM_AWPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT ),
        .AXI_MST_MEM_AWQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS ),
        .AXI_MST_MEM_AWREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION ),
        .AXI_MST_MEM_AWID      ( CORERISCV_AXI4_0_AXI_MST_MEM_AWID ),
        .AXI_MST_MEM_WDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_WDATA ),
        .AXI_MST_MEM_WSTRB     ( CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB ),
        .AXI_MST_MEM_ARADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR ),
        .AXI_MST_MEM_ARLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN ),
        .AXI_MST_MEM_ARSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE ),
        .AXI_MST_MEM_ARBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST ),
        .AXI_MST_MEM_ARCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE ),
        .AXI_MST_MEM_ARPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT ),
        .AXI_MST_MEM_ARQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS ),
        .AXI_MST_MEM_ARREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION ),
        .AXI_MST_MEM_ARID      ( CORERISCV_AXI4_0_AXI_MST_MEM_ARID ),
        .AXI_MST_MMIO_AWADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR ),
        .AXI_MST_MMIO_AWLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN ),
        .AXI_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE ),
        .AXI_MST_MMIO_AWBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST ),
        .AXI_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE ),
        .AXI_MST_MMIO_AWPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT ),
        .AXI_MST_MMIO_AWQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS ),
        .AXI_MST_MMIO_AWREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION ),
        .AXI_MST_MMIO_AWID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWID ),
        .AXI_MST_MMIO_WDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA ),
        .AXI_MST_MMIO_WSTRB    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB ),
        .AXI_MST_MMIO_ARADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR ),
        .AXI_MST_MMIO_ARLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN ),
        .AXI_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE ),
        .AXI_MST_MMIO_ARBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST ),
        .AXI_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE ),
        .AXI_MST_MMIO_ARPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT ),
        .AXI_MST_MMIO_ARQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS ),
        .AXI_MST_MMIO_ARREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION ),
        .AXI_MST_MMIO_ARID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARID ),
        .AXI_MST_MEM_WID       ( CORERISCV_AXI4_0_AXI_MST_MEM_WID ),
        .AXI_MST_MMIO_WID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_WID ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_0(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( reset_synchronizer_0_reset_sync_2 ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_2 ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_0_TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_1(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( reset_synchronizer_0_reset_sync_2 ),
        .PSEL    ( CoreAPB3_0_APBmslave4_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_3 ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_1_TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------PROC_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.6.102
PROC_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 26 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETN     ( reset_synchronizer_0_reset_sync_2 ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave1_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_0_APBmslave1_PADDR_0 ),
        .PWDATA      ( CoreAPB3_0_APBmslave1_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------PROC_SUBSYSTEM_PF_CCC_0_PF_CCC   -   Actel:SgCore:PF_CCC:1.0.104
PROC_SUBSYSTEM_PF_CCC_0_PF_CCC PF_CCC_0(
        // Inputs
        .REF_CLK_0     ( PF_OSC_0_RCOSC_160MHZ_GL ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    ( PF_CCC_0_PLL_LOCK_0 ) 
        );

//--------PROC_SUBSYSTEM_PF_OSC_0_PF_OSC   -   Actel:SgCore:PF_OSC:1.0.100
PROC_SUBSYSTEM_PF_OSC_0_PF_OSC PF_OSC_0(
        // Outputs
        .RCOSC_160MHZ_GL ( PF_OSC_0_RCOSC_160MHZ_GL ) 
        );

//--------reset_synchronizer
reset_synchronizer reset_synchronizer_0(
        // Inputs
        .clock      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .reset      ( AND2_1_Y_3 ),
        // Outputs
        .reset_sync ( reset_synchronizer_0_reset_sync_2 ) 
        );

//--------SRAM
SRAM SRAM_0(
        // Inputs
        .HCLK      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN   ( reset_synchronizer_0_reset_sync_2 ),
        .HADDR     ( CoreAHBLite_1_AHBmslave8_HADDR ),
        .HTRANS    ( CoreAHBLite_1_AHBmslave8_HTRANS ),
        .HWRITE    ( CoreAHBLite_1_AHBmslave8_HWRITE ),
        .HSIZE     ( CoreAHBLite_1_AHBmslave8_HSIZE ),
        .HBURST    ( CoreAHBLite_1_AHBmslave8_HBURST ),
        .HWDATA    ( CoreAHBLite_1_AHBmslave8_HWDATA ),
        .HSEL      ( CoreAHBLite_1_AHBmslave8_HSELx ),
        .HREADYIN  ( CoreAHBLite_1_AHBmslave8_HREADY ),
        // Outputs
        .HRDATA    ( CoreAHBLite_1_AHBmslave8_HRDATA ),
        .HREADYOUT ( CoreAHBLite_1_AHBmslave8_HREADYOUT ),
        .HRESP     ( CoreAHBLite_1_AHBmslave8_HRESP ) 
        );


endmodule
