module led_blink(
    input clock,
    input reset,
    output led
    );
 
reg [26:0] count; //A sizable 27 bit register so that the blink can be seen and is visible, too small a register will make the
      //register stay on as it will blink extremely fast.
 
always@ (posedge clock or negedge reset)
 begin
  if (!reset)
   count <= 0;  //if reset button is pressed, initialize or reset the register
  else
   count <= count + 1;  //otherwise increment the register
  end
   
assign led = count[26];   //MSB connected to output led. and the other outputes conncted as below

endmodule