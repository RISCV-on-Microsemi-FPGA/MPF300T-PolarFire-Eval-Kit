set_device -fam PolarFire
read_verilog -top_module_name RISCV_TOP \
    -file {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\synthesis\RISCV_TOP.vm}
write_adl -file {D:\exp\MPF300T-PolarFire-Eval-Kit\Modify_The_FPGA_Design\PF_CoreRISCV_AXI4_SysServices\designer\RISCV_TOP\RISCV_TOP.adl}
