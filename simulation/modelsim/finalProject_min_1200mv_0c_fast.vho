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

-- DATE "02/26/2017 13:33:41"

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

ENTITY 	MDMUX IS
    PORT (
	BusMuxOut : IN std_logic_vector(31 DOWNTO 0);
	Mdatain : IN std_logic_vector(31 DOWNTO 0);
	Read_input : IN std_logic;
	MDMux_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END MDMUX;

-- Design Ports Information
-- MDMux_out[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[8]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[9]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[10]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[13]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[15]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[16]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[17]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[18]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[19]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[21]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[22]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[23]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[24]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[25]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[26]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[27]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[28]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[29]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[30]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDMux_out[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_input	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[8]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[10]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[10]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[11]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[12]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[14]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[14]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[16]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[17]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[18]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[19]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[19]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[21]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[21]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[22]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[22]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[23]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[23]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[24]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[25]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[25]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[26]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[28]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[28]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[29]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[29]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[30]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[31]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[31]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MDMUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BusMuxOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Mdatain : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Read_input : std_logic;
SIGNAL ww_MDMux_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \MDMux_out[0]~output_o\ : std_logic;
SIGNAL \MDMux_out[1]~output_o\ : std_logic;
SIGNAL \MDMux_out[2]~output_o\ : std_logic;
SIGNAL \MDMux_out[3]~output_o\ : std_logic;
SIGNAL \MDMux_out[4]~output_o\ : std_logic;
SIGNAL \MDMux_out[5]~output_o\ : std_logic;
SIGNAL \MDMux_out[6]~output_o\ : std_logic;
SIGNAL \MDMux_out[7]~output_o\ : std_logic;
SIGNAL \MDMux_out[8]~output_o\ : std_logic;
SIGNAL \MDMux_out[9]~output_o\ : std_logic;
SIGNAL \MDMux_out[10]~output_o\ : std_logic;
SIGNAL \MDMux_out[11]~output_o\ : std_logic;
SIGNAL \MDMux_out[12]~output_o\ : std_logic;
SIGNAL \MDMux_out[13]~output_o\ : std_logic;
SIGNAL \MDMux_out[14]~output_o\ : std_logic;
SIGNAL \MDMux_out[15]~output_o\ : std_logic;
SIGNAL \MDMux_out[16]~output_o\ : std_logic;
SIGNAL \MDMux_out[17]~output_o\ : std_logic;
SIGNAL \MDMux_out[18]~output_o\ : std_logic;
SIGNAL \MDMux_out[19]~output_o\ : std_logic;
SIGNAL \MDMux_out[20]~output_o\ : std_logic;
SIGNAL \MDMux_out[21]~output_o\ : std_logic;
SIGNAL \MDMux_out[22]~output_o\ : std_logic;
SIGNAL \MDMux_out[23]~output_o\ : std_logic;
SIGNAL \MDMux_out[24]~output_o\ : std_logic;
SIGNAL \MDMux_out[25]~output_o\ : std_logic;
SIGNAL \MDMux_out[26]~output_o\ : std_logic;
SIGNAL \MDMux_out[27]~output_o\ : std_logic;
SIGNAL \MDMux_out[28]~output_o\ : std_logic;
SIGNAL \MDMux_out[29]~output_o\ : std_logic;
SIGNAL \MDMux_out[30]~output_o\ : std_logic;
SIGNAL \MDMux_out[31]~output_o\ : std_logic;
SIGNAL \BusMuxOut[0]~input_o\ : std_logic;
SIGNAL \Mdatain[0]~input_o\ : std_logic;
SIGNAL \Read_input~input_o\ : std_logic;
SIGNAL \MDMux_out~0_combout\ : std_logic;
SIGNAL \Mdatain[1]~input_o\ : std_logic;
SIGNAL \BusMuxOut[1]~input_o\ : std_logic;
SIGNAL \MDMux_out~1_combout\ : std_logic;
SIGNAL \BusMuxOut[2]~input_o\ : std_logic;
SIGNAL \Mdatain[2]~input_o\ : std_logic;
SIGNAL \MDMux_out~2_combout\ : std_logic;
SIGNAL \BusMuxOut[3]~input_o\ : std_logic;
SIGNAL \Mdatain[3]~input_o\ : std_logic;
SIGNAL \MDMux_out~3_combout\ : std_logic;
SIGNAL \BusMuxOut[4]~input_o\ : std_logic;
SIGNAL \Mdatain[4]~input_o\ : std_logic;
SIGNAL \MDMux_out~4_combout\ : std_logic;
SIGNAL \Mdatain[5]~input_o\ : std_logic;
SIGNAL \BusMuxOut[5]~input_o\ : std_logic;
SIGNAL \MDMux_out~5_combout\ : std_logic;
SIGNAL \BusMuxOut[6]~input_o\ : std_logic;
SIGNAL \Mdatain[6]~input_o\ : std_logic;
SIGNAL \MDMux_out~6_combout\ : std_logic;
SIGNAL \Mdatain[7]~input_o\ : std_logic;
SIGNAL \BusMuxOut[7]~input_o\ : std_logic;
SIGNAL \MDMux_out~7_combout\ : std_logic;
SIGNAL \Mdatain[8]~input_o\ : std_logic;
SIGNAL \BusMuxOut[8]~input_o\ : std_logic;
SIGNAL \MDMux_out~8_combout\ : std_logic;
SIGNAL \BusMuxOut[9]~input_o\ : std_logic;
SIGNAL \Mdatain[9]~input_o\ : std_logic;
SIGNAL \MDMux_out~9_combout\ : std_logic;
SIGNAL \Mdatain[10]~input_o\ : std_logic;
SIGNAL \BusMuxOut[10]~input_o\ : std_logic;
SIGNAL \MDMux_out~10_combout\ : std_logic;
SIGNAL \BusMuxOut[11]~input_o\ : std_logic;
SIGNAL \Mdatain[11]~input_o\ : std_logic;
SIGNAL \MDMux_out~11_combout\ : std_logic;
SIGNAL \Mdatain[12]~input_o\ : std_logic;
SIGNAL \BusMuxOut[12]~input_o\ : std_logic;
SIGNAL \MDMux_out~12_combout\ : std_logic;
SIGNAL \BusMuxOut[13]~input_o\ : std_logic;
SIGNAL \Mdatain[13]~input_o\ : std_logic;
SIGNAL \MDMux_out~13_combout\ : std_logic;
SIGNAL \Mdatain[14]~input_o\ : std_logic;
SIGNAL \BusMuxOut[14]~input_o\ : std_logic;
SIGNAL \MDMux_out~14_combout\ : std_logic;
SIGNAL \Mdatain[15]~input_o\ : std_logic;
SIGNAL \BusMuxOut[15]~input_o\ : std_logic;
SIGNAL \MDMux_out~15_combout\ : std_logic;
SIGNAL \Mdatain[16]~input_o\ : std_logic;
SIGNAL \BusMuxOut[16]~input_o\ : std_logic;
SIGNAL \MDMux_out~16_combout\ : std_logic;
SIGNAL \BusMuxOut[17]~input_o\ : std_logic;
SIGNAL \Mdatain[17]~input_o\ : std_logic;
SIGNAL \MDMux_out~17_combout\ : std_logic;
SIGNAL \BusMuxOut[18]~input_o\ : std_logic;
SIGNAL \Mdatain[18]~input_o\ : std_logic;
SIGNAL \MDMux_out~18_combout\ : std_logic;
SIGNAL \BusMuxOut[19]~input_o\ : std_logic;
SIGNAL \Mdatain[19]~input_o\ : std_logic;
SIGNAL \MDMux_out~19_combout\ : std_logic;
SIGNAL \BusMuxOut[20]~input_o\ : std_logic;
SIGNAL \Mdatain[20]~input_o\ : std_logic;
SIGNAL \MDMux_out~20_combout\ : std_logic;
SIGNAL \Mdatain[21]~input_o\ : std_logic;
SIGNAL \BusMuxOut[21]~input_o\ : std_logic;
SIGNAL \MDMux_out~21_combout\ : std_logic;
SIGNAL \BusMuxOut[22]~input_o\ : std_logic;
SIGNAL \Mdatain[22]~input_o\ : std_logic;
SIGNAL \MDMux_out~22_combout\ : std_logic;
SIGNAL \BusMuxOut[23]~input_o\ : std_logic;
SIGNAL \Mdatain[23]~input_o\ : std_logic;
SIGNAL \MDMux_out~23_combout\ : std_logic;
SIGNAL \BusMuxOut[24]~input_o\ : std_logic;
SIGNAL \Mdatain[24]~input_o\ : std_logic;
SIGNAL \MDMux_out~24_combout\ : std_logic;
SIGNAL \Mdatain[25]~input_o\ : std_logic;
SIGNAL \BusMuxOut[25]~input_o\ : std_logic;
SIGNAL \MDMux_out~25_combout\ : std_logic;
SIGNAL \BusMuxOut[26]~input_o\ : std_logic;
SIGNAL \Mdatain[26]~input_o\ : std_logic;
SIGNAL \MDMux_out~26_combout\ : std_logic;
SIGNAL \BusMuxOut[27]~input_o\ : std_logic;
SIGNAL \Mdatain[27]~input_o\ : std_logic;
SIGNAL \MDMux_out~27_combout\ : std_logic;
SIGNAL \Mdatain[28]~input_o\ : std_logic;
SIGNAL \BusMuxOut[28]~input_o\ : std_logic;
SIGNAL \MDMux_out~28_combout\ : std_logic;
SIGNAL \Mdatain[29]~input_o\ : std_logic;
SIGNAL \BusMuxOut[29]~input_o\ : std_logic;
SIGNAL \MDMux_out~29_combout\ : std_logic;
SIGNAL \Mdatain[30]~input_o\ : std_logic;
SIGNAL \BusMuxOut[30]~input_o\ : std_logic;
SIGNAL \MDMux_out~30_combout\ : std_logic;
SIGNAL \BusMuxOut[31]~input_o\ : std_logic;
SIGNAL \Mdatain[31]~input_o\ : std_logic;
SIGNAL \MDMux_out~31_combout\ : std_logic;

BEGIN

ww_BusMuxOut <= BusMuxOut;
ww_Mdatain <= Mdatain;
ww_Read_input <= Read_input;
MDMux_out <= ww_MDMux_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y0_N30
\MDMux_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~0_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\MDMux_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~1_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\MDMux_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~2_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\MDMux_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~3_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\MDMux_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~4_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\MDMux_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~5_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\MDMux_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~6_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\MDMux_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~7_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\MDMux_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~8_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[8]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\MDMux_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~9_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\MDMux_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~10_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[10]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\MDMux_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~11_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\MDMux_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~12_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[12]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\MDMux_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~13_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[13]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\MDMux_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~14_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[14]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\MDMux_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~15_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\MDMux_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~16_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[16]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\MDMux_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~17_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[17]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\MDMux_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~18_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\MDMux_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~19_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[19]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\MDMux_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~20_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\MDMux_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~21_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[21]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\MDMux_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~22_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[22]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\MDMux_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~23_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[23]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\MDMux_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~24_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\MDMux_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~25_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[25]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\MDMux_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~26_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[26]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\MDMux_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~27_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[27]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\MDMux_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~28_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\MDMux_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~29_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[29]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\MDMux_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~30_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\MDMux_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDMux_out~31_combout\,
	devoe => ww_devoe,
	o => \MDMux_out[31]~output_o\);

-- Location: IOIBUF_X0_Y14_N22
\BusMuxOut[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(0),
	o => \BusMuxOut[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\Mdatain[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(0),
	o => \Mdatain[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\Read_input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_input,
	o => \Read_input~input_o\);

-- Location: LCCOMB_X8_Y1_N8
\MDMux_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~0_combout\ = (\Read_input~input_o\ & ((\Mdatain[0]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[0]~input_o\,
	datac => \Mdatain[0]~input_o\,
	datad => \Read_input~input_o\,
	combout => \MDMux_out~0_combout\);

-- Location: IOIBUF_X3_Y29_N8
\Mdatain[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(1),
	o => \Mdatain[1]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\BusMuxOut[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(1),
	o => \BusMuxOut[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\MDMux_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~1_combout\ = (\Read_input~input_o\ & (\Mdatain[1]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mdatain[1]~input_o\,
	datab => \BusMuxOut[1]~input_o\,
	datac => \Read_input~input_o\,
	combout => \MDMux_out~1_combout\);

-- Location: IOIBUF_X0_Y23_N15
\BusMuxOut[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(2),
	o => \BusMuxOut[2]~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\Mdatain[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(2),
	o => \Mdatain[2]~input_o\);

-- Location: LCCOMB_X1_Y26_N2
\MDMux_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~2_combout\ = (\Read_input~input_o\ & ((\Mdatain[2]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusMuxOut[2]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[2]~input_o\,
	combout => \MDMux_out~2_combout\);

-- Location: IOIBUF_X0_Y27_N22
\BusMuxOut[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(3),
	o => \BusMuxOut[3]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\Mdatain[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(3),
	o => \Mdatain[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N20
\MDMux_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~3_combout\ = (\Read_input~input_o\ & ((\Mdatain[3]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusMuxOut[3]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[3]~input_o\,
	combout => \MDMux_out~3_combout\);

-- Location: IOIBUF_X3_Y0_N22
\BusMuxOut[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(4),
	o => \BusMuxOut[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Mdatain[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(4),
	o => \Mdatain[4]~input_o\);

-- Location: LCCOMB_X8_Y1_N18
\MDMux_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~4_combout\ = (\Read_input~input_o\ & ((\Mdatain[4]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \BusMuxOut[4]~input_o\,
	datad => \Mdatain[4]~input_o\,
	combout => \MDMux_out~4_combout\);

-- Location: IOIBUF_X3_Y29_N15
\Mdatain[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(5),
	o => \Mdatain[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\BusMuxOut[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(5),
	o => \BusMuxOut[5]~input_o\);

-- Location: LCCOMB_X1_Y26_N30
\MDMux_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~5_combout\ = (\Read_input~input_o\ & (\Mdatain[5]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[5]~input_o\,
	datad => \BusMuxOut[5]~input_o\,
	combout => \MDMux_out~5_combout\);

-- Location: IOIBUF_X0_Y23_N8
\BusMuxOut[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(6),
	o => \BusMuxOut[6]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\Mdatain[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(6),
	o => \Mdatain[6]~input_o\);

-- Location: LCCOMB_X1_Y26_N8
\MDMux_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~6_combout\ = (\Read_input~input_o\ & ((\Mdatain[6]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[6]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[6]~input_o\,
	combout => \MDMux_out~6_combout\);

-- Location: IOIBUF_X16_Y0_N22
\Mdatain[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(7),
	o => \Mdatain[7]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\BusMuxOut[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(7),
	o => \BusMuxOut[7]~input_o\);

-- Location: LCCOMB_X8_Y1_N28
\MDMux_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~7_combout\ = (\Read_input~input_o\ & (\Mdatain[7]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[7]~input_o\,
	datac => \BusMuxOut[7]~input_o\,
	combout => \MDMux_out~7_combout\);

-- Location: IOIBUF_X1_Y0_N29
\Mdatain[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(8),
	o => \Mdatain[8]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\BusMuxOut[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(8),
	o => \BusMuxOut[8]~input_o\);

-- Location: LCCOMB_X8_Y1_N6
\MDMux_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~8_combout\ = (\Read_input~input_o\ & (\Mdatain[8]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \Mdatain[8]~input_o\,
	datad => \BusMuxOut[8]~input_o\,
	combout => \MDMux_out~8_combout\);

-- Location: IOIBUF_X0_Y22_N1
\BusMuxOut[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(9),
	o => \BusMuxOut[9]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\Mdatain[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(9),
	o => \Mdatain[9]~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\MDMux_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~9_combout\ = (\Read_input~input_o\ & ((\Mdatain[9]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \BusMuxOut[9]~input_o\,
	datad => \Mdatain[9]~input_o\,
	combout => \MDMux_out~9_combout\);

-- Location: IOIBUF_X5_Y0_N29
\Mdatain[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(10),
	o => \Mdatain[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\BusMuxOut[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(10),
	o => \BusMuxOut[10]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\MDMux_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~10_combout\ = (\Read_input~input_o\ & (\Mdatain[10]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \Mdatain[10]~input_o\,
	datad => \BusMuxOut[10]~input_o\,
	combout => \MDMux_out~10_combout\);

-- Location: IOIBUF_X5_Y29_N22
\BusMuxOut[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(11),
	o => \BusMuxOut[11]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\Mdatain[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(11),
	o => \Mdatain[11]~input_o\);

-- Location: LCCOMB_X1_Y26_N28
\MDMux_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~11_combout\ = (\Read_input~input_o\ & ((\Mdatain[11]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \BusMuxOut[11]~input_o\,
	datad => \Mdatain[11]~input_o\,
	combout => \MDMux_out~11_combout\);

-- Location: IOIBUF_X5_Y0_N1
\Mdatain[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(12),
	o => \Mdatain[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\BusMuxOut[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(12),
	o => \BusMuxOut[12]~input_o\);

-- Location: LCCOMB_X8_Y1_N2
\MDMux_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~12_combout\ = (\Read_input~input_o\ & (\Mdatain[12]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \Mdatain[12]~input_o\,
	datad => \BusMuxOut[12]~input_o\,
	combout => \MDMux_out~12_combout\);

-- Location: IOIBUF_X3_Y29_N29
\BusMuxOut[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(13),
	o => \BusMuxOut[13]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\Mdatain[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(13),
	o => \Mdatain[13]~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\MDMux_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~13_combout\ = (\Read_input~input_o\ & ((\Mdatain[13]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[13]~input_o\,
	datab => \Mdatain[13]~input_o\,
	datac => \Read_input~input_o\,
	combout => \MDMux_out~13_combout\);

-- Location: IOIBUF_X0_Y2_N22
\Mdatain[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(14),
	o => \Mdatain[14]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\BusMuxOut[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(14),
	o => \BusMuxOut[14]~input_o\);

-- Location: LCCOMB_X8_Y1_N12
\MDMux_out~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~14_combout\ = (\Read_input~input_o\ & (\Mdatain[14]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mdatain[14]~input_o\,
	datac => \BusMuxOut[14]~input_o\,
	datad => \Read_input~input_o\,
	combout => \MDMux_out~14_combout\);

-- Location: IOIBUF_X9_Y29_N8
\Mdatain[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(15),
	o => \Mdatain[15]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\BusMuxOut[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(15),
	o => \BusMuxOut[15]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\MDMux_out~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~15_combout\ = (\Read_input~input_o\ & (\Mdatain[15]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \Mdatain[15]~input_o\,
	datad => \BusMuxOut[15]~input_o\,
	combout => \MDMux_out~15_combout\);

-- Location: IOIBUF_X16_Y0_N15
\Mdatain[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(16),
	o => \Mdatain[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\BusMuxOut[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(16),
	o => \BusMuxOut[16]~input_o\);

-- Location: LCCOMB_X8_Y1_N30
\MDMux_out~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~16_combout\ = (\Read_input~input_o\ & (\Mdatain[16]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[16]~input_o\,
	datad => \BusMuxOut[16]~input_o\,
	combout => \MDMux_out~16_combout\);

-- Location: IOIBUF_X0_Y2_N1
\BusMuxOut[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(17),
	o => \BusMuxOut[17]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\Mdatain[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(17),
	o => \Mdatain[17]~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\MDMux_out~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~17_combout\ = (\Read_input~input_o\ & ((\Mdatain[17]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[17]~input_o\,
	datab => \Mdatain[17]~input_o\,
	datad => \Read_input~input_o\,
	combout => \MDMux_out~17_combout\);

-- Location: IOIBUF_X19_Y0_N1
\BusMuxOut[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(18),
	o => \BusMuxOut[18]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\Mdatain[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(18),
	o => \Mdatain[18]~input_o\);

-- Location: LCCOMB_X19_Y1_N0
\MDMux_out~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~18_combout\ = (\Read_input~input_o\ & ((\Mdatain[18]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[18]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[18]~input_o\,
	combout => \MDMux_out~18_combout\);

-- Location: IOIBUF_X9_Y0_N8
\BusMuxOut[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(19),
	o => \BusMuxOut[19]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Mdatain[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(19),
	o => \Mdatain[19]~input_o\);

-- Location: LCCOMB_X8_Y1_N10
\MDMux_out~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~19_combout\ = (\Read_input~input_o\ & ((\Mdatain[19]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \BusMuxOut[19]~input_o\,
	datad => \Mdatain[19]~input_o\,
	combout => \MDMux_out~19_combout\);

-- Location: IOIBUF_X3_Y29_N1
\BusMuxOut[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(20),
	o => \BusMuxOut[20]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\Mdatain[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(20),
	o => \Mdatain[20]~input_o\);

-- Location: LCCOMB_X1_Y26_N26
\MDMux_out~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~20_combout\ = (\Read_input~input_o\ & ((\Mdatain[20]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \BusMuxOut[20]~input_o\,
	datad => \Mdatain[20]~input_o\,
	combout => \MDMux_out~20_combout\);

-- Location: IOIBUF_X11_Y0_N22
\Mdatain[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(21),
	o => \Mdatain[21]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\BusMuxOut[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(21),
	o => \BusMuxOut[21]~input_o\);

-- Location: LCCOMB_X8_Y1_N4
\MDMux_out~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~21_combout\ = (\Read_input~input_o\ & (\Mdatain[21]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \Mdatain[21]~input_o\,
	datad => \BusMuxOut[21]~input_o\,
	combout => \MDMux_out~21_combout\);

-- Location: IOIBUF_X19_Y0_N15
\BusMuxOut[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(22),
	o => \BusMuxOut[22]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\Mdatain[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(22),
	o => \Mdatain[22]~input_o\);

-- Location: LCCOMB_X19_Y1_N26
\MDMux_out~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~22_combout\ = (\Read_input~input_o\ & ((\Mdatain[22]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusMuxOut[22]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[22]~input_o\,
	combout => \MDMux_out~22_combout\);

-- Location: IOIBUF_X0_Y26_N15
\BusMuxOut[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(23),
	o => \BusMuxOut[23]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\Mdatain[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(23),
	o => \Mdatain[23]~input_o\);

-- Location: LCCOMB_X1_Y26_N12
\MDMux_out~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~23_combout\ = (\Read_input~input_o\ & ((\Mdatain[23]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusMuxOut[23]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[23]~input_o\,
	combout => \MDMux_out~23_combout\);

-- Location: IOIBUF_X9_Y29_N15
\BusMuxOut[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(24),
	o => \BusMuxOut[24]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\Mdatain[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(24),
	o => \Mdatain[24]~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\MDMux_out~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~24_combout\ = (\Read_input~input_o\ & ((\Mdatain[24]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \BusMuxOut[24]~input_o\,
	datad => \Mdatain[24]~input_o\,
	combout => \MDMux_out~24_combout\);

-- Location: IOIBUF_X9_Y0_N1
\Mdatain[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(25),
	o => \Mdatain[25]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\BusMuxOut[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(25),
	o => \BusMuxOut[25]~input_o\);

-- Location: LCCOMB_X8_Y1_N14
\MDMux_out~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~25_combout\ = (\Read_input~input_o\ & (\Mdatain[25]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[25]~input_o\,
	datac => \BusMuxOut[25]~input_o\,
	combout => \MDMux_out~25_combout\);

-- Location: IOIBUF_X11_Y0_N8
\BusMuxOut[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(26),
	o => \BusMuxOut[26]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Mdatain[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(26),
	o => \Mdatain[26]~input_o\);

-- Location: LCCOMB_X8_Y1_N0
\MDMux_out~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~26_combout\ = (\Read_input~input_o\ & ((\Mdatain[26]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \BusMuxOut[26]~input_o\,
	datad => \Mdatain[26]~input_o\,
	combout => \MDMux_out~26_combout\);

-- Location: IOIBUF_X5_Y29_N8
\BusMuxOut[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(27),
	o => \BusMuxOut[27]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Mdatain[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(27),
	o => \Mdatain[27]~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\MDMux_out~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~27_combout\ = (\Read_input~input_o\ & ((\Mdatain[27]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datac => \BusMuxOut[27]~input_o\,
	datad => \Mdatain[27]~input_o\,
	combout => \MDMux_out~27_combout\);

-- Location: IOIBUF_X9_Y0_N22
\Mdatain[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(28),
	o => \Mdatain[28]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\BusMuxOut[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(28),
	o => \BusMuxOut[28]~input_o\);

-- Location: LCCOMB_X8_Y1_N26
\MDMux_out~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~28_combout\ = (\Read_input~input_o\ & (\Mdatain[28]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[28]~input_o\,
	datac => \BusMuxOut[28]~input_o\,
	combout => \MDMux_out~28_combout\);

-- Location: IOIBUF_X14_Y0_N15
\Mdatain[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(29),
	o => \Mdatain[29]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\BusMuxOut[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(29),
	o => \BusMuxOut[29]~input_o\);

-- Location: LCCOMB_X8_Y1_N20
\MDMux_out~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~29_combout\ = (\Read_input~input_o\ & (\Mdatain[29]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Read_input~input_o\,
	datab => \Mdatain[29]~input_o\,
	datad => \BusMuxOut[29]~input_o\,
	combout => \MDMux_out~29_combout\);

-- Location: IOIBUF_X1_Y29_N8
\Mdatain[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(30),
	o => \Mdatain[30]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\BusMuxOut[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(30),
	o => \BusMuxOut[30]~input_o\);

-- Location: LCCOMB_X1_Y26_N10
\MDMux_out~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~30_combout\ = (\Read_input~input_o\ & (\Mdatain[30]~input_o\)) # (!\Read_input~input_o\ & ((\BusMuxOut[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mdatain[30]~input_o\,
	datab => \BusMuxOut[30]~input_o\,
	datac => \Read_input~input_o\,
	combout => \MDMux_out~30_combout\);

-- Location: IOIBUF_X7_Y29_N8
\BusMuxOut[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(31),
	o => \BusMuxOut[31]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\Mdatain[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(31),
	o => \Mdatain[31]~input_o\);

-- Location: LCCOMB_X1_Y26_N4
\MDMux_out~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MDMux_out~31_combout\ = (\Read_input~input_o\ & ((\Mdatain[31]~input_o\))) # (!\Read_input~input_o\ & (\BusMuxOut[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusMuxOut[31]~input_o\,
	datac => \Read_input~input_o\,
	datad => \Mdatain[31]~input_o\,
	combout => \MDMux_out~31_combout\);

ww_MDMux_out(0) <= \MDMux_out[0]~output_o\;

ww_MDMux_out(1) <= \MDMux_out[1]~output_o\;

ww_MDMux_out(2) <= \MDMux_out[2]~output_o\;

ww_MDMux_out(3) <= \MDMux_out[3]~output_o\;

ww_MDMux_out(4) <= \MDMux_out[4]~output_o\;

ww_MDMux_out(5) <= \MDMux_out[5]~output_o\;

ww_MDMux_out(6) <= \MDMux_out[6]~output_o\;

ww_MDMux_out(7) <= \MDMux_out[7]~output_o\;

ww_MDMux_out(8) <= \MDMux_out[8]~output_o\;

ww_MDMux_out(9) <= \MDMux_out[9]~output_o\;

ww_MDMux_out(10) <= \MDMux_out[10]~output_o\;

ww_MDMux_out(11) <= \MDMux_out[11]~output_o\;

ww_MDMux_out(12) <= \MDMux_out[12]~output_o\;

ww_MDMux_out(13) <= \MDMux_out[13]~output_o\;

ww_MDMux_out(14) <= \MDMux_out[14]~output_o\;

ww_MDMux_out(15) <= \MDMux_out[15]~output_o\;

ww_MDMux_out(16) <= \MDMux_out[16]~output_o\;

ww_MDMux_out(17) <= \MDMux_out[17]~output_o\;

ww_MDMux_out(18) <= \MDMux_out[18]~output_o\;

ww_MDMux_out(19) <= \MDMux_out[19]~output_o\;

ww_MDMux_out(20) <= \MDMux_out[20]~output_o\;

ww_MDMux_out(21) <= \MDMux_out[21]~output_o\;

ww_MDMux_out(22) <= \MDMux_out[22]~output_o\;

ww_MDMux_out(23) <= \MDMux_out[23]~output_o\;

ww_MDMux_out(24) <= \MDMux_out[24]~output_o\;

ww_MDMux_out(25) <= \MDMux_out[25]~output_o\;

ww_MDMux_out(26) <= \MDMux_out[26]~output_o\;

ww_MDMux_out(27) <= \MDMux_out[27]~output_o\;

ww_MDMux_out(28) <= \MDMux_out[28]~output_o\;

ww_MDMux_out(29) <= \MDMux_out[29]~output_o\;

ww_MDMux_out(30) <= \MDMux_out[30]~output_o\;

ww_MDMux_out(31) <= \MDMux_out[31]~output_o\;
END structure;


