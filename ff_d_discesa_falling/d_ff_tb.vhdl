
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity d_ff_tb is
end entity d_ff_tb;

architecture Behavior of d_ff_tb is

    -- component to test
component d_ff is
port (
clk,d	: in  std_logic;
q	: out std_logic
);

end component d_ff;

signal clk,d : std_logic := '1';
signal  q : std_logic := '0';


 begin
    -- map signals
    uut: d_ff port map ( clk=>clk,
				d=>d,
				q=>q);


    
    clock: process is
    begin
	clk <= not clk;
	wait for 10 ns;
    end process;
    
    stimulus: process is
    begin
    	d <= '0'; wait for 15 ns;
    	d <= '1'; wait for 25 ns;
    	d <= '0'; wait for 25 ns;
    	d <= '1'; wait for 15 ns;
    	d <= '0'; wait for 40 ns;
    wait;
    end process;

end architecture behavior;

    
