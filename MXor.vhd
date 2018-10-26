Library ieee;
use ieee.std_logic_1164.all;

Entity MXor is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
	End MXor;

Architecture behavior of MXor is

COMPONENT MAnd is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
End COMPONENT;

COMPONENT MOr is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
End COMPONENT;

COMPONENT NOT_1 is
	Port(
		A: IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
End COMPONENT;

SIGNAL Negado1: STD_LOGIC;
SIGNAL Negado2: STD_LOGIC;
SIGNAL signal_result1: STD_LOGIC;
SIGNAL signal_result2: STD_LOGIC;

BEGIN
	Inv1: NOT_1 PORT MAP (A, Negado1);
	Inv2: NOT_1 PORT MAP (B, Negado2);
	G1: MAnd PORT MAP(A, Negado2, signal_result1);
	G2: MAnd PORT MAP(Negado1, B, signal_result2);
	G3: MOr PORT MAP(signal_result1, signal_result2, Result);
	
END behavior;