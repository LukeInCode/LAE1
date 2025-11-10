
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end entity alu_tb;

architecture Behavior of alu_tb is

    -- component to test
component alu is

port(
a,b	: in std_logic;
sel	: in std_logic_vector(1 downto 0);
y	: out std_logic
);

end component;

    -- signal to map to component
signal a,b : std_logic;
 signal  sel : std_logic_vector(1 downto 0);
 signal  y : std_logic;

begin
    -- map signals
    uut: alu port map ( a=>a,
				b=>b,
				sel=>sel,
				y=>y);


    stimulus: process is
    begin
     -- write your test here
	    a <= '0'; b <= '0'; sel <= "00";
	    wait for 5 ns;
	    a <= '0'; b <= '0'; sel <= "01";
	    wait for 5 ns;
	    a <= '0'; b <= '0'; sel <= "10";
	    wait for 5 ns;
	    a <= '0'; b <= '0'; sel <= "11";
	    wait for 5 ns;
	    a <= '0'; b <= '1'; sel <= "00";
	    wait for 5 ns;
	    a <= '0'; b <= '1'; sel <= "01";
	    wait for 5 ns;
	    a <= '0'; b <= '1'; sel <= "10";
	    wait for 5 ns;
	    a <= '0'; b <= '1'; sel <= "11";
	    wait for 5 ns;
	    a <= '1'; b <= '0'; sel <= "00";
	    wait for 5 ns;
	    a <= '1'; b <= '0'; sel <= "01";
	    wait for 5 ns;
	    a <= '1'; b <= '0'; sel <= "10";
	    wait for 5 ns;
	    a <= '1'; b <= '0'; sel <= "11";
	    wait for 5 ns;
	    a <= '1'; b <= '1'; sel <= "00";
	    wait for 5 ns;
	    a <= '1'; b <= '1'; sel <= "01";
	    wait for 5 ns;
	    a <= '1'; b <= '1'; sel <= "10";
	    wait for 5 ns;
	    a <= '1'; b <= '1'; sel <= "11";
	    wait for 5 ns;
    wait;
    end process;
end architecture behavior;
    
