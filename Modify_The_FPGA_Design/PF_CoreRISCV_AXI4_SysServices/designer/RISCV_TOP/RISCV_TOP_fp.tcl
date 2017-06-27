new_project \
         -name {RISCV_TOP} \
         -location {C:\riscv-validation\riscv_validation_hs\designer\RISCV_TOP\RISCV_TOP_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300TS_ES} \
         -name {MPF300TS_ES}
enable_device \
         -name {MPF300TS_ES} \
         -enable {TRUE}
save_project
close_project
