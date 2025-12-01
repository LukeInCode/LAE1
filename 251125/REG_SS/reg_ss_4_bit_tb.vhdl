
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_ss_4_bit_tb is
end entity reg_ss_4_bit_tb;

architecture Behavior of reg_ss_4_bit_tb is

    -- component to test
component reg_ss_4_bit is

port(
clk, reset, x	:  in std_logic;
y		: out std_logic
);

end component;

    -- signal to map to component
signal clk	 	: std_logic := '0'; 
signal reset		: std_logic := '0';
signal x	 	: std_logic := '0';
signal y	 	: std_logic := '0';
constant TEST_DATA	: std_logic_vector(3 downto 0) := "1011";

begin
    -- map signals
    uut: reg_ss_4_bit port map ( clk=>clk,
				 reset=> reset,
				 x=> x,
				y=>y);
    
    clock: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

	
    stimulus: process is
    begin
	wait for 5 ns;
	reset <= '1';
	wait for 10 ns;

	reset <= '0';
	for i in 3 downto 0 loop
		x <= TEST_DATA(i);
		wait for 10 ns;
	end loop;

	x <= '0';
	wait for 40 ns;

    wait;
    end process;
end architecture behavior;
    
