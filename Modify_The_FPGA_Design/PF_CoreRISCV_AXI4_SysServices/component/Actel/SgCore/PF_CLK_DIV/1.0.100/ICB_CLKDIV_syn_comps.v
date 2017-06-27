`timescale 1 ns/100 ps
// Version: 


module ICB_CLKDIV(
       RST_N,
       BIT_SLIP,
       A,
       Y_DIV
    ) ;
/* synthesis syn_black_box

syn_tco0 = " A->Y_DIV = 2.104"
*/
/* synthesis black_box_pad_pin ="" */
input  RST_N;
input  BIT_SLIP;
input  A;
output Y_DIV;
parameter DIVIDER = 'h0;

endmodule
