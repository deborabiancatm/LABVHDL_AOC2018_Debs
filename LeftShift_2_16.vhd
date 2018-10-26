library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LeftShift_2_16 is
    Port (
			A : IN STD_LOGIC_VECTOR (15 downto 0);
			B : OUT STD_LOGIC_VECTOR (15 downto 0));
end LeftShift_2_16;

architecture behavior of LeftShift_2_16 is

	begin
	
		B <= A(13 downto 0) & "00";
	
end behavior;