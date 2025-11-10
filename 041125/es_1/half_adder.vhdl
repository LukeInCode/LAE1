library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		A	:  in std_logic;
    		B	:  in std_logic;
		Y	: out std_logic;
		COUT	: out std_logic	
	);
end entity;

architecture behavioral of half_adder is
begin
	Y <= A xor B;
	COUT <= A and B;
end architecture;
