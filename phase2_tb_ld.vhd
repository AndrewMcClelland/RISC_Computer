LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- entity declaration only; no definition here
ENTITY phase2_tb_ld IS
END;

-- Architecture of the testbench with the signal names
ARCHITECTURE phase2_tb_ld OF phase2_tb_ld IS
  SIGNAL clear_tb, clk_tb : std_logic;
  SIGNAL register_in0_tb, register_in1_tb, register_in2_tb, register_in3_tb, register_in4_tb, register_in5_tb, register_in6_tb, register_in7_tb : std_logic; --enable singals for registers
  SIGNAL register_in8_tb, register_in9_tb, register_in10_tb, register_in11_tb, register_in12_tb, register_in13_tb, register_in14_tb, register_in15_tb : std_logic; --enable singals for registers
  SIGNAL register_in_MDR_tb, register_in_PC_tb, register_in_Zhigh_tb, register_in_Zlow_tb, register_in_LO_tb, register_in_HI_tb, register_in_Y_tb : std_logic; --enable singals for registers
  SIGNAL register_in_Z_tb, register_in_IR_tb, register_in_MAR_tb, register_in_in_port_tb, register_in_C_tb : std_logic; --enable singals for registers
  
  SIGNAL R0_out_tb, R1_out_tb, R2_out_tb, R3_out_tb, R4_out_tb, R5_out_tb, R6_out_tb, R7_out_tb : std_logic_vector(31 downto 0); --bidirectional pins for registers
  SIGNAL R8_out_tb, R9_out_tb, R10_out_tb, R11_out_tb, R12_out_tb, R13_out_tb, R14_out_tb, R15_out_tb : std_logic_vector(31 downto 0); --bidirectional pins for registers
  SIGNAL BusMuxOut_tb, HI_out_tb, LO_out_tb, Zhigh_out_tb, Zlow_out_tb, PC_out_tb, MDR_out_tb, Zhigh_in_tb, Zlow_in_tb, MDR_in_tb, In_port_out_tb, C_sign_out_tb, IR_out_tb, MAR_out_tb, Y_out_tb : std_logic_vector (31 downto 0); --bidirectional pins for registers
  SIGNAL Z_in_tb, ALU_out_tb : std_logic_vector (63 downto 0); --bidirectional pins for registers
  SIGNAL S_out_tb : std_logic_vector (4 downto 0); --bidirectional pins for registers
  
  SIGNAL R0out_tb, R1out_tb, R2out_tb, R3out_tb, R4out_tb, R5out_tb, R6out_tb, R7out_tb, R8out_tb, R9out_tb, R10out_tb, R11out_tb, R12out_tb : std_logic; --inputs to encoder
  SIGNAL R13out_tb, R14out_tb, R15out_tb, HIout_tb, LOout_tb, Zlowout_tb, Zhighout_tb, PCout_tb, MDRout_tb, In_portout_tb, Cout_tb : std_logic; --inputs to encoder
  
  SIGNAL Mdatain_tb : std_logic_vector (31 downto 0);
  SIGNAL read_tb : std_logic; --MDMUX read 
  SIGNAL ALU_cs_tb : std_logic_vector(3 downto 0); --ALU control signal
  
  SIGNAL Gra_tb, Grb_tb, Grc_tb, Rin_tb, Rout_tb, BAout_tb,	Con_in_tb :  STD_LOGIC;
  
  SIGNAL Con_out_tb :  STD_LOGIC
  
  TYPE State IS (default, T0, T1, T2, T3, T4, T5, T6, T7);
  SIGNAL Present_state: State := default;
 
 -- component instantiation of the datapath
 COMPONENT phase2
	PORT (
			R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, R8_out, R9_out, R10_out, R11_out, R12_out, R13_out, R14_out, R15_out : inout std_logic_vector(31 downto 0);
			BusMuxOut, HI_out, LO_out, Zhigh_out, Zlow_out : inout std_logic_vector (31 downto 0);
			PC_out, MDR_out, in_port_out, C_sign_out, Zhigh_in, Zlow_in, MDR_in, IR_out, MAR_out, Y_out : inout std_logic_vector (31 downto 0);
			Z_in, ALU_out : inout std_logic_vector (63 downto 0);
			S_out : inout std_logic_vector (4 downto 0);
			
			clear, clk : in std_logic;
			Mdatain : in std_logic_vector(31 downto 0);
			cs : in std_logic_vector (3 downto 0);
			Read_input : in std_logic;

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
			
			HIout :  in  STD_LOGIC;
			LOout :  in  STD_LOGIC;
			Zlowout :  in  STD_LOGIC;
			Zhighout :  in  STD_LOGIC;
			PCout :  in  STD_LOGIC;
			MDRout :  in  STD_LOGIC;
			In_portout :  in  STD_LOGIC;
			Cout :  in  STD_LOGIC;
			
			register_in_in_port :  in  STD_LOGIC;
			register_in_MDR :  in  STD_LOGIC;
			register_in_C :  in  STD_LOGIC;
			register_in_PC :  in  STD_LOGIC;
			register_in_Zhigh :  in  STD_LOGIC;
			register_in_Zlow :  in  STD_LOGIC;
			register_in_LO :  in  STD_LOGIC;
			register_in_HI :  in  STD_LOGIC;
			register_in_Y :  in  STD_LOGIC;
			register_in_Z :  in  STD_LOGIC;
			register_in_IR :  in  STD_LOGIC;
			register_in_MAR :  in  STD_LOGIC;	
			
			Gra :  IN  STD_LOGIC;
			Grb :  IN  STD_LOGIC;
			Grc :  IN  STD_LOGIC;
			Rin :  IN  STD_LOGIC;
			Rout :  IN  STD_LOGIC;
			BAout :  IN  STD_LOGIC;
			Con_in :  IN  STD_LOGIC;
			
			Con_out :  OUT  STD_LOGIC
				);
 END COMPONENT phase2;

 BEGIN
 DUT : phase2
--port mapping: between the dut and the testbench signals
  PORT MAP (
			R0_out => R0_out_tb,
			R1_out => R1_out_tb,
			R2_out => R2_out_tb,
			R3_out => R3_out_tb,
			R4_out => R4_out_tb,
			R5_out => R5_out_tb,
			R6_out => R6_out_tb,
			R7_out => R7_out_tb,
			R8_out => R8_out_tb,
			R9_out => R9_out_tb,
			R10_out => R10_out_tb,
			R11_out => R11_out_tb,
			R12_out => R12_out_tb,
			R13_out => R13_out_tb,
			R14_out => R14_out_tb,
			R15_out => R15_out_tb,
			BusMuxOut => BusMuxOut_tb,
			HI_out => HI_out_tb,
			LO_out => LO_out_tb,
			ZHigh_out => ZHigh_out_tb,
			Zlow_out => Zlow_out_tb,
			PC_out => PC_out_tb,
			MDR_out => MDR_out_tb,
			in_port_out => in_port_out_tb,
			C_sign_out => C_sign_out_tb,
			Zhigh_in => Zhigh_in_tb,
			Zlow_in => Zlow_in_tb,
			MDR_in => MDR_in_tb,
			Z_in => Z_in_tb,
			ALU_out => ALU_out_tb,
			S_out => S_out_tb,
			IR_out => IR_out_tb,
			MAR_out => MAR_out_tb,
			Y_out => Y_out_tb,
			
			clear => clear_tb,
			clk => clk_tb,
			
			Mdatain => Mdatain_tb,
			cs => ALU_cs_tb,
			Read_input => read_tb,
			
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
			HIout => HIout_tb,
			LOout => LOout_tb,
			Zlowout => Zlowout_tb,
			Zhighout => Zhighout_tb,
			PCout => PCout_tb,
			MDRout => MDRout_tb,
			In_portout => In_portout_tb,
			Cout => Cout_tb,
			
			Gra => Gra_tb,
			Grb => Grb_tb,
			Grc => Grc_tb,
			BAout => BAout_tb,
			Rin => Rin_tb,
			Rout => Rout_tb,
			
			COn_in => COn_in_tb,
			Con_out => Con_out_tb,

			R0in => register_in0_tb,
			R1in => register_in1_tb,
			R2in => register_in2_tb,
			R3in => register_in3_tb,
			R4in => register_in4_tb,
			R5in => register_in5_tb,
			R6in => register_in6_tb,
			R7in => register_in7_tb,
			R8in => register_in8_tb,
			R9in => register_in9_tb,
			R10in => register_in10_tb,
			R11in => register_in11_tb,
			register_in_in_port => register_in_in_port_tb,
			register_in_MDR => register_in_MDR_tb,
			register_in_C => register_in_C_tb,
			register_in_PC => register_in_PC_tb,
			register_in_Zhigh => register_in_Zhigh_tb,
			register_in_Zlow => register_in_Zlow_tb,
			register_in_LO => register_in_LO_tb,
			register_in_HI => register_in_HI_tb,
			R15in => register_in15_tb,
			R14in => register_in14_tb,
			R13in => register_in13_tb,
			R12in => register_in12_tb,
			register_in_Y => register_in_Y_tb,
			register_in_Z => register_in_Z_tb,
			register_in_IR => register_in_IR_tb,
			register_in_MAR => register_in_MAR_tb		
			);

			Clock_process: PROCESS
			BEGIN
				clk_tb <= '1', '0' after 10 ns;
				wait for 20 ns;
			END PROCESS Clock_process;
			
			PROCESS (clk_tb) -- finite state machine
			BEGIN
				IF (clk_tb'EVENT AND clk_tb = '1') THEN
					CASE Present_state IS
						WHEN Default =>
							Present_state <= T0;
						WHEN T0 =>
							Present_state <= T1;
						WHEN T1 =>
							Present_state <= T2;
						WHEN T2 =>
							Present_state <= T3;
						WHEN T3 =>
							Present_state <= T4;
						WHEN T4 =>
							Present_state <= T5;
						WHEN T5 =>
							Present_state <= T6;
						WHEN T6 =>
							Present_state <= T7;
						WHEN OTHERS =>
					END CASE;
				END IF;
			END PROCESS;
			
			PROCESS (Present_state) -- do the required job in each state
			BEGIN
				CASE Present_state IS -- assert the required signals in each clock cycle
					 WHEN Default =>
							
							HIout_tb <= '0';
							LOout_tb <= '0';
							Zlowout_tb <= '0';
							Zhighout_tb <= '0';
							PCout_tb <= '0';
							MDRout_tb <= '0';
							In_portout_tb <= '0';
							Cout_tb <= '0';
							
							clear_tb <= '1';
							read_tb <= '0';
							
							Con_in_tb <= '0';
							Rin_tb <= '0';
							Rout_tb <= '0';
							BAout_tb <= '0';
							Gra_tb <= '0';
							Grb_tb <= '0';
							Grc_tb <= '0';
						
							register_in_in_port_tb <= '0';
							register_in_MDR_tb <= '0';
							register_in_C_tb <= '0';
							register_in_PC_tb <= '0';
							register_in_Zhigh_tb <= '0';
							register_in_Zlow_tb <= '0';
							register_in_LO_tb <= '0';
							register_in_HI_tb <= '0';
							
							register_in_Y_tb <= '0';
							register_in_Z_tb <= '0';
							register_in_IR_tb <= '0';
							register_in_MAR_tb <= '0';
				
					 WHEN T0 => 
						PC_out_tb <= '1';
						register_in_MAR_tb <= '1';
						
					 
					 WHEN T1 =>					
						 read_tb <= '1';
						 register_in_MDR_tb <= '1';
						 Mdatain_tb <= x"314c0000";
	
					WHEN T2 =>
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					 WHEN T3 =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						R4out_tb <= '1'; 
						register_in_Y_tb <= '1';
						
					 WHEN T4 =>
						R4out_tb <= '0';
					   register_in_Y_tb <= '0';
						R5out_tb <= '1'; 
						ALU_cs_tb <= b"0001";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';
					 
					 WHEN T5 =>
						R5out_tb <= '0'; 
						Zlowout_tb <= '1';
						register_in0_tb <= '1';
						
					WHEN T6 =>
					
					
					WHEN T7 =>
						
					WHEN OTHERS =>
			END CASE;
		END PROCESS;
END ARCHITECTURE phase1_tb_arch;
