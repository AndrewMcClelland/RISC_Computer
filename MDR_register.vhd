library IEEE;
use ieee.std_logic_1164.all;

entity MDR_register is 
	PORT(
 D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 clr, clk, enable :IN STD_LOGIC;
 Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END MDR_register;

architecture behavioral of MDR_register is 
begin
	process(clk,clr)
		begin
		if (rising_edge(clk) AND clk = '1') then
			if (clr = '1') then
				Q <= "00000000000000000000000000000000";
			elsif (enable = '1') then
				Q <= D;
			end if;
			
		end if;
				
		end process;
end behavioral; 
