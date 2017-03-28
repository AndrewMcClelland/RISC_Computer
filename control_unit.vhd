library.ieee;
use ieee.std_logic_1164.all;

entity control_unit is 
	port(clk, reset, stop, CON_FF : in std_logic;
		IR : in std_logic_vector(31 downto 0);
		
		Gra, Grb, Grc, Rin, Rout : out std_logic;
		PCout, MDRout, Zhighout, Zlowout, HIout, LOout, In_portout, Cout : out std_logic;
		
		HIin, LOin, Con_in, PCin, IRin, Yin, Zin, MARin, MDRin, Out_portin, BAout : out std_logic;
		
		R14MUX_enable, IncPc_enable : out std_logic;
		
		run, clear, read_signal, write_signal : out std_logic;
		
		ALU_cs : out std_logic_vector( 3 downto 0)	
	);
end control_unit;

architecture behavioral of control_unit is 
	type State is (reset_statea, reset_stateb,
						fetch0a, fetch0b, fetch1a, fetch1b, fetch2a, fetch2b, 
						ld3a, ld3b, ld4a, ld4b, ld5a, ld5b, ld6a, ld6b, ld7a, ld7b, 
						ldi3a, ldi3b, ldi4a, ldi4b, ldi5a, ldi5b,
						ldr3a, ldr3b, ldr4a, ldr4b, ldr5a, ldr5b, ldr6a, ldr6b,
						st3a, st3b, st4a, st4b, st5a, st5b, st6a, st6b, st7a, st7b,
						str3a, str3b, str4a, str4b, str5a, str5b, str6a, str6b, str7a, str7b,
						addi3a, addi3b, addi4a, addi4b, addi5a, addi5b,
						add3a, add3b, add4a, add4b, add5a, add5b,
						sub3a, sub3b, sub4a, sub4b, sub5a, sub5b, 
						mul3a, mul3b, mul4a, mul4b, mul5a, mul5b, mul6a, mul6b,
						div3a, div3b, div4a, div4b, div5a, div5b, div6a, div6b,
						neg3a, neg3b, neg4a, neg4b,
						not3a, not3b, not4a, not4b,
						and3a, and3b, and4a, and4b, and5a, and5b,
						andi3a, andi3b, andi4a, andi4b, andi5a, andi5b,
						or3a, or3b, or4a, or4b, or5a, or5b,
						ori3a, ori3b, ori4a, ori4b, ori5a, ori5b,
						shr3a, shr3b, shr4a, shr4b, shr5a, shr5b,
						shl3a, shl3b, shl4a, shl4b, shl5a, shl5b,
						ror3a, ror3b, ror4a, ror4b, ror5a, ror5b,
						rol3a, rol3b, rol4a, rol4b, rol5a, rol5b,
						brzr3a, brzr3b, brzr4a, brzr4b,
						brnz3a, brnz3b, brnz4a, brnz4b,
						brmi3a, brmi3b, brmi4a, brmi4b,
						brpl3a, brpl3b, brpl4a, brpl4b,
						jr3a, jr3b,
						jal3a, jal3b,
						mfhi3a, mfhi3b,
						mflo3a, mflo3b,
						in3a, in3b,
						out3a, out3b,
						nop,
						halt
						);
	signal present_state: state;
begin
	process(clk, reset)
	begin
		if (reset = '1') then 
			present_state <= reset_statea;
		elsif (clk'event and clk = '1') then
			case present_state is
---------------------------------------------------------------
-- Instruction fetch states
				
				when reset_statea =>
					Present_state <= reset_stateb;
				when reset_stateb =>
					Present_state <= fetch0a;
					
				when fetch0a =>
					Present_state <= fetch0b;
				when fetch0b =>
					Present_state <= fetch1a;
				when fetch1a =>
					Present_state <= fetch1b;
				when fetch1b =>
					Present_state <= fetch2a;
				when fetch2a =>
					Present_state <= fetch2b;
				
				-- WHERE DO WE DO SWITCH CASE FOR IR? FETCH2A OR FETCH2B
				
				when fetch2b =>
					case IR(31 downto 27) is
						
						when "00000" =>
							Present_state <= ld3a;
						when "00001" =>
							Present_state <= ldi3a;
						when "00010" =>
							Present_state <= st3a;
						when "00011" =>
							Present_state <= ldr3a;
						when "00100" =>
							Present_state <= str3a;
						when "00101" =>
							Present_state <= add3a;
						when "00110" =>
							Present_state <= sub3a;
						when "00111" =>
							Present_state <= and3a;
						when "01000" =>
							Present_state <= or3a;
						when "01001" =>
							Present_state <= shr3a;
						when "01010" =>
							Present_state <= shl3a;
						when "01011" =>
							Present_state <= ror3a;
						when "01100" =>
							Present_state <= rol3a;
						when "01101" =>
							Present_state <= addi3a;
						when "01110" =>
							Present_state <= andi3a;
						when "01111" =>
							Present_state <= ori3a;
						when "10000" =>
							Present_state <= mul3a;
						when "10001" =>
							Present_state <= div3a;
						when "10010" =>
							Present_state <= neg3a;
						when "10011" =>
							Present_state <= not3a;
						when "10100" =>
							
							case IR(1 downto 0) is
								when "00" =>
									Present_state <= brzr3a;
								when "01" =>
									Present_state <= brnz3a;
								when "10" =>
									Present_state <= brpl3a;
								when "11" =>
									Present_state <= brmi3a;
								when others =>
							end case;
						
						when "10101" =>
							Present_state <= jr3a;
						when "10110" =>
							Present_state <= jal3a;
						when "10111" =>
							Present_state <= in3a;
						when "11000" =>
							Present_state <= out3a;
						when "11001" =>
							Present_state <= mfhi3a;
						when "11010" =>
							Present_state <= mflo3a;
						when "11011" =>
							Present_state <= nop;
						when "11100" =>
							Present_state <= halt;
						
						when others =>
					end case;
				
					
---------------------------------------------------------------
-- ld, ldi, ldr states
					
				when ld3a =>
					Present_state <= ld3b;
				when ld3b =>
					Present_state <= ld4a;
				when ld4a =>
					Present_state <= ld4b;
				when ld4b =>
					Present_state <= ld5a;
				when ld5a =>
					Present_state <= ld5b;
				when ld5b =>
					Present_state <= ld6a;
				when ld6a =>
					Present_state <= ld6b;
				when ld6b =>
					Present_state <= ld7a;
				when ld7a =>
					Present_state <= ld7b;
				when ld7b =>
					Present_state <= fetch0a;
				
				when ldi3a =>
					Present_state <= ldi3b;
				when ldi3b =>
					Present_state <= ldi4a;
				when ldi4a =>
					Present_state <= ldi4b;
				when ldi4b =>
					Present_state <= ldi5a;
				when ldi5a =>
					Present_state <= ldi5b;
				when ldi5b =>
					Present_state <= fetch0a;
				
				when ldr3a =>
					Present_state <= ldr3b;
				when ldr3b =>
					Present_state <= ldr4a;
				when ldr4a =>
					Present_state <= ldr4b;
				when ldr4b =>
					Present_state <= ldr5a;
				when ldr5a =>
					Present_state <= ldr5b;
				when ldr5b =>
					Present_state <= ldr6a;
				when ldr6a =>
					Present_state <= ldr6b;
				when ldr6b =>
					Present_state <= fetch0a;

---------------------------------------------------------------
-- st, str, states

				when st3a =>
					Present_state <= st3b;
				when st3b =>
					Present_state <= st4a;
				when st4a =>
					Present_state <= st4b;
				when st4b =>
					Present_state <= st5a;
				when st5a =>
					Present_state <= st5b;
				when st5b =>
					Present_state <= st6a;
				when st6a =>
					Present_state <= st6b;
				when st6b =>
					Present_state <= st7a;
				when st7a =>
					Present_state <= st7b;
				when st7b =>
					Present_state <= fetch0a;
				
				when str3a =>
					Present_state <= str3b;
				when str3b =>
					Present_state <= str4a;
				when str4a =>
					Present_state <= str4b;
				when str4b =>
					Present_state <= str5a;
				when str5a =>
					Present_state <= str5b;
				when str5b =>
					Present_state <= str6a;
				when str6a =>
					Present_state <= str6b;
				when str6b =>
					Present_state <= str7a;
				when str7a =>
					Present_state <= str7b;
				when str7b =>
					Present_state <= fetch0a;
---------------------------------------------------------------
-- addi, add, sub, mul, div, neg, not, and, andi, or, ori, shr, shl, ror, rol states

				when addi3a =>
					Present_state <= addi3b;
				when addi3b =>
					Present_state <= addi4a;
				when addi4a =>
					Present_state <= addi4b;
				when addi4b =>
					Present_state <= addi5a;
				when addi5a =>
					Present_state <= addi5b;
				when addi5b =>
					Present_state <= fetch0a;
					
				when add3a =>
					Present_state <= add3b;
				when add3b =>
					Present_state <= add4a;
				when add4a =>
					Present_state <= add4b;
				when add4b =>
					Present_state <= add5a;
				when add5a =>
					Present_state <= add5b;
				when add5b =>
					Present_state <= fetch0a;
					
				when sub3a =>
					Present_state <= sub3b;
				when sub3b =>
					Present_state <= sub4a;
				when sub4a =>
					Present_state <= sub4b;
				when sub4b =>
					Present_state <= sub5a;
				when sub5a =>
					Present_state <= sub5b;
				when sub5b =>
					Present_state <= fetch0a;
				
				when mul3a =>
					Present_state <= mul3b;
				when mul3b =>
					Present_state <= mul4a;
				when mul4a =>
					Present_state <= mul4b;
				when mul4b =>
					Present_state <= mul5a;
				when mul5a =>
					Present_state <= mul5b;
				when mul5b =>
					Present_state <= mul6a;
				when mul6a =>
					Present_state <= mul6b;
				when mul6b =>
					Present_state <= fetch0a;
				
				when div3a =>
					Present_state <= div3b;
				when div3b =>
					Present_state <= div4a;
				when div4a =>
					Present_state <= div4b;
				when div4b =>
					Present_state <= div5a;
				when div5a =>
					Present_state <= div5b;
				when div5b =>
					Present_state <= div6a;
				when div6a =>
					Present_state <= div6b;
				when div6b =>
					Present_state <= fetch0a;
				
				when neg3a =>
					Present_state <= neg3b;
				when neg3b =>
					Present_state <= neg4a;
				when neg4a =>
					Present_state <= neg4b;
				when neg4b =>
					Present_state <= fetch0a;
				
				when not3a =>
					Present_state <= not3b;
				when not3b =>
					Present_state <= not4a;
				when not4a =>
					Present_state <= not4b;
				when not4b =>
					Present_state <= fetch0a;
				
				when and3a =>
					Present_state <= and3b;
				when and3b =>
					Present_state <= and4a;
				when and4a =>
					Present_state <= and4b;
				when and4b =>
					Present_state <= and5a;
				when and5a =>
					Present_state <= and5b;
				when and5b =>
					Present_state <= fetch0a;
				
				when andi3a =>
					Present_state <= andi3b;
				when andi3b =>
					Present_state <= andi4a;
				when andi4a =>
					Present_state <= andi4b;
				when andi4b =>
					Present_state <= andi5a;
				when andi5a =>
					Present_state <= andi5b;
				when andi5b =>
					Present_state <= fetch0a;
					
				when or3a =>
					Present_state <= or3b;
				when or3b =>
					Present_state <= or4a;
				when or4a =>
					Present_state <= or4b;
				when or4b =>
					Present_state <= or5a;
				when or5a =>
					Present_state <= or5b;
				when or5b =>
					Present_state <= fetch0a;
				
				when ori3a =>
					Present_state <= ori3b;
				when ori3b =>
					Present_state <= ori4a;
				when ori4a =>
					Present_state <= ori4b;
				when ori4b =>
					Present_state <= ori5a;
				when ori5a =>
					Present_state <= ori5b;
				when ori5b =>
					Present_state <= fetch0a;
				
				when shr3a =>
					Present_state <= shr3b;
				when shr3b =>
					Present_state <= shr4a;
				when shr4a =>
					Present_state <= shr4b;
				when shr4b =>
					Present_state <= shr5a;
				when shr5a =>
					Present_state <= shr5b;
				when shr5b =>
					Present_state <= fetch0a;
				
				when shl3a =>
					Present_state <= shl3b;
				when shl3b =>
					Present_state <= shl4a;
				when shl4a =>
					Present_state <= shl4b;
				when shl4b =>
					Present_state <= shl5a;
				when shl5a =>
					Present_state <= shl5b;
				when shl5b =>
					Present_state <= fetch0a;
				
				when ror3a =>
					Present_state <= ror3b;
				when ror3b =>
					Present_state <= ror4a;
				when ror4a =>
					Present_state <= ror4b;
				when ror4b =>
					Present_state <= ror5a;
				when ror5a =>
					Present_state <= ror5b;
				when ror5b =>
					Present_state <= fetch0a;
				
				when rol3a =>
					Present_state <= rol3b;
				when rol3b =>
					Present_state <= rol4a;
				when rol4a =>
					Present_state <= rol4b;
				when rol4b =>
					Present_state <= rol5a;
				when rol5a =>
					Present_state <= rol5b;
				when rol5b =>
					Present_state <= fetch0a;	
---------------------------------------------------------------
-- brzr, brnz, brmi, brpl states

				when brzr3a =>
					Present_state <= brzr3b;
				when brzr3b =>
					Present_state <= brzr4a;
				when brzr4a =>
					Present_state <= brzr4b;
				when brzr4b =>
					Present_state <= fetch0a;
				
				when brnz3a =>
					Present_state <= brnz3b;
				when brnz3b =>
					Present_state <= brnz4a;
				when brnz4a =>
					Present_state <= brnz4b;
				when brnz4b =>
					Present_state <= fetch0a;
				
				when brmi3a =>
					Present_state <= brmi3b;
				when brmi3b =>
					Present_state <= brmi4a;
				when brmi4a =>
					Present_state <= brmi4b;
				when brmi4b =>
					Present_state <= fetch0a;
				
				when brpl3a =>
					Present_state <= brpl3b;
				when brpl3b =>
					Present_state <= brpl4a;
				when brpl4a =>
					Present_state <= brpl4b;
				when brpl4b =>
					Present_state <= fetch0a;
---------------------------------------------------------------
-- jr, jal states

				when jr3a =>
					Present_state <= jr3b;
				when jr3b =>
					Present_state <= fetch0a;
					
				when jal3a =>
					Present_state <= jal3b;
				when jal3b =>
					Present_state <= fetch0a;

---------------------------------------------------------------
-- mfhi, mflo states

				when mfhi3a =>
					Present_state <= mfhi3b;
				when mfhi3b =>
					Present_state <= fetch0a;
					
				when mflo3a =>
					Present_state <= mflo3b;
				when mflo3b =>
					Present_state <= fetch0a;

---------------------------------------------------------------
-- in, out states

				when in3a =>
					Present_state <= in3b;
				when in3b =>
					Present_state <= fetch0a;
					
				when out3a =>
					Present_state <= out3b;
				when out3b =>
					Present_state <= fetch0a;
---------------------------------------------------------------
-- nop and halt states
				
				when nop =>
					Present_state <= fetch0a;
					
				when halt =>
					Present_state <= halt;

				when others =>
			end case;
		end if;
	end process;
	
	process( present_state ) 
	begin
		
		clear <= '0';
		
--		Gra <= '0';
--		Grb <= '0';
--		Grc <= '0';
--		Rin <= '0';
--		Rout <= '0';
--		PCout <= '0';
--		MDRout <= '0';
--		Zhighout <= '0';
--		Zlowout <= '0';
--		HIout <= '0';
--		LOout <= '0';
--		In_portout <= '0';
--		Cout <= '0';
--		HIin <= '0';
--		LOin <= '0';
--		Con_in <= '0';
--		PCin <= '0';
--		IRin <= '0';
--		Yin <= '0';
--		Zin <= '0';
--		MARin <= '0';
--		MDRin <= '0';
--		Out_portin <= '0';
--		BAout <= '0';
--		R14MUX_enable <= '0';
--		IncPc_enable <= '0';
--		read_signal <= '0';
--		write_signal <= '0';
		
		case present_state is 
---------------------------------------------------------------
-- reset
			
			when reset_statea =>
				clear <= '1';
			when reset_stateb =>
---------------------------------------------------------------
-- fetch
			
			when fetch0a =>
				MDRout_tb <= '0';
				Gra_tb <= '0';
				Rin_tb <= '0';

				read_tb <= '1';
				PCout_tb <= '1';
				register_in_MAR_tb <= '1';
			
			when fetch0b =>
			
			when fetch1a =>
				register_in_MAR_tb <= '0';
				register_in_PC_tb <= '1';
				IncPC_enable_tb <= '1';	 
				register_in_MDR_tb <= '1';
				 
			when fetch1b =>
				IncPC_enable_tb <= '0';
				register_in_PC_tb <= '0';
				
			when fetch2a =>
				PCout_tb <= '0';
				register_in_MDR_tb <= '0';
				read_tb <= '0';
				
				MDRout_tb <= '1'; 
				register_in_IR_tb <= '1';
			
			when fetch2b => 
---------------------------------------------------------------
-- ld
			
			when ld3a =>
				register_in_IR_tb <= '0';
				MDRout_tb <= '0';
				
				Grb_tb <= '1';
				BAout_tb <= '1';
				register_in_Y_tb <= '1';
				register_in_C_tb <= '1';
						
			when ld3b => 
			
			when ld4a =>
				Grb_tb <= '0';
				BAout_tb <= '0';
				register_in_Y_tb <= '0';					
			
				Cout_tb <= '1';
				ALU_cs_tb <= b"0000";
				register_in_Z_tb <= '1';
				register_in_Zhigh_tb <= '1';
				register_in_Zlow_tb <= '1';
				
			when ld4b =>
			
			when ld5a =>
				Cout_tb <= '0';
				register_in_Z_tb <= '0';
				register_in_Zhigh_tb <= '0';
				register_in_Zlow_tb <= '0';

				Zlowout_tb <= '1';
				register_in_MAR_tb <= '1';
				read_tb <= '1';
				
			when ld5b =>
			
			when ld6a => 
				Zlowout_tb <= '0';
				register_in_MAR_tb <= '0';

				register_in_MDR_tb <= '1';
				
			when ld6b => 
			
			when ld7a => 
				register_in_MDR_tb <= '0';
				read_tb <= '0';
				
				MDRout_tb <= '1';
				Gra_tb <= '1';
				Rin_tb <= '1';
				
			when ld7b => 
---------------------------------------------------------------
-- ldi
			
			when ldi3a => 
			when ldi3b => 
			when ldi4a => 
			when ldi4b => 
			when ldi5a => 
			when ldi5b =>
---------------------------------------------------------------
-- ldr
			
			when ldr3a => 
			when ldr3b => 
			when ldr4a => 
			when ldr4b => 
			when ldr5a => 
			when ldr5b => 
			when ldr6a => 
			when ldr6b =>
---------------------------------------------------------------
-- st
			
			when st3a => 
			when st3b => 
			when st4a => 
			when st4b => 
			when st5a => 
			when st5b => 
			when st6a => 
			when st6b => 
			when st7a => 
			when st7b =>
---------------------------------------------------------------
-- str
			
			when str3a => 
			when str3b => 
			when str4a => 
			when str4b => 
			when str5a => 
			when str5b => 
			when str6a => 
			when str6b => 
			when str7a => 
			when str7b =>
---------------------------------------------------------------
-- addi
			
			when addi3a => 
			when addi3b => 
			when addi4a => 
			when addi4b => 
			when addi5a => 
			when addi5b =>
---------------------------------------------------------------
-- add
			
			when add3a => 
			when add3b => 
			when add4a => 
			when add4b => 
			when add5a => 
			when add5b =>
---------------------------------------------------------------
-- sub
			
			when sub3a => 
			when sub3b => 
			when sub4a => 
			when sub4b => 
			when sub5a => 
			when sub5b => 
---------------------------------------------------------------
-- mul
			
			when mul3a => 
			when mul3b => 
			when mul4a => 
			when mul4b => 
			when mul5a => 
			when mul5b => 
			when mul6a => 
			when mul6b =>
---------------------------------------------------------------
-- div
			
			when div3a => 
			when div3b => 
			when div4a => 
			when div4b => 
			when div5a => 
			when div5b => 
			when div6a => 
			when div6b =>
---------------------------------------------------------------
-- neg
			
			when neg3a => 
			when neg3b => 
			when neg4a => 
			when neg4b =>
---------------------------------------------------------------
-- not
			
			when not3a => 
			when not3b => 
			when not4a => 
			when not4b =>
---------------------------------------------------------------
-- and
			
			when and3a => 
			when and3b => 
			when and4a => 
			when and4b => 
			when and5a => 
			when and5b =>
---------------------------------------------------------------
-- andi
			
			when andi3a => 
			when andi3b => 
			when andi4a => 
			when andi4b => 
			when andi5a => 
			when andi5b =>
---------------------------------------------------------------
-- or
			
			when or3a => 
			when or3b => 
			when or4a => 
			when or4b => 
			when or5a => 
			when or5b =>
---------------------------------------------------------------
-- ori
			
			when ori3a => 
			when ori3b => 
			when ori4a => 
			when ori4b => 
			when ori5a => 
			when ori5b =>
---------------------------------------------------------------
-- shr
			
			when shr3a => 
			when shr3b => 
			when shr4a => 
			when shr4b => 
			when shr5a => 
			when shr5b =>
---------------------------------------------------------------
-- shl
			
			when shl3a => 
			when shl3b => 
			when shl4a => 
			when shl4b => 
			when shl5a => 
			when shl5b =>
---------------------------------------------------------------
-- ror
			
			when ror3a => 
			when ror3b => 
			when ror4a => 
			when ror4b => 
			when ror5a => 
			when ror5b =>
---------------------------------------------------------------
-- rol
			
			when rol3a => 
			when rol3b => 
			when rol4a => 
			when rol4b => 
			when rol5a => 
			when rol5b =>
---------------------------------------------------------------
-- bzzr
			
			when brzr3a => 
			when brzr3b => 
			when brzr4a => 
			when brzr4b =>
---------------------------------------------------------------
-- brnz
			
			when brnz3a => 
			when brnz3b => 
			when brnz4a => 
			when brnz4b =>
---------------------------------------------------------------
-- brmi
			
			when brmi3a => 
			when brmi3b => 
			when brmi4a => 
			when brmi4b =>
---------------------------------------------------------------
-- brpl			
			
			when brpl3a => 
			when brpl3b => 
			when brpl4a => 
			when brpl4b =>
---------------------------------------------------------------
-- jr
			
			when jr3a => 
			when jr3b =>
---------------------------------------------------------------
-- jal
			
			when jal3a => 
			when jal3b =>
---------------------------------------------------------------
-- mfhi
			
			when mfhi3a => 
			when mfhi3b =>
---------------------------------------------------------------
-- mflo
			
			when mflo3a => 
			when mflo3b =>
---------------------------------------------------------------
-- in
			
			when in3a => 
			when in3b =>
---------------------------------------------------------------
-- out
			
			when out3a => 
			when out3b =>
---------------------------------------------------------------
-- nop
			
			when nop =>
---------------------------------------------------------------
-- halt
			
			when halt =>
			
		
		end case;
	end process;	
end architecture
		