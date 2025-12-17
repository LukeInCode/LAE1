
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parity_tb is
end entity parity_tb;

architecture Behavior of parity_tb is

    -- component to test
component parity is
port(
clk,i	: in  std_logic;
o	: out std_logic
);
end component parity;

    -- signal to map to component
signal clk,i : std_logic := '1';
 signal  o : std_logic;

begin
    -- map signals
    uut: parity port map ( clk=>clk,
				i=>i,
				o=>o);
    clk_process: process is
    begin
	clk <= not clk;
	wait for 5 ns;
    end process;

    stimulus: process is
    begin
     i <= '1'; 
     wait for 22 ns;

     i <= '0';
    wait;
    end process;
end architecture behavior;
    
