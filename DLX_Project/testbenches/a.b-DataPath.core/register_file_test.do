vcom ../../../a.b-DataPath.core/constants.vhd
vcom ../../../a.b-DataPath.core/register_file.vhd
vcom register_file_tb.vhd
if { [ string match $1 "test_yes"] } {
	vsim work.tb_register_file(test) -t 100ps
}

