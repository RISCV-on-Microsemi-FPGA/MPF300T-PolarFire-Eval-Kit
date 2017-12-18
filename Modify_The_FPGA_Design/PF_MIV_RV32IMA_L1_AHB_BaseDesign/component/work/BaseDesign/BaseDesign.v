//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Dec 15 15:13:06 2017
// Version: PolarFire v2.0 12.200.0.20
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// BaseDesign
module BaseDesign(
    // Inputs
    GPIO_IN,
    REF_CLK_0,
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
input  [7:0] GPIO_IN;
input        REF_CLK_0;
input        RX;
input        TCK;
input        TDI;
input        TMS;
input        TRSTB;
input        USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0] GPIO_OUT;
output       TDO;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AND2_0_Y;
wire          CCC_0_OUT0_FABCLK_0_0;
wire          CCC_0_PLL_LOCK_0;
wire          Core_APB3_0_APBmslave1_PENABLE;
wire          Core_APB3_0_APBmslave1_PREADY;
wire          Core_APB3_0_APBmslave1_PSELx;
wire          Core_APB3_0_APBmslave1_PSLVERR;
wire          Core_APB3_0_APBmslave1_PWRITE;
wire   [31:0] Core_APB3_0_APBmslave2_PRDATA;
wire          Core_APB3_0_APBmslave2_PREADY;
wire          Core_APB3_0_APBmslave2_PSELx;
wire          Core_APB3_0_APBmslave2_PSLVERR;
wire   [31:0] Core_APB3_0_APBmslave3_PRDATA;
wire          Core_APB3_0_APBmslave3_PSELx;
wire   [31:0] Core_APB3_0_APBmslave4_PRDATA;
wire          Core_APB3_0_APBmslave4_PSELx;
wire   [31:0] Core_APB3_0_APBmslave5_PRDATA;
wire          Core_APB3_0_APBmslave5_PREADY;
wire          Core_APB3_0_APBmslave5_PSELx;
wire          Core_APB3_0_APBmslave5_PSLVERR;
wire   [31:0] CoreAHB_APB3_0_APBmaster_PADDR;
wire          CoreAHB_APB3_0_APBmaster_PENABLE;
wire   [31:0] CoreAHB_APB3_0_APBmaster_PRDATA;
wire          CoreAHB_APB3_0_APBmaster_PREADY;
wire          CoreAHB_APB3_0_APBmaster_PSELx;
wire          CoreAHB_APB3_0_APBmaster_PSLVERR;
wire   [31:0] CoreAHB_APB3_0_APBmaster_PWDATA;
wire          CoreAHB_APB3_0_APBmaster_PWRITE;
wire   [31:0] CoreAHBL1_0_AHBmslave8_HADDR;
wire   [2:0]  CoreAHBL1_0_AHBmslave8_HBURST;
wire          CoreAHBL1_0_AHBmslave8_HMASTLOCK;
wire   [3:0]  CoreAHBL1_0_AHBmslave8_HPROT;
wire   [31:0] CoreAHBL1_0_AHBmslave8_HRDATA;
wire          CoreAHBL1_0_AHBmslave8_HREADY;
wire          CoreAHBL1_0_AHBmslave8_HREADYOUT;
wire   [1:0]  CoreAHBL1_0_AHBmslave8_HRESP;
wire          CoreAHBL1_0_AHBmslave8_HSELx;
wire   [2:0]  CoreAHBL1_0_AHBmslave8_HSIZE;
wire   [1:0]  CoreAHBL1_0_AHBmslave8_HTRANS;
wire   [31:0] CoreAHBL1_0_AHBmslave8_HWDATA;
wire          CoreAHBL1_0_AHBmslave8_HWRITE;
wire   [31:0] CoreAHBL_0_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBL_0_AHBmslave7_HBURST;
wire          CoreAHBL_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBL_0_AHBmslave7_HPROT;
wire   [31:0] CoreAHBL_0_AHBmslave7_HRDATA;
wire          CoreAHBL_0_AHBmslave7_HREADY;
wire          CoreAHBL_0_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBL_0_AHBmslave7_HRESP;
wire          CoreAHBL_0_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBL_0_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBL_0_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBL_0_AHBmslave7_HWDATA;
wire          CoreAHBL_0_AHBmslave7_HWRITE;
wire          CoreTimer0_0_TIMINT;
wire          CoreTimer1_0_TIMINT;
wire   [7:0]  GPIO_IN;
wire   [7:0]  GPIO_OUT_0_net_0;
wire          JTAGDebug_0_TGT_TCK;
wire          JTAGDebug_0_TGT_TDI;
wire          JTAGDebug_0_TGT_TMS;
wire          JTAGDebug_0_TGT_TRST;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MEM_HADDR;
wire   [2:0]  MIV_RV32IMA_0_AHB_MST_MEM_HBURST;
wire          MIV_RV32IMA_0_AHB_MST_MEM_HLOCK;
wire   [3:0]  MIV_RV32IMA_0_AHB_MST_MEM_HPROT;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MEM_HRDATA;
wire          MIV_RV32IMA_0_AHB_MST_MEM_HREADY;
wire   [2:0]  MIV_RV32IMA_0_AHB_MST_MEM_HSIZE;
wire   [1:0]  MIV_RV32IMA_0_AHB_MST_MEM_HTRANS;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MEM_HWDATA;
wire          MIV_RV32IMA_0_AHB_MST_MEM_HWRITE;
wire   [2:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HBURST;
wire          MIV_RV32IMA_0_AHB_MST_MMIO_HLOCK;
wire   [3:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HPROT;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MMIO_HRDATA;
wire          MIV_RV32IMA_0_AHB_MST_MMIO_HREADY;
wire   [2:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HSIZE;
wire   [1:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HTRANS;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MMIO_HWDATA;
wire          MIV_RV32IMA_0_AHB_MST_MMIO_HWRITE;
wire          MIV_RV32IMA_0_TDO;
wire          REF_CLK_0;
wire          reset_sync;
wire          RX;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TDO_net_1;
wire          TX_net_1;
wire   [7:0]  GPIO_OUT_0_net_1;
wire   [30:0] IRQ_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [7:0]  GPIO_IN_const_net_0;
wire   [28:0] IRQ_const_net_0;
wire          VCC_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [4:2]  Core_APB3_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  Core_APB3_0_APBmslave1_PADDR_2;
wire   [4:2]  Core_APB3_0_APBmslave1_PADDR_3_4to2;
wire   [4:2]  Core_APB3_0_APBmslave1_PADDR_3;
wire   [4:0]  Core_APB3_0_APBmslave1_PADDR_0_4to0;
wire   [4:0]  Core_APB3_0_APBmslave1_PADDR_0;
wire   [7:0]  Core_APB3_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  Core_APB3_0_APBmslave1_PADDR_4;
wire   [7:0]  Core_APB3_0_APBmslave1_PADDR_1_7to0;
wire   [7:0]  Core_APB3_0_APBmslave1_PADDR_1;
wire   [31:0] Core_APB3_0_APBmslave1_PADDR;
wire   [31:8] Core_APB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  Core_APB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] Core_APB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  Core_APB3_0_APBmslave1_PRDATA;
wire   [31:0] Core_APB3_0_APBmslave1_PWDATA;
wire   [7:0]  Core_APB3_0_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  Core_APB3_0_APBmslave1_PWDATA_0;
wire   [0:0]  MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0_0to0;
wire          MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0;
wire   [1:0]  MIV_RV32IMA_0_AHB_MST_MEM_HRESP;
wire   [30:0] MIV_RV32IMA_0_AHB_MST_MMIO_HADDR;
wire   [31:31]MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_31to31;
wire   [30:0] MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_30to0;
wire   [31:0] MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0;
wire   [0:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0_0to0;
wire          MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0;
wire   [1:0]  MIV_RV32IMA_0_AHB_MST_MMIO_HRESP;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net             = 1'b0;
assign GPIO_IN_const_net_0 = 8'h00;
assign IRQ_const_net_0     = 29'h00000000;
assign VCC_net             = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1        = TDO_net_0;
assign TDO              = TDO_net_1;
assign TX_net_1         = TX_net_0;
assign TX               = TX_net_1;
assign GPIO_OUT_0_net_1 = GPIO_OUT_0_net_0;
assign GPIO_OUT[7:0]    = GPIO_OUT_0_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0 = { CoreTimer1_0_TIMINT , CoreTimer0_0_TIMINT , 29'h00000000 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign Core_APB3_0_APBmslave1_PADDR_2_4to2 = Core_APB3_0_APBmslave1_PADDR[4:2];
assign Core_APB3_0_APBmslave1_PADDR_2 = { Core_APB3_0_APBmslave1_PADDR_2_4to2 };
assign Core_APB3_0_APBmslave1_PADDR_3_4to2 = Core_APB3_0_APBmslave1_PADDR[4:2];
assign Core_APB3_0_APBmslave1_PADDR_3 = { Core_APB3_0_APBmslave1_PADDR_3_4to2 };
assign Core_APB3_0_APBmslave1_PADDR_0_4to0 = Core_APB3_0_APBmslave1_PADDR[4:0];
assign Core_APB3_0_APBmslave1_PADDR_0 = { Core_APB3_0_APBmslave1_PADDR_0_4to0 };
assign Core_APB3_0_APBmslave1_PADDR_4_7to0 = Core_APB3_0_APBmslave1_PADDR[7:0];
assign Core_APB3_0_APBmslave1_PADDR_4 = { Core_APB3_0_APBmslave1_PADDR_4_7to0 };
assign Core_APB3_0_APBmslave1_PADDR_1_7to0 = Core_APB3_0_APBmslave1_PADDR[7:0];
assign Core_APB3_0_APBmslave1_PADDR_1 = { Core_APB3_0_APBmslave1_PADDR_1_7to0 };

assign Core_APB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign Core_APB3_0_APBmslave1_PRDATA_0_7to0 = Core_APB3_0_APBmslave1_PRDATA[7:0];
assign Core_APB3_0_APBmslave1_PRDATA_0 = { Core_APB3_0_APBmslave1_PRDATA_0_31to8, Core_APB3_0_APBmslave1_PRDATA_0_7to0 };

assign Core_APB3_0_APBmslave1_PWDATA_0_7to0 = Core_APB3_0_APBmslave1_PWDATA[7:0];
assign Core_APB3_0_APBmslave1_PWDATA_0 = { Core_APB3_0_APBmslave1_PWDATA_0_7to0 };

assign MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0_0to0 = MIV_RV32IMA_0_AHB_MST_MEM_HRESP[0:0];
assign MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0 = { MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0_0to0 };

assign MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_31to31 = 1'b0;
assign MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_30to0 = MIV_RV32IMA_0_AHB_MST_MMIO_HADDR[30:0];
assign MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0 = { MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_31to31, MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0_30to0 };

assign MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0_0to0 = MIV_RV32IMA_0_AHB_MST_MMIO_HRESP[0:0];
assign MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0 = { MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( CCC_0_PLL_LOCK_0 ),
        .B ( USER_RST ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------CCC
CCC CCC_0(
        // Inputs
        .REF_CLK_0     ( REF_CLK_0 ),
        // Outputs
        .OUT0_FABCLK_0 ( CCC_0_OUT0_FABCLK_0_0 ),
        .PLL_LOCK_0    ( CCC_0_PLL_LOCK_0 ) 
        );

//--------Core_APB3
Core_APB3 Core_APB3_0(
        // Inputs
        .PSEL       ( CoreAHB_APB3_0_APBmaster_PSELx ),
        .PENABLE    ( CoreAHB_APB3_0_APBmaster_PENABLE ),
        .PWRITE     ( CoreAHB_APB3_0_APBmaster_PWRITE ),
        .PREADYS1   ( Core_APB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( Core_APB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( Core_APB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( Core_APB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( Core_APB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( Core_APB3_0_APBmslave5_PSLVERR ),
        .PADDR      ( CoreAHB_APB3_0_APBmaster_PADDR ),
        .PWDATA     ( CoreAHB_APB3_0_APBmaster_PWDATA ),
        .PRDATAS1   ( Core_APB3_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( Core_APB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( Core_APB3_0_APBmslave3_PRDATA ),
        .PRDATAS4   ( Core_APB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( Core_APB3_0_APBmslave5_PRDATA ),
        // Outputs
        .PREADY     ( CoreAHB_APB3_0_APBmaster_PREADY ),
        .PSLVERR    ( CoreAHB_APB3_0_APBmaster_PSLVERR ),
        .PSELS1     ( Core_APB3_0_APBmslave1_PSELx ),
        .PENABLES_4 ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITES_4  ( Core_APB3_0_APBmslave1_PWRITE ),
        .PSELS2     ( Core_APB3_0_APBmslave2_PSELx ),
        .PSELS3     ( Core_APB3_0_APBmslave3_PSELx ),
        .PSELS4     ( Core_APB3_0_APBmslave4_PSELx ),
        .PSELS5     ( Core_APB3_0_APBmslave5_PSELx ),
        .PRDATA     ( CoreAHB_APB3_0_APBmaster_PRDATA ),
        .PADDRS_4   ( Core_APB3_0_APBmslave1_PADDR ),
        .PWDATAS_4  ( Core_APB3_0_APBmslave1_PWDATA ) 
        );

//--------CoreAHB_APB3
CoreAHB_APB3 CoreAHB_APB3_0(
        // Inputs
        .HCLK      ( CCC_0_OUT0_FABCLK_0_0 ),
        .HRESETN   ( reset_sync ),
        .HWRITE    ( CoreAHBL_0_AHBmslave7_HWRITE ),
        .HSEL      ( CoreAHBL_0_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBL_0_AHBmslave7_HREADY ),
        .PREADY    ( CoreAHB_APB3_0_APBmaster_PREADY ),
        .PSLVERR   ( CoreAHB_APB3_0_APBmaster_PSLVERR ),
        .HADDR     ( CoreAHBL_0_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBL_0_AHBmslave7_HTRANS ),
        .HWDATA    ( CoreAHBL_0_AHBmslave7_HWDATA ),
        .PRDATA    ( CoreAHB_APB3_0_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBL_0_AHBmslave7_HREADYOUT ),
        .PSEL      ( CoreAHB_APB3_0_APBmaster_PSELx ),
        .PENABLE   ( CoreAHB_APB3_0_APBmaster_PENABLE ),
        .PWRITE    ( CoreAHB_APB3_0_APBmaster_PWRITE ),
        .HRDATA    ( CoreAHBL_0_AHBmslave7_HRDATA ),
        .HRESP     ( CoreAHBL_0_AHBmslave7_HRESP ),
        .PADDR     ( CoreAHB_APB3_0_APBmaster_PADDR ),
        .PWDATA    ( CoreAHB_APB3_0_APBmaster_PWDATA ) 
        );

//--------CoreAHBL1
CoreAHBL1 CoreAHBL1_0(
        // Inputs
        .HCLK         ( CCC_0_OUT0_FABCLK_0_0 ),
        .HRESETN      ( reset_sync ),
        .REMAP_M0     ( GND_net ),
        .HWRITE_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HWRITE ),
        .HMASTLOCK_M0 ( MIV_RV32IMA_0_AHB_MST_MEM_HLOCK ),
        .HREADYOUT_S8 ( CoreAHBL1_0_AHBmslave8_HREADYOUT ),
        .HADDR_M0     ( MIV_RV32IMA_0_AHB_MST_MEM_HADDR ),
        .HTRANS_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HTRANS ),
        .HSIZE_M0     ( MIV_RV32IMA_0_AHB_MST_MEM_HSIZE ),
        .HBURST_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HBURST ),
        .HPROT_M0     ( MIV_RV32IMA_0_AHB_MST_MEM_HPROT ),
        .HWDATA_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HWDATA ),
        .HRDATA_S8    ( CoreAHBL1_0_AHBmslave8_HRDATA ),
        .HRESP_S8     ( CoreAHBL1_0_AHBmslave8_HRESP ),
        // Outputs
        .HREADY_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HREADY ),
        .HWRITE_S8    ( CoreAHBL1_0_AHBmslave8_HWRITE ),
        .HSEL_S8      ( CoreAHBL1_0_AHBmslave8_HSELx ),
        .HREADY_S8    ( CoreAHBL1_0_AHBmslave8_HREADY ),
        .HMASTLOCK_S8 ( CoreAHBL1_0_AHBmslave8_HMASTLOCK ),
        .HRDATA_M0    ( MIV_RV32IMA_0_AHB_MST_MEM_HRDATA ),
        .HRESP_M0     ( MIV_RV32IMA_0_AHB_MST_MEM_HRESP ),
        .HADDR_S8     ( CoreAHBL1_0_AHBmslave8_HADDR ),
        .HTRANS_S8    ( CoreAHBL1_0_AHBmslave8_HTRANS ),
        .HSIZE_S8     ( CoreAHBL1_0_AHBmslave8_HSIZE ),
        .HWDATA_S8    ( CoreAHBL1_0_AHBmslave8_HWDATA ),
        .HBURST_S8    ( CoreAHBL1_0_AHBmslave8_HBURST ),
        .HPROT_S8     ( CoreAHBL1_0_AHBmslave8_HPROT ) 
        );

//--------CoreAHBL
CoreAHBL CoreAHBL_0(
        // Inputs
        .HCLK         ( CCC_0_OUT0_FABCLK_0_0 ),
        .HRESETN      ( reset_sync ),
        .REMAP_M0     ( GND_net ),
        .HWRITE_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HWRITE ),
        .HMASTLOCK_M0 ( MIV_RV32IMA_0_AHB_MST_MMIO_HLOCK ),
        .HREADYOUT_S7 ( CoreAHBL_0_AHBmslave7_HREADYOUT ),
        .HADDR_M0     ( MIV_RV32IMA_0_AHB_MST_MMIO_HADDR_0 ),
        .HTRANS_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HTRANS ),
        .HSIZE_M0     ( MIV_RV32IMA_0_AHB_MST_MMIO_HSIZE ),
        .HBURST_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HBURST ),
        .HPROT_M0     ( MIV_RV32IMA_0_AHB_MST_MMIO_HPROT ),
        .HWDATA_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HWDATA ),
        .HRDATA_S7    ( CoreAHBL_0_AHBmslave7_HRDATA ),
        .HRESP_S7     ( CoreAHBL_0_AHBmslave7_HRESP ),
        // Outputs
        .HREADY_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HREADY ),
        .HWRITE_S7    ( CoreAHBL_0_AHBmslave7_HWRITE ),
        .HSEL_S7      ( CoreAHBL_0_AHBmslave7_HSELx ),
        .HREADY_S7    ( CoreAHBL_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7 ( CoreAHBL_0_AHBmslave7_HMASTLOCK ),
        .HRDATA_M0    ( MIV_RV32IMA_0_AHB_MST_MMIO_HRDATA ),
        .HRESP_M0     ( MIV_RV32IMA_0_AHB_MST_MMIO_HRESP ),
        .HADDR_S7     ( CoreAHBL_0_AHBmslave7_HADDR ),
        .HTRANS_S7    ( CoreAHBL_0_AHBmslave7_HTRANS ),
        .HSIZE_S7     ( CoreAHBL_0_AHBmslave7_HSIZE ),
        .HWDATA_S7    ( CoreAHBL_0_AHBmslave7_HWDATA ),
        .HBURST_S7    ( CoreAHBL_0_AHBmslave7_HBURST ),
        .HPROT_S7     ( CoreAHBL_0_AHBmslave7_HPROT ) 
        );

//--------CoreGPIO_0
CoreGPIO_0 CoreGPIO_0_0(
        // Inputs
        .PRESETN  ( reset_sync ),
        .PCLK     ( CCC_0_OUT0_FABCLK_0_0 ),
        .PSEL     ( Core_APB3_0_APBmslave2_PSELx ),
        .PENABLE  ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( Core_APB3_0_APBmslave1_PWRITE ),
        .PADDR    ( Core_APB3_0_APBmslave1_PADDR_1 ),
        .PWDATA   ( Core_APB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PREADY   ( Core_APB3_0_APBmslave2_PREADY ),
        .PSLVERR  ( Core_APB3_0_APBmslave2_PSLVERR ),
        .PRDATA   ( Core_APB3_0_APBmslave2_PRDATA ),
        .INT      (  ),
        .GPIO_OUT (  ) 
        );

//--------CoreTimer0
CoreTimer0 CoreTimer0_0(
        // Inputs
        .PCLK    ( CCC_0_OUT0_FABCLK_0_0 ),
        .PRESETn ( reset_sync ),
        .PSEL    ( Core_APB3_0_APBmslave3_PSELx ),
        .PENABLE ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITE  ( Core_APB3_0_APBmslave1_PWRITE ),
        .PADDR   ( Core_APB3_0_APBmslave1_PADDR_2 ),
        .PWDATA  ( Core_APB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer0_0_TIMINT ),
        .PRDATA  ( Core_APB3_0_APBmslave3_PRDATA ) 
        );

//--------CoreTimer1
CoreTimer1 CoreTimer1_0(
        // Inputs
        .PCLK    ( CCC_0_OUT0_FABCLK_0_0 ),
        .PRESETn ( reset_sync ),
        .PSEL    ( Core_APB3_0_APBmslave4_PSELx ),
        .PENABLE ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITE  ( Core_APB3_0_APBmslave1_PWRITE ),
        .PADDR   ( Core_APB3_0_APBmslave1_PADDR_3 ),
        .PWDATA  ( Core_APB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer1_0_TIMINT ),
        .PRDATA  ( Core_APB3_0_APBmslave4_PRDATA ) 
        );

//--------CoreUART_apb
CoreUART_apb CoreUART_apb_0(
        // Inputs
        .PCLK        ( CCC_0_OUT0_FABCLK_0_0 ),
        .PRESETN     ( reset_sync ),
        .RX          ( RX ),
        .PSEL        ( Core_APB3_0_APBmslave1_PSELx ),
        .PENABLE     ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITE      ( Core_APB3_0_APBmslave1_PWRITE ),
        .PADDR       ( Core_APB3_0_APBmslave1_PADDR_0 ),
        .PWDATA      ( Core_APB3_0_APBmslave1_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PREADY      ( Core_APB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( Core_APB3_0_APBmslave1_PSLVERR ),
        .PRDATA      ( Core_APB3_0_APBmslave1_PRDATA ) 
        );

//--------GPIO_OUT_0
GPIO_OUT_0 GPIO_OUT_0_0(
        // Inputs
        .PRESETN  ( reset_sync ),
        .PCLK     ( CCC_0_OUT0_FABCLK_0_0 ),
        .PSEL     ( Core_APB3_0_APBmslave5_PSELx ),
        .PENABLE  ( Core_APB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( Core_APB3_0_APBmslave1_PWRITE ),
        .PADDR    ( Core_APB3_0_APBmslave1_PADDR_4 ),
        .PWDATA   ( Core_APB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PREADY   ( Core_APB3_0_APBmslave5_PREADY ),
        .PSLVERR  ( Core_APB3_0_APBmslave5_PSLVERR ),
        .PRDATA   ( Core_APB3_0_APBmslave5_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_0_net_0 ) 
        );

//--------JTAGDebug
JTAGDebug JTAGDebug_0(
        // Inputs
        .TDI        ( TDI ),
        .TCK        ( TCK ),
        .TMS        ( TMS ),
        .TRSTB      ( TRSTB ),
        .TGT_TDO    ( MIV_RV32IMA_0_TDO ),
        .UTDODRV_0  ( GND_net ),
        .UTDODRV_1  ( GND_net ),
        .UTDODRV_2  ( GND_net ),
        .UTDODRV_3  ( GND_net ),
        .UTDO_IN_0  ( GND_net ),
        .UTDO_IN_1  ( GND_net ),
        .UTDO_IN_2  ( GND_net ),
        .UTDO_IN_3  ( GND_net ),
        // Outputs
        .TDO        ( TDO_net_0 ),
        .TGT_TCK    ( JTAGDebug_0_TGT_TCK ),
        .TGT_TRST   ( JTAGDebug_0_TGT_TRST ),
        .TGT_TMS    ( JTAGDebug_0_TGT_TMS ),
        .TGT_TDI    ( JTAGDebug_0_TGT_TDI ),
        .UDRCAP_OUT (  ),
        .UDRSH_OUT  (  ),
        .UDRUPD_OUT (  ),
        .URSTB_OUT  (  ),
        .UDRCK_OUT  (  ),
        .UTDI_OUT   (  ),
        .UIREG_OUT  (  ) 
        );

//--------LSRAM
LSRAM LSRAM_0(
        // Inputs
        .HCLK      ( CCC_0_OUT0_FABCLK_0_0 ),
        .HRESETN   ( reset_sync ),
        .HWRITE    ( CoreAHBL1_0_AHBmslave8_HWRITE ),
        .HSEL      ( CoreAHBL1_0_AHBmslave8_HSELx ),
        .HREADYIN  ( CoreAHBL1_0_AHBmslave8_HREADY ),
        .HADDR     ( CoreAHBL1_0_AHBmslave8_HADDR ),
        .HTRANS    ( CoreAHBL1_0_AHBmslave8_HTRANS ),
        .HSIZE     ( CoreAHBL1_0_AHBmslave8_HSIZE ),
        .HBURST    ( CoreAHBL1_0_AHBmslave8_HBURST ),
        .HWDATA    ( CoreAHBL1_0_AHBmslave8_HWDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBL1_0_AHBmslave8_HREADYOUT ),
        .HRDATA    ( CoreAHBL1_0_AHBmslave8_HRDATA ),
        .HRESP     ( CoreAHBL1_0_AHBmslave8_HRESP ) 
        );

//--------MIV_RV32IMA
MIV_RV32IMA MIV_RV32IMA_0(
        // Inputs
        .CLK                 ( CCC_0_OUT0_FABCLK_0_0 ),
        .RESETN              ( reset_sync ),
        .TCK                 ( JTAGDebug_0_TGT_TCK ),
        .TMS                 ( JTAGDebug_0_TGT_TMS ),
        .TRST                ( JTAGDebug_0_TGT_TRST ),
        .TDI                 ( JTAGDebug_0_TGT_TDI ),
        .AHB_MST_MEM_HREADY  ( MIV_RV32IMA_0_AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( MIV_RV32IMA_0_AHB_MST_MEM_HRESP_0 ),
        .AHB_MST_MMIO_HREADY ( MIV_RV32IMA_0_AHB_MST_MMIO_HREADY ),
        .AHB_MST_MMIO_HRESP  ( MIV_RV32IMA_0_AHB_MST_MMIO_HRESP_0 ),
        .IRQ                 ( IRQ_net_0 ),
        .AHB_MST_MEM_HRDATA  ( MIV_RV32IMA_0_AHB_MST_MEM_HRDATA ),
        .AHB_MST_MMIO_HRDATA ( MIV_RV32IMA_0_AHB_MST_MMIO_HRDATA ),
        // Outputs
        .TDO                 ( MIV_RV32IMA_0_TDO ),
        .DRV_TDO             (  ),
        .AHB_MST_MEM_HSEL    (  ),
        .AHB_MST_MEM_HWRITE  ( MIV_RV32IMA_0_AHB_MST_MEM_HWRITE ),
        .AHB_MST_MEM_HLOCK   ( MIV_RV32IMA_0_AHB_MST_MEM_HLOCK ),
        .AHB_MST_MMIO_HWRITE ( MIV_RV32IMA_0_AHB_MST_MMIO_HWRITE ),
        .AHB_MST_MMIO_HLOCK  ( MIV_RV32IMA_0_AHB_MST_MMIO_HLOCK ),
        .AHB_MST_MEM_HTRANS  ( MIV_RV32IMA_0_AHB_MST_MEM_HTRANS ),
        .AHB_MST_MEM_HADDR   ( MIV_RV32IMA_0_AHB_MST_MEM_HADDR ),
        .AHB_MST_MEM_HSIZE   ( MIV_RV32IMA_0_AHB_MST_MEM_HSIZE ),
        .AHB_MST_MEM_HBURST  ( MIV_RV32IMA_0_AHB_MST_MEM_HBURST ),
        .AHB_MST_MEM_HPROT   ( MIV_RV32IMA_0_AHB_MST_MEM_HPROT ),
        .AHB_MST_MEM_HWDATA  ( MIV_RV32IMA_0_AHB_MST_MEM_HWDATA ),
        .AHB_MST_MMIO_HTRANS ( MIV_RV32IMA_0_AHB_MST_MMIO_HTRANS ),
        .AHB_MST_MMIO_HADDR  ( MIV_RV32IMA_0_AHB_MST_MMIO_HADDR ),
        .AHB_MST_MMIO_HSIZE  ( MIV_RV32IMA_0_AHB_MST_MMIO_HSIZE ),
        .AHB_MST_MMIO_HBURST ( MIV_RV32IMA_0_AHB_MST_MMIO_HBURST ),
        .AHB_MST_MMIO_HPROT  ( MIV_RV32IMA_0_AHB_MST_MMIO_HPROT ),
        .AHB_MST_MMIO_HWDATA ( MIV_RV32IMA_0_AHB_MST_MMIO_HWDATA ) 
        );

//--------reset_synchronizer
reset_synchronizer reset_synchronizer_0(
        // Inputs
        .clock      ( CCC_0_OUT0_FABCLK_0_0 ),
        .reset      ( AND2_0_Y ),
        // Outputs
        .reset_sync ( reset_sync ) 
        );


endmodule
