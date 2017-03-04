library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY booth_32_algorithm_tb IS
END;

ARCHITECTURE booth_32_algorithm_tb_arch of booth_32_algorithm_tb IS

	SIGNAL multiplier_tb : signed(31 downto 0);
	SIGNAL multiplicand_tb : signed(31 downto 0);
	SIGNAL out_product_tb : signed(63 downto 0);
	
	COMPONENT booth_32_algorithm 
		PORT  (
			multiplier : IN signed(31 downto 0);
			multiplicand : IN signed(31 downto 0);
			out_product : OUT signed(63 downto 0)

			);
	END COMPONENT booth_32_algorithm;
	
	BEGIN
	
	DUT1 : booth_32_algorithm
	
	PORT MAP (
		multiplier => multiplier_tb,
		multiplicand => multiplicand_tb,
		out_product => out_product_tb);
		
	sim_process: process
	
	begin
	wait for 0 ns;
	multiplier_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";		-- 0
	multiplicand_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000";		-- 0
	
	wait for 20 ns;
	multiplier_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";		-- 8
	multiplicand_tb <= b"0000_0000_0000_0000_0000_0000_0000_0100";		-- 4
	
	wait for 40 ns;
	multiplier_tb <= b"0000_0000_0000_0000_0000_0000_0001_0100";		-- 20
	multiplicand_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";		-- 8
	
	wait for 60 ns;
	multiplier_tb <= b"1111_1111_1111_1111_1111_1111_1111_1110";		-- -2
	multiplicand_tb <= b"0000_0000_0000_0000_0000_0000_0000_0101";		-- 5
	
	wait;
	
	end process sim_process;
	
	end;
	
	
		