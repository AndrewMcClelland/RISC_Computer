LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- entity declaration only; no definition here
ENTITY phase2_tb IS
END;

-- Architecture of the testbench with the signal names
ARCHITECTURE phase2_tb_arch OF phase2_tb IS
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
  
  SIGNAL Mdatain_tb : std_logic_vector (31 downto 0); --MDatain from RAM
  SIGNAL read_tb : std_logic; --MDMUX read 
  SIGNAL ALU_cs_tb : std_logic_vector(3 downto 0); --ALU control signal
  
  SIGNAL Gra_tb, Grb_tb, Grc_tb, Rin_tb, Rout_tb, BAout_tb,	Con_in_tb :  STD_LOGIC; --Input for select/encode logic and CON FF logic
  
  SIGNAL Con_out_tb :  STD_LOGIC; --CON FF logic output
  SIGNAL IncPC_enable_tb : STD_LOGIC; --Enable signal for IncPC component
  SIGNAL R14MUX_enable_tb : STD_LOGIC; --Enable signal for R14MUX component
  
  SIGNAL write_tb : std_logic; --RAM write signal 
  SIGNAL register_in_out_port_tb : std_logic; --Out port enable signal
  SIGNAL In_port_in_tb : std_logic_vector(31 downto 0); --In port enable signal
  SIGNAL Out_port_output_tb : std_logic_vector(31 downto 0); --Out port enable signal
  
  TYPE State IS (defaultA, defaultB, load_case1_T0A, load_case1_T0B, load_case1_T1A, load_case1_T1B, load_case1_T2A, load_case1_T2B, load_case1_T3A, load_case1_T3B, load_case1_T4A, load_case1_T4B, load_case1_T5A, load_case1_T5B, load_case1_T6A, load_case1_T6B, load_case1_T7A, load_case1_T7B, 
						load_case2_T0A, load_case2_T0B, load_case2_T1A, load_case2_T1B, load_case2_T2A, load_case2_T2B, load_case2_T3A, load_case2_T3B, load_case2_T4A, load_case2_T4B, load_case2_T5A, load_case2_T5B, load_case2_T6A, load_case2_T6B, load_case2_T7A, load_case2_T7B,
						load_case3_T0A, load_case3_T0B, load_case3_T1A, load_case3_T1B, load_case3_T2A, load_case3_T2B, load_case3_T3A, load_case3_T3B, load_case3_T4A, load_case3_T4B, load_case3_T5A, load_case3_T5B, 
						load_case4_T0A, load_case4_T0B, load_case4_T1A, load_case4_T1B, load_case4_T2A, load_case4_T2B, load_case4_T3A, load_case4_T3B, load_case4_T4A, load_case4_T4B, load_case4_T5A, load_case4_T5B, 
						load_case5_T0A, load_case5_T0B, load_case5_T1A, load_case5_T1B, load_case5_T2A, load_case5_T2B, load_case5_T3A, load_case5_T3B, load_case5_T4A, load_case5_T4B, load_case5_T5A, load_case5_T5B, load_case5_T6A, load_case5_T6B,
						
						store_reg_init_T0A, store_reg_init_T0B, store_reg_init_T1A, store_reg_init_T1B, store_reg_init_T2A, store_reg_init_T2B, store_reg_init_T3A, store_reg_init_T3B, store_reg_init_T4A, store_reg_init_T4B, store_reg_init_T5A, store_reg_init_T5B,
						store_case1_T0A, store_case1_T0B, store_case1_T1A, store_case1_T1B, store_case1_T2A, store_case1_T2B, store_case1_T3A, store_case1_T3B, store_case1_T4A, store_case1_T4B, store_case1_T5A, store_case1_T5B, store_case1_T6A, store_case1_T6B, store_case1_T7A, store_case1_T7B,
						store_check1_T0A, store_check1_T0B, store_check1_T1A, store_check1_T1B, store_check1_T2A, store_check1_T2B, store_check1_T3A, store_check1_T3B, store_check1_T4A, store_check1_T4B, store_check1_T5A, store_check1_T5B, store_check1_T6A, store_check1_T6B, store_check1_T7A, store_check1_T7B,
						store_case2_T0A, store_case2_T0B, store_case2_T1A, store_case2_T1B, store_case2_T2A, store_case2_T2B, store_case2_T3A, store_case2_T3B, store_case2_T4A, store_case2_T4B, store_case2_T5A, store_case2_T5B, store_case2_T6A, store_case2_T6B, store_case2_T7A, store_case2_T7B,
						store_check2_T0A, store_check2_T0B, store_check2_T1A, store_check2_T1B, store_check2_T2A, store_check2_T2B, store_check2_T3A, store_check2_T3B, store_check2_T4A, store_check2_T4B, store_check2_T5A, store_check2_T5B, store_check2_T6A, store_check2_T6B, store_check2_T7A, store_check2_T7B,
						store_case3_T0A, store_case3_T0B, store_case3_T1A, store_case3_T1B, store_case3_T2A, store_case3_T2B, store_case3_T3A, store_case3_T3B, store_case3_T4A, store_case3_T4B, store_case3_T5A, store_case3_T5B, store_case3_T6A, store_case3_T6B,
						store_check3_T0A, store_check3_T0B, store_check3_T1A, store_check3_T1B, store_check3_T2A, store_check3_T2B, store_check3_T3A, store_check3_T3B, store_check3_T4A, store_check3_T4B, store_check3_T5A, store_check3_T5B, store_check3_T6A, store_check3_T6B, store_check3_T7A, store_check3_T7B,
						
						ALU_case1_T0A, ALU_case1_T0B, ALU_case1_T1A, ALU_case1_T1B, ALU_case1_T2A, ALU_case1_T2B, ALU_case1_T3A, ALU_case1_T3B, ALU_case1_T4A, ALU_case1_T4B, ALU_case1_T5A, ALU_case1_T5B,
						ALU_case2_T0A, ALU_case2_T0B, ALU_case2_T1A, ALU_case2_T1B, ALU_case2_T2A, ALU_case2_T2B, ALU_case2_T3A, ALU_case2_T3B, ALU_case2_T4A, ALU_case2_T4B, ALU_case2_T5A, ALU_case2_T5B,
						ALU_case3_T0A, ALU_case3_T0B, ALU_case3_T1A, ALU_case3_T1B, ALU_case3_T2A, ALU_case3_T2B, ALU_case3_T3A, ALU_case3_T3B, ALU_case3_T4A, ALU_case3_T4B, ALU_case3_T5A, ALU_case3_T5B,
						
						branch_reg_init1_T0A, branch_reg_init1_T0B, branch_reg_init1_T1A, branch_reg_init1_T1B, branch_reg_init1_T2A, branch_reg_init1_T2B, branch_reg_init1_T3A, branch_reg_init1_T3B, branch_reg_init1_T4A, branch_reg_init1_T4B, branch_reg_init1_T5A, branch_reg_init1_T5B, 
						branch_case1_T0A, branch_case1_T0B, branch_case1_T1A, branch_case1_T1B, branch_case1_T2A, branch_case1_T2B, branch_case1_T3A, branch_case1_T3B, branch_case1_T4A, branch_case1_T4B,
						branch_reg_init2_T0A, branch_reg_init2_T0B, branch_reg_init2_T1A, branch_reg_init2_T1B, branch_reg_init2_T2A, branch_reg_init2_T2B, branch_reg_init2_T3A, branch_reg_init2_T3B, branch_reg_init2_T4A, branch_reg_init2_T4B, branch_reg_init2_T5A, branch_reg_init2_T5B, 
						branch_reg_init3_T0A, branch_reg_init3_T0B, branch_reg_init3_T1A, branch_reg_init3_T1B, branch_reg_init3_T2A, branch_reg_init3_T2B, branch_reg_init3_T3A, branch_reg_init3_T3B, branch_reg_init3_T4A, branch_reg_init3_T4B, branch_reg_init3_T5A, branch_reg_init3_T5B, 
						branch_case2_T0A, branch_case2_T0B, branch_case2_T1A, branch_case2_T1B, branch_case2_T2A, branch_case2_T2B, branch_case2_T3A, branch_case2_T3B, branch_case2_T4A, branch_case2_T4B,
						branch_reg_init4_T0A, branch_reg_init4_T0B, branch_reg_init4_T1A, branch_reg_init4_T1B, branch_reg_init4_T2A, branch_reg_init4_T2B, branch_reg_init4_T3A, branch_reg_init4_T3B, branch_reg_init4_T4A, branch_reg_init4_T4B, branch_reg_init4_T5A, branch_reg_init4_T5B, 
						branch_case3_T0A, branch_case3_T0B, branch_case3_T1A, branch_case3_T1B, branch_case3_T2A, branch_case3_T2B, branch_case3_T3A, branch_case3_T3B, branch_case3_T4A, branch_case3_T4B,
						branch_reg_init5_T0A, branch_reg_init5_T0B, branch_reg_init5_T1A, branch_reg_init5_T1B, branch_reg_init5_T2A, branch_reg_init5_T2B, branch_reg_init5_T3A, branch_reg_init5_T3B, branch_reg_init5_T4A, branch_reg_init5_T4B, branch_reg_init5_T5A, branch_reg_init5_T5B,	
						branch_reg_init6_T0A, branch_reg_init6_T0B, branch_reg_init6_T1A, branch_reg_init6_T1B, branch_reg_init6_T2A, branch_reg_init6_T2B, branch_reg_init6_T3A, branch_reg_init6_T3B, branch_reg_init6_T4A, branch_reg_init6_T4B, branch_reg_init6_T5A, branch_reg_init6_T5B, 
						branch_case4_T0A, branch_case4_T0B, branch_case4_T1A, branch_case4_T1B, branch_case4_T2A, branch_case4_T2B, branch_case4_T3A, branch_case4_T3B, branch_case4_T4A, branch_case4_T4B,
						
						jump_reg_init1_T0A, jump_reg_init1_T0B, jump_reg_init1_T1A, jump_reg_init1_T1B, jump_reg_init1_T2A, jump_reg_init1_T2B, jump_reg_init1_T3A, jump_reg_init1_T3B, jump_reg_init1_T4A, jump_reg_init1_T4B, jump_reg_init1_T5A, jump_reg_init1_T5B, 
						jump_case1_T0A, jump_case1_T0B, jump_case1_T1A, jump_case1_T1B, jump_case1_T2A, jump_case1_T2B, jump_case1_T3A, jump_case1_T3B,
						jump_reg_init2_T0A, jump_reg_init2_T0B, jump_reg_init2_T1A, jump_reg_init2_T1B, jump_reg_init2_T2A, jump_reg_init2_T2B, jump_reg_init2_T3A, jump_reg_init2_T3B, jump_reg_init2_T4A, jump_reg_init2_T4B, jump_reg_init2_T5A, jump_reg_init2_T5B, 
						jump_case2_T0A, jump_case2_T0B, jump_case2_T1A, jump_case2_T1B, jump_case2_T2A, jump_case2_T2B, jump_case2_T3A, jump_case2_T3B,
						move_reg_init1_T0A, move_reg_init1_T0B, move_reg_init1_T1A, move_reg_init1_T1B, move_reg_init1_T2A, move_reg_init1_T2B, move_reg_init1_T3A, move_reg_init1_T3B, move_reg_init1_T4A, move_reg_init1_T4B, move_reg_init1_T5A, move_reg_init1_T5B, 
						move_reg_init2_T0A, move_reg_init2_T0B, move_reg_init2_T1A, move_reg_init2_T1B, move_reg_init2_T2A, move_reg_init2_T2B, move_reg_init2_T3A, move_reg_init2_T3B, move_reg_init2_T4A, move_reg_init2_T4B, move_reg_init2_T5A, move_reg_init2_T5B, 
						mul_T0A, mul_T0B, mul_T1A, mul_T1B, mul_T2A, mul_T2B, mul_T3A, mul_T3B, mul_T4A, mul_T4B, mul_T5A, mul_T5B, mul_T6A, mul_T6B,
						mfhi_T0A, mfhi_T0B, mfhi_T1A, mfhi_T1B, mfhi_T2A, mfhi_T2B, mfhi_T3A, mfhi_T3B,
						mflo_T0A, mflo_T0B, mflo_T1A, mflo_T1B, mflo_T2A, mflo_T2B, mflo_T3A, mflo_T3B,
						
						In_port_init_T0A, In_port_init_T0B,
						in_T0A, in_T0B, in_T1A, in_T1B, in_T2A, in_T2B, in_T3A, in_T3B,
						out_T0A, out_T0B, out_T1A, out_T1B, out_T2A, out_T2B, out_T3A, out_T3B						
						
						);
  SIGNAL Present_state: State := defaultA;
 
 -- component instantiation of the datapath
 COMPONENT phase2
	PORT (
			R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, R8_out, R9_out, R10_out, R11_out, R12_out, R13_out, R14_out, R15_out : inout std_logic_vector(31 downto 0);
			BusMuxOut, HI_out, LO_out, Zhigh_out, Zlow_out : inout std_logic_vector (31 downto 0);
			PC_out, MDR_out, in_port_out, C_sign_out, Zhigh_in, Zlow_in, MDR_in, IR_out, MAR_out, Y_out : inout std_logic_vector (31 downto 0);
			Z_in, ALU_out : inout std_logic_vector (63 downto 0);
			S_out : inout std_logic_vector (4 downto 0);
			
			clear, clk : in std_logic;
			Mdatain : inout std_logic_vector(31 downto 0);
			cs : in std_logic_vector (3 downto 0);
			Read_input : in std_logic;
			Write_signal : in std_logic;
			
			register_in_Out_port :  IN  STD_LOGIC;

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
			IncPC_enable : in STD_LOGIC;
			R14MUX_enable : in STD_LOGIC;
			In_port_in : in STD_logic_vector(31 downto 0);
			Out_port_output : out std_logic_vector(31 downto 0);
			
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
			
			cs => ALU_cs_tb,
			Read_input => read_tb,
			Write_signal => write_tb,
			Mdatain => Mdatain_tb,
			IncPC_enable => IncPC_enable_tb,
			R14MUX_enable => R14MUX_enable_tb,
			In_port_in => In_port_in_tb,
			Out_port_output => Out_port_output_tb,
			
			register_in_out_port => register_in_out_port_tb,
			
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
				clk_tb <= '0', '1' after 10 ns;
				wait for 20 ns;
			END PROCESS Clock_process;
			
			PROCESS (clk_tb) -- finite state machine
			BEGIN
				IF (clk_tb'EVENT AND clk_tb = '1') THEN
					CASE Present_state IS
						WHEN DefaultA =>
							Present_state <= DefaultB;
						WHEN DefaultB =>
							Present_state <= load_case1_T0A;
						WHEN load_case1_T0A =>
							Present_state <= load_case1_T0B;
						WHEN load_case1_T0B =>
							Present_state <= load_case1_T1A;
						WHEN load_case1_T1A =>
							Present_state <= load_case1_T1B;
						WHEN load_case1_T1B =>
							Present_state <= load_case1_T2A;
						WHEN load_case1_T2A =>
							Present_state <= load_case1_T2B;
						WHEN load_case1_T2B =>
							Present_state <= load_case1_T3A;						
						WHEN load_case1_T3A =>
							Present_state <= load_case1_T3B;
						WHEN load_case1_T3B =>
							Present_state <= load_case1_T4A;
						WHEN load_case1_T4A =>
							Present_state <= load_case1_T4B;
						WHEN load_case1_T4B =>
							Present_state <= load_case1_T5A;
						WHEN load_case1_T5A =>
							Present_state <= load_case1_T5B;
						WHEN load_case1_T5B =>
							Present_state <= load_case1_T6A;
						WHEN load_case1_T6A =>
							Present_state <= load_case1_T6B;		
						WHEN load_case1_T6B =>
							Present_state <= load_case1_T7A;
						WHEN load_case1_T7A =>
							Present_state <= load_case1_T7B;
							
						WHEN load_case1_T7B =>
							Present_state <= load_case2_T0A;
						WHEN load_case2_T0A =>
							Present_state <= load_case2_T0B;
						WHEN load_case2_T0B =>
							Present_state <= load_case2_T1A;
						WHEN load_case2_T1A =>
							Present_state <= load_case2_T1B;
						WHEN load_case2_T1B =>
							Present_state <= load_case2_T2A;
						WHEN load_case2_T2A =>
							Present_state <= load_case2_T2B;
						WHEN load_case2_T2B =>
							Present_state <= load_case2_T3A;						
						WHEN load_case2_T3A =>
							Present_state <= load_case2_T3B;
						WHEN load_case2_T3B =>
							Present_state <= load_case2_T4A;
						WHEN load_case2_T4A =>
							Present_state <= load_case2_T4B;
						WHEN load_case2_T4B =>
							Present_state <= load_case2_T5A;
						WHEN load_case2_T5A =>
							Present_state <= load_case2_T5B;
						WHEN load_case2_T5B =>
							Present_state <= load_case2_T6A;
						WHEN load_case2_T6A =>
							Present_state <= load_case2_T6B;		
						WHEN load_case2_T6B =>
							Present_state <= load_case2_T7A;
						WHEN load_case2_T7A =>
							Present_state <= load_case2_T7B;	
							
						WHEN load_case2_T7B =>
							Present_state <= load_case3_T0A;
						WHEN load_case3_T0A =>
							Present_state <= load_case3_T0B;
						WHEN load_case3_T0B =>
							Present_state <= load_case3_T1A;
						WHEN load_case3_T1A =>
							Present_state <= load_case3_T1B;
						WHEN load_case3_T1B =>
							Present_state <= load_case3_T2A;
						WHEN load_case3_T2A =>
							Present_state <= load_case3_T2B;
						WHEN load_case3_T2B =>
							Present_state <= load_case3_T3A;						
						WHEN load_case3_T3A =>
							Present_state <= load_case3_T3B;
						WHEN load_case3_T3B =>
							Present_state <= load_case3_T4A;
						WHEN load_case3_T4A =>
							Present_state <= load_case3_T4B;
						WHEN load_case3_T4B =>
							Present_state <= load_case3_T5A;
						WHEN load_case3_T5A =>
							Present_state <= load_case3_T5B;
						
						WHEN load_case3_T5B =>
							Present_state <= load_case4_T0A;
						WHEN load_case4_T0A =>
							Present_state <= load_case4_T0B;
						WHEN load_case4_T0B =>
							Present_state <= load_case4_T1A;
						WHEN load_case4_T1A =>
							Present_state <= load_case4_T1B;
						WHEN load_case4_T1B =>
							Present_state <= load_case4_T2A;
						WHEN load_case4_T2A =>
							Present_state <= load_case4_T2B;
						WHEN load_case4_T2B =>
							Present_state <= load_case4_T3A;						
						WHEN load_case4_T3A =>
							Present_state <= load_case4_T3B;
						WHEN load_case4_T3B =>
							Present_state <= load_case4_T4A;
						WHEN load_case4_T4A =>
							Present_state <= load_case4_T4B;
						WHEN load_case4_T4B =>
							Present_state <= load_case4_T5A;
						WHEN load_case4_T5A =>
							Present_state <= load_case4_T5B;
							
						WHEN load_case4_T5B =>
							Present_state <= load_case5_T0A;
						WHEN load_case5_T0A =>
							Present_state <= load_case5_T0B;
						WHEN load_case5_T0B =>
							Present_state <= load_case5_T1A;
						WHEN load_case5_T1A =>
							Present_state <= load_case5_T1B;
						WHEN load_case5_T1B =>
							Present_state <= load_case5_T2A;
						WHEN load_case5_T2A =>
							Present_state <= load_case5_T2B;
						WHEN load_case5_T2B =>
							Present_state <= load_case5_T3A;						
						WHEN load_case5_T3A =>
							Present_state <= load_case5_T3B;
						WHEN load_case5_T3B =>
							Present_state <= load_case5_T4A;
						WHEN load_case5_T4A =>
							Present_state <= load_case5_T4B;
						WHEN load_case5_T4B =>
							Present_state <= load_case5_T5A;
						WHEN load_case5_T5A =>
							Present_state <= load_case5_T5B;
						WHEN load_case5_T5B =>
							Present_state <= load_case5_T6A;
						WHEN load_case5_T6A =>
							Present_state <= load_case5_T6B;
							
							
						WHEN load_case5_T6B =>
							Present_state <= store_reg_init_T0A;
						WHEN store_reg_init_T0A =>
							Present_state <= store_reg_init_T0B;
						WHEN store_reg_init_T0B =>
							Present_state <= store_reg_init_T1A;
						WHEN store_reg_init_T1A =>
							Present_state <= store_reg_init_T1B;
						WHEN store_reg_init_T1B =>
							Present_state <= store_reg_init_T2A;
						WHEN store_reg_init_T2A =>
							Present_state <= store_reg_init_T2B;
						WHEN store_reg_init_T2B =>
							Present_state <= store_reg_init_T3A;						
						WHEN store_reg_init_T3A =>
							Present_state <= store_reg_init_T3B;
						WHEN store_reg_init_T3B =>
							Present_state <= store_reg_init_T4A;
						WHEN store_reg_init_T4A =>
							Present_state <= store_reg_init_T4B;
						WHEN store_reg_init_T4B =>
							Present_state <= store_reg_init_T5A;
						WHEN store_reg_init_T5A =>
							Present_state <= store_reg_init_T5B;
							
						WHEN store_reg_init_T5B =>
							Present_state <= store_case1_T0A;
						WHEN store_case1_T0A =>
							Present_state <= store_case1_T0B;
						WHEN store_case1_T0B =>
							Present_state <= store_case1_T1A;
						WHEN store_case1_T1A =>
							Present_state <= store_case1_T1B;
						WHEN store_case1_T1B =>
							Present_state <= store_case1_T2A;
						WHEN store_case1_T2A =>
							Present_state <= store_case1_T2B;
						WHEN store_case1_T2B =>
							Present_state <= store_case1_T3A;						
						WHEN store_case1_T3A =>
							Present_state <= store_case1_T3B;
						WHEN store_case1_T3B =>
							Present_state <= store_case1_T4A;
						WHEN store_case1_T4A =>
							Present_state <= store_case1_T4B;
						WHEN store_case1_T4B =>
							Present_state <= store_case1_T5A;
						WHEN store_case1_T5A =>
							Present_state <= store_case1_T5B;
						WHEN store_case1_T5B =>
							Present_state <= store_case1_T6A;
						WHEN store_case1_T6A =>
							Present_state <= store_case1_T6B;		
						WHEN store_case1_T6B =>
							Present_state <= store_case1_T7A;
						WHEN store_case1_T7A =>
							Present_state <= store_case1_T7B;	
							
						WHEN store_case1_T7B =>
							Present_state <= store_check1_T0A;
						WHEN store_check1_T0A =>
							Present_state <= store_check1_T0B;
						WHEN store_check1_T0B =>
							Present_state <= store_check1_T1A;
						WHEN store_check1_T1A =>
							Present_state <= store_check1_T1B;
						WHEN store_check1_T1B =>
							Present_state <= store_check1_T2A;
						WHEN store_check1_T2A =>
							Present_state <= store_check1_T2B;
						WHEN store_check1_T2B =>
							Present_state <= store_check1_T3A;						
						WHEN store_check1_T3A =>
							Present_state <= store_check1_T3B;
						WHEN store_check1_T3B =>
							Present_state <= store_check1_T4A;
						WHEN store_check1_T4A =>
							Present_state <= store_check1_T4B;
						WHEN store_check1_T4B =>
							Present_state <= store_check1_T5A;
						WHEN store_check1_T5A =>
							Present_state <= store_check1_T5B;
						WHEN store_check1_T5B =>
							Present_state <= store_check1_T6A;
						WHEN store_check1_T6A =>
							Present_state <= store_check1_T6B;		
						WHEN store_check1_T6B =>
							Present_state <= store_check1_T7A;
						WHEN store_check1_T7A =>
							Present_state <= store_check1_T7B;
							
						WHEN store_check1_T7B =>
							Present_state <= store_case2_T0A;
						WHEN store_case2_T0A =>
							Present_state <= store_case2_T0B;
						WHEN store_case2_T0B =>
							Present_state <= store_case2_T1A;
						WHEN store_case2_T1A =>
							Present_state <= store_case2_T1B;
						WHEN store_case2_T1B =>
							Present_state <= store_case2_T2A;
						WHEN store_case2_T2A =>
							Present_state <= store_case2_T2B;
						WHEN store_case2_T2B =>
							Present_state <= store_case2_T3A;						
						WHEN store_case2_T3A =>
							Present_state <= store_case2_T3B;
						WHEN store_case2_T3B =>
							Present_state <= store_case2_T4A;
						WHEN store_case2_T4A =>
							Present_state <= store_case2_T4B;
						WHEN store_case2_T4B =>
							Present_state <= store_case2_T5A;
						WHEN store_case2_T5A =>
							Present_state <= store_case2_T5B;
						WHEN store_case2_T5B =>
							Present_state <= store_case2_T6A;
						WHEN store_case2_T6A =>
							Present_state <= store_case2_T6B;		
						WHEN store_case2_T6B =>
							Present_state <= store_case2_T7A;
						WHEN store_case2_T7A =>
							Present_state <= store_case2_T7B;	
							
						WHEN store_case2_T7B =>
							Present_state <= store_check2_T0A;
						WHEN store_check2_T0A =>
							Present_state <= store_check2_T0B;
						WHEN store_check2_T0B =>
							Present_state <= store_check2_T1A;
						WHEN store_check2_T1A =>
							Present_state <= store_check2_T1B;
						WHEN store_check2_T1B =>
							Present_state <= store_check2_T2A;
						WHEN store_check2_T2A =>
							Present_state <= store_check2_T2B;
						WHEN store_check2_T2B =>
							Present_state <= store_check2_T3A;						
						WHEN store_check2_T3A =>
							Present_state <= store_check2_T3B;
						WHEN store_check2_T3B =>
							Present_state <= store_check2_T4A;
						WHEN store_check2_T4A =>
							Present_state <= store_check2_T4B;
						WHEN store_check2_T4B =>
							Present_state <= store_check2_T5A;
						WHEN store_check2_T5A =>
							Present_state <= store_check2_T5B;
						WHEN store_check2_T5B =>
							Present_state <= store_check2_T6A;
						WHEN store_check2_T6A =>
							Present_state <= store_check2_T6B;		
						WHEN store_check2_T6B =>
							Present_state <= store_check2_T7A;
						WHEN store_check2_T7A =>
							Present_state <= store_check2_T7B;
							
							
						WHEN store_check2_T7B =>
							Present_state <= store_case3_T0A;
						WHEN store_case3_T0A =>
							Present_state <= store_case3_T0B;
						WHEN store_case3_T0B =>
							Present_state <= store_case3_T1A;
						WHEN store_case3_T1A =>
							Present_state <= store_case3_T1B;
						WHEN store_case3_T1B =>
							Present_state <= store_case3_T2A;
						WHEN store_case3_T2A =>
							Present_state <= store_case3_T2B;
						WHEN store_case3_T2B =>
							Present_state <= store_case3_T3A;						
						WHEN store_case3_T3A =>
							Present_state <= store_case3_T3B;
						WHEN store_case3_T3B =>
							Present_state <= store_case3_T4A;
						WHEN store_case3_T4A =>
							Present_state <= store_case3_T4B;
						WHEN store_case3_T4B =>
							Present_state <= store_case3_T5A;
						WHEN store_case3_T5A =>
							Present_state <= store_case3_T5B;
						WHEN store_case3_T5B =>
							Present_state <= store_case3_T6A;
						WHEN store_case3_T6A =>
							Present_state <= store_case3_T6B;
							
						WHEN store_case3_T6B =>
							Present_state <= store_check3_T0A;
						WHEN store_check3_T0A =>
							Present_state <= store_check3_T0B;
						WHEN store_check3_T0B =>
							Present_state <= store_check3_T1A;
						WHEN store_check3_T1A =>
							Present_state <= store_check3_T1B;
						WHEN store_check3_T1B =>
							Present_state <= store_check3_T2A;
						WHEN store_check3_T2A =>
							Present_state <= store_check3_T2B;
						WHEN store_check3_T2B =>
							Present_state <= store_check3_T3A;						
						WHEN store_check3_T3A =>
							Present_state <= store_check3_T3B;
						WHEN store_check3_T3B =>
							Present_state <= store_check3_T4A;
						WHEN store_check3_T4A =>
							Present_state <= store_check3_T4B;
						WHEN store_check3_T4B =>
							Present_state <= store_check3_T5A;
						WHEN store_check3_T5A =>
							Present_state <= store_check3_T5B;
						WHEN store_check3_T5B =>
							Present_state <= store_check3_T6A;
						WHEN store_check3_T6A =>
							Present_state <= store_check3_T6B;		
						WHEN store_check3_T6B =>
							Present_state <= store_check3_T7A;
						WHEN store_check3_T7A =>
							Present_state <= store_check3_T7B;							
							
						WHEN store_check3_T7B =>
							Present_state <= ALU_case1_T0A;
						WHEN ALU_case1_T0A =>
							Present_state <= ALU_case1_T0B;
						WHEN ALU_case1_T0B =>
							Present_state <= ALU_case1_T1A;
						WHEN ALU_case1_T1A =>
							Present_state <= ALU_case1_T1B;
						WHEN ALU_case1_T1B =>
							Present_state <= ALU_case1_T2A;
						WHEN ALU_case1_T2A =>
							Present_state <= ALU_case1_T2B;
						WHEN ALU_case1_T2B =>
							Present_state <= ALU_case1_T3A;						
						WHEN ALU_case1_T3A =>
							Present_state <= ALU_case1_T3B;
						WHEN ALU_case1_T3B =>
							Present_state <= ALU_case1_T4A;
						WHEN ALU_case1_T4A =>
							Present_state <= ALU_case1_T4B;
						WHEN ALU_case1_T4B =>
							Present_state <= ALU_case1_T5A;
						WHEN ALU_case1_T5A =>
							Present_state <= ALU_case1_T5B;
							
						WHEN ALU_case1_T5B =>
							Present_state <= ALU_case2_T0A;
						WHEN ALU_case2_T0A =>
							Present_state <= ALU_case2_T0B;
						WHEN ALU_case2_T0B =>
							Present_state <= ALU_case2_T1A;
						WHEN ALU_case2_T1A =>
							Present_state <= ALU_case2_T1B;
						WHEN ALU_case2_T1B =>
							Present_state <= ALU_case2_T2A;
						WHEN ALU_case2_T2A =>
							Present_state <= ALU_case2_T2B;
						WHEN ALU_case2_T2B =>
							Present_state <= ALU_case2_T3A;						
						WHEN ALU_case2_T3A =>
							Present_state <= ALU_case2_T3B;
						WHEN ALU_case2_T3B =>
							Present_state <= ALU_case2_T4A;
						WHEN ALU_case2_T4A =>
							Present_state <= ALU_case2_T4B;
						WHEN ALU_case2_T4B =>
							Present_state <= ALU_case2_T5A;
						WHEN ALU_case2_T5A =>
							Present_state <= ALU_case2_T5B;
					
						WHEN ALU_case2_T5B =>
							Present_state <= ALU_case3_T0A;
						WHEN ALU_case3_T0A =>
							Present_state <= ALU_case3_T0B;
						WHEN ALU_case3_T0B =>
							Present_state <= ALU_case3_T1A;
						WHEN ALU_case3_T1A =>
							Present_state <= ALU_case3_T1B;
						WHEN ALU_case3_T1B =>
							Present_state <= ALU_case3_T2A;
						WHEN ALU_case3_T2A =>
							Present_state <= ALU_case3_T2B;
						WHEN ALU_case3_T2B =>
							Present_state <= ALU_case3_T3A;						
						WHEN ALU_case3_T3A =>
							Present_state <= ALU_case3_T3B;
						WHEN ALU_case3_T3B =>
							Present_state <= ALU_case3_T4A;
						WHEN ALU_case3_T4A =>
							Present_state <= ALU_case3_T4B;
						WHEN ALU_case3_T4B =>
							Present_state <= ALU_case3_T5A;
						WHEN ALU_case3_T5A =>
							Present_state <= ALU_case3_T5B;		
				
						WHEN ALU_case3_T5B =>
							Present_state <= branch_reg_init1_T0A;
						WHEN branch_reg_init1_T0A =>
							Present_state <= branch_reg_init1_T0B;
						WHEN branch_reg_init1_T0B =>
							Present_state <= branch_reg_init1_T1A;
						WHEN branch_reg_init1_T1A =>
							Present_state <= branch_reg_init1_T1B;
						WHEN branch_reg_init1_T1B =>
							Present_state <= branch_reg_init1_T2A;
						WHEN branch_reg_init1_T2A =>
							Present_state <= branch_reg_init1_T2B;
						WHEN branch_reg_init1_T2B =>
							Present_state <= branch_reg_init1_T3A;						
						WHEN branch_reg_init1_T3A =>
							Present_state <= branch_reg_init1_T3B;
						WHEN branch_reg_init1_T3B =>
							Present_state <= branch_reg_init1_T4A;
						WHEN branch_reg_init1_T4A =>
							Present_state <= branch_reg_init1_T4B;
						WHEN branch_reg_init1_T4B =>
							Present_state <= branch_reg_init1_T5A;
						WHEN branch_reg_init1_T5A =>
							Present_state <= branch_reg_init1_T5B;
							
						WHEN branch_reg_init1_T5B=>
							Present_state <= branch_case1_T0A;
						WHEN branch_case1_T0A =>
							Present_state <= branch_case1_T0B;
						WHEN branch_case1_T0B =>
							Present_state <= branch_case1_T1A;
						WHEN branch_case1_T1A =>
							Present_state <= branch_case1_T1B;
						WHEN branch_case1_T1B =>
							Present_state <= branch_case1_T2A;
						WHEN branch_case1_T2A =>
							Present_state <= branch_case1_T2B;
						WHEN branch_case1_T2B =>
							Present_state <= branch_case1_T3A;						
						WHEN branch_case1_T3A =>
							Present_state <= branch_case1_T3B;
						WHEN branch_case1_T3B =>
							Present_state <= branch_case1_T4A;
						WHEN branch_case1_T4A =>
							Present_state <= branch_case1_T4B;							
							
						WHEN branch_case1_T4B =>
							Present_state <= branch_reg_init2_T0A;
						WHEN branch_reg_init2_T0A =>
							Present_state <= branch_reg_init2_T0B;
						WHEN branch_reg_init2_T0B =>
							Present_state <= branch_reg_init2_T1A;
						WHEN branch_reg_init2_T1A =>
							Present_state <= branch_reg_init2_T1B;
						WHEN branch_reg_init2_T1B =>
							Present_state <= branch_reg_init2_T2A;
						WHEN branch_reg_init2_T2A =>
							Present_state <= branch_reg_init2_T2B;
						WHEN branch_reg_init2_T2B =>
							Present_state <= branch_reg_init2_T3A;						
						WHEN branch_reg_init2_T3A =>
							Present_state <= branch_reg_init2_T3B;
						WHEN branch_reg_init2_T3B =>
							Present_state <= branch_reg_init2_T4A;
						WHEN branch_reg_init2_T4A =>
							Present_state <= branch_reg_init2_T4B;
						WHEN branch_reg_init2_T4B =>
							Present_state <= branch_reg_init2_T5A;
						WHEN branch_reg_init2_T5A =>
							Present_state <= branch_reg_init2_T5B;
							
						WHEN branch_reg_init2_T5B =>
							Present_state <= branch_reg_init3_T0A;
						WHEN branch_reg_init3_T0A =>
							Present_state <= branch_reg_init3_T0B;
						WHEN branch_reg_init3_T0B =>
							Present_state <= branch_reg_init3_T1A;
						WHEN branch_reg_init3_T1A =>
							Present_state <= branch_reg_init3_T1B;
						WHEN branch_reg_init3_T1B =>
							Present_state <= branch_reg_init3_T2A;
						WHEN branch_reg_init3_T2A =>
							Present_state <= branch_reg_init3_T2B;
						WHEN branch_reg_init3_T2B =>
							Present_state <= branch_reg_init3_T3A;						
						WHEN branch_reg_init3_T3A =>
							Present_state <= branch_reg_init3_T3B;
						WHEN branch_reg_init3_T3B =>
							Present_state <= branch_reg_init3_T4A;
						WHEN branch_reg_init3_T4A =>
							Present_state <= branch_reg_init3_T4B;
						WHEN branch_reg_init3_T4B =>
							Present_state <= branch_reg_init3_T5A;
						WHEN branch_reg_init3_T5A =>
							Present_state <= branch_reg_init3_T5B;	
							
						WHEN branch_reg_init3_T5B =>
							Present_state <= branch_case2_T0A;
						WHEN branch_case2_T0A =>
							Present_state <= branch_case2_T0B;
						WHEN branch_case2_T0B =>
							Present_state <= branch_case2_T1A;
						WHEN branch_case2_T1A =>
							Present_state <= branch_case2_T1B;
						WHEN branch_case2_T1B =>
							Present_state <= branch_case2_T2A;
						WHEN branch_case2_T2A =>
							Present_state <= branch_case2_T2B;
						WHEN branch_case2_T2B =>
							Present_state <= branch_case2_T3A;						
						WHEN branch_case2_T3A =>
							Present_state <= branch_case2_T3B;
						WHEN branch_case2_T3B =>
							Present_state <= branch_case2_T4A;
						WHEN branch_case2_T4A =>
							Present_state <= branch_case2_T4B;
												
						WHEN branch_case2_T4B =>
							Present_state <= branch_reg_init4_T0A;
						WHEN branch_reg_init4_T0A =>
							Present_state <= branch_reg_init4_T0B;
						WHEN branch_reg_init4_T0B =>
							Present_state <= branch_reg_init4_T1A;
						WHEN branch_reg_init4_T1A =>
							Present_state <= branch_reg_init4_T1B;
						WHEN branch_reg_init4_T1B =>
							Present_state <= branch_reg_init4_T2A;
						WHEN branch_reg_init4_T2A =>
							Present_state <= branch_reg_init4_T2B;
						WHEN branch_reg_init4_T2B =>
							Present_state <= branch_reg_init4_T3A;						
						WHEN branch_reg_init4_T3A =>
							Present_state <= branch_reg_init4_T3B;
						WHEN branch_reg_init4_T3B =>
							Present_state <= branch_reg_init4_T4A;
						WHEN branch_reg_init4_T4A =>
							Present_state <= branch_reg_init4_T4B;
						WHEN branch_reg_init4_T4B =>
							Present_state <= branch_reg_init4_T5A;
						WHEN branch_reg_init4_T5A =>
							Present_state <= branch_reg_init4_T5B;	
							
						WHEN branch_reg_init4_T5B =>
							Present_state <= branch_case3_T0A;
						WHEN branch_case3_T0A =>
							Present_state <= branch_case3_T0B;
						WHEN branch_case3_T0B =>
							Present_state <= branch_case3_T1A;
						WHEN branch_case3_T1A =>
							Present_state <= branch_case3_T1B;
						WHEN branch_case3_T1B =>
							Present_state <= branch_case3_T2A;
						WHEN branch_case3_T2A =>
							Present_state <= branch_case3_T2B;
						WHEN branch_case3_T2B =>
							Present_state <= branch_case3_T3A;						
						WHEN branch_case3_T3A =>
							Present_state <= branch_case3_T3B;
						WHEN branch_case3_T3B =>
							Present_state <= branch_case3_T4A;
						WHEN branch_case3_T4A =>
							Present_state <= branch_case3_T4B;
							
						WHEN branch_case3_T4B =>
							Present_state <= branch_reg_init5_T0A;
						WHEN branch_reg_init5_T0A =>
							Present_state <= branch_reg_init5_T0B;
						WHEN branch_reg_init5_T0B =>
							Present_state <= branch_reg_init5_T1A;
						WHEN branch_reg_init5_T1A =>
							Present_state <= branch_reg_init5_T1B;
						WHEN branch_reg_init5_T1B =>
							Present_state <= branch_reg_init5_T2A;
						WHEN branch_reg_init5_T2A =>
							Present_state <= branch_reg_init5_T2B;
						WHEN branch_reg_init5_T2B =>
							Present_state <= branch_reg_init5_T3A;						
						WHEN branch_reg_init5_T3A =>
							Present_state <= branch_reg_init5_T3B;
						WHEN branch_reg_init5_T3B =>
							Present_state <= branch_reg_init5_T4A;
						WHEN branch_reg_init5_T4A =>
							Present_state <= branch_reg_init5_T4B;
						WHEN branch_reg_init5_T4B =>
							Present_state <= branch_reg_init5_T5A;
						WHEN branch_reg_init5_T5A =>
							Present_state <= branch_reg_init5_T5B;
							
						WHEN branch_reg_init5_T5B =>
							Present_state <= branch_reg_init6_T0A;
						WHEN branch_reg_init6_T0A =>
							Present_state <= branch_reg_init6_T0B;
						WHEN branch_reg_init6_T0B =>
							Present_state <= branch_reg_init6_T1A;
						WHEN branch_reg_init6_T1A =>
							Present_state <= branch_reg_init6_T1B;
						WHEN branch_reg_init6_T1B =>
							Present_state <= branch_reg_init6_T2A;
						WHEN branch_reg_init6_T2A =>
							Present_state <= branch_reg_init6_T2B;
						WHEN branch_reg_init6_T2B =>
							Present_state <= branch_reg_init6_T3A;						
						WHEN branch_reg_init6_T3A =>
							Present_state <= branch_reg_init6_T3B;
						WHEN branch_reg_init6_T3B =>
							Present_state <= branch_reg_init6_T4A;
						WHEN branch_reg_init6_T4A =>
							Present_state <= branch_reg_init6_T4B;
						WHEN branch_reg_init6_T4B =>
							Present_state <= branch_reg_init6_T5A;
						WHEN branch_reg_init6_T5A =>
							Present_state <= branch_reg_init6_T5B;	
							
						WHEN branch_reg_init6_T5B =>
							Present_state <= branch_case4_T0A;
						WHEN branch_case4_T0A =>
							Present_state <= branch_case4_T0B;
						WHEN branch_case4_T0B =>
							Present_state <= branch_case4_T1A;
						WHEN branch_case4_T1A =>
							Present_state <= branch_case4_T1B;
						WHEN branch_case4_T1B =>
							Present_state <= branch_case4_T2A;
						WHEN branch_case4_T2A =>
							Present_state <= branch_case4_T2B;
						WHEN branch_case4_T2B =>
							Present_state <= branch_case4_T3A;						
						WHEN branch_case4_T3A =>
							Present_state <= branch_case4_T3B;
						WHEN branch_case4_T3B =>
							Present_state <= branch_case4_T4A;
						WHEN branch_case4_T4A =>
							Present_state <= branch_case4_T4B;
							
						WHEN branch_case4_T4B =>
							Present_state <= jump_reg_init1_T0A;
						WHEN jump_reg_init1_T0A =>
							Present_state <= jump_reg_init1_T0B;
						WHEN jump_reg_init1_T0B =>
							Present_state <= jump_reg_init1_T1A;
						WHEN jump_reg_init1_T1A =>
							Present_state <= jump_reg_init1_T1B;
						WHEN jump_reg_init1_T1B =>
							Present_state <= jump_reg_init1_T2A;
						WHEN jump_reg_init1_T2A =>
							Present_state <= jump_reg_init1_T2B;
						WHEN jump_reg_init1_T2B =>
							Present_state <= jump_reg_init1_T3A;						
						WHEN jump_reg_init1_T3A =>
							Present_state <= jump_reg_init1_T3B;
						WHEN jump_reg_init1_T3B =>
							Present_state <= jump_reg_init1_T4A;
						WHEN jump_reg_init1_T4A =>
							Present_state <= jump_reg_init1_T4B;
						WHEN jump_reg_init1_T4B =>
							Present_state <= jump_reg_init1_T5A;
						WHEN jump_reg_init1_T5A =>
							Present_state <= jump_reg_init1_T5B;
							
						WHEN jump_reg_init1_T5B =>
							Present_state <= jump_case1_T0A;
						WHEN jump_case1_T0A =>
							Present_state <= jump_case1_T0B;
						WHEN jump_case1_T0B =>
							Present_state <= jump_case1_T1A;
						WHEN jump_case1_T1A =>
							Present_state <= jump_case1_T1B;
						WHEN jump_case1_T1B =>
							Present_state <= jump_case1_T2A;
						WHEN jump_case1_T2A =>
							Present_state <= jump_case1_T2B;
						WHEN jump_case1_T2B =>
							Present_state <= jump_case1_T3A;						
						WHEN jump_case1_T3A =>
							Present_state <= jump_case1_T3B;
							
						WHEN jump_case1_T3B =>
							Present_state <= jump_reg_init2_T0A;
						WHEN jump_reg_init2_T0A =>
							Present_state <= jump_reg_init2_T0B;
						WHEN jump_reg_init2_T0B =>
							Present_state <= jump_reg_init2_T1A;
						WHEN jump_reg_init2_T1A =>
							Present_state <= jump_reg_init2_T1B;
						WHEN jump_reg_init2_T1B =>
							Present_state <= jump_reg_init2_T2A;
						WHEN jump_reg_init2_T2A =>
							Present_state <= jump_reg_init2_T2B;
						WHEN jump_reg_init2_T2B =>
							Present_state <= jump_reg_init2_T3A;						
						WHEN jump_reg_init2_T3A =>
							Present_state <= jump_reg_init2_T3B;
						WHEN jump_reg_init2_T3B =>
							Present_state <= jump_reg_init2_T4A;
						WHEN jump_reg_init2_T4A =>
							Present_state <= jump_reg_init2_T4B;
						WHEN jump_reg_init2_T4B =>
							Present_state <= jump_reg_init2_T5A;
						WHEN jump_reg_init2_T5A =>
							Present_state <= jump_reg_init2_T5B;
							
						WHEN jump_reg_init2_T5B =>
							Present_state <= jump_case2_T0A;
						WHEN jump_case2_T0A =>
							Present_state <= jump_case2_T0B;
						WHEN jump_case2_T0B =>
							Present_state <= jump_case2_T1A;
						WHEN jump_case2_T1A =>
							Present_state <= jump_case2_T1B;
						WHEN jump_case2_T1B =>
							Present_state <= jump_case2_T2A;
						WHEN jump_case2_T2A =>
							Present_state <= jump_case2_T2B;
						WHEN jump_case2_T2B =>
							Present_state <= jump_case2_T3A;						
						WHEN jump_case2_T3A =>
							Present_state <= jump_case2_T3B;
							
						WHEN jump_case2_T3B =>
							Present_state <= move_reg_init1_T0A;
						WHEN move_reg_init1_T0A =>
							Present_state <= move_reg_init1_T0B;
						WHEN move_reg_init1_T0B =>
							Present_state <= move_reg_init1_T1A;
						WHEN move_reg_init1_T1A =>
							Present_state <= move_reg_init1_T1B;
						WHEN move_reg_init1_T1B =>
							Present_state <= move_reg_init1_T2A;
						WHEN move_reg_init1_T2A =>
							Present_state <= move_reg_init1_T2B;
						WHEN move_reg_init1_T2B =>
							Present_state <= move_reg_init1_T3A;						
						WHEN move_reg_init1_T3A =>
							Present_state <= move_reg_init1_T3B;
						WHEN move_reg_init1_T3B =>
							Present_state <= move_reg_init1_T4A;
						WHEN move_reg_init1_T4A =>
							Present_state <= move_reg_init1_T4B;
						WHEN move_reg_init1_T4B =>
							Present_state <= move_reg_init1_T5A;
						WHEN move_reg_init1_T5A =>
							Present_state <= move_reg_init1_T5B;
									
						WHEN move_reg_init1_T5B=>
							Present_state <= move_reg_init2_T0A;
						WHEN move_reg_init2_T0A =>
							Present_state <= move_reg_init2_T0B;
						WHEN move_reg_init2_T0B =>
							Present_state <= move_reg_init2_T1A;
						WHEN move_reg_init2_T1A =>
							Present_state <= move_reg_init2_T1B;
						WHEN move_reg_init2_T1B =>
							Present_state <= move_reg_init2_T2A;
						WHEN move_reg_init2_T2A =>
							Present_state <= move_reg_init2_T2B;
						WHEN move_reg_init2_T2B =>
							Present_state <= move_reg_init2_T3A;						
						WHEN move_reg_init2_T3A =>
							Present_state <= move_reg_init2_T3B;
						WHEN move_reg_init2_T3B =>
							Present_state <= move_reg_init2_T4A;
						WHEN move_reg_init2_T4A =>
							Present_state <= move_reg_init2_T4B;
						WHEN move_reg_init2_T4B =>
							Present_state <= move_reg_init2_T5A;
						WHEN move_reg_init2_T5A =>
							Present_state <= move_reg_init2_T5B;
						
						WHEN move_reg_init2_T5B =>
							Present_state <= mul_T0A;
						WHEN mul_T0A =>
							Present_state <= mul_T0B;
						WHEN mul_T0B =>
							Present_state <= mul_T1A;
						WHEN mul_T1A =>
							Present_state <= mul_T1B;
						WHEN mul_T1B =>
							Present_state <= mul_T2A;
						WHEN mul_T2A =>
							Present_state <= mul_T2B;
						WHEN mul_T2B =>
							Present_state <= mul_T3A;						
						WHEN mul_T3A =>
							Present_state <= mul_T3B;
						WHEN mul_T3B =>
							Present_state <= mul_T4A;
						WHEN mul_T4A =>
							Present_state <= mul_T4B;
						WHEN mul_T4B =>
							Present_state <= mul_T5A;
						WHEN mul_T5A =>
							Present_state <= mul_T5B;
						WHEN mul_T5B =>
							Present_state <= mul_T6A;
						WHEN mul_T6A =>
							Present_state <= mul_T6B;
							
						WHEN mul_T6B =>
							Present_state <= mfhi_T0A;
						WHEN mfhi_T0A =>
							Present_state <= mfhi_T0B;
						WHEN mfhi_T0B =>
							Present_state <= mfhi_T1A;
						WHEN mfhi_T1A =>
							Present_state <= mfhi_T1B;
						WHEN mfhi_T1B =>
							Present_state <= mfhi_T2A;
						WHEN mfhi_T2A =>
							Present_state <= mfhi_T2B;
						WHEN mfhi_T2B =>
							Present_state <= mfhi_T3A;						
						WHEN mfhi_T3A =>
							Present_state <= mfhi_T3B;
							
						WHEN mfhi_T3B =>
							Present_state <= mflo_T0A;
						WHEN mflo_T0A =>
							Present_state <= mflo_T0B;
						WHEN mflo_T0B =>
							Present_state <= mflo_T1A;
						WHEN mflo_T1A =>
							Present_state <= mflo_T1B;
						WHEN mflo_T1B =>
							Present_state <= mflo_T2A;
						WHEN mflo_T2A =>
							Present_state <= mflo_T2B;
						WHEN mflo_T2B =>
							Present_state <= mflo_T3A;						
						WHEN mflo_T3A =>
							Present_state <= mflo_T3B;
						
						WHEN mflo_T3B =>
							Present_state <= In_port_init_T0A;
						WHEN In_port_init_T0A =>
							Present_state <= In_port_init_T0B;
							
						WHEN In_port_init_T0B =>
							Present_state <= in_T0A;
						WHEN in_T0A =>
							Present_state <= in_T0B;
						WHEN in_T0B =>
							Present_state <= in_T1A;
						WHEN in_T1A =>
							Present_state <= in_T1B;
						WHEN in_T1B =>
							Present_state <= in_T2A;
						WHEN in_T2A =>
							Present_state <= in_T2B;
						WHEN in_T2B =>
							Present_state <= in_T3A;						
						WHEN in_T3A =>
							Present_state <= in_T3B;
							
						WHEN in_T3B =>
							Present_state <= out_T0A;
						WHEN out_T0A =>
							Present_state <= out_T0B;
						WHEN out_T0B =>
							Present_state <= out_T1A;
						WHEN out_T1A =>
							Present_state <= out_T1B;
						WHEN out_T1B =>
							Present_state <= out_T2A;
						WHEN out_T2A =>
							Present_state <= out_T2B;
						WHEN out_T2B =>
							Present_state <= out_T3A;						
						WHEN out_T3A =>
							Present_state <= out_T3B;
					
						WHEN OTHERS =>
					END CASE;
				END IF;
			END PROCESS;
			
			PROCESS (Present_state) -- do the required job in each state
			BEGIN
				CASE Present_state IS -- assert the required signals in each clock cycle
					 WHEN DefaultA =>
							
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
							R14MUX_enable_tb <= '0';
							Con_out_tb <= '0';
							write_tb <= '0';
						
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
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--LOAD INSTRUCTIONS
--ld R1, $65					
					WHEN load_case1_T0A => 
						clear_tb <= '0';
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN load_case1_T1A =>	
						register_in_MAR_tb <= '0';
						IncPC_enable_tb <= '1';
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN load_case1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN load_case1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN load_case1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN load_case1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN load_case1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
						
					WHEN load_case1_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';

						register_in_MDR_tb <= '1';

					WHEN load_case1_T7A =>
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ld R0, $55(R1)						
					 WHEN load_case2_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';

						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
 
					WHEN load_case2_T1A =>		 
						register_in_MAR_tb <= '0';
						register_in_PC_tb <= '1';
						IncPC_enable_tb <= '1';	 
						register_in_MDR_tb <= '1';
						 
					WHEN load_case2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN load_case2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN load_case2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN load_case2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';	
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN load_case2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
						
					WHEN load_case2_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';

						register_in_MDR_tb <= '1';
					
					WHEN load_case2_T7A =>
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ldi R1, $65				
					WHEN load_case3_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN load_case3_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN load_case3_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN load_case3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN load_case3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN load_case3_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN load_case3_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ldi R1, $55(R1)						
					WHEN load_case4_T0A => 					
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';				 
					 
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
					 
					WHEN load_case4_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN load_case4_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';
						 
					WHEN load_case4_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN load_case4_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';						
						
					WHEN load_case4_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';	
						register_in_C_tb <= '0';				
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN load_case4_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ldr R0, $65																
					WHEN load_case5_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
					 
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';					
			
					WHEN load_case5_T1A =>	
						register_in_MAR_tb <= '0'; 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_MDR_tb <= '1';
						 
					WHEN load_case5_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';
						register_in_Y_tb <= '0';
						 
					WHEN load_case5_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN load_case5_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';
							
					WHEN load_case5_T4A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';		
						
						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
					
					WHEN load_case5_T5A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';
						
						register_in_MDR_tb <= '1';
			
					WHEN load_case5_T6A =>						
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--STORE INSTRUCTIONS
--ldi R4, $67			
					WHEN store_reg_init_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN store_reg_init_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';						 
						register_in_MDR_tb <= '1';
						 
					WHEN store_reg_init_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN store_reg_init_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_reg_init_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN store_reg_init_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN store_reg_init_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--st $90, R4
					WHEN store_case1_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
					
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN store_case1_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN store_case1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN store_case1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_case1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN store_case1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN store_case1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
							
					WHEN store_case1_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_MDR_tb <= '1';
						write_tb <= '1';

					WHEN store_case1_T7A =>
						register_in_MDR_tb <= '0';
						Gra_tb <= '0';
						Rout_tb <= '0';
						
						MDRout_tb <= '1';
--------------------------------------------------------------------------
--ld R1, $90												
					WHEN store_check1_T0A => 
						MDRout_tb <= '0';
						write_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN store_check1_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';				 
						register_in_MDR_tb <= '1';
						 
					WHEN store_check1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN store_check1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_check1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN store_check1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN store_check1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
						
					WHEN store_check1_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';

						register_in_MDR_tb <= '1';

					WHEN store_check1_T7A =>
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';					
--------------------------------------------------------------------------
--st $90(R4), R4
					WHEN store_case2_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
					
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN store_case2_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN store_case2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN store_case2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_case2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN store_case2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN store_case2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
								
					WHEN store_case2_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_MDR_tb <= '1';
						write_tb <= '1';

					WHEN store_case2_T7A =>
						register_in_MDR_tb <= '0';
						Gra_tb <= '0';
						Rout_tb <= '0';
						
						MDRout_tb <= '1';
--------------------------------------------------------------------------
--ld R1, $157						
					WHEN store_check2_T0A => 
						MDRout_tb <= '0';
						write_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN store_check2_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';				 
						register_in_MDR_tb <= '1';
						 
					WHEN store_check2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN store_check2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_check2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN store_check2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN store_check2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
						
					WHEN store_check2_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';

						register_in_MDR_tb <= '1';

					WHEN store_check2_T7A =>
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--str $90, R4
					WHEN store_case3_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
					 
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';					
			
					WHEN store_case3_T1A =>	
						register_in_MAR_tb <= '0'; 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_MDR_tb <= '1';
						 
					WHEN store_case3_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';
						register_in_Y_tb <= '0';
						 
					WHEN store_case3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_case3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';
							
					WHEN store_case3_T4A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';		
						
						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
					
					WHEN store_case3_T5A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_MDR_tb <= '1';
						write_tb <= '1';
			
					WHEN store_case3_T6A =>						
						register_in_MDR_tb <= '0';
						Gra_tb <= '0';
						Rout_tb <= '0';
						
						MDRout_tb <= '1';				
--------------------------------------------------------------------------
--ld R1, $100										
					WHEN store_check3_T0A => 
						MDRout_tb <= '0';
						write_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN store_check3_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';		
						IncPC_enable_tb <= '1';			 
						register_in_MDR_tb <= '1';
						 
					WHEN store_check3_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN store_check3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN store_check3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN store_check3_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN store_check3_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_MAR_tb <= '1';
						read_tb <= '1';
						
					WHEN store_check3_T6A =>
						Zlowout_tb <= '0';
						register_in_MAR_tb <= '0';

						register_in_MDR_tb <= '1';

					WHEN store_check3_T7A =>
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';	
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--ALU OPERATIONS
--addi R2, R3, $25												
					WHEN ALU_case1_T0A => 
						MDRout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';				
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN ALU_case1_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';				 
						register_in_MDR_tb <= '1';
						 
					WHEN ALU_case1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN ALU_case1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN ALU_case1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN ALU_case1_T4A =>
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN ALU_case1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--andi R2, R3, $25
					WHEN ALU_case2_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';			
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN ALU_case2_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN ALU_case2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN ALU_case2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN ALU_case2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN ALU_case2_T4A =>
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0100";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN ALU_case2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ori R2, R3, $25
					WHEN ALU_case3_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN ALU_case3_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';				 
						register_in_MDR_tb <= '1';
						 
					WHEN ALU_case3_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';

					WHEN ALU_case3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN ALU_case3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';

					WHEN ALU_case3_T4A =>
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0101";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN ALU_case3_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--BRANCH INSTRUCTIONS
--ldi R5, $32
					WHEN branch_reg_init1_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init1_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';

--------------------------------------------------------------------------
-- brzr R6, R5
					WHEN branch_case1_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN branch_case1_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_case1_T1B => 
						register_in_PC_tb <= '0';

					WHEN branch_case1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_case1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						CON_in_tb <= '1';

					WHEN branch_case1_T4A =>
						Gra_tb <= '0';
						Rout_tb <= '0';
						COn_in_tb <= '0';				
					
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';					
--------------------------------------------------------------------------						
--ldi R5, $40
					WHEN branch_reg_init2_T0A => 
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init2_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';	
						register_in_C_tb <= '0';				
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------						
--ldi R6, $-3
					WHEN branch_reg_init3_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init3_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init3_T1B =>
						IncPC_enable_tb <= '0';	
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init3_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init3_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--brnz R6, R5
					WHEN branch_case2_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN branch_case2_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_case2_T1B => 
						register_in_PC_tb <= '0';

					WHEN branch_case2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_case2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						CON_in_tb <= '1';

					WHEN branch_case2_T4A =>
						Gra_tb <= '0';
						Rout_tb <= '0';
						COn_in_tb <= '0';				
					
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';					
--------------------------------------------------------------------------						
--ldi R5, $48
					WHEN branch_reg_init4_T0A => 
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init4_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';		
						IncPC_enable_tb <= '1';				 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init4_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init4_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init4_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init4_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init4_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';					
--------------------------------------------------------------------------							
--brmi R6, R5
					WHEN branch_case3_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN branch_case3_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_case3_T1B => 
						register_in_PC_tb <= '0';

					WHEN branch_case3_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_case3_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						CON_in_tb <= '1';

					WHEN branch_case3_T4A =>
						Gra_tb <= '0';
						Rout_tb <= '0';
						COn_in_tb <= '0';				
					
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';
--------------------------------------------------------------------------						
--ldi R5, $72
					WHEN branch_reg_init5_T0A => 
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init5_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init5_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init5_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init5_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init5_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init5_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------						
--ldi R6, $1
					WHEN branch_reg_init6_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN branch_reg_init6_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_reg_init6_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN branch_reg_init6_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_reg_init6_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN branch_reg_init6_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN branch_reg_init6_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------								
--brpl R6, R5
					WHEN branch_case4_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN branch_case4_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN branch_case4_T1B => 
						 register_in_PC_tb <= '0';

					WHEN branch_case4_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN branch_case4_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						CON_in_tb <= '1';

					WHEN branch_case4_T4A =>
						Gra_tb <= '0';
						Rout_tb <= '0';
						COn_in_tb <= '0';				
					
						Grb_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';								
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--JUMP INSTRUCTIONS
--ldi R2, $80
					WHEN jump_reg_init1_T0A => 
						Grb_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN jump_reg_init1_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN jump_reg_init1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN jump_reg_init1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN jump_reg_init1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN jump_reg_init1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN jump_reg_init1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------	
--jr R2
					WHEN jump_case1_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN jump_case1_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN jump_case1_T1B => 
						register_in_PC_tb <= '0';

					WHEN jump_case1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN jump_case1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';
--------------------------------------------------------------------------						
--ldi R2, $121					
					WHEN jump_reg_init2_T0A => 
						Gra_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN jump_reg_init2_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN jump_reg_init2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN jump_reg_init2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN jump_reg_init2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN jump_reg_init2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN jump_reg_init2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
						
--------------------------------------------------------------------------	
--jal R2
					WHEN jump_case2_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';
						
					WHEN jump_case2_T1A =>	
						register_in_MAR_tb <= '0';	 
						register_in_PC_tb <= '1';	 
						IncPC_enable_tb <= '1';						 
						register_in_MDR_tb <= '1';
						 
					WHEN jump_case2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';
						R14MUX_enable_tb <= '1';

					WHEN jump_case2_T2A =>
						R14MUX_enable_tb <= '0';
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN jump_case2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_PC_tb <= '1';
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--MFHI MFLO INSTRUCTIONS
--ldi R1, $262143
					WHEN move_reg_init1_T0A => 
						Gra_tb <= '0';
						Rout_tb <= '0';
						register_in_PC_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN move_reg_init1_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN move_reg_init1_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN move_reg_init1_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN move_reg_init1_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN move_reg_init1_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';					
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN move_reg_init1_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--ldi R2, $262143					
					WHEN move_reg_init2_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN move_reg_init2_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN move_reg_init2_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN move_reg_init2_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN move_reg_init2_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						register_in_Y_tb <= '1';
						register_in_C_tb <= '1';
												
					WHEN move_reg_init2_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';
						register_in_C_tb <= '0';
					
						Cout_tb <= '1';
						ALU_cs_tb <= b"0000";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';						
					 
					WHEN move_reg_init2_T5A =>
						Cout_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';
						
						Zlowout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
-- mul R1, R2						
					WHEN mul_T0A => 
						Zlowout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN mul_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN mul_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN mul_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
						
					WHEN mul_T3A =>
						register_in_IR_tb <= '0';
						MDRout_tb <= '0';
						
						Grb_tb <= '1';
						BAout_tb <= '1';
						Rout_tb <='1';
						register_in_Y_tb <= '1';

					WHEN mul_T4A =>
						Grb_tb <= '0';
						BAout_tb <= '0';
						register_in_Y_tb <= '0';					
						
						Gra_tb <= '1';
							
						ALU_cs_tb <= b"0010";
						register_in_Z_tb <= '1';
						register_in_Zhigh_tb <= '1';
						register_in_Zlow_tb <= '1';

					WHEN mul_T5A =>
						Rout_tb <= '0';
						Gra_tb <= '0';
						register_in_Z_tb <= '0';
						register_in_Zhigh_tb <= '0';
						register_in_Zlow_tb <= '0';

						Zlowout_tb <= '1';
						register_in_LO_tb <= '1';
						
					WHEN mul_T6A =>
						Zlowout_tb <= '0';
						register_in_LO_tb <= '0';
						
						Zhighout_tb <= '1';
						register_in_HI_tb <= '1';
--------------------------------------------------------------------------
--mfhi R4
					WHEN mfhi_T0A => 
						Zhighout_tb <= '0';
						register_in_HI_tb <= '0';	
						
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN mfhi_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN mfhi_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN mfhi_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
					
					WHEN mfhi_T3A =>
						MDRout_tb <= '0'; 
						register_in_IR_tb <= '0';
						
						HIout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';				
--------------------------------------------------------------------------
--mflo R6
					WHEN mflo_T0A => 
						HIout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN mflo_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN mflo_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN mflo_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
					
					WHEN mflo_T3A =>
						MDRout_tb <= '0'; 
						register_in_IR_tb <= '0';
						
						LOout_tb <= '1';
						Gra_tb <= '1';
						Rin_tb <= '1';
--------------------------------------------------------------------------
--------------------------------------------------------------------------	
--------------------------------------------------------------------------	
--INPORT / OUTPORT						
--init In_port					
					WHEN In_port_init_T0A => 
						LOout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';
						
						register_in_In_port_tb <= '1';
						In_port_in_tb <= b"00000000000000000000000000011111";
--------------------------------------------------------------------------
--in R3
					WHEN in_T0A => 
						register_in_In_port_tb <= '0';
						HIout_tb <= '0';
						Gra_tb <= '0';
						Rin_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN in_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN in_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN in_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
					
					WHEN in_T3A =>
						MDRout_tb <= '0'; 
						register_in_IR_tb <= '0';
						
						Gra_tb <= '1';
						Rin_tb <= '1';
						In_portout_tb <= '1';	
--------------------------------------------------------------------------
--out R2
					WHEN out_T0A => 
						Gra_tb <= '0';
						Rin_tb <= '0';
						In_portout_tb <= '0';	
	
						read_tb <= '1';
						PCout_tb <= '1';
						register_in_MAR_tb <= '1';

					WHEN out_T1A =>							 
						register_in_MAR_tb <= '0';						 
						register_in_PC_tb <= '1';	
						IncPC_enable_tb <= '1';					 
						register_in_MDR_tb <= '1';
						 
					WHEN out_T1B => 
						IncPC_enable_tb <= '0';
						register_in_PC_tb <= '0';						 
	
					WHEN out_T2A =>
						PCout_tb <= '0';
						register_in_MDR_tb <= '0';
						read_tb <= '0';
						
						MDRout_tb <= '1'; 
						register_in_IR_tb <= '1';
					
					WHEN out_T3A =>
						MDRout_tb <= '0'; 
						register_in_IR_tb <= '0';
						
						Gra_tb <= '1';
						Rout_tb <= '1';
						register_in_Out_port_tb <= '1';	
							
					WHEN OTHERS =>
			END CASE;
		END PROCESS;
END ARCHITECTURE phase2_tb_arch;