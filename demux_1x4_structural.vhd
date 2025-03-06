library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY demux_1x4_structural IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		Input_1 :  IN  STD_LOGIC;
		Input_2 : IN STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 : OUT STD_LOGIC;
		S3 : OUt STD_LOGIc
	);
END demux_1x4_structural;

architecture structural of demux_1x4_structural is

	component NOT_gate is
		port 
		(
			i: in std_logic;
			o: out std_logic
		);
	end component;

	component TRIPLE_AND_gate is
		port 
		(
			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: out std_logic
		);
	 end component;
	
 
	signal inv_input_1, inv_input_2, out_00, out_01, out_10, out_11: std_logic; --signals for output of gates to be used for other gates
 
 begin
 
invert_1 : NOT_gate
	port map
	(
		i => Input_1,
		o => inv_input_1
	);
	
invert_2 : NOT_gate
	port map
	(
		i => Input_2,
		o => inv_input_2
	);

zero : TRIPLE_AND_gate
	port map
	(
		a => A,
		b => inv_input_1,
		c => inv_input_2,
		d => out_00
	);
	
one : TRIPLE_AND_gate
	port map
	(
		a => A,
		b => input_1,
		c => inv_input_2,
		d => out_01
	);

two : TRIPLE_AND_gate
	port map
	(
		a => A,
		b => inv_input_1,
		c => input_2,
		d => out_10
	);

three : TRIPLE_AND_gate
	port map
	(
		a => A,
		b => input_1,
		c => input_2,
		d => out_11
	);
S0 <= out_00;
S1 <= out_01;
s2 <= out_10;
s3 <= out_11;

end structural;
 