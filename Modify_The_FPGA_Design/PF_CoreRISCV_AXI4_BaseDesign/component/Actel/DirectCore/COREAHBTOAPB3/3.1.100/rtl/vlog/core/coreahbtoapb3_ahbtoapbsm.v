// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2009 Actel Corporation. All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: State machine for AHB to APB bridge.
//
// Revision Information:
// Date     Description
// 26Oct09  Initial version.
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs:
// SAR      Date    Who Description
//
// Notes:
//
// *********************************************************************/

module CoreAHBtoAPB3_AhbToApbSM (
    input   wire            HCLK,
    input   wire            HRESETN,
    input   wire            HSEL,
    input   wire            HTRANS1,
    input   wire            HWRITE,
    input   wire            HREADY,
    output  reg   [1:0]     HRESP,
    output  reg             HREADYOUT,
    input   wire            PREADY,
    input   wire            PSLVERR,
    input   wire            PENABLE,
    output  reg             PWRITE,
    output  reg             PSEL,
    output  reg             latchAddr,
    output  reg             latchWrData,
    output  reg             latchRdData,
    output  reg             latchNextAddr,
    output  reg             selNextAddr,
    output  reg             setPenable,
    output  reg             clrPenable
    );
    parameter SYNC_RESET = 0;
    //-----------------------------------------------------------------
    // Local parameters
    //-----------------------------------------------------------------

    //-----------------------------------------------------------------
    // Constant declarartions
    //-----------------------------------------------------------------

    // AHB HRESP constant definitions
    localparam RSP_OKAY  = 2'b00;
    localparam RSP_ERROR = 2'b01;

    // State names
    localparam IDLE    = 3'b000;
    localparam WRITE0  = 3'b001;
    localparam WRITE1  = 3'b010;
    localparam READ0   = 3'b011;
    localparam WAIT    = 3'b100;

    //-----------------------------------------------------------------
    // Signals
    //-----------------------------------------------------------------
    reg      [2:0]  ahbToApbSMState,    nextAhbToApbSMState;
    reg             latchNextWrite;
    reg             nextWrite;
    reg             pending;
    reg             setPending;
    reg             clrPending;
    reg             d_psel;
    reg             d_PWRITE;
    reg             d_HREADYOUT;
    reg             errorRespState;
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
        latchAddr = 1'b0;
        latchWrData = 1'b0;
        latchRdData = 1'b0;
        latchNextAddr = 1'b0;
        latchNextWrite = 1'b0;
        selNextAddr = 1'b0;
        setPending = 1'b0;
        clrPending = 1'b0;
        setPenable = 1'b0;
        clrPenable = 1'b0;
        d_psel = 1'b0;
        d_PWRITE = 1'b0;
        d_HREADYOUT = 1'b1;

        case (ahbToApbSMState)
            IDLE:
            begin
                if (HSEL && HREADY && HTRANS1)
                begin
                    latchAddr = 1'b1;
                    if (HWRITE)
                    begin
                      nextAhbToApbSMState = WRITE0;
                    end
                    else
                    begin
                        setPenable = 1'b1;
                        d_psel = 1'b1;
                        d_HREADYOUT = 1'b0;
                        nextAhbToApbSMState = READ0;
                    end
                end
                else
                begin
                    nextAhbToApbSMState = IDLE;
                end
            end
            WRITE0:
            begin
                // If another valid transfer occurs while processing a posted write,
                // latch new HWRITE and set HREADYOUT low in following cycle.
                if (HSEL && HREADY && HTRANS1)
                begin
                        d_HREADYOUT = 1'b0;
                        latchNextAddr = 1'b1;
                        latchNextWrite = 1'b1;
                        setPending = 1'b1;
                end
                latchWrData = 1'b1;
                setPenable = 1'b1;
                d_psel = 1'b1;
                d_PWRITE = 1'b1;
                nextAhbToApbSMState = WRITE1;
            end
            WRITE1:
            begin
                if (PENABLE && PREADY)
                begin
                    clrPenable = 1'b1;
                    // If another valid transfer occurs during last cycle of posted write,
                    // go on to next read/write based on HWRITE
                    if (HSEL && HREADY && HTRANS1)
                    begin
                        latchAddr = 1'b1;
                        if (HWRITE)
                        begin
                          nextAhbToApbSMState = WRITE0;
                        end
                        else
                        begin
                            d_HREADYOUT = 1'b0;
                            // WAIT state allows a cycle between posted write and
                            // immediately following read. This allows PENABLE
                            // output to be deasserted between the write and read.
                            nextAhbToApbSMState = WAIT;
                        end
                    end
                    else
                    begin
                        if (pending)
                        begin
                            selNextAddr = 1'b1;
                            clrPending = 1'b1;
                            if (nextWrite)
                            begin
                                nextAhbToApbSMState = WRITE0;
                            end
                            else
                            begin
                                d_HREADYOUT = 1'b0;
                                // WAIT state allows a cycle between posted write and
                                // immediately following read. This allows PENABLE
                                // output to be deasserted between the write and read.
                                nextAhbToApbSMState = WAIT;
                            end
                        end
                        else
                        begin
                            nextAhbToApbSMState = IDLE;
                        end
                    end
                end
                else
                begin
                    d_psel = 1'b1;
                    d_PWRITE = 1'b1;
                    if (pending)
                    begin
                        d_HREADYOUT = 1'b0;
                        nextAhbToApbSMState = WRITE1;
                    end
                    else
                    begin
                        // If another valid transfer occurs while processing a posted write,
                        // latch new HWRITE and set HREADYOUT low in following cycle.
                        if (HSEL && HREADY && HTRANS1)
                        begin
                                latchNextAddr = 1'b1;
                                latchNextWrite = 1'b1;
                                setPending = 1'b1;
                                d_HREADYOUT = 1'b0;
                                nextAhbToApbSMState = WRITE1;
                        end
                        else
                        begin
                            nextAhbToApbSMState = WRITE1;
                        end
                    end
                end
            end
            //
            // SM remains in READ0 state until latchRdData control signal
            // can be asserted. This is indicated by PENABLE and PREADY
            // both being asserted. The read data can be safely registered
            // at this time because the APB peripherals and busses have
            // been synthesized to operate at the HCLK frequency. This
            // means that no path is longer than the period of HCLK.
            //
            //
            READ0:
            begin
                if (PENABLE && PREADY)
                begin
                    latchRdData = 1'b1;
                    clrPenable = 1'b1;
                    nextAhbToApbSMState = IDLE;
                end
                else
                begin
                    d_psel = 1'b1;
                    d_HREADYOUT = 1'b0;
                    nextAhbToApbSMState = READ0;
                end
            end
            WAIT:
            begin
                setPenable = 1'b1;
                d_psel = 1'b1;
                d_HREADYOUT = 1'b0;
                nextAhbToApbSMState = READ0;
            end
            default:
            begin
                nextAhbToApbSMState = IDLE;
            end
        endcase
    end

    // Synchronous part of state machine
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            ahbToApbSMState <= IDLE;
            PSEL <= 1'b0;
            PWRITE <= 1'b0;
        end
        else
        begin
            ahbToApbSMState <= nextAhbToApbSMState;
            PSEL <= d_psel;
            PWRITE <= d_PWRITE;
        end
    end

    // pending flag
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            pending <= 1'b0;
        end
        else
        begin
            if (setPending)
            begin
                pending <= 1'b1;
            end
            else
            begin
                if (clrPending)
                begin
                    pending <= 1'b0;
                end
            end
        end
    end

    // Register to hold value of HWRITE for a pending transfer
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            nextWrite <= 1'b0;
        end
        else
        begin
            if (latchNextWrite)
            begin
                nextWrite <= HWRITE;
            end
        end
    end

    // HRESP handler
    // Takes care of providing a two cycle error response if necessary
    always @(posedge HCLK or negedge aresetn)
    begin
        if ((!aresetn) || (!sresetn))
        begin
            errorRespState <= 1'b0;
            HRESP <= RSP_OKAY;
            HREADYOUT <= 1'b1;
        end
        else
        begin
            case (errorRespState)
                1'b0:
                begin
                    if (PSLVERR)
                    begin
                        errorRespState <= 1'b1;
                        HRESP <= RSP_ERROR;
                        HREADYOUT <= 1'b0;
                    end
                    else
                    begin
                        errorRespState <= 1'b0;
                        HRESP <= RSP_OKAY;
                        HREADYOUT <= d_HREADYOUT;
                    end
                end
                1'b1:
                begin
                    errorRespState <= 1'b0;
                    HRESP <= RSP_ERROR;
                    HREADYOUT <= 1'b1;
                end
                default:
                begin
                    errorRespState <= 1'b0;
                end
            endcase
        end
    end

endmodule
