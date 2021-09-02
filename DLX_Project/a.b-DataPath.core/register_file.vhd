library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;


entity register_file is
   generic (
      NData : integer;
      NRegs : integer; 
      NAddr : integer
   );
   port (CLK     : in  std_logic;
        RESET   : in  std_logic;
        ENABLE  : in  std_logic;
        RD1     : in  std_logic;
        RD2     : in  std_logic;
        WR      : in  std_logic;
        ADD_WR  : in  std_logic_vector(NAddr-1 downto 0);
        ADD_RD1 : in  std_logic_vector(NAddr-1 downto 0);
        ADD_RD2 : in  std_logic_vector(NAddr-1 downto 0);
        DATAIN  : in  std_logic_vector(NData-1 downto 0);
        OUT1    : out std_logic_vector(NData-1 downto 0);
        OUT2    : out std_logic_vector(NData-1 downto 0)
   );
end register_file;

-------------------
-- behavioral arch
-------------------
architecture A of register_file is

        -- suggested structures
        subtype reg_addr is natural range 0 to NRegs-1; -- using natural type
        type reg_array is array(reg_addr) of std_logic_vector(NData-1 downto 0);
        signal registers : reg_array;


begin

  Write_Proc : process (clk) is
  begin
     if rising_edge(clk) then
		if reset = '1' then						-- synchronous reset
	   		registers <= (others => (others => '0'));
		else
			if enable = '1' then
				if wr = '1' then                -- Write port 1
	     			registers(to_integer(unsigned(add_wr))) <= datain;
		  		end if;
        	end if;
		end if;
    end if; -- closed rising edge if
  end process Write_Proc;

  Read_Proc: process (registers, enable, rd1, rd2, add_rd1, add_rd2) is
  begin
	if enable = '1' then
		if rd1 = '1' then
  			out1 <= registers(to_integer(unsigned(add_rd1)));
		else
			out1 <= (others => '0');
		end if;
   		if rd2 = '1' then
   			out2 <= registers(to_integer(unsigned(add_rd2)));
		else
			out2 <= (others => '0');
		end if;
	else
		out1 <= (others => '0');
        out2 <= (others => '0');
	end if;
  end process Read_Proc;

  -- registers[0] contains an HW zero vector
  registers(0) <= (others => '0');

end A;

----


configuration CFG_RF_BEH of register_file is
  for A
  end for;
end configuration;
