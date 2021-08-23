vcom ../000-globals.vhd
vcom ../a.a-CU.vhd
vcom a.a-CU_tb.vhd
if { [ string match $1 "test_yes"] } {
	vsim work.CU_tb(test) -t 100ps
}
