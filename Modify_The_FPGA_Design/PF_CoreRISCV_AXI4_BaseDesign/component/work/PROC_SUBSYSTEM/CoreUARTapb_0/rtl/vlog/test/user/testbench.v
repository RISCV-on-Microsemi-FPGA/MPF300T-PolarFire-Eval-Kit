`timescale 1 ns / 1 ns

// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2009 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:	User testbench for CoreAI (Analog Interface)
//
// Revision Information:
// Date			Description
// ----			-----------------------------------------
// 03Mar09		Initial Version 2.0
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
// 1. best viewed with tabstops set to "4"
// 2. Most of the behavior is driven from the BFM scripts for the APB master.
//    Consult the Actel AMBA BFM documentation for more information.
//
// History:		04/22/09  - AS created
//
// *********************************************************************

module testbench;
//`include "coreparameters.v"
//`include "../../../coreparameters.v"
`include "../../../../coreparameters.v"

   // vector file for driving the APB master BFM
   // NOTE: location of the following files can be overridden at run time
   parameter        APB_MASTER_VECTFILE = "coreuart_usertb_apb_master.vec";
   // propagation delay in ns
   parameter        TPD = 3;
   
   
   //-----------------------------------------------------------------------------
   // constants
   //-----------------------------------------------------------------------------
   parameter        APB_MASTER_CLK_CYCLE = 100;
   parameter        APB_MASTER_CLK_CYCLE_LO_TIME = (APB_MASTER_CLK_CYCLE/2);
   // add 1 if APB_MASTER_CLK_CYCLE is odd number to compensate for PCLK period
   parameter        APB_MASTER_CLK_CYCLE_HI_TIME = (APB_MASTER_CLK_CYCLE/2);
   
   parameter [31:0] ADDR_IN = 32'h00000000;
   parameter [31:0] ADDR_OUT = 32'h00000001;
   parameter [31:0] ADDR_INT = 32'h00000002;
   parameter [31:0] ADDR_OE = 32'h00000003;
   
   //----------------------------------------------------------------------------
   // signals
   //-----------------------------------------------------------------------------
   
   // system
   reg              SYSRSTN_apb;
   reg              SYSCLK_apb;
   
   // APB
   wire             PCLK;
   wire             PRESETN;
   wire [31:0]      PADDR_apb_bfm_wide;
   wire [4:0]       PADDR;
   wire [15:0]      PSEL_apb_bfm_wide;
   wire             PSEL1;		// DUT1 PSEL
   wire             PSEL2;		// DUT2 PSEL
   wire             PENABLE;
   wire             PWRITE;
   wire [31:0]      PWDATA_apb_bfm_wide;
   wire [7:0]       PWDATA;
   
   // BFM
   wire [31:0]      PRDATA_apb_bfm_wide;
   wire [7:0]       PRDATA;
   wire [7:0]       PRDATA1;
   wire [7:0]       PRDATA2;
   wire             PREADY;
   wire             PSLVERR;
   
   wire [31:0]      GP_IN_apb_bfm;
   wire [31:0]      GP_OUT_apb_bfm;
   wire             FINISHED_apb_bfm;
   wire             FAILED_apb_bfm;
   
   // DUT1
   wire             TXRDY1;
   wire             RXRDY1;
   wire             TX1;
   wire             RX1;
   wire             PARITY_ERR1;
   wire             FRAMING_ERR1;
   wire             OVERFLOW1;
   
   // DUT2
   wire             TXRDY2;
   wire             RXRDY2;
   wire             TX2;
   wire             RX2;
   wire             PARITY_ERR2;
   wire             FRAMING_ERR2;
   wire             OVERFLOW2;
   
   wire             RX_SEL;
   
   // BFM memory interface
   // not used
   wire [31:0]      BFM_ADDR;
   wire [31:0]      BFM_DATA;
   wire [31:0]      BFM_DATA_i;
   wire             BFM_RD;
   wire             BFM_WR;
   
   // misc. signals
   wire [255:0]     GND256;
   wire [31:0]      GND32;
   wire [7:0]       GND8;
   wire [4:0]       GND5;
   wire [3:0]       GND4;
   wire             GND1;
   reg [0:0]        stopsim;
   
   // APB ASSIGNS
   assign PADDR = PADDR_apb_bfm_wide[4:0];
   assign PSEL1 = PSEL_apb_bfm_wide[0];
   assign PSEL2 = PSEL_apb_bfm_wide[1];
   assign PWDATA = PWDATA_apb_bfm_wide[7:0];
   assign PRDATA = ((PSEL1 == 1'b1)) ? PRDATA1 : 
                   ((PSEL2 == 1'b1)) ? PRDATA2 : 
                   8'h00;
   assign PRDATA_apb_bfm_wide[31:0] = {24'h000000, PRDATA[7:0]};
   // PREADY and PSLVERR not used, tie off
   assign PREADY = 1'b1;
   assign PSLVERR = 1'b0;
   
   // DUT
   // pull-down for Framing Error Test
   assign RX2 = ((RX_SEL == 1'b0)) ? TX1 : 
                1'b0;
   
   // monitor flags / select signals in BFM
   assign GP_IN_apb_bfm = {24'h000000, OVERFLOW2, PARITY_ERR2, TXRDY2, RXRDY2, OVERFLOW1, PARITY_ERR1, TXRDY1, RXRDY1};
   assign RX_SEL = GP_OUT_apb_bfm[0];
   
   // System clock
   
      
   // System clock
      initial SYSCLK_apb = 1'b0;
      always
      begin
      	#APB_MASTER_CLK_CYCLE_LO_TIME SYSCLK_apb = 1'b1;
      	#APB_MASTER_CLK_CYCLE_HI_TIME SYSCLK_apb = 1'b0;
      end
      
      // Main simulation
      initial
      begin: main_sim
      	SYSRSTN_apb	= 0;
      	@ (posedge SYSCLK_apb); #TPD;
      	SYSRSTN_apb	= 1;
      	@ (posedge SYSCLK_apb); #TPD;
      
      	// wait until BFM is finished
      	while (!(FINISHED_apb_bfm===1'b1))
      	begin
      		@ (posedge SYSCLK_apb); #TPD;
      	end
      	stopsim=1;
      	#1;
      	$stop;
      end
      
      // ------------------------------------------------------
      // BFM register interface
      
      // not used for this core
      
      // End BFM register interface RTL
      // ------------------------------------------------------
      
      // BFM instantiation
      
      // passing testbench parameters to BFM ARGVALUE* parameters
      PROC_SUBSYSTEM_CoreUARTapb_0_BFM_APB #(
        .VECTFILE(APB_MASTER_VECTFILE), 
        .TPD(TPD), 
        .ARGVALUE0(FAMILY), 
        .ARGVALUE1(TX_FIFO), 
        .ARGVALUE2(RX_FIFO), 
        .ARGVALUE3(FIXEDMODE), 
        .ARGVALUE4(BAUD_VALUE), 
        .ARGVALUE5(PRG_BIT8), 
        .ARGVALUE6(PRG_PARITY), 
        .ARGVALUE7(RX_LEGACY_MODE), 
        .ARGVALUE8(USE_SOFT_FIFO)
      ) U_APB_MASTER(
         .SYSCLK(SYSCLK_apb),
         .SYSRSTN(SYSRSTN_apb),
         .PCLK(PCLK),
         .PRESETN(PRESETN),
         .PADDR(PADDR_apb_bfm_wide),
         .PSEL(PSEL_apb_bfm_wide),
         .PENABLE(PENABLE),
         .PWRITE(PWRITE),
         .PWDATA(PWDATA_apb_bfm_wide),
         .PRDATA(PRDATA_apb_bfm_wide),
         .PREADY(PREADY),
         .PSLVERR(PSLVERR),
         .INTERRUPT(GND256),
         // NEED TO ADD GPIN
         .GP_OUT(GP_OUT_apb_bfm),
         .GP_IN(GP_IN_apb_bfm),
         .EXT_WR(BFM_WR),
         .EXT_RD(BFM_RD),
         .EXT_ADDR(BFM_ADDR),
         .EXT_DATA(BFM_DATA),
         .EXT_WAIT(GND1),
         .FINISHED(FINISHED_apb_bfm),
         .FAILED(FAILED_apb_bfm)
      );
      
      // DUT1 (TX)
      
      PROC_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb #(
        .FAMILY(FAMILY), 
        .TX_FIFO(TX_FIFO), 
        .RX_FIFO(RX_FIFO), 
        .FIXEDMODE(FIXEDMODE), 
        .BAUD_VALUE(BAUD_VALUE), 
        .PRG_BIT8(PRG_BIT8), 
        .PRG_PARITY(PRG_PARITY), 
        .RX_LEGACY_MODE(RX_LEGACY_MODE),
        .BAUD_VAL_FRCTN(BAUD_VAL_FRCTN),
        .BAUD_VAL_FRCTN_EN(BAUD_VAL_FRCTN_EN)
      ) DUT1(
         .PRESETN(PRESETN),
         .PCLK(PCLK),
         .PSEL(PSEL1),
         .PENABLE(PENABLE),
         .PWRITE(PWRITE),
         .PADDR(PADDR),
         .PWDATA(PWDATA),
         .PRDATA(PRDATA1),
         .PREADY(),
         .PSLVERR(),
         // OTHER SIGNALS
         .TXRDY(TXRDY1),
         .RXRDY(RXRDY1),
         .PARITY_ERR(PARITY_ERR1),
         .FRAMING_ERR(FRAMING_ERR1),
         .OVERFLOW(OVERFLOW1),
         .RX(RX1),
         .TX(TX1)
      );
      
      // DUT2 (RX)
      
      PROC_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb #(
        .FAMILY(FAMILY),
        .TX_FIFO(TX_FIFO),
        .RX_FIFO(RX_FIFO),
        .FIXEDMODE(FIXEDMODE), 
        .BAUD_VALUE(BAUD_VALUE),
        .PRG_BIT8(PRG_BIT8), 
        .PRG_PARITY(PRG_PARITY), 
        .RX_LEGACY_MODE(RX_LEGACY_MODE),
        .BAUD_VAL_FRCTN(BAUD_VAL_FRCTN),
        .BAUD_VAL_FRCTN_EN(BAUD_VAL_FRCTN_EN)
      ) DUT2(
         .PRESETN(PRESETN),
         .PCLK(PCLK),
         .PSEL(PSEL2),
         .PENABLE(PENABLE),
         .PWRITE(PWRITE),
         .PADDR(PADDR),
         .PWDATA(PWDATA),
         .PRDATA(PRDATA2),
         .PREADY(),
         .PSLVERR(),
         // OTHER SIGNALS
         .TXRDY(TXRDY2),
         .RXRDY(RXRDY2),
         .PARITY_ERR(PARITY_ERR2),
         .FRAMING_ERR(FRAMING_ERR2),
         .OVERFLOW(OVERFLOW2),
         .RX(RX2),
         .TX(TX2)
      );
      
endmodule

// testbench
