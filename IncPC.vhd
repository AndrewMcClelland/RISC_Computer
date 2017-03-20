library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IncPC is 
	PORT(
	A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	enable : IN STD_LOGIC
);
END IncPC;

architecture behavioral of IncPC is 
begin
	process(A, enable) is
	begin
		if (enable = '1') then
			B <= std_logic_vector(unsigned(A) + B"1");
		else
			B <= A;
		end if;	
	end process;
end behavioral; 
