Library ieee;
use ieee.std_logic_1164.all;

Entity NOT_1 is
	Port(
		A: IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
	End Not_1;

Architecture behavior of NOT_1 is

BEGIN

	Result <= NOT A;
	
END behavior;