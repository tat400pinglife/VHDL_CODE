-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Wed Feb 26 15:20:43 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY demux_1x2 IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		Input_1 :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC
	);
END demux_1x2;

ARCHITECTURE bdf_type OF demux_1x2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= NOT(Input_1);



S0 <= A AND SYNTHESIZED_WIRE_0;


S1 <= Input_1 AND A;


END bdf_type;