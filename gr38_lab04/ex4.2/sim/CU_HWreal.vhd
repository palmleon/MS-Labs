library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;
--use work.all;

entity CU_HW is
  generic (
    FUNC_SIZE          :     integer := FUNC_SIZE;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := OP_CODE_SIZE;  -- Op Code Size
    ALU_OPC_SIZE       :     integer := ALU_OPC_SIZE;  -- ALU Op Code Word Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 13);  -- Control Word Size
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register
    IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);  
	
	-- First Stage Control Signals
	RF1, RF2		   : out std_logic;  -- Read1 Enable and Read2 Enable for RegFile
	WF1, EN1		   : out std_logic;  -- Write Enable and Enable for RegFile and Pipeline Registers
	
	-- Second Stage Control Signals
	S1, S2			   : out std_logic;  -- Multiplexer selectors
	ALU_OPC			   : out std_logic_vector(ALU_OPC_SIZE-1 downto 0); -- ALU Opcode
	EN2				   : out std_logic;  -- Enable for Pipeline Registers

	-- Third Stage Control Signals
	RM, WM, EN3		   : out std_logic;  -- R/W for Data Memory and Enable for Data Memory and Out Register
	S3				   : out std_logic); -- Multiplexer selector 
end CU_HW;

architecture Beh of CU_HW is
	constant NOpcodes: integer := 15;
  	constant LUT: array(0 to NOpcodes-1) of std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0) := (); -- TODO define this LUT!
 
begin  

  


end Beh;
