library ieee;
use ieee.std_logic_1164.all;

entity control_unit is 
	port(clk, reset, stop, CON_FF : in std_logic;
		IR : in std_logic_vector(31 downto 0);
		
		Gra, Grb, Grc, Rin, Rout : out std_logic;
		PCout, MDRout, Zhighout, Zlowout, HIout, LOout, In_portout, Cout : out std_logic;
		
		HIin, LOin, Con_in, PCin, IRin, Cin, Yin, Zin, Zhighin, ZLowin, MARin, MDRin, Out_portin, BAout : out std_logic;
		
		R14MUX_enable, IncPC_enable : out std_logic;
		
		run, clear, read_signal, write_signal : out std_logic;
		
		ALU_cs : out std_logic_vector( 3 downto 0)	
	);
end control_unit;

architecture behavioral of control_unit is 
	type State is (reset_statea, reset_stateb,
						fetch0a, fetch0b, fetch1a, fetch1b, fetch2a, fetch2b, 
						ld3a, ld3b, ld4a, ld4b, ld5a, ld5b, ld6a, ld6b, ld7a, ld7b, 
						ldi3a, ldi3b, ldi4a, ldi4b, ldi5a, ldi5b,
						ldr_init, ldr3a, ldr3b, ldr4a, ldr4b, ldr5a, ldr5b, ldr6a, ldr6b,
						st3a, st3b, st4a, st4b, st5a, st5b, st6a, st6b, st7a, st7b,
						str_init, str3a, str3b, str4a, str4b, str5a, str5b, str6a, str6b,
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
						jal_init, jal3a, jal3b,
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
		elsif (stop = '1') then
			present_state <= halt;
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
					
				when fetch2b =>
					case IR(31 downto 27) is	
						when "00000" =>
							Present_state <= ld3a;
						when "00001" =>
							Present_state <= ldi3a;
						when "00010" =>
							Present_state <= st3a;
						when "00011" =>
							Present_state <= ldr_init;
						when "00100" =>
							Present_state <= str_init;
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
							Present_state <= jal_init;
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
				
				when ldr_init =>
					Present_state <= ldr3a;
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
				
				when str_init =>
					Present_state <= str3a;
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
					
				when jal_init =>
					Present_state <= jal3a;
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
		case present_state is 
---------------------------------------------------------------
-- reset
			when reset_statea =>
				clear <= '1';
				run <= '1';
			when reset_stateb =>
---------------------------------------------------------------
-- fetch
			when fetch0a =>
				clear <= '0';
			
				Gra <= '0';
				Grb <= '0';
				Grc <= '0';
				Rin <= '0';
				Rout <= '0';
				MDRout <= '0';
				Zhighout <= '0';
				Zlowout <= '0';
				HIout <= '0';
				LOout <= '0';
				In_portout <= '0';
				Cout <= '0';
				HIin <= '0';
				LOin <= '0';
				Con_in <= '0';
				PCin <= '0';
				IRin <= '0';
				Yin <= '0';
				Zin <= '0';
				MDRin <= '0';
				Out_portin <= '0';
				BAout <= '0';
				R14MUX_enable <= '0';
				IncPC_enable <= '0';
				write_signal <= '0';

				read_signal <= '1';
				PCout <= '1';
				MARin <= '1';
			when fetch0b =>
			when fetch1a =>
				MARin <= '0';
				PCin <= '1';
				IncPC_enable <= '1';	 
				MDRin <= '1';
			when fetch1b =>
				IncPC_enable <= '0';
				PCin <= '0';
			when fetch2a =>
				PCout <= '0';
				MDRin <= '0';
				read_signal <= '0';
				MDRout <= '1'; 
				IRin <= '1';
			when fetch2b => 
---------------------------------------------------------------
-- ld	
			when ld3a =>
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				BAout <= '1';
				Yin <= '1';
				Cin <= '1';		
			when ld3b => 
			when ld4a =>
				Grb <= '0';
				BAout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when ld4b =>	
			when ld5a =>
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				MARin <= '1';
				read_signal <= '1';	
			when ld5b =>
			when ld6a => 
				Zlowout <= '0';
				MARin <= '0';

				MDRin <= '1';		
			when ld6b => 
			when ld7a => 
				MDRin <= '0';
				read_signal <= '0';
				
				MDRout <= '1';
				Gra <= '1';
				Rin <= '1';	
			when ld7b => 
---------------------------------------------------------------
-- ldi		
			when ldi3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				BAout <= '1';
				Yin <= '1';
				Cin <= '1';
			when ldi3b => 
			when ldi4a => 
				Grb <= '0';
				BAout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when ldi4b => 
			when ldi5a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Zlowout <= '1';
				Gra <= '1';
				Rin <= '1';
			when ldi5b =>
---------------------------------------------------------------
-- ldr	
			when ldr_init =>
				IRin <= '0';
				MDRout <= '0';
				
				PCout <= '1';
				Yin <= '1';
				
			when ldr3a =>
				PCout <= '0';
				Yin <= '0';
				
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when ldr3b => 
			when ldr4a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';		
				
				Zlowout <= '1';
				MARin <= '1';
				read_signal <= '1';
			when ldr4b => 
			when ldr5a => 
				Zlowout <= '0';
				MARin <= '0';
				
				MDRin <= '1';
			when ldr5b => 
			when ldr6a => 
				MDRin <= '0';
				read_signal <= '0';
				
				MDRout <= '1';
				Gra <= '1';
				Rin <= '1';
			when ldr6b =>
---------------------------------------------------------------
-- st		
			when st3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				BAout <= '1';
				Yin <= '1';
				Cin <= '1';
			when st3b => 
			when st4a => 
				Grb <= '0';
				BAout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when st4b => 
			when st5a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				MARin <= '1';
			when st5b => 
			when st6a => 
				Zlowout <= '0';
				MARin <= '0';
				
				Gra <= '1';
				Rout <= '1';
				MDRin <= '1';
				write_signal <= '1';
			when st6b => 
			when st7a =>
				MDRin <= '0';
				Gra <= '0';
				Rout <= '0';
				
				MDRout <= '1';	
			when st7b =>
---------------------------------------------------------------
-- str	
			when str_init =>
				IRin <= '0';
				MDRout <= '0';
				
				PCout <= '1';
				Yin <= '1';
			
			when str3a => 
				PCout <= '0';
				Yin <= '0';
				
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when str3b => 
			when str4a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';		
				
				Zlowout <= '1';
				MARin <= '1';
			when str4b => 
			when str5a => 
				Zlowout <= '0';
				MARin <= '0';
				
				Gra <= '1';
				Rout <= '1';
				MDRin <= '1';
				write_signal <= '1';
			when str5b => 
			when str6a => 
				MDRin <= '0';
				Gra <= '0';
				Rout <= '0';
				
				MDRout <= '1';
			when str6b => 

---------------------------------------------------------------
-- addi
			when addi3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
				Cin <= '1';
			when addi3b => 
			when addi4a => 
				Grb <= '0';
				Rout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when addi4b => 
			when addi5a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				Gra <= '1';
				Rin <= '1';
			when addi5b =>
---------------------------------------------------------------
-- add
			when add3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when add3b => 
			when add4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when add4b => 
			when add5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when add5b =>
---------------------------------------------------------------
-- sub	
			when sub3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when sub3b => 
			when sub4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0001";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when sub4b => 
			when sub5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when sub5b => 
---------------------------------------------------------------
-- mul			
			when mul3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				BAout <= '1';
				Rout <='1';
				Yin <= '1';
			when mul3b => 
			when mul4a => 
				Grb <= '0';
				BAout <= '0';
				Yin <= '0';					
				
				Gra <= '1';
					
				ALU_cs <= b"0010";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when mul4b => 
			when mul5a => 
				Rout <= '0';
				Gra <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				LOin <= '1';
			when mul5b => 
			when mul6a => 
				Zlowout <= '0';
				LOin <= '0';
				
				Zhighout <= '1';
				HIin <= '1';
			when mul6b =>
---------------------------------------------------------------
-- div		
			when div3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				BAout <= '1';
				Rout <='1';
				Yin <= '1';
			when div3b => 
			when div4a => 
				Gra <= '0';
				BAout <= '0';
				Yin <= '0';					
				
				Grb <= '1';
					
				ALU_cs <= b"0011";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when div4b => 
			when div5a =>
				Rout <= '0';
				Grb <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				LOin <= '1';
			when div5b => 
			when div6a => 
				Zlowout <= '0';
				LOin <= '0';
				
				Zhighout <= '1';
				HIin <= '1';
			when div6b =>
---------------------------------------------------------------
-- neg
			when neg3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				
				ALU_cs <= b"1010";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when neg3b => 
			when neg4a => 
				Grb <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
				
			when neg4b =>
---------------------------------------------------------------
-- not		
			when not3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				
				ALU_cs <= b"1011";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when not3b => 
			when not4a => 
				Grb <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when not4b =>
---------------------------------------------------------------
-- and	
			when and3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when and3b => 
			when and4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0100";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when and4b => 
			when and5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when and5b =>
---------------------------------------------------------------
-- andi
			when andi3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
				Cin <= '1';
			when andi3b => 
			when andi4a =>
				Grb <= '0';
				Rout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0100";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when andi4b => 
			when andi5a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				Gra <= '1';
				Rin <= '1';
			when andi5b =>
---------------------------------------------------------------
-- or		
			when or3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when or3b => 
			when or4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0101";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when or4b => 
			when or5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when or5b =>
---------------------------------------------------------------
-- ori	
			when ori3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
				Cin <= '1';
			when ori3b => 
			when ori4a => 
				Grb <= '0';
				Rout <= '0';
				Yin <= '0';					
			
				Cout <= '1';
				ALU_cs <= b"0101";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';
			when ori4b => 
			when ori5a => 
				Cout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';

				Zlowout <= '1';
				Gra <= '1';
				Rin <= '1';
			when ori5b =>
---------------------------------------------------------------
-- shr
			when shr3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when shr3b => 
			when shr4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0110";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';			
			when shr4b => 
			when shr5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when shr5b =>
---------------------------------------------------------------
-- shl	
			when shl3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when shl3b => 
			when shl4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"0111";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';		
			when shl4b => 
			when shl5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when shl5b =>
---------------------------------------------------------------
-- ror	
			when ror3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when ror3b => 
			when ror4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"1000";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';		
			when ror4b => 
			when ror5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when ror5b =>
---------------------------------------------------------------
-- rol
			when rol3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Grb <= '1';
				Rout <= '1';
				Yin <= '1';
			when rol3b => 
			when rol4a => 
				Grb <= '0';
				Yin <= '0';
				
				Grc <= '1';
				ALU_cs <= b"1001";
				Zin <= '1';
				Zhighin <= '1';
				Zlowin <= '1';	
			when rol4b => 
			when rol5a => 
				Grc <= '0';
				Rout <= '0';
				Zin <= '0';
				Zhighin <= '0';
				Zlowin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				Zlowout <= '1';
			when rol5b =>
---------------------------------------------------------------
-- bzzr
			when brzr3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				Rout <= '1';
				CON_in <= '1';
			when brzr3b => 
			when brzr4a => 
				Gra <= '0';
				Rout <= '0';
				COn_in <= '0';				
			
				Grb <= '1';
				Rout <= '1';
				PCin <= '1';
			when brzr4b =>
---------------------------------------------------------------
-- brnz
			when brnz3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				Rout <= '1';
				CON_in <= '1';
			when brnz3b => 
			when brnz4a => 
				Gra <= '0';
				Rout <= '0';
				COn_in <= '0';				
			
				Grb <= '1';
				Rout <= '1';
				PCin <= '1';
			when brnz4b =>
---------------------------------------------------------------
-- brmi
			when brmi3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				Rout <= '1';
				CON_in <= '1';
			when brmi3b => 
			when brmi4a => 
				Gra <= '0';
				Rout <= '0';
				COn_in <= '0';				
			
				Grb <= '1';
				Rout <= '1';
				PCin <= '1';
			when brmi4b =>
---------------------------------------------------------------
-- brpl			
			when brpl3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				Rout <= '1';
				CON_in <= '1';
			when brpl3b => 
			when brpl4a => 
				Gra <= '0';
				Rout <= '0';
				COn_in <= '0';				
			
				Grb <= '1';
				Rout <= '1';
				PCin <= '1';				
					
			when brpl4b =>
---------------------------------------------------------------
-- jr
			when jr3a => 
				IRin <= '0';
				MDRout <= '0';
				
				Gra <= '1';
				Rout <= '1';
				PCin <= '1';
			when jr3b =>
---------------------------------------------------------------
-- jal
			when jal_init =>
				IRin <= '0';
				MDRout <= '0';
				
				PCout <= '1';
				R14MUX_enable <= '1';
			when jal3a => 
				PCout <= '0';
				R14MUX_enable <= '0';
				
				Gra <= '1';
				Rout <= '1';
				PCin <= '1';
			when jal3b =>
---------------------------------------------------------------
-- mfhi		
			when mfhi3a => 
				MDRout <= '0'; 
				IRin <= '0';
				
				HIout <= '1';
				Gra <= '1';
				Rin <= '1';
			when mfhi3b =>
---------------------------------------------------------------
-- mflo		
			when mflo3a => 
				MDRout <= '0'; 
				IRin <= '0';
				
				LOout <= '1';
				Gra <= '1';
				Rin <= '1';
			when mflo3b =>
---------------------------------------------------------------
-- in
			when in3a => 
				MDRout <= '0'; 
				IRin <= '0';
				
				Gra <= '1';
				Rin <= '1';
				In_portout <= '1';	
			when in3b =>
---------------------------------------------------------------
-- out
			when out3a => 
				MDRout <= '0'; 
				IRin <= '0';
				
				Gra <= '1';
				Rout <= '1';
				Out_portin <= '1';	
			when out3b =>
---------------------------------------------------------------
-- nop	
			when nop =>
---------------------------------------------------------------
-- halt
			when halt =>
				run <= '0';
			
		end case;
	end process;	
end behavioral;
		