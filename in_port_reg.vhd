library IEEE;
use ieee.std_logic_1164.all;

entity in_port_reg is 
	PORT(
 q : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 clk,clear :IN STD_LOGIC;
 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END in_port_reg;

architecture behavioral of in_port_reg is 
begin
	process(clk,clear)
		begin
		if (rising_edge(clk)) then
			if (clear = '1') then
				output <= "00000000000000000000000000000000";
			else
				output <= q;
			end if;
		end if;			
		end process;
end behavioral; 
