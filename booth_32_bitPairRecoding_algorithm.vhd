--32 by 32 booth algorithm with bit-pair recoding
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DO I SIGN EXTEND THE NEGATIVE NUMBER? ADD A 1 OR 0 FOR NEG OR POSITIVE MULTIPLIER? SEE HIS NOTES!!

entity booth_32_bitPairRecoding_algorithm is 
	PORT(	multiplicand, multiplier : in signed(31 downto 0);
			out_product : out signed(63 downto 0)
			 );
end booth_32_bitPairRecoding_algorithm;

architecture behavioral of booth_32_bitPairRecoding_algorithm is
begin
	process(multiplier, multiplicand)
		
		variable temp_product : signed(64 downto 0);						-- 64 bit vector where 64 bits holds 32 bit upper and 32 bit multiplicand, and lowest bit is the previous "bit"
		variable low_bits : signed(2 downto 0);
		
		begin
		
		temp_product := X"0000_0000" & (multiplier & b"0");			-- create 65 bit (?) product value with negative multiplicand as lower 32 bits and append a 0 (as "previous bit"
		low_bits := temp_product(2 downto 0);						-- initialize low bits to bottom two bits of multiplier and append a 0
		
		for curr_multiplier_bit in 1 to 31 loop							-- loop from first 'i' bit (2nd bit in multiplier) to end
			
			if (low_bits = "001") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand);	
			elsif (low_bits = "010") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand);
			elsif (low_bits = "011") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand + multiplicand);
			elsif (low_bits = "100") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) - (multiplicand + multiplicand);
			elsif (low_bits = "101") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) - (multiplicand);
			elsif (low_bits = "110") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) -(multiplicand);
			end if;																		-- do nothing 'extra' if "000" or "111"
			
			temp_product(63 downto 0) := temp_product(64 downto 1);		
			-- shift product right by 2 no matter what   --> HOW TO DO THIS???
			
			low_bits := temp_product(2 downto 0);
		
		end loop;
		
		out_product <= temp_product(64 downto 1); 							-- assign output product as the high 64 bits (excludes lowest bit because that is prev bit)
		
	end process;
	
end behavioral;