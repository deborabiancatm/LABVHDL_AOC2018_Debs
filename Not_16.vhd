Library ieee;
use ieee.std_logic_1164.all;

Entity Not_16 is
	Port(
		A: IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	End Not_16;

Architecture behavior of Not_16 is

BEGIN

	Saida <= NOT A;
	
END behavior;