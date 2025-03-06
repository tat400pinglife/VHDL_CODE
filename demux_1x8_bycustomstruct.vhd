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
-- CREATED		"Wed Feb 26 12:55:21 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY demux_1x8_bycustomstruct IS 
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
END demux_1x8_bycustomstruct;

ARCHITECTURE bdf_type OF demux_1x8_bycustomstruct IS 

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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst14 : demux_1x2_structural
PORT MAP(A => A,
		 Input_1 => Input_3,
		 S0 => SYNTHESIZED_WIRE_0,
		 S1 => SYNTHESIZED_WIRE_1);


b2v_inst16 : demux_1x4_structural
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 Input_1 => Input_1,
		 Input_2 => Input_2,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3);


b2v_inst17 : demux_1x4_structural
PORT MAP(A => SYNTHESIZED_WIRE_1,
		 Input_1 => Input_1,
		 Input_2 => Input_2,
		 S0 => S4,
		 S1 => S5,
		 S2 => S6,
		 S3 => S7);


END bdf_type;