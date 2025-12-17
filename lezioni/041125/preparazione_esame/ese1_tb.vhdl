
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ese1_tb is
end entity ese1_tb;

architecture Behavior of ese1_tb is

    -- component to test
component ese1 is
port (
a	: in std_logic;
b	: in std_logic;
c	: in std_logic;
y	: out std_logic
);

end component;

    -- signal to map to component
signal a : std_logic;
 signal  b : std_logic;
 signal  c : std_logic;
 signal  y : std_logic;

begin
    -- map signals
    uut: ese1 port map ( a=>a,
				b=>b,
				c=>c,
				y=>y);


    stimulus: process is
    begin
    	a<='0';b<='0';c<='0';
	wait for 5 ns;
    	a<='0';b<='0';c<='1';
	wait for 5 ns;
    	a<='0';b<='1';c<='0';
	wait for 5 ns;
    	a<='0';b<='1';c<='1';
	wait for 5 ns;
    	a<='1';b<='0';c<='0';
	wait for 5 ns;
    	a<='1';b<='0';c<='1';
	wait for 5 ns;
    	a<='1';b<='1';c<='0';
	wait for 5 ns;
    	a<='1';b<='1';c<='1';
	wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
