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
	type State is (reset_state, fetch0, fetch1, fetch2, 
						ld3, ld4, ld5, ld6, ld7, 
						ldi3, ldi4, ldi5,
						ldr3, ldr4, ldr5, ldr6,
						st3, st4, st5, st6, st7,
						str3, str4, str5, str6, str7,
						addi3, addi4, addi5,
						add3, add4, add5,
						sub3, sub4, sub5, 
						mul3, mul4, mul5, mul6,
						div3, div4, div5, div6,
						neg3, neg4,
						not3, not4,
						and3, and4, and5,
						andi3, andi4, andi5,
						or3, or4, or5,
						ori3, ori4, ori5,
						shr3, shr4, shr5,
						shl3, shl4, shl5,
						ror3, ror4, ror5,
						rol3, rol4, rol5,
						brzr3, brzr4,
						brnz3, brnz4,
						brmi3, brmi4,
						brpl3, brpl4,
						jr3,
						jal3,
						mfhi3,
						mflo3,
						in3,
						out3,
						nop,
						halt
						);
	signal present_state state;
begin
	process(clk, reset)
	begin
		if (reset = '1') then 
			present_state <= reset_state;
		elsif (clk'event and clk = '1') then
			case present_state is 
				
			end case;
		end if;
	end process;
	
	process( present_state ) 
	begin
		Gra <= '0';
		Grb <= '0';
		Grc <= '0';
		Rin <= '0';
		Rout <= '0';
		PCout <= '0';
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
		MARin <= '0';
		MDRin <= '0';
		Out_portin <= '0';
		BAout <= '0';
		R14MUX_enable <= '0';
		IncPc_enable <= '0';
		read_signal <= '0';
		write_signal <= '0';
		case present_state is 
			when reset_state =>
			
			when fetch0 =>
			
			when fetch1 =>
			
			when fetch2 =>
			
			when fetch3 =>
			
			when ld3 =>
			
			when ld4 =>
			
			when ld5 =>
			
			when ld6 =>
			
			when ld7 =>
			
			when ldi3 =>
			
			when ldi4 =>
			
			when ldi5 =>
			
			when ldr3 =>
			
			when ldr4 =>
			
			when ldr5 =>
			
			when ldr6 =>
			
			when st3 =>
		
		end case;
	end process;	
end architecture
		