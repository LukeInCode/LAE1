library ieee;
use ieee.std_logic_1164.all;

entity fsm is
	port(
		CLK, I 	: in std_logic;
    		O	: out std_logic_vector(0 to 1)	
	);

end fsm;


architecture behavioral of fsm is
	signal present_state, future_state: std_logic_vector(0 to 1) := "00";
begin
	output_signal: process(present_state)
	begin
		O <= present_state;
	end process;

	future_state_process: process(present_state, I)
	begin
		future_state(1) <= not present_state(1);
		future_state(0) <= I xnor (present_state(0) xor present_state(1));
	end process;

	clock_process: process(CLK)
	begin
		if rising_edge(CLK) then
			present_state <= future_state;
		end if;
	end process;
end architecture behavioral;


