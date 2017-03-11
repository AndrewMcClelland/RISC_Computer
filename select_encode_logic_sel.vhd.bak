library IEEE;
use ieee.std_logic_1164.all;

entity select_encode_logic is 
	port(IR_in : in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout : in std_logic_vector(0 downto 0);
		C_sign_extended : out std_logic_vector(31 downto 0);
		Reg_in, Reg_out : out std_logic_vector(15 downto 0)	
	);
end select_encode_logic;

architecture behavioral of select_encode_logic is 
begin

process(IR_in, Gra, Grb, Grc, Rin, Rout, BAout)
	variable RA : std_logic_vector(3 downto 0);
	variable RB : std_logic_vector(3 downto 0);
	variable RC : std_logic_vector(3 downto 0);
	variable In_decoder : std_logic_vector(3 downto 0);
	variable Out_decoder : std_logic_vector(15 downto 0);
	begin 
		RA := IR_in(26 downto 23);
		RB := IR_in(22 downto 19);
		RC := IR_in(18 downto 15);
		
		In_decoder := (RA and Gra) or (RB and Grb) or (RC and Grc);
	
		case In_decoder is
			when "0000" => Out_decoder := b"0000_0000_0000_0001";
			when "0001" => Out_decoder := b"0000_0000_0000_0010";
			when "0010" => Out_decoder := b"0000_0000_0000_0100";
			when "0011" => Out_decoder := b"0000_0000_0000_1000";
			when "0100" => Out_decoder := b"0000_0000_0001_0000";
			when "0101" => Out_decoder := b"0000_0000_0010_0000";
			when "0110" => Out_decoder := b"0000_0000_0100_0000";
			when "0111" => Out_decoder := b"0000_0000_1000_0000";
			when "1000" => Out_decoder := b"0000_0001_0000_0000";
			when "1001" => Out_decoder := b"0000_0010_0000_0000";
			when "1010" => Out_decoder := b"0000_0100_0000_0000";
			when "1011" => Out_decoder := b"0000_1000_0000_0000";
			when "1100" => Out_decoder := b"0001_0000_0000_0000";
			when "1101" => Out_decoder := b"0010_0000_0000_0000";
			when "1110" => Out_decoder := b"0100_0000_0000_0000";
			when "1111" => Out_decoder := b"1000_0000_0000_0000";
		end case;

		Reg_in <= Out_decoder and Rin;
		Reg_out <= Out_decoder and (Rout or BAout);
		
		if (IR_in(18) = '0') then
			C_sign_extended(31 downto 19) <= b"0000_0000_0000_0";
		else
			C_sign_extended(31 downto 19) <= b"1111_1111_1111_1";
		end if;

		C_sign_extended(18 downto 0) <= IR_in(18 downto 0);
	
	end process;
	
end behavioral;