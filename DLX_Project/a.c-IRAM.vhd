library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.myGlobals.all;

-- Instruction memory for DLX
-- Memory filled by a process which reads from a file
-- TO CHANGE THE INPUT FILE PATH: modify the corresponding line in 000-globals.vhd

entity IRAM is
  generic (
    RAM_DEPTH : integer := IRAMDEPTH;
    I_SIZE : integer := DATASIZE);
  port (
    Rst  : in  std_logic;
    Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
    Dout : out std_logic_vector(I_SIZE - 1 downto 0)
    );
end IRAM;

architecture IRam_Beh of IRAM is

  type RAMtype is array (0 to RAM_DEPTH - 1) of std_logic_vector(I_SIZE - 1 downto 0);

  constant NOP_OPCODE: std_logic_vector(OPCSIZE-1 downto 0) := std_logic_vector(to_unsigned(16#15#, OPCSIZE));
  constant ZEROS : std_logic_vector(I_SIZE-OPCSIZE downto 0) := (others => '0');
  constant NOP: std_logic_vector(I_SIZE-1 downto 0) := NOP_OPCODE & ZEROS;

  signal IRAM_mem : RAMtype;

begin  -- IRam_Beh

  Dout <= std_logic_vector(IRAM_mem(to_integer(unsigned(Addr))));

  -- purpose: This process is in charge of filling the Instruction RAM with the firmware
  --          During testing, it MUST be ensured that RAM_DEPTH >= NINSTR + 5, where 
  -- 		  NINSTR is the code length
  -- type   : combinational
  -- inputs : Rst
  -- outputs: IRAM_mem
  FILL_MEM_P: process (Rst)
    file mem_fp: text;
    variable file_line : line;
    variable index : integer := 0;
    variable tmp_data_u : std_logic_vector(I_SIZE-1 downto 0);
  begin  -- process FILL_MEM_P
    if (Rst = '0') then
      file_open(mem_fp,FILE_CODE,READ_MODE);
      while (not endfile(mem_fp)) loop
        readline(mem_fp,file_line);
        hread(file_line,tmp_data_u);
        IRAM_mem(index) <= tmp_data_u;       
        index := index + 1;
      end loop;
	  file_close(mem_fp);
	  while (index < RAM_DEPTH) loop
		IRAM_mem(index) <= NOP;
		index := index + 1;
	  end loop;
    end if;
  end process FILL_MEM_P;

end IRam_Beh;
