
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cmp1_tb is
end entity cmp1_tb;

architecture Behavior of cmp1_tb is

    -- component to test
component cmp1 is
port(
a,b	: in std_logic;
y	: out std_logic
);

end component cmp1;

    -- signal to map to component
signal a,b : std_logic;
 signal  y : std_logic;

begin
    -- map signals
    uut: cmp1 port map ( a=>a,
				b=>b,
				y=>y);


    stimulus: process is
    begin
     a <= '0'; b <= '0';
     wait for 5 ns;

     a <= '0'; b <= '1';
     wait for 5 ns;

     a <= '1'; b <= '0';
     wait for 5 ns;

     a <= '1'; b <= '1';
     wait for 5 ns;

    wait;
    end process;
end architecture behavior;
    
