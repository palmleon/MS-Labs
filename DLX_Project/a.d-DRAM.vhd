library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

-- Entity for the Data Memory to access at Memory Stage

entity DRAM is
  generic (
    RAMDEPTH : integer := DRAMDEPTH;
    DATASIZE : integer := DATASIZE);
  port (
    rst, clk  : in  std_logic; 
	en, wr: in std_logic;
    addr, din : in  std_logic_vector(DATASIZE - 1 downto 0);
    dout : out std_logic_vector(DATASIZE - 1 downto 0)
    );
end DRAM;

architecture DRam_Beh of DRAM is

  type RAMtype is array (0 to RAMDEPTH - 1) of std_logic_vector(DATASIZE - 1 downto 0);

  signal DRAM_mem : RAMtype;

begin  -- DRam_Beh

  Write_Proc : process (clk) is
  begin
     if rising_edge(clk) then
		if rst = '1' then						-- synchronous reset (active high)
	   		DRAM_mem <= (others => (others => '0'));
		else
			if en = '1' then
				if wr = '1' then                -- Write port 1
	     			DRAM_mem(to_integer(unsigned(addr))) <= din;
		  		end if;
        	end if;
		end if;
    end if; -- closed rising edge if
  end process Write_Proc;

  Read_Proc: process (DRAM_mem, en, wr, addr) is
  begin
	if en = '1' then
		if wr = '0' then
  			dout <= DRAM_Mem(to_integer(unsigned(addr)));
		else
			dout <= (others => 'Z');
		end if;
	else
		dout <= (others => 'Z');
	end if;
  end process Read_Proc;

end DRam_Beh;
