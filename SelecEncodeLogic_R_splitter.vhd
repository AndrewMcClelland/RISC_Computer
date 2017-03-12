library IEEE;
use ieee.std_logic_1164.all;

entity SelectEncodeLogic_R_splitter is 
	PORT(
			data_in: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			r0, r1,r2,r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15 : out std_logic
);
END SelectEncodeLogic_R_splitter;

architecture behavioral of SelectEncodeLogic_R_splitter is 
begin
	r0 <= data_in(0);
	r1 <= data_in(1);
	r2 <= data_in(2);
	r3 <= data_in(3);
	r4 <= data_in(4);
	r5 <= data_in(5);
	r6 <= data_in(6);
	r7 <= data_in(7);
	r8 <= data_in(8);
	r9 <= data_in(9);
	r10 <= data_in(10);
	r11 <= data_in(11);
	r12 <= data_in(12);
	r13 <= data_in(13);
	r14 <= data_in(14);
	r15 <= data_in(15);
end behavioral; 
