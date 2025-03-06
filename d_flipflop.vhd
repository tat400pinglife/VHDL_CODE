library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
	port (
		CLK, D : in std_logic;
		Q : out std_logic
	);
end d_flipflop;

architecture behavior of d_flipflop is
begin
	process (CLK)
		begin
			if (CLK'event and CLK = '1') then
				Q <= D;
			end if;
	
	end process;
end behavior;