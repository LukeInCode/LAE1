library ieee;
use ieee.std_logic_1164.all;

entity D_FF is 
	port (
		CLK,D,RESET,PRESET	: in  std_logic;
   		Q			: out std_logic	
	);

end D_FF;


architecture RTL_RE of D_FF is
begin
	FF: process(CLK)
	begin
		if ( CLK 'event and CLK='1' ) then
			if ( RESET = '1'  ) then
				Q <= '0';
			elsif ( PRESET = '1'  ) then
			       Q <= '1';	
			else
				q <= D;
			end if;
		end if;
	end process;
end RTL_RE;
