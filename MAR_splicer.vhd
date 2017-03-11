library IEEE;
use ieee.std_logic_1164.all;

entity MAR_splicer is 
	port(MAR_input : in std_logic_vector(31 downto 0);
			address_out : out std_logic_vector(8 downto 0)
	);
end MAR_splicer;

architecture behavioral of MAR_splicer is
begin
	address_out <= MAR_input(8 downto 0);
end architecture behavioral;