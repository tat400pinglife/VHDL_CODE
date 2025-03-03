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
-- CREATED		"Sun Mar 02 10:08:43 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \8x1mult\ IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		F :  IN  STD_LOGIC;
		G :  IN  STD_LOGIC;
		H :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S2 :  IN  STD_LOGIC;
		S3 :  IN  STD_LOGIC;
		output :  OUT  STD_LOGIC
	);
END \8x1mult\;

ARCHITECTURE bdf_type OF \8x1mult\ IS 

SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_5 <= A AND SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_7 <= B AND SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_21 AND S3;


SYNTHESIZED_WIRE_20 <= NOT(S1);



output <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_6 <= C AND SYNTHESIZED_WIRE_20 AND S2 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_8 <= D AND SYNTHESIZED_WIRE_20 AND S2 AND S3;


SYNTHESIZED_WIRE_10 <= E AND S1 AND SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_9 <= F AND S1 AND SYNTHESIZED_WIRE_21 AND S3;


SYNTHESIZED_WIRE_11 <= G AND S1 AND S2 AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_12 <= H AND S1 AND S2 AND S3;


SYNTHESIZED_WIRE_22 <= NOT(S3);



SYNTHESIZED_WIRE_21 <= NOT(S2);



END bdf_type;