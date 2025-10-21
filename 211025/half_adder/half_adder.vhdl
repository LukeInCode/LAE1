--Dichiarazione delle librerie
library ieee;
use ieee.std_logic_1164.all;

--Definizione dell'entity
entity half_adder is
	port(
		A	: in std_logic;
		B	: in std_logic;
		Sum	: out std_logic;
		Carry	: out std_logic
	)

end entity half_adder;

--Definizione dell'architettura
architecture behavioral of half_adder is
begin
	Sum <= A xor B;
	Carry <= A and B;

end architecture behavioral;
