library IEEE;
use ieee.std_logic_1164.all;

entity register_64 is 
	PORT(
 q : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
 clk,clear,register_in :IN STD_LOGIC;
 output : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
);
END register_64;

architecture behavioral of register_64 is 
begin
	process(clk,clear)
		begin
		if (rising_edge(clk)) then
			if (clear = '1') then
				output <= "0000000000000000000000000000000000000000000000000000000000000000";
			elsif (register_in = '1') then
				output <= q;
			end if;
			
		end if;
				
		end process;
end behavioral; 
