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


SIGNAL signal_result1: STD_LOGIC;
SIGNAL signal_result2: STD_LOGIC;

BEGIN

	G1: MAnd PORT MAP(A, NOT(B), signal_result1);
	G2: MAnd PORT MAP(NOT(A), B, signal_result2);
	G3: MOr PORT MAP(signal_result1, signal_result2, Result);
	
END behavior;