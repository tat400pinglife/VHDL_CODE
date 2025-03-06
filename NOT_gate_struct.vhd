library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NOT_gate is
port(i: in std_logic;
	  o: out std_logic
	  );
end NOT_gate;


architecture NOT_gate_dataflow_arch of NOT_gate is
begin
o <=  not i;
end NOt_gate_dataflow_arch;

