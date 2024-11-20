library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BinToBCD is
	port( bindata : in std_logic_vector(3 downto 0);
			dec_out_u, dec_out_d : out std_logic_vector(3 downto 0)); -- saidas dezenas e unidades
end BinToBCD;

architecture Behavioral of BinToBCD is
	signal s_int, s_rem, s_dez: unsigned(3 downto 0);
begin
	s_dez <= to_unsigned(10,4);
	s_int <= unsigned(bindata)/s_dez; -- dividir o número de entrada por 10 para encontrar as dezenas
	s_rem <= unsigned(bindata) rem s_dez; -- calcular o resto da divisão por 10 para encontrar as unidades
	dec_out_u <= std_logic_vector(s_rem); 
	dec_out_d <= std_logic_vector(s_int); 
end Behavioral;