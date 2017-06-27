onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider APB
add wave -noupdate -format Logic /testbench/SYSCLK_apb
add wave -noupdate -format Logic /testbench/PCLK
add wave -noupdate -format Literal /testbench/PADDR
add wave -noupdate -format Logic /testbench/PENABLE
add wave -noupdate -format Literal /testbench/PRDATA
add wave -noupdate -format Literal /testbench/PRDATA1
add wave -noupdate -format Literal /testbench/PRDATA2
add wave -noupdate -format Logic /testbench/PRESETN
add wave -noupdate -format Logic /testbench/PSEL1
add wave -noupdate -format Logic /testbench/PSEL2
add wave -noupdate -format Literal /testbench/PWDATA
add wave -noupdate -format Logic /testbench/PWRITE
add wave -noupdate -divider {UART1 (TX)}
add wave -noupdate -format Logic /testbench/DUT1/TXRDY
add wave -noupdate -format Logic /testbench/DUT1/TX
add wave -noupdate -format Logic /testbench/DUT1/RXRDY
add wave -noupdate -format Logic /testbench/DUT1/RX
add wave -noupdate -format Logic /testbench/DUT1/PARITY_ERR
add wave -noupdate -format Logic /testbench/DUT1/OVERFLOW
add wave -noupdate -divider UART2(RX)
add wave -noupdate -format Logic /testbench/DUT2/TXRDY
add wave -noupdate -format Logic /testbench/DUT2/TX
add wave -noupdate -format Logic /testbench/DUT2/RXRDY
add wave -noupdate -format Logic /testbench/DUT2/RX
add wave -noupdate -format Logic /testbench/DUT2/PARITY_ERR
add wave -noupdate -format Logic /testbench/DUT2/OVERFLOW
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {553305200 ps} 0}
configure wave -namecolwidth 365
configure wave -valuecolwidth 120
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
WaveRestoreZoom {543429100 ps} {546721100 ps}
