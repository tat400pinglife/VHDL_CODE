library ieee;
use ieee.std_logic_1164.all;

entity tb_encoder_8to3 is
end tb_encoder_8to3;

architecture test of tb_encoder_8to3 is
	component encoder_8to3
		port(
			y0: in std_logic;
			y1: in std_logic;
			y2: in std_logic;
			y3: in std_logic;
			y4: in std_logic;
			y5: in std_logic;
			y6: in std_logic;
			y7: in std_logic;
			a0: out std_logic;
			a1: out std_logic;
			a2: out std_logic;
			v: out std_logic
		);
	end component;
	
	signal y0, y1, y2, y3, y4, y5, y6, y7 : std_logic := '0';
	signal a0, a1, a2, v : std_logic;

begin

	uut: encoder_8to3 port map (
		y0, y1, y2, y3, y4, y5, y6, y7,
		a0, a1, a2, v
	);
	
	process
	begin
		wait for 10 ps;
		y0 <= '1'; wait for 10 ps;
		y1 <= '1'; wait for 10 ps;
		y2 <= '1'; wait for 10 ps;
		y3 <= '1'; wait for 10 ps;
		y4 <= '1'; wait for 10 ps;
		y5 <= '1'; wait for 10 ps;
		y6 <= '1'; wait for 10 ps;
		y7 <= '1'; wait for 10 ps;
		wait;
	end process;
end test;



