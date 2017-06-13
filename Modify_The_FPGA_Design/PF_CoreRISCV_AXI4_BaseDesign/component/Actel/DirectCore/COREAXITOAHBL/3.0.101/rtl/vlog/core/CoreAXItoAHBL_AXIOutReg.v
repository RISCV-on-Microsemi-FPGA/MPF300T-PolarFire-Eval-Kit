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
module COREAXITOAHBL_AXIOutReg(
                // Global inputs,
                ACLK,
                ARESETN,
                
                // AXISlaveCtrl inputs
                BRESPOut,
                BIDOut,
                AWREADYOut,
                WREADYOut,
                BVALIDOut,
                ARREADYOut,
                RVALIDOut,
                RLASTOut,
                RDATAOut,
                RIDOut,
                RRESPOut,
                
                // AXIMaster outputs
                BRESP,
                BID,
                AWREADY,
                WREADY,
                BVALID,
                ARREADY,
                RVALID,
                RLAST,
                RDATA,
                RID,
                RRESP
                );
////////////////////////////////////////////////////////////////////////////////
// User modifiable parameters
////////////////////////////////////////////////////////////////////////////////
parameter ID_WIDTH = 4;         // Sets the width of the ID field supported.

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
                        // Global inputs,
input                   ACLK;
input                   ARESETN;

                        // AXISlaveCtrl inputs
input  [1:0]            BRESPOut;
input  [ID_WIDTH-1:0]   BIDOut;
input                   AWREADYOut;
input                   WREADYOut;
input                   BVALIDOut;
input                   ARREADYOut;
input                   RVALIDOut;
input                   RLASTOut;
input  [63:0]           RDATAOut;
input  [ID_WIDTH-1:0]   RIDOut;
input  [1:0]            RRESPOut;

                        // AXIMaster outputs
output  [1:0]           BRESP;
output  [ID_WIDTH-1:0]  BID;
output                  AWREADY;
output                  WREADY;
output                  BVALID;
output                  ARREADY;
output                  RVALID;
output                  RLAST;
output  [63:0]          RDATA;
output  [ID_WIDTH-1:0]  RID;
output  [1:0]           RRESP;

reg     [1:0]           BRESP;
reg     [ID_WIDTH-1:0]  BID;
reg                     AWREADY;
reg                     WREADY;
reg                     BVALID;
reg                     ARREADY;
reg                     RVALID;
reg                     RLAST;
reg     [63:0]          RDATA;
reg     [ID_WIDTH-1:0]  RID;
reg     [1:0]           RRESP;

////////////////////////////////////////////////////////////////////////////////
// Output register
////////////////////////////////////////////////////////////////////////////////
always @ (posedge ACLK or negedge ARESETN)
begin
    if (!ARESETN)
    begin
        BRESP[1:0] <= 2'b0;
        BID[ID_WIDTH-1:0] <= {ID_WIDTH{1'b0}};
        AWREADY <= 1'b0;
        WREADY <= 1'b0;
        BVALID <= 1'b0;
        ARREADY <= 1'b0;
        RVALID <= 1'b0;
        RLAST <= 1'b0;
        RDATA[63:0] <= 64'b0;
        RID[ID_WIDTH-1:0] <= {ID_WIDTH{1'b0}};
        RRESP[1:0] <= 2'b0;
    end
    else
    begin
        BRESP <= BRESPOut;
        BID <= BIDOut;
        AWREADY <= AWREADYOut;
        WREADY <= WREADYOut;
        BVALID <= BVALIDOut;
        ARREADY <= ARREADYOut;
        RVALID <= RVALIDOut;
        RLAST <= RLASTOut;
        RDATA <= RDATAOut;
        RID <= RIDOut;
        RRESP <= RRESPOut;
    end
end

endmodule // COREAXITOAHBL_AXIOutReg