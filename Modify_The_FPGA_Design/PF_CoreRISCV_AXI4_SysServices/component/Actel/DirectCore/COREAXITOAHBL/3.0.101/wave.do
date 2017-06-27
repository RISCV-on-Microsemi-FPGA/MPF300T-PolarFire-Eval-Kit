onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -divider Data_buffers
add wave -noupdate -radix hexadecimal -color magenta /testbench/U_AXI_Master/wr_golden_mem
add wave -noupdate -radix hexadecimal -color magenta /testbench/U_AXI_Master/rd_actual_mem

add wave -divider AXIInterface_global
add wave -noupdate -radix hexadecimal /testbench/ARESETN
add wave -noupdate -radix hexadecimal /testbench/ACLK

add wave -divider AXIInterface_WriteAddrChan
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWVALID
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWREADY
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWID
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWADDR
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWLEN
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWSIZE
add wave -noupdate -radix hexadecimal -color magenta /testbench/AWBURST

add wave -divider AXIInterface_WriteDataChan
add wave -noupdate -radix hexadecimal /testbench/WVALID
add wave -noupdate -radix hexadecimal /testbench/WREADY
add wave -noupdate -radix hexadecimal /testbench/WID
add wave -noupdate -radix hexadecimal /testbench/WDATA
add wave -noupdate -radix hexadecimal /testbench/WSTRB
add wave -noupdate -radix hexadecimal /testbench/WLAST

add wave -divider AXIInterface_WriteRespChan
add wave -noupdate -radix hexadecimal -color magenta /testbench/BVALID
add wave -noupdate -radix hexadecimal -color magenta /testbench/BREADY
add wave -noupdate -radix hexadecimal -color magenta /testbench/BID
add wave -noupdate -radix hexadecimal -color magenta /testbench/BRESP

add wave -divider AXIInterface_ReadAddrChan
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARVALID
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARREADY
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARID
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARADDR
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARLEN
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARSIZE
add wave -noupdate -radix hexadecimal -color magenta /testbench/ARBURST

add wave -divider AXIInterface_ReadDataChan
add wave -noupdate -radix hexadecimal /testbench/RVALID
add wave -noupdate -radix hexadecimal /testbench/RREADY
add wave -noupdate -radix hexadecimal /testbench/RID
add wave -noupdate -radix hexadecimal /testbench/RDATA
add wave -noupdate -radix hexadecimal /testbench/RLAST
add wave -noupdate -radix hexadecimal /testbench/RRESP

add wave -divider AHBInterface
add wave -noupdate -radix hexadecimal /testbench/HCLK
add wave -noupdate -radix hexadecimal /testbench/HRESETN
add wave -noupdate -radix hexadecimal /testbench/HSEL
add wave -noupdate -radix hexadecimal /testbench/HADDR
add wave -noupdate -radix hexadecimal /testbench/HWRITE
add wave -noupdate -radix hexadecimal /testbench/HREADYIN
add wave -noupdate -radix hexadecimal /testbench/HTRANS
add wave -noupdate -radix hexadecimal /testbench/HSIZE
add wave -noupdate -radix hexadecimal /testbench/HWDATA
add wave -noupdate -radix hexadecimal /testbench/HBURST
add wave -noupdate -radix hexadecimal /testbench/HREADYOUT
add wave -noupdate -radix hexadecimal /testbench/HRESP
add wave -noupdate -radix hexadecimal /testbench/HRDATA

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {249 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 300
configure wave -valuecolwidth 127
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 fs} {20000000000 fs}