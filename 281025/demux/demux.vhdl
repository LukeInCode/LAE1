library ieee;
use ieee.std_logic_1164.all;

entity demux is
	port(
		D		: in std_logic_vector(3 downto 0);
    		S		: in std_logic_vector(1 downto 0);
		
		Y0,Y1,Y2,Y3	: out std_logic_vector(3 downto 0)	
	);

end demux;


architecture arch_demux of demux is
begin
		with s select
			Y0 <= D when "00",
			      "0000" when others;
		with s select
			Y1 <= D when "01",
			      "0000" when others;
		with s select
			Y2 <= D when "10",
			      "0000" when others;
		with s select
			Y3 <= D when "11",
			      "0000" when others;

end arch_demux;
