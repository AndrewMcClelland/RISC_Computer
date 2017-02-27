library IEEE;
use ieee.std_logic_1164.all;

entity CLA is 
	PORT(
	A: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Cin: IN STD_LOGIC;
	S: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Cout: OUT STD_LOGIC
);
END CLA;

architecture behavioral of CLA is 
signal G,P,C : STD_LOGIC_VECTOR(15 downto 0);
begin
	G <= A AND B;
	P <= A XOR B;
	
	C(0) <= Cin;
	C(1) <= G(0) OR (P(0) AND Cin);
	C(2) <= G(1) OR (P(1) AND (G(0) OR (P(0) AND Cin)));
	C(3) <= G(2) OR (P(2) AND (G(1) OR (P(1) AND (G(0) OR (P(0) AND Cin)))));
	
	C(4) <= G(3) OR (P(3) AND C(3));
	C(5) <= G(4) OR (P(4) AND (G(3) OR (P(3) AND C(3))));
	C(6) <= G(5) OR (P(5) AND (G(4) OR (P(4) AND (G(3) OR (P(3) AND C(3))))));
	C(7) <= G(6) OR (P(6) AND (G(5) OR (P(5) AND (G(4) OR (P(4) AND (G(3) OR (P(3) AND C(3))))))));
	
	C(8) <= G(7) OR (P(7) AND C(7));
	C(9) <= G(8) OR (P(8) AND (G(7) OR (P(7) AND C(7))));
	C(10) <= G(9) OR (P(9) AND (G(8) OR (P(8) AND (G(7) OR (P(7) AND C(7))))));
	C(11) <= G(10) OR (P(10) AND (G(9) OR (P(9) AND (G(8) OR (P(8) AND (G(7) OR (P(7) AND C(7))))))));
	
	C(12) <= G(11) OR (P(11) AND C(11));
	C(13) <= G(12) OR (P(12) AND (G(11) OR (P(11) AND C(11))));
	C(14) <= G(13) OR (P(13) AND (G(12) OR (P(12) AND (G(11) OR (P(11) AND C(11))))));
	C(15) <= G(14) OR (P(14) AND (G(13) OR (P(13) AND (G(12) OR (P(12) AND (G(11) OR (P(11) AND C(11))))))));
	
	Cout <= G(15) OR (P(15) AND (G(14) OR (P(14) AND (G(13) OR (P(13) AND (G(12) OR (P(12) AND (G(11) OR (P(11) AND C(11))))))))));
	S <= P XOR C;
	
end behavioral; 
