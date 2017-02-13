LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder_32_to_5_tb IS

END;

ARCHITECTURE encoder_32_to_5_tb_arch OF encoder_32_to_5_tb IS
	SIGNAL R0out_tb : std_logic;
	SIGNAL R1out_tb : std_logic;
	SIGNAL R2out_tb : std_logic;
	SIGNAL R3out_tb : std_logic;
	SIGNAL R4out_tb : std_logic;
	SIGNAL R5out_tb : std_logic;
	SIGNAL R6out_tb : std_logic;
	SIGNAL R7out_tb : std_logic;
	SIGNAL R8out_tb : std_logic;
	SIGNAL R9out_tb : std_logic;
	SIGNAL R10out_tb : std_logic;
	SIGNAL R11out_tb : std_logic;
	SIGNAL R12out_tb : std_logic;
	SIGNAL R13out_tb : std_logic;
	SIGNAL R14out_tb : std_logic;
	SIGNAL R15out_tb : std_logic;
	SIGNAL HIout_tb : std_logic;
	SIGNAL LOout_tb : std_logic;
	SIGNAL Zlowout_tb : std_logic;
	SIGNAL Zhighout_tb : std_logic;
	SIGNAL PCout_tb : std_logic;
	SIGNAL MDRout_tb : std_logic;
	SIGNAL In_portout_tb : std_logic;
	SIGNAL Cout_tb : std_logic;
	SIGNAL S_tb : std_logic_vector(4 downto 0);
	
	COMPONENT encoder_32_to_5
		PORT (
			R0out : IN std_logic;
			R1out : IN std_logic;
			R2out : IN std_logic;
			R3out : IN std_logic;
			R4out : IN std_logic;
			R5out : IN std_logic;
			R6out : IN std_logic;
			R7out : IN std_logic;
			R8out : IN std_logic;
			R9out : IN std_logic;
			R10out : IN std_logic;
			R11out : IN std_logic;
			R12out : IN std_logic;
			R13out : IN std_logic;
			R14out : IN std_logic;
			R15out : IN std_logic;
			HIout : IN std_logic;
			LOout : IN std_logic;
			Zlowout : IN std_logic;
			Zhighout : IN std_logic;
			PCout : IN std_logic;
			MDRout : IN std_logic;
			In_portout : IN std_logic;
			Cout : IN std_logic;
			S : OUT std_logic_vector(4 downto 0)
			);
	END COMPONENT encoder_32_to_5;
	
	BEGIN
	
		DUT1 : encoder_32_to_5
		
		PORT MAP (		
			R0out => R0out_tb,
			R1out => R1out_tb, 
			R2out => R2out_tb,
			R3out => R3out_tb, 
			R4out => R4out_tb, 
			R5out => R5out_tb, 
			R6out => R6out_tb, 
			R7out => R7out_tb, 
			R8out => R8out_tb, 
			R9out => R9out_tb, 
			R10out => R10out_tb, 
			R11out => R11out_tb, 
			R12out => R12out_tb, 
			R13out => R13out_tb, 
			R14out => R14out_tb, 
			R15out => R15out_tb, 
			HIout  => HIout_tb, 
			LOout  => LOout_tb, 
			Zlowout => Zlowout_tb,
			Zhighout => Zhighout_tb, 
			PCout  => PCout_tb, 
			MDRout => MDRout_tb, 
			In_portout => In_portout_tb,
			Cout => Cout_tb, 
			S => S_tb
			);
	
	sim_process: process
	
	begin
	wait for 20 ns;
	
	R0out_tb <= '1';
	R1out_tb <= '0'; 
	R2out_tb <= '0';
	R3out_tb <= '0'; 
	R4out_tb <= '0'; 
	R5out_tb <= '0'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '1'; 
	R2out_tb <= '0';
	R3out_tb <= '0'; 
	R4out_tb <= '0'; 
	R5out_tb <= '0'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '0'; 
	R2out_tb <= '1';
	R3out_tb <= '0'; 
	R4out_tb <= '0'; 
	R5out_tb <= '0'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '0'; 
	R2out_tb <= '0';
	R3out_tb <= '1'; 
	R4out_tb <= '0'; 
	R5out_tb <= '0'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '0'; 
	R2out_tb <= '0';
	R3out_tb <= '0'; 
	R4out_tb <= '1'; 
	R5out_tb <= '0'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '0'; 
	R2out_tb <= '0';
	R3out_tb <= '0'; 
	R4out_tb <= '0'; 
	R5out_tb <= '1'; 
	R6out_tb <= '0'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait for 20 ns;
	
	R0out_tb <= '0';
	R1out_tb <= '0'; 
	R2out_tb <= '0';
	R3out_tb <= '0'; 
	R4out_tb <= '0'; 
	R5out_tb <= '0'; 
	R6out_tb <= '1'; 
	R7out_tb <= '0'; 
	R8out_tb <= '0'; 
	R9out_tb <= '0'; 
	R10out_tb <= '0'; 
	R11out_tb <= '0'; 
	R12out_tb <= '0'; 
	R13out_tb <= '0'; 
	R14out_tb <= '0'; 
	R15out_tb <= '0'; 
	HIout_tb <= '0'; 
	LOout_tb <= '0'; 
	Zlowout_tb <= '0';
	Zhighout_tb <= '0'; 
	PCout_tb <= '0'; 
	MDRout_tb <= '0'; 
	In_portout_tb <= '0';
	Cout_tb <= '0';
	
	wait;
	
	end process sim_process;
	end;
	
	
		
	