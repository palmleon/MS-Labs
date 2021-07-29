vcom ../../000-globals.vhd
vcom ../../a.b-DataPath.core/d_reg.vhd
vcom d_reg_tb.vhd
if { [ string match $1 "test_yes"] } {
	vsim work.d_reg_tb(test) -t 100ps
}
