LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY MDMux_tb IS

END;

ARCHITECTURE MDMux_tb_arch OF MDMux_tb IS
	SIGNAL Mdatain_tb : std_logic_vector (31 downto 0);
	SIGNAL BusMuxOut_tb : std_logic_vector (31 downto 0);
	SIGNAL Read_input_tb : std_logic;
	SIGNAL MDMux_out_tb : std_logic_vector(31 downto 0);
	
	COMPONENT MDMux
		PORT (
			Mdatain : IN std_logic_vector(31 DOWNTO 0);
			BusMuxOut : IN std_logic_vector(31 DOWNTO 0);
			Read_input :IN std_logic;
			MDMux_out : OUT std_logic_vector(31 DOWNTO 0));
	END COMPONENT MDMux;
	
	BEGIN
	
		DUT1 : MDMux
		
		PORT MAP (
			Mdatain => Mdatain_tb,
			BusMuxOut => BusMuxOut_tb,
			Read_input => Read_input_tb,
			MDMux_out => MDMux_out_tb);
	
	sim_process: process
	
	begin
	wait for 0 ns;
	
	Read_input_tb <= '1';
	BusMuxOut_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	Mdatain_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	
	wait for 30 ns;
	
	Read_input_tb <= '0';
	BusMuxOut_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	Mdatain_tb <= b"0000_0000_0000_0000_0000_0000_0000_0011";
	
	wait;
	
	end process sim_process;
	end;
	
	