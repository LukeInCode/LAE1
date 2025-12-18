
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circular_shift_reg_tb is
end entity circular_shift_reg_tb;

architecture Behavior of circular_shift_reg_tb is

    -- component to test
component circular_shift_register is
port(
load, clk, reset, x	: in std_logic;
y			: out std_logic
);

end component circular_shift_register;

    -- signal to map to component
signal load, clk, reset, x : std_logic := '1';
 signal  y : std_logic := '0';

begin
    -- map signals
    uut: circular_shift_register port map ( load=>load,
				 clk=> clk,
				 reset=> reset,
				 x=> x,
				y=>y);
    clk_process: process is
    begin
	    clk <= not clk;
	    wait for 5 ns;
    end process;

    stimulus: process is
    begin
     reset <= '1';
     load <= '0';
     wait for 15 ns;

     reset <= '0';
     load <= '1';
     x <= '1';
     wait for 10 ns;

     x <= '0';
     wait for 10 ns;

     x <= '0';
     wait for 10 ns;

     x <= '1';
     wait for 10 ns;

     load <= '0';
     wait for 40 ns;
    wait;
    end process;
end architecture behavior;
    
