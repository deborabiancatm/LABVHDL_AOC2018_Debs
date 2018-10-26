Library ieee;
use ieee.std_logic_1164.all;

Entity MAnd is
	Port(
		A, B : IN STD_LOGIC;
		Result : OUT STD_LOGIC
		);
	End MAnd;

Architecture behavior of MAnd is

BEGIN

	Result <= A AND B;
	
END behavior;