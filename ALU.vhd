library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
	PORT(
	A,B : IN SIGNED(31 DOWNTO 0);
	clk :IN STD_LOGIC;
	C : OUT SIGNED(63 DOWNTO 0);
	cs : IN STD_LOGIC_VECTOR (3 DOWNTO 0)
);
END ALU;

architecture behavioral of ALU is 
begin
	process(clk)
	variable temp : SIGNED (63 downto 0);
		begin
		if (rising_edge(clk)) then
			case cs is 
				when "0000" => temp:= (A + B) + x"0000_0000_0000_0000"; 											--add
				when "0001" => temp:= (A - B) + x"0000_0000_0000_0000";  											--sub
				when "0010" => temp:= (A * B) + x"0000_0000_0000_0000";											--mult
				when "0011" => temp:= (A / B) + x"0000_0000_0000_0000";												--div
				when "0100" => temp:= (A and B) + x"0000_0000_0000_0000"; 										--and
				when "0101" => temp:= (A or B) + x"0000_0000_0000_0000"; 										--or
				when "0110" => temp:= (A srl to_integer(B)) + x"0000_0000_0000_0000"; 						--shr
				when "0111" => temp:= (A sll to_integer(B)) + x"0000_0000_0000_0000";							--shl
				when "1000" => temp:= (A ror to_integer(B)) + x"0000_0000_0000_0000";							--ror
				when "1001" => temp:= (A rol to_integer(B)) + x"0000_0000_0000_0000";	 						--rol
				when "1010" => temp:= ((NOT A)+1) + x"0000_0000_0000_0000";		--neg
				when "1011" => temp:= (not A) + x"0000_0000_0000_0000";											--not
				when Others => NULL;					
			end case;
			C <= temp;
		end if;	
		end process;
end behavioral; 
