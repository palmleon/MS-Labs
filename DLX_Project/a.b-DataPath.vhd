library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity DP is
	port 
		(rst, clk: in std_logic;
		 reg_ALU_en, reg_LMD_en: in std_logic;
		 ALUinA_sel, ALUinB_sel: in std_logic;
		 ALU_op_sel: in std_logic_vector (OPCSIZE-1 downto 0);
		 WB_sel: in std_logic;
		 DataMem_out: in std_logic_vector (DATASIZE-1 downto 0);
		 DataMem_addr, DataMem_data: out std_logic_vector (DATASIZE-1 downto 0));
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

		signal reg_NPC_out, reg_A_out, reg_B_out, reg_imm: std_logic_vector (DATASIZE-1 downto 0);
 
		--- EXECUTION STAGE SIGNALS ---

		signal ALU_inA, ALU_inB, ALU_out_bus, reg_ALU_out: std_logic_vector (DATASIZE-1 downto 0); 
		
		--- MEMORY STAGE SIGNALS ---
		
		signal reg_LMD_out: std_logic_vector (DATASIZE-1 downto 0); 

		--- WRITEBACK SIGNALS ---	

		signal WB_out_bus: std_logic_vector (DATASIZE-1 downto 0);

	begin

		--- EXECUTION STAGE ---

		-- TODO branch management datapath 
		Mux_ALUinA: Mux2to1 port map (in1 => reg_NPC_out, in2 => reg_A_out, sel => ALUinA_sel, output => ALU_inA);
		Mux_ALUinB: Mux2to1 port map (in1 => reg_B_out, in2 => reg_imm, sel => ALUinB_sel, output => ALU_inB);
		ALU : ALU port map (inA => ALU_inA, inB => ALU_inB, op_sel => ALU_op_sel, output => ALU_out_bus);
		reg_ALU: D_Reg port map (rst => rst, clk => clk, en => reg_ALU_en, D => ALU_out_bus, Q => reg_ALU_out);

		--- MEMORY STAGE ---

		-- Data Memory is defined in a separate entity
		DataMem_addr <= reg_ALU_out;
		DataMem_data <= reg_B_out;
		LMD : D_Reg port map (rst => rst, clk => clk, en => reg_LMD_en, D => DataMem_out, Q => reg_LMD_out);

		--- WRITEBACK STAGE ---

		Mux_WB: Mux2to1 port map (in1 => reg_LMD_out, in2 => reg_ALU_out, sel => WB_sel, output => WB_out_bus);

end structural;
