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
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Feb 26 19:58:55 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY phase1 IS 
	PORT
	(
		R0out :  IN  STD_LOGIC;
		R1out :  IN  STD_LOGIC;
		R2out :  IN  STD_LOGIC;
		R3out :  IN  STD_LOGIC;
		R4out :  IN  STD_LOGIC;
		R5out :  IN  STD_LOGIC;
		R6out :  IN  STD_LOGIC;
		R7out :  IN  STD_LOGIC;
		R8out :  IN  STD_LOGIC;
		R9out :  IN  STD_LOGIC;
		R10out :  IN  STD_LOGIC;
		R11out :  IN  STD_LOGIC;
		R12out :  IN  STD_LOGIC;
		R13out :  IN  STD_LOGIC;
		R14out :  IN  STD_LOGIC;
		R15out :  IN  STD_LOGIC;
		HIout :  IN  STD_LOGIC;
		LOout :  IN  STD_LOGIC;
		Zlowout :  IN  STD_LOGIC;
		Zhighout :  IN  STD_LOGIC;
		PCout :  IN  STD_LOGIC;
		MDRout :  IN  STD_LOGIC;
		In_portout :  IN  STD_LOGIC;
		Cout :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Read_input :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		register_in0 :  IN  STD_LOGIC;
		register_in1 :  IN  STD_LOGIC;
		register_in2 :  IN  STD_LOGIC;
		register_in3 :  IN  STD_LOGIC;
		register_in4 :  IN  STD_LOGIC;
		register_in5 :  IN  STD_LOGIC;
		register_in6 :  IN  STD_LOGIC;
		register_in7 :  IN  STD_LOGIC;
		register_in8 :  IN  STD_LOGIC;
		register_in9 :  IN  STD_LOGIC;
		register_in10 :  IN  STD_LOGIC;
		register_in11 :  IN  STD_LOGIC;
		register_in_In_port :  IN  STD_LOGIC;
		register_in_MDR :  IN  STD_LOGIC;
		register_in_C :  IN  STD_LOGIC;
		register_in_PC :  IN  STD_LOGIC;
		register_in_Zhigh :  IN  STD_LOGIC;
		register_in_Zlow :  IN  STD_LOGIC;
		register_in_LO :  IN  STD_LOGIC;
		register_in_HI :  IN  STD_LOGIC;
		register_in15 :  IN  STD_LOGIC;
		register_in14 :  IN  STD_LOGIC;
		register_in13 :  IN  STD_LOGIC;
		register_in12 :  IN  STD_LOGIC;
		register_in_Y :  IN  STD_LOGIC;
		register_in_Z :  IN  STD_LOGIC;
		register_in_IR :  IN  STD_LOGIC;
		register_in_MAR :  IN  STD_LOGIC;
		ALU_out :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		BusMuxOut :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		C_sign_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		cs :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		HI_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		In_port_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		IR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		LO_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MAR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Mdatain :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDR_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		PC_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R0_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R10_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R11_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R12_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R13_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R14_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R15_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R1_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R2_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R3_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R4_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R5_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R6_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R7_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R8_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R9_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		S_out :  INOUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Z_in :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		Zhigh_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zhigh_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END phase1;

ARCHITECTURE bdf_type OF phase1 IS 

COMPONENT register_32
	PORT(clear : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 register_in : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT encoder_32_to_5
	PORT(R0out : IN STD_LOGIC;
		 R1out : IN STD_LOGIC;
		 R2out : IN STD_LOGIC;
		 R3out : IN STD_LOGIC;
		 R4out : IN STD_LOGIC;
		 R5out : IN STD_LOGIC;
		 R6out : IN STD_LOGIC;
		 R7out : IN STD_LOGIC;
		 R8out : IN STD_LOGIC;
		 R9out : IN STD_LOGIC;
		 R10out : IN STD_LOGIC;
		 R11out : IN STD_LOGIC;
		 R12out : IN STD_LOGIC;
		 R13out : IN STD_LOGIC;
		 R14out : IN STD_LOGIC;
		 R15out : IN STD_LOGIC;
		 HIout : IN STD_LOGIC;
		 LOout : IN STD_LOGIC;
		 Zlowout : IN STD_LOGIC;
		 Zhighout : IN STD_LOGIC;
		 PCout : IN STD_LOGIC;
		 MDRout : IN STD_LOGIC;
		 In_portout : IN STD_LOGIC;
		 Cout : IN STD_LOGIC;
		 S : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bus_mux_32_to_1
	PORT(BusMuxIn_HI : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_In_port : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_LO : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_MDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_PC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R10x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R11x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R12x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R13x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R14x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R15x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_R9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_Zhigh : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BusMuxIn_Zlow : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 C_sign_extended : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 BusMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cs : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 C : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

COMPONENT z_split
	PORT(Zin : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 Zhigh : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Zlow : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mdmux
	PORT(Read_input : IN STD_LOGIC;
		 BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Mdatain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 MDMux_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register_64
	PORT(clk : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 register_in : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	C_sign_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	In_port_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_C_sign_extended : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => register_in_C,
		 q => C_sign_in,
		 output => C_sign_out);


b2v_HI : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_HI,
		 q => BusMuxOut,
		 output => HI_out);


b2v_In_port : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => register_in_In_port,
		 q => In_port_in,
		 output => In_port_out);


b2v_inst : encoder_32_to_5
PORT MAP(R0out => R0out,
		 R1out => R1out,
		 R2out => R2out,
		 R3out => R3out,
		 R4out => R4out,
		 R5out => R5out,
		 R6out => R6out,
		 R7out => R7out,
		 R8out => R8out,
		 R9out => R9out,
		 R10out => R10out,
		 R11out => R11out,
		 R12out => R12out,
		 R13out => R13out,
		 R14out => R14out,
		 R15out => R15out,
		 HIout => HIout,
		 LOout => LOout,
		 Zlowout => Zlowout,
		 Zhighout => Zhighout,
		 PCout => PCout,
		 MDRout => MDRout,
		 In_portout => In_portout,
		 Cout => Cout,
		 S => S_out);


b2v_inst1 : bus_mux_32_to_1
PORT MAP(BusMuxIn_HI => HI_out,
		 BusMuxIn_In_port => In_port_out,
		 BusMuxIn_LO => LO_out,
		 BusMuxIn_MDR => MDR_out,
		 BusMuxIn_PC => PC_out,
		 BusMuxIn_R0 => R0_out,
		 BusMuxIn_R1 => R1_out,
		 BusMuxIn_R10x => R10_out,
		 BusMuxIn_R11x => R11_out,
		 BusMuxIn_R12x => R12_out,
		 BusMuxIn_R13x => R13_out,
		 BusMuxIn_R14x => R14_out,
		 BusMuxIn_R15x => R15_out,
		 BusMuxIn_R2 => R2_out,
		 BusMuxIn_R3 => R3_out,
		 BusMuxIn_R4 => R4_out,
		 BusMuxIn_R5 => R5_out,
		 BusMuxIn_R6 => R6_out,
		 BusMuxIn_R7 => R7_out,
		 BusMuxIn_R8 => R8_out,
		 BusMuxIn_R9 => R9_out,
		 BusMuxIn_Zhigh => Zhigh_out,
		 BusMuxIn_Zlow => Zlow_out,
		 C_sign_extended => C_sign_out,
		 S => S_out,
		 BusMuxOut => BusMuxOut);


b2v_inst3 : alu
PORT MAP(clk => clk,
		 A => SYNTHESIZED_WIRE_0,
		 B => BusMuxOut,
		 cs => cs,
		 C => ALU_out);


b2v_inst4 : z_split
PORT MAP(Zin => Z_in,
		 Zhigh => Zhigh_in,
		 Zlow => Zlow_in);


b2v_inst6 : mdmux
PORT MAP(Read_input => Read_input,
		 BusMuxOut => BusMuxOut,
		 Mdatain => Mdatain,
		 MDMux_out => MDR_in);


b2v_IR : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => register_in_IR,
		 q => BusMuxOut,
		 output => IR_out);


b2v_LO : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_LO,
		 q => BusMuxOut,
		 output => LO_out);


b2v_MAR : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => register_in_MAR,
		 q => BusMuxOut,
		 output => MAR_out);


b2v_MDR : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_MDR,
		 q => MDR_in,
		 output => MDR_out);


b2v_PC : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_PC,
		 q => BusMuxOut,
		 output => PC_out);


b2v_R0 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in0,
		 q => BusMuxOut,
		 output => R0_out);


b2v_R1 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in1,
		 q => BusMuxOut,
		 output => R1_out);


b2v_R10 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in10,
		 q => BusMuxOut,
		 output => R10_out);


b2v_R11 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in11,
		 q => BusMuxOut,
		 output => R11_out);


b2v_R12 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in12,
		 q => BusMuxOut,
		 output => R12_out);


b2v_R13 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in13,
		 q => BusMuxOut,
		 output => R13_out);


b2v_R14 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in14,
		 q => BusMuxOut,
		 output => R14_out);


b2v_R15 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in15,
		 q => BusMuxOut,
		 output => R15_out);


b2v_R2 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in2,
		 q => BusMuxOut,
		 output => R2_out);


b2v_R3 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in3,
		 q => BusMuxOut,
		 output => R3_out);


b2v_R4 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in4,
		 q => BusMuxOut,
		 output => R4_out);


b2v_R5 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in5,
		 q => BusMuxOut,
		 output => R5_out);


b2v_R6 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in6,
		 q => BusMuxOut,
		 output => R6_out);


b2v_R7 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in7,
		 q => BusMuxOut,
		 output => R7_out);


b2v_R8 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in8,
		 q => BusMuxOut,
		 output => R8_out);


b2v_R9 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in9,
		 q => BusMuxOut,
		 output => R9_out);


b2v_Y : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_Y,
		 q => BusMuxOut,
		 output => SYNTHESIZED_WIRE_0);


b2v_Z : register_64
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_Z,
		 q => ALU_out,
		 output => Z_in);


b2v_Zhigh : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_Zhigh,
		 q => Zhigh_in,
		 output => Zhigh_out);


b2v_Zlow : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => register_in_Zlow,
		 q => Zlow_in,
		 output => Zlow_out);


END bdf_type;