library ieee;
use ieee.std_logic_1164.all;

entity tb_d_flipflop is
end tb_d_flipflop;

architecture test of tb_d_flipflop is
	component d_flipflop
		port (
			CLK, D : in std_logic;
			Q : out std_logic
		);
	end component;
	
	signal CLK, D : std_logic := '0';
	signal Q : std_logic;

begin

	uut: d_flipflop port map (
		CLK, D, Q
	);
	
	process
	begin
		wait for 10 ps;
		D <= '1'; wait for 10 ps;
		D <= '0'; wait for 10 ps;
		D <= '1'; wait for 10 ps;
		CLK <= '1'; wait for 10 ps;
		D <= '0'; wait for 10 ps;
		CLK <= '0'; wait for 10 ps;
		CLK <= '1'; wait for 10 ps;
		CLK <= '0'; wait for 10 ps;
		wait;
	end process;
end test;



