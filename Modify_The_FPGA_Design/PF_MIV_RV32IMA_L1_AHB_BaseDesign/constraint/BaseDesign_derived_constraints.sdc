# Microsemi Corp.
# Date: 2017-Dec-18 16:01:47
# This file was generated based on the following SDC source files:
#   C:/Users/hbreslin/Desktop/MPF300T-PolarFire-Eval-Kit-master/Modify_The_FPGA_Design/PF_MIV_RV32IMA_L1_AHB_BaseDesign/component/work/CCC/CCC_0/CCC_CCC_0_PF_CCC.sdc
#   C:/Microsemi/Libero_SoC_PolarFire_v2.0/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
#

create_clock -name {PF_OSC_0_0/PF_OSC_0_0/I_OSC_160/CLK} -period 6.25 [ get_pins { PF_OSC_0_0/PF_OSC_0_0/I_OSC_160/CLK } ]
create_generated_clock -name {CCC_0/CCC_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 16 -source [ get_pins { CCC_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CCC_0/CCC_0/pll_inst_0/OUT0 } ]
