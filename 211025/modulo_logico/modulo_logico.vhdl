library ieee;
use ieee.std_logic_1164.all;

entity Modulo_Logico is
	port (
		A_in	: in std_logic_vector(1 downto 0);
   		B_in	: in std_logic_vector(1 downto 0);
		
		Y_and	: out std_logic_vector(1 downto 0);
		Y_xor	: out std_logic_vector(1 downto 0);
		Y_or	: out std_logic_vector(1 downto 0)
	);

end entity Modulo_logico;

architecture behavioral of Modulo_logico is
begin
	Y_and	<= A_in and B_in;
	Y_xor	<= A_in xor B_in;
	Y_or	<= A_in or  B_in;

end architecture behavioral;
