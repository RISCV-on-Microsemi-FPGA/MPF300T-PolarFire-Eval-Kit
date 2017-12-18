# Microsemi Corp.
# Date: 2017-Dec-04 17:46:52
# This file was generated based on the following SDC source files:
#   C:/Users/ciaran.lappin/Desktop/MiV_Github/PF_MPF300T/Modify_The_FPGA_Design/PF_MIV_RV32IMA_L1_AHB_BaseDesign/component/work/CCC/CCC_0/CCC_CCC_0_PF_CCC.sdc
#

create_clock -name {REF_CLK_0} -period 10 [ get_ports { REF_CLK_0 } ]
create_generated_clock -name {CCC_0/CCC_0/pll_inst_0/OUT0} -divide_by 2 -source [ get_pins { CCC_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CCC_0/CCC_0/pll_inst_0/OUT0 } ]
