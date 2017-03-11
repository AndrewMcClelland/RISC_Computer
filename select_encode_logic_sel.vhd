library IEEE;
use ieee.std_logic_1164.all;

entity select_encode_logic_sel is 
	port(IR_in : in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout : in std_logic;
		C_sign_extended : out std_logic_vector(31 downto 0);
		Reg_in, Reg_out : out std_logic_vector(15 downto 0)
	);
end select_encode_logic_sel;

architecture behavioral of select_encode_logic_sel is
begin
process(IR_in, Gra, Grb, Grc, Rin, Rout, BAout)
	variable RA, RB, RC : std_logic_vector(3 downto 0);
	variable Gra_vector, Grb_vector, Grc_vector : std_logic_vector(3 downto 0);
	variable Rin_vector, Rout_vector, BAout_vector : std_logic_vector(15 downto 0);
	variable In_decoder : std_logic_vector(3 downto 0);
	variable Out_decoder : std_logic_vector(15 downto 0);
	begin 
		RA := IR_in(26 downto 23);
		RB := IR_in(22 downto 19);
		RC := IR_in(18 downto 15);
		
		if(Gra = '1') then
			Gra_vector := b"1111";
		else
			Gra_vector := b"0000";
		end if;
		
		if(Grb = '1') then
			Grb_vector := b"1111";
		else
			Grb_vector := b"0000";
		end if;
		
		if(Grc = '1') then
			Grc_vector := b"1111";
		else
			Grc_vector := b"0000";
		end if;
			
		if(Rin = '1') then
			Rin_vector := b"1111_1111_1111_1111";
		else
			Rin_vector := b"0000_0000_0000_0000";
		end if;
		
		if(Rout = '1') then
			Rout_vector := b"1111_1111_1111_1111";
		else
			Rout_vector := b"0000_0000_0000_0000";
		end if;
			
		if(BAout = '1') then
			BAout_vector := b"1111_1111_1111_1111";
		else
			BAout_vector := b"0000_0000_0000_0000";
		end if;
		
		In_decoder := (RA and Gra_vector) or (RB and Grb_vector) or (RC and Grc_vector);
	
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
			when others => Out_decoder := b"0000_0000_0000_0000";
		end case;
				
		Reg_in <= Out_decoder and Rin_vector;
		Reg_out <= Out_decoder and (Rout_vector or BAout_vector);
		
		if (IR_in(18) = '0') then
			C_sign_extended(31 downto 19) <= b"0000_0000_0000_0";
		else
			C_sign_extended(31 downto 19) <= b"1111_1111_1111_1";
		end if;

		C_sign_extended(18 downto 0) <= IR_in(18 downto 0);
	
	end process;
	
end behavioral;