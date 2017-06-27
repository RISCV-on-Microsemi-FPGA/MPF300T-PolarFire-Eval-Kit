read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {D:/exp/MPF300T-PolarFire-Eval-Kit/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_SysServices/designer/RISCV_TOP/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP_place_and_route_constraint_coverage.xml}]
set reportfile {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
