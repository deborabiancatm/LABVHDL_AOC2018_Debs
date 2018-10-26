library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Extender8to16 is
    Port (
			A : IN STD_LOGIC_VECTOR (7 downto 0);
			B : OUT STD_LOGIC_VECTOR (15 downto 0));
end Extender8to16;

architecture behavior of Extender8to16 is

	begin
	
		B <= "00000000" & A;
	
end behavior;