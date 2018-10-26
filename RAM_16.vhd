library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity RAM_16 is
  port (
    write_mem, clock : in  std_logic;
    address : in  std_logic_vector(3 downto 0);
    A : in  std_logic_vector(15 downto 0);
    Saida : out std_logic_vector(15 downto 0)
  );
end entity RAM_16;

architecture MEMO of RAM_16 is

   -- type RAM is array (0 to (2**address'length)-1) of std_logic_vector(A'range);
	type RAM_ARRAY is array (0 to 65535) of std_logic_vector(15 downto 0);
   signal RAM : RAM_ARRAY;
   signal read_address : std_logic_vector(3 downto 0);

begin

	process(clock, write_mem, address, A) is
	begin
		if rising_edge(clock) then
			if (write_mem = '1') then
				RAM(to_integer(unsigned(address))) <= A;
				
			end if;
			
			--read_address <= address;
			
		end if;
	end process ;

	Saida <= RAM(to_integer(unsigned(address)));

end architecture MEMO;
