library IEEE;
use ieee.std_logic_1164.all;

entity bus_mux_32_to_1 is 
	PORT(BusMuxIn_R0,
	BusMuxIn_R1,
	BusMuxIn_R2,
	BusMuxIn_R3,
	BusMuxIn_R4,
	BusMuxIn_R5,
	BusMuxIn_R6,
	BusMuxIn_R7,
	BusMuxIn_R8,
	BusMuxIn_R9,
	BusMuxIn_R10x,
	BusMuxIn_R11x,
	BusMuxIn_R12x,
	BusMuxIn_R13x,
	BusMuxIn_R14x,
	BusMuxIn_R15x,
	BusMuxIn_HI,
	BusMuxIn_LO,
	BusMuxIn_Zlow,
	BusMuxIn_Zhigh,
	BusMuxIn_PC,
	BusMuxIn_MDR,
	BusMuxIn_In_port,
	C_sign_extended	: in std_logic_vector(31 downto 0);
	S : in std_logic_vector (4 downto 0);
	BusMuxOut : out std_logic_vector (31 downto 0)
	);
END bus_mux_32_to_1;


architecture behavioral of bus_mux_32_to_1 is
begin
	process(S, BusMuxIn_R0,
	BusMuxIn_R1,
	BusMuxIn_R2,
	BusMuxIn_R3,
	BusMuxIn_R4,
	BusMuxIn_R5,
	BusMuxIn_R6,
	BusMuxIn_R7,
	BusMuxIn_R8,
	BusMuxIn_R9,
	BusMuxIn_R10x,
	BusMuxIn_R11x,
	BusMuxIn_R12x,
	BusMuxIn_R13x,
	BusMuxIn_R14x,
	BusMuxIn_R15x,
	BusMuxIn_HI,
	BusMuxIn_LO,
	BusMuxIn_Zlow,
	BusMuxIn_Zhigh,
	BusMuxIn_PC,
	BusMuxIn_MDR,
	BusMuxIn_In_port,
	C_sign_extended)
	variable temp : std_logic_vector (31 downto 0);
	begin
		case S is 
			when "00000" => temp:= BusMuxIn_R0;
			when "00001" => temp:= BusMuxIn_R1;
			when "00010" => temp:= BusMuxIn_R2;
			when "00011" => temp:= BusMuxIn_R3;
			when "00100" => temp:= BusMuxIn_R4;
			when "00101" => temp:= BusMuxIn_R5;
			when "00110" => temp:= BusMuxIn_R6;
			when "00111" => temp:= BusMuxIn_R7;
			when "01000" => temp:= BusMuxIn_R8;
			when "01001" => temp:= BusMuxIn_R9;
			when "01010" => temp:= BusMuxIn_R10x;
			when "01011" => temp:= BusMuxIn_R11x;
			when "01100" => temp:= BusMuxIn_R12x;
			when "01101" => temp:= BusMuxIn_R13x;
			when "01110" => temp:= BusMuxIn_R14x;
			when "01111" => temp:= BusMuxIn_R15x;
			when "10000" => temp:= BusMuxIn_HI;
			when "10001" => temp:= BusMuxIn_LO;
			when "10010" => temp:= BusMuxIn_Zlow;
			when "10011" => temp:= BusMuxIn_Zhigh;
			when "10100" => temp:= BusMuxIn_PC;
			when "10101" => temp:= BusMuxIn_MDR;
			when "10110" => temp:= BusMuxIn_In_port;
			when "10111" => temp:= C_sign_extended;
			when Others => temp:= "00000000000000000000000000000000";
	end case;
	BusMuxOut <= temp;
	end process;
end behavioral;
	
	