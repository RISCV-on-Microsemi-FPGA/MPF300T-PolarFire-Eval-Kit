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
module COREAXITOAHBL_WSRTBAddrOffset (
    WSTRBIn,
    addrOffset
);

input   [7:0]           WSTRBIn;
output  [2:0]           addrOffset;

reg     [2:0]           addrOffset;

////////////////////////////////////////////////////////////////////////////////
// ROM Table - Returns the address offset based on WSTRB
////////////////////////////////////////////////////////////////////////////////
always @ (*)
begin
    case (WSTRBIn) // 256*3 ROM table
        8'b11111110,8'b01111110,8'b00111110,8'b00011110,8'b00001110,8'b00000110,8'b00000010 : addrOffset <= 3'd1;
        8'b11111100,8'b01111100,8'b00111100,8'b00011100,8'b00001100,8'b00000100 : addrOffset <= 3'd2;
        8'b11111000,8'b01111000,8'b00111000,8'b00011000,8'b00001000 : addrOffset <= 3'd3;
        8'b11110000,8'b01110000,8'b00110000,8'b00010000 : addrOffset <= 3'd4;
        8'b11100000,8'b01100000,8'b00100000 : addrOffset <= 3'd5;
        8'b11000000,8'b01000000 : addrOffset <= 3'd6;
        8'b10000000 : addrOffset <= 3'd7;
        default: addrOffset <= 3'd0;
    endcase
end

endmodule // COREAXITOAHBL_WSRTBAddrOffset