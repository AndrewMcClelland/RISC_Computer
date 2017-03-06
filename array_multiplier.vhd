--8 bit by 8 bit array multiplier
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity array_multiplier is
	port(multiplicand, multiplier : in std_logic_vector(7 downto 0); --M,Q
			out_product : out std_logic_vector(15 downto 0)
	);
end array_multiplier;

architecture behavioral of array_multiplier is 
begin
	process(multiplier, multiplicand)
		variable partial_product : signed(8 downto 0); 
		variable temp_product : signed(15 downto 0);
		variable signed_mult : signed(7 downto 0); --multiplicand converted to signed to facilitate addition
		begin
		signed_mult := signed(multiplicand);
		partial_product := b"000000000"; --intial value of partial product
		for count in 0 to 6 loop
			if (multiplier(count) = '1') then --adds multiplicand to partial product only when Qi is equal to 1
				partial_product := partial_product + signed_mult;
			end if;
			temp_product(count) := partial_product(0); --adds last bit of partial product to product
			partial_product := partial_product srl 1;	--shifts partial product
		end loop;
		temp_product(15 downto 7) := partial_product; --adds remaining bits to product
		out_product <= std_logic_vector(temp_product);
	end process;
end behavioral;