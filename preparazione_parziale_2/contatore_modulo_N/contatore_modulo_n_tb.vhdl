
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contatore_modulo_n_tb is
end entity contatore_modulo_n_tb;

architecture Behavior of contatore_modulo_n_tb is

    -- component to test
component contatore_modulo_n is
generic(n: integer);
port(
clk, reset	: in std_logic;
y		: out std_logic_vector(n - 1 downto 0)
);

end component;

    -- signal to map to component
 constant n: integer := 4;
signal clk, reset : std_logic := '0';
signal  y : std_logic_vector(n - 1 downto 0) := "0000";

begin
    -- map signals
    uut: contatore_modulo_n generic map ( n=>n)
				port map ( clk=>clk,
				 reset=> reset,
				y=>y);
    clk_process: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

    stimulus: process is
    begin
     reset <= '1';
     wait for 10 ns;

     reset <= '0';
     wait for 200 ns;
    wait;
    end process;
end architecture behavior;
    
