
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulo_logico_tb is
end entity modulo_logico_tb;

architecture Behavior of modulo_logico_tb is

    -- component to test
component modulo_logico is
port (
a_in	: in std_logic_vector(1 downto 0);
b_in	: in std_logic_vector(1 downto 0);

y_and	: out std_logic_vector(1 downto 0);
y_xor	: out std_logic_vector(1 downto 0);
y_or	: out std_logic_vector(1 downto 0)
);

end component modulo_logico;

    -- signal to map to component
signal a_in : std_logic_vector(1 downto 0);
 signal  b_in : std_logic_vector(1 downto 0);
 signal  y_and : std_logic_vector(1 downto 0);
 signal  y_or : std_logic_vector(1 downto 0);
 signal  y_xor : std_logic_vector(1 downto 0);

begin
    -- map signals
    uut: modulo_logico port map ( a_in=>a_in,
				b_in=>b_in,
				y_and=>y_and,
				y_xor=>y_xor,
				y_or=>y_or);


    stimulus: process is
    begin
    -- Test case 1:  A="00", B="00" | Expected: Y_and="00", Y_xor="00", Y_or="00"
	a_in <= "00";
	b_in <= "00";

	wait for 10 ns;

    -- Test case 2:  A="00", B="01" | Expected: Y_and="00", Y_xor="01", Y_or="01"
	a_in <= "00";
	b_in <= "01";

	wait for 10 ns;

    -- Test case 3:  A="00", B="10" | Expected: Y_and="00", Y_xor="10", Y_or="10"
	a_in <= "00";
	b_in <= "10";

	wait for 10 ns;

    -- Test case 4:  A="00", B="11" | Expected: Y_and="00", Y_xor="11", Y_or="11"
	a_in <= "00";
	b_in <= "11";

	wait for 10 ns;

    -- Test case 5:  A="01", B="00" | Expected: Y_and="00", Y_xor="01", Y_or="01"
	a_in <= "01";
	b_in <= "00";

	wait for 10 ns;

    -- Test case 6:  A="01", B="01" | Expected: Y_and="01", Y_xor="00", Y_or="01"
	a_in <= "01";
	b_in <= "01";

	wait for 10 ns;

    -- Test case 7:  A="01", B="10" | Expected: Y_and="00", Y_xor="11", Y_or="11"
	a_in <= "01";
	b_in <= "10";

	wait for 10 ns;

    -- Test case 8:  A="01", B="11" | Expected: Y_and="01", Y_xor="10", Y_or="11"
	a_in <= "01";
	b_in <= "11";
	
	wait for 10 ns;
	
    -- Test case 9:  A="10", B="00" | Expected: Y_and="00", Y_xor="10", Y_or="10"
	a_in <= "10";
	b_in <= "00";

	wait for 10 ns;

    -- Test case 10: A="10", B="01" | Expected: Y_and="00", Y_xor="11", Y_or="11"
	a_in <= "10";
	b_in <= "01";

	wait for 10 ns;

    -- Test case 11: A="10", B="10" | Expected: Y_and="10", Y_xor="00", Y_or="10"
	a_in <= "10";
	b_in <= "10";

	wait for 10 ns;

    -- Test case 12: A="10", B="11" | Expected: Y_and="10", Y_xor="01", Y_or="11"
	a_in <= "10";
	b_in <= "11";

	wait for 10 ns;

    -- Test case 13: A="11", B="00" | Expected: Y_and="00", Y_xor="11", Y_or="11"
	a_in <= "11";
	b_in <= "00";

	wait for 10 ns;

    -- Test case 14: A="11", B="01" | Expected: Y_and="01", Y_xor="10", Y_or="01"
	a_in <= "11";
	b_in <= "01";
	
	wait for 10 ns;

    -- Test case 15: A="11", B="10" | Expected: Y_and="10", Y_xor="01", Y_or="11"
	a_in <= "11";
	b_in <= "10";

	wait for 10 ns;

    -- Test case 16: A="11", B="11" | Expected Y_and="11", Y_xor="00", Y_or="11"
	a_in <= "11";
	b_in <= "11";
	
	wait for 10 ns;	

    -- Fine della simulazione

    wait;
    end process;
end architecture behavior;
    
