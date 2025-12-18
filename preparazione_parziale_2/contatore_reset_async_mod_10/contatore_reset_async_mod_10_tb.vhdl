
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contatore_reset_async_mod_10_tb is
end entity contatore_reset_async_mod_10_tb;

architecture Behavior of contatore_reset_async_mod_10_tb is

    -- component to test
component contatore_reset_async_mod_10 is
port(
clk, reset	: in std_logic;
y		: out std_logic_vector(3 downto 0)
);

end component contatore_reset_async_mod_10;

    -- signal to map to component
signal clk, reset : std_logic := '1';
signal  y : std_logic_vector(3 downto 0) := "0000";

begin
    -- map signals
    uut: contatore_reset_async_mod_10 port map ( clk=>clk,
				 reset=> reset,
				y=>y);
    clk_process: process is
    begin
	    clk <= not clk;
	    wait for 10 ns;
    end process;

    stimulus: process is
    begin
     reset <= '1';
     wait for 20 ns;

     reset <= '0';
     wait for 180 ns;
    wait;
    end process;
end architecture behavior;
    
