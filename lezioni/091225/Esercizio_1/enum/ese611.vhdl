library ieee;
use ieee.std_logic_1164.all;

entity fsm is
	port(
		CLK, I 	: in std_logic;
    		O	: out std_logic_vector(0 to 1)	
	);

end fsm;


architecture behavioral of fsm is
	type STATUS is (A,B,C,D);
	signal present_state, future_state: STATUS := A;
begin
	output_signal: process(present_state)
	begin
		if present_state = A then
			O <= "00";
		elsif present_state = B then
			O <= "01";
		elsif present_state = C then
			O <= "10";
		else
			O <= "11";
		end if;
	end process;

	future_state_process: process(present_state, I)
	begin
		if present_state = A then
			if I = '0' then
				future_state <= D;
			else 
				future_state <= B;
			end if;
		elsif present_state = B then
			if I = '0' then
				future_state <= A;
			else 
				future_state <= C;
			end if;

		elsif present_state = C then
			if I = '0' then
				future_state <= B;
			else 
				future_state <= D;
			end if;
		else
			if I = '0' then
				future_state <= C;
			else 
				future_state <= A;
			end if;
		end if;
	end process;

	clock_process: process(CLK)
	begin
		if rising_edge(CLK) then
			present_state <= future_state;
		end if;
	end process;
end architecture behavioral;


