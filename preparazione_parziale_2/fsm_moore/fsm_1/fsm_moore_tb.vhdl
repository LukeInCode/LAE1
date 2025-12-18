
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_moore_tb is
end entity fsm_moore_tb;

architecture Behavior of fsm_moore_tb is

    -- component to test
component fsm_moore is
port(
clk, reset, x	: in std_logic;
y		: out std_logic
);

end component fsm_moore;

    -- signal to map to component
signal clk, reset, x : std_logic := '1';
signal  y : std_logic := '0';

begin
    -- map signals
    uut: fsm_moore port map ( clk=>clk,
				 reset=> reset,
				 x=> x,
				y=>y);
    clk_pr: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

    stimulus: process is
    begin
	    reset <= '1';
	    wait for 15 ns;

	    reset <= '0';
	    x <= '1';
	    wait for 10 ns;

	    x <= '1';
	    wait for 10 ns;

	    x <= '0';
	    wait for 10 ns;

	    x <= '1';
	    wait for 10 ns;
	    
    wait;
    end process;
end architecture behavior;
    
