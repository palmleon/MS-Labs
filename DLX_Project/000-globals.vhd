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

end myGlobals;

