# Microsemi Corp.
# Date: 2017-Jun-13 14:32:04
# This file was generated based on the following SDC source files:
#   C:/Users/ciaran.lappin/Desktop/Github/PF_MPF300T_ES_Advanced_Devlopment_Kit - Copy/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_BaseDesign/component/work/PROC_SUBSYSTEM/PF_CCC_0/PROC_SUBSYSTEM_PF_CCC_0_PF_CCC.sdc
#   C:/Microsemi/12_100_9_13_juno/Designer/data/aPA5M/cores/constraints/osc_rc200mhz.sdc
#

create_clock -name {PF_OSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { PF_OSC_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 16 -source [ get_pins { PF_CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_0/pll_inst_0/OUT0 } ]
