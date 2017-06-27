# Written by Synplify Pro version map201609actrcp1, Build 003R. Synopsys Run ID: sid1498558817 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {CLK_50MHZ} [get_ports {CLK_50MHZ}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {uj_jtag_85|un1_duttck_inferred_clock} [get_pins {PROC_SUBSYSTEM_0/COREJTAGDEBUG_0/genblk1.UJ_JTAG_0/un1_duttck/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_85_1s|iUDRCK_inferred_clock} [get_pins {PROC_SUBSYSTEM_0/COREJTAGDEBUG_0/genblk1.UJTAG_0/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {PF_CCC_0/pll_inst_0/OUT0} -multiply_by {83} -divide_by {50} -source [get_pins {INBUF_0_RNI3ULF/Y}]  [get_pins {PF_CCC_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {uj_jtag_85|un1_duttck_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_85_1s|iUDRCK_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

