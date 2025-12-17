
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dec_tb is
end entity dec_tb;

architecture Behavior of dec_tb is

    -- component to test
component dec is
port (
i	: in std_logic_vector(1 downto 0);
o	: out std_logic_vector(3 downto 0)
);
end component dec;

    -- signal to map to component
signal i : std_logic_vector(1 downto 0);
 signal  o : std_logic_vector(3 downto 0);

begin
    -- map signals
    uut: dec port map ( i=>i,
				o=>o);


    stimulus: process is
    begin
    -- TEST CASE 1: I="00"
	    i <= "00";
	    wait for 5 ns;
    
    -- TEST CASE 2: I="01"
	    i <= "01";
	    wait for 5 ns;

    -- TEST CASE 3: I="10"
	    i <= "10";
	    wait for 5 ns;

    -- TEST CASE 4: I="11"
	    i <= "11";
	    wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
