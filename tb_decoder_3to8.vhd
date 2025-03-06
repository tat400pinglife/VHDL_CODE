library ieee;
use ieee.std_logic_1164.all;

entity tb_decoder_3to8 is
end tb_decoder_3to8;

architecture test of tb_decoder_3to8 is
	component decoder_3to8
		port (
			y0: out std_logic;
			y1: out std_logic;
			y2: out std_logic;
			y3: out std_logic;
			y4: out std_logic;
			y5: out std_logic;
			y6: out std_logic;
			y7: out std_logic;
			a0: in std_logic;
			a1: in std_logic;
			a2: in std_logic
		);
	end component;
	
	signal y0, y1, y2, y3, y4, y5, y6, y7 : std_logic;
	signal a0, a1, a2 : std_logic := '0';

begin

	uut: decoder_3to8 port map (
		y0, y1, y2, y3, y4, y5, y6, y7,
		a0, a1, a2
	);
	
	process
	begin
		wait for 10 ps;
		a0<='0'; a1<='0'; a2<='1'; wait for 10 ps;
		a0<='0'; a1<='1'; a2<='0'; wait for 10 ps;
		a0<='0'; a1<='1'; a2<='1'; wait for 10 ps;
		a0<='1'; a1<='0'; a2<='0'; wait for 10 ps;
		a0<='1'; a1<='0'; a2<='1'; wait for 10 ps;
		a0<='1'; a1<='1'; a2<='0'; wait for 10 ps;
		a0<='1'; a1<='1'; a2<='1'; wait for 10 ps;
		wait;
	end process;
end test;



