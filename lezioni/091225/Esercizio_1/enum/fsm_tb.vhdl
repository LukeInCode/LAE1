
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_tb is
end entity fsm_tb;

architecture Behavior of fsm_tb is

    -- component to test
component fsm is
port(
clk, i 	: in std_logic;
o	: out std_logic_vector(0 to 1)
);

end component fsm;

   -- signal to map to component
signal clk, i : std_logic := '1';
 signal  o : std_logic_vector(0 to 1) := "00";

begin
    -- map signals
    uut: fsm port map ( clk=>clk,
				 i=> i,
				o=>o);
    clock_p: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

    stimulus: process is
    begin
     i <= '1'; wait for 10 ns;
     i <= '1'; wait for 10 ns;
     i <= '1'; wait for 10 ns;
    
     i <= '0'; wait for 10 ns;
     i <= '0'; wait for 10 ns;
     i <= '0'; wait for 10 ns;
    wait;
    end process;
end architecture behavior;

    
