library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer3_16 is
    Port( 
			Seletor : in  STD_LOGIC_VECTOR (2 downto 0);
         A, B, C, D, E, F, G, H: in STD_LOGIC_VECTOR (15 downto 0);
         Saida   : out STD_LOGIC_VECTOR (15 downto 0));
end Multiplexer3_16;

architecture behavior of Multiplexer3_16 is
BEGIN
	with Seletor select
		 Saida <= 	A when "000",
						B when "001",
						C when "010",
						D when "011",
						E when "100",
						F when "101",
						G when "110",
						H when "111";
END behavior;