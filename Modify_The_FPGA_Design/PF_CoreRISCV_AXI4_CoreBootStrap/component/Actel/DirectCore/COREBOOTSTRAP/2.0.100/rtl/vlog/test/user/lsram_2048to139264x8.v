// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  SRAM block, 1 byte wide, 2048 to 141312 deep 
//              (in steps of 2048), used to construct the memory.
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

module lsram_2048to139264x8
(
    writeData,
    readData,
    wen_a,
    wen_b,
    ren,
    writeAddr,
    readAddr,
    clk,
    resetn,
    l_BUSY_all
);

// ---------------------------------------------------------------------
// Parameters
// ---------------------------------------------------------------------
// DEPTH can range from 2048 to 141312, in steps of 2048
   parameter DEPTH = 2048;
   parameter SYNC_RESET = 0;
   localparam AHB_DWIDTH = 32;


// ---------------------------------------------------------------------
// Port declarations
// ---------------------------------------------------------------------

   // AhbFabric interface
   // Inputs
   input [AHB_DWIDTH - 1:0] writeData;

   // AhbSramIf interface
   // Inputs
   input [1:0]            wen_a;
   input [1:0]            wen_b;
   input                  ren;
   input [15:0]           writeAddr;
   input [15:0]           readAddr;
   input                  clk;
   input                  resetn;

   // Output
   output [AHB_DWIDTH - 1:0] readData;   
   output                    l_BUSY_all;

// ---------------------------------------------------------------------
// Constant declarations
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
// Signal declarations
// ---------------------------------------------------------------------
   reg [AHB_DWIDTH-1:0]    readData;
   reg [15:9]              ckRdAddr;


   reg     [1:0]                   wen_a0;
   reg     [1:0]                   wen_a1;
   reg     [1:0]                   wen_a2;
   reg     [1:0]                   wen_a3;
   reg     [1:0]                   wen_a4;
   reg     [1:0]                   wen_a5;
   reg     [1:0]                   wen_a6;
   reg     [1:0]                   wen_a7;
   reg     [1:0]                   wen_a8;
   reg     [1:0]                   wen_a9;
   reg     [1:0]                   wen_a10;
   reg     [1:0]                   wen_a11;
   reg     [1:0]                   wen_a12;
   reg     [1:0]                   wen_a13;
   reg     [1:0]                   wen_a14;
   reg     [1:0]                   wen_a15;
   reg     [1:0]                   wen_a16;
   reg     [1:0]                   wen_a17;
   reg     [1:0]                   wen_a18;
   reg     [1:0]                   wen_a19;
   reg     [1:0]                   wen_a20;
   reg     [1:0]                   wen_a21;
   reg     [1:0]                   wen_a22;
   reg     [1:0]                   wen_a23;
   reg     [1:0]                   wen_a24;
   reg     [1:0]                   wen_a25;
   reg     [1:0]                   wen_a26;
   reg     [1:0]                   wen_a27;
   reg     [1:0]                   wen_a28;
   reg     [1:0]                   wen_a29;
   reg     [1:0]                   wen_a30;
   reg     [1:0]                   wen_a31;
   reg     [1:0]                   wen_a32;
   reg     [1:0]                   wen_a33;
   reg     [1:0]                   wen_a34;
   reg     [1:0]                   wen_a35;
   reg     [1:0]                   wen_a36;
   reg     [1:0]                   wen_a37;
   reg     [1:0]                   wen_a38;
   reg     [1:0]                   wen_a39;
   reg     [1:0]                   wen_a40;
   reg     [1:0]                   wen_a41;
   reg     [1:0]                   wen_a42;
   reg     [1:0]                   wen_a43;
   reg     [1:0]                   wen_a44;
   reg     [1:0]                   wen_a45;
   reg     [1:0]                   wen_a46;
   reg     [1:0]                   wen_a47;
   reg     [1:0]                   wen_a48;
   reg     [1:0]                   wen_a49;
   reg     [1:0]                   wen_a50;
   reg     [1:0]                   wen_a51;
   reg     [1:0]                   wen_a52;
   reg     [1:0]                   wen_a53;
   reg     [1:0]                   wen_a54;
   reg     [1:0]                   wen_a55;
   reg     [1:0]                   wen_a56;
   reg     [1:0]                   wen_a57;
   reg     [1:0]                   wen_a58;
   reg     [1:0]                   wen_a59;
   reg     [1:0]                   wen_a60;
   reg     [1:0]                   wen_a61;
   reg     [1:0]                   wen_a62;
   reg     [1:0]                   wen_a63;
   reg     [1:0]                   wen_a64;
   reg     [1:0]                   wen_a65;
   reg     [1:0]                   wen_a66;
   reg     [1:0]                   wen_a67;
   reg     [1:0]                   wen_a68;

   reg     [1:0]                   wen_b0;
   reg     [1:0]                   wen_b1;
   reg     [1:0]                   wen_b2;
   reg     [1:0]                   wen_b3;
   reg     [1:0]                   wen_b4;
   reg     [1:0]                   wen_b5;
   reg     [1:0]                   wen_b6;
   reg     [1:0]                   wen_b7;
   reg     [1:0]                   wen_b8;
   reg     [1:0]                   wen_b9;
   reg     [1:0]                   wen_b10;
   reg     [1:0]                   wen_b11;
   reg     [1:0]                   wen_b12;
   reg     [1:0]                   wen_b13;
   reg     [1:0]                   wen_b14;
   reg     [1:0]                   wen_b15;
   reg     [1:0]                   wen_b16;
   reg     [1:0]                   wen_b17;
   reg     [1:0]                   wen_b18;
   reg     [1:0]                   wen_b19;
   reg     [1:0]                   wen_b20;
   reg     [1:0]                   wen_b21;
   reg     [1:0]                   wen_b22;
   reg     [1:0]                   wen_b23;
   reg     [1:0]                   wen_b24;
   reg     [1:0]                   wen_b25;
   reg     [1:0]                   wen_b26;
   reg     [1:0]                   wen_b27;
   reg     [1:0]                   wen_b28;
   reg     [1:0]                   wen_b29;
   reg     [1:0]                   wen_b30;
   reg     [1:0]                   wen_b31;
   reg     [1:0]                   wen_b32;
   reg     [1:0]                   wen_b33;
   reg     [1:0]                   wen_b34;
   reg     [1:0]                   wen_b35;
   reg     [1:0]                   wen_b36;
   reg     [1:0]                   wen_b37;
   reg     [1:0]                   wen_b38;
   reg     [1:0]                   wen_b39;
   reg     [1:0]                   wen_b40;
   reg     [1:0]                   wen_b41;
   reg     [1:0]                   wen_b42;
   reg     [1:0]                   wen_b43;
   reg     [1:0]                   wen_b44;
   reg     [1:0]                   wen_b45;
   reg     [1:0]                   wen_b46;
   reg     [1:0]                   wen_b47;
   reg     [1:0]                   wen_b48;
   reg     [1:0]                   wen_b49;
   reg     [1:0]                   wen_b50;
   reg     [1:0]                   wen_b51;
   reg     [1:0]                   wen_b52;
   reg     [1:0]                   wen_b53;
   reg     [1:0]                   wen_b54;
   reg     [1:0]                   wen_b55;
   reg     [1:0]                   wen_b56;
   reg     [1:0]                   wen_b57;
   reg     [1:0]                   wen_b58;
   reg     [1:0]                   wen_b59;
   reg     [1:0]                   wen_b60;
   reg     [1:0]                   wen_b61;
   reg     [1:0]                   wen_b62;
   reg     [1:0]                   wen_b63;
   reg     [1:0]                   wen_b64;
   reg     [1:0]                   wen_b65;
   reg     [1:0]                   wen_b66;
   reg     [1:0]                   wen_b67;
   reg     [1:0]                   wen_b68;

   reg     [35:0]                   writeData0;
   reg     [35:0]                   writeData1;
   reg     [35:0]                   writeData2;
   reg     [35:0]                   writeData3;
   reg     [35:0]                   writeData4;
   reg     [35:0]                   writeData5;
   reg     [35:0]                   writeData6;
   reg     [35:0]                   writeData7;
   reg     [35:0]                   writeData8;
   reg     [35:0]                   writeData9;
   reg     [35:0]                   writeData10;
   reg     [35:0]                   writeData11;
   reg     [35:0]                   writeData12;
   reg     [35:0]                   writeData13;
   reg     [35:0]                   writeData14;
   reg     [35:0]                   writeData15;
   reg     [35:0]                   writeData16;
   reg     [35:0]                   writeData17;
   reg     [35:0]                   writeData18;
   reg     [35:0]                   writeData19;
   reg     [35:0]                   writeData20;
   reg     [35:0]                   writeData21;
   reg     [35:0]                   writeData22;
   reg     [35:0]                   writeData23;
   reg     [35:0]                   writeData24;
   reg     [35:0]                   writeData25;
   reg     [35:0]                   writeData26;
   reg     [35:0]                   writeData27;
   reg     [35:0]                   writeData28;
   reg     [35:0]                   writeData29;
   reg     [35:0]                   writeData30;
   reg     [35:0]                   writeData31;
   reg     [35:0]                   writeData32;
   reg     [35:0]                   writeData33;
   reg     [35:0]                   writeData34;
   reg     [35:0]                   writeData35;
   reg     [35:0]                   writeData36;
   reg     [35:0]                   writeData37;
   reg     [35:0]                   writeData38;
   reg     [35:0]                   writeData39;
   reg     [35:0]                   writeData40;
   reg     [35:0]                   writeData41;
   reg     [35:0]                   writeData42;
   reg     [35:0]                   writeData43;
   reg     [35:0]                   writeData44;
   reg     [35:0]                   writeData45;
   reg     [35:0]                   writeData46;
   reg     [35:0]                   writeData47;
   reg     [35:0]                   writeData48;
   reg     [35:0]                   writeData49;
   reg     [35:0]                   writeData50;
   reg     [35:0]                   writeData51;
   reg     [35:0]                   writeData52;
   reg     [35:0]                   writeData53;
   reg     [35:0]                   writeData54;
   reg     [35:0]                   writeData55;
   reg     [35:0]                   writeData56;
   reg     [35:0]                   writeData57;
   reg     [35:0]                   writeData58;
   reg     [35:0]                   writeData59;
   reg     [35:0]                   writeData60;
   reg     [35:0]                   writeData61;
   reg     [35:0]                   writeData62;
   reg     [35:0]                   writeData63;
   reg     [35:0]                   writeData64;
   reg     [35:0]                   writeData65;
   reg     [35:0]                   writeData66;
   reg     [35:0]                   writeData67;
   reg     [35:0]                   writeData68;

   wire    [35:0]                   readData0;
   wire    [35:0]                   readData1;
   wire    [35:0]                   readData2;
   wire    [35:0]                   readData3;
   wire    [35:0]                   readData4;
   wire    [35:0]                   readData5;
   wire    [35:0]                   readData6;
   wire    [35:0]                   readData7;
   wire    [35:0]                   readData8;
   wire    [35:0]                   readData9;
   wire    [35:0]                   readData10;
   wire    [35:0]                   readData11;
   wire    [35:0]                   readData12;
   wire    [35:0]                   readData13;
   wire    [35:0]                   readData14;
   wire    [35:0]                   readData15;
   wire    [35:0]                   readData16;
   wire    [35:0]                   readData17;
   wire    [35:0]                   readData18;
   wire    [35:0]                   readData19;
   wire    [35:0]                   readData20;
   wire    [35:0]                   readData21;
   wire    [35:0]                   readData22;
   wire    [35:0]                   readData23;
   wire    [35:0]                   readData24;
   wire    [35:0]                   readData25;
   wire    [35:0]                   readData26;
   wire    [35:0]                   readData27;
   wire    [35:0]                   readData28;
   wire    [35:0]                   readData29;
   wire    [35:0]                   readData30;
   wire    [35:0]                   readData31;
   wire    [35:0]                   readData32;
   wire    [35:0]                   readData33;
   wire    [35:0]                   readData34;
   wire    [35:0]                   readData35;
   wire    [35:0]                   readData36;
   wire    [35:0]                   readData37;
   wire    [35:0]                   readData38;
   wire    [35:0]                   readData39;
   wire    [35:0]                   readData40;
   wire    [35:0]                   readData41;
   wire    [35:0]                   readData42;
   wire    [35:0]                   readData43;
   wire    [35:0]                   readData44;
   wire    [35:0]                   readData45;
   wire    [35:0]                   readData46;
   wire    [35:0]                   readData47;
   wire    [35:0]                   readData48;
   wire    [35:0]                   readData49;
   wire    [35:0]                   readData50;
   wire    [35:0]                   readData51;
   wire    [35:0]                   readData52;
   wire    [35:0]                   readData53;
   wire    [35:0]                   readData54;
   wire    [35:0]                   readData55;
   wire    [35:0]                   readData56;
   wire    [35:0]                   readData57;
   wire    [35:0]                   readData58;
   wire    [35:0]                   readData59;
   wire    [35:0]                   readData60;
   wire    [35:0]                   readData61;
   wire    [35:0]                   readData62;
   wire    [35:0]                   readData63;
   wire    [35:0]                   readData64;
   wire    [35:0]                   readData65;
   wire    [35:0]                   readData66;
   wire    [35:0]                   readData67;
   wire    [35:0]                   readData68;

   reg     [13:0]                  writeAddr0;
   reg     [13:0]                  writeAddr1;
   reg     [13:0]                  writeAddr2;
   reg     [13:0]                  writeAddr3;
   reg     [13:0]                  writeAddr4;
   reg     [13:0]                  writeAddr5;
   reg     [13:0]                  writeAddr6;
   reg     [13:0]                  writeAddr7;
   reg     [13:0]                  writeAddr8;
   reg     [13:0]                  writeAddr9;
   reg     [13:0]                  writeAddr10;
   reg     [13:0]                  writeAddr11;
   reg     [13:0]                  writeAddr12;
   reg     [13:0]                  writeAddr13;
   reg     [13:0]                  writeAddr14;
   reg     [13:0]                  writeAddr15;
   reg     [13:0]                  writeAddr16;
   reg     [13:0]                  writeAddr17;
   reg     [13:0]                  writeAddr18;
   reg     [13:0]                  writeAddr19;
   reg     [13:0]                  writeAddr20;
   reg     [13:0]                  writeAddr21;
   reg     [13:0]                  writeAddr22;
   reg     [13:0]                  writeAddr23;
   reg     [13:0]                  writeAddr24;
   reg     [13:0]                  writeAddr25;
   reg     [13:0]                  writeAddr26;
   reg     [13:0]                  writeAddr27;
   reg     [13:0]                  writeAddr28;
   reg     [13:0]                  writeAddr29;
   reg     [13:0]                  writeAddr30;
   reg     [13:0]                  writeAddr31;
   reg     [13:0]                  writeAddr32;
   reg     [13:0]                  writeAddr33;
   reg     [13:0]                  writeAddr34;
   reg     [13:0]                  writeAddr35;
   reg     [13:0]                  writeAddr36;
   reg     [13:0]                  writeAddr37;
   reg     [13:0]                  writeAddr38;
   reg     [13:0]                  writeAddr39;
   reg     [13:0]                  writeAddr40;
   reg     [13:0]                  writeAddr41;
   reg     [13:0]                  writeAddr42;
   reg     [13:0]                  writeAddr43;
   reg     [13:0]                  writeAddr44;
   reg     [13:0]                  writeAddr45;
   reg     [13:0]                  writeAddr46;
   reg     [13:0]                  writeAddr47;
   reg     [13:0]                  writeAddr48;
   reg     [13:0]                  writeAddr49;
   reg     [13:0]                  writeAddr50;
   reg     [13:0]                  writeAddr51;
   reg     [13:0]                  writeAddr52;
   reg     [13:0]                  writeAddr53;
   reg     [13:0]                  writeAddr54;
   reg     [13:0]                  writeAddr55;
   reg     [13:0]                  writeAddr56;
   reg     [13:0]                  writeAddr57;
   reg     [13:0]                  writeAddr58;
   reg     [13:0]                  writeAddr59;
   reg     [13:0]                  writeAddr60;
   reg     [13:0]                  writeAddr61;
   reg     [13:0]                  writeAddr62;
   reg     [13:0]                  writeAddr63;
   reg     [13:0]                  writeAddr64;
   reg     [13:0]                  writeAddr65;
   reg     [13:0]                  writeAddr66;
   reg     [13:0]                  writeAddr67;
   reg     [13:0]                  writeAddr68;

   reg     [13:0]                  readAddr0;
   reg     [13:0]                  readAddr1;
   reg     [13:0]                  readAddr2;
   reg     [13:0]                  readAddr3;
   reg     [13:0]                  readAddr4;
   reg     [13:0]                  readAddr5;
   reg     [13:0]                  readAddr6;
   reg     [13:0]                  readAddr7;
   reg     [13:0]                  readAddr8;
   reg     [13:0]                  readAddr9;
   reg     [13:0]                  readAddr10;
   reg     [13:0]                  readAddr11;
   reg     [13:0]                  readAddr12;
   reg     [13:0]                  readAddr13;
   reg     [13:0]                  readAddr14;
   reg     [13:0]                  readAddr15;
   reg     [13:0]                  readAddr16;
   reg     [13:0]                  readAddr17;
   reg     [13:0]                  readAddr18;
   reg     [13:0]                  readAddr19;
   reg     [13:0]                  readAddr20;
   reg     [13:0]                  readAddr21;
   reg     [13:0]                  readAddr22;
   reg     [13:0]                  readAddr23;
   reg     [13:0]                  readAddr24;
   reg     [13:0]                  readAddr25;
   reg     [13:0]                  readAddr26;
   reg     [13:0]                  readAddr27;
   reg     [13:0]                  readAddr28;
   reg     [13:0]                  readAddr29;
   reg     [13:0]                  readAddr30;
   reg     [13:0]                  readAddr31;
   reg     [13:0]                  readAddr32;
   reg     [13:0]                  readAddr33;
   reg     [13:0]                  readAddr34;
   reg     [13:0]                  readAddr35;
   reg     [13:0]                  readAddr36;
   reg     [13:0]                  readAddr37;
   reg     [13:0]                  readAddr38;
   reg     [13:0]                  readAddr39;
   reg     [13:0]                  readAddr40;
   reg     [13:0]                  readAddr41;
   reg     [13:0]                  readAddr42;
   reg     [13:0]                  readAddr43;
   reg     [13:0]                  readAddr44;
   reg     [13:0]                  readAddr45;
   reg     [13:0]                  readAddr46;
   reg     [13:0]                  readAddr47;
   reg     [13:0]                  readAddr48;
   reg     [13:0]                  readAddr49;
   reg     [13:0]                  readAddr50;
   reg     [13:0]                  readAddr51;
   reg     [13:0]                  readAddr52;
   reg     [13:0]                  readAddr53;
   reg     [13:0]                  readAddr54;
   reg     [13:0]                  readAddr55;
   reg     [13:0]                  readAddr56;
   reg     [13:0]                  readAddr57;
   reg     [13:0]                  readAddr58;
   reg     [13:0]                  readAddr59;
   reg     [13:0]                  readAddr60;
   reg     [13:0]                  readAddr61;
   reg     [13:0]                  readAddr62;
   reg     [13:0]                  readAddr63;
   reg     [13:0]                  readAddr64;
   reg     [13:0]                  readAddr65;
   reg     [13:0]                  readAddr66;
   reg     [13:0]                  readAddr67;
   reg     [13:0]                  readAddr68;

   wire                            l_BUSY_all;
   wire                            lsram_2k_BUSY_68;
   wire                            lsram_2k_BUSY_67;
   wire                            lsram_2k_BUSY_66;
   wire                            lsram_2k_BUSY_65;
   wire                            lsram_2k_BUSY_64;
   wire                            lsram_2k_BUSY_63;
   wire                            lsram_2k_BUSY_62;
   wire                            lsram_2k_BUSY_61;
   wire                            lsram_2k_BUSY_60;
   wire                            lsram_2k_BUSY_59;
   wire                            lsram_2k_BUSY_57;
   wire                            lsram_2k_BUSY_56;
   wire                            lsram_2k_BUSY_55;
   wire                            lsram_2k_BUSY_54;
   wire                            lsram_2k_BUSY_53;
   wire                            lsram_2k_BUSY_52;
   wire                            lsram_2k_BUSY_51;
   wire                            lsram_2k_BUSY_50;
   wire                            lsram_2k_BUSY_49;
   wire                            lsram_2k_BUSY_48;
   wire                            lsram_2k_BUSY_47;
   wire                            lsram_2k_BUSY_46;
   wire                            lsram_2k_BUSY_45;
   wire                            lsram_2k_BUSY_44;
   wire                            lsram_2k_BUSY_43;
   wire                            lsram_2k_BUSY_42;
   wire                            lsram_2k_BUSY_41;
   wire                            lsram_2k_BUSY_40;
   wire                            lsram_2k_BUSY_39;
   wire                            lsram_2k_BUSY_38;
   wire                            lsram_2k_BUSY_37;
   wire                            lsram_2k_BUSY_36;
   wire                            lsram_2k_BUSY_35;
   wire                            lsram_2k_BUSY_34;
   wire                            lsram_2k_BUSY_33;
   wire                            lsram_2k_BUSY_32;
   wire                            lsram_2k_BUSY_31;
   wire                            lsram_2k_BUSY_30;
   wire                            lsram_2k_BUSY_29;
   wire                            lsram_2k_BUSY_28;
   wire                            lsram_2k_BUSY_27;
   wire                            lsram_2k_BUSY_26;
   wire                            lsram_2k_BUSY_25;
   wire                            lsram_2k_BUSY_24;
   wire                            lsram_2k_BUSY_23;
   wire                            lsram_2k_BUSY_22;
   wire                            lsram_2k_BUSY_21;
   wire                            lsram_2k_BUSY_20;
   wire                            lsram_2k_BUSY_19;
   wire                            lsram_2k_BUSY_18;
   wire                            lsram_2k_BUSY_17;
   wire                            lsram_2k_BUSY_16;
   wire                            lsram_2k_BUSY_15;
   wire                            lsram_2k_BUSY_14;
   wire                            lsram_2k_BUSY_13;
   wire                            lsram_2k_BUSY_12;
   wire                            lsram_2k_BUSY_11;
   wire                            lsram_2k_BUSY_10;
   wire                            lsram_2k_BUSY_9;
   wire                            lsram_2k_BUSY_8;
   wire                            lsram_2k_BUSY_7;
   wire                            lsram_2k_BUSY_6;
   wire                            lsram_2k_BUSY_5;
   wire                            lsram_2k_BUSY_4;
   wire                            lsram_2k_BUSY_3;
   wire                            lsram_2k_BUSY_2;
   wire                            lsram_2k_BUSY_1;
   wire                            lsram_2k_BUSY_0;
   wire                            aresetn;
   wire                            sresetn;

   wire                  wen0;
   
   assign aresetn = (SYNC_RESET==1) ? 1'b1 : resetn;
   assign sresetn = (SYNC_RESET==1) ? resetn : 1'b1;
   assign wen0 = wen_a0[0]| wen_a[1]| wen_b0[0]| wen_b1[1];

//----------------------------------------------------------------------
// Main body of code
//----------------------------------------------------------------------

    always @ (posedge clk or negedge aresetn)
    begin
       if ((!aresetn) || (!sresetn))
            ckRdAddr[15:9] <= 7'b0000000;
        else
            ckRdAddr[15:9] <= readAddr[15:9];
    end

    //----------------------------------------------------------------------------------------
    // Assign values to various signals based on DEPTH and RAM4K9_WIDTH settings.
    // Default is to build the (byte wide) memory from RAM blocks which are configured to
    // be tall and narrow.
    //----------------------------------------------------------------------------------------
    always @(*)
    begin

        wen_a0  = 2'b0;
        wen_a1  = 2'b0;
        wen_a2  = 2'b0;
        wen_a3  = 2'b0;
        wen_a4  = 2'b0;
        wen_a5  = 2'b0;
        wen_a6  = 2'b0;
        wen_a7  = 2'b0;
        wen_a8  = 2'b0;
        wen_a9  = 2'b0;
        wen_a10 = 2'b0;
        wen_a11 = 2'b0;
        wen_a12 = 2'b0;
        wen_a13 = 2'b0;
        wen_a14 = 2'b0;
        wen_a15 = 2'b0;
        wen_a16 = 2'b0;
        wen_a17 = 2'b0;
        wen_a18 = 2'b0;
        wen_a19 = 2'b0;
        wen_a20 = 2'b0;
        wen_a21 = 2'b0;
        wen_a22 = 2'b0;
        wen_a23 = 2'b0;
        wen_a24 = 2'b0;
        wen_a25 = 2'b0;
        wen_a26 = 2'b0;
        wen_a27 = 2'b0;
        wen_a28 = 2'b0;
        wen_a29 = 2'b0;
        wen_a30 = 2'b0;
        wen_a31 = 2'b0;
        wen_a32 = 2'b0;
        wen_a33 = 2'b0;
        wen_a34 = 2'b0;
        wen_a35 = 2'b0;
        wen_a36 = 2'b0;
        wen_a37 = 2'b0;
        wen_a38 = 2'b0;
        wen_a39 = 2'b0;
        wen_a40 = 2'b0;
        wen_a41 = 2'b0;
        wen_a42 = 2'b0;
        wen_a43 = 2'b0;
        wen_a44 = 2'b0;
        wen_a45 = 2'b0;
        wen_a46 = 2'b0;
        wen_a47 = 2'b0;
        wen_a48 = 2'b0;
        wen_a49 = 2'b0;
        wen_a50 = 2'b0;
        wen_a51 = 2'b0;
        wen_a52 = 2'b0;
        wen_a53 = 2'b0;
        wen_a54 = 2'b0;
        wen_a55 = 2'b0;
        wen_a56 = 2'b0;
        wen_a57 = 2'b0;
        wen_a58 = 2'b0;
        wen_a59 = 2'b0;
        wen_a60 = 2'b0;
        wen_a61 = 2'b0;
        wen_a62 = 2'b0;
        wen_a63 = 2'b0;
        wen_a64 = 2'b0;
        wen_a65 = 2'b0;
        wen_a66 = 2'b0;
        wen_a67 = 2'b0;
        wen_a68 = 2'b0;

        wen_b0  = 2'b0;
        wen_b1  = 2'b0;
        wen_b2  = 2'b0;
        wen_b3  = 2'b0;
        wen_b4  = 2'b0;
        wen_b5  = 2'b0;
        wen_b6  = 2'b0;
        wen_b7  = 2'b0;
        wen_b8  = 2'b0;
        wen_b9  = 2'b0;
        wen_b10 = 2'b0;
        wen_b11 = 2'b0;
        wen_b12 = 2'b0;
        wen_b13 = 2'b0;
        wen_b14 = 2'b0;
        wen_b15 = 2'b0;
        wen_b16 = 2'b0;
        wen_b17 = 2'b0;
        wen_b18 = 2'b0;
        wen_b19 = 2'b0;
        wen_b20 = 2'b0;
        wen_b21 = 2'b0;
        wen_b22 = 2'b0;
        wen_b23 = 2'b0;
        wen_b24 = 2'b0;
        wen_b25 = 2'b0;
        wen_b26 = 2'b0;
        wen_b27 = 2'b0;
        wen_b28 = 2'b0;
        wen_b29 = 2'b0;
        wen_b30 = 2'b0;
        wen_b31 = 2'b0;
        wen_b32 = 2'b0;
        wen_b33 = 2'b0;
        wen_b34 = 2'b0;
        wen_b35 = 2'b0;
        wen_b36 = 2'b0;
        wen_b37 = 2'b0;
        wen_b38 = 2'b0;
        wen_b39 = 2'b0;
        wen_b40 = 2'b0;
        wen_b41 = 2'b0;
        wen_b42 = 2'b0;
        wen_b43 = 2'b0;
        wen_b44 = 2'b0;
        wen_b45 = 2'b0;
        wen_b46 = 2'b0;
        wen_b47 = 2'b0;
        wen_b48 = 2'b0;
        wen_b49 = 2'b0;
        wen_b50 = 2'b0;
        wen_b51 = 2'b0;
        wen_b52 = 2'b0;
        wen_b53 = 2'b0;
        wen_b54 = 2'b0;
        wen_b55 = 2'b0;
        wen_b56 = 2'b0;
        wen_b57 = 2'b0;
        wen_b58 = 2'b0;
        wen_b59 = 2'b0;
        wen_b60 = 2'b0;
        wen_b61 = 2'b0;
        wen_b62 = 2'b0;
        wen_b63 = 2'b0;
        wen_b64 = 2'b0;
        wen_b65 = 2'b0;
        wen_b66 = 2'b0;
        wen_b67 = 2'b0;
        wen_b68 = 2'b0;

       readData = {AHB_DWIDTH{1'b0}};
       writeData0 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData1 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData2 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData3 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData4 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData5 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData6 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData7 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData8 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData9 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData10 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData11 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData12 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData13 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData14 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData15 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData16 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData17 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData18 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData19 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData20 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData21 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData22 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData23 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData24 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData25 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData26 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData27 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData28 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData29 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData30 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData31 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData32 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData33 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData34 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData35 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData36 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData37 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData38 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData39 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData40 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData41 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData42 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData43 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData44 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData45 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData46 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData47 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData48 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData49 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData50 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData51 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData52 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData53 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData54 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData55 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData56 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData57 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData58 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData59 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData60 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData61 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData62 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData63 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData64 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData64 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData65 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData66 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData67 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
       writeData68 = {1'b0,writeData[31:24],1'b0,writeData[23:16],1'b0,writeData[15:8],1'b0,writeData[7:0]}; 
    
       case (DEPTH)
            // RAM2K-8K
            512, 1024, 1536, 2048: begin
                {wen_a0, wen_b0} = {wen_a, wen_b};
                readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
            end

            // RAM16K
            2560,3072,3584,4096: begin
               case(writeAddr[12:8])
                 5'b00000,5'b00001  : {wen_a0, wen_b0}  = {wen_a, wen_b};
                 5'b00010,5'b00011 :  {wen_a1, wen_b1}  = {wen_a, wen_b};
                 default : begin
                    {wen_a0,wen_b0}  = {4{1'b0}};
                    {wen_a1,wen_b1}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:12])
               
               //case(ckRdAddr[12:8])
               case(readAddr[12:8])
                 5'b00000,5'b00001  :readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]}; 
                 5'b00010,5'b00011 : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};   
                 default : begin
                    readData =  32'h0000_0000;
                 end
               endcase // case (ckRdAddr[13:12])               

            end

            // RAM24K
            4608, 5120, 5632, 6144: begin
               case(writeAddr[12:8])
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 default : begin
                    {wen_a0,wen_b0}  = {4{1'b0}};
                    {wen_a1,wen_b1}  = {4{1'b0}};
                    {wen_a2,wen_b2}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:12])
               
               case(readAddr[12:8])
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:12])

            end

            // RAM7K
            6656, 7168, 7680, 8192: begin
               case(writeAddr[12:8])
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:12])
               
               case(readAddr[12:8])
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:12])
            end

            // RAM10K
            8704, 9216, 9728, 10240: begin
               case(writeAddr[12:8])
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end


            // RAM12K
            10752, 11264, 11776, 12288: begin
               case(writeAddr[12:8])
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end


            // RAM56K
            12800, 13312, 13824, 14336: begin
               case(writeAddr[12:8])
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b};
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end

            // RAM64K
            14848, 15360, 15872, 16384: begin           
               case(writeAddr[12:8])
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b};
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b};
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end

            // RAM72K
            16896, 17408, 17920, 18432: begin
               case(writeAddr[12:8])
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b};
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b};
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b};
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end

            // RAM80K
            18944, 19456, 19968, 20480: begin
               case(writeAddr[12:8])
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b};
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b};
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b};
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b};
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])

            end

            // RAM88K
            20992, 21504, 22016, 22528: begin
               case(writeAddr[12:8])
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b};
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b};
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b};
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b};
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b};
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b};
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b};
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b};
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b};
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b};
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b10100,5'b10101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end
 
            // RAM24K
          23040, 23552, 24064, 24576: begin
               case(writeAddr[12:8])
		 5'b10110,5'b10111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b}; 
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10}  = {4{1'b0}};
                   {wen_a11,wen_b11}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b10110,5'b10111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 5'b10100,5'b10101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end // case: 24576          

          
            // RAM26K
            25088,25600,26112,26624: begin
               case(writeAddr[12:8])
	         5'b11000,5'b11001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 5'b10110,5'b10111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10}  = {4{1'b0}};
                   {wen_a11,wen_b11}  = {4{1'b0}};
                   {wen_a12,wen_b12}  = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b11000,5'b11001  :readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 5'b10110,5'b10111  :readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 5'b10100,5'b10101  :readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  :readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  :readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  :readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  :readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  :readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  :readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  :readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  :readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  :readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  :readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])

            end // case: 26624          

            // RAM28K
            27136,27648,28160,28672: begin
               case(writeAddr[12:8])
		 5'b11010,5'b11011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 5'b11000,5'b11001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 5'b10110,5'b10111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}};
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b11010,5'b11011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 5'b11000,5'b11001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 5'b10110,5'b10111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 5'b10100,5'b10101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end // case: 28672
          

            // RAM30K
            29184,29696,30208,30720: begin
               case(writeAddr[12:8])
		 5'b11100,5'b11101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 5'b11010,5'b11011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 5'b11000,5'b11001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 5'b10110,5'b10111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b11100,5'b11101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 5'b11010,5'b11011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 5'b11000,5'b11001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 5'b10110,5'b10111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 5'b10100,5'b10101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end // case: 30720

            // RAM32K
            31232,31744,32256,32768: begin
               case(writeAddr[12:8])
		 5'b11110,5'b11111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 5'b11100,5'b11101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 5'b11010,5'b11011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 5'b11000,5'b11001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 5'b10110,5'b10111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 5'b10100,5'b10101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 5'b10010,5'b10011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 5'b10000,5'b10001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 5'b01110,5'b01111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 5'b01100,5'b01101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 5'b01010,5'b01011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 5'b01000,5'b01001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 5'b00110,5'b00111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 5'b00100,5'b00101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 5'b00010,5'b00011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 5'b00000,5'b00001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[12:8])
                 5'b11110,5'b11111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 5'b11100,5'b11101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 5'b11010,5'b11011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 5'b11000,5'b11001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 5'b10110,5'b10111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 5'b10100,5'b10101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 5'b10010,5'b10011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 5'b10000,5'b10001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 5'b01110,5'b01111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 5'b01100,5'b01101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 5'b01010,5'b01011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 5'b01000,5'b01001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 5'b00110,5'b00111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 5'b00100,5'b00101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 5'b00010,5'b00011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 5'b00000,5'b00001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end // case: 32768

	    // RAM34K
            33280,33792,34304,34816: begin
               case(writeAddr[13:8])
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end // case: 34816

  
// --------------------------------------------------------------//

      36864: begin
               case(writeAddr[13:8])
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
    
    38912: begin
               case(writeAddr[13:8])
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

    40960: begin
               case(writeAddr[13:8])
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        43008: begin
               case(writeAddr[13:8])
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        45056: begin
               case(writeAddr[13:8])
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

          47104: begin
               case(writeAddr[13:8])
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
 
        49152: begin
               case(writeAddr[13:8])
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
 

        51200: begin
               case(writeAddr[13:8])
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        53248: begin
               case(writeAddr[13:8])
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        55296: begin
               case(writeAddr[13:8])
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        57344: begin
               case(writeAddr[13:8])
		 6'b110110,6'b110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b110110,6'b110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        59392: begin
               case(writeAddr[13:8])
		 6'b111000,6'b111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 6'b110110,6'b110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b111000,6'b111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 6'b110110,6'b110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

            61440: begin
               case(writeAddr[13:8])
		 6'b111010,6'b111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 6'b111000,6'b111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 6'b110110,6'b110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b111010,6'b111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 6'b111000,6'b111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 6'b110110,6'b110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        63488: begin
               case(writeAddr[13:8])
		 6'b111100,6'b111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 6'b111010,6'b111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 6'b111000,6'b111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 6'b110110,6'b110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b111100,6'b111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 6'b111010,6'b111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 6'b111000,6'b111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 6'b110110,6'b110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        65536: begin
               case(writeAddr[13:8])
		 6'b111110,6'b111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 6'b111100,6'b111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 6'b111010,6'b111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 6'b111000,6'b111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 6'b110110,6'b110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 6'b110100,6'b110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 6'b110010,6'b110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 6'b110000,6'b110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 6'b101110,6'b101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 6'b101100,6'b101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 6'b101010,6'b101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 6'b101000,6'b101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 6'b100110,6'b100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 6'b100100,6'b100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 6'b100010,6'b100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 6'b100000,6'b100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 6'b011110,6'b011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 6'b011100,6'b011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 6'b011010,6'b011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 6'b011000,6'b011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 6'b010110,6'b010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 6'b010100,6'b010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 6'b010010,6'b010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 6'b010000,6'b010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 6'b001110,6'b001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 6'b001100,6'b001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 6'b001010,6'b001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 6'b001000,6'b001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 6'b000110,6'b000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 6'b000100,6'b000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 6'b000010,6'b000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 6'b000000,6'b000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[13:8])
                 6'b111110,6'b111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 6'b111100,6'b111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 6'b111010,6'b111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 6'b111000,6'b111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 6'b110110,6'b110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 6'b110100,6'b110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 6'b110010,6'b110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 6'b110000,6'b110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 6'b101110,6'b101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 6'b101100,6'b101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 6'b101010,6'b101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 6'b101000,6'b101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 6'b100110,6'b100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 6'b100100,6'b100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 6'b100010,6'b100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 6'b100000,6'b100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 6'b011110,6'b011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 6'b011100,6'b011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 6'b011010,6'b011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 6'b011000,6'b011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 6'b010110,6'b010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 6'b010100,6'b010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 6'b010010,6'b010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 6'b010000,6'b010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 6'b001110,6'b001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 6'b001100,6'b001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 6'b001010,6'b001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 6'b001000,6'b001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 6'b000110,6'b000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 6'b000100,6'b000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 6'b000010,6'b000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 6'b000000,6'b000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        67584: begin
               case(writeAddr[14:8])
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        69632: begin
               case(writeAddr[14:8])
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        71680: begin
               case(writeAddr[14:8])
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        73728: begin
               case(writeAddr[14:8])
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        75776: begin
               case(writeAddr[14:8])
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
 
        77824: begin
               case(writeAddr[14:8])
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        79872: begin
               case(writeAddr[14:8])
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 


        81920: begin
               case(writeAddr[14:8])
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        83968: begin
               case(writeAddr[14:8])
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

            86016: begin
               case(writeAddr[14:8])
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

            88064: begin
               case(writeAddr[14:8])
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

            90112: begin
               case(writeAddr[14:8])
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

            92160: begin
               case(writeAddr[14:8])
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        94208: begin
               case(writeAddr[14:8])
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        96256: begin
               case(writeAddr[14:8])
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        98304: begin
               case(writeAddr[14:8])
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 


        100352: begin
               case(writeAddr[14:8])
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 


        102400: begin
               case(writeAddr[14:8])
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        104448: begin
               case(writeAddr[14:8])
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

        106496: begin
               case(writeAddr[14:8])
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
        
        108544: begin
               case(writeAddr[14:8])
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 
 
        110592: begin
               case(writeAddr[14:8])
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

 
        112640: begin
               case(writeAddr[14:8])
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

 
        114688: begin
               case(writeAddr[14:8])
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a55,wen_b55} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[13:10])
               
               case(readAddr[14:8])
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[13:10])
            end 

 
        116736: begin
               case(writeAddr[14:8])
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

 
        118784: begin
               case(writeAddr[14:8])
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

        120832: begin
               case(writeAddr[14:8])
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

    
        122880: begin
               case(writeAddr[14:8])
		 7'b1110110,7'b1110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1110110,7'b1110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

 
        124928: begin
               case(writeAddr[14:8])
		 7'b1111000,7'b1111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 7'b1110110,7'b1110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1111000,7'b1111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 7'b1110110,7'b1110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

 
        126976: begin
               case(writeAddr[14:8])
		 7'b1111010,7'b1111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 7'b1111000,7'b1111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 7'b1110110,7'b1110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1111010,7'b1111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 7'b1111000,7'b1111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 7'b1110110,7'b1110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

 
        129024: begin
               case(writeAddr[14:8])
		 7'b1111100,7'b1111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 7'b1111010,7'b1111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 7'b1111000,7'b1111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 7'b1110110,7'b1110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1111100,7'b1111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 7'b1111010,7'b1111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 7'b1111000,7'b1111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 7'b1110110,7'b1110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[14:8])
            end 

 
        131072: begin
               case(writeAddr[14:8])
		 7'b1111110,7'b1111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 7'b1111100,7'b1111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 7'b1111010,7'b1111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 7'b1111000,7'b1111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 7'b1110110,7'b1110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 7'b1110100,7'b1110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 7'b1110010,7'b1110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 7'b1110000,7'b1110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 7'b1101110,7'b1101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 7'b1101100,7'b1101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 7'b1101010,7'b1101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 7'b1101000,7'b1101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 7'b1100110,7'b1100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 7'b1100100,7'b1100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 7'b1100010,7'b1100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 7'b1100000,7'b1100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 7'b1011110,7'b1011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 7'b1011100,7'b1011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 7'b1011010,7'b1011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 7'b1011000,7'b1011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 7'b1010110,7'b1010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 7'b1010100,7'b1010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 7'b1010010,7'b1010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 7'b1010000,7'b1010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 7'b1001110,7'b1001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 7'b1001100,7'b1001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 7'b1001010,7'b1001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 7'b1001000,7'b1001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 7'b1000110,7'b1000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 7'b1000100,7'b1000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 7'b1000010,7'b1000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 7'b1000000,7'b1000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 7'b0111110,7'b0111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 7'b0111100,7'b0111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 7'b0111010,7'b0111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 7'b0111000,7'b0111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 7'b0110110,7'b0110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 7'b0110100,7'b0110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 7'b0110010,7'b0110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 7'b0110000,7'b0110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 7'b0101110,7'b0101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 7'b0101100,7'b0101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 7'b0101010,7'b0101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 7'b0101000,7'b0101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 7'b0100110,7'b0100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 7'b0100100,7'b0100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 7'b0100010,7'b0100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 7'b0100000,7'b0100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 7'b0011110,7'b0011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 7'b0011100,7'b0011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 7'b0011010,7'b0011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 7'b0011000,7'b0011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 7'b0010110,7'b0010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 7'b0010100,7'b0010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 7'b0010010,7'b0010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 7'b0010000,7'b0010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 7'b0001110,7'b0001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 7'b0001100,7'b0001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 7'b0001010,7'b0001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 7'b0001000,7'b0001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 7'b0000110,7'b0000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 7'b0000100,7'b0000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 7'b0000010,7'b0000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 7'b0000000,7'b0000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[14:8])
                 7'b1111110,7'b1111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 7'b1111100,7'b1111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 7'b1111010,7'b1111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 7'b1111000,7'b1111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 7'b1110110,7'b1110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 7'b1110100,7'b1110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 7'b1110010,7'b1110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 7'b1110000,7'b1110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 7'b1101110,7'b1101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 7'b1101100,7'b1101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 7'b1101010,7'b1101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 7'b1101000,7'b1101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 7'b1100110,7'b1100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 7'b1100100,7'b1100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 7'b1100010,7'b1100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 7'b1100000,7'b1100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 7'b1011110,7'b1011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 7'b1011100,7'b1011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 7'b1011010,7'b1011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 7'b1011000,7'b1011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 7'b1010110,7'b1010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 7'b1010100,7'b1010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 7'b1010010,7'b1010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 7'b1010000,7'b1010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 7'b1001110,7'b1001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 7'b1001100,7'b1001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 7'b1001010,7'b1001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 7'b1001000,7'b1001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 7'b1000110,7'b1000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 7'b1000100,7'b1000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 7'b1000010,7'b1000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 7'b1000000,7'b1000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 7'b0111110,7'b0111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 7'b0111100,7'b0111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 7'b0111010,7'b0111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 7'b0111000,7'b0111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 7'b0110110,7'b0110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 7'b0110100,7'b0110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 7'b0110010,7'b0110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 7'b0110000,7'b0110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 7'b0101110,7'b0101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 7'b0101100,7'b0101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 7'b0101010,7'b0101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 7'b0101000,7'b0101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 7'b0100110,7'b0100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 7'b0100100,7'b0100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 7'b0100010,7'b0100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 7'b0100000,7'b0100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 7'b0011110,7'b0011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 7'b0011100,7'b0011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 7'b0011010,7'b0011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 7'b0011000,7'b0011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 7'b0010110,7'b0010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 7'b0010100,7'b0010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 7'b0010010,7'b0010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 7'b0010000,7'b0010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 7'b0001110,7'b0001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 7'b0001100,7'b0001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 7'b0001010,7'b0001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 7'b0001000,7'b0001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 7'b0000110,7'b0000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 7'b0000100,7'b0000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 7'b0000010,7'b0000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 7'b0000000,7'b0000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 

        133120: begin
               case(writeAddr[15:8])
		 8'b10000000,8'b10000001  : { wen_a64,wen_b64 } = {wen_a, wen_b};
		 8'b01111110,8'b01111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 8'b01111100,8'b01111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 8'b01111010,8'b01111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 8'b01111000,8'b01111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 8'b01110110,8'b01110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 8'b01110100,8'b01110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 8'b01110010,8'b01110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 8'b01110000,8'b01110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 8'b01101110,8'b01101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 8'b01101100,8'b01101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 8'b01101010,8'b01101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 8'b01101000,8'b01101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 8'b01100110,8'b01100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 8'b01100100,8'b01100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 8'b01100010,8'b01100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 8'b01100000,8'b01100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 8'b01011110,8'b01011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 8'b01011100,8'b01011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 8'b01011010,8'b01011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 8'b01011000,8'b01011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 8'b01010110,8'b01010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 8'b01010100,8'b01010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 8'b01010010,8'b01010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 8'b01010000,8'b01010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 8'b01001110,8'b01001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 8'b01001100,8'b01001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 8'b01001010,8'b01001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 8'b01001000,8'b01001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 8'b01000110,8'b01000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 8'b01000100,8'b01000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 8'b01000010,8'b01000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 8'b01000000,8'b01000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 8'b00111110,8'b00111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 8'b00111100,8'b00111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 8'b00111010,8'b00111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 8'b00111000,8'b00111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 8'b00110110,8'b00110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 8'b00110100,8'b00110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 8'b00110010,8'b00110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 8'b00110000,8'b00110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 8'b00101110,8'b00101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 8'b00101100,8'b00101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 8'b00101010,8'b00101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 8'b00101000,8'b00101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 8'b00100110,8'b00100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 8'b00100100,8'b00100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 8'b00100010,8'b00100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 8'b00100000,8'b00100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 8'b00011110,8'b00011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 8'b00011100,8'b00011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 8'b00011010,8'b00011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 8'b00011000,8'b00011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 8'b00010110,8'b00010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 8'b00010100,8'b00010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 8'b00010010,8'b00010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 8'b00010000,8'b00010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 8'b00001110,8'b00001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 8'b00001100,8'b00001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 8'b00001010,8'b00001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 8'b00001000,8'b00001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 8'b00000110,8'b00000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 8'b00000100,8'b00000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 8'b00000010,8'b00000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 8'b00000000,8'b00000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                   {wen_a64,wen_b64} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[15:8])
                 8'b10000000,8'b10000001  : readData    = {readData64[34:27],readData64[25:18],readData64[16:9],readData64[7:0]};
                 8'b01111110,8'b01111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 8'b01111100,8'b01111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 8'b01111010,8'b01111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 8'b01111000,8'b01111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 8'b01110110,8'b01110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 8'b01110100,8'b01110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 8'b01110010,8'b01110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 8'b01110000,8'b01110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 8'b01101110,8'b01101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 8'b01101100,8'b01101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 8'b01101010,8'b01101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 8'b01101000,8'b01101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 8'b01100110,8'b01100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 8'b01100100,8'b01100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 8'b01100010,8'b01100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 8'b01100000,8'b01100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 8'b01011110,8'b01011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 8'b01011100,8'b01011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 8'b01011010,8'b01011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 8'b01011000,8'b01011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 8'b01010110,8'b01010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 8'b01010100,8'b01010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 8'b01010010,8'b01010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 8'b01010000,8'b01010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 8'b01001110,8'b01001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 8'b01001100,8'b01001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 8'b01001010,8'b01001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 8'b01001000,8'b01001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 8'b01000110,8'b01000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 8'b01000100,8'b01000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 8'b01000010,8'b01000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 8'b01000000,8'b01000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 8'b00111110,8'b00111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 8'b00111100,8'b00111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 8'b00111010,8'b00111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 8'b00111000,8'b00111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 8'b00110110,8'b00110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 8'b00110100,8'b00110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 8'b00110010,8'b00110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 8'b00110000,8'b00110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 8'b00101110,8'b00101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 8'b00101100,8'b00101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 8'b00101010,8'b00101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 8'b00101000,8'b00101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 8'b00100110,8'b00100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 8'b00100100,8'b00100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 8'b00100010,8'b00100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 8'b00100000,8'b00100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 8'b00011110,8'b00011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 8'b00011100,8'b00011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 8'b00011010,8'b00011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 8'b00011000,8'b00011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 8'b00010110,8'b00010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 8'b00010100,8'b00010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 8'b00010010,8'b00010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 8'b00010000,8'b00010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 8'b00001110,8'b00001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 8'b00001100,8'b00001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 8'b00001010,8'b00001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 8'b00001000,8'b00001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 8'b00000110,8'b00000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 8'b00000100,8'b00000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 8'b00000010,8'b00000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 8'b00000000,8'b00000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 

        135168: begin
               case(writeAddr[15:8])
		 8'b10000010,8'b10000011  : { wen_a65,wen_b65 } = {wen_a, wen_b};
		 8'b10000000,8'b10000001  : { wen_a64,wen_b64 } = {wen_a, wen_b};
		 8'b01111110,8'b01111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 8'b01111100,8'b01111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 8'b01111010,8'b01111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 8'b01111000,8'b01111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 8'b01110110,8'b01110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 8'b01110100,8'b01110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 8'b01110010,8'b01110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 8'b01110000,8'b01110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 8'b01101110,8'b01101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 8'b01101100,8'b01101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 8'b01101010,8'b01101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 8'b01101000,8'b01101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 8'b01100110,8'b01100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 8'b01100100,8'b01100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 8'b01100010,8'b01100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 8'b01100000,8'b01100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 8'b01011110,8'b01011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 8'b01011100,8'b01011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 8'b01011010,8'b01011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 8'b01011000,8'b01011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 8'b01010110,8'b01010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 8'b01010100,8'b01010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 8'b01010010,8'b01010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 8'b01010000,8'b01010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 8'b01001110,8'b01001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 8'b01001100,8'b01001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 8'b01001010,8'b01001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 8'b01001000,8'b01001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 8'b01000110,8'b01000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 8'b01000100,8'b01000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 8'b01000010,8'b01000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 8'b01000000,8'b01000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 8'b00111110,8'b00111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 8'b00111100,8'b00111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 8'b00111010,8'b00111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 8'b00111000,8'b00111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 8'b00110110,8'b00110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 8'b00110100,8'b00110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 8'b00110010,8'b00110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 8'b00110000,8'b00110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 8'b00101110,8'b00101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 8'b00101100,8'b00101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 8'b00101010,8'b00101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 8'b00101000,8'b00101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 8'b00100110,8'b00100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 8'b00100100,8'b00100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 8'b00100010,8'b00100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 8'b00100000,8'b00100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 8'b00011110,8'b00011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 8'b00011100,8'b00011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 8'b00011010,8'b00011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 8'b00011000,8'b00011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 8'b00010110,8'b00010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 8'b00010100,8'b00010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 8'b00010010,8'b00010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 8'b00010000,8'b00010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 8'b00001110,8'b00001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 8'b00001100,8'b00001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 8'b00001010,8'b00001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 8'b00001000,8'b00001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 8'b00000110,8'b00000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 8'b00000100,8'b00000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 8'b00000010,8'b00000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 8'b00000000,8'b00000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                   {wen_a64,wen_b64} = {4{1'b0}}; 
                   {wen_a65,wen_b65} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[15:8])
                 8'b10000010,8'b10000011  : readData    = {readData65[34:27],readData65[25:18],readData65[16:9],readData65[7:0]};
                 8'b10000000,8'b10000001  : readData    = {readData64[34:27],readData64[25:18],readData64[16:9],readData64[7:0]};
                 8'b01111110,8'b01111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 8'b01111100,8'b01111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 8'b01111010,8'b01111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 8'b01111000,8'b01111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 8'b01110110,8'b01110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 8'b01110100,8'b01110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 8'b01110010,8'b01110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 8'b01110000,8'b01110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 8'b01101110,8'b01101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 8'b01101100,8'b01101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 8'b01101010,8'b01101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 8'b01101000,8'b01101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 8'b01100110,8'b01100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 8'b01100100,8'b01100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 8'b01100010,8'b01100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 8'b01100000,8'b01100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 8'b01011110,8'b01011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 8'b01011100,8'b01011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 8'b01011010,8'b01011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 8'b01011000,8'b01011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 8'b01010110,8'b01010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 8'b01010100,8'b01010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 8'b01010010,8'b01010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 8'b01010000,8'b01010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 8'b01001110,8'b01001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 8'b01001100,8'b01001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 8'b01001010,8'b01001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 8'b01001000,8'b01001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 8'b01000110,8'b01000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 8'b01000100,8'b01000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 8'b01000010,8'b01000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 8'b01000000,8'b01000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 8'b00111110,8'b00111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 8'b00111100,8'b00111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 8'b00111010,8'b00111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 8'b00111000,8'b00111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 8'b00110110,8'b00110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 8'b00110100,8'b00110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 8'b00110010,8'b00110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 8'b00110000,8'b00110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 8'b00101110,8'b00101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 8'b00101100,8'b00101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 8'b00101010,8'b00101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 8'b00101000,8'b00101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 8'b00100110,8'b00100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 8'b00100100,8'b00100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 8'b00100010,8'b00100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 8'b00100000,8'b00100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 8'b00011110,8'b00011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 8'b00011100,8'b00011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 8'b00011010,8'b00011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 8'b00011000,8'b00011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 8'b00010110,8'b00010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 8'b00010100,8'b00010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 8'b00010010,8'b00010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 8'b00010000,8'b00010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 8'b00001110,8'b00001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 8'b00001100,8'b00001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 8'b00001010,8'b00001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 8'b00001000,8'b00001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 8'b00000110,8'b00000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 8'b00000100,8'b00000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 8'b00000010,8'b00000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 8'b00000000,8'b00000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 


        137216: begin
               case(writeAddr[15:8])
		 8'b10000100,8'b10000101  : { wen_a66,wen_b66 } = {wen_a, wen_b};
		 8'b10000010,8'b10000011  : { wen_a65,wen_b65 } = {wen_a, wen_b};
		 8'b10000000,8'b10000001  : { wen_a64,wen_b64 } = {wen_a, wen_b};
		 8'b01111110,8'b01111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 8'b01111100,8'b01111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 8'b01111010,8'b01111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 8'b01111000,8'b01111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 8'b01110110,8'b01110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 8'b01110100,8'b01110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 8'b01110010,8'b01110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 8'b01110000,8'b01110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 8'b01101110,8'b01101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 8'b01101100,8'b01101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 8'b01101010,8'b01101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 8'b01101000,8'b01101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 8'b01100110,8'b01100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 8'b01100100,8'b01100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 8'b01100010,8'b01100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 8'b01100000,8'b01100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 8'b01011110,8'b01011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 8'b01011100,8'b01011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 8'b01011010,8'b01011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 8'b01011000,8'b01011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 8'b01010110,8'b01010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 8'b01010100,8'b01010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 8'b01010010,8'b01010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 8'b01010000,8'b01010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 8'b01001110,8'b01001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 8'b01001100,8'b01001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 8'b01001010,8'b01001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 8'b01001000,8'b01001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 8'b01000110,8'b01000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 8'b01000100,8'b01000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 8'b01000010,8'b01000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 8'b01000000,8'b01000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 8'b00111110,8'b00111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 8'b00111100,8'b00111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 8'b00111010,8'b00111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 8'b00111000,8'b00111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 8'b00110110,8'b00110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 8'b00110100,8'b00110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 8'b00110010,8'b00110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 8'b00110000,8'b00110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 8'b00101110,8'b00101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 8'b00101100,8'b00101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 8'b00101010,8'b00101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 8'b00101000,8'b00101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 8'b00100110,8'b00100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 8'b00100100,8'b00100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 8'b00100010,8'b00100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 8'b00100000,8'b00100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 8'b00011110,8'b00011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 8'b00011100,8'b00011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 8'b00011010,8'b00011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 8'b00011000,8'b00011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 8'b00010110,8'b00010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 8'b00010100,8'b00010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 8'b00010010,8'b00010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 8'b00010000,8'b00010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 8'b00001110,8'b00001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 8'b00001100,8'b00001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 8'b00001010,8'b00001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 8'b00001000,8'b00001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 8'b00000110,8'b00000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 8'b00000100,8'b00000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 8'b00000010,8'b00000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 8'b00000000,8'b00000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                   {wen_a64,wen_b64} = {4{1'b0}}; 
                   {wen_a65,wen_b65} = {4{1'b0}}; 
                   {wen_a66,wen_b66} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[15:8])
                 8'b10000100,8'b10000101  : readData    = {readData66[34:27],readData66[25:18],readData66[16:9],readData66[7:0]};
                 8'b10000010,8'b10000011  : readData    = {readData65[34:27],readData65[25:18],readData65[16:9],readData65[7:0]};
                 8'b10000000,8'b10000001  : readData    = {readData64[34:27],readData64[25:18],readData64[16:9],readData64[7:0]};
                 8'b01111110,8'b01111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 8'b01111100,8'b01111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 8'b01111010,8'b01111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 8'b01111000,8'b01111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 8'b01110110,8'b01110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 8'b01110100,8'b01110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 8'b01110010,8'b01110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 8'b01110000,8'b01110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 8'b01101110,8'b01101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 8'b01101100,8'b01101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 8'b01101010,8'b01101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 8'b01101000,8'b01101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 8'b01100110,8'b01100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 8'b01100100,8'b01100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 8'b01100010,8'b01100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 8'b01100000,8'b01100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 8'b01011110,8'b01011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 8'b01011100,8'b01011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 8'b01011010,8'b01011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 8'b01011000,8'b01011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 8'b01010110,8'b01010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 8'b01010100,8'b01010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 8'b01010010,8'b01010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 8'b01010000,8'b01010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 8'b01001110,8'b01001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 8'b01001100,8'b01001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 8'b01001010,8'b01001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 8'b01001000,8'b01001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 8'b01000110,8'b01000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 8'b01000100,8'b01000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 8'b01000010,8'b01000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 8'b01000000,8'b01000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 8'b00111110,8'b00111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 8'b00111100,8'b00111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 8'b00111010,8'b00111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 8'b00111000,8'b00111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 8'b00110110,8'b00110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 8'b00110100,8'b00110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 8'b00110010,8'b00110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 8'b00110000,8'b00110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 8'b00101110,8'b00101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 8'b00101100,8'b00101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 8'b00101010,8'b00101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 8'b00101000,8'b00101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 8'b00100110,8'b00100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 8'b00100100,8'b00100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 8'b00100010,8'b00100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 8'b00100000,8'b00100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 8'b00011110,8'b00011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 8'b00011100,8'b00011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 8'b00011010,8'b00011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 8'b00011000,8'b00011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 8'b00010110,8'b00010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 8'b00010100,8'b00010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 8'b00010010,8'b00010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 8'b00010000,8'b00010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 8'b00001110,8'b00001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 8'b00001100,8'b00001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 8'b00001010,8'b00001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 8'b00001000,8'b00001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 8'b00000110,8'b00000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 8'b00000100,8'b00000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 8'b00000010,8'b00000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 8'b00000000,8'b00000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 


        139264: begin
               case(writeAddr[15:8])
		 8'b10000110,8'b10000111  : { wen_a67,wen_b67 } = {wen_a, wen_b};
		 8'b10000100,8'b10000101  : { wen_a66,wen_b66 } = {wen_a, wen_b};
		 8'b10000010,8'b10000011  : { wen_a65,wen_b65 } = {wen_a, wen_b};
		 8'b10000000,8'b10000001  : { wen_a64,wen_b64 } = {wen_a, wen_b};
		 8'b01111110,8'b01111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 8'b01111100,8'b01111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 8'b01111010,8'b01111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 8'b01111000,8'b01111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 8'b01110110,8'b01110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 8'b01110100,8'b01110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 8'b01110010,8'b01110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 8'b01110000,8'b01110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 8'b01101110,8'b01101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 8'b01101100,8'b01101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 8'b01101010,8'b01101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 8'b01101000,8'b01101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 8'b01100110,8'b01100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 8'b01100100,8'b01100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 8'b01100010,8'b01100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 8'b01100000,8'b01100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 8'b01011110,8'b01011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 8'b01011100,8'b01011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 8'b01011010,8'b01011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 8'b01011000,8'b01011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 8'b01010110,8'b01010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 8'b01010100,8'b01010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 8'b01010010,8'b01010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 8'b01010000,8'b01010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 8'b01001110,8'b01001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 8'b01001100,8'b01001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 8'b01001010,8'b01001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 8'b01001000,8'b01001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 8'b01000110,8'b01000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 8'b01000100,8'b01000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 8'b01000010,8'b01000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 8'b01000000,8'b01000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 8'b00111110,8'b00111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 8'b00111100,8'b00111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 8'b00111010,8'b00111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 8'b00111000,8'b00111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 8'b00110110,8'b00110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 8'b00110100,8'b00110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 8'b00110010,8'b00110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 8'b00110000,8'b00110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 8'b00101110,8'b00101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 8'b00101100,8'b00101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 8'b00101010,8'b00101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 8'b00101000,8'b00101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 8'b00100110,8'b00100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 8'b00100100,8'b00100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 8'b00100010,8'b00100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 8'b00100000,8'b00100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 8'b00011110,8'b00011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 8'b00011100,8'b00011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 8'b00011010,8'b00011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 8'b00011000,8'b00011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 8'b00010110,8'b00010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 8'b00010100,8'b00010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 8'b00010010,8'b00010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 8'b00010000,8'b00010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 8'b00001110,8'b00001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 8'b00001100,8'b00001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 8'b00001010,8'b00001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 8'b00001000,8'b00001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 8'b00000110,8'b00000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 8'b00000100,8'b00000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 8'b00000010,8'b00000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 8'b00000000,8'b00000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                   {wen_a64,wen_b64} = {4{1'b0}}; 
                   {wen_a65,wen_b65} = {4{1'b0}}; 
                   {wen_a66,wen_b66} = {4{1'b0}}; 
                   {wen_a67,wen_b67} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[15:8])
                 8'b10000110,8'b10000111  : readData    = {readData67[34:27],readData67[25:18],readData67[16:9],readData67[7:0]};
                 8'b10000100,8'b10000101  : readData    = {readData66[34:27],readData66[25:18],readData66[16:9],readData66[7:0]};
                 8'b10000010,8'b10000011  : readData    = {readData65[34:27],readData65[25:18],readData65[16:9],readData65[7:0]};
                 8'b10000000,8'b10000001  : readData    = {readData64[34:27],readData64[25:18],readData64[16:9],readData64[7:0]};
                 8'b01111110,8'b01111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 8'b01111100,8'b01111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 8'b01111010,8'b01111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 8'b01111000,8'b01111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 8'b01110110,8'b01110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 8'b01110100,8'b01110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 8'b01110010,8'b01110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 8'b01110000,8'b01110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 8'b01101110,8'b01101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 8'b01101100,8'b01101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 8'b01101010,8'b01101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 8'b01101000,8'b01101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 8'b01100110,8'b01100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 8'b01100100,8'b01100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 8'b01100010,8'b01100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 8'b01100000,8'b01100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 8'b01011110,8'b01011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 8'b01011100,8'b01011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 8'b01011010,8'b01011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 8'b01011000,8'b01011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 8'b01010110,8'b01010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 8'b01010100,8'b01010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 8'b01010010,8'b01010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 8'b01010000,8'b01010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 8'b01001110,8'b01001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 8'b01001100,8'b01001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 8'b01001010,8'b01001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 8'b01001000,8'b01001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 8'b01000110,8'b01000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 8'b01000100,8'b01000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 8'b01000010,8'b01000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 8'b01000000,8'b01000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 8'b00111110,8'b00111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 8'b00111100,8'b00111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 8'b00111010,8'b00111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 8'b00111000,8'b00111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 8'b00110110,8'b00110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 8'b00110100,8'b00110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 8'b00110010,8'b00110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 8'b00110000,8'b00110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 8'b00101110,8'b00101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 8'b00101100,8'b00101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 8'b00101010,8'b00101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 8'b00101000,8'b00101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 8'b00100110,8'b00100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 8'b00100100,8'b00100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 8'b00100010,8'b00100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 8'b00100000,8'b00100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 8'b00011110,8'b00011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 8'b00011100,8'b00011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 8'b00011010,8'b00011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 8'b00011000,8'b00011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 8'b00010110,8'b00010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 8'b00010100,8'b00010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 8'b00010010,8'b00010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 8'b00010000,8'b00010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 8'b00001110,8'b00001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 8'b00001100,8'b00001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 8'b00001010,8'b00001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 8'b00001000,8'b00001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 8'b00000110,8'b00000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 8'b00000100,8'b00000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 8'b00000010,8'b00000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 8'b00000000,8'b00000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 

    
        141312: begin
               case(writeAddr[15:8])
		 8'b10001000,8'b10001001  : { wen_a68,wen_b68 } = {wen_a, wen_b};
		 8'b10000110,8'b10000111  : { wen_a67,wen_b67 } = {wen_a, wen_b};
		 8'b10000100,8'b10000101  : { wen_a66,wen_b66 } = {wen_a, wen_b};
		 8'b10000010,8'b10000011  : { wen_a65,wen_b65 } = {wen_a, wen_b};
		 8'b10000000,8'b10000001  : { wen_a64,wen_b64 } = {wen_a, wen_b};
		 8'b01111110,8'b01111111  : { wen_a63,wen_b63 } = {wen_a, wen_b};
		 8'b01111100,8'b01111101  : { wen_a62,wen_b62 } = {wen_a, wen_b};
		 8'b01111010,8'b01111011  : { wen_a61,wen_b61 } = {wen_a, wen_b};
		 8'b01111000,8'b01111001  : { wen_a60,wen_b60 } = {wen_a, wen_b};
		 8'b01110110,8'b01110111  : { wen_a59,wen_b59 } = {wen_a, wen_b};
		 8'b01110100,8'b01110101  : { wen_a58,wen_b58 } = {wen_a, wen_b};
		 8'b01110010,8'b01110011  : { wen_a57,wen_b57 } = {wen_a, wen_b};
		 8'b01110000,8'b01110001  : { wen_a56,wen_b56 } = {wen_a, wen_b};
		 8'b01101110,8'b01101111  : { wen_a55,wen_b55 } = {wen_a, wen_b};
		 8'b01101100,8'b01101101  : { wen_a54,wen_b54 } = {wen_a, wen_b};
		 8'b01101010,8'b01101011  : { wen_a53,wen_b53 } = {wen_a, wen_b};
		 8'b01101000,8'b01101001  : { wen_a52,wen_b52 } = {wen_a, wen_b};
		 8'b01100110,8'b01100111  : { wen_a51,wen_b51 } = {wen_a, wen_b};
		 8'b01100100,8'b01100101  : { wen_a50,wen_b50 } = {wen_a, wen_b};
		 8'b01100010,8'b01100011  : { wen_a49,wen_b49 } = {wen_a, wen_b};
		 8'b01100000,8'b01100001  : { wen_a48,wen_b48 } = {wen_a, wen_b};
		 8'b01011110,8'b01011111  : { wen_a47,wen_b47 } = {wen_a, wen_b};
		 8'b01011100,8'b01011101  : { wen_a46,wen_b46 } = {wen_a, wen_b};
		 8'b01011010,8'b01011011  : { wen_a45,wen_b45 } = {wen_a, wen_b};
		 8'b01011000,8'b01011001  : { wen_a44,wen_b44 } = {wen_a, wen_b};
		 8'b01010110,8'b01010111  : { wen_a43,wen_b43 } = {wen_a, wen_b};
		 8'b01010100,8'b01010101  : { wen_a42,wen_b42 } = {wen_a, wen_b};
		 8'b01010010,8'b01010011  : { wen_a41,wen_b41 } = {wen_a, wen_b};
		 8'b01010000,8'b01010001  : { wen_a40,wen_b40 } = {wen_a, wen_b};
		 8'b01001110,8'b01001111  : { wen_a39,wen_b39 } = {wen_a, wen_b};
		 8'b01001100,8'b01001101  : { wen_a38,wen_b38 } = {wen_a, wen_b};
		 8'b01001010,8'b01001011  : { wen_a37,wen_b37 } = {wen_a, wen_b};
		 8'b01001000,8'b01001001  : { wen_a36,wen_b36 } = {wen_a, wen_b};
		 8'b01000110,8'b01000111  : { wen_a35,wen_b35 } = {wen_a, wen_b};
		 8'b01000100,8'b01000101  : { wen_a34,wen_b34 } = {wen_a, wen_b};
		 8'b01000010,8'b01000011  : { wen_a33,wen_b33 } = {wen_a, wen_b};
		 8'b01000000,8'b01000001  : { wen_a32,wen_b32 } = {wen_a, wen_b};
		 8'b00111110,8'b00111111  : { wen_a31,wen_b31 } = {wen_a, wen_b};
		 8'b00111100,8'b00111101  : { wen_a30,wen_b30 } = {wen_a, wen_b};
		 8'b00111010,8'b00111011  : { wen_a29,wen_b29 } = {wen_a, wen_b};
		 8'b00111000,8'b00111001  : { wen_a28,wen_b28 } = {wen_a, wen_b};
		 8'b00110110,8'b00110111  : { wen_a27,wen_b27 } = {wen_a, wen_b};
		 8'b00110100,8'b00110101  : { wen_a26,wen_b26 } = {wen_a, wen_b};
		 8'b00110010,8'b00110011  : { wen_a25,wen_b25 } = {wen_a, wen_b};
		 8'b00110000,8'b00110001  : { wen_a24,wen_b24 } = {wen_a, wen_b};
		 8'b00101110,8'b00101111  : { wen_a23,wen_b23 } = {wen_a, wen_b};
		 8'b00101100,8'b00101101  : { wen_a22,wen_b22 } = {wen_a, wen_b};
		 8'b00101010,8'b00101011  : { wen_a21,wen_b21 } = {wen_a, wen_b};
		 8'b00101000,8'b00101001  : { wen_a20,wen_b20 } = {wen_a, wen_b};
		 8'b00100110,8'b00100111  : { wen_a19,wen_b19 } = {wen_a, wen_b};
		 8'b00100100,8'b00100101  : { wen_a18,wen_b18 } = {wen_a, wen_b};
		 8'b00100010,8'b00100011  : { wen_a17,wen_b17 } = {wen_a, wen_b};
		 8'b00100000,8'b00100001  : { wen_a16,wen_b16 } = {wen_a, wen_b};
		 8'b00011110,8'b00011111  : { wen_a15,wen_b15 } = {wen_a, wen_b};
		 8'b00011100,8'b00011101  : { wen_a14,wen_b14 } = {wen_a, wen_b};
		 8'b00011010,8'b00011011  : { wen_a13,wen_b13 } = {wen_a, wen_b};
		 8'b00011000,8'b00011001  : { wen_a12,wen_b12 } = {wen_a, wen_b};
		 8'b00010110,8'b00010111  : { wen_a11,wen_b11 } = {wen_a, wen_b};
		 8'b00010100,8'b00010101  : { wen_a10,wen_b10 } = {wen_a, wen_b};
                 8'b00010010,8'b00010011  : { wen_a9, wen_b9 } = {wen_a, wen_b}; 
                 8'b00010000,8'b00010001  : { wen_a8, wen_b8 } = {wen_a, wen_b}; 
                 8'b00001110,8'b00001111  : { wen_a7, wen_b7 } = {wen_a, wen_b}; 
                 8'b00001100,8'b00001101  : { wen_a6, wen_b6 } = {wen_a, wen_b}; 
                 8'b00001010,8'b00001011  : { wen_a5, wen_b5 } = {wen_a, wen_b}; 
                 8'b00001000,8'b00001001  : { wen_a4, wen_b4 } = {wen_a, wen_b}; 
                 8'b00000110,8'b00000111  : { wen_a3, wen_b3 } = {wen_a, wen_b}; 
                 8'b00000100,8'b00000101  : { wen_a2, wen_b2 } = {wen_a, wen_b}; 
                 8'b00000010,8'b00000011  : { wen_a1, wen_b1 } = {wen_a, wen_b}; 
                 8'b00000000,8'b00000001  : { wen_a0, wen_b0 } = {wen_a, wen_b}; 
                 default : begin
                   {wen_a0,wen_b0}  = {4{1'b0}};
                   {wen_a1,wen_b1}  = {4{1'b0}};
                   {wen_a2,wen_b2}  = {4{1'b0}};
                   {wen_a3,wen_b3}  = {4{1'b0}};
                   {wen_a4,wen_b4}  = {4{1'b0}};
                   {wen_a5,wen_b5}  = {4{1'b0}};
                   {wen_a6,wen_b6}  = {4{1'b0}};
                   {wen_a7,wen_b7}  = {4{1'b0}};
                   {wen_a8,wen_b8}  = {4{1'b0}};
                   {wen_a9,wen_b9}  = {4{1'b0}};
                   {wen_a10,wen_b10} = {4{1'b0}};
                   {wen_a11,wen_b11} = {4{1'b0}};
                   {wen_a12,wen_b12} = {4{1'b0}};
                   {wen_a13,wen_b13} = {4{1'b0}}; 
                   {wen_a14,wen_b14} = {4{1'b0}}; 
                   {wen_a15,wen_b15} = {4{1'b0}}; 
                   {wen_a16,wen_b16} = {4{1'b0}}; 
                   {wen_a17,wen_b17} = {4{1'b0}}; 
                   {wen_a18,wen_b18} = {4{1'b0}}; 
                   {wen_a19,wen_b19} = {4{1'b0}}; 
                   {wen_a20,wen_b20} = {4{1'b0}}; 
                   {wen_a21,wen_b21} = {4{1'b0}}; 
                   {wen_a22,wen_b22} = {4{1'b0}}; 
                   {wen_a23,wen_b23} = {4{1'b0}}; 
                   {wen_a24,wen_b24} = {4{1'b0}}; 
                   {wen_a25,wen_b25} = {4{1'b0}}; 
                   {wen_a26,wen_b26} = {4{1'b0}}; 
                   {wen_a27,wen_b27} = {4{1'b0}}; 
                   {wen_a28,wen_b28} = {4{1'b0}}; 
                   {wen_a29,wen_b29} = {4{1'b0}}; 
                   {wen_a30,wen_b30} = {4{1'b0}}; 
                   {wen_a31,wen_b31} = {4{1'b0}}; 
                   {wen_a32,wen_b32} = {4{1'b0}}; 
                   {wen_a33,wen_b33} = {4{1'b0}}; 
                   {wen_a34,wen_b34} = {4{1'b0}}; 
                   {wen_a35,wen_b35} = {4{1'b0}}; 
                   {wen_a36,wen_b36} = {4{1'b0}}; 
                   {wen_a37,wen_b37} = {4{1'b0}}; 
                   {wen_a38,wen_b38} = {4{1'b0}}; 
                   {wen_a39,wen_b39} = {4{1'b0}}; 
                   {wen_a40,wen_b40} = {4{1'b0}}; 
                   {wen_a41,wen_b41} = {4{1'b0}}; 
                   {wen_a42,wen_b42} = {4{1'b0}}; 
                   {wen_a43,wen_b43} = {4{1'b0}}; 
                   {wen_a44,wen_b44} = {4{1'b0}}; 
                   {wen_a45,wen_b45} = {4{1'b0}}; 
                   {wen_a46,wen_b46} = {4{1'b0}}; 
                   {wen_a47,wen_b47} = {4{1'b0}}; 
                   {wen_a48,wen_b48} = {4{1'b0}}; 
                   {wen_a49,wen_b49} = {4{1'b0}}; 
                   {wen_a50,wen_b50} = {4{1'b0}}; 
                   {wen_a51,wen_b51} = {4{1'b0}}; 
                   {wen_a52,wen_b52} = {4{1'b0}}; 
                   {wen_a53,wen_b53} = {4{1'b0}}; 
                   {wen_a54,wen_b54} = {4{1'b0}}; 
                   {wen_a56,wen_b56} = {4{1'b0}}; 
                   {wen_a57,wen_b57} = {4{1'b0}}; 
                   {wen_a58,wen_b58} = {4{1'b0}}; 
                   {wen_a59,wen_b59} = {4{1'b0}}; 
                   {wen_a60,wen_b60} = {4{1'b0}}; 
                   {wen_a61,wen_b61} = {4{1'b0}}; 
                   {wen_a62,wen_b62} = {4{1'b0}}; 
                   {wen_a63,wen_b63} = {4{1'b0}}; 
                   {wen_a64,wen_b64} = {4{1'b0}}; 
                   {wen_a65,wen_b65} = {4{1'b0}}; 
                   {wen_a66,wen_b66} = {4{1'b0}}; 
                   {wen_a67,wen_b67} = {4{1'b0}}; 
                   {wen_a68,wen_b68} = {4{1'b0}}; 
                 end
               endcase // case (writeAddr[14:8])
               
               case(readAddr[15:8])
                 8'b10001000,8'b10001001  : readData    = {readData68[34:27],readData68[25:18],readData68[16:9],readData68[7:0]};
                 8'b10000110,8'b10000111  : readData    = {readData67[34:27],readData67[25:18],readData67[16:9],readData67[7:0]};
                 8'b10000100,8'b10000101  : readData    = {readData66[34:27],readData66[25:18],readData66[16:9],readData66[7:0]};
                 8'b10000010,8'b10000011  : readData    = {readData65[34:27],readData65[25:18],readData65[16:9],readData65[7:0]};
                 8'b10000000,8'b10000001  : readData    = {readData64[34:27],readData64[25:18],readData64[16:9],readData64[7:0]};
                 8'b01111110,8'b01111111  : readData    = {readData63[34:27],readData63[25:18],readData63[16:9],readData63[7:0]};
                 8'b01111100,8'b01111101  : readData    = {readData62[34:27],readData62[25:18],readData62[16:9],readData62[7:0]};
                 8'b01111010,8'b01111011  : readData    = {readData61[34:27],readData61[25:18],readData61[16:9],readData61[7:0]};
                 8'b01111000,8'b01111001  : readData    = {readData60[34:27],readData60[25:18],readData60[16:9],readData60[7:0]};
                 8'b01110110,8'b01110111  : readData    = {readData59[34:27],readData59[25:18],readData59[16:9],readData59[7:0]};
                 8'b01110100,8'b01110101  : readData    = {readData58[34:27],readData58[25:18],readData58[16:9],readData58[7:0]};
                 8'b01110010,8'b01110011  : readData    = {readData57[34:27],readData57[25:18],readData57[16:9],readData57[7:0]};
                 8'b01110000,8'b01110001  : readData    = {readData56[34:27],readData56[25:18],readData56[16:9],readData56[7:0]};
                 8'b01101110,8'b01101111  : readData    = {readData55[34:27],readData55[25:18],readData55[16:9],readData55[7:0]};
                 8'b01101100,8'b01101101  : readData    = {readData54[34:27],readData54[25:18],readData54[16:9],readData54[7:0]};
                 8'b01101010,8'b01101011  : readData    = {readData53[34:27],readData53[25:18],readData53[16:9],readData53[7:0]};
                 8'b01101000,8'b01101001  : readData    = {readData52[34:27],readData52[25:18],readData52[16:9],readData52[7:0]};
                 8'b01100110,8'b01100111  : readData    = {readData51[34:27],readData51[25:18],readData51[16:9],readData51[7:0]};
                 8'b01100100,8'b01100101  : readData    = {readData50[34:27],readData50[25:18],readData50[16:9],readData50[7:0]};
                 8'b01100010,8'b01100011  : readData    = {readData49[34:27],readData49[25:18],readData49[16:9],readData49[7:0]};
                 8'b01100000,8'b01100001  : readData    = {readData48[34:27],readData48[25:18],readData48[16:9],readData48[7:0]};
                 8'b01011110,8'b01011111  : readData    = {readData47[34:27],readData47[25:18],readData47[16:9],readData47[7:0]};
                 8'b01011100,8'b01011101  : readData    = {readData46[34:27],readData46[25:18],readData46[16:9],readData46[7:0]};
                 8'b01011010,8'b01011011  : readData    = {readData45[34:27],readData45[25:18],readData45[16:9],readData45[7:0]};
                 8'b01011000,8'b01011001  : readData    = {readData44[34:27],readData44[25:18],readData44[16:9],readData44[7:0]};
                 8'b01010110,8'b01010111  : readData    = {readData43[34:27],readData43[25:18],readData43[16:9],readData43[7:0]};
                 8'b01010100,8'b01010101  : readData    = {readData42[34:27],readData42[25:18],readData42[16:9],readData42[7:0]};
                 8'b01010010,8'b01010011  : readData    = {readData41[34:27],readData41[25:18],readData41[16:9],readData41[7:0]};
                 8'b01010000,8'b01010001  : readData    = {readData40[34:27],readData40[25:18],readData40[16:9],readData40[7:0]};
                 8'b01001110,8'b01001111  : readData    = {readData39[34:27],readData39[25:18],readData39[16:9],readData39[7:0]};
                 8'b01001100,8'b01001101  : readData    = {readData38[34:27],readData38[25:18],readData38[16:9],readData38[7:0]};
                 8'b01001010,8'b01001011  : readData    = {readData37[34:27],readData37[25:18],readData37[16:9],readData37[7:0]};
                 8'b01001000,8'b01001001  : readData    = {readData36[34:27],readData36[25:18],readData36[16:9],readData36[7:0]};
                 8'b01000110,8'b01000111  : readData    = {readData35[34:27],readData35[25:18],readData35[16:9],readData35[7:0]};
                 8'b01000100,8'b01000101  : readData    = {readData34[34:27],readData34[25:18],readData34[16:9],readData34[7:0]};
                 8'b01000010,8'b01000011  : readData    = {readData33[34:27],readData33[25:18],readData33[16:9],readData33[7:0]};
                 8'b01000000,8'b01000001  : readData    = {readData32[34:27],readData32[25:18],readData32[16:9],readData32[7:0]};
                 8'b00111110,8'b00111111  : readData    = {readData31[34:27],readData31[25:18],readData31[16:9],readData31[7:0]};
                 8'b00111100,8'b00111101  : readData    = {readData30[34:27],readData30[25:18],readData30[16:9],readData30[7:0]};
                 8'b00111010,8'b00111011  : readData    = {readData29[34:27],readData29[25:18],readData29[16:9],readData29[7:0]};
                 8'b00111000,8'b00111001  : readData    = {readData28[34:27],readData28[25:18],readData28[16:9],readData28[7:0]};
                 8'b00110110,8'b00110111  : readData    = {readData27[34:27],readData27[25:18],readData27[16:9],readData27[7:0]};
                 8'b00110100,8'b00110101  : readData    = {readData26[34:27],readData26[25:18],readData26[16:9],readData26[7:0]};
                 8'b00110010,8'b00110011  : readData    = {readData25[34:27],readData25[25:18],readData25[16:9],readData25[7:0]};
                 8'b00110000,8'b00110001  : readData    = {readData24[34:27],readData24[25:18],readData24[16:9],readData24[7:0]};
                 8'b00101110,8'b00101111  : readData    = {readData23[34:27],readData23[25:18],readData23[16:9],readData23[7:0]};
                 8'b00101100,8'b00101101  : readData    = {readData22[34:27],readData22[25:18],readData22[16:9],readData22[7:0]};
                 8'b00101010,8'b00101011  : readData    = {readData21[34:27],readData21[25:18],readData21[16:9],readData21[7:0]};
                 8'b00101000,8'b00101001  : readData    = {readData20[34:27],readData20[25:18],readData20[16:9],readData20[7:0]};
                 8'b00100110,8'b00100111  : readData    = {readData19[34:27],readData19[25:18],readData19[16:9],readData19[7:0]};
                 8'b00100100,8'b00100101  : readData    = {readData18[34:27],readData18[25:18],readData18[16:9],readData18[7:0]};
                 8'b00100010,8'b00100011  : readData    = {readData17[34:27],readData17[25:18],readData17[16:9],readData17[7:0]};
                 8'b00100000,8'b00100001  : readData    = {readData16[34:27],readData16[25:18],readData16[16:9],readData16[7:0]};
                 8'b00011110,8'b00011111  : readData    = {readData15[34:27],readData15[25:18],readData15[16:9],readData15[7:0]};
                 8'b00011100,8'b00011101  : readData    = {readData14[34:27],readData14[25:18],readData14[16:9],readData14[7:0]};
                 8'b00011010,8'b00011011  : readData    = {readData13[34:27],readData13[25:18],readData13[16:9],readData13[7:0]};
                 8'b00011000,8'b00011001  : readData    = {readData12[34:27],readData12[25:18],readData12[16:9],readData12[7:0]};
                 8'b00010110,8'b00010111  : readData    = {readData11[34:27],readData11[25:18],readData11[16:9],readData11[7:0]};
                 8'b00010100,8'b00010101  : readData    = {readData10[34:27],readData10[25:18],readData10[16:9],readData10[7:0]};
                 8'b00010010,8'b00010011  : readData    = {readData9[34:27],readData9[25:18],readData9[16:9],readData9[7:0]};
                 8'b00010000,8'b00010001  : readData    = {readData8[34:27],readData8[25:18],readData8[16:9],readData8[7:0]};
                 8'b00001110,8'b00001111  : readData    = {readData7[34:27],readData7[25:18],readData7[16:9],readData7[7:0]};
                 8'b00001100,8'b00001101  : readData    = {readData6[34:27],readData6[25:18],readData6[16:9],readData6[7:0]};
                 8'b00001010,8'b00001011  : readData    = {readData5[34:27],readData5[25:18],readData5[16:9],readData5[7:0]};
                 8'b00001000,8'b00001001  : readData    = {readData4[34:27],readData4[25:18],readData4[16:9],readData4[7:0]};
                 8'b00000110,8'b00000111  : readData    = {readData3[34:27],readData3[25:18],readData3[16:9],readData3[7:0]};
                 8'b00000100,8'b00000101  : readData    = {readData2[34:27],readData2[25:18],readData2[16:9],readData2[7:0]};
                 8'b00000010,8'b00000011  : readData    = {readData1[34:27],readData1[25:18],readData1[16:9],readData1[7:0]};
                 8'b00000000,8'b00000001  : readData    = {readData0[34:27],readData0[25:18],readData0[16:9],readData0[7:0]};
                 default : readData =  32'h0000_0000;
               endcase // case (writeAddr[15:8])
            end 



        endcase // case (DEPTH)
    end // always @ (*)
    //----------------------------------------------------------------------------------------
    // RAM1K18 blocks
    //----------------------------------------------------------------------------------------

RAM1K18  block68 (
        .A_DOUT (readData68[17:0]),         .B_DOUT (readData68[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData68[17:0]),         .B_DIN (writeData68[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a68),                   .B_WEN (wen_b68),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_68),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block67 (
        .A_DOUT (readData67[17:0]),         .B_DOUT (readData67[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData67[17:0]),         .B_DIN (writeData67[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a67),                   .B_WEN (wen_b67),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_67),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block66 (
        .A_DOUT (readData66[17:0]),         .B_DOUT (readData66[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData66[17:0]),         .B_DIN (writeData66[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a66),                   .B_WEN (wen_b66),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_66),           
        .SII_LOCK (1'b0)                    
    );

RAM1K18  block65 (
        .A_DOUT (readData65[17:0]),         .B_DOUT (readData65[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData65[17:0]),         .B_DIN (writeData65[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a65),                   .B_WEN (wen_b65),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_65),           
        .SII_LOCK (1'b0)                    
    );

RAM1K18  block64 (
        .A_DOUT (readData64[17:0]),         .B_DOUT (readData64[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData64[17:0]),         .B_DIN (writeData64[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a64),                   .B_WEN (wen_b64),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_64),           
        .SII_LOCK (1'b0)                    
    );

RAM1K18  block63 (
        .A_DOUT (readData63[17:0]),         .B_DOUT (readData63[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData63[17:0]),         .B_DIN (writeData63[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a63),                   .B_WEN (wen_b63),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_63),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block62 (
        .A_DOUT (readData62[17:0]),         .B_DOUT (readData62[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData62[17:0]),         .B_DIN (writeData62[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a62),                   .B_WEN (wen_b62),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_62),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block61 (
        .A_DOUT (readData61[17:0]),         .B_DOUT (readData61[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData61[17:0]),         .B_DIN (writeData61[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a61),                   .B_WEN (wen_b61),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_61),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block60 (
        .A_DOUT (readData60[17:0]),         .B_DOUT (readData60[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData60[17:0]),         .B_DIN (writeData60[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a60),                   .B_WEN (wen_b60),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_60),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block59 (
        .A_DOUT (readData59[17:0]),         .B_DOUT (readData59[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData59[17:0]),         .B_DIN (writeData59[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a59),                   .B_WEN (wen_b59),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_59),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block58 (
        .A_DOUT (readData58[17:0]),         .B_DOUT (readData58[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData58[17:0]),         .B_DIN (writeData58[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a58),                   .B_WEN (wen_b58),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_58),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block57 (
        .A_DOUT (readData57[17:0]),         .B_DOUT (readData57[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData57[17:0]),         .B_DIN (writeData57[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a57),                   .B_WEN (wen_b57),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_57),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block56 (
        .A_DOUT (readData56[17:0]),         .B_DOUT (readData56[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData56[17:0]),         .B_DIN (writeData56[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a56),                   .B_WEN (wen_b56),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_56),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block55 (
        .A_DOUT (readData55[17:0]),         .B_DOUT (readData55[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData55[17:0]),         .B_DIN (writeData55[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a55),                   .B_WEN (wen_b55),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_55),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block54 (
        .A_DOUT (readData54[17:0]),         .B_DOUT (readData54[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData54[17:0]),         .B_DIN (writeData54[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a54),                   .B_WEN (wen_b54),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_54),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block53 (
        .A_DOUT (readData53[17:0]),         .B_DOUT (readData53[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData53[17:0]),         .B_DIN (writeData53[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a53),                   .B_WEN (wen_b53),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_53),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block52 (
        .A_DOUT (readData52[17:0]),         .B_DOUT (readData52[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData52[17:0]),         .B_DIN (writeData52[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a52),                   .B_WEN (wen_b52),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_52),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block51 (
        .A_DOUT (readData51[17:0]),         .B_DOUT (readData51[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData51[17:0]),         .B_DIN (writeData51[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a51),                   .B_WEN (wen_b51),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_51),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block50 (
        .A_DOUT (readData50[17:0]),         .B_DOUT (readData50[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData50[17:0]),         .B_DIN (writeData50[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a50),                   .B_WEN (wen_b50),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_50),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block49 (
        .A_DOUT (readData49[17:0]),         .B_DOUT (readData49[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData49[17:0]),         .B_DIN (writeData49[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a49),                   .B_WEN (wen_b49),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_49),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block48 (
        .A_DOUT (readData48[17:0]),         .B_DOUT (readData48[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData48[17:0]),         .B_DIN (writeData48[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a48),                   .B_WEN (wen_b48),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_48),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block47 (
        .A_DOUT (readData47[17:0]),         .B_DOUT (readData47[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData47[17:0]),         .B_DIN (writeData47[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a47),                   .B_WEN (wen_b47),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_47),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block46 (
        .A_DOUT (readData46[17:0]),         .B_DOUT (readData46[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData46[17:0]),         .B_DIN (writeData46[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a46),                   .B_WEN (wen_b46),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_46),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block45 (
        .A_DOUT (readData45[17:0]),         .B_DOUT (readData45[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData45[17:0]),         .B_DIN (writeData45[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a45),                   .B_WEN (wen_b45),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_45),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block44 (
        .A_DOUT (readData44[17:0]),         .B_DOUT (readData44[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData44[17:0]),         .B_DIN (writeData44[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a44),                   .B_WEN (wen_b44),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_44),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block43 (
        .A_DOUT (readData43[17:0]),         .B_DOUT (readData43[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData43[17:0]),         .B_DIN (writeData43[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a43),                   .B_WEN (wen_b43),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_43),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block42 (
        .A_DOUT (readData42[17:0]),         .B_DOUT (readData42[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData42[17:0]),         .B_DIN (writeData42[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a42),                   .B_WEN (wen_b42),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_42),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block41 (
        .A_DOUT (readData41[17:0]),         .B_DOUT (readData41[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData41[17:0]),         .B_DIN (writeData41[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a41),                   .B_WEN (wen_b41),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_41),           
        .SII_LOCK (1'b0)                    
    );

RAM1K18  block40 (
        .A_DOUT (readData40[17:0]),         .B_DOUT (readData40[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData40[17:0]),         .B_DIN (writeData40[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a40),                   .B_WEN (wen_b40),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_40),           
        .SII_LOCK (1'b0)                    
    );


RAM1K18  block39 (
        .A_DOUT (readData39[17:0]),         .B_DOUT (readData39[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData39[17:0]),         .B_DIN (writeData39[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a39),                   .B_WEN (wen_b39),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_39),           
        .SII_LOCK (1'b0)                    
    );
    

RAM1K18  block38 (
        .A_DOUT (readData38[17:0]),         .B_DOUT (readData38[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData38[17:0]),         .B_DIN (writeData38[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a38),                   .B_WEN (wen_b38),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_38),           
        .SII_LOCK (1'b0)                    
    );

RAM1K18  block37 (
        .A_DOUT (readData37[17:0]),         .B_DOUT (readData37[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData37[17:0]),         .B_DIN (writeData37[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a37),                   .B_WEN (wen_b37),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_37),           
        .SII_LOCK (1'b0)                    
    );      

 RAM1K18  block36 (
        .A_DOUT (readData36[17:0]),         .B_DOUT (readData36[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData36[17:0]),         .B_DIN (writeData36[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a36),                   .B_WEN (wen_b36),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_36),           
        .SII_LOCK (1'b0)                    
    );      
    
    
RAM1K18  block35 (
        .A_DOUT (readData35[17:0]),         .B_DOUT (readData35[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData35[17:0]),         .B_DIN (writeData35[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a35),                   .B_WEN (wen_b35),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_35),           
        .SII_LOCK (1'b0)                    
    );   

RAM1K18  block34 (
        .A_DOUT (readData34[17:0]),         .B_DOUT (readData34[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData34[17:0]),         .B_DIN (writeData34[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a34),                   .B_WEN (wen_b34),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_34),           
        .SII_LOCK (1'b0)                    
    );     

RAM1K18  block33 (
        .A_DOUT (readData33[17:0]),         .B_DOUT (readData33[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData33[17:0]),         .B_DIN (writeData33[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a33),                   .B_WEN (wen_b33),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_33),           
        .SII_LOCK (1'b0)                    
    );       


RAM1K18  block32 (
        .A_DOUT (readData32[17:0]),         .B_DOUT (readData32[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData32[17:0]),         .B_DIN (writeData32[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a32),                   .B_WEN (wen_b32),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_32),           
        .SII_LOCK (1'b0)                    
    );        

RAM1K18  block31 (
        .A_DOUT (readData31[17:0]),         .B_DOUT (readData31[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData31[17:0]),         .B_DIN (writeData31[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a31),                   .B_WEN (wen_b31),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_31),           
        .SII_LOCK (1'b0)                    
    );        


RAM1K18  block30 (
        .A_DOUT (readData30[17:0]),         .B_DOUT (readData30[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData30[17:0]),         .B_DIN (writeData30[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a30),                   .B_WEN (wen_b30),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_30),           
        .SII_LOCK (1'b0)                    
    );        



RAM1K18  block29 (
        .A_DOUT (readData29[17:0]),         .B_DOUT (readData29[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData29[17:0]),         .B_DIN (writeData29[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a29),                   .B_WEN (wen_b29),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_29),           
        .SII_LOCK (1'b0)                    
    );        


RAM1K18  block28 (
        .A_DOUT (readData28[17:0]),         .B_DOUT (readData28[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData28[17:0]),         .B_DIN (writeData28[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a28),                   .B_WEN (wen_b28),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_28),           
        .SII_LOCK (1'b0)                    
    );        


RAM1K18  block27 (
        .A_DOUT (readData27[17:0]),         .B_DOUT (readData27[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData27[17:0]),         .B_DIN (writeData27[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a27),                   .B_WEN (wen_b27),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_27),           
        .SII_LOCK (1'b0)                    
    );        

RAM1K18  block26 (
        .A_DOUT (readData26[17:0]),         .B_DOUT (readData26[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData26[17:0]),         .B_DIN (writeData26[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a26),                   .B_WEN (wen_b26),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_26),           
        .SII_LOCK (1'b0)                    
    );        

RAM1K18  block25 (
        .A_DOUT (readData25[17:0]),         .B_DOUT (readData25[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData25[17:0]),         .B_DIN (writeData25[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a25),                   .B_WEN (wen_b25),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_25),           
        .SII_LOCK (1'b0)                    
    );        
    

RAM1K18  block24 (
        .A_DOUT (readData24[17:0]),         .B_DOUT (readData24[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData24[17:0]),         .B_DIN (writeData24[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a24),                   .B_WEN (wen_b24),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_24),           
        .SII_LOCK (1'b0)                    
    );        


RAM1K18  block23 (
        .A_DOUT (readData23[17:0]),         .B_DOUT (readData23[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData23[17:0]),         .B_DIN (writeData23[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a23),                   .B_WEN (wen_b23),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_23),           
        .SII_LOCK (1'b0)                    
    );           
    

RAM1K18  block22 (
        .A_DOUT (readData22[17:0]),         .B_DOUT (readData22[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData22[17:0]),         .B_DIN (writeData22[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a22),                   .B_WEN (wen_b22),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_22),           
        .SII_LOCK (1'b0)                    
    );        

RAM1K18  block21 (
        .A_DOUT (readData21[17:0]),         .B_DOUT (readData21[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData21[17:0]),         .B_DIN (writeData21[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a21),                   .B_WEN (wen_b21),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_21),           
        .SII_LOCK (1'b0)                    
    );          


RAM1K18  block20 (
        .A_DOUT (readData20[17:0]),         .B_DOUT (readData20[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData20[17:0]),         .B_DIN (writeData20[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a20),                   .B_WEN (wen_b20),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_20),           
        .SII_LOCK (1'b0)                    
    );           

 RAM1K18  block19 (
        .A_DOUT (readData19[17:0]),         .B_DOUT (readData19[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData19[17:0]),         .B_DIN (writeData19[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a19),                   .B_WEN (wen_b19),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_19),           
        .SII_LOCK (1'b0)                    
    );                          


RAM1K18  block18 (
        .A_DOUT (readData18[17:0]),         .B_DOUT (readData18[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData18[17:0]),         .B_DIN (writeData18[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a18),                   .B_WEN (wen_b18),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_18),           
        .SII_LOCK (1'b0)                    
    );                          

 RAM1K18  block17 (
        .A_DOUT (readData17[17:0]),         .B_DOUT (readData17[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData17[17:0]),         .B_DIN (writeData17[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a17),                   .B_WEN (wen_b17),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_17),           
        .SII_LOCK (1'b0)                    
    );                          

     RAM1K18  block16 (
        .A_DOUT (readData16[17:0]),         .B_DOUT (readData16[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData16[17:0]),         .B_DIN (writeData16[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a16),                   .B_WEN (wen_b16),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_16),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block15 (                       
        .A_DOUT (readData15[17:0]),         .B_DOUT (readData15[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData15[17:0]),          .B_DIN (writeData15[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a15),                   .B_WEN (wen_b15),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_15),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block14 (                       
        .A_DOUT (readData14[17:0]),         .B_DOUT (readData14[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData14[17:0]),           .B_DIN (writeData14[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a14),                   .B_WEN (wen_b14),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_14),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block13 (                       
        .A_DOUT (readData13[17:0]),         .B_DOUT (readData13[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData13[17:0]),           .B_DIN (writeData13[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),    .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a13),                   .B_WEN (wen_b13),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_13),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block12 (                       
        .A_DOUT (readData12[17:0]),         .B_DOUT (readData12[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData12[17:0]),           .B_DIN (writeData12[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),    .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a12),                   .B_WEN (wen_b12),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_12),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block11 (                       
        .A_DOUT (readData11[17:0]),         .B_DOUT (readData11[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData11[17:0]),           .B_DIN (writeData11[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a11),                   .B_WEN (wen_b11),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_11),           
        .SII_LOCK (1'b0)                    
    );                                      
                                           
     RAM1K18  block10 (                       
        .A_DOUT (readData10[17:0]),         .B_DOUT (readData10[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData10[17:0]),         .B_DIN (writeData10[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a10),                   .B_WEN (wen_b10),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_10),           
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block9 (                        
        .A_DOUT (readData9[17:0]),          .B_DOUT (readData9[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData9[17:0]),         .B_DIN (writeData9[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a9),                    .B_WEN (wen_b9),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_9),            
        .SII_LOCK (1'b0)                    
    );                                      
                                           
     RAM1K18  block8 (                        
        .A_DOUT (readData8[17:0]),          .B_DOUT (readData8[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData8[17:0]),         .B_DIN (writeData8[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a8),                    .B_WEN (wen_b8),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_8),            
        .SII_LOCK (1'b0)                    
    );                                      
                                            
     RAM1K18  block7 (                        
        .A_DOUT (readData7[17:0]),          .B_DOUT (readData7[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData7[17:0]),          .B_DIN (writeData7[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a7),                    .B_WEN (wen_b7),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_7),            
        .SII_LOCK (1'b0)                    
    );                                      
                                            
   RAM1K18  block6 (                          
        .A_DOUT (readData6[17:0]),          .B_DOUT (readData6[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData6[17:0]),          .B_DIN (writeData6[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a6),                    .B_WEN (wen_b6),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_6),            
        .SII_LOCK (1'b0)                    
    );                                      
                                           
     RAM1K18  block5 (                        
        .A_DOUT (readData5[17:0]),          .B_DOUT (readData5[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData5[17:0]),          .B_DIN (writeData5[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a5),                    .B_WEN (wen_b5),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_5),            
        .SII_LOCK (1'b0)                    
    );                                      
                                          
     RAM1K18  block4 (                        
        .A_DOUT (readData4[17:0]),          .B_DOUT (readData4[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData4[17:0]),         .B_DIN (writeData4[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a4),                    .B_WEN (wen_b4),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_4),            
        .SII_LOCK (1'b0)                    
    );
                                            
     RAM1K18  block3 (                        
        .A_DOUT (readData3[17:0]),          .B_DOUT (readData3[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData3[17:0]),         .B_DIN (writeData3[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),  .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a3),                    .B_WEN (wen_b3),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_3),            
        .SII_LOCK (1'b0)                    
    );                                      
                                       
     RAM1K18  block2 (                        
        .A_DOUT (readData2[17:0]),          .B_DOUT (readData2[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData2[17:0]),          .B_DIN (writeData2[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a2),                    .B_WEN (wen_b2),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_2),            
        .SII_LOCK (1'b0)                    
    );                                      

     RAM1K18  block1 (                        
        .A_DOUT (readData1[17:0]),          .B_DOUT (readData1[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData1[17:0]),         .B_DIN (writeData1[35:18]),
        //.B_DIN ({1'b0,writeData[31:24],1'b0,writeData[23:16]}),   .A_DIN ({1'b0,writeData[15:8],1'b0,writeData[7:0]}), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a1),                    .B_WEN (wen_b1),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        //.A_WIDTH (3'b011),                  .B_WIDTH (3'b011), 
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_1),            
        .SII_LOCK (1'b0)                    
    );                                      

     RAM1K18  block0 (                        
        .A_DOUT (readData0[17:0]),          .B_DOUT (readData0[35:18]),
        .A_CLK (clk),                       .B_CLK (clk), 
        .A_ARST_N (aresetn),                .B_ARST_N (aresetn), 
        .A_BLK ({ren,1'b1,1'b1}),           .B_BLK ({1'b1,1'b1,1'b1}), 
        .A_DIN (writeData0[17:0]),          .B_DIN (writeData0[35:18]), 
        .A_ADDR ({writeAddr[8:0], 5'b0}),   .B_ADDR ({writeAddr[8:0], 5'b0}), 
        .A_WEN (wen_a0),                    .B_WEN (wen_b0),
        .A_DOUT_CLK (1'b1),                 .B_DOUT_CLK (1'b1), 
        .A_DOUT_EN (1'b1),                  .B_DOUT_EN (1'b1), 
        .A_DOUT_ARST_N (1'b1),              .B_DOUT_ARST_N (1'b1), 
        .A_DOUT_SRST_N (1'b1),              .B_DOUT_SRST_N (1'b1), 
        .A_DOUT_LAT (1'b1),                 .B_DOUT_LAT (1'b1),
        .A_WIDTH (3'b101),                  .B_WIDTH (3'b101), 
        .A_WMODE (1'b0),                    .B_WMODE (1'b0),
        .A_EN (1'b1),                       .B_EN (1'b1),
        .BUSY (lsram_2k_BUSY_0),
        .SII_LOCK (1'b0)
    );

assign l_BUSY_all = lsram_2k_BUSY_0 | lsram_2k_BUSY_1 | lsram_2k_BUSY_2 | lsram_2k_BUSY_3 | lsram_2k_BUSY_4 | lsram_2k_BUSY_5 | 
                            lsram_2k_BUSY_6 | lsram_2k_BUSY_7 | lsram_2k_BUSY_8 | lsram_2k_BUSY_9 | lsram_2k_BUSY_10 | lsram_2k_BUSY_11 | 
                           lsram_2k_BUSY_12 | lsram_2k_BUSY_13 | lsram_2k_BUSY_14 | lsram_2k_BUSY_15 | lsram_2k_BUSY_16;


endmodule // lsram_2048to139264x8



