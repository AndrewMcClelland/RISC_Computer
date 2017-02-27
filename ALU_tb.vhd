LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU_tb IS

END;

ARCHITECTURE ALU_tb_arch OF ALU_tb IS
	SIGNAL ina_tb : signed (31 downto 0);
	SIGNAL inb_tb : signed (31 downto 0);
	SIGNAL clk_tb : std_logic;
	SIGNAL cs_tb : std_logic_vector (3 downto 0);
	SIGNAL c_out_tb : signed(63 downto 0);
	
	COMPONENT ALU
		PORT (
			A,B : IN SIGNED(31 DOWNTO 0);
			clk :IN STD_LOGIC;
			C : OUT SIGNED(63 DOWNTO 0);
			cs : IN STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT ALU;
	
	BEGIN
	
		DUT1 : ALU
		
		PORT MAP (
			A => ina_tb,
			B => inb_tb,
			clk => clk_tb,
			C => c_out_tb,
			cs => cs_tb);
	
	sim_process: process
	
	begin
	wait for 0 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	cs_tb <= b"0000";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	cs_tb <= b"0001";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	cs_tb <= b"0010";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	cs_tb <= b"0011";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1110";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_1010";
	cs_tb <= b"0100";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	cs_tb <= b"0101";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	cs_tb <= b"0110";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_1000";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	cs_tb <= b"0111";
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	cs_tb <= b"1010";
	wait;
	
	wait for 10 ns;
	clk_tb <= '0';
	wait for 50 ns;
	
	clk_tb <= '1';
	ina_tb <= b"0000_0000_0000_0000_0000_0000_0000_0001";
	inb_tb <= b"0000_0000_0000_0000_0000_0000_0000_0010";
	cs_tb <= b"1011";
	
	wait;
	
	end process sim_process;
	end;
	
	
		
	