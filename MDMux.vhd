library IEEE;
use ieee.std_logic_1164.all;

entity MDMUX is 
	PORT(
			BusMuxOut, Mdatain: in std_logic_vector(31 downto 0);
			Read_input : in std_logic;
			MDMux_out : out std_logic_vector (31 downto 0)
	);
END MDMUX;


architecture behavioral of MDMUX is
begin
	MDMux_out <= Mdatain when (Read_input = '1') else BusMuxOut;
end behavioral;
	