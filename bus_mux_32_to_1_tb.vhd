LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bus_mux_32_to_1_tb IS

END;

ARCHITECTURE bus_mux_32_to_1_tb_arch OF bus_mux_32_to_1_tb IS
	SIGNAL BusMuxIn_R0_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R1_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R2_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R3_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R4_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R5_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R6_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R7_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R8_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R9_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R10_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R11_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R12_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R13_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R14_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_R15_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_HI_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_LO_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_Zlow_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_Zhigh_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_PC_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_MDR_tb : std_logic_vector(31 downto 0);
	SIGNAL BusMuxIn_In_port_tb : std_logic_vector(31 downto 0);
	SIGNAL C_sign_extended_tb : std_logic_vector(31 downto 0);
	SIGNAL S_tb : std_logic_vector(4 downto 0);
	SIGNAL BusMuxOut_tb : std_logic_vector(31 downto 0);
	
	COMPONENT bus_mux_32_to_1
		PORT (
			BusMuxIn_R0 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R1 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R2 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R3 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R4 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R5 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R6 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R7 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R8 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R9 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R10 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R11 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R12 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R13 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R14 : IN std_logic_vector(31 downto 0);
			BusMuxIn_R15 : IN std_logic_vector(31 downto 0);
			BusMuxIn_HI : IN std_logic_vector(31 downto 0);
			BusMuxIn_LO : IN std_logic_vector(31 downto 0);
			BusMuxIn_Zlow : IN std_logic_vector(31 downto 0);
			BusMuxIn_Zhigh : IN std_logic_vector(31 downto 0);
			BusMuxIn_PC : IN std_logic_vector(31 downto 0);
			BusMuxIn_MDR : IN std_logic_vector(31 downto 0);
			BusMuxIn_In_port : IN std_logic_vector(31 downto 0);
			C_sign_extended : IN std_logic_vector(31 downto 0);
			S : IN std_logic_vector(4 downto 0);
			BusMuxOut : OUT std_logic_vector(31 downto 0)
			);
	END COMPONENT bus_mux_32_to_1;
	
	BEGIN
	
		DUT1 : bus_mux_32_to_1
		
		PORT MAP (
			BusMuxIn_R0 => BusMuxIn_R0_tb,
			BusMuxIn_R1 => BusMuxIn_R1_tb,
			BusMuxIn_R2 => BusMuxIn_R2_tb,
			BusMuxIn_R3 => BusMuxIn_R3_tb,
			BusMuxIn_R4 => BusMuxIn_R4_tb,
			BusMuxIn_R5 => BusMuxIn_R5_tb,
			BusMuxIn_R6 => BusMuxIn_R6_tb,
			BusMuxIn_R7 => BusMuxIn_R7_tb,
			BusMuxIn_R8 => BusMuxIn_R8_tb,
			BusMuxIn_R9 => BusMuxIn_R9_tb,
			BusMuxIn_R10 => BusMuxIn_R10_tb,
			BusMuxIn_R11 => BusMuxIn_R11_tb,
			BusMuxIn_R12 => BusMuxIn_R12_tb,
			BusMuxIn_R13 => BusMuxIn_R13_tb,
			BusMuxIn_R14 => BusMuxIn_R14_tb,
			BusMuxIn_R15 => BusMuxIn_R15_tb,
			BusMuxIn_HI => BusMuxIn_HI_tb,
			BusMuxIn_LO => BusMuxIn_LO_tb,
			BusMuxIn_Zlow => BusMuxIn_Zlow_tb,
			BusMuxIn_Zhigh => BusMuxIn_Zhigh_tb,
			BusMuxIn_PC => BusMuxIn_PC_tb,
			BusMuxIn_MDR => BusMuxIn_MDR_tb,
			BusMuxIn_In_port => BusMuxIn_In_port_tb,
			C_sign_extended => C_sign_extended_tb,
			S => S_tb,
			BusMuxOut => BusMuxOut_tb
			);
	
	sim_process: process
	
	begin
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00000";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00001";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00010";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00011";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00100";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"00101";
	
	wait for 20 ns;
	
	BusMuxIn_R0_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";
	BusMuxIn_R1_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	BusMuxIn_R2_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	BusMuxIn_R3_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	BusMuxIn_R4_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";
	BusMuxIn_R5_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";
	BusMuxIn_R6_tb <= b"0000_0000_0000_0000_0000_0000_0000_0110";
	BusMuxIn_R7_tb <= b"0000_0000_0000_0000_0000_0000_0000_0111";
	BusMuxIn_R8_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	BusMuxIn_R9_tb <= b"0000_0000_0000_0000_0000_0000_0000_1001";
	BusMuxIn_R10_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	BusMuxIn_R11_tb <= b"0000_0000_0000_0000_0000_0000_0000_1011";
	BusMuxIn_R12_tb <= b"0000_0000_0000_0000_0000_0000_0000_1100";
	BusMuxIn_R13_tb <= b"0000_0000_0000_0000_0000_0000_0000_1101";
	BusMuxIn_R14_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	BusMuxIn_R15_tb <= b"0000_0000_0000_0000_0000_0000_0000_1111";
	BusMuxIn_HI_tb <= b"0000_0000_0000_0000_0000_0000_0001_0000";
	BusMuxIn_LO_tb <= b"0000_0000_0000_0000_0000_0000_0001_0001";
	BusMuxIn_Zlow_tb <= b"0000_0000_0000_0000_0000_0000_0001_0010";
	BusMuxIn_Zhigh_tb <= b"0000_0000_0000_0000_0000_0000_0001_0011";
	BusMuxIn_PC_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";
	BusMuxIn_MDR_tb <= b"0000_0000_0000_0000_0000_0000_0001_0101";
	BusMuxIn_In_port_tb <= b"0000_0000_0000_0000_0000_0000_0001_0110";
	C_sign_extended_tb <= b"0000_0000_0000_0000_0000_0000_0001_0111";
	S_tb <= b"11111";
	
	wait;
	
	end process sim_process;
	end;
	
	
		
	