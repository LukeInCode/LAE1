
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_ps_tb is
end entity reg_ps_tb;

architecture Behavior of reg_ps_tb is

    -- component to test
component reg_ps is
generic(n: integer);
port(
reset, clk, load	: in std_logic;
x			: in std_logic_vector(n - 1 downto 0);
y			: out std_logic
);

end component;

    constant n: integer := 2; 
    signal reset, clk, load : std_logic := '1'; 
    signal x : std_logic_vector(n - 1 downto 0); 
    signal y : std_logic; 

begin
    -- map signals
    uut: reg_ps generic map ( n=>n)
				port map ( reset=>reset,
				 clk=> clk,
				 load=> load,
				x=>x,
				y=>y);


   clk_process: process is begin 
		clk <= not clk; 
		wait for 5 ns; 
	end process; 
	
	stimulus: process is 
	begin 
		reset <= '1';
	       	wait for 15 ns;

		reset <= '0';
	       	load <= '1'; 
		x <= "10";
	       	wait for 10 ns; 

		load <= '0';
	       	wait for 20 ns; 
		wait; 
	end process; 
end architecture behavior;  

    
