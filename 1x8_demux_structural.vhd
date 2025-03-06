LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY demux_1x8_structural IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		Input_3 :  IN  STD_LOGIC;
		Input_1 :  IN  STD_LOGIC;
		Input_2 :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		S4 :  OUT  STD_LOGIC;
		S5 :  OUT  STD_LOGIC;
		S6 :  OUT  STD_LOGIC;
		S7 :  OUT  STD_LOGIC
	);
END demux_1x8_structural;

architecture structural of demux_1x8_structural is
COMPONENT demux_1x2_structural
	PORT(A : IN STD_LOGIC;
		 Input_1 : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT demux_1x4_structural
	PORT(A : IN STD_LOGIC;
		 Input_1 : IN STD_LOGIC;
		 Input_2 : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC
	);
END COMPONENT;

signal last_zero, last_one : std_logic; -- signals from 1x2 De-Mult that controls the most significant bit of output

begin

init : demux_1x2_structural
PORT MAP(
		 A => A,
		 Input_1 => Input_3,
		 S0 => last_zero,
		 S1 => last_one
	);
	
max_three : demux_1x4_structural
PORT MAP(
		 A => last_zero,
		 Input_1 => Input_1,
		 Input_2 => Input_2,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3
		 );
		 
four_to_Seven : demux_1x4_structural
PORT MAP(
		 A => last_one,
		 Input_1 => Input_1,
		 Input_2 => Input_2,
		 S0 => S4,
		 S1 => S5,
		 S2 => S6,
		 S3 => S7
		 );
		 
end structural;