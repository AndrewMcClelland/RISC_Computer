LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CLA_tb IS

END;

ARCHITECTURE CLA_tb_arch OF CLA_tb IS
	SIGNAL ina_tb : std_logic_vector (15 downto 0);
	SIGNAL inb_tb : std_logic_vector (15 downto 0);
	SIGNAL cin_tb : std_logic;
	SIGNAL sum_out_tb : std_logic_vector (15 downto 0);
	SIGNAL cout_tb : std_logic;
	
	COMPONENT CLA
		PORT (
			A : IN std_logic_vector(15 downto 0);
			B : IN std_logic_vector(15 downto 0);
			Cin : IN std_logic;
			S : OUT std_logic_vector(15 downto 0);
			Cout : OUT std_logic);
	END COMPONENT CLA;
	
	BEGIN
	
		DUT1 : CLA
		
		PORT MAP (
			A => ina_tb,
			B => inb_tb,
			Cin => cin_tb,
			Cout => cout_tb,
			S => sum_out_tb);
	
	sim_process: process
	
	begin
	wait for 0 ns;
	
	ina_tb <= b"0000_0000_0000_0001";
	inb_tb <= b"0000_0000_0000_0001";
	cin_tb <= '0';
	
	wait for 50 ns;
	
	ina_tb <= b"0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0001";
	cin_tb <= '0';
	
	wait for 50 ns;
	
	ina_tb <= b"0001_0010_0010_0001";
	inb_tb <= b"0010_0000_1111_0001";
	cin_tb <= '0';
	
	wait;
	
	end process sim_process;
	end;
	
	
		
	