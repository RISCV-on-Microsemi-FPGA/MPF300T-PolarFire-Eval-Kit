`timescale 1 ns/100 ps
// Version: PolarFire v2.0 12.200.0.20


module PF_OSC_0_PF_OSC_0_0_PF_OSC(
       RCOSC_160MHZ_GL
    );
output RCOSC_160MHZ_GL;

    wire GND_net, VCC_net, I_OSC_160_CLK_c;
    
    VCC vcc_inst (.Y(VCC_net));
    OSC_RC160MHZ I_OSC_160 (.OSC_160MHZ_ON(VCC_net), .CLK(
        I_OSC_160_CLK_c));
    GND gnd_inst (.Y(GND_net));
    CLKINT I_OSC_160_INT (.A(I_OSC_160_CLK_c), .Y(RCOSC_160MHZ_GL));
    
endmodule
