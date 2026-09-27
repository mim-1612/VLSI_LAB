library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_1bit is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end Full_Adder_1bit;

architecture Structural of Full_Adder_1bit is

    component NAND_gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal N1, N2, N3, N4, N5, N6, N7, N8 : STD_LOGIC;
    signal X1 : STD_LOGIC;

begin

    -- X1 = A XOR B using NAND gates
    U1: NAND_gate port map(A, B, N1);
    U2: NAND_gate port map(A, N1, N2);
    U3: NAND_gate port map(B, N1, N3);
    U4: NAND_gate port map(N2, N3, X1);

    -- Sum = X1 XOR Cin
    U5: NAND_gate port map(X1, Cin, N4);
    U6: NAND_gate port map(X1, N4, N5);
    U7: NAND_gate port map(Cin, N4, N6);
    U8: NAND_gate port map(N5, N6, Sum);

    -- Cout = (A.B) + (X1.Cin)
    U9: NAND_gate port map(A, B, N7);
    U10: NAND_gate port map(X1, Cin, N8);
    U11: NAND_gate port map(N7, N8, Cout);

end Structural;