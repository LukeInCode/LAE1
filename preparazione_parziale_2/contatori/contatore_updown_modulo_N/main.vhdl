library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contatore_updown is
	generic(N: integer);
	port(
		CLK, RESET, UPDOWN	: in std_logic;
    		Y 			: out std_logic_vector(N - 1 downto 0)
	);

end entity;


architecture behavioral of contatore_updown is
	signal temp: unsigned(Y'range);
begin

	main_process: process(CLK, RESET)
	begin
		if RESET = '1' then
			temp <= (others => '0');
		elsif CLK'EVENT and CLK = '1' then
			if UPDOWN = '0' then
				temp <= temp + 1;
			else
				temp <= temp - 1;
			end if;
		end if;
	end process;

	Y <= std_logic_vector(temp);

end architecture behavioral;
