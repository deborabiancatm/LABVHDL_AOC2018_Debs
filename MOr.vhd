Library ieee;
use ieee.std_logic_1164.all;

Entity MOr is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
	End MOr;

Architecture behavior of MOr is

BEGIN

	result <= A OR B;
	
END behavior;