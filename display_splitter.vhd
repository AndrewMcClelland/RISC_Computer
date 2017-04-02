library IEEE;
use ieee.std_logic_1164.all;

entity display_splitter is 
	port(input : in std_logic_vector(31 downto 0);
			output1, output2: out std_logic_vector(3 downto 0)
	);
end display_splitter;

architecture behavioral of display_splitter is
begin
	output1 <= input(3 downto 0);
	output2 <= input(7 downto 4);
end architecture behavioral;