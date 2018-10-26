Library ieee;
use ieee.std_logic_1164.all;

Entity Somador_4 is
	Port(
		A: IN STD_LOGIC_VECTOR(15 downto 0);
		cout : OUT STD_LOGIC;
		Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
		);
End Somador_4;

	
Architecture somador of Somador_4 is
BEGIN

	process(A)

	variable C: std_logic;
	variable B: std_logic_vector(15 downto 0);
	variable temp: std_logic_vector(15 downto 0);
	
	BEGIN 
		C:='0';
		B:="0000000000000100";
	
		for i in 0 to 15 loop
			temp(i) := A(i) xor B(i) xor C;
			C := (A(i) and B(i)) or ((A(i) xor B(i)) and C);
		end loop;
		
		cout <= C;
		saida <= temp;
	
	END process;
	
END somador;