library IEEE;
use ieee.std_logic_1164.all;

entity register_R0 is 
	PORT(
 q : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 clk,clear,register_in, BAout :IN STD_LOGIC;
 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END register_R0;

architecture behavioral of register_R0 is 
begin
	process(clk,clear)
	variable temp : std_logic_vector (31 downto 0);
		begin
		if (rising_edge(clk)) then
			if (clear = '1') then
				temp := "00000000000000000000000000000000";
			elsif (register_in = '1') then
				temp := q;
			end if;		
		end if;

		if (not BAout = '1') then
			output <= temp and b"11111111111111111111111111111111";
		else
			output <= temp and b"00000000000000000000000000000000";
		end if;
		end process;
end behavioral; 
