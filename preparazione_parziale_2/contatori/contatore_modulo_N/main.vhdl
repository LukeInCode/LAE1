library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contatore_modulo_n is
	generic(N: integer);
	port(
		CLK, RESET	: in std_logic;
    		Y		: out std_logic_vector(N - 1 downto 0)	
	);

end entity;


architecture behavioral of contatore_modulo_n is
	signal temp: unsigned(N - 1 downto 0);
begin
	main_process: process(CLK, RESET)
	begin
		if RESET = '1' then
			temp <= (others => '0');
		elsif rising_edge(CLK) then
			temp <= temp + 1;
		end if;
	end process;

	Y <= std_logic_vector(temp);

end architecture behavioral;
				
