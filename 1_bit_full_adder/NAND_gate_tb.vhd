library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND_gate_tb is
end NAND_gate_tb;

architecture Behavioral of NAND_gate_tb is

    component NAND_gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    uut: NAND_gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    stimulus: process
    begin

        -- Case 1: A=0, B=0
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- Case 2: A=0, B=1
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- Case 3: A=1, B=0
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- Case 4: A=1, B=1
        A <= '1';
        B <= '1';
        wait for 10 ns;

        wait;

    end process;

end Behavioral;