library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port
	(
		binInput : in  std_logic_vector(1 downto 0);
		enable   : in  std_logic;
		decOut_n : out std_logic_vector(6 downto 0)
	);
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	decOut_n <= "1111111" when (enable   = '0'   ) else -- disabled
					"0001000" when (binInput = "00") else --A
					"0000011" when (binInput = "01") else --b
					"1000110" when (binInput = "10") else --C
					"0100001" when (binInput = "11") else --d
					"1000000"; --0
end Behavioral;