library IEEE;
use ieee.std_logic_1164.all;

entity IR_ConFF_Split is 
	PORT(
 IR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 IR_sliced : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
);
END IR_ConFF_Split;

architecture behavioral of IR_ConFF_Split is 
begin
	IR_sliced <= IR(1 downto 0);
end behavioral; 
