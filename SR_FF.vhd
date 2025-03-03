library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_FlipFlop is
    Port ( 
        S : in STD_LOGIC; 
        R : in STD_LOGIC;  
        CLK : in STD_LOGIC; 
        Q : out STD_LOGIC; 
        Q_BAR : out STD_LOGIC 
    );
end SR_FlipFlop;

architecture Behavioral of SR_FlipFlop is
    signal Q_temp : STD_LOGIC := '0'; 
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if (S = '0' and R = '0') then
                Q_temp <= Q_temp;
            elsif (S = '0' and R = '1') then
                Q_temp <= '0';
            elsif (S = '1' and R = '0') then
                Q_temp <= '1';
            elsif (S = '1' and R = '1') then
                Q_temp <= 'X';
            end if;
        end if;
    end process;
   
    Q <= Q_temp;
    Q_BAR <= not Q_temp;
    
end Behavioral;
