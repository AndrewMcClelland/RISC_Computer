--32 by 32 booth algorithm with bit-pair recoding
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity booth_32_bitPairRecoding_algorithm is 
	PORT(	multiplicand, multiplier : in signed(31 downto 0);
			out_product : out signed(63 downto 0);
			multiplicand_dec, multiplier_dec, out_product_dec : out integer		-- integer version of inputs/output
			 );
end booth_32_bitPairRecoding_algorithm;

architecture behavioral of booth_32_bitPairRecoding_algorithm is
begin
	process(multiplier, multiplicand)
		
		variable temp_product : signed(64 downto 0);						-- 64 bit vector where 64 bits holds 32 bit upper and 32 bit multiplicand, and lowest bit is the previous "bit"
		variable low_bits : signed(2 downto 0);							-- 3 bit vector to hold low 3 bits of product value (used to determine how to add multiplicand)
		
		begin
		
		temp_product := X"0000_0000" & (multiplier & b"0");			-- create 65 bit product value with negative multiplicand as lower 32 bits and append a 0 (as initial "previous bit")
		low_bits := temp_product(2 downto 0);								-- initialize low bits to bottom two bits of multiplier and append a 0
		
		for curr_multiplier_bit in 0 to 32 loop							-- loop through multiplier bits to end
			
			if (low_bits = "001") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand);	
			elsif (low_bits = "010") then 		
			-- +1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand);
			elsif (low_bits = "011") then 		
			-- +2 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) + (multiplicand + multiplicand);
			elsif (low_bits = "100") then 		
			-- -2 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) - (multiplicand + multiplicand);
			elsif (low_bits = "101") then 		
			-- -1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) - (multiplicand);
			elsif (low_bits = "110") then 		
			-- -1 x M
				temp_product(64 downto 33)  := temp_product(64 downto 33) -(multiplicand);
			end if;																		-- do nothing 'extra' if "000" or "111"
			
			temp_product(63 downto 0) := temp_product(64 downto 1);		-- shift product value
			
			low_bits := temp_product(2 downto 0);								-- select 3 low bits from temp product for next loop iteration
		
		end loop;
		
		-- Convert bit to int so easier to see resuls in simulation
		multiplicand_dec <= to_integer(multiplicand);
		multiplier_dec <= to_integer(multiplier);
		out_product_dec <= to_integer(temp_product(64 downto 1));
		
		out_product <= temp_product(64 downto 1); 							-- assign output product as the high 64 bits (excludes lowest bit because that is prev bit)
		
	end process;
	
end behavioral;