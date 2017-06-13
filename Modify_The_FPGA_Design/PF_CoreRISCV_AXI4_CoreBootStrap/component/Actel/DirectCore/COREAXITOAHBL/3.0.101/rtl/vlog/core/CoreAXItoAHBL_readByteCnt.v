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
module COREAXITOAHBL_readByteCnt (
    addrOffset,
    burstLen,
    validBytes
);

input   [2:0]           addrOffset;
input   [3:0]           burstLen;
output  [7:0]           validBytes;

reg     [7:0]           validBytes;
wire    [6:0]           ROMAddr;
assign ROMAddr = {addrOffset, burstLen};
////////////////////////////////////////////////////////////////////////////////
// ROM Table - Returns the number of valid bytes in a read transaction based on 
//             the address offset and the number of transfers in the read
//             transaction 
////////////////////////////////////////////////////////////////////////////////
always @ (*)
begin
    case (ROMAddr)
        7'b000_0000: validBytes <= 8'd8;
        7'b000_0001: validBytes <= 8'd16;
        7'b000_0010: validBytes <= 8'd24;
        7'b000_0011: validBytes <= 8'd32;
        7'b000_0100: validBytes <= 8'd40;
        7'b000_0101: validBytes <= 8'd48;
        7'b000_0110: validBytes <= 8'd56;
        7'b000_0111: validBytes <= 8'd64;
        7'b000_1000: validBytes <= 8'd72;
        7'b000_1001: validBytes <= 8'd80;
        7'b000_1010: validBytes <= 8'd88;
        7'b000_1011: validBytes <= 8'd96;
        7'b000_1100: validBytes <= 8'd104;
        7'b000_1101: validBytes <= 8'd112;
        7'b000_1110: validBytes <= 8'd120;
        7'b000_1111: validBytes <= 8'd128;
        
        7'b001_0000: validBytes <= 8'd7;
        7'b001_0001: validBytes <= 8'd14;
        7'b001_0010: validBytes <= 8'd21;
        7'b001_0011: validBytes <= 8'd28;
        7'b001_0100: validBytes <= 8'd35;
        7'b001_0101: validBytes <= 8'd42;
        7'b001_0110: validBytes <= 8'd49;
        7'b001_0111: validBytes <= 8'd56;
        7'b001_1000: validBytes <= 8'd63;
        7'b001_1001: validBytes <= 8'd70;
        7'b001_1010: validBytes <= 8'd77;
        7'b001_1011: validBytes <= 8'd84;
        7'b001_1100: validBytes <= 8'd91;
        7'b001_1101: validBytes <= 8'd98;
        7'b001_1110: validBytes <= 8'd105;
        7'b001_1111: validBytes <= 8'd112;
        
        7'b010_0000: validBytes <= 8'd6;
        7'b010_0001: validBytes <= 8'd12;
        7'b010_0010: validBytes <= 8'd18;
        7'b010_0011: validBytes <= 8'd24;
        7'b010_0100: validBytes <= 8'd30;
        7'b010_0101: validBytes <= 8'd36;
        7'b010_0110: validBytes <= 8'd42;
        7'b010_0111: validBytes <= 8'd48;
        7'b010_1000: validBytes <= 8'd54;
        7'b010_1001: validBytes <= 8'd60;
        7'b010_1010: validBytes <= 8'd66;
        7'b010_1011: validBytes <= 8'd72;
        7'b010_1100: validBytes <= 8'd78;
        7'b010_1101: validBytes <= 8'd84;
        7'b010_1110: validBytes <= 8'd90;
        7'b010_1111: validBytes <= 8'd96;
        
        7'b011_0000: validBytes <= 8'd5;
        7'b011_0001: validBytes <= 8'd10;
        7'b011_0010: validBytes <= 8'd15;
        7'b011_0011: validBytes <= 8'd20;
        7'b011_0100: validBytes <= 8'd25;
        7'b011_0101: validBytes <= 8'd30;
        7'b011_0110: validBytes <= 8'd35;
        7'b011_0111: validBytes <= 8'd40;
        7'b011_1000: validBytes <= 8'd45;
        7'b011_1001: validBytes <= 8'd50;
        7'b011_1010: validBytes <= 8'd55;
        7'b011_1011: validBytes <= 8'd60;
        7'b011_1100: validBytes <= 8'd65;
        7'b011_1101: validBytes <= 8'd70;
        7'b011_1110: validBytes <= 8'd75;
        7'b011_1111: validBytes <= 8'd80;
        
        7'b100_0000: validBytes <= 8'd4;
        7'b100_0001: validBytes <= 8'd8;
        7'b100_0010: validBytes <= 8'd12;
        7'b100_0011: validBytes <= 8'd16;
        7'b100_0100: validBytes <= 8'd20;
        7'b100_0101: validBytes <= 8'd24;
        7'b100_0110: validBytes <= 8'd28;
        7'b100_0111: validBytes <= 8'd32;
        7'b100_1000: validBytes <= 8'd36;
        7'b100_1001: validBytes <= 8'd40;
        7'b100_1010: validBytes <= 8'd44;
        7'b100_1011: validBytes <= 8'd48;
        7'b100_1100: validBytes <= 8'd52;
        7'b100_1101: validBytes <= 8'd56;
        7'b100_1110: validBytes <= 8'd60;
        7'b100_1111: validBytes <= 8'd64;
        
        7'b101_0000: validBytes <= 8'd3;
        7'b101_0001: validBytes <= 8'd6;
        7'b101_0010: validBytes <= 8'd9;
        7'b101_0011: validBytes <= 8'd12;
        7'b101_0100: validBytes <= 8'd15;
        7'b101_0101: validBytes <= 8'd18;
        7'b101_0110: validBytes <= 8'd21;
        7'b101_0111: validBytes <= 8'd24;
        7'b101_1000: validBytes <= 8'd27;
        7'b101_1001: validBytes <= 8'd30;
        7'b101_1010: validBytes <= 8'd33;
        7'b101_1011: validBytes <= 8'd36;
        7'b101_1100: validBytes <= 8'd39;
        7'b101_1101: validBytes <= 8'd42;
        7'b101_1110: validBytes <= 8'd45;
        7'b101_1111: validBytes <= 8'd48;
        
        7'b110_0000: validBytes <= 8'd2;
        7'b110_0001: validBytes <= 8'd4;
        7'b110_0010: validBytes <= 8'd6;
        7'b110_0011: validBytes <= 8'd8;
        7'b110_0100: validBytes <= 8'd10;
        7'b110_0101: validBytes <= 8'd12;
        7'b110_0110: validBytes <= 8'd14;
        7'b110_0111: validBytes <= 8'd16;
        7'b110_1000: validBytes <= 8'd18;
        7'b110_1001: validBytes <= 8'd20;
        7'b110_1010: validBytes <= 8'd22;
        7'b110_1011: validBytes <= 8'd24;
        7'b110_1100: validBytes <= 8'd26;
        7'b110_1101: validBytes <= 8'd28;
        7'b110_1110: validBytes <= 8'd30;
        7'b110_1111: validBytes <= 8'd32;
        
        7'b111_0000: validBytes <= 8'd1;
        7'b111_0001: validBytes <= 8'd2;
        7'b111_0010: validBytes <= 8'd3;
        7'b111_0011: validBytes <= 8'd4;
        7'b111_0100: validBytes <= 8'd5;
        7'b111_0101: validBytes <= 8'd6;
        7'b111_0110: validBytes <= 8'd7;
        7'b111_0111: validBytes <= 8'd8;
        7'b111_1000: validBytes <= 8'd9;
        7'b111_1001: validBytes <= 8'd10;
        7'b111_1010: validBytes <= 8'd11;
        7'b111_1011: validBytes <= 8'd12;
        7'b111_1100: validBytes <= 8'd13;
        7'b111_1101: validBytes <= 8'd14;
        7'b111_1110: validBytes <= 8'd15;
        7'b111_1111: validBytes <= 8'd16;
        
        default: validBytes <= 8'd0;
    endcase
end

endmodule // COREAXITOAHBL_readByteCnt