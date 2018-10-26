Library ieee;
use ieee.std_logic_1164.all;

Entity Somador_4 is
	Port(
		A, B : IN STD_LOGIC_VECTOR(3 downto 0);
		negate : IN STD_LOGIC;
		cout : OUT STD_LOGIC;
		saida : OUT STD_LOGIC_VECTOR(3 downto 0)
		);
End Somador_4;

	
Architecture somador of Somador_4 is
BEGIN

	process(A,B,negate)
	variable temp, BorNotB: STD_LOGIC_VECTOR(3 downto 0);
	variable C : STD_LOGIC;
	
	BEGIN 
	
	-- SE  FOR SUBTRAÇÃO NEGA O B
	if (negate = '1') then
		BorNotB :=  NOT B;
	else
		BorNotB :=  B;
	end if;
	
	
	C := negate;
	
	-- REALIZA A SOMA OU SUBTRAÇÃO
	for i in 0 to 3 loop
		temp(i) := A(i) xor BorNotB(i) xor C;
		C := (A(i) and BorNotB(i)) or ((A(i) xor BorNotB(i)) and C);
	end loop;
	
	cout <= C;
	saida <= temp;
	
	END process;
	
END somador;