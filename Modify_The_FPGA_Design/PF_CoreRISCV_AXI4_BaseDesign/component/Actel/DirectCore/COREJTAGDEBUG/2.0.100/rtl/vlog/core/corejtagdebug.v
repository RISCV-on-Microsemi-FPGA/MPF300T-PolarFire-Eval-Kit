// ****************************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2016 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: 
// A UJTAG macro is instantiated within CoreJTAGDebug when the IR_CODE is 0x55.
// Only one UJTAG macro can be instantiated per device.
//
// SVN Revision Information:
// SVN $Revision: 29060 $
// SVN $Date: 2017-02-22 10:20:52 +0000 (Wed, 22 Feb 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
module COREJTAGDEBUG (
    // JTAG TAP Inputs (IR_CODE = 0x55 only)
    TDI,
    TCK,
    TMS,
    TRSTB,
    
    // Target inputs
    TGT_TDO,
    
    // Chain inputs (IR_CODE != 0x55 only)
    UDRCAP_IN,
    UDRSH_IN,
    UDRUPD_IN,
    UIREG_IN,
    URSTB_IN,
    UDRCK_IN,
    UTDI_IN,
    
    // Chain inputs (IR_CODE == 0x55 only)
    UTDODRV_0,
    UTDODRV_1,
    UTDODRV_2,
    UTDODRV_3,
    UTDO_IN_0,
    UTDO_IN_1,
    UTDO_IN_2,
    UTDO_IN_3,
    
    // JTAG TAP outputs (IR_CODE = 0x55 only)
    TDO,

    // Target Outputs
    TGT_TCK,
    TGT_TRST,
    TGT_TMS,
    TGT_TDI,
    
    // Chain outputs (IR_CODE = 0x55 only)
    UDRCAP_OUT,
    UDRSH_OUT,
    UDRUPD_OUT,
    UIREG_OUT,
    URSTB_OUT,
    UDRCK_OUT,
    UTDI_OUT,
    
    // Chain outputs (IR_CODE != 0x55 only)
    UTDODRV_OUT,
    UTDO_OUT
);

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
parameter [7:0] IR_CODE               = 8'h55;
parameter       ACTIVE_HIGH_TGT_RESET = 1'b1;

////////////////////////////////////////////////////////////////////////////////
// Port directions
////////////////////////////////////////////////////////////////////////////////
// JTAG TAP Inputs (IR_CODE = 0x55 only)
input           TDI;
input           TCK;
input           TMS;
input           TRSTB;

// Target inputs
input           TGT_TDO;

// Chain inputs (IR_CODE != 0x55 only)
input           UDRCAP_IN;
input           UDRSH_IN;
input           UDRUPD_IN;
input  [7:0]    UIREG_IN;
input           URSTB_IN;
input           UDRCK_IN;
input           UTDI_IN;

// Chain inputs (IR_CODE == 0x55 only)
input           UTDODRV_0;
input           UTDODRV_1;
input           UTDODRV_2;
input           UTDODRV_3;
input           UTDO_IN_0;
input           UTDO_IN_1;
input           UTDO_IN_2;
input           UTDO_IN_3;

// JTAG TAP outputs (IR_CODE = 0x55 only)
output          TDO;

// Target Outputs
output          TGT_TCK;
output          TGT_TRST;
output          TGT_TMS;
output          TGT_TDI;

// Chain outputs (IR_CODE = 0x55 only)
output          UDRCAP_OUT;
output          UDRSH_OUT;
output          UDRUPD_OUT;
output [7:0]    UIREG_OUT;
output          URSTB_OUT;
output          UDRCK_OUT;
output          UTDI_OUT;

// Chain outputs (IR_CODE != 0x55 only)
output          UTDODRV_OUT;
output          UTDO_OUT;

////////////////////////////////////////////////////////////////////////////////
// Internal signals
////////////////////////////////////////////////////////////////////////////////
wire            TGT_TRSTB;
wire            iTGT_TCK;

generate
    if (IR_CODE == 8'h55)
        begin
            wire    iUDRCK;
            wire    UTDO;
            wire    UTDO_INT;
            ////////////////////////////////////////////////////////////////////
            // UJTAG:  Macro which converts from Physical JTAG ports to an
            // intermediate representation
            ////////////////////////////////////////////////////////////////////
            UJTAG UJTAG_0(
                // Inputs
                .UTDO               (UTDO),
                .TDI                (TDI),
                .TMS                (TMS),
                .TCK                (TCK),
                .TRSTB              (TRSTB),
                // Outputs
                .UDRCAP             (UDRCAP_OUT),
                .UDRSH              (UDRSH_OUT),
                .UDRUPD             (UDRUPD_OUT),
                .UIREG              (UIREG_OUT[7:0]),
                .URSTB              (URSTB_OUT),
                .UDRCK              (iUDRCK),
                .UTDI               (UTDI_OUT),
                .TDO                (TDO)
            );
            
            ////////////////////////////////////////////////////////////////////
            // UDRCK CLKINT macro instantiation
            ////////////////////////////////////////////////////////////////////
            CLKINT udrck_clkint(
                .A                  (iUDRCK),
                .Y                  (UDRCK_OUT)
            );
            
            ////////////////////////////////////////////////////////////////////
            // uj_jtag instantiation
            ////////////////////////////////////////////////////////////////////
            uj_jtag #(
                .uj_jtag_ircode     (IR_CODE)
            ) UJ_JTAG_0(
                // UJTAG port (to I/O)
                .uireg              (UIREG_OUT[7:0]),
                .urstb              (URSTB_OUT),
                .udrupd             (UDRUPD_OUT),
                .udrck              (UDRCK_OUT),
                .udrcap             (UDRCAP_OUT),
                .udrsh              (UDRSH_OUT),
                .utdi               (UTDI_OUT),
                .utdo               (UTDO_INT),
                .utdodrv            (),
                
                // JTAG port (to DUT)
                .dutntrst           (TGT_TRSTB),
                .duttck             (iTGT_TCK), 
                .duttms             (TGT_TMS), 
                .duttdi             (TGT_TDI),
                .duttdo             (TGT_TDO),
                
                // gpio port
                .gpin               (4'b0),
                .gpout              ()
            );
            
            ////////////////////////////////////////////////////////////////////
            // UTDO mux
            ////////////////////////////////////////////////////////////////////
            assign UTDO = (UTDODRV_0 == 1'b1) ? UTDO_IN_0 :
                          (UTDODRV_1 == 1'b1) ? UTDO_IN_1 :
                          (UTDODRV_2 == 1'b1) ? UTDO_IN_2 :
                          (UTDODRV_3 == 1'b1) ? UTDO_IN_3 :
                          UTDO_INT;
            
            ////////////////////////////////////////////////////////////////////
            // Drive unused outputs
            ////////////////////////////////////////////////////////////////////
            assign UTDODRV_OUT = 1'bz;
            assign UTDO_OUT    = 1'bz;
        end
    else
        begin
            ////////////////////////////////////////////////////////////////////
            // uj_jtag instantiation
            ////////////////////////////////////////////////////////////////////
            uj_jtag #(
                .uj_jtag_ircode     (IR_CODE)
            ) UJ_JTAG_0(
                // UJTAG port (to I/O)
                .uireg              (UIREG_IN[7:0]),
                .urstb              (URSTB_IN),
                .udrupd             (UDRUPD_IN),
                .udrck              (UDRCK_IN),
                .udrcap             (UDRCAP_IN),
                .udrsh              (UDRSH_IN),
                .utdi               (UTDI_IN),
                .utdo               (UTDO_OUT),
                .utdodrv            (UTDODRV_OUT),
                
                // JTAG port (to DUT)
                .dutntrst           (TGT_TRSTB),
                .duttck             (iTGT_TCK), 
                .duttms             (TGT_TMS), 
                .duttdi             (TGT_TDI),
                .duttdo             (TGT_TDO),
                
                // gpio port
                .gpin               (4'b0),
                .gpout              ()
            );
            
            ////////////////////////////////////////////////////////////////////
            // Drive unused outputs
            ////////////////////////////////////////////////////////////////////
            assign TDO        = 1'bz;
            assign UDRCAP_OUT = 1'bz;
            assign UDRSH_OUT  = 1'bz;
            assign UDRUPD_OUT = 1'bz;
            assign UIREG_OUT  = {8{1'bz}};
            assign URSTB_OUT  = 1'bz;
            assign UDRCK_OUT  = 1'bz;
            assign UTDI_OUT   = 1'bz;
        end
endgenerate

////////////////////////////////////////////////////////////////////////////////
// Optional Reset inverter inference
////////////////////////////////////////////////////////////////////////////////
generate
    if (ACTIVE_HIGH_TGT_RESET == 1'b1)
        begin
            // Invert the reset output (Assuming that the TRSTB input is driven
            // active-low)
            assign TGT_TRST = ~TGT_TRSTB;
        end
    else
        begin
            assign TGT_TRST = TGT_TRSTB;
        end
endgenerate

////////////////////////////////////////////////////////////////////////////////
// TGT_TCK CLKINT macro instantiation
////////////////////////////////////////////////////////////////////////////////
CLKINT tck_clkint(
    .A                  (iTGT_TCK),
    .Y                  (TGT_TCK)
);

endmodule //COREJTAGDEBUG