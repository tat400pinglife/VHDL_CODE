library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY demux_1x2_structural IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		Input_1 :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC
	);
END demux_1x2_structural;

architecture structural of demux_1x2_structural is

	component NOT_gate is
		port 
		(
			i: in std_logic;
			o: out std_logic
		);
	end component;

	component AND_gate is
		port 
		(
			a: in std_logic;
			b: in std_logic;
			c: out std_logic
		);
	end component;
	
 
	signal inv_input_1, sel_S0, sel_S1: std_logic; --signals for output of gates to be used for other gates
 
 begin
 
inv_inst : NOT_gate
	port map
	(
		i => Input_1,
		o => inv_input_1
	);
	
and_invert : AND_gate
	port map
	(
		a => A,
		b => inv_input_1,
		c => sel_S0
	);
	
and_input : AND_gate
	port map
	(
		a => A,
		b => Input_1,
		c => sel_S1
	);
	
S0 <= sel_S0;
S1 <= sel_S1;

end structural;
 