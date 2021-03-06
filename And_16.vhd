Library ieee;
use ieee.std_logic_1164.all;

Entity And_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	End And_16;

Architecture behavior of And_16 is

BEGIN

	Saida <= A AND B;
	
END behavior;