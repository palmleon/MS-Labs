library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity DLX is
  generic (
    IR_SIZE      : integer := DATASIZE;       -- Instruction Register Size
	DATASIZE	 : integer := DATASIZE -- Datasize
    );       -- ALU_OPC_SIZE if explicit ALU Op Code Word Size
  port (
    Clk : in std_logic;
    Rst : in std_logic);                -- Active Low
end DLX;


-- This architecture is currently not complete
-- it just includes:
-- instruction register (complete)
-- program counter (complete)
-- instruction ram memory (complete)
-- control unit (UNCOMPLETE)
--
architecture DLX_rtl of DLX is

 --------------------------------------------------------------------
 -- Components Declaration
 --------------------------------------------------------------------
  
  --Instruction Ram
  component IRAM is
	  generic (
		RAM_DEPTH : integer := IRAMDEPTH;
		I_SIZE : integer := IR_SIZE);
	  port (
		Rst  : in  std_logic;
		Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
		Dout : out std_logic_vector(I_SIZE - 1 downto 0)
		);
  end component IRAM;

  -- Data Ram 
	component DRAM is
	  generic (
		RAMDEPTH : integer := DRAMDEPTH;
		DATASIZE : integer := DATASIZE);
	  port (
		rst, clk  : in  std_logic; 
		en, wr: in std_logic;
		addr, din : in  std_logic_vector(DATASIZE - 1 downto 0);
		dout : out std_logic_vector(DATASIZE - 1 downto 0)
		);
	end component DRAM;

  -- Datapath
	component DP is
		port 
			(rst, clk: in std_logic;
			 PC_out: out std_logic_vector (DATASIZE-1 downto 0);
			 IMem_out : in std_logic_vector (DATASIZE-1 downto 0);
			 Opcode: out std_logic_vector (OPCSIZE-1 downto 0);
			 Func: out std_logic_vector (FUNCSIZE-1 downto 0);
			 reg_ALU_en, reg_LMD_en: in std_logic;
		     RF_en, RF_rd1, RF_rd2, RF_wr : in std_logic;
			 reg_delay1_en, reg_delay2_en, reg_delay3_en: in std_logic;
		     IF_en, Waddr_sel, A_en, B_en, Imm_en : in std_logic;
			 ALUinA_sel, ALUinB_sel: in std_logic;
			 ALUop_sel: in std_logic_vector (ALUOPCSIZE-1 downto 0);
			 Branch_sel: in std_logic;
			 WB_sel: in std_logic;
			 D_Mem_out: in std_logic_vector (DATASIZE-1 downto 0);
			 D_Mem_addr, D_Mem_data: out std_logic_vector (DATASIZE-1 downto 0));
	end component DP;

  -- Control Unit
  component CU is
  port (		 
       RF_en  		 : out std_logic;        -- enables the register file (combination of the RF_en at Decode Stage and at WB Stage)
       -- FIRST PIPE STAGE OUTPUTS (IF)
	   IF_en  		 : out std_logic;		 -- enables the PC, the NPC and the Instruction Memory
       -- SECOND PIPE STAGE OUTPUTS (DEC)
	   RF_rd1 		 : out std_logic;        -- enables the read port 1 of the register file
       RF_rd2 		 : out std_logic;        -- enables the read port 2 of the register file
	   waddr_sel 	 : out std_logic;		 -- selects the write address input of the register file (it will reach the reg.file 3 clk cycles later)
       reg_delay1_en : out std_logic;		 -- enables the first delay register for the write address input
	   A_en			 : out std_logic;		 -- enables the A register
	   B_en			 : out std_logic;		 -- enables the B register
	   Imm_en		 : out std_logic;		 -- enables the Imm register
       -- THIRD PIPE STAGE OUTPUTS (EXE)
	   ALUinA_sel	 : out std_logic;		 -- selects the first ALU input
	   ALUinB_sel	 : out std_logic;		 -- selects the second ALU input
	   ALUop_sel	 : out std_logic_vector(ALUOPCSIZE-1 downto 0); -- selects the ALU operation to perform
	   reg_delay2_en : out std_logic;		 -- enables the second delay register for the write address input
	   reg_ALU_en	 : out std_logic;		 -- enables the ALU register
	   -- FOURTH PIPE STAGE OUTPUTS (MEM)
	   branch_sel	 : out std_logic;		 -- selects whether a branch is taken or not
	   reg_delay3_en : out std_logic;		 -- enables the third delay register for the write address input
	   DMem_en		 : out std_logic;        -- enables the read-out of the memory
       DMem_wr		 : out std_logic;        -- enables the write-in of the memory
	   reg_LMD_en	 : out std_logic;		 -- enables the Load Memory Data register
	   -- FIFTH PIPE STAGE OUTPUTS (WB)
	   WB_sel		 : out std_logic;		 -- selector for the WB mux
	   RF_wr		 : out std_logic;		 -- enables the write port of the register file
       -- INPUTS
       OPCODE : in std_logic_vector(OPCSIZE - 1 downto 0);
       FUNC   : in std_logic_vector(FUNCSIZE - 1 downto 0);              
       Clk 	  : in std_logic;
       Rst    : in std_logic);               -- Active High
	end component CU;


  ----------------------------------------------------------------
  -- Signals Declaration
  ----------------------------------------------------------------

  -- Instruction Ram Bus signals
  signal IMem_out : std_logic_vector(IR_SIZE - 1 downto 0);

  -- PC output to Instr. Memory
  signal PC_out : std_logic_vector(IR_SIZE - 1 downto 0);

  -- Datapath Bus signals (from/to Data Memory)
  signal DMem_out: std_logic_vector (DATASIZE - 1 downto 0);
  signal DMem_addr, DMem_data: std_logic_vector (DATASIZE - 1 downto 0);

  -- Datapath Bus signals (to Control Unit)
  signal Opcode: std_logic_vector (OPCSIZE-1 downto 0);
  signal Func: std_logic_vector (FUNCSIZE-1 downto 0);

  -- Control Unit Bus signals (to Datapath)
  signal RF_en 			: std_logic;
  signal IF_en 			: std_logic;
  signal RF_rd1 		: std_logic;        
  signal RF_rd2 		: std_logic;        
  signal waddr_sel 		: std_logic;		 
  signal reg_delay1_en 	: std_logic;		 
  signal A_en 			: std_logic;		
  signal B_en 			: std_logic;
  signal Imm_en			: std_logic;
  signal ALUinA_sel		: std_logic;
  signal ALUinB_sel		: std_logic;
  signal ALUop_sel		: std_logic_vector(ALUOPCSIZE-1 downto 0); 
  signal reg_delay2_en  : std_logic;
  signal reg_ALU_en	 	: std_logic;	
  signal branch_sel	 	: std_logic;
  signal reg_delay3_en  : std_logic;	
  signal DMem_en 		: std_logic;  
  signal DMem_wr 		: std_logic;  
  signal reg_LMD_en		: std_logic;
  signal WB_sel			: std_logic;
  signal RF_wr 			: std_logic;


  begin  -- DLX


    -- Instruction Ram Instantiation
    IRAM_I: IRAM
      port map (
          rst  => rst,
          addr => PC_out,
          dout => IMem_out);

	DRAM_I: DRAM
	  port map (
 		  rst => rst,
		  clk => clk,
		  en => DMem_en,
		  wr => DMem_wr,
		  addr => DMem_addr,
		  din => DMem_data,
		  dout => DMem_out);

	DP_I: DP
	  port map (
		  rst 			=> rst,
		  clk 			=> clk,
	 	  PC_out 		=> PC_out,
		  IMem_out		=> IMem_out,
		  Opcode 		=> Opcode,
		  Func 			=> Func,
		  reg_ALU_en 	=> reg_ALU_en, 
		  reg_LMD_en 	=> reg_LMD_en,
		  RF_en 		=> RF_en,
		  RF_rd1 		=> RF_rd1,
		  RF_rd2 		=> RF_rd2,
		  RF_wr 		=> RF_wr,
		  reg_delay1_en => reg_delay1_en,
		  reg_delay2_en => reg_delay2_en,
		  reg_delay3_en => reg_delay3_en,
		  IF_en 		=> IF_en,
		  Waddr_sel 	=> Waddr_sel,
		  A_en 			=> A_en,
		  B_en 			=> B_en,
		  Imm_en 		=> Imm_en,
		  ALUinA_sel 	=> ALUinA_sel,
		  ALUinB_sel 	=> ALUinB_sel,
		  ALUop_sel 	=> ALUop_sel,
		  Branch_sel 	=> Branch_sel,
		  WB_sel 		=> WB_sel,
		  D_Mem_out 	=> DMem_out,
		  D_Mem_addr 	=> DMem_addr,
		  D_Mem_data 	=> DMem_data);

    -- Control Unit Instantiation
    CU_I: CU
		port map (		 
		  RF_en  		 => RF_en,
		  IF_en  		 => IF_en,
	 	  RF_rd1 		 => RF_rd1,
		  RF_rd2 		 => RF_rd2,
		  waddr_sel 	 => waddr_sel,
		  reg_delay1_en  => reg_delay1_en, 
		  A_en			 => A_en,
		  B_en			 => B_en,
		  Imm_en		 => Imm_en,
	 	  ALUinA_sel	 => ALUinA_sel,
		  ALUinB_sel	 => ALUinB_sel,
		  ALUop_sel	 	 => ALUop_sel,
		  reg_delay2_en  => reg_delay2_en,
		  reg_ALU_en	 => reg_ALU_en,
		  branch_sel	 => branch_sel,
		  reg_delay3_en  => reg_delay3_en,
		  DMem_en		 => DMem_en,
		  DMem_wr		 => DMem_wr,
		  reg_LMD_en	 => reg_LMD_en,
		  WB_sel		 => WB_sel,
		  RF_wr	 		 => RF_wr,
		  OPCODE 		 => Opcode,
		  FUNC 			 => Func,            
		  Clk 			 => clk,
		  Rst 			 => rst);  
   
end dlx_rtl;
