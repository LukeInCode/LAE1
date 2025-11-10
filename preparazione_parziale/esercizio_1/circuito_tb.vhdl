
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_tb is
end entity circuito_tb;

architecture Behavior of circuito_tb is

    -- component to test
component circuito is
port(
a,b,en	: in std_logic;
y	: out std_logic
);
end component;

    -- signal to map to component
signal a,b,en : std_logic;
 signal  y : std_logic;

begin
    -- map signals
    uut: circuito port map ( a=>a,
				b=>b,
				en=>en,
				y=>y);


    stimulus: process is
    begin
     -- write your test here
	    a <= '0'; b <= '0'; en <= '0';
	    wait for 5 ns;
	    a <= '0'; b <= '0'; en <= '1';
	    wait for 5 ns;
	    a <= '0'; b <= '1'; en <= '0';
	    wait for 5 ns;
	    a <= '0'; b <= '1'; en <= '1';
	    wait for 5 ns;
	    a <= '1'; b <= '0'; en <= '0';
	    wait for 5 ns;
	    a <= '1'; b <= '0'; en <= '1';
	    wait for 5 ns;
	    a <= '1'; b <= '1'; en <= '0';
	    wait for 5 ns;
	    a <= '1'; b <= '1'; en <= '1';
	    wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
