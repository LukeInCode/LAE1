library ieee;
use ieee.std_logic_1164.all;


entity circular_shift_register is
	port(
		LOAD, CLK, RESET, X	: in std_logic;
    		Y			: out std_logic	
	);

end entity circular_shift_register;


architecture behavioral of circular_shift_register is
	signal T: std_logic_vector(0 to 3);
	signal XT: std_logic;
begin
	XT <= T(3) when LOAD = '0' else
	      X when LOAD = '1' else
	      'X';

	main_process: process(CLK, RESET)
	begin
		if RESET = '1' then
			T <= "0000";
		elsif rising_edge(CLK) then
			T <= XT & T(0 to 2);
		end if;
	end process;

	Y <= T(3);

end architecture behavioral;

