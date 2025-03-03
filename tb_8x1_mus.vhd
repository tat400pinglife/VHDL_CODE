LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY tb_8x1mult IS
END tb_8x1mult;

ARCHITECTURE behavior OF tb_8x1mult IS 

    COMPONENT custom_mux
        PORT(
            A, B, C, D, E, F, G, H : IN CHARACTER;
            S1, S2, S3 : IN STD_LOGIC;
            output : OUT CHARACTER
        );
    END COMPONENT;
    
    SIGNAL A, B, C, D, E, F, G, H : CHARACTER;
    SIGNAL S1, S2, S3 : STD_LOGIC := '0';
    SIGNAL output : CHARACTER;
    
BEGIN

    uut: custom_mux PORT MAP (
        A => A, B => B, C => C, D => D, E => E, F => F, G => G, H => H,
        S1 => S1, S2 => S2, S3 => S3,
        output => output
    );

    process
    begin
        -- Set distinct character values
        A <= 'A'; B <= 'B'; C <= 'C'; D <= 'D'; E <= 'E'; F <= 'F'; G <= 'G'; H <= 'H';
        
        S1 <= '0'; S2 <= '0'; S3 <= '0';
        wait for 10 ps;
        
        S3 <= '1';
        wait for 10 ps;
        
        S2 <= '1'; S3 <= '0';
        wait for 10 ps;
        
        S3 <= '1';
        wait for 10 ps;
        
        S1 <= '1'; S2 <= '0'; S3 <= '0';
        wait for 10 ps;
        
        S3 <= '1';
        wait for 10 ps;
        
        S2 <= '1'; S3 <= '0';
        wait for 10 ps;
        
        S3 <= '1';
        wait for 10 ps;
        
        wait;
    end process;
    
END behavior;

