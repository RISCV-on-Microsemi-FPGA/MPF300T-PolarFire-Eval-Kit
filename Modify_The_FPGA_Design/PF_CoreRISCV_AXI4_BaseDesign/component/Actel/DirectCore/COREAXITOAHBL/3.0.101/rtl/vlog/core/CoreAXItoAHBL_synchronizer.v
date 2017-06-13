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
module COREAXITOAHBL_synchronizer(
        CLK,
        RESETn,
        asyncInput,
        syncOutput
);
////////////////////////////////////////////////////////////////////////////////
// User modifiable parameters
////////////////////////////////////////////////////////////////////////////////
parameter NO_OF_REG_STAGES = 2; // Determines the number of register stages that
                                // are used in the synchronizer.
                                // Increase the number of register stages based
                                // on the required MTBF and the clock frequencies
                                // being used.
////////////////////////////////////////////////////////////////////////////////
// Input/Output signal declarations
////////////////////////////////////////////////////////////////////////////////
input                           CLK;
input                           RESETn;
input                           asyncInput;

output                          syncOutput;

////////////////////////////////////////////////////////////////////////////////
// Internal signals
////////////////////////////////////////////////////////////////////////////////
// Prevent the synchronizer being optimized away by the synthesis tool
reg     [NO_OF_REG_STAGES-1:0]  syncReg/* synthesis syn_keep = 1 */;

////////////////////////////////////////////////////////////////////////////////
// Synchronizer register stage
////////////////////////////////////////////////////////////////////////////////
always @(posedge CLK or negedge RESETn)
begin
    if (!RESETn)
        syncReg[NO_OF_REG_STAGES-1:0] <= {NO_OF_REG_STAGES{1'b0}};
    else
        syncReg[NO_OF_REG_STAGES-1:0] <= {syncReg[(NO_OF_REG_STAGES-2):0], asyncInput};
end

assign syncOutput = syncReg[NO_OF_REG_STAGES-1];

endmodule // COREAXITOAHBL_synchronizer