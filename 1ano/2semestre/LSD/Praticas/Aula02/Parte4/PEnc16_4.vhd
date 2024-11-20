library IEEE;
use IEEE.std_logic_1164.all;

entity PEnc16_4 is
    port(
        decodedIn   : in std_logic_vector (15 downto 0);
        encodedOut  : out std_logic_vector (3 downto 0);
        validOut    : out std_logic);
end PEnc16_4;

architecture Behavioral of PEnc16_4 is
begin
  process(decodedIn)
  begin
    validOut <= '1';
    
    if (decodedIn(0) = '1') then
        encodedOut <= "0000";
    elsif (decodedIn(1) = '1') then
        encodedOut <= "0001";
    elsif (decodedIn(2) = '1') then
        encodedOut <= "0010";
    elsif (decodedIn(3) = '1') then
        encodedOut <= "0011";
    elsif (decodedIn(4) = '1') then
        encodedOut <= "0100";
    elsif (decodedIn(5) = '1') then
        encodedOut <= "0101";
    elsif (decodedIn(6) = '1') then
        encodedOut <= "0110";
    elsif (decodedIn(7) = '1') then
        encodedOut <= "0111";
    elsif (decodedIn(8) = '1') then
        encodedOut <= "1000";
    elsif (decodedIn(9) = '1') then
        encodedOut <= "1001";
    elsif (decodedIn(10) = '1') then
        encodedOut <= "1010";
    elsif (decodedIn(11) = '1') then
        encodedOut <= "1011";
    elsif (decodedIn(12) = '1') then
        encodedOut <= "1100";
    elsif (decodedIn(13) = '1') then
        encodedOut <= "1101";
    elsif (decodedIn(14) = '1') then
        encodedOut <= "1110";
    elsif (decodedIn(15) = '1') then
        encodedOut <= "1111";
    else
	     validOut <= '0';
        encodedOut <=  "XXXX";
		end if;
  end process;
end Behavioral;
			
