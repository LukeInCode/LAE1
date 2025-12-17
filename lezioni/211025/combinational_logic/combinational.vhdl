library ieee;
use ieee.std_logic_1164.all;

-- Dichiarazione dell'Entità (Interfaccia)
entity combinational_logic is
    port (
        A : in  std_logic; -- Ingresso 1
        B : in  std_logic; -- Ingresso 2 (anche negato)
        C : in  std_logic; -- Ingresso 3
        Y : out std_logic  -- Uscita finale
    );
end entity combinational_logic;

-- Descrizione dell'Architettura (Logica)
architecture behavioral of combinational_logic is

    -- Dichiariamo due segnali interni per modellare le uscite delle porte AND in parallelo
    signal AND1_OUT : std_logic;
    signal AND2_OUT : std_logic;

begin

    -- Implementazione della prima porta AND: A AND B
    -- Questa è una dichiarazione concorrente.
    AND1_OUT <= A and B;

    -- Implementazione della seconda porta AND: C AND NOT B
    -- Questa è una dichiarazione concorrente, NOT B è gestito internamente.
    AND2_OUT <= C and not B;

    -- Implementazione della porta OR finale: (AND1_OUT) OR (AND2_OUT)
    -- Questa è una dichiarazione concorrente finale che unisce i risultati.
    Y <= AND1_OUT or AND2_OUT;

end architecture behavioral;

