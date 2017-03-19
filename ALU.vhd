library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
	PORT(
	A,B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	C : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	cs : IN STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END ALU;

architecture behavioral of ALU is 
begin
	process(A, B, cs) is
	variable temp_A, temp_B : SIGNED (31 downto 0);
	variable temp_C : SIGNED (63 downto 0);
		begin
			temp_A := signed(A);
			temp_B := signed(B);
			case cs is 
				when "0000" => temp_C:= (temp_A + temp_B) + x"0000_0000_0000_0000"; 											--add
				when "0001" => temp_C:= (temp_A - temp_B) + x"0000_0000_0000_0000";  											--sub
				when "0010" => temp_C:= (temp_A * temp_B) + x"0000_0000_0000_0000";											--mult
				when "0011" => temp_C:= (temp_A mod temp_B) & (temp_A / temp_B);												--div
				when "0100" => temp_C:= (temp_A and temp_B) + x"0000_0000_0000_0000"; 										--and
				when "0101" => temp_C:= (temp_A or temp_B) + x"0000_0000_0000_0000"; 										--or
				when "0110" => temp_C:= (temp_A srl to_integer(temp_B)) + x"0000_0000_0000_0000"; 						--shr
				when "0111" => temp_C:= (temp_A sll to_integer(temp_B)) + x"0000_0000_0000_0000";							--shl
				when "1000" => temp_C:= (temp_A ror to_integer(temp_B)) + x"0000_0000_0000_0000";							--ror
				when "1001" => temp_C:= (temp_A rol to_integer(temp_B)) + x"0000_0000_0000_0000";	 						--rol
				when "1010" => temp_C:= ((NOT temp_B)+1) + x"0000_0000_0000_0000";		--neg
				when "1011" => temp_C:= (not temp_B) + x"0000_0000_0000_0000";											--not
				when Others => NULL;					
			end case;
			C <= std_logic_vector(temp_C);	
		end process;
end behavioral; 
