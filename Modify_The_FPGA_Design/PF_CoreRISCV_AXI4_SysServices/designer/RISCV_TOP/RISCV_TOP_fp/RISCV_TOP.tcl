open_project -project {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP_fp\RISCV_TOP.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF300TS_ES} \
    -fpga {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP.map} \
    -header {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP.hdr} \
    -spm {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP.spm} \
    -dca {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP.dca}
export_single_stapl \
    -name {MPF300TS_ES} \
    -file {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\export\PF_CoreRISCV_AXI4_SysServices.stp} \
    -secured
set_programming_file -name {MPF300TS_ES} -no_file
save_project
close_project
