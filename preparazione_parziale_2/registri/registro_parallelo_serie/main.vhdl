library ieee;
use ieee.std_logic_1164.all;

entity reg_ps is
	generic(N: integer);
	port(
		RESET, CLK, LOAD	: in std_logic;
    		X			: in std_logic_vector(0 to N - 1);
		Y			: out std_logic
	);

end entity;

architecture behavioral of reg_ps is
	signal T, XT: std_logic_vector(X'range);

begin
	XT <= X when load = '1' else
	      T when load = '0' else
	      (others => 'X');

	main_process: process(CLK, RESET)
	begin
		if RESET = '1' then
			T <= (others => '0');
		elsif CLK'EVENT and CLK = '1' then
			T <= '0' & XT(0 to N - 2);
		end if;
	end process;

	Y <= T(N - 1);

end architecture behavioral;
