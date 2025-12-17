
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity d_ff_sync_reset_tb is
end entity d_ff_sync_reset_tb;

architecture Behavior of d_ff_sync_reset_tb is

    -- component to test
component d_ff_sync_reset is

port(
d,clk,reset	:  in std_logic;
q		: out std_logic
);

end component d_ff_sync_reset;

    -- signal to map to component
	signal d,clk : std_logic := '1';
	signal reset : std_logic := '0';
	signal  q    : std_logic := '0';

begin
    -- map signals
    uut: d_ff_sync_reset port map ( d=>d,
				clk=>clk,
				reset=>reset,
				q=>q);

	
	    clock: process is
 	    begin
		    clk <= not clk;
		    wait for 10 ns;
	    end process;


    stimulus: process is
    begin
	
	    d <= '0'; reset <= '0';
	    wait for 20 ns;
	    d <= '1'; reset <= '0';
	    wait for 20 ns;
	    d <= '0'; reset <= '1';
	    wait for 20 ns;
	    d <= '1'; reset <= '1';
	    wait for 20 ns;
    wait;
    end process;
end architecture behavior;
    
