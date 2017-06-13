// ****************************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2015 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: 
//
// SVN Revision Information:
// SVN $Revision: 25747 $
// SVN $Date: 2015-12-14 03:02:25 +0000 (Mon, 14 Dec 2015) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
module COREAXITOAHBL_AXISlaveCtrl (
                    // Global Inputs
                    ACLK,
                    ARESETN,
                    
                    // AXIOutReg Inputs
                    AWREADY,
                    WREADY,
                    BVALID,
                    ARREADY,
                    RVALID,
                    
                    // AXI master inputs
                    AWVALID,
                    WVALID,
                    BREADY,
                    AWADDR,
                    AWSIZE,
                    AWLEN,
                    AWBURST,
                    AWID,
                    WDATA,
                    WSTRB,
                    WLAST,
                    ARVALID,
                    RREADY,
                    ARADDR,
                    ARSIZE,
                    ARID,
                    ARLEN,
                    ARBURST,
                    
                    // AHBMasterCtrl Inputs
                    AHBError,
                    AHBWrDone,
                    AHBRdDone,
                    
                    // rdFIFORAM Inputs
                    rdFIFORdData,
                    
                    // AXIOutReg Outputs
                    AWREADYOut,
                    WREADYOut,
                    BVALIDOut,
                    BRESPOut,
                    BIDOut,
                    ARREADYOut,
                    RVALIDOut,
                    RLASTOut,
                    RDATAOut,
                    RIDOut,
                    RRESPOut,
                    
                    // wrFIFORAM Outputs
                    wrFIFOWrEn,
                    wrFIFOWrAddr,
                    wrFIFOWrData,
                    
                    // rdFIFORAM Outputs
                    rdFIFORdAddr,
                    
                    // AHBMasterCtrl Outputs
                    AXIBurst,
                    AXIAddr,
                    AXILen,
                    AHBWrTranPend,
                    AHBRdTranPend,
                    validByteCnt
);
////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
parameter WRAP_SUPPORT = 0;   // Enables this block to handle AXI wrapping burst
                              // transactions. Wrapping burst transactions are
                              // disabled by default.
parameter ID_WIDTH = 4;       // Sets the width of the ID field supported.
////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
                            // Global Inputs
input                       ACLK;
input                       ARESETN;

                            // AXIOutReg Inputs
input                       AWREADY;
input                       WREADY;
input                       BVALID;
input                       ARREADY;
input                       RVALID;

                            // AXIReg Inputs
input                       AWVALID;
input                       WVALID;
input                       BREADY;
input   [31:0]              AWADDR;
input   [2:0]               AWSIZE;
input   [3:0]               AWLEN;
input   [1:0]               AWBURST;
input   [ID_WIDTH-1:0]      AWID;
input   [63:0]              WDATA;
input   [7:0]               WSTRB;
input                       WLAST;
input                       ARVALID;
input                       RREADY;
input   [31:0]              ARADDR;
input   [2:0]               ARSIZE;
input   [ID_WIDTH-1:0]      ARID;
input   [3:0]               ARLEN;
input   [1:0]               ARBURST;

                            // AHBMasterCtrl Inputs
input                       AHBError;
input                       AHBWrDone;
input                       AHBRdDone;

                            // rdFIFORAM Inputs
input   [63:0]              rdFIFORdData;

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
                            // AXIOutReg Outputs
output                      AWREADYOut;
output                      WREADYOut;
output                      BVALIDOut;
output  [1:0]               BRESPOut;
output  [ID_WIDTH-1:0]      BIDOut;
output                      ARREADYOut;
output                      RVALIDOut;
output                      RLASTOut;
output  [63:0]              RDATAOut;
output  [ID_WIDTH-1:0]      RIDOut;
output  [1:0]               RRESPOut;

                            // wrFIFORam Outputs
output                      wrFIFOWrEn;
output  [3:0]               wrFIFOWrAddr;
output  [63:0]              wrFIFOWrData;

                            //rdFIFORAM Outputs
output  [3:0]               rdFIFORdAddr;

                            // AHBMasterCtrl Outputs
output  [1:0]               AXIBurst;
output  [31:0]              AXIAddr;
output  [3:0]               AXILen;
output                      AHBWrTranPend;
output                      AHBRdTranPend;
output  [7:0]               validByteCnt;

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
                            // AXIOutReg Outputs
reg                         AWREADYOut;
reg                         WREADYOut;
reg                         BVALIDOut;
reg     [1:0]               BRESPOut;
reg     [ID_WIDTH-1:0]      BIDOut;
reg                         ARREADYOut;
reg                         RVALIDOut;
reg                         RLASTOut;
reg     [63:0]              RDATAOut;
reg     [ID_WIDTH-1:0]      RIDOut;
reg     [1:0]               RRESPOut;

                            // wrFIFORam Outputs
reg                         wrFIFOWrEn;
reg     [3:0]               wrFIFOWrAddr;
reg     [63:0]              wrFIFOWrData;

                            //rdFIFORAM Outputs
reg     [3:0]               rdFIFORdAddr;

                            // AHBMasterCtrl Outputs
reg                         AHBWrTranPend;
reg                         AHBRdTranPend;
reg     [7:0]               validByteCnt;

////////////////////////////////////////////////////////////////////////////////
// Internal signal declaration
////////////////////////////////////////////////////////////////////////////////
reg     [7:0]               validByteCnt_d;
wire    [7:0]               validByteCnt_q;
reg     [1:0]               BURSTReg;
reg     [1:0]               BURSTReg_d;
wire    [1:0]               BURSTReg_q;
reg     [31:0]              ADDRReg;
reg     [31:0]              ADDRReg_d;
wire    [31:0]              ADDRReg_q;
reg     [2:0]               SIZEReg;
reg     [2:0]               SIZEReg_d;
wire    [2:0]               SIZEReg_q;
reg     [ID_WIDTH-1:0]      IDReg;
reg     [ID_WIDTH-1:0]      IDReg_d;
wire    [ID_WIDTH-1:0]      IDReg_q;
reg     [3:0]               LENReg;
reg     [3:0]               LENReg_d;
wire    [3:0]               LENReg_q;
reg     [3:0]               wrFIFOWrAddr_d;
wire    [3:0]               wrFIFOWrAddr_q;
reg     [3:0]               rdFIFORdAddr_d;
wire    [3:0]               rdFIFORdAddr_q;
reg                         AHBWrTranPend_d;
wire                        AHBWrTranPend_q;
reg                         AHBRdTranPend_d;
wire                        AHBRdTranPend_q;
reg     [3:0]               currState;
reg     [3:0]               nxtState;
reg                         AHBWrDoneReg;
wire                        AHBWrDone_edge;
reg                         AHBRdDoneReg;
wire                        AHBRdDone_edge;
reg                         AHBErrorReg;
reg                         AHBErrorReg_d;
wire                        AHBErrorReg_q;
reg     [3:0]               beatCnt;
reg     [3:0]               beatCnt_d;
wire    [3:0]               beatCnt_q;
wire    [3:0]               validByte;
wire    [2:0]               addrOffset;
wire    [7:0]               rdValidBytes;

////////////////////////////////////////////////////////////////////////////////
// validByteCnt Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        validByteCnt <= 8'b0;
    else
        validByteCnt <= validByteCnt_d;
end

assign validByteCnt_q = validByteCnt;

////////////////////////////////////////////////////////////////////////////////
// BURSTReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        BURSTReg <= 2'b0;
    else
        BURSTReg <= BURSTReg_d;
end

assign BURSTReg_q = BURSTReg;
assign AXIBurst = BURSTReg;

////////////////////////////////////////////////////////////////////////////////
// ADDRReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        ADDRReg <= 32'b0;
    else
        ADDRReg <= ADDRReg_d;
end

assign ADDRReg_q = ADDRReg;
assign AXIAddr = ADDRReg;

////////////////////////////////////////////////////////////////////////////////
// SIZEReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        SIZEReg <= 3'b0;
    else
        SIZEReg <= SIZEReg_d;
end

assign SIZEReg_q = SIZEReg;

////////////////////////////////////////////////////////////////////////////////
// IDReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        IDReg <= {ID_WIDTH{1'b0}};
    else
        IDReg <= IDReg_d;
end

assign IDReg_q = IDReg;

////////////////////////////////////////////////////////////////////////////////
// LENReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        LENReg <= 4'b0;
    else
        LENReg <= LENReg_d;
end

assign LENReg_q = LENReg;
assign AXILen = LENReg;
////////////////////////////////////////////////////////////////////////////////
// beatCnt Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        beatCnt <= 4'b0;
    else
        beatCnt <= beatCnt_d;
end

assign beatCnt_q = beatCnt;

////////////////////////////////////////////////////////////////////////////////
// AHBWrTranPend Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        AHBWrTranPend <= 1'b0;
    else
        AHBWrTranPend <= AHBWrTranPend_d;
end

assign AHBWrTranPend_q = AHBWrTranPend;

////////////////////////////////////////////////////////////////////////////////
// AHBRdTranPend Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        AHBRdTranPend <= 1'b0;
    else
        AHBRdTranPend <= AHBRdTranPend_d;
end

assign AHBRdTranPend_q = AHBRdTranPend;

////////////////////////////////////////////////////////////////////////////////
// wrFIFOWrAddr Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        wrFIFOWrAddr <= 4'b0;
    else
        wrFIFOWrAddr <= wrFIFOWrAddr_d;
end

assign wrFIFOWrAddr_q = wrFIFOWrAddr;

////////////////////////////////////////////////////////////////////////////////
// rdFIFORdAddr Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        rdFIFORdAddr <= 4'b0;
    else
        rdFIFORdAddr <= rdFIFORdAddr_d;
end

assign rdFIFORdAddr_q = rdFIFORdAddr;
////////////////////////////////////////////////////////////////////////////////
// AHBErrorReg Register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        AHBErrorReg <= 1'b0;
    else
        AHBErrorReg <= AHBErrorReg_d;
end

assign AHBErrorReg_q = AHBErrorReg;

////////////////////////////////////////////////////////////////////////////////
// Edge detect on AHBWrDone
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        AHBWrDoneReg <= 1'b0;
    else
        AHBWrDoneReg <= AHBWrDone;
end

assign AHBWrDone_edge = AHBWrDoneReg ^ AHBWrDone;

////////////////////////////////////////////////////////////////////////////////
// Edge detect on AHBRdDone
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        AHBRdDoneReg <= 1'b0;
    else
        AHBRdDoneReg <= AHBRdDone;
end

assign AHBRdDone_edge = AHBRdDoneReg ^ AHBRdDone;

////////////////////////////////////////////////////////////////////////////////
// Write Transaction FSM
////////////////////////////////////////////////////////////////////////////////
// State Encoding
localparam AXI_IDLE                 = 4'h0;
localparam AXI_REG_WR_ADDR          = 4'h1;
localparam AXI_REG_WR_DATA_N        = 4'h2;
localparam AXI_REG_WR_DATA_LAST     = 4'h3;
localparam AXI_WR_AHB_WAIT          = 4'h4;
localparam AXI_WR_RESP              = 4'h5;
localparam AXI_WAIT_LAST            = 4'h6;
localparam AXI_REG_RD_ADDR          = 4'h7;
localparam AXI_RD_WAIT              = 4'h8;
localparam AXI_RD_DATA_N            = 4'h9;
localparam AXI_RD_DATA_LAST         = 4'hA;

always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
        currState <= AXI_IDLE;
    else
        currState <= nxtState;
end

always @ (*)
begin
    // Default assignments
    nxtState <= currState;
    validByteCnt_d <= validByteCnt_q;
    BURSTReg_d <= BURSTReg_q;
    ADDRReg_d <= ADDRReg_q;
    SIZEReg_d <= SIZEReg_q;
    IDReg_d <= IDReg_q;
    LENReg_d <= LENReg_q;
    beatCnt_d <= beatCnt_q;
    AWREADYOut <= 1'b0;
    ARREADYOut <= 1'b0;
    WREADYOut <= 1'b0;
    RIDOut <= {ID_WIDTH{1'b0}};
    RDATAOut <= 64'b0;
    RVALIDOut <= 1'b0;
    RLASTOut <= 1'b0;
    RRESPOut <= 2'b00;
    wrFIFOWrEn <= 1'b0;
    wrFIFOWrData <= 64'b0;
    wrFIFOWrAddr_d <= wrFIFOWrAddr_q;
    rdFIFORdAddr_d <= rdFIFORdAddr_q;
    AHBWrTranPend_d <= AHBWrTranPend_q;
    AHBRdTranPend_d <= AHBRdTranPend_q;
    AHBErrorReg_d <= AHBErrorReg_q;
    BVALIDOut <= 1'b0;
    BIDOut <= {ID_WIDTH{1'b0}};
    BRESPOut <= 2'b0;
    case (currState)
        AXI_IDLE:
            begin
                if (AWVALID)
                begin
                    AWREADYOut <= 1'b1;
                    nxtState <= AXI_REG_WR_ADDR;
                end
                else if (ARVALID)
                begin
                    ARREADYOut <= 1'b1;
                    nxtState <= AXI_REG_RD_ADDR;
                end
            end
        AXI_REG_WR_ADDR:
            begin
                if (AWVALID & AWREADY)
                begin
                    // Align the address to 64-bit boundary
                    ADDRReg_d <= {AWADDR[31:3],{3{1'b0}}};
                    IDReg_d <= AWID;
                    BURSTReg_d <= AWBURST;
                    SIZEReg_d <= AWSIZE;
                    LENReg_d <= AWLEN;
                    WREADYOut <= 1'b1;
                    if (AWBURST == 2'b11) 
                        // Reserved in AXI specification. Return an error to the 
                        // AXI master.
                        AHBErrorReg_d <= 1'b1;
                    else if (AWBURST == 2'b10) // Wrapping burst
                    begin
                        if (WRAP_SUPPORT)
                        begin
                            if (!((AWLEN == 1) || (AWLEN == 3) || (AWLEN == 7) || (AWLEN == 15)))
                                // Only burst lengths of 2,4,8 & 16 are permitted
                                // for wrapping burst transfers in the AXI spec
                                AHBErrorReg_d <= 1'b1;
                        end
                        else
                            // Return a 'slverr' to the AXI master as a wrapping
                            // burst transfer was attempted without the logic
                            // being in place
                            AHBErrorReg_d <= 1'b1;
                    end
                    if (AWLEN == 4'b0)
                        nxtState <= AXI_REG_WR_DATA_LAST;
                    else
                        nxtState <= AXI_REG_WR_DATA_N;
                end
                else
                    AWREADYOut <= 1'b1;
            end
        AXI_REG_WR_DATA_N:
            begin
                WREADYOut <= 1'b1;
                if (WVALID & WREADY)
                begin
                    if (WLAST || AHBErrorReg)
                    begin
                        // Premature assertion of WLAST or we detected and error
                        // in one of the previous data beats of this transaction
                        // so don't store the write data in the wrFIFORAM.
                        AHBErrorReg_d <= 1'b1;
                        if (beatCnt == (LENReg - 1))
                        begin
                            beatCnt_d <= 4'b0;
                            nxtState <= AXI_REG_WR_DATA_LAST;
                        end
                        else
                            beatCnt_d <= beatCnt_q + 1'b1;
                    end
                    else
                    begin
                        if (SIZEReg[2:0] == 3'b011)
                        begin // 64-bit transfer size
                            if (beatCnt == 4'b0)
                            begin
                                // Offset the address for unaligned transfers. Address was
                                // 64-bit aligned in the previous state. Ensures that
                                // the address is offset for unaligned transfers, regardless
                                // of the address issued by the AXI master
                                validByteCnt_d <= {{4{1'b0}}, validByte};
                                ADDRReg_d <= ADDRReg_q + addrOffset;
                            end
                            else
                            begin
                                // All 8 byte lanes should contain valid data as
                                // this is neither the first nor the last beat 
                                // in the current transaction. However, it's 
                                // possible that some of the lanes don't contain
                                // valid data if this as a narrow and or unaligned
                                // fixed address burst AXI transaction so we need 
                                // to determine the number of valid bytes based 
                                // off the write stobes.
                                validByteCnt_d <= validByteCnt_q + validByte;
                            end
                            wrFIFOWrEn <= 1'b1;
                            wrFIFOWrData <= WDATA;
                            wrFIFOWrAddr_d <= wrFIFOWrAddr_q + 1'b1;
                            if (beatCnt == (LENReg - 1))
                            begin
                                // This was the penultimate transfer so get 
                                // get ready to receive the last transfer
                                beatCnt_d <= 4'b0;
                                nxtState <= AXI_REG_WR_DATA_LAST;
                            end
                            else
                                beatCnt_d <= beatCnt_q + 1'b1;
                        end
                        else
                        begin
                            if (beatCnt == (LENReg - 1))
                            begin
                                beatCnt_d <= 4'b0;
                                nxtState <= AXI_REG_WR_DATA_LAST;
                            end
                            else
                                beatCnt_d <= beatCnt_q + 1'b1;
                        end
                    end
                end
            end
        AXI_REG_WR_DATA_LAST:
            begin
                if (WVALID & WREADY)
                begin
                    if ((SIZEReg == 3'd3) && (!AHBErrorReg))
                    begin
                        // Transfer size is 64-bit and the WLAST signal wasn't
                        // prematurely asserted
                        if (WLAST)
                        begin
                            if (LENReg == 4'b0)
                            begin
                                // Transaction contains only a single transfer
                                // Offset the address for unaligned transfers. Address was
                                // 64-bit aligned in the previous state. Ensures that
                                // the address is offset for unaligned transfers, regardless
                                // of the address issued by the AXI master
                                ADDRReg_d <= ADDRReg_q + addrOffset;
                                validByteCnt_d <= {{4{1'b0}}, validByte};
                            end
                            else
                            begin
                                // Account for narrow transfer by using the population
                                // count of the WSTRB as the number of valid bytes 
                                // in this beat.
                                validByteCnt_d <= validByteCnt_q + validByte;
                            end
                            wrFIFOWrEn <= 1'b1;
                            wrFIFOWrData <= WDATA;
                            wrFIFOWrAddr_d <= 4'b0;
                            // Toggle the level of the AHBWrTranPend signal to 
                            // inform the AHBMasterCtrl block that there's 
                            // valid data in the write FIFO RAM
                            AHBWrTranPend_d <= !AHBWrTranPend_q;
                            nxtState <= AXI_WR_AHB_WAIT;
                        end
                        else
                        begin
                            // WLAST wasn't asserted when expected in this state
                            // so register an error and go to a wait state until
                            // we detect the WLAST assertion
                            AHBErrorReg_d <= 1'b1;
                            validByteCnt_d <= 8'b0;
                            wrFIFOWrAddr_d <= 4'b0;
                            nxtState <= AXI_WAIT_LAST;
                        end
                    end
                    else
                    begin
                        // Don't inform the AHBMasterCtrl block of the transaction
                        // as there was an error somewhere along the way. Instead
                        // report the error to the AXI master.
                        validByteCnt_d <= 8'b0;
                        wrFIFOWrAddr_d <= 4'b0;
                        nxtState <= AXI_WR_RESP;
                    end
                end
                else
                    WREADYOut <= 1'b1;
            end
        AXI_WAIT_LAST:
            begin
                // Wait for the WLAST signal to be asserted as it wasn't 
                // asserted during the cycle in which it was expected.
                if (WLAST)
                    nxtState <= AXI_WR_RESP;
            end
        AXI_WR_AHB_WAIT:
            begin
                if (AHBWrDone_edge)
                begin
                    // AHB transfer has been completed. It's safe to register the 
                    // AHBError signal coming from the AHBMasterCtrl block now as
                    // it's level is constant.
                    AHBErrorReg_d <= AHBError;
                    nxtState <= AXI_WR_RESP;
                end
            end
        AXI_WR_RESP:
            begin
                if ((AHBErrorReg) || (SIZEReg[2:0] != 3'd3))
                begin
                    // Indicate a 'slverr' as there was either an error in the 
                    // AHB transfer or WLAST was asserted prematurely or late by the
                    // AXI master. Alternatively the transfer size may have been
                    // something other than 64-bit
                    BRESPOut <= 2'b10;
                end
                else
                begin
                    // Indicate an 'okay' response to the AXI master
                    BRESPOut <= 2'b00;
                end
                if (BVALID & BREADY)
                begin
                    // Clear the error response register as the error has been
                    // relayed to the AXI master
                    AHBErrorReg_d <= 1'b0;
                    BRESPOut <= 2'b00;
                    nxtState <= AXI_IDLE;
                end
                else
                begin
                    BVALIDOut <= 1'b1;
                    BIDOut <= IDReg;
                end
            end
        AXI_REG_RD_ADDR:
            begin
                if (ARVALID & ARREADY)
                begin
                    ADDRReg_d <= ARADDR;
                    IDReg_d <= ARID;
                    BURSTReg_d <= ARBURST;
                    SIZEReg_d <= ARSIZE;
                    LENReg_d <= ARLEN;
                    if (ARSIZE == 3'b011) // 64-bit transfer size
                    begin
                        if (ARBURST == 2'b11) // 'Reserved' burst
                        begin
                            // Burst type is 'reserved' in the AXI specification
                            // Return an error to the AXI master during the read
                            // data transaction
                            AHBErrorReg_d <= 1'b1;
                            if (ARLEN == 4'b0) // Transaction consists of a single beat
                                nxtState <= AXI_RD_DATA_LAST;
                            else
                                nxtState <= AXI_RD_DATA_N;
                        end
                        else if (ARBURST == 2'b00) // Fixed address burst
                        begin
                            // Number of valid bytes equals ARLEN*(8- ARADDR[2:0])
                            // All transfers in the AXI transaction are unaligned
                            // if the address specified is unaligned
                            validByteCnt_d <= rdValidBytes;
                            // Inform the AHBMasterCtrl block that there's a read
                            // transfer pending
                            AHBRdTranPend_d <= !AHBRdTranPend_q;
                            nxtState <= AXI_RD_WAIT;
                        end
                        else if (ARBURST == 2'b10) // Wrapping burst
                        begin
                            if (WRAP_SUPPORT)
                            begin
                                if ((ARLEN == 4'd1) || (ARLEN == 4'd3) || (ARLEN == 4'd7) || (ARLEN == 4'd15))
                                begin
                                    // Number of valid bytes equals ARLEN*8 + (8- ARADDR[2:0]);
                                    // 2's compliment subtraction used to determine the number
                                    // of valid bytes during the first beat, based on ARADDR[2:0]
                                    // Only the first transfer in the AXI transaction is 
                                    // unaligned. All subsequent transfers contain 8 valid bytes
                                    validByteCnt_d <= {1'b0, ARLEN, ~ARADDR[2:0]} + 1'b1;
                                    // Inform the AHBMasterCtrl block that there's a read
                                    // transfer pending
                                    AHBRdTranPend_d <= !AHBRdTranPend_q;
                                    nxtState <= AXI_RD_WAIT;
                                end
                                else
                                begin
                                    // Return an error to the AXI master during
                                    // the read data transaction as only 2,4,8 
                                    // & 16 beat wrapping bursts are supported
                                    // by the AXI specification
                                    AHBErrorReg_d <= 1'b1;
                                    if (ARLEN == 4'b0) // Transaction consists of a single beat
                                        nxtState <= AXI_RD_DATA_LAST;
                                    else
                                        nxtState <= AXI_RD_DATA_N;
                                end
                            end
                            else
                            begin
                                // Return an error to the AXI master during the 
                                // read data transaction as the AXI master
                                // attempted a wrapping burst transfer when the 
                                // logic to support this wasn't instantiated.
                                AHBErrorReg_d <= 1'b1;
                                if (ARLEN == 4'b0) // Transaction consists of a single beat
                                    nxtState <= AXI_RD_DATA_LAST;
                                else
                                    nxtState <= AXI_RD_DATA_N;
                            end
                        end
                        else // Incrementing burst transaction
                        begin
                            // Number of valid bytes equals ARLEN*8 + (8- ARADDR[2:0]);
                            // 2's compliment subtraction used to determine the number
                            // of valid bytes during the first beat, based on ARADDR[2:0]
                            // Only the first transfer in the AXI transaction is 
                            // unaligned. All subsequent transfers contain 8 valid bytes
                            validByteCnt_d <= {1'b0, ARLEN, ~ARADDR[2:0]} + 1'b1;
                            // Inform the AHBMasterCtrl block that there's a read
                            // transfer pending
                            AHBRdTranPend_d <= !AHBRdTranPend_q;
                            nxtState <= AXI_RD_WAIT;
                        end
                    end
                    else if (ARLEN == 4'b0) // Transaction consists of a single beat
                        // Report an error to the AXI master during the read data 
                        // transaction as the transfer size wasn't 64-bit.
                        nxtState <= AXI_RD_DATA_LAST;
                    else
                        // Report an error to the AXI master during the read data 
                        // transaction as the transfer size wasn't 64-bit.
                        nxtState <= AXI_RD_DATA_N;
                end
                else
                    ARREADYOut <= 1'b1;
            end
        AXI_RD_WAIT:
            begin
                if (AHBRdDone_edge)
                begin
                    AHBErrorReg_d <= AHBError;
                    if (LENReg == 4'b0) // Transaction consists of a single beat
                        nxtState <= AXI_RD_DATA_LAST;
                    else
                        nxtState <= AXI_RD_DATA_N;
                end
            end
        AXI_RD_DATA_N:
            begin
                if ((AHBErrorReg) || (SIZEReg[2:0] != 3'b011))
                begin // Indicate an 'SLVERR' response to the AXI master
                    RRESPOut <= 2'b10;
                end
                else
                begin // Indicate an 'OKAY' response to the AXI master
                    RRESPOut <= 2'b00;
                end
                if (RVALID & RREADY)
                begin
                    RRESPOut <= 2'b00;
                    rdFIFORdAddr_d <= rdFIFORdAddr_q + 1'b1;
                    if (beatCnt == (LENReg - 1'b1)) // Penultimate beat
                    begin
                        beatCnt_d <= 4'b0;
                        nxtState <= AXI_RD_DATA_LAST;
                    end
                    else
                        beatCnt_d <= beatCnt_q + 1'b1;
                end
                else
                begin
                    RDATAOut <= rdFIFORdData;
                    RIDOut <= IDReg;
                    RVALIDOut <= 1'b1;
                end
            end
        AXI_RD_DATA_LAST:
            begin
                if ((AHBErrorReg) || (SIZEReg[2:0] != 3'b011))
                begin // Indicate an 'SLVERR' response to the AXI master
                    RRESPOut <= 2'b10;
                end
                else // Indicate a 'OKAY' response to the AXI master
                begin
                    RRESPOut <= 2'b00;
                end
                if (RVALID & RREADY)
                begin
                    RRESPOut <= 2'b00;
                    rdFIFORdAddr_d <= 4'b0;
                    AHBErrorReg_d <= 1'b0;
                    nxtState <= AXI_IDLE;
                end
                else
                begin
                    RDATAOut <= rdFIFORdData;
                    RIDOut <= IDReg;
                    RVALIDOut <= 1'b1;
                    RLASTOut <= 1'b1;
                end
            end
    endcase
end

////////////////////////////////////////////////////////////////////////////////
// Component instantiation
////////////////////////////////////////////////////////////////////////////////
COREAXITOAHBL_WSTRBPopCntr U_WSTRBPopCntr(
    .WSTRBIn            (WSTRB),
    .noValidBytes       (validByte)
);

COREAXITOAHBL_WSRTBAddrOffset U_WSRTBAddrOffset(
    .WSTRBIn            (WSTRB),
    .addrOffset         (addrOffset)
);

COREAXITOAHBL_readByteCnt U_readByteCnt(
    .addrOffset         (ARADDR[2:0]),
    .burstLen           (ARLEN),
    .validBytes         (rdValidBytes)
);

endmodule // COREAXITOAHBL_AXISlaveCtrl