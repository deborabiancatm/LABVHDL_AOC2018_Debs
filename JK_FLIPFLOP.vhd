LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY JK_FLIPFLOP IS 
	PORT (
	
	clock, j, k: in STD_LOGIC;
	input: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	output: out STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END JK_FLIPFLOP;
	
ARCHITECTURE jk OF JK_FLIPFLOP IS 
SIGNAL temp: STD_LOGIC_VECTOR(15 DOWNTO 0);
	
BEGIN
	PROCESS (clock, j, k, input) IS
		BEGIN
			
			IF clock = '1' THEN
				IF (J = '0' AND K = '0') THEN temp <= temp;
				ELSIF (J = '0' AND K = '1') THEN temp <= "0000000000000000";
				ELSIF (J = '1' AND K = '0') THEN temp <= "0000000000000000";
				ELSIF (J = '1' AND K = '1') THEN temp <= NOT temp;
				END IF;
			END IF;
	END PROCESS;
	output <= temp;
END jk;