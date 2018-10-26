Library ieee;
use ieee.std_logic_1164.all;

Entity MUX_4 is
	Port(
		A, B, C, D: IN STD_LOGIC;
		S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Saida : OUT STD_LOGIC
		);
	END MUX_4;

Architecture behavior of MUX_4 is

BEGIN

	Saida <= (NOT(S(0)) AND NOT(S(1)) AND A) OR -- SEL = 00 Saida = A
		      (NOT(S(0)) AND	 	(S(1)) AND B) OR -- SEL = 01 Saida = B
					((S(0)) AND NOT(S(1)) AND C) OR -- SEL = 10 Saida = C
					((S(0)) AND 	(S(1)) AND D);   -- SEL = 11 Saida = D
	
END behavior;