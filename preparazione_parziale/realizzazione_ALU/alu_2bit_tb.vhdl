
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_2bit_tb is
end entity alu_2bit_tb;

architecture Behavior of alu_2bit_tb is

    -- component to test
component alu_2bit is
port(
a,b,sel	: in std_logic_vector(1 downto 0);
y		: out std_logic_vector(1 downto 0)
);
end component;

    -- signal to map to component
signal a,b,sel : std_logic_vector(1 downto 0);
 signal  y : std_logic_vector(1 downto 0);

begin
    -- map signals
    uut: alu_2bit port map ( a=>a,
				b=>b,
				sel=>sel,
				y=>y);


    stimulus: process is
    begin
     -- write your test here
	    a <= "00"; b <= "00"; SEL <= "00"; wait for 5 ns;
a <= "00"; b <= "00"; SEL <= "01"; wait for 5 ns;
a <= "00"; b <= "00"; SEL <= "10"; wait for 5 ns;
a <= "00"; b <= "00"; SEL <= "11"; wait for 5 ns;

a <= "00"; b <= "01"; SEL <= "00"; wait for 5 ns;
a <= "00"; b <= "01"; SEL <= "01"; wait for 5 ns;
a <= "00"; b <= "01"; SEL <= "10"; wait for 5 ns;
a <= "00"; b <= "01"; SEL <= "11"; wait for 5 ns;

a <= "00"; b <= "10"; SEL <= "00"; wait for 5 ns;
a <= "00"; b <= "10"; SEL <= "01"; wait for 5 ns;
a <= "00"; b <= "10"; SEL <= "10"; wait for 5 ns;
a <= "00"; b <= "10"; SEL <= "11"; wait for 5 ns;

a <= "00"; b <= "11"; SEL <= "00"; wait for 5 ns;
a <= "00"; b <= "11"; SEL <= "01"; wait for 5 ns;
a <= "00"; b <= "11"; SEL <= "10"; wait for 5 ns;
a <= "00"; b <= "11"; SEL <= "11"; wait for 5 ns;

a <= "01"; b <= "00"; SEL <= "00"; wait for 5 ns;
a <= "01"; b <= "00"; SEL <= "01"; wait for 5 ns;
a <= "01"; b <= "00"; SEL <= "10"; wait for 5 ns;
a <= "01"; b <= "00"; SEL <= "11"; wait for 5 ns;

a <= "01"; b <= "01"; SEL <= "00"; wait for 5 ns;
a <= "01"; b <= "01"; SEL <= "01"; wait for 5 ns;
a <= "01"; b <= "01"; SEL <= "10"; wait for 5 ns;
a <= "01"; b <= "01"; SEL <= "11"; wait for 5 ns;

a <= "01"; b <= "10"; SEL <= "00"; wait for 5 ns;
a <= "01"; b <= "10"; SEL <= "01"; wait for 5 ns;
a <= "01"; b <= "10"; SEL <= "10"; wait for 5 ns;
a <= "01"; b <= "10"; SEL <= "11"; wait for 5 ns;

a <= "01"; b <= "11"; SEL <= "00"; wait for 5 ns;
a <= "01"; b <= "11"; SEL <= "01"; wait for 5 ns;
a <= "01"; b <= "11"; SEL <= "10"; wait for 5 ns;
a <= "01"; b <= "11"; SEL <= "11"; wait for 5 ns;

a <= "10"; b <= "00"; SEL <= "00"; wait for 5 ns;
a <= "10"; b <= "00"; SEL <= "01"; wait for 5 ns;
a <= "10"; b <= "00"; SEL <= "10"; wait for 5 ns;
a <= "10"; b <= "00"; SEL <= "11"; wait for 5 ns;

a <= "10"; b <= "01"; SEL <= "00"; wait for 5 ns;
a <= "10"; b <= "01"; SEL <= "01"; wait for 5 ns;
a <= "10"; b <= "01"; SEL <= "10"; wait for 5 ns;
a <= "10"; b <= "01"; SEL <= "11"; wait for 5 ns;

a <= "10"; b <= "10"; SEL <= "00"; wait for 5 ns;
a <= "10"; b <= "10"; SEL <= "01"; wait for 5 ns;
a <= "10"; b <= "10"; SEL <= "10"; wait for 5 ns;
a <= "10"; b <= "10"; SEL <= "11"; wait for 5 ns;

a <= "10"; b <= "11"; SEL <= "00"; wait for 5 ns;
a <= "10"; b <= "11"; SEL <= "01"; wait for 5 ns;
a <= "10"; b <= "11"; SEL <= "10"; wait for 5 ns;
a <= "10"; b <= "11"; SEL <= "11"; wait for 5 ns;

a <= "11"; b <= "00"; SEL <= "00"; wait for 5 ns;
a <= "11"; b <= "00"; SEL <= "01"; wait for 5 ns;
a <= "11"; b <= "00"; SEL <= "10"; wait for 5 ns;
a <= "11"; b <= "00"; SEL <= "11"; wait for 5 ns;

a <= "11"; b <= "01"; SEL <= "00"; wait for 5 ns;
a <= "11"; b <= "01"; SEL <= "01"; wait for 5 ns;
a <= "11"; b <= "01"; SEL <= "10"; wait for 5 ns;
a <= "11"; b <= "01"; SEL <= "11"; wait for 5 ns;

a <= "11"; b <= "10"; SEL <= "00"; wait for 5 ns;
a <= "11"; b <= "10"; SEL <= "01"; wait for 5 ns;
a <= "11"; b <= "10"; SEL <= "10"; wait for 5 ns;
a <= "11"; b <= "10"; SEL <= "11"; wait for 5 ns;

a <= "11"; b <= "11"; SEL <= "00"; wait for 5 ns;
a <= "11"; b <= "11"; SEL <= "01"; wait for 5 ns;
a <= "11"; b <= "11"; SEL <= "10"; wait for 5 ns;
a <= "11"; b <= "11"; SEL <= "11"; wait for 5 ns;

    wait;
    end process;
end architecture behavior;
    
