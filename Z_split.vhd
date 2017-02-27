library IEEE;
use ieee.std_logic_1164.all;

entity Z_split is 
	PORT(
 Zin : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
 Zhigh : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
 Zlow : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);
END Z_split;

architecture behavioral of Z_split is 
begin
	Zhigh <= Zin(63 DOWNTO 32);
	Zlow <= Zin(31 DOWNTO 0);
end behavioral; 
