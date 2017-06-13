//==================================================
// PF_SPI
//==================================================
module PF_SPI0 ( 
  CLK_I,
  D_I,
  SS_I,
  FAB_SPI_OWNER,
  CLK_OE,
  CLK_O,
  D_OE,
  D_O,
  SS_OE,
  SS_O,
  CLK,
  DI,
  DO,
  SS,
  IFACE,
  FLASH );
/* synthesis syn_black_box */
/* synthesis syn_noprune=1 */
/* synthesis black_box_pad_pin ="CLK, DI, DO, SS, IFACE, FLASH" */

output CLK_I;
output D_I;
output SS_I;
output FAB_SPI_OWNER;

input  CLK_OE;
input  CLK_O;
input  D_OE;
input  D_O;
input  SS_OE;
input  SS_O;


inout CLK;
input DI;
output DO;
inout SS;
input IFACE;
input FLASH;


endmodule

module top_SPI (
    CLK
    ,CLK_OE
    ,DI
    ,DO
    ,SS
    ,IFACE
    ,FLASH
    ,CLK_I
    ,D_I
    ,SS_I
    ,D_O
    ,D_OE
    ,SS_O
    ,SS_OE
    ,CLK_O
    ,FAB_SPI_OWNER
);
  inout CLK;
  input DI;
  output DO;
  inout SS;
  input IFACE;
  input FLASH;
  input  CLK_O;
  input  CLK_OE;
  output CLK_I;
  output D_I;
  output SS_I;
  input D_O;
  input  D_OE;
  input  SS_O;
  input  SS_OE;
  output FAB_SPI_OWNER;

  GND gnd_inst ( .Y( gnd_net ) ); 

  PF_SPI inst_SPI 
    (
        .CLK_OE ( CLK_OE ) ,
        .CLK_O ( CLK_O ) ,
        .D_OE ( D_OE ) ,
        .D_O ( D_O ) ,
        .SS_OE ( SS_OE ) ,
        .SS_O ( SS_O ) ,
        .CLK_I ( CLK_I ) ,
        .D_I ( D_I ) ,
        .SS_I ( SS_I ) ,
        .FAB_SPI_OWNER ( FAB_SPI_OWNER ) ,
        .CLK ( CLK ) ,
        .DI ( DI ) ,
        .DO ( DO ) ,
        .SS ( SS ) ,
        .IFACE ( IFACE ) ,
        .FLASH ( FLASH )
    );


endmodule

