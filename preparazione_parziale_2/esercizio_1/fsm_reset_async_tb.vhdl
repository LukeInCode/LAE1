
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_reset_async_tb is
end entity fsm_reset_async_tb;

architecture Behavior of fsm_reset_async_tb is

    -- component to test
component fsm_reset_async is
port(
clk, reset, input	: in std_logic;
output			: out std_logic
);

end component fsm_reset_async;

    -- signal to map to component
signal clk, reset, input : std_logic := '0';
signal  output : std_logic;

begin
    -- map signals
    uut: fsm_reset_async port map ( clk=>clk,
				 reset=> reset,
				 input=> input,
				output=>output);
    
    clk_process: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;
    
    stimulus: process is
    begin
    	reset <= '1';
	wait for 10 ns;

	reset <= '0';
	input <= '1';
	wait for 10 ns;

	input <= '0';
	wait for 10 ns;

	input <= '0';
	wait for 10 ns;

	input <= '1';
	wait for 10 ns;

	input <= '0';
	wait for 10 ns;
    wait;
    end process;
end architecture behavior;
    
