-- Dichiarazione delle librerie
library ieee;
use ieee.std_logic_1164.all;

-- Definizione dell'entity: Interfaccia esterna porta AND
entity porta_and is
	port(
		A	: in std_logic; -- Ingresso uno
    		B	: in std_logic; -- Ingresso due
		Y	: out std_logic -- Uscita	
	);

end entity porta_and;

-- Definizione dell'architecture, ovvero il comportamento
architecture behavioral of porta_and is
begin
	-- Assegnazione cincorrente: Y è il risultato dell'AND tra A e B
	Y <= A and B;

end architecture behavioral;
