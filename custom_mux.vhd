LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY custom_mux IS
    PORT (
        A, B, C, D, E, F, G, H : IN CHARACTER;
        S1, S2, S3 : IN STD_LOGIC;
        output : OUT CHARACTER
    );
END custom_mux;

ARCHITECTURE behavior OF custom_mux IS
BEGIN
    PROCESS(A, B, C, D, E, F, G, H, S1, S2, S3)
    VARIABLE sel : STD_LOGIC_VECTOR(2 DOWNTO 0); -- I could've just had the S inputs be one as a vector (2 downto 0)
    BEGIN
        sel := (S1 & S2 & S3);
        CASE sel IS
            WHEN "000" => output <= A;
            WHEN "001" => output <= B;
            WHEN "010" => output <= C;
            WHEN "011" => output <= D;
            WHEN "100" => output <= E;
            WHEN "101" => output <= F;
            WHEN "110" => output <= G;
            WHEN "111" => output <= H;
            WHEN OTHERS => output <= 'X';  -- Undefined case
        END CASE;
    END PROCESS;
END behavior;

