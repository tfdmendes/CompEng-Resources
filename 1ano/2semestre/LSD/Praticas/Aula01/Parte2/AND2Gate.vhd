-- BIBLIOTECAS
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--Interface (portos)
entity AND2GATE is 
	port (inPort0 : in std_logic;
			inPort1 : in std_logic;
			outPort : out std_logic);
end AND2GATE;

-- IMPLEMENTAÇAO (descriçao de funcionalidade)
architecture Behavioral of AND2GATE is
begin 
	
	outPort <= inPort0 and inPort1;
end Behavioral;
