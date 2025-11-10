library ieee;
use ieee.std_logic_1164.all;

entity circuito is
	port(
		A,B,EN	: in std_logic;
    		Y	: out std_logic	
	);
end entity;


architecture behavioral of circuito is
	
	signal S1,S2	: std_logic;

begin
	S1 <= A xor B;
	S2 <= A and (not B);

	Y <= EN and (S1 or S2);

end architecture;
