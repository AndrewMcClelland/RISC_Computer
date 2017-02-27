library IEEE;
use ieee.std_logic_1164.all;

entity register_32 is 
	PORT(
 q : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 clk,clear,register_in :IN STD_LOGIC;
 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END register_32;

architecture behavioral of register_32 is 
begin
	process(clk,clear)
		begin
		if (rising_edge(clk) AND clk = '1') then
			if (clear = '1') then
				output <= "00000000000000000000000000000000";
			elsif (register_in = '1') then
				output <= q;
			end if;
			
		end if;
				
		end process;
end behavioral; 
