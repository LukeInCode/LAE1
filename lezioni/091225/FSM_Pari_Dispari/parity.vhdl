library ieee;
use ieee.std_logic_1164.all;

entity parity is
	port(
		CLK,I	: in  std_logic;
    		O	: out std_logic	
	);
end parity;


architecture arch_parity of parity is
	signal present_state, future_state: std_logic := '0';
begin
	output_process: process(present_state)
	begin
		O <= present_state;
	end process;

	future_state_process: process(present_state, I)
	begin
		future_state <= present_state xor I;
	end process;

	clock_process: process(CLK)
	begin
		if rising_edge(CLK) then
			present_state <= future_state;
		end if;
	end process;
end arch_parity;
