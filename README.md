# PolarFire Evaluation Kit RISC-V Designs
Sample RISC-V Libero project(s) for the PolarFire (MPF300T) Evaluation Kit.

This project contains a Libero project containing an FPGA design including a RISC-V RV32IM soft processor. Programming bitstreams are also included so that you do not need to run through the full FPGA design flow in order to start developping software for RISC-V.

### Design Features
The FPGA design includes the following features:
* CoreRISCV_AXI4 RV32IM RISC-V processor
* RISC-V debug block allowing on-target debug using openocd/GDB
* On-chip NVM used as boot/execution memory
* LSRAM for code/data
* UART, GPIO, Timers

The memory map for each design is available within each Libero project.

### Target Hardware
Details of the features of PolarFire Evaluation kit are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/polarfire/polarfire-eval-kit).

### FlashPro Projects
This includes two FlashPro projects that can be used to program the development board's FPGA. A stand alone installer for FlashPro is available from the following [page](
http://www.microsemi.com/products/fpga-soc/design-resources/programming/flashpro#software). Please note that you only need to install this standalone version of FlashPro if you do not have the Libero tools installed.

* The first FlashPro project, PF_CoreRISCV_AXI4_BaseDesign, allows software debugging using FlashPro5. The same JTAG port is used for programming the FPGA and debugging RISC-V software.
* The first FlashPro project, PF_CoreRISCV_AXI4_CoreBootStrap, allows software debugging using FlashPro5. This also allow for booting from SPI Flash.The same JTAG port is used for programming the FPGA and debugging RISC-V software.

### Libero
Libero is Microsemi's FPGA design tool. You will need this tool if you wish to modify the example FPGA design. Libero is available from the following [page](http://www.microsemi.com/products/fpga-soc/design-resources/design-software/libero-soc#downloads).

### Example Software Projects
A set of self-contained example software projects are available for this design from the [riscv-junk-drawer](https://github.com/RISCV-on-Microsemi-FPGA/riscv-junk-drawer/tree/master/examples).
