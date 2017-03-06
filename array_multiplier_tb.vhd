library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY array_multiplier_tb IS
END;

ARCHITECTURE array_multiplier_tb_arch of array_multiplier_tb IS

	SIGNAL multiplier_tb : std_logic_vector(7 downto 0);
	SIGNAL multiplicand_tb : std_logic_vector(7 downto 0);
	SIGNAL out_product_tb : std_logic_vector(15 downto 0);
	
	COMPONENT array_multiplier
		PORT  (
			multiplier : IN std_logic_vector(7 downto 0);
			multiplicand : IN std_logic_vector(7 downto 0);
			out_product : OUT std_logic_vector(15 downto 0)

			);
	END COMPONENT array_multiplier;
	
	BEGIN
	
	DUT1 : array_multiplier
	
	PORT MAP (
		multiplier => multiplier_tb,
		multiplicand => multiplicand_tb,
		out_product => out_product_tb);
		
	sim_process: process
	
	begin
	wait for 0 ns;
	multiplier_tb <= b"00000000";		-- 0
	multiplicand_tb <= b"00000000";		-- 0
	
	wait for 20 ns;
	multiplier_tb <= b"00001000";		-- 8
	multiplicand_tb <= b"00000100";		-- 4
	
	wait for 40 ns;
	multiplier_tb <= b"00001000";		-- 8
	multiplicand_tb <= b"00010100";		-- 20
	
	wait for 60 ns;
	multiplier_tb <= b"00000101";		-- 5
	multiplicand_tb <= b"00000101";		-- 5
	
	wait;
	
	end process sim_process;
	
	end;
	
	
		