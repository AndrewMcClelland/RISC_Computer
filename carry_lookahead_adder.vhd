--16 by 16 two level carry look ahead adder
library IEEE;
use ieee.std_logic_1164.all;

entity carry_lookahead_adder is 
	PORT(
	A: IN STD_LOGIC_VECTOR(15 DOWNTO 0); --Input A
	B: IN STD_LOGIC_VECTOR(15 DOWNTO 0); --Input B
	Cin: IN STD_LOGIC; --Carry in bit
	S: OUT STD_LOGIC_VECTOR(15 DOWNTO 0); --Sum
	Cout: OUT STD_LOGIC --Carry out bit
);
END carry_lookahead_adder;

architecture behavioral of carry_lookahead_adder is 
signal Gen : STD_LOGIC_VECTOR(15 downto 0); --generate signal
signal Prop : STD_LOGIC_VECTOR(15 downto 0); --propogate signal
signal C : STD_LOGIC_VECTOR(15 downto 0); --carry signal
begin
	Gen <= A AND B; --instantiation of generate signal
	Prop <= A XOR B; --instantiation of propogate signal
	
	--calculation of carry signal using carry lookahead logic
	C(0) <= Cin; 
	C(1) <= Gen(0) OR (Prop(0) AND Cin);
	C(2) <= Gen(1) OR (Prop(1) AND (Gen(0) OR (Prop(0) AND Cin)));
	C(3) <= Gen(2) OR (Prop(2) AND (Gen(1) OR (Prop(1) AND (Gen(0) OR (Prop(0) AND Cin)))));
	
	C(4) <= Gen(3) OR (Prop(3) AND C(3));
	C(5) <= Gen(4) OR (Prop(4) AND (Gen(3) OR (Prop(3) AND C(3))));
	C(6) <= Gen(5) OR (Prop(5) AND (Gen(4) OR (Prop(4) AND (Gen(3) OR (Prop(3) AND C(3))))));
	C(7) <= Gen(6) OR (Prop(6) AND (Gen(5) OR (Prop(5) AND (Gen(4) OR (Prop(4) AND (Gen(3) OR (Prop(3) AND C(3))))))));
	
	C(8) <= Gen(7) OR (Prop(7) AND C(7));
	C(9) <= Gen(8) OR (Prop(8) AND (Gen(7) OR (Prop(7) AND C(7))));
	C(10) <= Gen(9) OR (Prop(9) AND (Gen(8) OR (Prop(8) AND (Gen(7) OR (Prop(7) AND C(7))))));
	C(11) <= Gen(10) OR (Prop(10) AND (Gen(9) OR (Prop(9) AND (Gen(8) OR (Prop(8) AND (Gen(7) OR (Prop(7) AND C(7))))))));
	
	C(12) <= Gen(11) OR (Prop(11) AND C(11));
	C(13) <= Gen(12) OR (Prop(12) AND (Gen(11) OR (Prop(11) AND C(11))));
	C(14) <= Gen(13) OR (Prop(13) AND (Gen(12) OR (Prop(12) AND (Gen(11) OR (Prop(11) AND C(11))))));
	C(15) <= Gen(14) OR (Prop(14) AND (Gen(13) OR (Prop(13) AND (Gen(12) OR (Prop(12) AND (Gen(11) OR (Prop(11) AND C(11))))))));
	
	S <= Prop XOR C; --calculation of sum 
	
	--calculation of carry out bit
	Cout <= Gen(15) OR (Prop(15) AND (Gen(14) OR (Prop(14) AND (Gen(13) OR (Prop(13) AND (Gen(12) OR (Prop(12) AND (Gen(11) OR (Prop(11) AND C(11))))))))));
	
end behavioral; 
