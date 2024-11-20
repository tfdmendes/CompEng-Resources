library IEEE;
use IEEE.std_logic_1164.all;

entity ShiftRegister_Demo is
    port(
        CLOCK_50      	: in std_logic;
        SW   				: in std_logic_vector(0 downto 0); 
        LEDR  				: out std_logic_vector(7 downto 0));
end entity ShiftRegister_Demo;

architecture Shell of ShiftRegister_Demo is
	signal 	s_1Hz	:	std_logic;
begin
	frequency_divider : entity work.ClkDividerN(Behavioral)
	generic map( divFactor => 50_000_000)
	port map(	clkIn => CLOCK_50, clkOut => s_1Hz);
					
	shift_register : entity work.ShiftRegisterN(Behavioral)
	generic map (size => 8)
	port map( clk => s_1Hz, sin => SW(0), dataOut => LEDR);
end Shell;