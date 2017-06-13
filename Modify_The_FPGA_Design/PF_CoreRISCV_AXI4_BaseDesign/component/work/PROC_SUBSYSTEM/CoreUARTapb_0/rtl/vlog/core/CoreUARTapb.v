// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: COREUART/ CoreUARTapb UART core
//
//
//  Revision Information:
// Date     Description
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// 
//
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
//
// Resolved SARs
// SAR      Date     Who   Description
// 20741    2Sep10   AS    Increased baud rate by ensuring fifo ctrl runs off
//                         sys clk (not baud clock).  See note below.
// 22093    4Sep10   AS    Added PSLVERR and PREADY, missing APB3 signals
//                         (unused)
//
// Notes:
// best viewed with tabstops set to "4"
//
//
//
//==============================================================================
// AMBA APB wrapped COREUART
//
// Three control registers and one status register are implemented in this file
// i.e. at the wrapper level.
// Transmit and receive data registers are located in the UART module which is
// instantiated in this file.
//
// A separate word location is used for each (8-bit) register.
//
//
// Address Map:
//
//     Offset    Register Name       Read/Write         Width
//     -------------------------------------------------------
//      0x00     Transmit data       (Write only)       8 bits
//      0x04     Receive data        (Read only)        8 bits
//      0x08     Control Register 1  (R/W)              8 bits
//      0x0C     Control Register 2  (R/W)              8 bits
//      0x10     Status Register     (Read Only)        4 bits
//      0x14     Control Register 3  (R/W)              3 bits
//==============================================================================

`timescale 1 ns / 1 ns

module PROC_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb (
    // APB interface
    PCLK,
    PRESETN,
    PADDR,
    PSEL,
    PENABLE,
    PWRITE,
    PWDATA,
    PRDATA,
    // AS: Added PREADY and PSLVERR
    PREADY,
    PSLVERR,
    // transmit-ready and receive-full indicators
    TXRDY,
    RXRDY,
    // Flags
    PARITY_ERR,
    FRAMING_ERR,
    OVERFLOW,
    // Serial receive and transmit
    RX,
    TX
    );

    // DEVICE FAMILY 
    parameter FAMILY = 15;

    // UART configuration parameters
    parameter TX_FIFO = 0;      // 1 = with tx fifo, 0 = without tx fifo
    parameter RX_FIFO = 0;      // 1 = with rx fifo, 0 = without rx fifo
    parameter BAUD_VALUE = 0; // Baud value is set only when fixed buad rate is selected 
    parameter FIXEDMODE = 0;      // fixed or programmable mode, 0: programmable; 1:fixed

    parameter PRG_BIT8 = 0;      // This bit value is selected only when FIXEDMODE is set to 1 
    parameter PRG_PARITY = 0;      // This bit value is selected only when FIXEDMODE is set to 1 
    parameter RX_LEGACY_MODE = 0;  // legacy mode for RXRDY signal operation
    parameter BAUD_VAL_FRCTN = 0;       // 0 = +0.0, 1 = +0.125, 2 = +0.25, 3 = +0.375, 4 = +0.5, 5 = +0.625, 6 = +0.75, 7 = +0.875,
    parameter BAUD_VAL_FRCTN_EN = 0;    // 1 = enable baudval fraction, 0 = disable baudval fraction
    parameter SYNC_RESET = (FAMILY == 25) ? 1 : 0; // Sync/Async Resets selected by family parameter 
 
    // Inputs and Outputs
    // APB signals
    input           PCLK;       // APB system clock
    input           PRESETN;    // APB system reset
    input    [4:0]  PADDR;      // Address
    input           PSEL;       // Peripheral select signal
    input           PENABLE;    // Enable (data valid strobe)
    input           PWRITE;     // Write/nRead signal
    input    [7:0]  PWDATA;     // 8 bit write data
    output   [7:0]  PRDATA;     // 8 bit read data

    output          PREADY;
    output          PSLVERR;
    // transmit ready and receive full indicators
    output          TXRDY;
    output          RXRDY;
    // Serial receive and transmit data
    input           RX;
    output          TX;
    // FLAGS
    output          FRAMING_ERR;
    output          PARITY_ERR;
    output          OVERFLOW;

    //----------------------------------------------------------------------
    // Constant declarations
    //----------------------------------------------------------------------
    `define UARTTXDATAA     3'b000
    `define UARTRXDATAA     3'b001
    `define UARTCTRLREG1A   3'b010
    `define UARTCTRLREG2A   3'b011
    `define UARTSTATUSREGA  3'b100
    `define UARTCTRLREG3A   3'b101

    //----------------------------------------------------------------------
    // Signal declarations
    //----------------------------------------------------------------------

    // I/O signals
    wire            PCLK;
    wire            PRESETN;
    wire     [4:0]  PADDR;
    wire            PSEL;
    wire            PENABLE;
    wire            PWRITE;
    wire     [7:0]  PWDATA;
    wire     [7:0]  PRDATA;
    wire            TXRDY;
    wire            RXRDY;
    wire            RX;
    wire            TX;

    wire            PREADY;
    wire            PSLVERR;

    // Internal signals
    reg      [7:0]  controlReg1;
    reg      [7:0]  controlReg2;
    reg      [2:0]  controlReg3;
    reg      [7:0]  NxtPrdata;
    reg      [7:0]  iPRDATA;
    wire            NxtPrdataEn;    //  valid read
    wire     [7:0]  data_in;
    wire     [7:0]  data_out;
    wire     [12:0]  baud_val;
    wire            bit8;
    wire            parity_en;
    wire            odd_n_even;
    wire            WEn;
    wire            OEn;
    wire            csn;
    wire            OVERFLOW;
    wire            PARITY_ERR;
    wire    [1:0]   gen_parity_en; 
    wire            prg_parity_en;
    wire            prg_odd_even;
    wire            FRAMING_ERR;
    wire    [2:0]   fixed_baudval_fraction;  
    wire    [2:0]   baudval_fraction;
	wire            aresetn;
    wire            sresetn; 
    assign aresetn = (SYNC_RESET==1) ? 1'b1 : PRESETN;
    assign sresetn = (SYNC_RESET==1) ? PRESETN : 1'b1;
    // AS: Added APB3 signals, tied off
    assign PREADY = 1'b1;
    assign PSLVERR = 1'b0;

    //----------------------------------------------------------------------
    // Write enable, output enable and select signals for UART
    //----------------------------------------------------------------------
    // WEn only asserted (low) when writing transmit data
    assign WEn = !(PENABLE &&  PWRITE && (PADDR[4:2] == `UARTTXDATAA));
    // OEn only asserted (low) when reading received data
    assign OEn = !(PENABLE && !PWRITE && (PADDR[4:2] == `UARTRXDATAA));
    assign csn = !PSEL;

    // data_in input to UART is used for transmit data
    assign data_in = PWDATA;

    //----------------------------------------------------------------------
    // APB read data
    //----------------------------------------------------------------------
    // NxtPrdataEn is asserted during the first cycle of a valid read
    assign NxtPrdataEn = (PSEL & !PWRITE & (!PENABLE || PARITY_ERR));

    always @(PADDR or NxtPrdataEn or iPRDATA or data_out or controlReg1
             or controlReg2 or OVERFLOW or PARITY_ERR or RXRDY
             or TXRDY or FRAMING_ERR or controlReg3)
    begin : p_NxtPrdataComb
        if (NxtPrdataEn)
            case (PADDR[4:2])
                `UARTTXDATAA    : NxtPrdata = 8'b0;          // transmit data location reads as 0x00
                `UARTRXDATAA    : NxtPrdata = data_out;      // received data
                `UARTCTRLREG1A  : NxtPrdata = controlReg1;   // control reg 1 - baud value
                `UARTCTRLREG2A  : NxtPrdata = controlReg2;   // control reg 2 - bit8, parity_en, odd_n_even
                `UARTSTATUSREGA : NxtPrdata = {3'b0, FRAMING_ERR, OVERFLOW, PARITY_ERR, RXRDY, TXRDY}; // status register
                `UARTCTRLREG3A  : NxtPrdata = {5'b0, controlReg3};   // control reg 3 - fractional part of baud value
                default         : NxtPrdata = iPRDATA;
            endcase
        else
            NxtPrdata = iPRDATA;
    end // block: p_NxtPrdataComb

assign gen_parity_en = PRG_PARITY;

// AS, fixed 01DEC08:
//assign prg_parity_en = (gen_parity_en == (2'd1 || 2'd2)) ? 1'b1 : 1'b0;
assign prg_parity_en = (gen_parity_en == 2'd1 || gen_parity_en == 2'd2) ? 1'b1 : 1'b0; 
assign prg_odd_even =  (gen_parity_en == 2'd1) ? 1'b1 : 1'b0;

    // PRDATA output register
    always @ (posedge PCLK or negedge aresetn)
    begin : p_iPRDATASeq
        if ((!aresetn) || (!sresetn))
            iPRDATA <= 8'b0;
        else
            iPRDATA <= NxtPrdata;
    end // block: p_iPRDATASeq

    // Drive output with internal version.
    assign PRDATA = ((RX_FIFO == 1) && (PARITY_ERR == 1'b1)) ? data_out : iPRDATA;

    //----------------------------------------------------------------------
    // Control register 1
    // Holds 8-bit value to set baud rate.
    //----------------------------------------------------------------------
    always @(posedge PCLK or negedge aresetn)
    begin : p_CtrlReg1Seq
        if((!aresetn) || (!sresetn))
            controlReg1 <= 8'b0;
        else
            if (PSEL && PENABLE && PWRITE && (PADDR[4:2] == `UARTCTRLREG1A))
                controlReg1 <= PWDATA;
            else
                controlReg1 <= controlReg1;
    end // block: p_CtrlReg1Seq

    assign baud_val = FIXEDMODE ? BAUD_VALUE:{controlReg2[7:3],controlReg1};

    //----------------------------------------------------------------------
    // Control register 2
    // Contents as follows:
    //   Bit 0: bit8        Data width is 8 bits when '1', 7 bits otherwise.
    //   Bit 1: parity_en   Parity enabled when '1'.
    //   Bit 2: odd_n_even  Odd parity when '1', even parity when '0'.
    //   Bits 3 to 7: Unused.
    //----------------------------------------------------------------------
    always @(posedge PCLK or negedge aresetn)
    begin : p_CtrlReg2Seq
        if ((!aresetn) || (!sresetn))
            controlReg2 <= 8'b0;
        else
            if (PSEL && PENABLE && PWRITE && (PADDR[4:2] == `UARTCTRLREG2A))
                controlReg2 <= PWDATA[7:0];
            else
                controlReg2 <= controlReg2;
    end // block: p_CtrlReg2Seq

    //----------------------------------------------------------------------
    // Control register 3   
    // Controls the fractional baud value as follows:
    //   000:   Baud Value = baud_val + 0.0
    //   001:   Baud Value = baud_val + 0.125
    //   010:   Baud Value = baud_val + 0.25
    //   011:   Baud Value = baud_val + 0.375
    //   100:   Baud Value = baud_val + 0.5
    //   101:   Baud Value = baud_val + 0.625
    //   110:   Baud Value = baud_val + 0.75  
    //   111:   Baud Value = baud_val + 0.875
    //----------------------------------------------------------------------

generate
if(BAUD_VAL_FRCTN_EN == 1)
begin
    always @(posedge PCLK or negedge aresetn)
    begin : p_CtrlReg3Seq
        if  ((!aresetn) || (!sresetn))
            controlReg3 <= 3'b0;
        else
            if (PSEL && PENABLE && PWRITE && (PADDR[4:2] == `UARTCTRLREG3A))
                controlReg3 <= PWDATA[2:0];
            else
                controlReg3 <= controlReg3;
    end //block: p_CtrlReg3Seq
end
endgenerate

    assign fixed_baudval_fraction = (BAUD_VAL_FRCTN == 0) ? 3'b000 : 
                                    (BAUD_VAL_FRCTN == 1) ? 3'b001 : 
                                    (BAUD_VAL_FRCTN == 2) ? 3'b010 : 
                                    (BAUD_VAL_FRCTN == 3) ? 3'b011 : 
                                    (BAUD_VAL_FRCTN == 4) ? 3'b100 : 
                                    (BAUD_VAL_FRCTN == 5) ? 3'b101 : 
                                    (BAUD_VAL_FRCTN == 6) ? 3'b110 : 
                                    (BAUD_VAL_FRCTN == 7) ? 3'b111 : 3'b000;
 
    assign bit8       = FIXEDMODE ? PRG_BIT8:controlReg2[0];
    assign parity_en  = FIXEDMODE ? prg_parity_en:controlReg2[1];
    assign odd_n_even = FIXEDMODE ? prg_odd_even:controlReg2[2];
    assign baudval_fraction = FIXEDMODE ? fixed_baudval_fraction : BAUD_VAL_FRCTN_EN ? controlReg3 : 3'b000;


    //----------------------------------------------------------------------
    // Instantiation of UART
    //----------------------------------------------------------------------
    
    
        PROC_SUBSYSTEM_CoreUARTapb_0_COREUART
        #(
        .TX_FIFO      (TX_FIFO),
        .RX_FIFO      (RX_FIFO),
        .RX_LEGACY_MODE(RX_LEGACY_MODE),
        .BAUD_VAL_FRCTN_EN(BAUD_VAL_FRCTN_EN),
		.FAMILY(FAMILY)
        )

        uUART (
            .RESET_N        (PRESETN),
            .CLK            (PCLK),
            .WEN            (WEn),
            .OEN            (OEn),
            .CSN            (csn),
            .DATA_IN        (data_in),
            .RX             (RX),
            .BAUD_VAL       (baud_val),
            .BIT8           (bit8),
            .PARITY_EN      (parity_en),
            .ODD_N_EVEN     (odd_n_even),
            .FRAMING_ERR    (FRAMING_ERR),
            .PARITY_ERR     (PARITY_ERR),
            .OVERFLOW       (OVERFLOW),
            .TXRDY          (TXRDY),
            .RXRDY          (RXRDY),
            .DATA_OUT       (data_out),
            .TX             (TX),
            .BAUD_VAL_FRACTION (baudval_fraction)
            );  
            
endmodule

// ============================== End ==========================================
