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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Apr 02 22:58:45 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY phase3 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		stop :  IN  STD_LOGIC;
		R0in :  INOUT  STD_LOGIC;
		R1in :  INOUT  STD_LOGIC;
		R2in :  INOUT  STD_LOGIC;
		R3in :  INOUT  STD_LOGIC;
		R4in :  INOUT  STD_LOGIC;
		R5in :  INOUT  STD_LOGIC;
		R6in :  INOUT  STD_LOGIC;
		R7in :  INOUT  STD_LOGIC;
		R8in :  INOUT  STD_LOGIC;
		R9in :  INOUT  STD_LOGIC;
		R10in :  INOUT  STD_LOGIC;
		R11in :  INOUT  STD_LOGIC;
		R12in :  INOUT  STD_LOGIC;
		R13in :  INOUT  STD_LOGIC;
		R14in :  INOUT  STD_LOGIC;
		R15in :  INOUT  STD_LOGIC;
		R0out :  INOUT  STD_LOGIC;
		R1out :  INOUT  STD_LOGIC;
		R2out :  INOUT  STD_LOGIC;
		R3out :  INOUT  STD_LOGIC;
		R4out :  INOUT  STD_LOGIC;
		R5out :  INOUT  STD_LOGIC;
		R6out :  INOUT  STD_LOGIC;
		R7out :  INOUT  STD_LOGIC;
		R8out :  INOUT  STD_LOGIC;
		R9out :  INOUT  STD_LOGIC;
		R10out :  INOUT  STD_LOGIC;
		R11out :  INOUT  STD_LOGIC;
		R12out :  INOUT  STD_LOGIC;
		R13out :  INOUT  STD_LOGIC;
		R14out :  INOUT  STD_LOGIC;
		R15out :  INOUT  STD_LOGIC;
		Gra :  INOUT  STD_LOGIC;
		Grb :  INOUT  STD_LOGIC;
		Grc :  INOUT  STD_LOGIC;
		Rin :  INOUT  STD_LOGIC;
		Rout :  INOUT  STD_LOGIC;
		PCout :  INOUT  STD_LOGIC;
		MDRout :  INOUT  STD_LOGIC;
		Zhighout :  INOUT  STD_LOGIC;
		Zlowout :  INOUT  STD_LOGIC;
		HIout :  INOUT  STD_LOGIC;
		LOout :  INOUT  STD_LOGIC;
		In_portout :  INOUT  STD_LOGIC;
		Cout :  INOUT  STD_LOGIC;
		HIin :  INOUT  STD_LOGIC;
		LOin :  INOUT  STD_LOGIC;
		Con_in :  INOUT  STD_LOGIC;
		PCin :  INOUT  STD_LOGIC;
		IRin :  INOUT  STD_LOGIC;
		Cin :  INOUT  STD_LOGIC;
		Yin :  INOUT  STD_LOGIC;
		Zin :  INOUT  STD_LOGIC;
		Zhighin :  INOUT  STD_LOGIC;
		Zlowin :  INOUT  STD_LOGIC;
		MARin :  INOUT  STD_LOGIC;
		MDRin :  INOUT  STD_LOGIC;
		Out_portin :  INOUT  STD_LOGIC;
		BAout :  INOUT  STD_LOGIC;
		R14MUX_enable :  INOUT  STD_LOGIC;
		IncPC_enable :  INOUT  STD_LOGIC;
		clear :  INOUT  STD_LOGIC;
		read_signal :  INOUT  STD_LOGIC;
		write_signal :  INOUT  STD_LOGIC;
		CON_FF_out :  INOUT  STD_LOGIC;
		ALU_cs :  INOUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ALU_out :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		BusMuxOut :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		C_sign_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		HI_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		in_port_input :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		In_port_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		IR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		LO_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MAR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Mdatain :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
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
		Y_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Z_in :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		Zhigh_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zhigh_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		run :  OUT  STD_LOGIC;
		Out_port_output :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END phase3;

ARCHITECTURE bdf_type OF phase3 IS 

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

COMPONENT incpc
	PORT(enable : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT control_unit
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 stop : IN STD_LOGIC;
		 CON_FF : IN STD_LOGIC;
		 IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Gra : OUT STD_LOGIC;
		 Grb : OUT STD_LOGIC;
		 Grc : OUT STD_LOGIC;
		 Rin : OUT STD_LOGIC;
		 Rout : OUT STD_LOGIC;
		 PCout : OUT STD_LOGIC;
		 MDRout : OUT STD_LOGIC;
		 Zhighout : OUT STD_LOGIC;
		 Zlowout : OUT STD_LOGIC;
		 HIout : OUT STD_LOGIC;
		 LOout : OUT STD_LOGIC;
		 In_portout : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC;
		 HIin : OUT STD_LOGIC;
		 LOin : OUT STD_LOGIC;
		 Con_in : OUT STD_LOGIC;
		 PCin : OUT STD_LOGIC;
		 IRin : OUT STD_LOGIC;
		 Cin : OUT STD_LOGIC;
		 Yin : OUT STD_LOGIC;
		 Zin : OUT STD_LOGIC;
		 Zhighin : OUT STD_LOGIC;
		 ZLowin : OUT STD_LOGIC;
		 MARin : OUT STD_LOGIC;
		 MDRin : OUT STD_LOGIC;
		 Out_portin : OUT STD_LOGIC;
		 BAout : OUT STD_LOGIC;
		 R14MUX_enable : OUT STD_LOGIC;
		 IncPC_enable : OUT STD_LOGIC;
		 run : OUT STD_LOGIC;
		 clear : OUT STD_LOGIC;
		 read_signal : OUT STD_LOGIC;
		 write_signal : OUT STD_LOGIC;
		 ALU_cs : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT r14mux
	PORT(select_encode_enable : IN STD_LOGIC;
		 R14MUX_enable : IN STD_LOGIC;
		 R14MUX_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT in_port_reg
	PORT(clk : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register_r0
	PORT(clk : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 register_in : IN STD_LOGIC;
		 BAout : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT con_ff_logic
	PORT(Con_in : IN STD_LOGIC;
		 con_clk : IN STD_LOGIC;
		 IR_low_bits : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 register_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 con_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ir_conff_split
	PORT(IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 IR_sliced : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram_ta
	PORT(clock : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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

COMPONENT select_encode_logic_sel
	PORT(Gra : IN STD_LOGIC;
		 Grb : IN STD_LOGIC;
		 Grc : IN STD_LOGIC;
		 Rin : IN STD_LOGIC;
		 Rout : IN STD_LOGIC;
		 BAout : IN STD_LOGIC;
		 IR_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 C_sign_extended : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Reg_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Reg_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mdmux
	PORT(Read_input : IN STD_LOGIC;
		 BusMuxOut : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Mdatain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 MDMux_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mar_splicer
	PORT(MAR_input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 address_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT selectencodelogic_r_splitter
	PORT(data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 r0 : OUT STD_LOGIC;
		 r1 : OUT STD_LOGIC;
		 r2 : OUT STD_LOGIC;
		 r3 : OUT STD_LOGIC;
		 r4 : OUT STD_LOGIC;
		 r5 : OUT STD_LOGIC;
		 r6 : OUT STD_LOGIC;
		 r7 : OUT STD_LOGIC;
		 r8 : OUT STD_LOGIC;
		 r9 : OUT STD_LOGIC;
		 r10 : OUT STD_LOGIC;
		 r11 : OUT STD_LOGIC;
		 r12 : OUT STD_LOGIC;
		 r13 : OUT STD_LOGIC;
		 r14 : OUT STD_LOGIC;
		 r15 : OUT STD_LOGIC
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

SIGNAL	address :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	C_sign_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	PC_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	R14_enable :  STD_LOGIC;
SIGNAL	Reg_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	Reg_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 



b2v_C_sign_extended : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => Cin,
		 q => C_sign_in,
		 output => C_sign_out);


b2v_HI : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => HIin,
		 q => BusMuxOut,
		 output => HI_out);


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


b2v_inst10 : incpc
PORT MAP(enable => IncPC_enable,
		 A => BusMuxOut,
		 B => PC_in);


b2v_inst11 : control_unit
PORT MAP(clk => clk,
		 reset => reset,
		 stop => stop,
		 CON_FF => CON_FF_out,
		 IR => IR_out,
		 Gra => Gra,
		 Grb => Grb,
		 Grc => Grc,
		 Rin => Rin,
		 Rout => Rout,
		 PCout => PCout,
		 MDRout => MDRout,
		 Zhighout => Zhighout,
		 Zlowout => Zlowout,
		 HIout => HIout,
		 LOout => LOout,
		 In_portout => In_portout,
		 Cout => Cout,
		 HIin => HIin,
		 LOin => LOin,
		 Con_in => Con_in,
		 PCin => PCin,
		 IRin => IRin,
		 Cin => Cin,
		 Yin => Yin,
		 Zin => Zin,
		 Zhighin => Zhighin,
		 ZLowin => Zlowin,
		 MARin => MARin,
		 MDRin => MDRin,
		 Out_portin => Out_portin,
		 BAout => BAout,
		 R14MUX_enable => R14MUX_enable,
		 IncPC_enable => IncPC_enable,
		 run => run,
		 clear => clear,
		 read_signal => read_signal,
		 write_signal => write_signal,
		 ALU_cs => ALU_cs);


b2v_inst12 : r14mux
PORT MAP(select_encode_enable => R14in,
		 R14MUX_enable => R14MUX_enable,
		 R14MUX_out => R14_enable);


b2v_inst13 : in_port_reg
PORT MAP(clk => clk,
		 clear => clear,
		 q => in_port_input,
		 output => In_port_out);


b2v_inst16 : register_r0
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R0in,
		 BAout => BAout,
		 q => BusMuxOut,
		 output => R0_out);


b2v_inst17 : con_ff_logic
PORT MAP(Con_in => Con_in,
		 con_clk => clk,
		 IR_low_bits => SYNTHESIZED_WIRE_0,
		 register_in => BusMuxOut,
		 con_out => CON_FF_out);


b2v_inst18 : ir_conff_split
PORT MAP(IR => IR_out,
		 IR_sliced => SYNTHESIZED_WIRE_0);


b2v_inst2 : ram_ta
PORT MAP(clock => clk,
		 rden => read_signal,
		 wren => write_signal,
		 address => address,
		 data => BusMuxOut,
		 q => Mdatain);


b2v_inst3 : alu
PORT MAP(A => Y_out,
		 B => BusMuxOut,
		 cs => ALU_cs,
		 C => ALU_out);


b2v_inst4 : z_split
PORT MAP(Zin => Z_in,
		 Zhigh => Zhigh_in,
		 Zlow => Zlow_in);


b2v_inst5 : select_encode_logic_sel
PORT MAP(Gra => Gra,
		 Grb => Grb,
		 Grc => Grc,
		 Rin => Rin,
		 Rout => Rout,
		 BAout => BAout,
		 IR_in => IR_out,
		 C_sign_extended => C_sign_in,
		 Reg_in => Reg_in,
		 Reg_out => Reg_out);


b2v_inst6 : mdmux
PORT MAP(Read_input => read_signal,
		 BusMuxOut => BusMuxOut,
		 Mdatain => Mdatain,
		 MDMux_out => MDR_in);


b2v_inst7 : mar_splicer
PORT MAP(MAR_input => MAR_out,
		 address_out => address);


b2v_inst8 : selectencodelogic_r_splitter
PORT MAP(data_in => Reg_in,
		 r0 => R0in,
		 r1 => R1in,
		 r2 => R2in,
		 r3 => R3in,
		 r4 => R4in,
		 r5 => R5in,
		 r6 => R6in,
		 r7 => R7in,
		 r8 => R8in,
		 r9 => R9in,
		 r10 => R10in,
		 r11 => R11in,
		 r12 => R12in,
		 r13 => R13in,
		 r14 => R14in,
		 r15 => R15in);


b2v_inst9 : selectencodelogic_r_splitter
PORT MAP(data_in => Reg_out,
		 r0 => R0out,
		 r1 => R1out,
		 r2 => R2out,
		 r3 => R3out,
		 r4 => R4out,
		 r5 => R5out,
		 r6 => R6out,
		 r7 => R7out,
		 r8 => R8out,
		 r9 => R9out,
		 r10 => R10out,
		 r11 => R11out,
		 r12 => R12out,
		 r13 => R13out,
		 r14 => R14out,
		 r15 => R15out);


b2v_IR : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => IRin,
		 q => BusMuxOut,
		 output => IR_out);


b2v_LO : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => LOin,
		 q => BusMuxOut,
		 output => LO_out);


b2v_MAR : register_32
PORT MAP(clear => clear,
		 clk => clk,
		 register_in => MARin,
		 q => BusMuxOut,
		 output => MAR_out);


b2v_MDR : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => MDRin,
		 q => MDR_in,
		 output => MDR_out);


b2v_Out_port : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => Out_portin,
		 q => BusMuxOut,
		 output => Out_port_output);


b2v_PC : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => PCin,
		 q => PC_in,
		 output => PC_out);


b2v_R1 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R1in,
		 q => BusMuxOut,
		 output => R1_out);


b2v_R10 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R10in,
		 q => BusMuxOut,
		 output => R10_out);


b2v_R11 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R11in,
		 q => BusMuxOut,
		 output => R11_out);


b2v_R12 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R12in,
		 q => BusMuxOut,
		 output => R12_out);


b2v_R13 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R13in,
		 q => BusMuxOut,
		 output => R13_out);


b2v_R14 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R14_enable,
		 q => BusMuxOut,
		 output => R14_out);


b2v_R15 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R15in,
		 q => BusMuxOut,
		 output => R15_out);


b2v_R2 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R2in,
		 q => BusMuxOut,
		 output => R2_out);


b2v_R3 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R3in,
		 q => BusMuxOut,
		 output => R3_out);


b2v_R4 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R4in,
		 q => BusMuxOut,
		 output => R4_out);


b2v_R5 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R5in,
		 q => BusMuxOut,
		 output => R5_out);


b2v_R6 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R6in,
		 q => BusMuxOut,
		 output => R6_out);


b2v_R7 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R7in,
		 q => BusMuxOut,
		 output => R7_out);


b2v_R8 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R8in,
		 q => BusMuxOut,
		 output => R8_out);


b2v_R9 : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => R9in,
		 q => BusMuxOut,
		 output => R9_out);


b2v_Y : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => Yin,
		 q => BusMuxOut,
		 output => Y_out);


b2v_Z : register_64
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => Zin,
		 q => ALU_out,
		 output => Z_in);


b2v_Zhigh : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => Zhighin,
		 q => Zhigh_in,
		 output => Zhigh_out);


b2v_Zlow : register_32
PORT MAP(clk => clk,
		 clear => clear,
		 register_in => Zlowin,
		 q => Zlow_in,
		 output => Zlow_out);


END bdf_type;