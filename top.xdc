 ## serial:0.tx
set_property LOC D10 [get_ports serial_tx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_tx]
 ## serial:0.rx
set_property LOC A9 [get_ports serial_rx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_rx]
 ## clk100:0
set_property LOC E3 [get_ports clk100]
set_property IOSTANDARD LVCMOS33 [get_ports clk100]
 ## cpu_reset:0
set_property LOC C2 [get_ports cpu_reset]
set_property IOSTANDARD LVCMOS33 [get_ports cpu_reset]
 ## user_led:0
set_property LOC H5 [get_ports user_led0]
set_property IOSTANDARD LVCMOS33 [get_ports user_led0]
 ## user_led:1
set_property LOC J5 [get_ports user_led1]
set_property IOSTANDARD LVCMOS33 [get_ports user_led1]
 ## user_led:2
set_property LOC T9 [get_ports user_led2]
set_property IOSTANDARD LVCMOS33 [get_ports user_led2]
 ## user_led:3
set_property LOC T10 [get_ports user_led3]
set_property IOSTANDARD LVCMOS33 [get_ports user_led3]
 ## user_sw:0
set_property LOC A8 [get_ports user_sw0]
set_property IOSTANDARD LVCMOS33 [get_ports user_sw0]
 ## user_sw:1
set_property LOC C11 [get_ports user_sw1]
set_property IOSTANDARD LVCMOS33 [get_ports user_sw1]
 ## user_sw:2
set_property LOC C10 [get_ports user_sw2]
set_property IOSTANDARD LVCMOS33 [get_ports user_sw2]
 ## user_sw:3
set_property LOC A10 [get_ports user_sw3]
set_property IOSTANDARD LVCMOS33 [get_ports user_sw3]
 ## user_btn:0
set_property LOC D9 [get_ports user_btn0]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn0]
 ## user_btn:1
set_property LOC C9 [get_ports user_btn1]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn1]
 ## user_btn:2
set_property LOC B9 [get_ports user_btn2]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn2]
 ## user_btn:3
set_property LOC B8 [get_ports user_btn3]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn3]

set_property INTERNAL_VREF 0.750 [get_iobanks 34]

create_clock -name sys_clk -period 10.0 [get_nets sys_clk]

create_clock -name clk100 -period 10.0 [get_nets clk100]

set_false_path -quiet -to [get_nets -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -filter {REF_PIN_NAME == PRE} -of [get_cells -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -filter {REF_PIN_NAME == Q} -of [get_cells -filter {ars_ff1 == TRUE}]] -to [get_pins -filter {REF_PIN_NAME == D} -of [get_cells -filter {ars_ff2 == TRUE}]]