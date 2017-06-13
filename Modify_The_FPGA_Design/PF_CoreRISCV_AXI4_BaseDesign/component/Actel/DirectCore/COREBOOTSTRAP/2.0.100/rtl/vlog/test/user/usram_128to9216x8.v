// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  SRAM block, 4 byte wide, 64 to 2304 deep (in steps
//               of 64 for Word accesses), 64 to 4608 deep (in steps
//               of 64 for Half-Word accesses) and 64 to 4608 deep (in 
//               steps of 128 for Byte accesses) used to construct 
//               the memory.
//
// Revision Information:
// Date     Description
//
// SVN Revision Information:
// SVN $Revision: 4805 $
// SVN $Date: 2008-11-27 17:48:48 +0530 (Thu, 27 Nov 2008) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ********************************************************************/

`timescale 1ns/100ps

module usram_128to9216x8
  (
   writeData,
   readData,
   wen,
   ren,
   writeAddr,
   readAddr,
   clk,
   resetn,
   u_BUSY_all
   );

// ---------------------------------------------------------------------
// Parameters
// ---------------------------------------------------------------------
// DEPTH can range from
// 128 to 9216bytes  , in steps of 128bytes
   parameter DEPTH = 128;
   parameter SYNC_RESET = 0;
   
// ---------------------------------------------------------------------
// Port declarations
// ---------------------------------------------------------------------

   // Inputs
   input [7:0] writeData;

   // Inputs
   input        wen;
   input        ren;
   input [15:0] writeAddr;
   input [15:0] readAddr;
   input        clk;
   input        resetn;
   
    // Output
   output [7:0] readData;
   output                  u_BUSY_all;
   
// ---------------------------------------------------------------------
// Signal declarations
// ---------------------------------------------------------------------
   reg [7:0]    readData;
        reg     [13:6]                  ckRdAddr;

        reg                             wen_a0;
        reg                             wen_a1;
        reg                             wen_a2;
        reg                             wen_a3;
        reg                             wen_a4;
        reg                             wen_a5;
        reg                             wen_a6;
        reg                             wen_a7;
        reg                             wen_a8;
        reg                             wen_a9;
        reg                             wen_a10;
        reg                             wen_a11;
        reg                             wen_a12;
        reg                             wen_a13;
        reg                             wen_a14;
        reg                             wen_a15;
        reg                             wen_a16;
        reg                             wen_a17;

        wire    [17:0]                   readData0;
        wire    [17:0]                   readData1;
        wire    [17:0]                   readData2;
        wire    [17:0]                   readData3;
        wire    [17:0]                   readData4;
        wire    [17:0]                   readData5;
        wire    [17:0]                   readData6;
        wire    [17:0]                   readData7;
        wire    [17:0]                   readData8;
        wire    [17:0]                   readData9;
        wire    [17:0]                   readData10;
        wire    [17:0]                   readData11;
        wire    [17:0]                   readData12;
        wire    [17:0]                   readData13;
        wire    [17:0]                   readData14;
        wire    [17:0]                   readData15;
        wire    [17:0]                   readData16;
        wire    [17:0]                   readData17;

   reg [1:0]                           ablk;
   reg [1:0]                           bblk;
   reg [1:0]                           cblk;

   
   wire                                 u_BUSY_all;

   wire                                 u_BUSY_17;
   wire                                 u_BUSY_16;
   wire                                 u_BUSY_15;
   wire                                 u_BUSY_14;
   wire                                 u_BUSY_13;
   wire                                 u_BUSY_12;
   wire                                 u_BUSY_11;
   wire                                 u_BUSY_10;
   wire                                 u_BUSY_9;
   wire                                 u_BUSY_8;
   wire                                 u_BUSY_7;
   wire                                 u_BUSY_6;
   wire                                 u_BUSY_5;
   wire                                 u_BUSY_4;
   wire                                 u_BUSY_3;
   wire                                 u_BUSY_2;
   wire                                 u_BUSY_1;
   wire                                 u_BUSY_0;
   wire                                 aresetn;
   wire                                 sresetn; 
   
   assign aresetn = (SYNC_RESET==1) ? 1'b1 : resetn;
   assign sresetn = (SYNC_RESET==1) ? resetn : 1'b1;
   

//----------------------------------------------------------------------
// Main body of code
//----------------------------------------------------------------------
    always @ (posedge clk or negedge aresetn)
    begin
       if ((!aresetn) || (!sresetn))
         ckRdAddr[13:6] <= 8'b00000000;
       else
         ckRdAddr[13:6] <= readAddr[13:6];
    end
    //----------------------------------------------------------------------------------------
    // Assign values to various signals based on DEPTH and RAM64x16_WIDTH settings.
    // Default is to build the (byte wide) memory from RAM blocks which are configured to
    // be tall and narrow.
    //----------------------------------------------------------------------------------------

   always @ (*)
     begin
        wen_a0  = 1'b0;
        wen_a1  = 1'b0;
        wen_a2  = 1'b0;
        wen_a3  = 1'b0;
        wen_a4  = 1'b0;
        wen_a5  = 1'b0;
        wen_a6  = 1'b0;
        wen_a7  = 1'b0;
        wen_a8  = 1'b0;
        wen_a9  = 1'b0;
        wen_a10 = 1'b0;
        wen_a11 = 1'b0;
        wen_a12 = 1'b0;
        wen_a13 = 1'b0;
        wen_a14 = 1'b0;
        wen_a15 = 1'b0;
        wen_a16 = 1'b0;
        wen_a17 = 1'b0;

       // ablk = 2'b11;
       // bblk = 2'b11; 
            ablk = {ren,ren};
            bblk = {ren,ren};
            cblk = {wen,wen};

        case (DEPTH)
            32, 64, 96, 128: begin 
                  wen_a0 = wen;
                  readData = readData0[7:0];
            end

            160, 192, 224, 256: begin 
                case(writeAddr[7])
				  1'b0 : wen_a0 = wen;
				  1'b1 : wen_a1 = wen;
				endcase
				
                case(ckRdAddr[7])
				  1'b0 : readData = readData0[7:0];
				  1'b1 : readData = readData1[7:0];
				endcase
            end


            288, 320, 352, 384: begin
                case(writeAddr[8:7])
				    2'b00 : wen_a0 = wen;
				    2'b01 : wen_a1 = wen;
				    2'b10 : wen_a2 = wen;
                  default : begin
                              wen_a2 = 1'b0;
                              wen_a1 = 1'b0;
                              wen_a0 = 1'b0;
                            end
				endcase
				
                case(ckRdAddr[8:7])
				    2'b00 : readData = readData0[7:0];
				    2'b01 : readData = readData1[7:0];
				    2'b10 : readData = readData2[7:0];
                  default : readData = 8'h00;
				endcase
            end
          
            416, 448, 480, 512: begin  

                case(writeAddr[8:7])
				    2'b00 : wen_a0 = wen;
				    2'b01 : wen_a1 = wen;
				    2'b10 : wen_a2 = wen;
                    2'b11 : wen_a3 = wen;
				endcase
				
                case(ckRdAddr[8:7])
				    2'b00 : readData = readData0[7:0];
				    2'b01 : readData = readData1[7:0];
				    2'b10 : readData = readData2[7:0];
                    2'b11 : readData = readData3[7:0];
				endcase

            end

          544, 576, 608, 640: begin
				
                case(writeAddr[9:7])
				    3'b000 : wen_a0 = wen;
				    3'b001 : wen_a1 = wen;
				    3'b010 : wen_a2 = wen;
                    3'b011 : wen_a3 = wen;
                    3'b100 : wen_a4 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[9:7])
				    3'b000 : readData = readData0[7:0];
				    3'b001 : readData = readData1[7:0];
				    3'b010 : readData = readData2[7:0];
                    3'b011 : readData = readData3[7:0];
                    3'b100 : readData = readData4[7:0];
                   default : readData = 8'h00;
				endcase
            end

          672, 704, 736, 768: begin
                case(writeAddr[9:7])
				    3'b000 : wen_a0 = wen;
				    3'b001 : wen_a1 = wen;
				    3'b010 : wen_a2 = wen;
                    3'b011 : wen_a3 = wen;
                    3'b100 : wen_a4 = wen;
                    3'b101 : wen_a5 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[9:7])
				    3'b000 : readData = readData0[7:0];
				    3'b001 : readData = readData1[7:0];
				    3'b010 : readData = readData2[7:0];
                    3'b011 : readData = readData3[7:0];
                    3'b100 : readData = readData4[7:0];
                    3'b101 : readData = readData5[7:0];
                   default : readData = 8'h00;
				endcase
                 end
            800, 832, 864, 896: begin
                case(writeAddr[9:7])
				    3'b000 : wen_a0 = wen;
				    3'b001 : wen_a1 = wen;
				    3'b010 : wen_a2 = wen;
                    3'b011 : wen_a3 = wen;
                    3'b100 : wen_a4 = wen;
                    3'b101 : wen_a5 = wen;
                    3'b110 : wen_a6 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[9:7])
				    3'b000 : readData = readData0[7:0];
				    3'b001 : readData = readData1[7:0];
				    3'b010 : readData = readData2[7:0];
                    3'b011 : readData = readData3[7:0];
                    3'b100 : readData = readData4[7:0];
                    3'b101 : readData = readData5[7:0];
                    3'b110 : readData = readData6[7:0];
                   default : readData = 8'h00;
				endcase
            end


            928, 960, 992, 1024: begin
 
                case(writeAddr[9:7])
				    3'b000 : wen_a0 = wen;
				    3'b001 : wen_a1 = wen;
				    3'b010 : wen_a2 = wen;
                    3'b011 : wen_a3 = wen;
                    3'b100 : wen_a4 = wen;
                    3'b101 : wen_a5 = wen;
                    3'b110 : wen_a6 = wen;
                    3'b111 : wen_a7 = wen;
				endcase
				
                case(ckRdAddr[9:7])
				    3'b000 : readData = readData0[7:0];
				    3'b001 : readData = readData1[7:0];
				    3'b010 : readData = readData2[7:0];
                    3'b011 : readData = readData3[7:0];
                    3'b100 : readData = readData4[7:0];
                    3'b101 : readData = readData5[7:0];
                    3'b110 : readData = readData6[7:0];
                    3'b111 : readData = readData7[7:0];
				endcase
            end

            1056, 1088, 1120, 1152: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1184, 1216, 1248, 1280: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1312, 1344, 1376, 1408: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1440, 1472, 1504, 1536: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    4'b1011 : wen_a11 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    4'b1011 : readData = readData11[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1568, 1600, 1632, 1664: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    4'b1011 : wen_a11 = wen;
                    4'b1100 : wen_a12 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
					            wen_a12 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    4'b1011 : readData = readData11[7:0];
                    4'b1100 : readData = readData12[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1696, 1728, 1760, 1792: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    4'b1011 : wen_a11 = wen;
                    4'b1100 : wen_a12 = wen;
                    4'b1101 : wen_a13 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
					            wen_a12 = 1'b0;
					            wen_a13 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    4'b1011 : readData = readData11[7:0];
                    4'b1100 : readData = readData12[7:0];
                    4'b1101 : readData = readData13[7:0];
                    default : readData = 8'h00;
				endcase
                  end
            1824, 1856, 1888, 1920: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    4'b1011 : wen_a11 = wen;
                    4'b1100 : wen_a12 = wen;
                    4'b1101 : wen_a13 = wen;
                    4'b1110 : wen_a14 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
					            wen_a12 = 1'b0;
					            wen_a13 = 1'b0;
					            wen_a14 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    4'b1011 : readData = readData11[7:0];
                    4'b1100 : readData = readData12[7:0];
                    4'b1101 : readData = readData13[7:0];
                    4'b1110 : readData = readData14[7:0];
                    default : readData = 8'h00;
				endcase

                  end
            1952, 1984, 2016, 2048: begin
			
                case(writeAddr[10:7])
				    4'b0000 : wen_a0 = wen;
				    4'b0001 : wen_a1 = wen;
				    4'b0010 : wen_a2 = wen;
                    4'b0011 : wen_a3 = wen;
                    4'b0100 : wen_a4 = wen;
                    4'b0101 : wen_a5 = wen;
                    4'b0110 : wen_a6 = wen;
                    4'b0111 : wen_a7 = wen;
                    4'b1000 : wen_a8 = wen;
                    4'b1001 : wen_a9 = wen;
                    4'b1010 : wen_a10 = wen;
                    4'b1011 : wen_a11 = wen;
                    4'b1100 : wen_a12 = wen;
                    4'b1101 : wen_a13 = wen;
                    4'b1110 : wen_a14 = wen;
                    4'b1111 : wen_a15 = wen;
				endcase
				
                case(ckRdAddr[10:7])
				    4'b0000 : readData = readData0[7:0];
				    4'b0001 : readData = readData1[7:0];
				    4'b0010 : readData = readData2[7:0];
                    4'b0011 : readData = readData3[7:0];
                    4'b0100 : readData = readData4[7:0];
                    4'b0101 : readData = readData5[7:0];
                    4'b0110 : readData = readData6[7:0];
                    4'b0111 : readData = readData7[7:0];
                    4'b1000 : readData = readData8[7:0];
                    4'b1001 : readData = readData9[7:0];
                    4'b1010 : readData = readData10[7:0];
                    4'b1011 : readData = readData11[7:0];
                    4'b1100 : readData = readData12[7:0];
                    4'b1101 : readData = readData13[7:0];
                    4'b1110 : readData = readData14[7:0];
                    4'b1111 : readData = readData15[7:0];
				endcase
            end
 
            2080, 2112, 2144, 2176: begin
			
                case(writeAddr[11:7])
				    5'b00000 : wen_a0 = wen;
				    5'b00001 : wen_a1 = wen;
				    5'b00010 : wen_a2 = wen;
                    5'b00011 : wen_a3 = wen;
                    5'b00100 : wen_a4 = wen;
                    5'b00101 : wen_a5 = wen;
                    5'b00110 : wen_a6 = wen;
                    5'b00111 : wen_a7 = wen;
                    5'b01000 : wen_a8 = wen;
                    5'b01001 : wen_a9 = wen;
                    5'b01010 : wen_a10 = wen;
                    5'b01011 : wen_a11 = wen;
                    5'b01100 : wen_a12 = wen;
                    5'b01101 : wen_a13 = wen;
                    5'b01110 : wen_a14 = wen;
                    5'b01111 : wen_a15 = wen;
                    5'b10000 : wen_a16 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
					            wen_a12 = 1'b0;
					            wen_a13 = 1'b0;
					            wen_a14 = 1'b0;
					            wen_a15 = 1'b0;
					            wen_a16 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[11:7])
				    5'b00000 : readData = readData0[7:0];
				    5'b00001 : readData = readData1[7:0];
				    5'b00010 : readData = readData2[7:0];
                    5'b00011 : readData = readData3[7:0];
                    5'b00100 : readData = readData4[7:0];
                    5'b00101 : readData = readData5[7:0];
                    5'b00110 : readData = readData6[7:0];
                    5'b00111 : readData = readData7[7:0];
                    5'b01000 : readData = readData8[7:0];
                    5'b01001 : readData = readData9[7:0];
                    5'b01010 : readData = readData10[7:0];
                    5'b01011 : readData = readData11[7:0];
                    5'b01100 : readData = readData12[7:0];
                    5'b01101 : readData = readData13[7:0];
                    5'b01110 : readData = readData14[7:0];
                    5'b01111 : readData = readData15[7:0];
                    5'b10000 : readData = readData16[7:0];
                    default : readData = 8'h00;
				endcase

                  end
            2208, 2240, 2272, 2304: begin
			
                case(writeAddr[11:7])
				    5'b00000 : wen_a0 = wen;
				    5'b00001 : wen_a1 = wen;
				    5'b00010 : wen_a2 = wen;
                    5'b00011 : wen_a3 = wen;
                    5'b00100 : wen_a4 = wen;
                    5'b00101 : wen_a5 = wen;
                    5'b00110 : wen_a6 = wen;
                    5'b00111 : wen_a7 = wen;
                    5'b01000 : wen_a8 = wen;
                    5'b01001 : wen_a9 = wen;
                    5'b01010 : wen_a10 = wen;
                    5'b01011 : wen_a11 = wen;
                    5'b01100 : wen_a12 = wen;
                    5'b01101 : wen_a13 = wen;
                    5'b01110 : wen_a14 = wen;
                    5'b01111 : wen_a15 = wen;
                    5'b10000 : wen_a16 = wen;
                    5'b10001 : wen_a17 = wen;
                    default : begin
					            wen_a0 = 1'b0;
					            wen_a1 = 1'b0;
					            wen_a2 = 1'b0;
					            wen_a3 = 1'b0;
					            wen_a4 = 1'b0;
					            wen_a5 = 1'b0;
					            wen_a6 = 1'b0;
					            wen_a7 = 1'b0;
					            wen_a8 = 1'b0;
					            wen_a9 = 1'b0;
					            wen_a10 = 1'b0;
					            wen_a11 = 1'b0;
					            wen_a12 = 1'b0;
					            wen_a13 = 1'b0;
					            wen_a14 = 1'b0;
					            wen_a15 = 1'b0;
					            wen_a16 = 1'b0;
					            wen_a17 = 1'b0;
                             end
				endcase
				
                case(ckRdAddr[11:7])
				    5'b00000 : readData = readData0[7:0];
				    5'b00001 : readData = readData1[7:0];
				    5'b00010 : readData = readData2[7:0];
                    5'b00011 : readData = readData3[7:0];
                    5'b00100 : readData = readData4[7:0];
                    5'b00101 : readData = readData5[7:0];
                    5'b00110 : readData = readData6[7:0];
                    5'b00111 : readData = readData7[7:0];
                    5'b01000 : readData = readData8[7:0];
                    5'b01001 : readData = readData9[7:0];
                    5'b01010 : readData = readData10[7:0];
                    5'b01011 : readData = readData11[7:0];
                    5'b01100 : readData = readData12[7:0];
                    5'b01101 : readData = readData13[7:0];
                    5'b01110 : readData = readData14[7:0];
                    5'b01111 : readData = readData15[7:0];
                    5'b10000 : readData = readData16[7:0];
                    5'b10001 : readData = readData17[7:0];
                    default : readData = 8'h00;
				endcase
				
                end          

        endcase // case (DEPTH)        
   end // always @ (*)

    //----------------------------------------------------------------------------------------
    // RAM64x18 blocks
    //----------------------------------------------------------------------------------------


 RAM64x18 block_17(
                    .A_DOUT(readData17),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a17),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_17)                  
                   );                                 
                                                      
  RAM64x18 block_16(                                   
                    .A_DOUT(readData16),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a16),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_16)                  
                   );                                 
                                                      
  RAM64x18 block_15(                                   
                    .A_DOUT(readData15),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a15),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_15)                  
                   );                                 
                                                      
  RAM64x18 block_14(                                   
                    .A_DOUT(readData14),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a14),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_14)                  
                   );                                 
                                                      
  RAM64x18 block_13(                                   
                    .A_DOUT(readData13),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a13),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_13)                  
                   );                                 
                                                      
  RAM64x18 block_12(                                   
                    .A_DOUT(readData12),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a12),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_12)                  
                   );                                 
                                                      
  RAM64x18 block_11(                                   
                    .A_DOUT(readData11),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a11),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_11)                  
                   );                                 
                                                      
  RAM64x18 block_10(                                   
                    .A_DOUT(readData10),              .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a10),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_10)                  
                   );                                 
                                                      
  RAM64x18 block_9(                                    
                    .A_DOUT(readData9),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a9),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_9)                   
                   );                                 
                                                      
  RAM64x18 block_8(                                    
                    .A_DOUT(readData8),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a8),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_8)                   
                   );                                 
                                                      
                                                      
                                                      
  RAM64x18 block_7(                                    
                    .A_DOUT(readData7),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a7),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_7)                   
                   );                                 
                                                      
  RAM64x18 block_6(                                    
                    .A_DOUT(readData6),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a6),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_6)                   
                   );                                 
                                                      
  RAM64x18 block_5(                                    
                    .A_DOUT(readData5),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a5),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_5)                   
                   );                                 
                                                      
  RAM64x18 block_4(                                    
                    .A_DOUT(readData4),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a4),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_4)                   
                   );                                 
                                                      
  RAM64x18 block_3(                                    
                    .A_DOUT(readData3),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a3),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_3)                   
                   );                                 
                                                      
                                                      
     RAM64x18 block_2(                                 
                    .A_DOUT(readData2),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a2),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_2)                   
                   );                                 
                                                      
       RAM64x18 block_1(                               
                    .A_DOUT(readData1),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a1),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_1)                   
                   );                                 
                                                      
       RAM64x18 block_0(                               
                    .A_DOUT(readData0),               .B_DOUT(),
                    .A_ADDR_CLK(clk),                 .B_ADDR_CLK(clk),
                    .A_ADDR_EN(1'b1),                 .B_ADDR_EN(1'b1),
                    .A_ADDR_LAT(1'b1),                .B_ADDR_LAT(1'b1),
                    .A_ADDR_ARST_N (aresetn),         .B_ADDR_ARST_N(aresetn),
                    .A_ADDR_SRST_N(1'b1),             .B_ADDR_SRST_N(1'b1),
                    .A_DOUT_CLK(clk),                .B_DOUT_CLK(clk),
                    .A_DOUT_EN(1'b1),                 .B_DOUT_EN(1'b1),
                    .A_DOUT_LAT(1'b0),                .B_DOUT_LAT(1'b0),
                    .A_DOUT_ARST_N(aresetn),          .B_DOUT_ARST_N(aresetn),
                    .A_DOUT_SRST_N(1'b1),             .B_DOUT_SRST_N(1'b1),
                    .A_ADDR({readAddr[6:0], 3'b0}),   .B_ADDR({readAddr[6:0], 3'b0}),
                    .A_WIDTH(3'b011),                 .B_WIDTH(3'b011),
                    .A_BLK(ablk),                     .B_BLK(bblk),
                    .A_EN(1'b1),                      .B_EN(1'b1),
                    .C_CLK(clk),                      .C_ADDR({writeAddr[6:0], 3'b0}),
                    .C_DIN({10'b0, writeData[7:0]}),  .C_WEN(wen_a0),
                    .C_BLK(cblk),                    .C_WIDTH(3'b011),
                    .C_EN(1'b1),                      .SII_LOCK(1'b0),
                    .BUSY(u_BUSY_0)                          
                   );                                        


assign u_BUSY_all = u_BUSY_0 | u_BUSY_1 | u_BUSY_2 | u_BUSY_3 | u_BUSY_4 | u_BUSY_5 | u_BUSY_6 | u_BUSY_7 | u_BUSY_8 | u_BUSY_9 | u_BUSY_10 |
                       u_BUSY_11 | u_BUSY_12 | u_BUSY_13 | u_BUSY_14 | u_BUSY_15 | u_BUSY_16 | u_BUSY_17;


endmodule
