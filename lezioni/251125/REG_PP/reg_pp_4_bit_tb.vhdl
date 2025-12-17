
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_pp_4_bit_tb is
end entity reg_pp_4_bit_tb;

architecture Behavior of reg_pp_4_bit_tb is

    -- component to test
component reg_pp_4_bit is
port(
clk, reset	: in std_logic;
x		: in std_logic_vector(3 downto 0);

y		: out std_logic_vector(3 downto 0)
);

end component reg_pp_4_bit;

    -- signal to map to component
signal clk, reset : std_logic := '1';
 signal  x : std_logic_vector(3 downto 0);
 signal  y : std_logic_vector(3 downto 0);

begin
    -- map signals
    uut: reg_pp_4_bit port map ( clk=>clk,
				 reset=> reset,
				x=>x,
				y=>y);
	
    clock: process is
	   begin
	    	clk <= not clk;
	   	 wait for 10 ns;
	   end process;
		

    stimulus: process is
    begin
	wait for 10 ns;

    	reset <= '1'; x <= "1111"; 
	wait for 15 ns;
	reset <= '0'; x <= "0101";
	wait for 10 ns;
	x <= "1010";
	wait for 10 ns;
	x <= "0000";
	wait for 10 ns;
    wait;
    end process;
end architecture behavior;
    
