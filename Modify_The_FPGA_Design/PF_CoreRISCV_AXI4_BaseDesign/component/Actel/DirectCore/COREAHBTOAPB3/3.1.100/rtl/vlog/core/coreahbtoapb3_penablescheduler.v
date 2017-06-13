// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2009 Actel Corporation. All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: Takes care of asserting and deasserting PENABLE signal
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
// SAR      Date    Who Description
//
// Notes:
//
// *********************************************************************/

module CoreAHBtoAPB3_PenableScheduler (
    input   wire            HCLK,
    input   wire            HRESETN,
    input   wire            setPenable,
    input   wire            clrPenable,
    output  reg             PENABLE
    );
    parameter SYNC_RESET = 0;

    //-----------------------------------------------------------------
    // Local parameters
    //-----------------------------------------------------------------

    //-----------------------------------------------------------------
    // Constant declarartions
    //-----------------------------------------------------------------

    // State names
    localparam IDLE    = 2'b00;
    localparam WAIT   = 2'b01;
    localparam WAITCLR = 2'b10;

    //-----------------------------------------------------------------
    // Signals
    //-----------------------------------------------------------------
    reg      [1:0]  penableSchedulerState,  nextPenableSchedulerState;
    reg             d_PENABLE;
	
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

    // Asynchronous part of state machine
    always @(*)
    begin
        d_PENABLE = 1'b0;
        case (penableSchedulerState)
            IDLE:
            begin
                if (setPenable)
                begin
                  nextPenableSchedulerState <= WAIT;
                end
                else
                begin
                  nextPenableSchedulerState <= IDLE;
                end
            end

            WAIT:
            begin
              d_PENABLE = 1'b1;
              nextPenableSchedulerState <= WAITCLR;
            end

            WAITCLR:
            begin
                if (clrPenable)
                begin
                  nextPenableSchedulerState <= IDLE;
                end
                else
                begin
                  d_PENABLE = 1'b1;
                  nextPenableSchedulerState <= WAITCLR;
                end
            end

            default:
            begin
              d_PENABLE = 1'b0;
              nextPenableSchedulerState <= IDLE;
            end
        endcase
    end

    // Synchronous part of state machine
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            penableSchedulerState <= IDLE;
            PENABLE <= 1'b0;
        end
        else
        begin
            penableSchedulerState <= nextPenableSchedulerState;
            PENABLE <= d_PENABLE;
        end
    end

endmodule
