library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_FlipFlop_TB is
-- Testbench has no ports
end SR_FlipFlop_TB;

architecture Behavioral of SR_FlipFlop_TB is
    -- Component declaration for the Unit Under Test (UUT)
    component SR_FlipFlop
        Port ( 
            S : in STD_LOGIC;
            R : in STD_LOGIC;
            CLK : in STD_LOGIC;
            Q : out STD_LOGIC;
            Q_BAR : out STD_LOGIC
        );
    end component;
    
    -- Inputs
    signal S : STD_LOGIC := '0';
    signal R : STD_LOGIC := '0';
    signal CLK : STD_LOGIC := '0';
    
    -- Outputs
    signal Q : STD_LOGIC;
    signal Q_BAR : STD_LOGIC;
    
    -- Clock period definition
    constant CLK_PERIOD : time := 10 ps;
    
begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: SR_FlipFlop port map (
        S => S,
        R => R,
        CLK => CLK,
        Q => Q,
        Q_BAR => Q_BAR
    );
    
    -- Clock process
    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_PERIOD/2;
        CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Stimulus process
    stim_proc: process
    begin
        S <= '0';
        R <= '0';
        wait for CLK_PERIOD*2;
        
        S <= '1';
        R <= '0';
        wait for CLK_PERIOD*2;

        S <= '0';
        R <= '0';
        wait for CLK_PERIOD*2;
        
        S <= '0';
        R <= '1';
        wait for CLK_PERIOD*2;

        S <= '0';
        R <= '0';
        wait for CLK_PERIOD*2;
        
        S <= '1';
        R <= '1';
        wait for CLK_PERIOD*2;
        
        S <= '1';
        R <= '0';
        wait for CLK_PERIOD*2;
       
        wait;
    end process;
    
end Behavioral;