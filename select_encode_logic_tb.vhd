library IEEE;
use ieee.std_logic_1164.all;

ENTITY select_encode_logic IS
END;

ARCHITECTURE select_encode_logic_tb_arch of select_encode_logic_tb IS

	SIGNAL IR_in_tb : std_logic_vector(31 downto 0);
	SIGNAL Gra_tb, Grb_tb, Grc_tb, Rin_tb, Rout_tb, BAout_tb : std_logic_vector (0 downto 0);
	SIGNAL C_sign_extended_tb : std_logic_vector(31 downto 0);
	SIGNAL Reg_in_tb, Reg_out_tb : std_logic_vector(15 downto 0);
	
	COMPONENT select_encode_logic
		PORT  (
			IR_in : in std_logic_vector(31 downto 0);
		Gra, Grb, Grc, Rin, Rout, BAout : in std_logic_vector(0 downto 0);
		C_sign_extended : out std_logic_vector(31 downto 0);
		Reg_in, Reg_out : out std_logic_vector(15 downto 0)	
			);
	END COMPONENT select_encode_logic;
	
	BEGIN
	
	DUT1 : select_encode_logic
	
	PORT MAP (
		IR_in => IR_in_tb,
		Gra => Gra_tb,
		Grb => Grb_tb,
		Grc => Grc_tb,
		Rin => Rin_tb,
		Rout => Rout_tb,
		BAout => BAout_tb,
		C_sign_extended => C_sign_extended_tb,
		Reg_in => Reg_in_tb,
		Reg_out => Reg_out_tb		
		);
		
	sim_process: process
	
	begin
	wait for 0 ns;
	IR_in_tb <= b"00000_1111_0101_1010_000000000000000";
	Gra_tb <= '1';
	Grb_tb <= '0';
	Grc_tb <= '0';
	
	Rin_tb <= '1';
	Rout_tb <= '1';
	BAout_tb <= '0';

	wait for 100 ns;
	wait;
	
	end process sim_process;
	
	end;
	
	
		