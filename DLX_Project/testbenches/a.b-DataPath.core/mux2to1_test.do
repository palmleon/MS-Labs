vcom ../../000-globals.vhd
vcom ../../a.b-DataPath.core/mux2to1.vhd
vcom mux2to1_tb.vhd
if { [ string match $1 "test_yes"] } {
	vsim work.mux2to1_tb(test) -t 100ps
}

