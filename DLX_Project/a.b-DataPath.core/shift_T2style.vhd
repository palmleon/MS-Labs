library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity T2shifter is
    port
    (
        R1, R2 : in std_logic_vector(32-1 downto 0); --inputs
        Z : out std_logic_vector(32-1 downto 0);     --output
        op : in std_logic_vector(1 downto 0)         --operations  -- "00" = sll
    );                                                             -- "01" = srl
end entity;                                                        -- "11" = sra

architecture structural of T2shifter is
    component MUX8TO1 is
        generic
        (
            N: integer := 32
        );
        port 
        (
            IN0 : in std_logic_vector(N-1 downto 0);
            IN1 : in std_logic_vector(N-1 downto 0);
            IN2 : in std_logic_vector(N-1 downto 0);
            IN3 : in std_logic_vector(N-1 downto 0);
            IN4 : in std_logic_vector(N-1 downto 0);
            IN5 : in std_logic_vector(N-1 downto 0);
            IN6 : in std_logic_vector(N-1 downto 0);
            IN7 : in std_logic_vector(N-1 downto 0);
            SEL : in std_logic_vector(2 downto 0);
            Y : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component MUX4TO1 is
        generic
        (
            N: integer := 32
        );
        port 
        (
            IN0 : in std_logic_vector(N-1 downto 0);
            IN1 : in std_logic_vector(N-1 downto 0);
            IN2 : in std_logic_vector(N-1 downto 0);
            IN3 : in std_logic_vector(N-1 downto 0);
            SEL : in std_logic_vector(1 downto 0);
            Y : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component incrementer is
        generic
        (
            N : integer := 5
        );
        port
        (
            in1 : in std_logic_vector(N-1 downto 0); --input
            out1 : out std_logic_vector(N-1 downto 0); --output
            C_out : out std_logic
        );
    end component;
    
    component MUX2TO1 is
        generic
        (
            N: integer := 5
        );
        port 
        (
            IN0 : in std_logic_vector(N-1 downto 0);
            IN1 : in std_logic_vector(N-1 downto 0);
            SEL : in std_logic;
            Y : out std_logic_vector (N-1 downto 0)
        );
    end component;

    component ThermometricDecoder32 is
        port 
        (
            IN1 : in std_logic_vector(4 downto 0);
            OUT1 : out std_logic_vector(31 downto 0)
        );
    end component;

    signal CA1 : std_logic_vector(4 downto 0);
    signal CA2 : std_logic_vector(4 downto 0);
    signal n_rot : std_logic_vector(4 downto 0);

    signal c_grain0 : std_logic_vector(31 downto 0);
    signal c_grain1 : std_logic_vector(31 downto 0);
    signal c_grain2 : std_logic_vector(31 downto 0);
    signal c_grain3 : std_logic_vector(31 downto 0);
    signal c_grain4 : std_logic_vector(31 downto 0);
    signal c_grain5 : std_logic_vector(31 downto 0);
    signal c_grain6 : std_logic_vector(31 downto 0);
    signal c_grain7 : std_logic_vector(31 downto 0);

    signal c_grain : std_logic_vector(31 downto 0);

    signal f_grain0 : std_logic_vector(31 downto 0);
    signal f_grain1 : std_logic_vector(31 downto 0);
    signal f_grain2 : std_logic_vector(31 downto 0);
    signal f_grain3 : std_logic_vector(31 downto 0);

    signal f_grain : std_logic_vector(31 downto 0);  --result after rotate operation
    
    signal sl_left  : std_logic_vector(31 downto 0);
    signal sl_right : std_logic_vector(31 downto 0);
    signal sa_right : std_logic_vector(31 downto 0);

    signal mask : std_logic_vector(31 downto 0);

    signal sign_ext : std_logic_vector(31 downto 0);

begin
    --evaluate if left or right operation
    CA1 <= NOT R2(4 downto 0);
    inc : INCREMENTER port map (in1 => CA1, out1 => CA2);
    
    mux2 : MUX2TO1 port map (R2(4 downto 0), CA2, op(0), n_rot);

    --rotate left by default - coarse grain
    c_grain0 <= R1;
    c_grain1 <= R1(27 downto 0) & R1(31 downto 28);
    c_grain2 <= R1(23 downto 0) & R1(31 downto 24);
    c_grain3 <= R1(19 downto 0) & R1(31 downto 20);
    c_grain4 <= R1(15 downto 0) & R1(31 downto 16);
    c_grain5 <= R1(11 downto 0) & R1(31 downto 12);
    c_grain6 <= R1(7 downto 0) & R1(31 downto 8);
    c_grain7 <= R1(3 downto 0) & R1(31 downto 4);

    --course grain rotate mux8to1
    mux8 : MUX8TO1 port map (c_grain0, c_grain1, c_grain2, c_grain3, c_grain4, c_grain5, c_grain6, c_grain7, n_rot(4 downto 2), c_grain);

    --rotate left - fine grain
    f_grain0 <= c_grain;
    f_grain1 <= c_grain(30 downto 0) & c_grain(31);
    f_grain2 <= c_grain(29 downto 0) & c_grain(31 downto 30);
    f_grain3 <= c_grain(28 downto 0) & c_grain(31 downto 29);

    --fine graing rotate mux4to1
    mux4 : MUX4TO1 port map (f_grain0, f_grain1, f_grain2, f_grain3, n_rot(1 downto 0), f_grain);

    --calculate masks for other shift/rotate types
    dec : ThermometricDecoder32 port map (n_rot, mask);

    --evaluate shift types: sll, srl, sra
    sl_left  <= f_grain AND (NOT mask);
    sl_right <= f_grain AND mask;
    sa_right <= (f_grain AND mask) OR (sign_ext AND (NOT mask));

    process(R1(31))
    begin
        for i in 0 to 31 loop
            sign_ext(i) <= R1(31);
        end loop;
    end process;

    --mux to take the right shift
    muxOP : MUX4TO1 port map (sl_left, sl_right, (others => '0'), sa_right, op(1 downto 0), Z);

end architecture;