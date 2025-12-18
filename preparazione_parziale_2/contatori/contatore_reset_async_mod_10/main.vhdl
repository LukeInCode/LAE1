library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contatore_reset_async_mod_10 is
	port(
		CLK, RESET	: in std_logic;
    		Y		: out std_logic_vector(0 to 3)	
	);

end entity contatore_reset_async_mod_10;


architecture behavioral of contatore_reset_async_mod_10 is
	signal temp: unsigned(0 to 3);
begin
	main_process: process(CLK, RESET)
	begin
		if reset = '1' then
			temp <= "0000";
		elsif rising_edge(CLK) then
			if temp = "1001" then
				temp <= "0000";
			else
				temp <= temp + 1;
			end if;
		end if;
	end process main_process;

	Y <= std_logic_vector(temp);

end architecture behavioral;
