library ieee;
use ieee.std_logic_1164.all;

entity fsm_reset_async is
	port(
		CLK, RESET, INPUT	: in std_logic;
    		OUTPUT			: out std_logic	
	);

end entity fsm_reset_async;


architecture behavioral of fsm_reset_async is
	type STATUS is (S0, S1, S2, S3, S4);
	signal ps, fs: STATUS := S0;
begin
	
	output_process: process(ps)
	begin
		if ps = S4 then
			OUTPUT <= '1';
		else
			OUTPUT <= '0';
		end if;
	end process;


	future_state_process: process(ps, INPUT)
	begin
		if ps = S0 then
			if INPUT = '1' then
				fs <= S1;
			else 
				fs <= S0;
			end if;
		elsif ps = S1 then
			if input = '0' then
				fs <= S2;
			else
				fs <= S1;
			end if;
		elsif ps = S2 then
			if input = '0' then
				fs <= S3;
			else
				fs <= S1;
			end if;
		elsif ps = S3 then
			if input = '0' then
				fs <= S0;
			else
				fs <= S4;
			end if;
		else
			if input = '0' then
				fs <= S2;
			else
				fs <= S1;
			end if;
		end if;
	end process;

	clock_process: process(CLK)
	begin	if RESET = '1' then
			ps <= S0;
		elsif rising_edge(CLK) then
			ps <= fs;
		end if;
	end process;
end architecture behavioral;
