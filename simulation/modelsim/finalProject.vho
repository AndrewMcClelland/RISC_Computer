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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/12/2017 20:12:40"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder_32_to_5 IS
    PORT (
	R0out : IN std_logic;
	R1out : IN std_logic;
	R2out : IN std_logic;
	R3out : IN std_logic;
	R4out : IN std_logic;
	R5out : IN std_logic;
	R6out : IN std_logic;
	R7out : IN std_logic;
	R8out : IN std_logic;
	R9out : IN std_logic;
	R10out : IN std_logic;
	R11out : IN std_logic;
	R12out : IN std_logic;
	R13out : IN std_logic;
	R14out : IN std_logic;
	R15out : IN std_logic;
	HIout : IN std_logic;
	LOout : IN std_logic;
	Zlowout : IN std_logic;
	Zhighout : IN std_logic;
	PCout : IN std_logic;
	MDRout : IN std_logic;
	In_portout : IN std_logic;
	Cout : IN std_logic;
	S : OUT std_logic_vector(4 DOWNTO 0)
	);
END encoder_32_to_5;

-- Design Ports Information
-- S[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R9out	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R11out	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R10out	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R12out	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R13out	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R14out	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R8out	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R15out	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDRout	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In_portout	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zlowout	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zhighout	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOout	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HIout	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_32_to_5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R0out : std_logic;
SIGNAL ww_R1out : std_logic;
SIGNAL ww_R2out : std_logic;
SIGNAL ww_R3out : std_logic;
SIGNAL ww_R4out : std_logic;
SIGNAL ww_R5out : std_logic;
SIGNAL ww_R6out : std_logic;
SIGNAL ww_R7out : std_logic;
SIGNAL ww_R8out : std_logic;
SIGNAL ww_R9out : std_logic;
SIGNAL ww_R10out : std_logic;
SIGNAL ww_R11out : std_logic;
SIGNAL ww_R12out : std_logic;
SIGNAL ww_R13out : std_logic;
SIGNAL ww_R14out : std_logic;
SIGNAL ww_R15out : std_logic;
SIGNAL ww_HIout : std_logic;
SIGNAL ww_LOout : std_logic;
SIGNAL ww_Zlowout : std_logic;
SIGNAL ww_Zhighout : std_logic;
SIGNAL ww_PCout : std_logic;
SIGNAL ww_MDRout : std_logic;
SIGNAL ww_In_portout : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_S : std_logic_vector(4 DOWNTO 0);
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \S~91_combout\ : std_logic;
SIGNAL \R12out~input_o\ : std_logic;
SIGNAL \R15out~input_o\ : std_logic;
SIGNAL \MDRout~input_o\ : std_logic;
SIGNAL \Zlowout~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \R7out~input_o\ : std_logic;
SIGNAL \In_portout~input_o\ : std_logic;
SIGNAL \PCout~input_o\ : std_logic;
SIGNAL \Cout~input_o\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \LOout~input_o\ : std_logic;
SIGNAL \Zhighout~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \R9out~input_o\ : std_logic;
SIGNAL \R10out~input_o\ : std_logic;
SIGNAL \R11out~input_o\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \R6out~input_o\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \R0out~input_o\ : std_logic;
SIGNAL \R3out~input_o\ : std_logic;
SIGNAL \R1out~input_o\ : std_logic;
SIGNAL \R4out~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \R2out~input_o\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \R5out~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \R14out~input_o\ : std_logic;
SIGNAL \R8out~input_o\ : std_logic;
SIGNAL \R13out~input_o\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \S~92_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \S~89_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \S~90_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \HIout~input_o\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \S~88_combout\ : std_logic;
SIGNAL \ALT_INV_S~88_combout\ : std_logic;

BEGIN

ww_R0out <= R0out;
ww_R1out <= R1out;
ww_R2out <= R2out;
ww_R3out <= R3out;
ww_R4out <= R4out;
ww_R5out <= R5out;
ww_R6out <= R6out;
ww_R7out <= R7out;
ww_R8out <= R8out;
ww_R9out <= R9out;
ww_R10out <= R10out;
ww_R11out <= R11out;
ww_R12out <= R12out;
ww_R13out <= R13out;
ww_R14out <= R14out;
ww_R15out <= R15out;
ww_HIout <= HIout;
ww_LOout <= LOout;
ww_Zlowout <= Zlowout;
ww_Zhighout <= Zhighout;
ww_PCout <= PCout;
ww_MDRout <= MDRout;
ww_In_portout <= In_portout;
ww_Cout <= Cout;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S~88_combout\ <= NOT \S~88_combout\;

-- Location: LCCOMB_X30_Y16_N10
\S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = (\R2out~input_o\ & (!\R0out~input_o\ & (\S~0_combout\ & \S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2out~input_o\,
	datab => \R0out~input_o\,
	datac => \S~0_combout\,
	datad => \S~3_combout\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X32_Y19_N4
\S~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (!\S~20_combout\ & ((\PCout~input_o\ $ (!\In_portout~input_o\)) # (!\S~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCout~input_o\,
	datab => \In_portout~input_o\,
	datac => \S~18_combout\,
	datad => \S~20_combout\,
	combout => \S~21_combout\);

-- Location: LCCOMB_X31_Y19_N26
\S~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = (!\HIout~input_o\ & (\S~7_combout\ & (\LOout~input_o\ & \S~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HIout~input_o\,
	datab => \S~7_combout\,
	datac => \LOout~input_o\,
	datad => \S~16_combout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X30_Y18_N24
\S~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = (\S~21_combout\) # ((\S~22_combout\ & \S~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~22_combout\,
	datab => \S~21_combout\,
	datad => \S~6_combout\,
	combout => \S~23_combout\);

-- Location: LCCOMB_X30_Y18_N18
\S~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = ((!\S~26_combout\ & (!\S~24_combout\ & !\S~27_combout\))) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~26_combout\,
	datab => \S~24_combout\,
	datac => \S~8_combout\,
	datad => \S~27_combout\,
	combout => \S~28_combout\);

-- Location: LCCOMB_X30_Y18_N20
\S~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = (\S~28_combout\ & (\S~23_combout\ & ((!\S~29_combout\) # (!\S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~6_combout\,
	datab => \S~28_combout\,
	datac => \S~29_combout\,
	datad => \S~23_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X31_Y19_N0
\S~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = (!\R15out~input_o\ & (!\R14out~input_o\ & (\S~15_combout\ & \R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \S~15_combout\,
	datad => \R13out~input_o\,
	combout => \S~32_combout\);

-- Location: LCCOMB_X30_Y18_N6
\S~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = (\S~31_combout\) # ((!\S~26_combout\ & \S~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~31_combout\,
	datab => \S~26_combout\,
	datac => \S~32_combout\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X30_Y16_N30
\S~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = (!\R4out~input_o\ & \S~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R4out~input_o\,
	datad => \S~12_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X30_Y16_N4
\S~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = (!\R0out~input_o\ & (\S~0_combout\ & !\R2out~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R0out~input_o\,
	datac => \S~0_combout\,
	datad => \R2out~input_o\,
	combout => \S~47_combout\);

-- Location: LCCOMB_X30_Y18_N14
\S~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = (\S~56_combout\ & ((\S~58_combout\) # (!\S~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~57_combout\,
	datac => \S~56_combout\,
	datad => \S~58_combout\,
	combout => \S~59_combout\);

-- Location: LCCOMB_X32_Y19_N22
\S~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~72_combout\ = (\S~17_combout\) # ((!\Zhighout~input_o\) # (!\S~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \S~6_combout\,
	datad => \Zhighout~input_o\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X32_Y19_N8
\S~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~73_combout\ = (\S~17_combout\) # ((\Zhighout~input_o\) # (\MDRout~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Zhighout~input_o\,
	datad => \MDRout~input_o\,
	combout => \S~73_combout\);

-- Location: LCCOMB_X32_Y19_N2
\S~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~74_combout\ = (\PCout~input_o\ & (\In_portout~input_o\)) # (!\PCout~input_o\ & (!\S~73_combout\ & (\In_portout~input_o\ $ (\Cout~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCout~input_o\,
	datab => \In_portout~input_o\,
	datac => \S~73_combout\,
	datad => \Cout~input_o\,
	combout => \S~74_combout\);

-- Location: LCCOMB_X30_Y18_N16
\S~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~77_combout\ = (\S~55_combout\ & (((!\S~32_combout\ & !\S~26_combout\)) # (!\S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~55_combout\,
	datab => \S~8_combout\,
	datac => \S~32_combout\,
	datad => \S~26_combout\,
	combout => \S~77_combout\);

-- Location: LCCOMB_X30_Y18_N4
\S~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~91_combout\ = (\S~33_combout\) # ((!\S~26_combout\ & (!\S~24_combout\ & \S~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~33_combout\,
	datab => \S~26_combout\,
	datac => \S~24_combout\,
	datad => \S~36_combout\,
	combout => \S~91_combout\);

-- Location: IOIBUF_X30_Y29_N8
\R12out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R12out,
	o => \R12out~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\R15out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R15out,
	o => \R15out~input_o\);

-- Location: IOIBUF_X41_Y20_N1
\MDRout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDRout,
	o => \MDRout~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\Zlowout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Zlowout,
	o => \Zlowout~input_o\);

-- Location: IOOBUF_X41_Y18_N9
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~90_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~71_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S~88_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOIBUF_X30_Y0_N15
\R7out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R7out,
	o => \R7out~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\In_portout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_In_portout,
	o => \In_portout~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\PCout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCout,
	o => \PCout~input_o\);

-- Location: IOIBUF_X41_Y22_N22
\Cout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cout,
	o => \Cout~input_o\);

-- Location: LCCOMB_X32_Y19_N24
\S~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = (!\MDRout~input_o\ & (!\In_portout~input_o\ & (!\PCout~input_o\ & !\Cout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDRout~input_o\,
	datab => \In_portout~input_o\,
	datac => \PCout~input_o\,
	datad => \Cout~input_o\,
	combout => \S~6_combout\);

-- Location: IOIBUF_X41_Y19_N1
\LOout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOout,
	o => \LOout~input_o\);

-- Location: IOIBUF_X41_Y20_N15
\Zhighout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Zhighout,
	o => \Zhighout~input_o\);

-- Location: LCCOMB_X32_Y19_N18
\S~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = (!\Zlowout~input_o\ & !\Zhighout~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Zlowout~input_o\,
	datad => \Zhighout~input_o\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X31_Y19_N18
\S~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = (!\HIout~input_o\ & (\S~6_combout\ & (!\LOout~input_o\ & \S~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HIout~input_o\,
	datab => \S~6_combout\,
	datac => \LOout~input_o\,
	datad => \S~7_combout\,
	combout => \S~8_combout\);

-- Location: IOIBUF_X30_Y29_N1
\R9out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R9out,
	o => \R9out~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\R10out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R10out,
	o => \R10out~input_o\);

-- Location: IOIBUF_X41_Y23_N8
\R11out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R11out,
	o => \R11out~input_o\);

-- Location: LCCOMB_X31_Y17_N8
\S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = (!\R12out~input_o\ & (!\R9out~input_o\ & (!\R10out~input_o\ & !\R11out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \R9out~input_o\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X41_Y17_N1
\R6out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R6out,
	o => \R6out~input_o\);

-- Location: LCCOMB_X31_Y17_N24
\S~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = (\S~2_combout\ & (\S~1_combout\ & !\R6out~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datac => \S~1_combout\,
	datad => \R6out~input_o\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X31_Y17_N10
\S~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = (\S~47_combout\ & (\R7out~input_o\ & (\S~8_combout\ & \S~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~47_combout\,
	datab => \R7out~input_o\,
	datac => \S~8_combout\,
	datad => \S~48_combout\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X0_Y13_N15
\R0out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R0out,
	o => \R0out~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\R3out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R3out,
	o => \R3out~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\R1out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1out,
	o => \R1out~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\R4out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R4out,
	o => \R4out~input_o\);

-- Location: LCCOMB_X30_Y16_N8
\S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = (!\R5out~input_o\ & (!\R3out~input_o\ & (!\R1out~input_o\ & !\R4out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R5out~input_o\,
	datab => \R3out~input_o\,
	datac => \R1out~input_o\,
	datad => \R4out~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\S~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = (\S~2_combout\ & (\S~1_combout\ & (!\R7out~input_o\ & !\R6out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datab => \S~1_combout\,
	datac => \R7out~input_o\,
	datad => \R6out~input_o\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X30_Y16_N28
\S~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = (!\R2out~input_o\ & (\R0out~input_o\ & (\S~0_combout\ & \S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2out~input_o\,
	datab => \R0out~input_o\,
	datac => \S~0_combout\,
	datad => \S~3_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X30_Y16_N12
\S~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = (!\R5out~input_o\ & (!\R3out~input_o\ & (\R1out~input_o\ & !\R4out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R5out~input_o\,
	datab => \R3out~input_o\,
	datac => \R1out~input_o\,
	datad => \R4out~input_o\,
	combout => \S~39_combout\);

-- Location: IOIBUF_X41_Y14_N1
\R2out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2out,
	o => \R2out~input_o\);

-- Location: LCCOMB_X30_Y16_N14
\S~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = (\S~3_combout\ & (!\R0out~input_o\ & (\S~39_combout\ & !\R2out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~3_combout\,
	datab => \R0out~input_o\,
	datac => \S~39_combout\,
	datad => \R2out~input_o\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X30_Y16_N0
\S~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = (!\S~5_combout\ & (\S~40_combout\ & \S~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~5_combout\,
	datac => \S~40_combout\,
	datad => \S~8_combout\,
	combout => \S~41_combout\);

-- Location: IOIBUF_X30_Y0_N8
\R5out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R5out,
	o => \R5out~input_o\);

-- Location: LCCOMB_X30_Y16_N16
\S~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (!\R2out~input_o\ & (!\R0out~input_o\ & (!\R1out~input_o\ & \S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2out~input_o\,
	datab => \R0out~input_o\,
	datac => \R1out~input_o\,
	datad => \S~3_combout\,
	combout => \S~12_combout\);

-- Location: LCCOMB_X30_Y16_N2
\S~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\R4out~input_o\ & (!\R3out~input_o\ & (!\R5out~input_o\ & \S~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R4out~input_o\,
	datab => \R3out~input_o\,
	datac => \R5out~input_o\,
	datad => \S~12_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X30_Y16_N18
\S~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = (!\R4out~input_o\ & (!\R3out~input_o\ & (\R5out~input_o\ & \S~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R4out~input_o\,
	datab => \R3out~input_o\,
	datac => \R5out~input_o\,
	datad => \S~12_combout\,
	combout => \S~42_combout\);

-- Location: LCCOMB_X30_Y16_N20
\S~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = (\S~9_combout\ & (!\S~13_combout\ & (\S~42_combout\ & \S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~9_combout\,
	datab => \S~13_combout\,
	datac => \S~42_combout\,
	datad => \S~8_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X30_Y16_N24
\S~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = (\S~44_combout\ & (\R3out~input_o\ & (!\R5out~input_o\ & \S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~44_combout\,
	datab => \R3out~input_o\,
	datac => \R5out~input_o\,
	datad => \S~8_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X30_Y16_N26
\S~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = (\S~41_combout\) # ((\S~43_combout\) # ((\S~9_combout\ & \S~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~9_combout\,
	datab => \S~41_combout\,
	datac => \S~43_combout\,
	datad => \S~45_combout\,
	combout => \S~46_combout\);

-- Location: LCCOMB_X31_Y17_N28
\S~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = (!\R12out~input_o\ & (\R9out~input_o\ & (!\R10out~input_o\ & !\R11out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \R9out~input_o\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X30_Y16_N22
\S~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = (!\R2out~input_o\ & (\S~0_combout\ & (!\R7out~input_o\ & !\R0out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2out~input_o\,
	datab => \S~0_combout\,
	datac => \R7out~input_o\,
	datad => \R0out~input_o\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X31_Y17_N14
\S~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = (\S~2_combout\ & (!\R6out~input_o\ & (\S~34_combout\ & \S~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datab => \R6out~input_o\,
	datac => \S~34_combout\,
	datad => \S~10_combout\,
	combout => \S~35_combout\);

-- Location: IOIBUF_X35_Y29_N8
\R14out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R14out,
	o => \R14out~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\R8out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R8out,
	o => \R8out~input_o\);

-- Location: IOIBUF_X41_Y19_N22
\R13out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R13out,
	o => \R13out~input_o\);

-- Location: LCCOMB_X31_Y19_N16
\S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = (!\R15out~input_o\ & (!\R14out~input_o\ & (!\R8out~input_o\ & !\R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \R8out~input_o\,
	datad => \R13out~input_o\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X31_Y17_N4
\S~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = (\S~10_combout\ & (!\R6out~input_o\ & (!\R9out~input_o\ & \S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~10_combout\,
	datab => \R6out~input_o\,
	datac => \R9out~input_o\,
	datad => \S~2_combout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X31_Y17_N0
\S~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = (!\R12out~input_o\ & (\S~25_combout\ & (\R10out~input_o\ & !\R11out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \S~25_combout\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X31_Y18_N14
\S~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~92_combout\ = (\S~8_combout\ & ((\S~35_combout\) # ((\S~91_combout\ & !\S~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~91_combout\,
	datab => \S~35_combout\,
	datac => \S~27_combout\,
	datad => \S~8_combout\,
	combout => \S~92_combout\);

-- Location: LCCOMB_X31_Y19_N20
\S~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = (!\R15out~input_o\ & (!\R14out~input_o\ & (\R8out~input_o\ & !\R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \R8out~input_o\,
	datad => \R13out~input_o\,
	combout => \S~37_combout\);

-- Location: LCCOMB_X31_Y19_N6
\S~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = (!\R6out~input_o\ & (\S~1_combout\ & (\S~10_combout\ & \S~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R6out~input_o\,
	datab => \S~1_combout\,
	datac => \S~10_combout\,
	datad => \S~37_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X31_Y18_N26
\S~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~89_combout\ = (\S~30_combout\ & (((!\S~38_combout\)) # (!\S~8_combout\))) # (!\S~30_combout\ & (\S~92_combout\ & ((!\S~38_combout\) # (!\S~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~30_combout\,
	datab => \S~8_combout\,
	datac => \S~92_combout\,
	datad => \S~38_combout\,
	combout => \S~89_combout\);

-- Location: LCCOMB_X31_Y18_N16
\S~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = ((!\S~4_combout\ & !\S~5_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~4_combout\,
	datab => \S~5_combout\,
	datad => \S~8_combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X31_Y18_N2
\S~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = (\S~9_combout\ & (((!\S~11_combout\ & !\S~13_combout\)) # (!\S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~11_combout\,
	datab => \S~9_combout\,
	datac => \S~13_combout\,
	datad => \S~8_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X31_Y18_N12
\S~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~90_combout\ = (\S~46_combout\) # ((\S~14_combout\ & ((\S~49_combout\) # (\S~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~49_combout\,
	datab => \S~46_combout\,
	datac => \S~89_combout\,
	datad => \S~14_combout\,
	combout => \S~90_combout\);

-- Location: LCCOMB_X31_Y18_N20
\S~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = ((!\S~13_combout\ & !\S~42_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~13_combout\,
	datac => \S~42_combout\,
	datad => \S~8_combout\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X31_Y17_N12
\S~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = ((!\S~38_combout\ & !\S~35_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~8_combout\,
	datac => \S~38_combout\,
	datad => \S~35_combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X31_Y19_N4
\S~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = (\R6out~input_o\ & (\S~1_combout\ & (\S~10_combout\ & \S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R6out~input_o\,
	datab => \S~1_combout\,
	datac => \S~10_combout\,
	datad => \S~2_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X31_Y18_N6
\S~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = (!\S~49_combout\ & ((!\S~8_combout\) # (!\S~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~49_combout\,
	datac => \S~11_combout\,
	datad => \S~8_combout\,
	combout => \S~54_combout\);

-- Location: LCCOMB_X31_Y18_N24
\S~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = (\S~53_combout\ & (((!\S~59_combout\ & \S~55_combout\)) # (!\S~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~59_combout\,
	datab => \S~53_combout\,
	datac => \S~55_combout\,
	datad => \S~54_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X31_Y18_N18
\S~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = (\S~60_combout\) # ((\S~45_combout\) # ((\S~4_combout\ & \S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~4_combout\,
	datab => \S~60_combout\,
	datac => \S~8_combout\,
	datad => \S~45_combout\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X31_Y19_N22
\S~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = (\S~10_combout\ & (\S~1_combout\ & (!\R8out~input_o\ & !\R6out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~10_combout\,
	datab => \S~1_combout\,
	datac => \R8out~input_o\,
	datad => \R6out~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X31_Y19_N24
\S~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = (!\R15out~input_o\ & (!\R14out~input_o\ & (\S~15_combout\ & !\R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \S~15_combout\,
	datad => \R13out~input_o\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X31_Y19_N30
\S~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (\HIout~input_o\ & (\S~7_combout\ & (!\LOout~input_o\ & \S~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HIout~input_o\,
	datab => \S~7_combout\,
	datac => \LOout~input_o\,
	datad => \S~16_combout\,
	combout => \S~29_combout\);

-- Location: LCCOMB_X30_Y18_N0
\S~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = ((!\S~22_combout\ & !\S~29_combout\)) # (!\S~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~22_combout\,
	datac => \S~29_combout\,
	datad => \S~6_combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X31_Y17_N6
\S~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = (\R12out~input_o\ & (\S~25_combout\ & (!\R10out~input_o\ & !\R11out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \S~25_combout\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~26_combout\);

-- Location: LCCOMB_X30_Y18_N2
\S~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = ((!\S~32_combout\ & !\S~26_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~32_combout\,
	datab => \S~8_combout\,
	datac => \S~26_combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X30_Y18_N26
\S~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\S~55_combout\ & (\S~62_combout\ & (\S~57_combout\ & \S~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~55_combout\,
	datab => \S~62_combout\,
	datac => \S~57_combout\,
	datad => \S~53_combout\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X41_Y19_N8
\HIout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HIout,
	o => \HIout~input_o\);

-- Location: LCCOMB_X32_Y19_N12
\S~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = (\Zlowout~input_o\) # (((\LOout~input_o\) # (\HIout~input_o\)) # (!\S~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Zlowout~input_o\,
	datab => \S~16_combout\,
	datac => \LOout~input_o\,
	datad => \HIout~input_o\,
	combout => \S~17_combout\);

-- Location: LCCOMB_X32_Y19_N14
\S~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = (!\MDRout~input_o\ & (!\Zhighout~input_o\ & (!\S~17_combout\ & !\Cout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDRout~input_o\,
	datab => \Zhighout~input_o\,
	datac => \S~17_combout\,
	datad => \Cout~input_o\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X32_Y19_N6
\S~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = (\MDRout~input_o\ & (!\In_portout~input_o\ & (!\PCout~input_o\ & !\Cout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDRout~input_o\,
	datab => \In_portout~input_o\,
	datac => \PCout~input_o\,
	datad => \Cout~input_o\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X32_Y19_N0
\S~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = (!\S~17_combout\ & (!\Zhighout~input_o\ & \S~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~17_combout\,
	datab => \Zhighout~input_o\,
	datad => \S~50_combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X32_Y19_N10
\S~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = (!\S~51_combout\ & (((\In_portout~input_o\) # (!\S~18_combout\)) # (!\PCout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PCout~input_o\,
	datab => \S~18_combout\,
	datac => \In_portout~input_o\,
	datad => \S~51_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X31_Y18_N28
\S~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (\S~61_combout\) # ((\S~63_combout\ & ((\S~20_combout\) # (\S~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~20_combout\,
	datab => \S~61_combout\,
	datac => \S~63_combout\,
	datad => \S~52_combout\,
	combout => \S~64_combout\);

-- Location: LCCOMB_X31_Y18_N30
\S~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~65_combout\ = (\S~64_combout\ & (((!\S~40_combout\ & !\S~5_combout\)) # (!\S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~40_combout\,
	datab => \S~64_combout\,
	datac => \S~8_combout\,
	datad => \S~5_combout\,
	combout => \S~65_combout\);

-- Location: LCCOMB_X31_Y18_N0
\S~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~66_combout\ = (!\S~45_combout\ & ((!\S~8_combout\) # (!\S~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~40_combout\,
	datab => \S~45_combout\,
	datad => \S~8_combout\,
	combout => \S~66_combout\);

-- Location: LCCOMB_X30_Y18_N8
\S~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = ((!\S~31_combout\ & !\S~27_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~31_combout\,
	datab => \S~27_combout\,
	datac => \S~8_combout\,
	combout => \S~56_combout\);

-- Location: LCCOMB_X32_Y19_N16
\S~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = (\S~16_combout\ & (!\LOout~input_o\ & !\HIout~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~16_combout\,
	datac => \LOout~input_o\,
	datad => \HIout~input_o\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X31_Y19_N8
\S~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~67_combout\ = ((\HIout~input_o\ $ (!\LOout~input_o\)) # (!\S~16_combout\)) # (!\S~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HIout~input_o\,
	datab => \S~7_combout\,
	datac => \LOout~input_o\,
	datad => \S~16_combout\,
	combout => \S~67_combout\);

-- Location: LCCOMB_X32_Y19_N20
\S~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~68_combout\ = (\S~67_combout\ & ((\Zlowout~input_o\ $ (!\Zhighout~input_o\)) # (!\S~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Zlowout~input_o\,
	datab => \S~19_combout\,
	datac => \S~67_combout\,
	datad => \Zhighout~input_o\,
	combout => \S~68_combout\);

-- Location: LCCOMB_X31_Y19_N28
\S~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = (!\R15out~input_o\ & (\R14out~input_o\ & (\S~15_combout\ & !\R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \S~15_combout\,
	datad => \R13out~input_o\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X31_Y19_N2
\S~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = (\R15out~input_o\ & (!\R14out~input_o\ & (\S~15_combout\ & !\R13out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \S~15_combout\,
	datad => \R13out~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X30_Y18_N12
\S~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = ((!\S~24_combout\ & !\S~36_combout\)) # (!\S~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~24_combout\,
	datac => \S~8_combout\,
	datad => \S~36_combout\,
	combout => \S~58_combout\);

-- Location: LCCOMB_X30_Y18_N28
\S~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~69_combout\ = (((\S~68_combout\) # (!\S~58_combout\)) # (!\S~57_combout\)) # (!\S~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~6_combout\,
	datab => \S~57_combout\,
	datac => \S~68_combout\,
	datad => \S~58_combout\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X30_Y18_N22
\S~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~70_combout\ = (\S~53_combout\ & (((!\S~69_combout\) # (!\S~56_combout\)) # (!\S~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~55_combout\,
	datab => \S~56_combout\,
	datac => \S~69_combout\,
	datad => \S~53_combout\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X31_Y18_N10
\S~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~71_combout\ = (\S~66_combout\ & (\S~9_combout\ & ((!\S~70_combout\) # (!\S~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~54_combout\,
	datab => \S~66_combout\,
	datac => \S~70_combout\,
	datad => \S~9_combout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X31_Y18_N4
\S~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~79_combout\ = (\S~14_combout\ & ((!\S~8_combout\) # (!\S~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~14_combout\,
	datac => \S~42_combout\,
	datad => \S~8_combout\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X32_Y19_N28
\S~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \S~51_combout\ $ (((\S~74_combout\ & ((\PCout~input_o\))) # (!\S~74_combout\ & ((!\PCout~input_o\) # (!\S~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~74_combout\,
	datab => \S~18_combout\,
	datac => \PCout~input_o\,
	datad => \S~51_combout\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X32_Y19_N26
\S~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = (\Zlowout~input_o\ & (\S~6_combout\ & (\S~19_combout\ & !\Zhighout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Zlowout~input_o\,
	datab => \S~6_combout\,
	datac => \S~19_combout\,
	datad => \Zhighout~input_o\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X32_Y19_N30
\S~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~76_combout\ = (\S~62_combout\ & (\S~20_combout\ $ (((\S~72_combout\ & \S~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~72_combout\,
	datab => \S~75_combout\,
	datac => \S~20_combout\,
	datad => \S~62_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X30_Y18_N10
\S~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~78_combout\ = (((\S~76_combout\) # (!\S~58_combout\)) # (!\S~56_combout\)) # (!\S~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~77_combout\,
	datab => \S~56_combout\,
	datac => \S~76_combout\,
	datad => \S~58_combout\,
	combout => \S~78_combout\);

-- Location: LCCOMB_X31_Y18_N22
\S~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~80_combout\ = (!\S~49_combout\ & (\S~66_combout\ & (\S~79_combout\ & \S~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~49_combout\,
	datab => \S~66_combout\,
	datac => \S~79_combout\,
	datad => \S~78_combout\,
	combout => \S~80_combout\);

-- Location: LCCOMB_X30_Y16_N6
\S~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~81_combout\ = (\S~36_combout\) # ((\S~44_combout\ & (\R3out~input_o\ $ (\R5out~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~44_combout\,
	datab => \R3out~input_o\,
	datac => \R5out~input_o\,
	datad => \S~36_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X31_Y17_N30
\S~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~82_combout\ = (\S~25_combout\ & (!\R11out~input_o\ & (\R12out~input_o\ $ (\R10out~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \S~25_combout\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~82_combout\);

-- Location: LCCOMB_X31_Y17_N2
\S~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = (!\R12out~input_o\ & (\S~25_combout\ & (!\R10out~input_o\ & \R11out~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R12out~input_o\,
	datab => \S~25_combout\,
	datac => \R10out~input_o\,
	datad => \R11out~input_o\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X31_Y17_N16
\S~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~83_combout\ = (\S~13_combout\) # ((\S~81_combout\) # ((\S~82_combout\) # (\S~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~13_combout\,
	datab => \S~81_combout\,
	datac => \S~82_combout\,
	datad => \S~31_combout\,
	combout => \S~83_combout\);

-- Location: LCCOMB_X31_Y17_N18
\S~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~85_combout\ = (\S~2_combout\ & (\S~1_combout\ & (\R7out~input_o\ $ (\R6out~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datab => \S~1_combout\,
	datac => \R7out~input_o\,
	datad => \R6out~input_o\,
	combout => \S~85_combout\);

-- Location: LCCOMB_X31_Y18_N8
\S~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~86_combout\ = (\S~4_combout\) # ((\S~5_combout\) # ((\S~35_combout\) # (\S~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~4_combout\,
	datab => \S~5_combout\,
	datac => \S~35_combout\,
	datad => \S~40_combout\,
	combout => \S~86_combout\);

-- Location: LCCOMB_X31_Y17_N20
\S~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~87_combout\ = (\S~38_combout\) # ((\S~86_combout\) # ((\S~47_combout\ & \S~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~47_combout\,
	datab => \S~85_combout\,
	datac => \S~38_combout\,
	datad => \S~86_combout\,
	combout => \S~87_combout\);

-- Location: LCCOMB_X31_Y19_N10
\S~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~84_combout\ = (!\R15out~input_o\ & (\S~15_combout\ & (\R14out~input_o\ $ (\R13out~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R15out~input_o\,
	datab => \R14out~input_o\,
	datac => \S~15_combout\,
	datad => \R13out~input_o\,
	combout => \S~84_combout\);

-- Location: LCCOMB_X31_Y17_N22
\S~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~88_combout\ = (\S~8_combout\ & ((\S~83_combout\) # ((\S~87_combout\) # (\S~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~83_combout\,
	datab => \S~87_combout\,
	datac => \S~8_combout\,
	datad => \S~84_combout\,
	combout => \S~88_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;
END structure;


