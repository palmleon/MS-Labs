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
        subtype REG_ADDR is natural range 0 to 31; -- using natural type
        type REG_ARRAY is array(REG_ADDR) of std_logic_vector(63 downto 0);
        signal REGISTERS : REG_ARRAY;


begin
  RF_Proc : process (clk, reset) is
  begin
     if rising_edge(clk) then
	if reset = '1' then
	   registers <= (others => (others => '0'));
	end if;

	if enable = '1' then
	  if rd1 = '1' then
	     out1 <= registers(to_integer(unsigned(add_rd1)));
	  end if;

          if rd2 = '1' then
	     out2 <= registers(to_integer(unsigned(add_rd2)));
	  end if;
	
          if wr = '1' then                -- Write port 1
	     registers(to_integer(unsigned(add_wr))) <= datain;
	     if rd1 = '1' then             --  write/read
	        out1 <= datain;
	     end if;
	   
             if rd2 = '1' then             --  write/read
	        out2 <= datain;
	     end if;
          end if;
       else                              -- !enable 
          out1 <= (others => 'Z');
          out2 <= (others => 'Z');
        end if;

    end if; -- closed rising edge if
  end process RF_Proc;
end A;

----


configuration CFG_RF_BEH of register_file is
  for A
  end for;
end configuration;
