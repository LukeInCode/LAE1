library ieee;
use ieee.std_logic_1164.all;

entity alu_2bit is
	port(
	  A,B,SEL	: in std_logic_vector(1 downto 0);
      	  Y		: out std_logic_vector(1 downto 0)	
	);
end entity;

architecture behavioral of alu_2bit is

	component alu
		port(
			A,B	: in std_logic;
	    		SEL	: in std_logic_vector(1 downto 0);
			Y	: out std_logic	
		);
	
	end component;
	
	
begin
	m0: alu port map(A(0),B(0),SEL,Y(0));
	m1: alu port map(A(1),B(1),SEL,Y(1));

end architecture;

