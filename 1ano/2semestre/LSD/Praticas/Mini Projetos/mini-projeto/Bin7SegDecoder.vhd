library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port
	(
		binInput : in std_logic_vector(3 downto 0);
		enable   : in std_logic;
		decOut_n : out std_logic_vector(6 downto 0)
	);
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	decOut_n <= "1111111" when (enable = '1')      else     --disabled by default
					"1111001" when (binInput = "0001") else --1
					"0100100" when (binInput = "0010") else --2
					"0110000" when (binInput = "0011") else --3
					"0011001" when (binInput = "0100") else --4
					"1000000"; --0
end Behavioral;