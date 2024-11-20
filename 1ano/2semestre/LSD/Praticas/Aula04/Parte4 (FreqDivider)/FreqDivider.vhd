library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FreqDivider is
	port(clkIn		:	in std_logic;
			k			: 	in std_logic_vector(31 downto 0);
			clkOut	:	out std_logic);
end FreqDivider;

architecture Behavioral of FreqDivider is
	signal s_counter	:	unsigned(31 downto 0);
	signal s_halfWay	:	unsigned(31 downto 0);
begin
	s_halfWay	<= (unsigned(k) /2);
	
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
		   -- Incrementa o contador a cada transição de subida do relógio
			s_counter <= s_counter + 1;
			
			 -- Verifica se o contador atingiu metade do valor de k
			if (s_counter = s_halfWay -1) then
				clkOut <= '1';
			elsif (s_counter = s_halfWay) then
					clkOut <= '0';
					s_counter <= (others =>'0'); --Reseta o contador
			end if;
		end if;
	end process;
end Behavioral;