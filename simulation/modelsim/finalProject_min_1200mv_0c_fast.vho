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

-- DATE "02/27/2017 09:38:32"

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

ENTITY 	carry_lookahead_adder IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(15 DOWNTO 0);
	Cout : OUT std_logic
	);
END carry_lookahead_adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF carry_lookahead_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \C[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \C[1]~1_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \C[2]~2_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \C[3]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \C[3]~4_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \C[4]~5_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \C[5]~6_combout\ : std_logic;
SIGNAL \C[5]~7_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \C[6]~8_combout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \C[7]~9_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \C[7]~10_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \C[8]~11_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \C[9]~12_combout\ : std_logic;
SIGNAL \C[9]~13_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \C[10]~14_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \C[11]~16_combout\ : std_logic;
SIGNAL \C[11]~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \C[12]~17_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \C[13]~18_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \C[13]~19_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \C[14]~20_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \C[15]~22_combout\ : std_logic;
SIGNAL \C[15]~21_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X23_Y0_N9
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\S[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\S[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\S[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\S[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\S[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\S[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\S[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\S[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\Cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X21_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \S~0_combout\);

-- Location: IOIBUF_X23_Y0_N29
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N2
\C[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[1]~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \C[1]~0_combout\);

-- Location: IOIBUF_X30_Y0_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N28
\C[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[1]~1_combout\ = (\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Cin~input_o\,
	combout => \C[1]~1_combout\);

-- Location: LCCOMB_X24_Y1_N30
\S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \C[1]~1_combout\,
	combout => \S~1_combout\);

-- Location: IOIBUF_X23_Y0_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N16
\C[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[2]~2_combout\ = (\B[1]~input_o\ & ((\C[1]~0_combout\) # ((\A[1]~input_o\) # (\C[1]~1_combout\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & ((\C[1]~0_combout\) # (\C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \C[1]~1_combout\,
	combout => \C[2]~2_combout\);

-- Location: LCCOMB_X24_Y1_N26
\S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\C[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \C[2]~2_combout\,
	combout => \S~2_combout\);

-- Location: LCCOMB_X24_Y1_N12
\C[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[3]~3_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \C[3]~3_combout\);

-- Location: IOIBUF_X28_Y0_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N6
\C[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[3]~4_combout\ = (\C[2]~2_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \C[2]~2_combout\,
	combout => \C[3]~4_combout\);

-- Location: LCCOMB_X24_Y1_N0
\S~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\C[3]~3_combout\) # (\C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~3_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \C[3]~4_combout\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X24_Y1_N10
\C[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[4]~5_combout\ = (\A[3]~input_o\ & ((\C[3]~3_combout\) # ((\B[3]~input_o\) # (\C[3]~4_combout\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\C[3]~3_combout\) # (\C[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~3_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \C[3]~4_combout\,
	combout => \C[4]~5_combout\);

-- Location: IOIBUF_X32_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X32_Y1_N24
\S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = \C[4]~5_combout\ $ (\B[4]~input_o\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~5_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X32_Y1_N26
\C[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[5]~6_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \C[5]~6_combout\);

-- Location: LCCOMB_X32_Y1_N28
\C[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[5]~7_combout\ = (\C[4]~5_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~5_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \C[5]~7_combout\);

-- Location: IOIBUF_X32_Y0_N1
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X32_Y1_N30
\S~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\C[5]~6_combout\) # (\C[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~6_combout\,
	datab => \C[5]~7_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \S~5_combout\);

-- Location: IOIBUF_X32_Y0_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X32_Y1_N0
\C[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[6]~8_combout\ = (\B[5]~input_o\ & ((\C[5]~6_combout\) # ((\C[5]~7_combout\) # (\A[5]~input_o\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\C[5]~6_combout\) # (\C[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~6_combout\,
	datab => \C[5]~7_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \C[6]~8_combout\);

-- Location: LCCOMB_X32_Y1_N10
\S~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\C[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \C[6]~8_combout\,
	combout => \S~6_combout\);

-- Location: LCCOMB_X32_Y1_N12
\C[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[7]~9_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \C[7]~9_combout\);

-- Location: IOIBUF_X35_Y0_N15
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X32_Y1_N22
\C[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[7]~10_combout\ = (\C[6]~8_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \C[6]~8_combout\,
	combout => \C[7]~10_combout\);

-- Location: IOIBUF_X32_Y0_N29
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X32_Y1_N16
\S~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\C[7]~9_combout\) # (\C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~9_combout\,
	datab => \B[7]~input_o\,
	datac => \C[7]~10_combout\,
	datad => \A[7]~input_o\,
	combout => \S~7_combout\);

-- Location: IOIBUF_X14_Y0_N22
\B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X32_Y1_N2
\C[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[8]~11_combout\ = (\B[7]~input_o\ & ((\C[7]~9_combout\) # ((\C[7]~10_combout\) # (\A[7]~input_o\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\C[7]~9_combout\) # (\C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[7]~9_combout\,
	datab => \B[7]~input_o\,
	datac => \C[7]~10_combout\,
	datad => \A[7]~input_o\,
	combout => \C[8]~11_combout\);

-- Location: LCCOMB_X15_Y1_N0
\S~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\C[8]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \C[8]~11_combout\,
	combout => \S~8_combout\);

-- Location: LCCOMB_X15_Y1_N10
\C[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[9]~12_combout\ = (\B[8]~input_o\ & \A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \C[9]~12_combout\);

-- Location: LCCOMB_X15_Y1_N20
\C[9]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[9]~13_combout\ = (\C[8]~11_combout\ & ((\B[8]~input_o\) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \C[8]~11_combout\,
	combout => \C[9]~13_combout\);

-- Location: IOIBUF_X16_Y0_N22
\A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X15_Y1_N22
\S~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\C[9]~12_combout\) # (\C[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[9]~12_combout\,
	datab => \C[9]~13_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \S~9_combout\);

-- Location: IOIBUF_X14_Y0_N1
\B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\C[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[10]~14_combout\ = (\A[9]~input_o\ & ((\C[9]~12_combout\) # ((\C[9]~13_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\C[9]~12_combout\) # (\C[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[9]~12_combout\,
	datab => \C[9]~13_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \C[10]~14_combout\);

-- Location: IOIBUF_X16_Y0_N8
\A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\S~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = \B[10]~input_o\ $ (\C[10]~14_combout\ $ (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \C[10]~14_combout\,
	datac => \A[10]~input_o\,
	combout => \S~10_combout\);

-- Location: LCCOMB_X15_Y1_N6
\C[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[11]~16_combout\ = (\C[10]~14_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \C[10]~14_combout\,
	datac => \A[10]~input_o\,
	combout => \C[11]~16_combout\);

-- Location: LCCOMB_X15_Y1_N28
\C[11]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[11]~15_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \C[11]~15_combout\);

-- Location: IOIBUF_X19_Y0_N8
\A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\S~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\C[11]~16_combout\) # (\C[11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~16_combout\,
	datab => \C[11]~15_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S~11_combout\);

-- Location: IOIBUF_X11_Y0_N22
\A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X15_Y1_N2
\C[12]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[12]~17_combout\ = (\A[11]~input_o\ & ((\C[11]~16_combout\) # ((\C[11]~15_combout\) # (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\C[11]~16_combout\) # (\C[11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~16_combout\,
	datab => \C[11]~15_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \C[12]~17_combout\);

-- Location: LCCOMB_X15_Y1_N4
\S~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\C[12]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \C[12]~17_combout\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X19_Y0_N1
\B[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X15_Y1_N14
\C[13]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[13]~18_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \C[13]~18_combout\);

-- Location: IOIBUF_X11_Y0_N15
\A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X15_Y1_N8
\C[13]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[13]~19_combout\ = (\C[12]~17_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \C[12]~17_combout\,
	combout => \C[13]~19_combout\);

-- Location: LCCOMB_X15_Y1_N26
\S~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (((\C[13]~18_combout\) # (\C[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \C[13]~18_combout\,
	datac => \A[13]~input_o\,
	datad => \C[13]~19_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X15_Y1_N12
\C[14]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[14]~20_combout\ = (\B[13]~input_o\ & ((\C[13]~18_combout\) # ((\A[13]~input_o\) # (\C[13]~19_combout\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\C[13]~18_combout\) # (\C[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \C[13]~18_combout\,
	datac => \A[13]~input_o\,
	datad => \C[13]~19_combout\,
	combout => \C[14]~20_combout\);

-- Location: IOIBUF_X28_Y0_N1
\B[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X27_Y1_N16
\S~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = \C[14]~20_combout\ $ (\B[14]~input_o\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~20_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X27_Y1_N12
\C[15]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[15]~22_combout\ = (\C[14]~20_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~20_combout\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \C[15]~22_combout\);

-- Location: LCCOMB_X27_Y1_N2
\C[15]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[15]~21_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \C[15]~21_combout\);

-- Location: IOIBUF_X28_Y0_N29
\A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\B[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X27_Y1_N30
\S~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\C[15]~22_combout\) # (\C[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[15]~22_combout\,
	datab => \C[15]~21_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X27_Y1_N24
\Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\A[15]~input_o\ & ((\C[15]~22_combout\) # ((\C[15]~21_combout\) # (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\C[15]~22_combout\) # (\C[15]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[15]~22_combout\,
	datab => \C[15]~21_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Cout~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


