LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY COUNT_SINC IS
	PORT ( 
	
	clear, clock: IN STD_LOGIC ;
	Q : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0) 
	
	);
END COUNT_SINC ;

ARCHITECTURE count OF COUNT_SINC IS
BEGIN
	COUNT_SINC: PROCESS (clock)
	BEGIN
		IF (clock'EVENT AND clock = '1') THEN
			IF clear = '1' THEN
			Q <= "00" ;
			ELSE
			Q <= Q + '1' ;
			END IF ;
		END IF;
	END PROCESS;
END count ;