library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		Cin	:  in std_logic;
    		A	:  in std_logic;
		B	:  in std_logic;
		Y	: out std_logic;
		COUT	: out std_logic	
	);
end entity;


architecture behavioral of full_adder is
	
	component half_adder 
		port(
			A, B	: in std_logic;
	    		Y, COUT	: out std_logic	
		);
	end component;

	signal HA1_SUM, HA1_COUT, HA2_COUT 	: std_logic;

begin
	m0:	half_adder port map(A,B,HA1_SUM,HA1_COUT);
	m1:	half_adder port map(HA1_SUM,CIN,Y,HA2_COUT);
	COUT <= HA1_COUT or HA2_COUT;
end architecture;
