process
begin
if (enable = '1' and sel = '0') then
	z <= a and (not b) after 5 ns;
elsif (enable = '1' and sel = '1') then
	z <= x or y after 6 ns;
else 
	z <= '0' after 4 ns;
end if;
wait on a, b, enable, sel, x, y;

end process;
