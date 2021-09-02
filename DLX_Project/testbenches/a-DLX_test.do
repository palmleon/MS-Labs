vcom ../000-globals.vhd
vcom ../a.a-CU.vhd
vcom ../a.b-DataPath.core/mux2to1.vhd
vcom ../a.b-DataPath.core/add_sub/fa.vhd
vcom ../a.b-DataPath.core/add_sub/rca_generic.vhd
vcom ../a.b-DataPath.core/add_sub/pgnet_block.vhd
vcom ../a.b-DataPath.core/add_sub/gen_gen.vhd
vcom ../a.b-DataPath.core/add_sub/gen_prop.vhd
vcom ../a.b-DataPath.core/add_sub/carry_sel_block.vhd
vcom ../a.b-DataPath.core/add_sub/carry_generator.vhd
vcom ../a.b-DataPath.core/add_sub/sum_generator.vhd
vcom ../a.b-DataPath.core/add_sub/p4_adder.vhd
vcom ../a.b-DataPath.core/add_sub/add_sub.vhd
vcom ../a.b-DataPath.core/ALU.vhd
vcom ../a.b-DataPath.core/d_reg.vhd
vcom ../a.b-DataPath.core/i_reg.vhd
vcom ../a.b-DataPath.core/NPC_adder.vhd
vcom ../a.b-DataPath.core/sign_extender.vhd
vcom ../a.b-DataPath.core/register_file.vhd
vcom ../a.b-DataPath.vhd
vcom ../a.c-IRAM.vhd
vcom ../a.d-DRAM.vhd
vcom ../a-DLX.vhd
vcom a-DLX_tb.vhd
if { [ string match $1 "test_yes"] } {
	vsim work.DLX_tb(test) -t 100ps
}
