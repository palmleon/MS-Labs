package myGlobals is

	constant DATASIZE: integer := 32;
	constant ALUOPCSIZE: integer := 1; -- TODO to be updated
	constant OPCSIZE: integer := 6;
	constant FUNCSIZE: integer := 11;
	constant DRAMDEPTH: integer := 64;
	constant IRAMDEPTH: integer := 64;

	type aluOp is (
		NOP, ADDS, LLS, LRS --- to be completed
	);

	-- Testing & Debugging Constants
	constant TEST_ACTIVE: boolean := true; -- flag that activates specific testing procedures (e.g. DRAM dump to check results)
    constant FILE_CODE: string := "MIPS_codes/test.asm.mem"; -- !! to change the input file to test, modify this line
    constant FILE_MEMDUMP: string := "memdump.mem"; -- !! to change the file where to read the memory content
	constant NTEST_INSTR: integer; -- test code length (used to define when to stop code execution)

end myGlobals;

