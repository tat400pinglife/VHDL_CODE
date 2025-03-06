library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TRIPLE_AND_gate is
	port
	(
		a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		d: out std_logic
	);
end TRIPLE_AND_gate;


architecture TRIPLE_AND_gate_dataflow_arch of TRIPLE_AND_gate is
begin
d <= a and b and c;
end TRIPLE_AND_gate_dataflow_arch;