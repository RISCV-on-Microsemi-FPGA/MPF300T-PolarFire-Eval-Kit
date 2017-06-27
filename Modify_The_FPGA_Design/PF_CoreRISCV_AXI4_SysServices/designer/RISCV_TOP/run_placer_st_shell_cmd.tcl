read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {D:/exp/MPF300T-PolarFire-Eval-Kit/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_SysServices/designer/RISCV_TOP/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP_layout_combinational_loops.xml}
report -type slack {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\pinslacks.txt}
