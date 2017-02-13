library IEEE;
use ieee.std_logic_1164.all;

entity encoder_32_to_5 is 
	PORT(
	R0out,
	R1out,
	R2out,
	R3out,
	R4out,
	R5out,
	R6out,
	R7out,
	R8out,
	R9out,
	R10out,
	R11out,
	R12out,
	R13out,
	R14out,
	R15out,
	HIout,
	LOout,
	Zlowout,
	Zhighout,
	PCout,
	MDRout,
	In_portout,
	Cout : in std_logic;
	
	S : out std_logic_vector(4 downto 0)
);
END encoder_32_to_5 ;

architecture behavioral of encoder_32_to_5 is 
begin

	S <= "00000" when ( (R0out='1') and (R1out='0') and (R2out='0') and ( R3out='0') and ( R4out='0') and (	R5out='0') and ( R6out='0') and ( R7out='0') and (	R8out='0') and ( R9out='0') and ( R10out='0') and ( R11out='0') and (	R12out='0') and ( R13out='0') and ( R14out='0') and (	R15out='0') and ( HIout='0') and (	LOout='0') and ( Zlowout='0') and ( Zhighout='0') and ( PCout='0') and (	MDRout='0') and ( In_portout='0') and ( Cout='0') ) else
			 "00001" when ( (R0out = '0') and ( R1out = '1') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00010" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '1') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00011" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '1') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00100" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '1') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00101" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '1') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00110" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '1') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "00111" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '1') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01000" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '1') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01001" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '1') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01010" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '1') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01011" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '1') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01100" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '1') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01101" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '1') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01110" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '1') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "01111" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '1') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10000" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '1') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10001" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '1') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10010" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '1') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10011" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '1') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10100" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '1') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10101" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '1') and ( In_portout = '0') and ( Cout = '0') ) else
			 "10110" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '1') and ( Cout = '0') ) else
			 "10111" when ( (R0out = '0') and ( R1out = '0') and ( R2out = '0') and ( R3out = '0') and ( R4out = '0') and (	R5out = '0') and ( R6out = '0') and ( R7out = '0') and (	R8out = '0') and ( R9out = '0') and ( R10out = '0') and ( R11out = '0') and (	R12out = '0') and ( R13out = '0') and ( R14out = '0') and (	R15out = '0') and ( HIout = '0') and (	LOout = '0') and ( Zlowout = '0') and ( Zhighout = '0') and ( PCout = '0') and (	MDRout = '0') and ( In_portout = '0') and ( Cout = '1') ) else
			 "11111";
			 
end behavioral; 
