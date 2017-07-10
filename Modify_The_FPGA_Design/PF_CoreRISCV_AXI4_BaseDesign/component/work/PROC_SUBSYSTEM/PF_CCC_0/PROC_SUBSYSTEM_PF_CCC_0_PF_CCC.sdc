set_component PROC_SUBSYSTEM_PF_CCC_0_PF_CCC
# Microsemi Corp.
# Date: 2017-Jul-10 18:53:47
#

# Base clock for PLL #0
create_clock -period 6.25 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 83 -divide_by 160 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
