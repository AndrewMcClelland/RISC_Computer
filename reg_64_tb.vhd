Library ieee;
USE ieee.std_logic_1164.all;

ENTITY register_64_tb IS
END;

ARCHITECTURE register_64_tb_arch of register_64_tb IS

	SIGNAL q_tb : std_logic_vector(63 downto 0);
	SIGNAL clk_tb : std_logic;
	SIGNAL clear_tb : std_logic;
	SIGNAL register_in_tb : std_logic;
	SIGNAL output_tb : std_logic_vector(63 downto 0);
	
	COMPONENT register_64 
		PORT  (
			q : IN std_logic_vector(63 downto 0);
			clk : IN std_logic;
			clear : IN std_logic;
			register_in : IN std_logic;
			output : OUT std_logic_vector(63 downto 0)
			);
	END COMPONENT register_64;
	
	BEGIN
	
	DUT1 : register_64
	
	PORT MAP (
		q => q_tb,
		clk => clk_tb,
		clear => clear_tb,
		register_in => register_in_tb,
		output => output_tb);
		
	sim_process: process
	
	begin
	wait for 0 ns;
	clear_tb <= '0';
	register_in_tb <= '1';
	q_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001";
	clk_tb <= '1';
	
	wait for 20 ns;
	
	clear_tb <= '0';
	register_in_tb <= '1';
	q_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000";
	clk_tb <= '0';
	
	wait for 30 ns;
	clear_tb <= '0';
	register_in_tb <= '1';
	q_tb <= b"0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0001";
	clk_tb <= '1';
	wait;
	
	end process sim_process;
	
	end;
	
	
		