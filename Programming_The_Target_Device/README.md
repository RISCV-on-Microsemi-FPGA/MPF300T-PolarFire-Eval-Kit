# PolarFire Evaluation Kit RISC-V Designs programming files
Sample programming files for RISC-V Libero project(s) for the PolarFire (MPF300T) Evaluation Kit.

This project contains programming files for the Libero projects containing an FPGA design including a RISC-V RV32IM soft processor. Programming bitstreams are also included so that you do not need to run through the full FPGA design flow in order to start developping software for RISC-V.

### Design Features
The FPGA designs and their features are described below:

####PF_CoreRISCV_AXI4_BaseDesign
* CoreRISCV_AXI4 RV32IM RISC-V processor
* RISC-V debug block allowing on-target debug using openocd/GDB
* LSRAM for code/data
* User peripherals such as GPIO, Timers, UART

####PF_CoreRISCV_AXI4_SysServices
* CoreRISCV_AXI4 RV32IM RISC-V processor
* RISC-V debug block allowing on-target debug using openocd/GDB
* LSRAM for code/data
* User peripherals PolarFire System Services, UART

The memory map for each design is available within each Libero project.

### Target Hardware
Details of the features of PolarFire Evaluation kit are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/polarfire/polarfire-eval-kit).

### FlashPro Express
This folder includes two FlashPro Express projects that can be used to program the development boards FPGA. A standalone installer for FlashPro Express is available [here](http://www.microsemi.com/products/fpga-soc/design-resources/programming/flashpro#software). Please note that you only need to install this standalone version of FlashPro Express if you do not have Libero tools installed.

* PF_CoreRISCV_AXI4_BaseDesign, allows software debugging using FlashPro5. The same JTAG port is used for programming the FPGA and debugging RISC-V software.
* PF_CoreRISCV_AXI4_CoreBootStrap, allows software debugging using FlashPro5. This also allow for booting from SPI Flash.The same JTAG port is used for programming the FPGA and debugging RISC-V software.
* PF_CoreRISCV_AXI4_SysServices, allows software debugging using FlashPro5. The same JTAG port is used for programming the FPGA and debugging RISC-V software.

