library ieee;
use ieee.std_logic_1164.all;


entity REG_PP_4_BIT is
	port(
		CLK, RESET	: in std_logic;
    		X		: in std_logic_vector(3 downto 0);

		Y		: out std_logic_vector(3 downto 0)	
	);

end entity REG_PP_4_BIT;


architecture behavioral of REG_PP_4_BIT is
begin
	clock: process(CLK, RESET) 
	begin
		if RESET = '1' then
			Y <= "0000";
		elsif RESET = '0' and rising_edge(CLK) then
			Y <= X;
		end if;
	end process;
end architecture behavioral;
