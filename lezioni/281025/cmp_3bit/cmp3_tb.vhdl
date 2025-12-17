
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cmp3_tb is
end entity cmp3_tb;

architecture Behavior of cmp3_tb is

    -- component to test
component cmp3 is

port(
a_in, b_in	: in std_logic_vector(2 downto 0);
y		: out std_logic
);

end component cmp3;

    -- signal to map to component
signal a_in, b_in : std_logic_vector(2 downto 0);
 signal  y : std_logic;

begin
    -- map signals
    uut: cmp3 port map ( a_in=>a_in,
				 b_in=> b_in,
				y=>y);


    stimulus: process is
    begin
    -- TEST CASE 1: Y="000"
	    a_in <= "000"; b_in <= "000";
	    wait for 5 ns;
    -- TEST CASE 2: Y="001"
	    a_in <= "001"; b_in <= "001";
	    wait for 5 ns;
    -- TEST CASE 3: Y="010"
	    a_in <= "010"; b_in <= "010";
	    wait for 5 ns;
    -- TEST CASE 4: Y="011"
	    a_in <= "011"; b_in <= "011";
	    wait for 5 ns;
    -- TEST CASE 5: Y="100"
	    a_in <= "100"; b_in <= "100";
	    wait for 5 ns;
    -- TEST CASE 6: Y="101"
	    a_in <= "101"; b_in <= "101";
	    wait for 5 ns;
    -- TEST CASE 7: Y="110"
	    a_in <= "110"; b_in <= "110";
	    wait for 5 ns;
    -- TEST CASE 8: Y="111"
	    a_in <= "111"; b_in <= "111";
	    wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
