library IEEE;
use ieee.std_logic_1164.all;

entity MDMUX is 
	PORT(BusMuxOut,
			Mdatain: in std_logic_vector(31 downto 0);
	Read_input : in std_logic;
	MDMux_out : out std_logic_vector (31 downto 0)
	);
END MDMUX;


architecture behavioral of MDMUX is
begin
	process(Read_input,
	BusMuxOut,
	Mdatain)
	variable temp : std_logic_vector (31 downto 0);
	begin
		case Read_input is 
			when '0' => temp:= BusMuxOut;
			when '1' => temp:= Mdatain;
	end case;
	MDMux_out <= temp;
	end process;
end behavioral;
	