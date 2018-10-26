library ieee;
use ieee.std_logic_1164.all;

ENTITY Unidade_de_controle is 
	Port (
		opcode : in STD_LOGIC_VECTOR(3 downto 0);
		-- funct : in STD_LOGIC_VECTOR(3 downto 0);	
		ulaop : out std_logic_vector(2 downto 0);
		jump, aluSrc, memWrite, memRead, memToReg,  branch : out std_logic
	);
	END Unidade_de_controle;
	
Architecture behavior of Unidade_de_controle is 

BEGIN 

		-- Flag para verificar se será feito um salto incondicional - valores imediatos - ou para um endereço no registrador.
		with opcode select
					jump <= 	'1' when "0110",
								'1' when "0111",
								'1' when "1000",
								'0' when others;
		
		-- Flag para a ULA saber se o valor a ser lido será proveniente do banco de registradores ou dos 8 bits menos significativos.
		with opcode select
				 aluSrc <= 	'1' when "0001",
								'1' when "0010",
								'0' when others;
								
		-- Código de operação que sairá para a ULA
		with opcode select
				  ulaop <=	"010" when "0000",
								"000" when "0001",
								"000" when "0010",
								"001" when "0011",
								"001" when "0100",
								"--" when others;
		
		-- Flag para indicar para a memória RAM se é para ler do endereço passado.
		with opcode select
				memRead <= 	'1' when "0001",
								'0' when others;
		
		-- Flag para indicar para a memória RAM se é para escrever no endereço passado.
		with opcode select
				memWrite <= '1' when "0010",
								'0' when others;
		
		-- Flag para indicar de onde vem o valor a ser escrito no registrador destino (ULA OU Memória de dados).
		with opcode select
				memToReg <= '1' when "0001",
								'0' when others;
		
		-- Flag para indicar que se será feito um salto condicional.
		with opcode select
				  branch <=	'1' when "0011",
								'1' when "0100",
								'0' when others;	
	
END behavior;