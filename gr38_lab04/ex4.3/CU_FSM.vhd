use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity CU_FSM is
    generic 
    (
        OP_CODE_SIZE  : integer := 6;     --Op Code Size
        FUNC_SIZE     : integer := 11;    --Func Field Size for R-Type instructions
        N_OPS         : integer := 15
    );
    port 
    (
        CLK         : in  std_logic;  --Clock
        RST         : in  std_logic;  --Reset
        
        OPCODE      : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
        FUNC        : in  std_logic_vector(FUNC_SIZE - 1 downto 0);
        
        EN_S1       : out std_logic;  --Global enable of Stage1
        RF_RD1      : out std_logic;  --RF read enable on read port 1
        RF_RD2      : out std_logic;  --RF read enable on read port 2
        
        EN_S2       : out std_logic;  --Global enable of Stage2
        MUX_SEL1    : out std_logic;  --MUX selector INP1 REG_A
        MUX_SEL2    : out std_logic;  --MUX selector INP2 REG_B
        ALU1        : out std_logic;  --ALU control signals
        ALU2        : out std_logic;
        
        EN_S3       : out std_logic;  --Global enable of Stage3
        RF_WR1      : out std_logic;  --RF write enable on write port
        MEM_RD      : out std_logic;  --Memory read-out enable
        MEM_WR      : out std_logic;  --Memory write-in enable
        MUX_SEL2    : out std_logic   --MUX selector ALU_OUT MEM_OUT
    );
end entity;

architecture beh of CU_FSM is
    constant cw_size   : integer := 13;
    type cw_const is array(integer range 0 to N_OPS - 1) of std_logic_vector(cw_size -1 downto 0);
    --constat matrix to assign values in the decode stage rapidly
    constant cw_matrix : cw_const := ("1111100001001", --ADD
                                      "1111100101001", --SUB
                                      "1111101001001", --AND
                                      "1111101101001", --OR
                                      "1011000001001", --ADDI1
                                      "1011000101001", --SUBI1
                                      "1011001001001", --ANDI1
                                      "1011001101001", --ORI1
                                      "1101110001001", --ADDI2
                                      "1101110101001", --SUBI2
                                      "1101111001001", --ANDI2
                                      "1101111101001", --ORI2
                                      "1101110001001", --MOV
                                      "1001011001001", --S_REG1
                                      "1001011001001", --S_REG2
                                      "1111110010010", --S_MEM2
                                      "1011000011100", --L_MEM1
                                      "1101110011100"  --L_MEM2
                                        );

    --fsm support type and signals
    type type_state is (reset, decode, execute, memory);
    signal curr_state, next_state : type_state;

    --signals to assign CW to output 
    signal stage1           : std_logic_vector(2 downto 0);
    signal stage2, stage3   : std_logic_vector(4 downto 0);

    --signal containig the current CW updated during the decode stage
    signal cw   : std_logic_vector(cw_size - 1 downto 0);

    --signal to output assignments
    EN_S1       <= stage1(2)
    RF_RD1      <= stage1(1)
    RF_RD2      <= stage1(0)

    EN_S2       <= stage2(4)
    MUX_SEL1    <= stage2(3)
    MUX_SEL2    <= stage2(2)
    ALU1        <= stage2(1)
    ALU2        <= stage2(0)
    
    EN_S3       <= stage3(4)
    RF_WR1      <= stage1(3)
    MEM_RD      <= stage3(2)
    MEM_WR      <= stage3(1)
    MUX_SEL2    <= stage3(0)
    
    begin
        --process to update the state
        process(CLK)
        begin
            if rising_edge(CLK) then
                if (RST = '1') then
                    curr_state <= reset;
                else
                    curr_state <= next_state;
                end if;
            end if;
        end process;

        process(curr_state)
        begin
            --default
            stage1 <= (others => '0');
            stage2 <= (others => '0');
            stage3 <= (others => '0');

            case curr_state is
                when reset =>
                    next_state <= decode;

                --during decode state OPCODE and FUNC are compared to defined ones and
                --the relative CW is then assigned to perform a specific intruction flow
                when decode =>
                    next_state <= execute;
                    stage1 <= cw(cw_size - 1 downto cw_size - 3)
                    case OPCODE is
                        when R_type =>
                            case FUNC is
                                when R_ADD =>
                                    cw <= cw_matrix(0);
                                when R_SUB =>
                                    cw <= cw_matrix(1);
                                when R_AND =>
                                    cw <= cw_matrix(2);
                                when R_OR =>
                                    cw <= cw_matrix(3);
                            end case;
    
                        when ADDI1 =>
                            cw <= cw_matrix(4);
                            
                        when SUBI1 =>
                            cw <= cw_matrix(5);

                        when ANDI1 =>
                            cw <= cw_matrix(6);

                        when ORI1 =>
                            cw <= cw_matrix(7);

                        when ADDI2 =>
                            cw <= cw_matrix(8);

                        when SUBI2 =>
                            cw <= cw_matrix(9);

                        when ANDI2 =>
                            cw <= cw_matrix(10);

                        when ORI2 =>
                            cw <= cw_matrix(11);

                        when MOV =>
                            cw <= cw_matrix(12);

                        when S_REG1 =>
                            cw <= cw_matrix(13);

                        when S_REG2 =>
                            cw <= cw_matrix(14);

                        when S_MEM2 =>
                            cw <= cw_matrix(15);

                        when L_MEM1 =>
                            cw <= cw_matrix(16);

                        when L_MEM2 =>
                            cw <= cw_matrix(17);
                    end case;

                --during execute the stage2 signals are assigned to the relative ones in the CW
                when execute =>
                    next_state <= memory;
                    stage2 <= cw(cw_size - 4 downto cw_size - 8)
                
                --during memory the stage3 signals are assigned to the relative ones in the CW
                when memory =>
                    next_state <= decode;
                    stage3 <= cw(cw_size - 9 downto 0)

            end case;
        end process;

end architecture;