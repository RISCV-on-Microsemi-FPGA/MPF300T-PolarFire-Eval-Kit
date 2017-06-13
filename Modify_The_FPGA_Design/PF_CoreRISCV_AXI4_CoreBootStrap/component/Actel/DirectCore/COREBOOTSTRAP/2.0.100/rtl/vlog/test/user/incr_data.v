// ********************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2016 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// SVN Revision Information:
// SVN $Revision: 27882 $
// SVN $Date: 2016-11-18 01:18:12 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:
//                Test that will set up an array of incrementing data bytes.
//                On startup, an external SPI_controller will write this 
//                data into the SPI_chip.
//                
//                Afterwards, the CoreBootStrap module will then read out 
//                this data and write it using AHB write operations.
//                
//                The output data from the CoreBootStrap is then compared 
//                against the expected data.
//
//
// *********************************************************************/

defparam SPI_SRC_ADDR = 100; // Address of where to start reading bootcode from, on the SPI_chip.

integer i; //used in for loop

reg [7:0] test_data [0:((DATA_WORD_CNT*4)-1)];
reg [7:0] result_data [0:((DATA_WORD_CNT*4)-1)];
wire [7:0] input_data;
reg [8:0] id_byte_no;	//input data byte number
reg [31:0] cnt;
reg [31:0] PREV_HADDR; //used to check when new data arrives
reg check_data;

wire new_data_req_host;
reg start_spi_host;
reg test_passed;

initial
begin  
	id_byte_no = 0;
	cnt = 0;
	test_passed = 0;
	//set up random data
	for(i = 0; i < DATA_WORD_CNT*4; i = i+1)
	begin
		// test_data[i] = $random;
		test_data[i] = i;    // Uncomment if you wish to send incrementing bytes of data.
	end
	
	//CHECK IF ALL DATA MATCHES
	wait(check_data);
	for(i = 0; i < (DATA_WORD_CNT*4); i = i+1)
	begin
    // $display("%0d : Sent %d, but received %d", i, test_data[i], result_data[i] );
		if (test_data[i] !== result_data[i])
		begin
			$display("FAIL: on cnt %d, data does not match", i );
			$display("Sent %h, but received %h", test_data[i], result_data[i] );
			$display("Sent %h, but received %h", test_data[i+1], result_data[i+1] );
			$display("Sent %h, but received %h", test_data[i+2], result_data[i+2] );
			$display("Sent %h, but received %h", test_data[i+3], result_data[i+3] );
			$finish;
		end		
	end
	$display("PASS: ALL data matching");
	test_passed = 1'b1;
	
end

//Send out new data to SPI Host when it needs it
always @(posedge HCLK)
begin
	if(new_data_req_host)
	begin // Advance input_data to point to incremented entry in test_data (if we haven't reached the end of our bytes to send).
    if(id_byte_no < ((DATA_WORD_CNT*4)-1)) id_byte_no <= id_byte_no + 1;
    else id_byte_no <= id_byte_no;
	end
end
assign input_data = test_data[id_byte_no];

always @(posedge HCLK) // AHB monitor
begin
	PREV_HADDR <= HADDR;
	check_data <= 0;	

	//store all received data in array(ram)
	if(HADDR != PREV_HADDR)
	begin
		cnt <= cnt + 1;
		
		if(BIG_ENDIAN_EN)
		begin
			result_data[(cnt*4)+3] <= HWDATA[7:0];
			result_data[(cnt*4)+2] <= HWDATA[15:8];
			result_data[(cnt*4)+1] <= HWDATA[23:16];
			result_data[(cnt*4)] <= HWDATA[31:24];
		end
		else
		begin		
			result_data[(cnt*4)] <= HWDATA[7:0];
			result_data[(cnt*4)+1] <= HWDATA[15:8];
			result_data[(cnt*4)+2] <= HWDATA[23:16];
			result_data[(cnt*4)+3] <= HWDATA[31:24];
		end
	end
	
	//If all data is fully transmitted
	if(cnt == DATA_WORD_CNT)
	begin
		check_data <= 1;
	end	
end
 
 initial begin
    $display("Initialization of resets and clks.");
		HCLK = 1'b0;
		SW_DEBUG_MODE = 1'b1;   // This is set initially to allow an external SPI controller write in an data pattern.
		PO_RESETN = 1'b0;
		SYS_RESET_REQ = 'b0;
		EXT_RESETN = 1'b1;
		host_rstn = 1'b1;
		start_spi_host = 1'b1;
    
    
    #1000;
		PO_RESETN = 1'b1;	
    $display("Releasing of PO_RESETN.");
    
    #(RST_POR_DURATION*HCLK_PERIOD);   // Time period on starting up Spansion SPI chip, during which it shouldn't be selected.
    #10000;
    // #(300_000_000);   // Time period on starting up Spansion SPI chip, during which it shouldn't be selected.
    $display("Reset time out period elapsed.");
    
		// #(100_000_000);   
    
    wait(rd_all_done == 1); // Time period to allow SPI_HOST_MODEL write in data.
    #10000;
    $display("Issuing of an external reset (EXT_RESETN).");
		EXT_RESETN = 1'b0;
		SW_DEBUG_MODE = 1'b0;     // Turning off of software debug mode.
		#1000;
		EXT_RESETN = 1'b1;
		
		#100000;
		EXT_RESETN = 1'b1;
    
    $display("Waiting for flag to check data sent from CoreBootStrap matches initial data written into SPI_chip.");
		
		wait(test_passed);
		//Check if spi host now has control again
		start_spi_host = 1'b0;
		#100000;
		start_spi_host = 1'b1;
		
		fork
		begin
			wait(SPI_SS == 1'b0)
			$display("PASS: SPI host gained control");
			$finish;
		end
		begin
			#(100_000_000);
			$display("FAIL: SPI host did NOT gain control");
			$finish;			
		end
		join
		
		#(100_000_000);
		
		
		// #(1500000000);

		// if(ahb_mon_success)
			// $display ("TEST SUCCESS");
		// else
			// $display ("TEST FAILED");
		$finish;
  end
 
  
  