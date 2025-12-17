library ieee;
use ieee.std_logic_1164.all;

entity rca is
	port(
		A,B	: in std_logic_vector(1 downto 0);
		SUM	: out std_logic_vector(1 downto 0);
		COUT	: out std_logic
    			
	);

end entity;


architecture behavioral of rca is
	
	component full_adder
		port(
			A,B,CIN	: in std_logic;
	    		Y,COUT	: out std_logic	
		);
	end component;
	
	signal	FA1_COUT	: std_logic;

begin
	m0: full_adder port map(A(0),B(0),'0',SUM(0),FA1_COUT);
	m1: full_adder port map(A(1),B(1),FA1_COUT,SUM(1),COUT);

end architecture;
