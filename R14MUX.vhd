library IEEE;
use ieee.std_logic_1164.all;

entity R14MUX is 
	PORT(
			select_encode_enable: in std_logic;
			R14MUX_enable: in std_logic;
			R14MUX_out : out std_logic
	);
END R14MUX;

architecture behavioral of R14MUX is
begin
	R14MUX_out <= '1' when (r14MUX_enable = '1') else select_encode_enable;
end behavioral;
	