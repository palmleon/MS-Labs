library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity FD_GENERIC is
  generic
    (N : integer := numbit);
  port (
    D      : in  std_logic_vector(N-1 downto 0);
    CK     : in  std_logic;
    RESET  : in  std_logic;
    ENABLE : in  std_logic;
    Q      : out std_logic_vector(N-1 downto 0));
end entity;

--**********************
-- synch reset arch
--**********************
architecture SYNCARCH of FD_GENERIC is          
	component FD is
		Port (	D:		In	std_logic;
			CK:		In	std_logic;
			RESET:	        In	std_logic;
                        ENABLE:         in      std_logic;
			Q:		Out	std_logic);
	end component FD;
begin

	FFgen: for i in 0 to N-1 generate
		FF: FD port map (D(i), CK, RESET, '1', Q(i));
	end generate FFgen;

end SYNCARCH;

--**********************
-- asynch reset arch
--**********************
architecture ASYNCARCH of FD_GENERIC is         
	component FD is
		port (	D:		In	std_logic;
			CK:		In	std_logic;
			RESET:  	In	std_logic;
                        ENABLE:         in      std_logic;
			Q:		Out	std_logic);
	end component FD;
begin
  
	FFgen: for i in 0 to N-1 generate
		FF: FD port map (D(i), CK, RESET, '1',  Q(i));
	end generate FFgen;

end ASYNCARCH;


--********************************
-- asynch reset with enable arch
--********************************
architecture ASYNCARCH_EN of FD_GENERIC is         
	component FD is
		port (	D:		In	std_logic;
			CK:		In	std_logic;
			RESET:  	In	std_logic;
                        ENABLE:         in      std_logic;
			Q:		Out	std_logic);
	end component FD;
begin
  
	FFgen: for i in 0 to N-1 generate
		FF: FD port map (D(i), CK, RESET, ENABLE, Q(i));
	end generate FFgen;

end ASYNCARCH_EN;

configuration CFG_FD_SYNCARCH of FD_GENERIC is
  	for SYNCARCH
		for FFgen
			for all: FD
				use configuration WORK.CFG_FD_SYNCH;
			end for;
		end for;
  	end for;
end CFG_FD_SYNCARCH;


configuration CFG_FD_ASYNCARCH of FD_GENERIC is
  	for ASYNCARCH
		for FFgen
			for all: FD
				use configuration WORK.CFG_FD_ASYNCH;
			end for;
		end for;
  	end for;
end CFG_FD_ASYNCARCH;

configuration CFG_FD_EN_ASYNCARCH of FD_GENERIC is
  	for ASYNCARCH_EN
		for FFgen
			for all: FD
				use configuration WORK.CFG_FD_EN_ASYNCH;
			end for;
		end for;
  	end for;
end CFG_FD_EN_ASYNCARCH;


