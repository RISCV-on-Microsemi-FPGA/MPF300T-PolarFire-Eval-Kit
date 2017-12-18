set_component CCC_CCC_0_PF_CCC
# Microsemi Corp.
# Date: 2017-Dec-04 16:56:11
#

# Base clock for PLL #0
create_clock -period 10 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -divide_by 2 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
