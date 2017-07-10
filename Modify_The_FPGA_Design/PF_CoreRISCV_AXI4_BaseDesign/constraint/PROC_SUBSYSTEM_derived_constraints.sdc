# Microsemi Corp.
# Date: 2017-Jul-10 18:56:48
# This file was generated based on the following SDC source files:
#   D:/exp/MPF300T-PolarFire-Eval-Kit/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_BaseDesign/component/work/PROC_SUBSYSTEM/PF_CCC_0/PROC_SUBSYSTEM_PF_CCC_0_PF_CCC.sdc
#   //idm/captures/pc/12_100_9_14_juno/Designer/data/aPA5M/cores/constraints/osc_rc200mhz.sdc
#

create_clock -name {PF_OSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { PF_OSC_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_0/pll_inst_0/OUT0} -multiply_by 83 -divide_by 160 -source [ get_pins { PF_CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_0/pll_inst_0/OUT0 } ]
