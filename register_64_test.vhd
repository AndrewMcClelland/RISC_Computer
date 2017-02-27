-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Feb 06 09:16:35 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY register_64_test IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		register_in :  IN  STD_LOGIC;
		q :  IN  STD_LOGIC_VECTOR(63 DOWNTO 0);
		output :  OUT  STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END register_64_test;

ARCHITECTURE bdf_type OF register_64_test IS 

COMPONENT register_64
	PORT(clk : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 register_in : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : register_64
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in,
		 q => q,
		 output => output);


END bdf_type;