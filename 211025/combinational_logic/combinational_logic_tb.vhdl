
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity combinational_logic_tb is
end entity combinational_logic_tb;

architecture Behavior of combinational_logic_tb is

    -- component to test
component combinational_logic is
port (
a	:  in std_logic;
b	:  in std_logic;
c	:  in std_logic;
y	: out std_logic
);

end component combinational_logic;

    -- signal to map to component
signal a : std_logic;
 signal  b : std_logic;
 signal  c : std_logic;
 signal  y : std_logic;

begin
    -- map signals
    uut: combinational_logic port map ( a=>a,
				b=>b,
				c=>c,
				y=>y);


    stimulus: process is
    begin
    -- Test case 1: a="0", b="0", c="0" | Expected y="0"
	    a <= '0';
	    b <= '0';
	    c <= '0';

    	    wait for 10 ns;
    -- Test case 2: a="0", b="0", c="1" | Expected y="1"
	    a <= '0';
	    b <= '0';
	    c <= '1';

	    wait for 10 ns;

    -- Test case 3: a="0", b="1", c="0" | Expected y="0"
	    a <= '0';
	    b <= '1';
	    c <= '0';

	    wait for 10 ns;

    -- Test case 4: a="0", b="1", c="1" | Expected y="0"
	    a <= '0';
	    b <= '1';
	    c <= '1';

	    wait for 10 ns;

    -- Test case 5: a="1", b="0", c="0" | Expected y="0"
	    a <= '1';
	    b <= '0';
    	    c <= '0';
	    
	    wait for 10 ns;

    -- Test case 6: a="1", b="0", c="1" | Expected y="1"
	    a <= '1';
	    b <= '0';
	    c <= '1';

	    wait for 10 ns;

    -- Test case 7: a="1", b="1", c="0" | Expected y="1"
	    a <= '1';
	    b <= '1';
	    c <= '0';

	    wait for 10 ns;

    -- Test case 8: a="1", b="1", c="1" | Expected y="1"
	    a <= '1';
	    b <= '1';
	    c <= '1';

	    wait for 10 ns;

    -- Fine della simulazione	    
    wait;
    end process;
end architecture behavior;
    
