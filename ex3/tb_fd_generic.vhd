library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TB_FD_GENERIC is
end TB_FD_GENERIC;

architecture TEST of TB_FD_GENERIC is

	constant NBIT: 		integer := 8;
	signal	CK:			std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	D:			std_logic_vector(7 downto 0);
	signal	QSYNCH:		std_logic_vector(7 downto 0);
	signal	QASYNCH:	std_logic_vector(7 downto 0);
	
	component FD_GENERIC
	
	generic
    	(N : integer := numbit);
  	port (
    	D 		: 	in  	std_logic_vector(N-1 downto 0);
    	CK 		: 	in  	std_logic;
    	RESET 	: 	in  	std_logic;
    	Q     	: 	out 	std_logic_vector(N-1 downto 0));
	end component;

begin 
		
	UFD1 : FD_GENERIC
	Generic Map (NBIT)
	Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QSYNCH); -- sinc

	UFD2 : FD_GENERIC
	Generic Map (NBIT)
	Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QASYNCH); -- asinc
	
	TestProc: PROCESS
	BEGIN
		WAIT FOR 0.1 ns;
		RESET <= '1';
		WAIT FOR 0.6 ns;
		RESET <= '0';
		D <= "00000000";
		WAIT FOR 2 ns;
		D <= "01010101";
		WAIT FOR 2 ns;
		D <= "10101010";
		WAIT;
	END PROCESS;

	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;

end TEST;

configuration FDTEST of TB_FD_GENERIC is
   for TEST
      for UFD1 : FD_GENERIC
         use configuration WORK.CFG_FD_SYNCARCH ; -- sincrono
      end for;
      for UFD2 : FD_GENERIC
         use configuration WORK.CFG_FD_ASYNCARCH; -- asincrono
      end for;


   end for;
end FDTEST;

