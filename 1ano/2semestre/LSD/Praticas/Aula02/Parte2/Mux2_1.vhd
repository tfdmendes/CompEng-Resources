library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(sel : in std_logic;
		  dataIn0 : in std_logic;
		  dataIn1 : in std_logic;
		  dataOut : out std_logic);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	process(sel, dataIn0, dataIn1)
	begin
		if (sel = '0') then
			dataOut <= dataIn0;
		else
			dataOut <= dataIn1;
		end if;
	end process;
end Behavioral;