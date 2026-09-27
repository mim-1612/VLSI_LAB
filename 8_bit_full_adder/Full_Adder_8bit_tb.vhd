
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_8bit_tb is
end Full_Adder_8bit_tb;

architecture Behavioral of Full_Adder_8bit_tb is

    component Full_Adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC_VECTOR(7 downto 0);
            Cout : out STD_LOGIC
        );
    end component;

    signal A    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal B    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal Cin  : STD_LOGIC := '0';
    signal Sum  : STD_LOGIC_VECTOR(7 downto 0);
    signal Cout : STD_LOGIC;

begin

    UUT: Full_Adder_8bit
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            Sum  => Sum,
            Cout => Cout
        );

    stimulus: process
    begin

        -- Test 1: 0 + 0 + 0
        A <= "00000000";
        B <= "00000000";
        Cin <= '0';
        wait for 10 ns;

        -- Test 2: 1 + 1
        A <= "00000001";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 3: 5 + 3
        A <= "00000101";
        B <= "00000011";
        Cin <= '0';
        wait for 10 ns;

        -- Test 4: 15 + 10
        A <= "00001111";
        B <= "00001010";
        Cin <= '0';
        wait for 10 ns;

        -- Test 5: 100 + 50
        A <= "01100100";
        B <= "00110010";
        Cin <= '0';
        wait for 10 ns;

        -- Test 6: 127 + 1
        A <= "01111111";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 7: 255 + 1
        A <= "11111111";
        B <= "00000001";
        Cin <= '0';
        wait for 10 ns;

        -- Test 8: 255 + 255
        A <= "11111111";
        B <= "11111111";
        Cin <= '0';
        wait for 10 ns;

        -- Test 9: 10 + 20 + Cin
        A <= "00001010";
        B <= "00010100";
        Cin <= '1';
        wait for 10 ns;

        -- Test 10: Maximum + Maximum + Cin
        A <= "11111111";
        B <= "11111111";
        Cin <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;