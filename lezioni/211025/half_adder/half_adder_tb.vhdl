library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end entity half_adder_tb;

architecture test of half_adder_tb is

	--Dichiarazione dei segnali interni per collegare l'entity DUT (Design Under Test)
	signal A_tb	: std_logic := '0';
	signal B_tb	: std_logic :='0';
	signal Sum_tb	: std_logic;
	signal Carry_tb : std_logic;

	
	--Dichiarazione del componente da testare
	component half_adder
		port(
			A 	: in std_logic;
			B	: in std_logic;
			Sum	: out std_logic;
			Carry	: out std_logic;
		);

	end component;

	--Costante per il ritardo di simulazione
	constant CLK_PERIOD : time := 10 ns;

begin
	--Istanza dell'half_adder (Collegamento del DUT al testbench)
	DUT: half_adder
	port map(
		A	=> A_tb,
		B	=> B_tb,
		Sum	=> Sum_tb,
		Carry	=> Carry_tb
	);

	--Processo di generazione degli stimoli
	stimulus_process : process
	begin
		--Test case 1: 0 + 0 = 0 (Somma) e 0 (Riporto)
		A_tb <= '0';
		B_tb <= '0';
		wait for CLK_PERIOD;

		--Test case 2: 0 + 1 = 1 (Somma) e 0 (Riporto)
		A_tb <= '0';
		B_tb <= '1';
		wait for CLK_PERIOD;

		--Test case 3: 1 + 0 = 1 (Somma) e 0 (Riporto)
		A_tb <= '1';
		B_tb <= '0';
		wait for CLK_PERIOD;

		--Test case 4: 1 + 1 = 1 (Somma) e 1 (Riporto)
		A_tb = '1';
		B_tb = '1';
		wait for CLK_PERIOD;

		--Fine della simulazione
		wait; -- Mantiene il processo inattivo indefinitivamente

	end process simulus_process;
end architecture test;

