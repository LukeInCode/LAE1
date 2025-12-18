
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contatore_updown_tb is
end entity contatore_updown_tb;

architecture Behavior of contatore_updown_tb is

    -- component to test
component contatore_updown is
generic(n: integer);
port(
clk, reset, updown	: in std_logic;
y 			: out std_logic_vector(n - 1 downto 0)
);

end component;

    -- signal to map to component
 constant n: integer := 2;
 signal clk, reset, updown : std_logic := '1';
 signal  y : std_logic_vector(n - 1 downto 0);

begin
    -- map signals
    uut: contatore_updown generic map ( n=>n)
				port map ( clk=>clk,
				 reset=> reset,
				 updown=> updown,
				y=>y);
    clk_process: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

    stimulus: process is
    begin
     reset <= '1';
     updown <= '0';
     wait for 10 ns;

     reset <= '0';
     wait for 40 ns;

     updown <= '1';
     wait for 40 ns;
     
    wait;
    end process;
end architecture behavior;
    
