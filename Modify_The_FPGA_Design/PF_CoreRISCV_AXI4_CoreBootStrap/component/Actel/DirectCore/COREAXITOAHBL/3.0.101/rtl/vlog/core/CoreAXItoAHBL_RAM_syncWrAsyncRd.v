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
module COREAXITOAHBL_RAM_syncWrAsyncRd (
                // Inputs
                wrCLK,
                RESETN,
                wrEn,
                wrAddr,
                wrData,
                rdAddr,
                
                // Outputs
                rdData
               );

input           wrCLK;
input           RESETN;
input           wrEn;
input   [3:0]   wrAddr;
input   [63:0]  wrData;
input   [3:0]   rdAddr;

output  [63:0]  rdData;

////////////////////////////////////////////////////////////////////////////////
// RAM Inference
////////////////////////////////////////////////////////////////////////////////
reg     [63:0]  mem [15:0];     
reg     [3:0]   wrAddrReg;
reg     [63:0]  wrDataReg;
reg             wrEnReg;

always @ (posedge wrCLK or negedge RESETN)
begin
    if (!RESETN)
    begin
        wrAddrReg <= 4'b0;
        wrDataReg <= 64'b0;
        wrEnReg <= 1'b0;
    end
    else
    begin
        wrAddrReg <= wrAddr;
        wrDataReg <= wrData;
        wrEnReg <= wrEn;
    end
end

// Synchronous write
always @ (posedge wrCLK)
begin
    if (wrEnReg)
        mem[wrAddrReg] <= wrDataReg;
end

// Asynchronous read
assign rdData = mem[rdAddr];

endmodule // COREAXITOAHBL_RAM_syncWrAsyncRd