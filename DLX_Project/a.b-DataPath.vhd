library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

entity DP is
	port 
		(rst, clk: in std_logic;
		 reg_ALU_en, reg_LMD_en: in std_logic;
         RF_en, RF_rd1, RF_rd2, RF_wr : in std_logic;
		 reg_delay1_en, reg_delay2_en, reg_delay3_en: in std_logic;
         IF_en, Waddr_sel, A_en, B_en, Imm_en : in std_logic;
		 ALUinA_sel, ALUinB_sel: in std_logic;
		 ALUop_sel: in std_logic_vector (OPCSIZE-1 downto 0);
		 Branch_sel: in std_logic;
		 WB_sel: in std_logic;
		 D_Mem_out: in std_logic_vector (DATASIZE-1 downto 0);
		 D_Mem_addr, D_Mem_data: out std_logic_vector (DATASIZE-1 downto 0));
end DP;

architecture structural of DP is

		component Mux2to1 is
			generic 
				(N: integer := DATASIZE );
			port
				(in1, in2: in std_logic_vector (N-1 downto 0);
				 sel: in std_logic;
				 output: out std_logic_vector (N-1 downto 0)); 
		end component Mux2to1;

		component ALU is
			generic
				(N: integer := DATASIZE);
			port 
				(inA, inB: in std_logic_vector (N-1 downto 0);
				 op_sel: in std_logic_vector (OPCSIZE-1 downto 0);
				 output: out std_logic_vector (N-1 downto 0));
		end component ALU;

		component D_Reg is
			generic
				(N: integer := DATASIZE );
			port
				(clk, rst, en: in std_logic;
				 D: in std_logic_vector (N-1 downto 0);
				 Q: out std_logic_vector (N-1 downto 0));
		end component D_Reg;

        component NPC_adder is
            generic
            (
                N : integer := DATASIZE;  --register number of bits
                I : integer := 4    --instruction length
            );
            port
            (
                PC : in std_logic_vector(N-1 downto 0); --input
                NPC : out std_logic_vector(N-1 downto 0) --output
            );
        end component;

        component IRAM is
            generic 
            (
              RAM_DEPTH : integer := 48;
              I_SIZE : integer := 32
            );
            port 
            (
              Rst  : in  std_logic;
              Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
              Dout : out std_logic_vector(I_SIZE - 1 downto 0)
            );
        end component;

        component SignExtender is
            generic 
            (
                N : integer := 16;  --number of input bits
                M : integer := 32  --number of output bits, should be greater than N
            );
            port
            (
               I: in std_logic_vector(N-1 downto 0);  --input
               O: out std_logic_vector(M-1 downto 0)   --output
            );
        end component;

        component register_file is
            generic
            (
               NData : integer := DATASIZE;
               NRegs : integer := 32; 
               NAddr : integer := 5
            );
            port 
            (
                CLK     : in  std_logic;
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
        end component;

        --- INSTRUCTION FETCH SIGNALS ---
                
        signal reg_PC_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_PC_out : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_IR_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_IR_out : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_NPC_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_NPC_out : std_logic_vector (DATASIZE-1 downto 0);

        --- INSTRUCTION DECODE SIGNALS ---
        
		signal reg_delay1_in : std_logic_vector (DATASIZE-1 downto 0); -- delay registers to postpone Write address arrival to RF
		signal reg_delay1_out : std_logic_vector (DATASIZE-1 downto 0);
		signal reg_delay2_in : std_logic_vector (DATASIZE-1 downto 0);
		signal reg_delay2_out : std_logic_vector (DATASIZE-1 downto 0);
		signal reg_delay3_in : std_logic_vector (DATASIZE-1 downto 0);
		signal reg_delay3_out : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_A_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_A_out : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_B_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_B_out : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_Imm_in : std_logic_vector (DATASIZE-1 downto 0);
        signal reg_Imm_out : std_logic_vector (DATASIZE-1 downto 0);

		--- EXECUTION STAGE SIGNALS ---

		signal ALU_inA : std_logic_vector (DATASIZE-1 downto 0); 
		signal ALU_inB : std_logic_vector (DATASIZE-1 downto 0); 
		signal ALU_out_bus : std_logic_vector (DATASIZE-1 downto 0); 
		signal reg_ALU_out : std_logic_vector (DATASIZE-1 downto 0); 
		
		--- MEMORY STAGE SIGNALS ---
		
		signal reg_LMD_out: std_logic_vector (DATASIZE-1 downto 0); 

		--- WRITEBACK SIGNALS ---	

		signal WB_out: std_logic_vector (DATASIZE-1 downto 0);

	begin

        --- INSTRUCTION FETCH ---
        
        --PC, NPC, IR
        PC :  D_Reg port map(clk, rst, IF_en, reg_PC_in, reg_PC_out);
        NPC : D_Reg port map(clk, rst, IF_en, reg_NPC_in, reg_NPC_out);
        IR :  D_Reg port map(clk, rst, IF_en, reg_IR_in, reg_IR_out);

        --NPC adder
        NPC_add : NPC_adder port map(reg_PC_out, reg_NPC_in);
    
        --Instruction memory
        IMEM : IRAM port map(rst, reg_PC_out, reg_IR_in);

        --- INSTRUCTION DECODE ---

		-- write address selector and delay registers
		Mux_Waddr : Mux2to1 port map (in1 => reg_IR_out(15 downto 11), in2 => reg_IR_out(20 downto 16), sel => Waddr_sel, output => reg_delay1_in);
		DelayReg1 : D_Reg port map(clk, rst, reg_delay1_en, reg_delay1_in, reg_delay1_out);
		reg_delay2_in <= reg_delay1_out;
		DelayReg2 : D_Reg port map(clk, rst, reg_delay2_en, reg_delay2_in, reg_delay2_out);
		reg_delay3_in <= reg_delay2_out;
		DelayReg3 : D_Reg port map(clk, rst, reg_delay3_en, reg_delay3_in, reg_delay3_out);

        --register file
        RF : register_file port map(clk, rst, RF_en, rf_rd1, rf_rd2, rf_wr, reg_delay3_out, reg_IR_out(25 downto 21), reg_IR_out(20 downto 16), WB_out, reg_A_in, reg_B_in);

        --Op registers
        reg_A : D_Reg port map(clk, rst, A_en, reg_A_in, reg_A_out);
        reg_B : D_Reg port map(clk, rst, B_en, reg_B_in, reg_B_out);

        --sign extender
        Sign_ext : SignExtender port map(reg_IR_out(15 downto 0), reg_Imm_in);

        --Imm register
        Imm_reg : D_Reg port map(clk, rst, Imm_en, reg_Imm_in, reg_Imm_out);

		--- EXECUTION STAGE ---

		Mux_ALUinA: Mux2to1 port map (in1 => reg_NPC_out, in2 => reg_A_out, sel => ALUinA_sel, output => ALU_inA);
		Mux_ALUinB: Mux2to1 port map (in1 => reg_B_out, in2 => reg_Imm_out, sel => ALUinB_sel, output => ALU_inB);
		ALU_Int : ALU port map (inA => ALU_inA, inB => ALU_inB, op_sel => ALUop_sel, output => ALU_out_bus);
		reg_ALU: D_Reg port map (rst => rst, clk => clk, en => reg_ALU_en, D => ALU_out_bus, Q => reg_ALU_out);

		--- MEMORY STAGE ---

		-- Data Memory is defined in a separate entity
		D_Mem_addr <= reg_ALU_out;
		D_Mem_data <= reg_B_out;
		LMD : D_Reg port map (rst => rst, clk => clk, en => reg_LMD_en, D => D_Mem_out, Q => reg_LMD_out);

        --Branch mux  --fixed to process always the next instruction
        Mux_branch: Mux2to1 port map (in1 => reg_NPC_out, in2 => reg_ALU_out, sel => Branch_sel, output => reg_PC_in);

		--- WRITEBACK STAGE ---

		Mux_WB: Mux2to1 port map (in1 => reg_LMD_out, in2 => reg_ALU_out, sel => WB_sel, output => WB_out);

end structural;
