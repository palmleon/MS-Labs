package myGlobals is

	constant DATASIZE: integer := 32;
	constant ALUOPCSIZE: integer := 1; -- TODO to be defined
	constant OPCSIZE: integer := 6;
	constant FUNCSIZE: integer := 11;

	type aluOp is (
		NOP, ADDS, LLS, LRS --- to be completed
			);

end myGlobals;

