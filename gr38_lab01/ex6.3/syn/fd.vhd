library IEEE;
use IEEE.std_logic_1164.all; 

entity FD is
	Port (	D:		In	std_logic;
		CK:		In	std_logic;
		RESET:  	In	std_logic;
                ENABLE:         in      std_logic;
		Q:		Out	std_logic);
end FD;


architecture SYNCHARCH of FD is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= '0'; 
	    else
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;

end SYNCHARCH;

architecture ASYNCHARCH of FD is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= '0';
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;

end ASYNCHARCH;

architecture ASYNCHARCH_EN of FD is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= '0';
	  elsif ENABLE='1' then
            if CK'event and CK='1' then -- positive edge triggered:
              Q <= D;
             end if;
	  end if;
	end process;

end ASYNCHARCH_EN;


configuration CFG_FD_ASYNCH of FD is
	for ASYNCHARCH
	end for;
end CFG_FD_ASYNCH;

configuration CFG_FD_SYNCH of FD is
	for SYNCHARCH
	end for;
end CFG_FD_SYNCH;

configuration CFG_FD_EN_ASYNCH of FD is
	for ASYNCHARCH_EN
	end for;
end CFG_FD_EN_ASYNCH;


