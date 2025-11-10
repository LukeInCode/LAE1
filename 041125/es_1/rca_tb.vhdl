
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rca_tb is
end entity rca_tb;

architecture Behavior of rca_tb is

    -- component to test
component rca is
port(
a,b	: in std_logic_vector(1 downto 0);
sum	: out std_logic_vector(1 downto 0);
cout	: out std_logic

);

end component;

    -- signal to map to component
signal a,b : std_logic_vector(1 downto 0);
 signal  sum : std_logic_vector(1 downto 0);
 signal  cout : std_logic;

begin
    -- map signals
    uut: rca port map ( a=>a,
				b=>b,
				sum=>sum,
				cout=>cout);


    stimulus: process is
    begin
     -- write your test here
	a <= "00"; b <= "00";
	wait for 5 ns;
	a <= "00"; b <= "01";
	wait for 5 ns;
	a <= "00"; b <= "10";
	wait for 5 ns;
	a <= "00"; b <= "11";
	wait for 5 ns;
	a <= "01"; b <= "00";
	wait for 5 ns;
	a <= "01"; b <= "01";
	wait for 5 ns;
	a <= "01"; b <= "10";
	wait for 5 ns;
	a <= "01"; b <= "11";
	wait for 5 ns;
	a <= "10"; b <= "00";
	wait for 5 ns;
	a <= "10"; b <= "01";
	wait for 5 ns;
	a <= "10"; b <= "10";
	wait for 5 ns;
	a <= "10"; b <= "11";
	wait for 5 ns;
	a <= "11"; b <= "00";
	wait for 5 ns;
	a <= "11"; b <= "01";
	wait for 5 ns;
	a <= "11"; b <= "10";
	wait for 5 ns;
	a <= "11"; b <= "11";
	wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
