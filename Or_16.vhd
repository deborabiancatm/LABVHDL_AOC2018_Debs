Library ieee;
use ieee.std_logic_1164.all;

Entity Or_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	End Or_16;

Architecture behavior of Or_16 is

BEGIN

	Saida <= A OR B;
	
END behavior;