// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2009 Actel Corporation. All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: This module is part of the AHB to APB
//              Bridge and performs the following tasks:
//                  - Latches AHB address and data
//
// Revision Information:
// Date     Description
// 26Oct09  Initial version.
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date:  $
//
// Resolved SARs:
//
// Notes:
//
// *********************************************************************/

module CoreAHBtoAPB3_ApbAddrData (
    input   wire            HCLK,
    input   wire            HRESETN,
    input   wire            latchAddr,
    input   wire            latchWrData,
    input   wire            latchRdData,
    input   wire            latchNextAddr,
    input   wire            selNextAddr,
    input   wire    [31:0]  HADDR,
    input   wire    [31:0]  HWDATA,
    output  reg     [31:0]  HRDATA,
    output  reg     [31:0]  PADDR,
    output  reg     [31:0]  PWDATA,
    input   wire    [31:0]  PRDATA
    );
    parameter SYNC_RESET = 0;

    //-----------------------------------------------------------------
    // Constant declarartions
    //-----------------------------------------------------------------

    //-----------------------------------------------------------------
    // Signals
    //-----------------------------------------------------------------
    reg     [31:0]  haddrReg;
    reg     [31:0]  nextHaddrReg;
    reg     [31:0]  hwdataReg;

    wire aresetn;
    wire sresetn; 
    //-----------------------------------------------------------------
    // Signal assignments
    //-----------------------------------------------------------------
    assign aresetn = (SYNC_RESET==1) ? 1'b1 : HRESETN;
    assign sresetn = (SYNC_RESET==1) ? HRESETN : 1'b1;

    //-----------------------------------------------------------------
    // Main body of code
    //-----------------------------------------------------------------

    // HADDR register
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            haddrReg <= 32'b0;
        end
        else
        begin
            if (latchAddr)
            begin
                haddrReg <= HADDR[31:0];
            end
            else
            begin
                if (selNextAddr)
                begin
                    haddrReg <= nextHaddrReg[31:0];
                end
            end
        end
    end

    // Drive PADDR output
    always @(*)
    begin
        PADDR = haddrReg[31:0];
    end

    // Latch HADDR of pending transaction
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            nextHaddrReg <= 32'b0;
        end
        else
        begin
            if (latchNextAddr)
            begin
                nextHaddrReg <= HADDR[31:0];
            end
        end
    end

    // Latch HWDATA
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            hwdataReg <= 32'b0;
        end
        else
        begin
            if (latchWrData)
            begin
                hwdataReg[31:0] <= HWDATA[31:0];
            end
        end
    end

    // Drive PWDATA output
    always @(*)
    begin
        PWDATA[31:0] = hwdataReg[31:0];
    end

    // Latch read data back from APB slave to drive HRDATA
    // output
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            HRDATA[31:0] <= 32'b0;
        end
        else
        begin
            if (latchRdData)
            begin
                HRDATA[31:0] <= PRDATA[31:0];
            end
        end
    end

endmodule
