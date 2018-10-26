LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Maquina_estados IS 
PORT(
		Clock, X, reset: IN STD_LOGIC; 	
		Saida: OUT STD_LOGIC_VECTOR (1 downto 0)
);
END Maquina_estados;

ARCHITECTURE RTL OF Maquina_estados IS

	TYPE tipo_estado IS (A, B, C, D);
	signal estado: tipo_estado;

	BEGIN 
		process(Clock, reset) begin
		
			if reset = '1' then
				estado <= A;
				
			ELSIF rising_edge(clock) THEN
					case estado is
						when A =>
							if X = '1' then
								estado <= B;
							-- Saida <= "01";
							end if;
							
						when B =>
							if X = '1' then
								estado <= C;
							-- Saida <= "10";
							end if;
							
						when C =>
							if X = '1' then
								estado <= D;
							-- Saida <= "11";
							end if;
							
						when D =>
							if X = '1' then
									estado <= B;
									-- Saida <= "01";
							else
									estado <= A;
									-- Saida <= "00"
							end if;
						when others =>
							estado <= A;
							
					end case;
				
			end if;
				
		end process;
		
		WITH estado SELECT 
			Saida <= "00" when A,
						"01" when B,
						"10" when C,
						"11" when D;
		
END RTL;	
