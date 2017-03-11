library IEEE;
use ieee.std_logic_1164.all;

ENTITY con_ff_logic_tb IS
END;

ARCHITECTURE con_ff_logic_tb_arch of con_ff_logic_tb IS

	SIGNAL IR_low_bits_tb : std_logic_vector(1 downto 0);
	SIGNAL register_in_tb : std_logic_vector(31 downto 0);
	SIGNAL Con_in_tb, con_clk_tb : std_logic;
	SIGNAL con_out_tb : std_logic;
	
	COMPONENT con_ff_logic
		PORT  (
			IR_low_bits : in std_logic_vector(1 downto 0);
			register_in : in std_logic_vector(31 downto 0);
			Con_in, con_clk : in std_logic;
			con_out : out std_logic
			);
	END COMPONENT con_ff_logic;
	
	BEGIN
	
	DUT1 : con_ff_logic
	
	PORT MAP (
		IR_low_bits => IR_low_bits_tb,
		register_in => register_in_tb,
		Con_in => Con_in_tb,
		con_clk => con_clk_tb,
		con_out => con_out_tb
		);
		
	Clock_process: PROCESS
		BEGIN
			con_clk_tb <= '1', '0' after 10 ns;
			wait for 20 ns;
		END PROCESS Clock_process;
		
	process
	begin
	
		register_in_tb <= b"1111_0000_0000_0000_1111_0000_0000_0000";
		
		-- testing brzr, brnz, brpl, brmi
		IR_low_bits_tb <= b"00", b"01" after 40 ns, b"10" after 80 ns, b"11" after 120 ns;
		con_in_tb <= '1', '0' after 160 ns;
		
		wait;
	
	end process;
	
	end;
	
	
		