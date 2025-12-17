
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_caricamento_tb is
end entity cont_caricamento_tb;

architecture Behavior of cont_caricamento_tb is

    -- component to test
component cont_caricamento is
port(
clk, reset,load		: in  std_logic;
data			: in  std_logic_vector(0 to 3);
y			: out std_logic_vector(0 to 3)
);

end component cont_caricamento;

    -- signal to map to component
signal clk, reset,load : std_logic := '0';
 signal  data : std_logic_vector(0 to 3) := "0000";
 signal  y : std_logic_vector(0 to 3);

begin
    -- map signals
    uut: cont_caricamento port map ( clk=>clk,
				 reset=> reset,
				load=>load,
				data=>data,
				y=>y);
	
    clock_process: process is
    begin
	    clk <= not clk;
	    wait for 10 ns;
    end process clock_process;

    stimulus: process is
    begin
     reset <= '1';
     wait for 30 ns;

     reset <= '0'; load <= '0';
     wait for 60 ns;

     load <= '1'; data <= "1010";
     wait for 20 ns;

     load <= '0';
     wait for 40 ns;

    wait;
    end process;
end architecture behavior;
    
