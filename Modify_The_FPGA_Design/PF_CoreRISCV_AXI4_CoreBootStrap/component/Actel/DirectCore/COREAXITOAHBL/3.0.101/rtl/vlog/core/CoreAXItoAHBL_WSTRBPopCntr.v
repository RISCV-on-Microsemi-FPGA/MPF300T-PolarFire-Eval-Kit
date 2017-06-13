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
module COREAXITOAHBL_WSTRBPopCntr (
    WSTRBIn,
    noValidBytes
);

input   [7:0]           WSTRBIn;
output  [3:0]           noValidBytes;

reg     [3:0]           noValidBytes;

////////////////////////////////////////////////////////////////////////////////
// ROM Table - Returns the population count of WSTRB
////////////////////////////////////////////////////////////////////////////////
always @ (*)
begin
    case (WSTRBIn) // 256*4 ROM table
        8'b10000000,8'b01000000,8'b00100000,8'b00010000,8'b00001000,8'b00000100,8'b00000010,8'b00000001: noValidBytes <= 4'd1;
        8'b11000000,8'b01100000,8'b00110000,8'b00011000,8'b00001100,8'b00000110,8'b00000011: noValidBytes <= 4'd2;
        8'b11100000,8'b01110000,8'b00111000,8'b00011100,8'b00001110,8'b00000111: noValidBytes <= 4'd3;
        8'b11110000,8'b01111000,8'b00111100,8'b00011110,8'b00001111: noValidBytes <= 4'd4;
        8'b11111000,8'b01111100,8'b00111110,8'b00011111: noValidBytes <= 4'd5;
        8'b11111100,8'b01111110,8'b00111111: noValidBytes <= 4'd6;
        8'b11111110,8'b01111111: noValidBytes <= 4'd7;
        8'b11111111: noValidBytes <= 4'd8;
        default: noValidBytes <= 4'd0;
    endcase
end

endmodule // COREAXITOAHBL_WSTRBPopCntr