library ieee;
use ieee.std_logic_1164.all;

entity ESE1 is
	port (
		A	: in std_logic;
   		B	: in std_logic;
		C	: in std_logic;
		Y	: out std_logic	
	);

end entity;


architecture arch1 of ESE1 is
	signal P1: std_logic;
	signal P2: std_logic;
	signal W1: std_logic;
begin
	W1 <= B xor C;
	P1 <= A and W1;
	P2 <= (not A) and (not B) and (not C);
	Y <= P1 or P2;

end architecture;
