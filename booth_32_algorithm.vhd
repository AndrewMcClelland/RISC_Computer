library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity booth_32_algorithm is 
	PORT(	multiplicand, multiplier : in signed(31 downto 0);
				out_product : out signed(63 downto 0);
				out_low_bits : out signed(1 downto 0)
			 );
end booth_32_algorithm;

architecture behavioral of booth_32_algorithm is
begin
	process(multiplier, multiplicand)
		
		variable temp_product : signed(64 downto 0);			-- 65 bit vector where 64 bits holds 32 bit upper and 32 bit multiplicand, and lowest bit is the previous "bit"
		variable low_bits : signed(1 downto 0);
		
		begin
		
		temp_product := X"0000_0000" & (multiplier & b"0");			-- create 64 bit (?) product value with negative multiplicand as lower 32 bits
		
		for count in 0 to 31 loop
			low_bits := temp_product(1 downto 0); 								-- store lower 2 bits in variable
			
			if (low_bits = "01") then 		
			-- add
				temp_product(64 downto 33)  := temp_product(64 downto 33) + multiplicand;
				--temp_product := temp_product() + (multiplicand & b"0_0000_0000_0000_0000_0000_0000_0000_0000");
			elsif (low_bits = "10") then 		
			-- subtract
				temp_product(64 downto 33) := temp_product(64 downto 33) - multiplicand;
				--temp_product := temp_product + (((not multiplicand) + 1) & b"0_0000_0000_0000_0000_0000_0000_0000_0000");
			end if;																		-- do nothing 'extra' if "00" or "11"
			
			temp_product(63 downto 0) := temp_product(64 downto 1);
			--temp_product := temp_product sra 1;			
			-- shift product right by 1 no matter what
				
		end loop;
		
		out_product <= temp_product(64 downto 1); 							-- assign output product as the high 64 bits (excludes lowest bit because that is prev bit)
		
		-- TEMP
		out_low_bits <= low_bits;
		
	end process;
	
end behavioral;