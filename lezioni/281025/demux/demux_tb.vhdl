
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux_tb is
end entity demux_tb;

architecture Behavior of demux_tb is

    -- component to test
component demux is
port(
d		: in std_logic_vector(3 downto 0);
s		: in std_logic_vector(1 downto 0);

y0,y1,y2,y3	: out std_logic_vector(3 downto 0)
);

end component demux;

    -- signal to map to component
signal d : std_logic_vector(3 downto 0);
 signal  s : std_logic_vector(1 downto 0);
 signal  y0,y1,y2,y3 : std_logic_vector(3 downto 0);

begin
    -- map signals
    uut: demux port map ( d=>d,
				s=>s,
				y0=>y0,
				y1=>y1,
				y2=>y2,
				y3=>y3);


    stimulus: process is
    begin
    -- TEST CASE 1: Y0=D
	    d <= "0001"; s <= "00";
	    wait for 5 ns;
    -- TEST CASE 2 Y1=D
	    d <= "0010"; s <= "01";
	    wait for 5 ns;
    -- TEST CASE 3 Y2=D
	    d <= "0011"; s <= "10";
	    wait for 5 ns;
    -- TEST CASE 4 Y3=D
	    d <= "0100"; s <= "11";
	    wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
