
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_tb is
end entity seq_tb;

architecture Behavior of seq_tb is

    -- component to test
component seq is
port(
clk, b	: in std_logic;
o	: out std_logic
);

end component seq;

    -- signal to map to component
signal clk, b : std_logic := '1';
 signal  o : std_logic := '0';

begin
    -- map signals
    uut: seq port map ( clk=>clk,
				 b=> b,
				o=>o);
    
    clk_p: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;
    

    stimulus: process is
    begin
	    b <= '0'; wait for 4 ns;
	    b <= '1'; wait for 7 ns;
	    b <= '0'; wait for 11 ns;
	    b <= '1'; wait for 10 ns;
	    b <= '0'; wait for 8 ns;
    wait;
    end process;
end architecture behavior;
    
