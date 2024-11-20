library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(enable   : in  std_logic;
		 binInput_units : in  std_logic_vector(3 downto 0);
		 binInput_dozens : in  std_logic_vector(3 downto 0);
		 decOut_u : out std_logic_vector(6 downto 0);
		 decOut_d : out std_logic_vector(6 downto 0)

	);
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	decOut_u <= "1111111" when (enable = '0')   else -- null
				"1000000" when (binInput_units = "0000") else -- 0
				"1111001" when (binInput_units = "0001") else -- 1
				"0100100" when (binInput_units = "0010") else -- 2
				"0110000" when (binInput_units = "0011") else -- 3
				"0011001" when (binInput_units = "0100") else -- 4
				"0010010" when (binInput_units = "0101") else -- 5
				"0000010" when (binInput_units = "0110") else -- 6
				"1111000" when (binInput_units = "0111") else -- 7
				"0000000" when (binInput_units = "1000") else -- 8
				"0010000"; -- 9

				
		decOut_d <= "1111111" when (enable = '0')   else -- null
				"1111001" when (binInput_dozens = "0001") else -- 1
				"1000000"; -- 0

end Behavioral;	