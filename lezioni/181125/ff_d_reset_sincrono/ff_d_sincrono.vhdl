library ieee;
use ieee.std_logic_1164.all;


entity D_FF_SYNC_RESET is
	
	port(
		D,CLK,RESET	:  in std_logic;
    		Q		: out std_logic	
	);

end D_FF_SYNC_RESET;


architecture behavioral of D_FF_SYNC_RESET is
begin
	ff: process(CLK)
	begin
		if rising_edge(CLK) then
			if RESET = '1' then
				Q <= '0';
			else
				Q <= D;
			end if;
		end if;
	end process;
end architecture behavioral;
