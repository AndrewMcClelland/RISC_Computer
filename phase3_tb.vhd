LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- entity declaration only; no definition here
ENTITY phase3_tb IS
END;

-- Architecture of the testbench with the signal names
ARCHITECTURE phase3_tb_arch OF phase3_tb IS

		SIGNAL clk_tb : STD_LOGIC;
		SIGNAL reset_tb : STD_LOGIC;
		SIGNAL stop_tb : STD_LOGIC;
		SIGNAL R0in_tb : STD_LOGIC;
		SIGNAL R1in_tb : STD_LOGIC;
		SIGNAL R2in_tb : STD_LOGIC;
		SIGNAL R3in_tb : STD_LOGIC;
		SIGNAL R4in_tb : STD_LOGIC;
		SIGNAL R5in_tb : STD_LOGIC;
		SIGNAL R6in_tb : STD_LOGIC;
		SIGNAL R7in_tb : STD_LOGIC;
		SIGNAL R8in_tb : STD_LOGIC;
		SIGNAL R9in_tb : STD_LOGIC;
		SIGNAL R10in_tb : STD_LOGIC;
		SIGNAL R11in_tb : STD_LOGIC;
		SIGNAL R12in_tb : STD_LOGIC;
		SIGNAL R13in_tb : STD_LOGIC;
		SIGNAL R14in_tb : STD_LOGIC;
		SIGNAL R15in_tb : STD_LOGIC;
		SIGNAL R0out_tb : STD_LOGIC;
		SIGNAL R1out_tb : STD_LOGIC;
		SIGNAL R2out_tb : STD_LOGIC;
		SIGNAL R3out_tb : STD_LOGIC;
		SIGNAL R4out_tb : STD_LOGIC;
		SIGNAL R5out_tb : STD_LOGIC;
		SIGNAL R6out_tb : STD_LOGIC;
		SIGNAL R7out_tb : STD_LOGIC;
		SIGNAL R8out_tb : STD_LOGIC;
		SIGNAL R9out_tb : STD_LOGIC;
		SIGNAL R10out_tb : STD_LOGIC;
		SIGNAL R11out_tb : STD_LOGIC;
		SIGNAL R12out_tb : STD_LOGIC;
		SIGNAL R13out_tb : STD_LOGIC;
		SIGNAL R14out_tb : STD_LOGIC;
		SIGNAL R15out_tb : STD_LOGIC;
		SIGNAL Gra_tb : STD_LOGIC;
		SIGNAL Grb_tb : STD_LOGIC;
		SIGNAL Grc_tb : STD_LOGIC;
		SIGNAL Rin_tb : STD_LOGIC;
		SIGNAL Rout_tb : STD_LOGIC;
		SIGNAL PCout_tb : STD_LOGIC;
		SIGNAL MDRout_tb : STD_LOGIC;
		SIGNAL Zhighout_tb : STD_LOGIC;
		SIGNAL Zlowout_tb : STD_LOGIC;
		SIGNAL HIout_tb : STD_LOGIC;
		SIGNAL LOout_tb : STD_LOGIC;
		SIGNAL In_portout_tb : STD_LOGIC;
		SIGNAL Cout_tb : STD_LOGIC;
		SIGNAL HIin_tb : STD_LOGIC;
		SIGNAL LOin_tb : STD_LOGIC;
		SIGNAL Con_in_tb : STD_LOGIC;
		SIGNAL PCin_tb : STD_LOGIC;
		SIGNAL IRin_tb : STD_LOGIC;
		SIGNAL Cin_tb : STD_LOGIC;
		SIGNAL Yin_tb : STD_LOGIC;
		SIGNAL Zin_tb : STD_LOGIC;
		SIGNAL Zhighin_tb : STD_LOGIC;
		SIGNAL Zlowin_tb : STD_LOGIC;
		SIGNAL MARin_tb : STD_LOGIC;
		SIGNAL MDRin_tb : STD_LOGIC;
		SIGNAL Out_portin_tb : STD_LOGIC;
		SIGNAL BAout_tb : STD_LOGIC;
		SIGNAL R14MUX_enable_tb : STD_LOGIC;
		SIGNAL IncPC_enable_tb : STD_LOGIC;
		SIGNAL clear_tb : STD_LOGIC;
		SIGNAL read_signal_tb : STD_LOGIC;
		SIGNAL write_signal_tb : STD_LOGIC;
		SIGNAL CON_FF_out_tb : STD_LOGIC;
		SIGNAL ALU_cs_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
		SIGNAL ALU_out_tb : STD_LOGIC_VECTOR(63 DOWNTO 0);
		SIGNAL BusMuxOut_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL C_sign_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL HI_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL in_port_input_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL In_port_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL IR_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL LO_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL MAR_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL Mdatain_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL MDR_in_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL MDR_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL PC_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R0_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R10_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R11_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R12_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R13_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R14_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R15_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R1_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R2_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R3_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R4_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R5_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R6_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R7_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R8_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL R9_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL S_out_tb : STD_LOGIC_VECTOR(4 DOWNTO 0);
		SIGNAL Y_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL Z_in_tb : STD_LOGIC_VECTOR(63 DOWNTO 0);
		SIGNAL Zhigh_in_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL Zhigh_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL Zlow_in_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL Zlow_out_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNAL run_tb : STD_LOGIC;
		SIGNAL Out_port_output_tb : STD_LOGIC_VECTOR(31 DOWNTO 0);
  
--  TYPE State IS ();
--  SIGNAL Present_state: State := defaultA;
 
 -- component instantiation of the datapath
 COMPONENT phase3
	PORT (
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		stop :  IN  STD_LOGIC;
		R0in :  INOUT  STD_LOGIC;
		R1in :  INOUT  STD_LOGIC;
		R2in :  INOUT  STD_LOGIC;
		R3in :  INOUT  STD_LOGIC;
		R4in :  INOUT  STD_LOGIC;
		R5in :  INOUT  STD_LOGIC;
		R6in :  INOUT  STD_LOGIC;
		R7in :  INOUT  STD_LOGIC;
		R8in :  INOUT  STD_LOGIC;
		R9in :  INOUT  STD_LOGIC;
		R10in :  INOUT  STD_LOGIC;
		R11in :  INOUT  STD_LOGIC;
		R12in :  INOUT  STD_LOGIC;
		R13in :  INOUT  STD_LOGIC;
		R14in :  INOUT  STD_LOGIC;
		R15in :  INOUT  STD_LOGIC;
		R0out :  INOUT  STD_LOGIC;
		R1out :  INOUT  STD_LOGIC;
		R2out :  INOUT  STD_LOGIC;
		R3out :  INOUT  STD_LOGIC;
		R4out :  INOUT  STD_LOGIC;
		R5out :  INOUT  STD_LOGIC;
		R6out :  INOUT  STD_LOGIC;
		R7out :  INOUT  STD_LOGIC;
		R8out :  INOUT  STD_LOGIC;
		R9out :  INOUT  STD_LOGIC;
		R10out :  INOUT  STD_LOGIC;
		R11out :  INOUT  STD_LOGIC;
		R12out :  INOUT  STD_LOGIC;
		R13out :  INOUT  STD_LOGIC;
		R14out :  INOUT  STD_LOGIC;
		R15out :  INOUT  STD_LOGIC;
		Gra :  INOUT  STD_LOGIC;
		Grb :  INOUT  STD_LOGIC;
		Grc :  INOUT  STD_LOGIC;
		Rin :  INOUT  STD_LOGIC;
		Rout :  INOUT  STD_LOGIC;
		PCout :  INOUT  STD_LOGIC;
		MDRout :  INOUT  STD_LOGIC;
		Zhighout :  INOUT  STD_LOGIC;
		Zlowout :  INOUT  STD_LOGIC;
		HIout :  INOUT  STD_LOGIC;
		LOout :  INOUT  STD_LOGIC;
		In_portout :  INOUT  STD_LOGIC;
		Cout :  INOUT  STD_LOGIC;
		HIin :  INOUT  STD_LOGIC;
		LOin :  INOUT  STD_LOGIC;
		Con_in :  INOUT  STD_LOGIC;
		PCin :  INOUT  STD_LOGIC;
		IRin :  INOUT  STD_LOGIC;
		Cin :  INOUT  STD_LOGIC;
		Yin :  INOUT  STD_LOGIC;
		Zin :  INOUT  STD_LOGIC;
		Zhighin :  INOUT  STD_LOGIC;
		Zlowin :  INOUT  STD_LOGIC;
		MARin :  INOUT  STD_LOGIC;
		MDRin :  INOUT  STD_LOGIC;
		Out_portin :  INOUT  STD_LOGIC;
		BAout :  INOUT  STD_LOGIC;
		R14MUX_enable :  INOUT  STD_LOGIC;
		IncPC_enable :  INOUT  STD_LOGIC;
		clear :  INOUT  STD_LOGIC;
		read_signal :  INOUT  STD_LOGIC;
		write_signal :  INOUT  STD_LOGIC;
		CON_FF_out :  INOUT  STD_LOGIC;
		ALU_cs :  INOUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ALU_out :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		BusMuxOut :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		C_sign_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		HI_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		in_port_input :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		In_port_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		IR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		LO_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MAR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Mdatain :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDR_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		MDR_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		PC_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R0_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R10_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R11_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R12_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R13_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R14_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R15_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R1_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R2_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R3_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R4_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R5_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R6_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R7_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R8_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R9_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		S_out :  INOUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Y_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Z_in :  INOUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		Zhigh_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zhigh_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_in :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Zlow_out :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		run :  OUT  STD_LOGIC;
		Out_port_output :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
		
				);
 END COMPONENT phase3;

 BEGIN
 DUT : phase3
--port mapping: between the dut and the testbench signals
  PORT MAP (
		clk => clk_tb,   
		reset => reset_tb,    
		stop => stop_tb,    
		R0in => R0in_tb,    
		R1in => R1in_tb,    
		R2in => R2in_tb,    
		R3in => R3in_tb,    
		R4in => R4in_tb,    
		R5in => R5in_tb,    
		R6in => R6in_tb,    
		R7in => R7in_tb,    
		R8in => R8in_tb,    
		R9in => R9in_tb,    
		R10in => R10in_tb,    
		R11in => R11in_tb,    
		R12in => R12in_tb, 
		R13in => R13in_tb,
		R14in => R14in_tb,
		R15in => R15in_tb,    
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
		R12out => R14out_tb,    
		R13out => R13out_tb,   
		R14out => R14out_tb,   
		R15out => R15out_tb,    
		Gra => Gra_tb,   
		Grb => Grb_tb,   
		Grc => Grc_tb,   
		Rin => Rin_tb,    
		Rout => Rout_tb,   
		PCout => PCout_tb,  
		MDRout => MDRout_tb,   
		Zhighout => Zhighout_tb,   
		Zlowout => Zlowout_tb,    
		HIout => HIout_tb,  
		LOout => LOout_tb,   
		In_portout => In_portout_tb,    
		Cout => Cout_tb,  
		HIin => HIin_tb,   
		LOin => LOin_tb,   
		Con_in => Con_in_tb,   
		PCin => PCin_tb,   
		IRin => IRin_tb,   
		Cin => Cin_tb,   
		Yin => Yin_tb,  
		Zin => Zin_tb, 
		Zhighin => Zhighin_tb,     
		Zlowin => Zlowin_tb,   
		MARin => MARin_tb,   
		MDRin => MDRin_tb,   
		Out_portin => Out_portin_tb,   
		BAout => BAout_tb,   
		R14MUX_enable => R14MUX_enable_tb,   
		IncPC_enable => IncPC_enable_tb,   
		clear => clear_tb,   
		read_signal => read_signal_tb,    
		write_signal => write_signal_tb,   
		CON_FF_out => CON_FF_out_tb,   
		ALU_cs => ALU_cs_tb,   
		ALU_out => ALU_out_tb,
		BusMuxOut => BusMuxOut_tb,   
		C_sign_out => C_sign_out_tb,   
		HI_out => HI_out_tb,   
		in_port_input => in_port_input_tb,    
		In_port_out => In_port_out_tb,   
		IR_out => IR_out_tb,   
		LO_out => LO_out_tb,  
		MAR_out => MAR_out_tb,   
		Mdatain => Mdatain_tb,   
		MDR_in => MDR_in_tb,    
		MDR_out => MDR_out_tb,    
		PC_out => PC_out_tb,     
		R0_out => R0_out_tb,    
		R10_out => R10_out_tb,   
		R11_out => R11_out_tb,   
		R12_out => R12_out_tb,   
		R13_out => R13_out_tb,   
		R14_out => R14_out_tb,   
		R15_out => R15_out_tb,   
		R1_out => R1_out_tb,   
		R2_out => R2_out_tb,    
		R3_out => R3_out_tb,   
		R4_out => R4_out_tb,  
		R5_out => R5_out_tb,   
		R6_out => R6_out_tb,   
		R7_out => R7_out_tb,   
		R8_out => R8_out_tb,   
		R9_out => R9_out_tb,   
		S_out => S_out_tb,  
		Y_out => Y_out_tb,   
		Z_in => Z_in_tb,   
		Zhigh_in => Zhigh_in_tb,    
		Zhigh_out => Zhigh_out_tb,   
		Zlow_in => Zlow_in_tb,   
		Zlow_out => Zlow_out_tb,   
		run => run_tb, 
		Out_port_output => Out_port_output_tb				
			);

			Clock_process: PROCESS
			BEGIN
				clk_tb <= '0', '1' after 10 ns;
				wait for 20 ns;
			END PROCESS Clock_process;
			
			PROCESS (clk_tb) -- finite state machine
			BEGIN
				reset_tb <= '1', '0' after 20 ns;
			END PROCESS;
		
END ARCHITECTURE phase3_tb_arch;