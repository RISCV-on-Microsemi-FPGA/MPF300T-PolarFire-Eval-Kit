history clear
run_tcl -fg RISCV_TOP_syn.tcl
add_file -verilog ../SYS_SERVICES_Mod.v
project -save D:/exp/MPF300T-PolarFire-Eval-Kit/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_SysServices/synthesis/RISCV_TOP_syn.prj 
project -run  
project -close D:/exp/MPF300T-PolarFire-Eval-Kit/Modify_The_FPGA_Design/PF_CoreRISCV_AXI4_SysServices/synthesis/RISCV_TOP_syn.prj
