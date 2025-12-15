library ieee;
use ieee.std_logic_1164.all;

entity seq is
	port(
		CLK, B	: in std_logic;
    		O	: out std_logic	
	);

end seq;


architecture behavioral of seq is
	type STATUS is (nessuna, prima, seconda, terza);
	signal ps, ft: STATUS := nessuna;

begin
	output_process: process(ps) 
	begin
		if ps = terza then
			O <= '1';
		else 
			O <= '0';
		end if;
	end process;

	stato_fut_process: process(ft, B)
	begin
		if ps = nessuna then
			if b = '0' then
				ft <= nessuna;
			else
				ft <= prima;
			end if;
		elsif ps = prima then
			if b = '0' then
				ft <= seconda;
			else
				ft <= nessuna;
			end if;
		elsif ps = seconda then
			if b = '0' then
				ft <= nessuna;
			else
				ft <= terza;
			end if;
		else
			if b = '0' then
				ft <= seconda;
			else
				ft <= nessuna;
			end if;
		end if;
	end process;

	clk_process: process(CLK)
	begin
		if rising_edge(CLK) then
			ps <= ft;
		end if;
	end process;

end architecture behavioral;






