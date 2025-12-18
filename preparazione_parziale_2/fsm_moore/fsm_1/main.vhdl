library ieee;
use ieee.std_logic_1164.all;

entity fsm_moore is
	port(
		CLK, RESET, X	: in std_logic;
    		Y		: out std_logic	
	);

end entity fsm_moore;


architecture behavioral of fsm_moore is
	type STATUS is (S0, S1, S2, S3);
	signal ps, fs: STATUS := S0;
begin
	Y_Process: process(ps)
	begin
		if ps = S3 then
			Y <= '1';
		else 
			Y <= '0';
		end if;
	end process;


	future_state_process: process(ps, X)
	begin
		if ps = S0 then
			if X = '1' then
				fs <= S1;
			else 
				fs <= S0;
			end if;
		elsif ps = S1 then
			if X = '1' then
				fs <= S3;
			else
				fs <= S2;
			end if;
		elsif ps = S2 then
			if X = '1' then
				fs <= S3;
			else
				fs <= S0;
			end if;
		else
			if X = '1' then
				fs <= S3;
			else
				fs <= S2;
			end if;
		end if;
	end process;


	clock_process: process(CLK)
	begin
		if RESET = '1' then
			ps <= S0;
		elsif rising_edge(CLK) then
			ps <= fs;
		end if;
	end process;

end architecture behavioral;

