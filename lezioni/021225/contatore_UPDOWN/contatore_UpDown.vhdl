library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_upDown is
	port(
		CLK, RESET, UPDOWN	: in std_logic;
    		Y			: out std_logic_vector(0 to 3)	
	);

end entity;


architecture behavioral of cont_upDown is
	signal temp_vector	: unsigned(0 to 3);
	signal term		: unsigned(0 to 3);

begin
	term <= "0001" when UPDOWN = '0' else
		"1111" when UPDOWN = '1' else
		"XXXX";

	count: process(CLK, RESET) 
	begin
		if reset = '1' then
			temp_vector <= "0000";
		elsif rising_edge(CLK) then
			temp_vector <= temp_vector + term;
		end if;
	end process count;

	Y <= std_logic_vector(temp_vector);

end architecture behavioral;
