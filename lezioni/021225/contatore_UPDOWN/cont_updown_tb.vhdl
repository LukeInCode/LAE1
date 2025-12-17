
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_updown_tb is
end entity cont_updown_tb;

architecture Behavior of cont_updown_tb is

    -- component to test
component cont_updown is
port(
clk, reset, updown	: in std_logic;
y			: out std_logic_vector(0 to 3)
);

end component;

    -- signal to map to component
signal clk, reset, updown : std_logic := '0';
signal  y : std_logic_vector(0 to 3);

begin
    -- map signals
    uut: cont_updown port map ( clk=>clk,
				 reset=> reset,
				 updown=> updown,
				y=>y);
    clock_process: process is
    begin
	    clk <= not clk;
	    wait for 10 ns;

    end process clock_process;

    stimulus: process is
    begin
     reset <= '1'; 
     wait for 30 ns;

     reset <= '0';
     wait for 60 ns;

     updown <= '1';
     wait for 40 ns;

     reset <= '1';
     wait for 30 ns;

     reset <= '0';
     wait for 20 ns;
    wait;
    end process;
end architecture behavior;
    
