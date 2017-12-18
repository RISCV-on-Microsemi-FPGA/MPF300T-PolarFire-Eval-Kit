// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2013 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:	CoreAHBLite slave stage logic for
//				matrix (4 masters by 16 slaves),
//				instantiates the following modules:
//				COREAHBLITE_SLAVEARBITER
//
//
// SVN Revision Information:
// SVN $Revision: 23120 $
// SVN $Date: 2014-07-17 19:56:23 +0530 (Thu, 17 Jul 2014) $
//
//
// *********************************************************************/
`timescale 1ns/1ps
module COREAHBLITE_SLAVESTAGE #( parameter SYNC_RESET = 0)
(
input						HCLK,
input						HRESETN,
input						HREADYOUT,
input						HRESP,
output	reg					HSEL,
output	reg		[31:0]		HADDR,
output	reg		[2:0]		HSIZE,
output	wire				HTRANS,
output	reg					HWRITE,
output	reg		[31:0]		HWDATA,
output	wire				HREADY_S,
output	reg					HMASTLOCK,
input			[3:0]		MADDRSEL,				
input			[3:0]		MDATASEL,				
input			[3:0]		MPREVDATASLAVEREADY,	
output	reg		[3:0]		MADDRREADY,				
output	reg		[3:0]		MDATAREADY,				
output	reg		[3:0]		MHRESP,					
input			[31:0]		M0GATEDHADDR,			
input						M0GATEDHMASTLOCK,		
input			[2:0]		M0GATEDHSIZE,			
input						M0GATEDHTRANS,			
input						M0GATEDHWRITE,			
input			[31:0]		M1GATEDHADDR,			
input						M1GATEDHMASTLOCK,		
input			[2:0]		M1GATEDHSIZE,			
input						M1GATEDHTRANS,			
input						M1GATEDHWRITE,			
input			[31:0]		M2GATEDHADDR,			
input						M2GATEDHMASTLOCK,		
input			[2:0]		M2GATEDHSIZE,			
input						M2GATEDHTRANS,			
input						M2GATEDHWRITE,			
input			[31:0]		M3GATEDHADDR,			
input						M3GATEDHMASTLOCK,		
input			[2:0]		M3GATEDHSIZE,			
input						M3GATEDHTRANS,			
input						M3GATEDHWRITE,			
input			[31:0]		HWDATA_M0,				
input			[31:0]		HWDATA_M1,				
input			[31:0]		HWDATA_M2,				
input			[31:0]		HWDATA_M3				
);
localparam TRN_IDLE			= 1'b0;		
localparam MASTER_NONE		= 4'b0000;
wire			[3:0]		masterAddrInProg;
reg				[3:0]		masterDataInProg;
reg							addrPhMasterHREADY;
wire						addrPhMasterDataPhComplete;
reg							preHTRANS;
wire aresetn;
wire sresetn; 
assign aresetn = (SYNC_RESET==1) ? 1'b1 : HRESETN;
assign sresetn = (SYNC_RESET==1) ? HRESETN : 1'b1;

    always @ ( posedge HCLK or negedge aresetn )
    begin
        if (( !aresetn ) || ( !sresetn ))
            masterDataInProg  <= MASTER_NONE;
        else
            if ( HREADY_S )
                masterDataInProg  <= masterAddrInProg;
    end
    COREAHBLITE_SLAVEARBITER #(.SYNC_RESET(SYNC_RESET)) slave_arbiter
    (
        .HCLK(HCLK),
        .HRESETN(HRESETN),
        .MADDRSEL(MADDRSEL),
        .ADDRPHEND(HREADY_S),
        .M0GATEDHMASTLOCK(M0GATEDHMASTLOCK),
        .M1GATEDHMASTLOCK(M1GATEDHMASTLOCK),
        .M2GATEDHMASTLOCK(M2GATEDHMASTLOCK),
        .M3GATEDHMASTLOCK(M3GATEDHMASTLOCK),
        .MASTERADDRINPROG(masterAddrInProg)
    );
    always @ ( * )
    begin
        casez ( masterAddrInProg )
            4'b???1:
            begin
                HSEL = 1'b1;
                preHTRANS = M0GATEDHTRANS;
                HSIZE = M0GATEDHSIZE;
                HWRITE = M0GATEDHWRITE;
                HADDR = M0GATEDHADDR;
                HMASTLOCK = M0GATEDHMASTLOCK;
                addrPhMasterHREADY = MPREVDATASLAVEREADY[0];
            end
            4'b??1?:
            begin
                HSEL = 1'b1;
                preHTRANS = M1GATEDHTRANS;
                HSIZE = M1GATEDHSIZE;
                HWRITE = M1GATEDHWRITE;
                HADDR = M1GATEDHADDR;
                HMASTLOCK = M1GATEDHMASTLOCK;
                addrPhMasterHREADY = MPREVDATASLAVEREADY[1];
            end
            4'b?1??:
            begin
                HSEL = 1'b1;
                preHTRANS = M2GATEDHTRANS;
                HSIZE = M2GATEDHSIZE;
                HWRITE = M2GATEDHWRITE;
                HADDR = M2GATEDHADDR;
                HMASTLOCK = M2GATEDHMASTLOCK;
                addrPhMasterHREADY = MPREVDATASLAVEREADY[2];
            end
            4'b1???:
            begin
                HSEL = 1'b1;
                preHTRANS = M3GATEDHTRANS;
                HSIZE = M3GATEDHSIZE;
                HWRITE = M3GATEDHWRITE;
                HADDR = M3GATEDHADDR;
                HMASTLOCK = M3GATEDHMASTLOCK;
                addrPhMasterHREADY = MPREVDATASLAVEREADY[3];
            end
            default:
            begin
                HSEL = 1'b0;
                preHTRANS = TRN_IDLE;
                HSIZE = 2'b00;
                HWRITE = 1'b0;
                HADDR = 32'h0;
                HMASTLOCK = 1'b0;
                addrPhMasterHREADY = 1'b1;
            end
        endcase
    end
    assign addrPhMasterDataPhComplete = |(masterAddrInProg & MDATASEL);
    assign HTRANS = preHTRANS && (addrPhMasterHREADY || addrPhMasterDataPhComplete);
    assign HREADY_S = HREADYOUT;
    always @ ( * )
    begin
        casez ( masterDataInProg )
            4'b???1:
            begin
                HWDATA = HWDATA_M0;
            end
            4'b??1?:
            begin
                HWDATA = HWDATA_M1;
            end
            4'b?1??:
            begin
                HWDATA = HWDATA_M2;
            end
            4'b1???:
            begin
                HWDATA = HWDATA_M3;
            end
            default:
            begin
                HWDATA = 32'h0;
            end
        endcase
    end
    always @ ( * )
    begin
        MHRESP = 2'b00;
        casez ( masterDataInProg )
            4'b???1:
            begin
                MHRESP[0] = HRESP;
            end
            4'b??1?:
            begin
                MHRESP[1] = HRESP;
            end
            4'b?1??:
            begin
                MHRESP[2] = HRESP;
            end
            4'b1???:
            begin
                MHRESP[3] = HRESP;
            end
            default:
            begin
                MHRESP = 2'b00;
            end
        endcase
    end
    always @ ( * )
    begin
        if ( MADDRSEL[0] && !masterAddrInProg[0] )
            MADDRREADY[0] = 1'b0;
        else
        if ( MADDRSEL[0] && masterAddrInProg[0] )
            MADDRREADY[0] = HREADYOUT;
        else
            MADDRREADY[0] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MADDRSEL[1] && !masterAddrInProg[1] )
            MADDRREADY[1] = 1'b0;
        else
        if ( MADDRSEL[1] && masterAddrInProg[1] )
            MADDRREADY[1] = HREADYOUT;
        else
            MADDRREADY[1] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MADDRSEL[2] && !masterAddrInProg[2] )
            MADDRREADY[2] = 1'b0;
        else
        if ( MADDRSEL[2] && masterAddrInProg[2] )
            MADDRREADY[2] = HREADYOUT;
        else
            MADDRREADY[2] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MADDRSEL[3] && !masterAddrInProg[3] )
            MADDRREADY[3] = 1'b0;
        else
        if ( MADDRSEL[3] && masterAddrInProg[3] )
            MADDRREADY[3] = HREADYOUT;
        else
            MADDRREADY[3] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MDATASEL[0] && !masterDataInProg[0] )
            MDATAREADY[0] = 1'b0;
        else
        if ( MDATASEL[0] && masterDataInProg[0] )
            MDATAREADY[0] = HREADYOUT;
        else
            MDATAREADY[0] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MDATASEL[1] && !masterDataInProg[1] )
            MDATAREADY[1] = 1'b0;
        else
        if ( MDATASEL[1] && masterDataInProg[1] )
            MDATAREADY[1] = HREADYOUT;
        else
            MDATAREADY[1] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MDATASEL[2] && !masterDataInProg[2] )
            MDATAREADY[2] = 1'b0;
        else
        if ( MDATASEL[2] && masterDataInProg[2] )
            MDATAREADY[2] = HREADYOUT;
        else
            MDATAREADY[2] = 1'b1;
    end
    always @ ( * )
    begin
        if ( MDATASEL[3] && !masterDataInProg[3] )
            MDATAREADY[3] = 1'b0;
        else
        if ( MDATASEL[3] && masterDataInProg[3] )
            MDATAREADY[3] = HREADYOUT;
        else
            MDATAREADY[3] = 1'b1;
    end
endmodule 
