library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_caricamento is
	port(
		CLK, RESET,LOAD		: in  std_logic;
		DATA			: in  std_logic_vector(0 to 3);
     		Y			: out std_logic_vector(0 to 3)	
	);

end entity cont_caricamento;


architecture behavioral of cont_caricamento is
	signal temp: unsigned(0 to 3);

begin
	count: process(CLK, RESET)
	begin
		if RESET = '1' then
			temp <= "0000";
		elsif rising_edge(CLK) then
			if LOAD = '1' then
			temp <= unsigned(DATA);
			else
			temp <= temp + 1;
			end if;
		end if;	
	end process count;

	Y <= std_logic_vector(temp);
end architecture behavioral;	
