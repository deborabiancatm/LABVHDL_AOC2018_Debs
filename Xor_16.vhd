Library ieee;
use ieee.std_logic_1164.all;

Entity Xor_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	End Xor_16;

Architecture behavior of Xor_16 is

COMPONENT And_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;

COMPONENT Or_16 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;

COMPONENT Not_16 is
	Port(
		A: IN STD_LOGIC_VECTOR(15 downto 0);
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End COMPONENT;

SIGNAL Negado1: STD_LOGIC_VECTOR(15 downto 0);
SIGNAL Negado2: STD_LOGIC_VECTOR(15 downto 0);
SIGNAL signal_result1: STD_LOGIC_VECTOR(15 downto 0);
SIGNAL signal_result2: STD_LOGIC_VECTOR(15 downto 0);

BEGIN

	Inv1: NOT_16 PORT MAP((A), Negado1);
	Inv2: NOT_16 PORT MAP((B), Negado2);
	G1: And_16 PORT MAP(A, Negado2, signal_result1);
	G2: And_16 PORT MAP(Negado1, B, signal_result2);
	G3: Or_16 PORT MAP(signal_result1, signal_result2, Saida);
	
END behavior;