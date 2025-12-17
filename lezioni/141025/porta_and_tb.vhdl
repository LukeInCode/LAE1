
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity porta_and_tb is
end entity porta_and_tb;

architecture Behavior of porta_and_tb is

    -- component to test
component porta_and is
port(
a	: in std_logic;
b	: in std_logic;
y	: out std_logic
);

end component porta_and;

    -- signal to map to component
signal a : std_logic;
 signal  b : std_logic;
 signal  y : std_logic;

begin
    -- map signals
    uut: porta_and port map ( a=>a,
				b=>b,
				y=>y);


    stimulus: process is
    begin
    	-- Test case 1: A=0; B=0
	a <= '0';
	b <= '0';
	wait for 5 ns;

    	--Test case 2: A=0; B=1
	a <= '0';
	b <= '1';
	wait for 5 ns;

    	--Test case 3: A=1; B=0
	a <= '1';
	b <= '0';
	wait for 5 ns;

   	--Test case 4: A=1; B=1
	a <= '1';
	b <= '1';
	wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
