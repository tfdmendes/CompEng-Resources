library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FreqDivider_Demo is
	port(CLOCK_50 	: in std_logic;
			LEDR		: out std_logic_vector(0 downto 0);
			);
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is
begin
	divisor	: entity work.FreqDivider(Behavioral)
			port map(clkIn => CLOCK_50,
						clkOut => LEDR(0),
						k => x"017D7840"); --25x10^6
end Structural