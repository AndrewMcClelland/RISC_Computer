library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_divider is
    Port (
        clk_in : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end clock_divider;

architecture Behavioral of clock_divider is
 signal temp: STD_LOGIC;
 signal count : integer := 1;
begin
    frequency_divider: process (reset, clk_in) begin
        if (reset = '0') then
            temp <= '0';
            count <= 1;
        elsif rising_edge(clk_in) then
				count <= count + 1;
            if (count = 1000) then			-- 1Hz
                temp <= NOT(temp);
                count <= 1;
            end if;
        end if;
		  clk_out <= temp;
    end process;
end Behavioral;