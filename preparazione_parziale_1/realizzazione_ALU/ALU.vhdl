library ieee;
use ieee.std_logic_1164.all;

entity alu is
	
	port(
		A,B	: in std_logic;
       		SEL	: in std_logic_vector(1 downto 0);
		Y	: out std_logic	
	);

end entity;


architecture behavioral of alu is
begin
	with SEL select
		Y <= (A and B) when "00",
		     (A or B)  when "01",
		     (A xor B) when "10",
		     (not A)   when "11",
		     '0'      when others;

end architecture;	
