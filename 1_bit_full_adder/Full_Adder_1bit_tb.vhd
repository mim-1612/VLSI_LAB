
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_1bit_tb is
end Full_Adder_1bit_tb;

architecture Behavioral of Full_Adder_1bit_tb is

    component Full_Adder_1bit
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    signal A    : STD_LOGIC := '0';
    signal B    : STD_LOGIC := '0';
    signal Cin  : STD_LOGIC := '0';
    signal Sum  : STD_LOGIC;
    signal Cout : STD_LOGIC;

begin

    UUT: Full_Adder_1bit
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            Sum  => Sum,
            Cout => Cout
        );

    stimulus: process
    begin

        -- Case 1: 000
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- Case 2: 001
        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        -- Case 3: 010
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        -- Case 4: 011
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- Case 5: 100
        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- Case 6: 101
        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        -- Case 7: 110
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        -- Case 8: 111
        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;
