library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_gate is
	port
	(
		a: in std_logic;
		b: in std_logic;
		c: out std_logic
	);
end AND_gate;


architecture AND_gate_dataflow_arch of AND_gate is
begin
c <= a and b;
end AND_gate_dataflow_arch;

