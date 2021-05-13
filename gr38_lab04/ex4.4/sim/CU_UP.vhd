library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.myTypes.all;

entity CU_UP is
    generic 
    (
        FUNC_SIZE     : integer := FUNC_SIZE;      --func Field Size for R-Type instructions
        OP_CODE_SIZE  : integer := OP_CODE_SIZE;   --single OpCode Size
        N_OPCODE      : integer := N_OPCODE;       --number of different OpCode
        ALU_CTRL_SIZE : integer := ALU_CTRL_SIZE   --number of control signals for ALU management
    );
    port
    (
        Clk         : in  std_logic;  --clock
        Rst         : in  std_logic;  --reset

        OPCODE      : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
        FUNC        : in  std_logic_vector(FUNC_SIZE - 1 downto 0);

        EN_S1       : out std_logic;  --global enable of Stage1
        RF_RD1      : out std_logic;  --RF read enable on read port 1
        RF_RD2      : out std_logic;  --RF read enable on read port 2
        
        EN_S2       : out std_logic;  --global enable of Stage2
        MUX_SEL1    : out std_logic;  --MUX selector INP1 REG_A
        MUX_SEL2    : out std_logic;  --MUX selector INP2 REG_B
        ALU1        : out std_logic;  --ALU control signals
        ALU2        : out std_logic;
        
        EN_S3       : out std_logic;  --global enable of Stage3
        RF_WR1      : out std_logic;  --RF write enable on write port
        MEM_RD      : out std_logic;  --memory read-out enable
        MEM_WR      : out std_logic;  --memory write-in enable
        MUX_SEL3    : out std_logic   --MUX selector ALU_OUT MEM_OUT
    );
end entity;

architecture beh of CU_UP is
    constant cw_size   : integer := 13;   --control word size
    constant uC_mem_size : integer := 46; --microcode mem size
                                                                                    --1bit is for validity check     
    type uC_array is array (integer range 0 to uC_mem_size - 1) of std_logic_vector(cw_size downto 0);
    type addr_array is array (integer range 0 to N_OPCODE - 1) of unsigned(integer(ceil(log(real(N_OPCODE)))) - 1 downto 0);
    type alu_array is array (integer range 0 to N_RTYPE - 1) of std_logic_vector(ALU_CTRL_SIZE - 1 downto 0);

    --microcode
    signal uC_mem : uC_array := ("00000000000001",  --NOP
                                 "11100000000000",  --R_type (stage1)
                                 "00011011000000",  --R_type (stage2)
                                 "00000000010011",  --R_type (stage3)
                                 "10100000000000",  --ADDI1
                                 "00010000000000",  --
                                 "00000000010011",  --
                                 "10100000000000",  --SUBI1
                                 "00010001000000",  --
                                 "00000000010011",  --
                                 "10100000000000",  --ANDI1
                                 "00010010000000",  --
                                 "00000000010011",  --
                                 "10100000000000",  --ORI1
                                 "00010011000000",  --
                                 "00000000010011",  --
                                 "11000000000000",  --ADDI2
                                 "00011100000000",  --
                                 "00000000010011",  --
                                 "11000000000000",  --SUBI2
                                 "00011101000000",  --
                                 "00000000010011",  --
                                 "11000000000000",  --ANDI2
                                 "00011110000000",  --
                                 "00000000010011",  --
                                 "11000000000000",  --ORI2
                                 "00011111000000",  --
                                 "00000000010011",  --
                                 "11000000000000",  --MOV
                                 "00011100000000",  --
                                 "00000000010011",  --
                                 "10000000000000",  --S_REG1
                                 "00010110000000",  --
                                 "00000000010011",  --
                                 "10000000000000",  --S_REG2
                                 "00010110000000",  --
                                 "00000000010011",  --
                                 "11100000000000",  --S_MEM2
                                 "00011100000000",  --
                                 "00000000100101",  --
                                 "10100000000000",  --L_MEM1
                                 "00010000000000",  --
                                 "00000000111001",  --
                                 "11000000000000",  --L_MEM2
                                 "00011100000000",  --
                                 "00000000111001"   --
                                 );
    
    --address table
    signal addr_mem : addr_array :=   (     to_unsigned(0, 3),  --NOP
                                            to_unsigned(1, 3),  --R_Type 
                                            to_unsigned(4, 3),  --ADDI1
                                            to_unsigned(7, 3),  --SUBI1
                                            to_unsigned(10, 3), --ANDI1
                                            to_unsigned(13, 3), --ORI1
                                            to_unsigned(16, 3), --ADDI2
                                            to_unsigned(19, 3), --SUBI2
                                            to_unsigned(22, 3), --ANDI2
                                            to_unsigned(25, 3), --ORI2
                                            to_unsigned(28, 3), --MOV
                                            to_unsigned(31, 3), --S_REG1
                                            to_unsigned(34, 3), --S_REG2
                                            to_unsigned(37, 3), --S_MEM2
                                            to_unsigned(40, 3), --L_MEM1
                                            to_unsigned(43, 3)  --L_MEM2
                                            );

    --alu control signals table, it helps reducing the microcode lenght
    signal alu_ctrl : alu_array := ("00",
                                    "01",
                                    "10",
                                    "11");

    --CW signal and microPC signal definition
    signal cw   : std_logic_vector(cw_size downto 0);
    signal uPC  : unsigned(integer(ceil(log(real(N_OPCODE)))) - 1 downto 0);

    begin
      --signal assignment to output
      EN_S1       <= cw(0);
      RF_RD1      <= cw(1);
      RF_RD2      <= cw(2);

      EN_S2       <= cw(3);
      MUX_SEL1    <= cw(4);
      MUX_SEL2    <= cw(5);

      EN_S3       <= cw(8);
      RF_WR1      <= cw(9);
      MEM_RD      <= cw(10);
      MEM_WR      <= cw(11);
      MUX_SEL2    <= cw(12);

    --process to update the uPC
    process (CLK)
    begin
        if rising_edge(clk) then
            --if reset is rised then the uPC will point to the reset line of microcode
            if (RST = '1') then
                uPC <= (others => '0');
            else
                if cw(cw'length-1) = '1' then  --if the validity bit is '1' then the instruction is terminated
                    uPC <= addr_mem(to_integer(unsigned(OPCODE)));  --update uPC value to the next uInstruction to be executed
                else
                    uPC <= uPC + 1;  --else, increment it to continue the execution of the current instruction
                end if;
            end if;
            --update the CW value to the one pointed by the uPC
            cw <= uC_mem(to_integer(unsigned(uPC)));
        end if;
    end process;

    --assigne the right value for the ALU control signals
    process (OPCODE, FUNC)
    begin  --process ALU_OP_CODE_P
        if OPCODE = RTYPE then
            --if it is an R_type the definition of ALU signals are taken from the alu_ctrl memory
            ALU1    <= alu_ctrl(to_integer(unsigned(FUNC)))(0);
            ALU2    <= alu_ctrl(to_integer(unsigned(FUNC)))(1);
        else
            --if it is an I_type the definition is the one already present in the microcode
            ALU1    <= cw(6);
            ALU2    <= cw(7);
        end if;
    end process;
end architecture;
