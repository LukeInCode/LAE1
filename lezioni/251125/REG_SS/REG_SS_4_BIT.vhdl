library ieee;
use ieee.std_logic_1164.all;


entity REG_SS_4_BIT is

	port(
		CLK, RESET, X	:  in std_logic;
  		Y		: out std_logic
	);

end entity;


architecture behavior of REG_SS_4_BIT is

signal T: std_logic_vector(0 to 3);

begin
	clock: process(CLK, RESET)
	begin
		if RESET='1' then
			T <= (others => '0');
		elsif CLK'event and CLK='1' then
			T(1 to 3) <= T(0 to 2);
			T(0) <= X;
		end if;
	end process;
	Y <= T(3);
end architecture;
