library ieee;
use ieee.std_logic_1164.all;

entity D_FF is 
	port (
		CLK,D	: in  std_logic;
   		Q	: out std_logic	
	);

end D_FF;


architecture RTL_RE of D_FF is
begin
	FF: process(CLK)
	begin
		if falling_edge(clk) then
			Q <= D;
		end if;
	end process;
end RTL_RE;
