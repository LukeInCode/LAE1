library ieee;
use ieee.std_logic_1164.all;


entity D_FF_ASYNC_RESET is
	
	port(
		D,CLK,RESET	:  in std_logic;
    		Q		: out std_logic	
	);

end D_FF_ASYNC_RESET;


architecture behavioral of D_FF_ASYNC_RESET is
begin
	ff: process(CLK,D,RESET)
	begin

		if RESET = '1' then
			Q <= '0';
		elsif rising_edge(CLK) then
			Q <= D;
		end if;
	end process;
end architecture behavioral;
