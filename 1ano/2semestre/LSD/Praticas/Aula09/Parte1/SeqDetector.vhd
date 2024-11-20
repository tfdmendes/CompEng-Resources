library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(SW : in std_logic_vector(1 downto 0);
	     CLOCK_50 : in std_logic;
		  LEDR : out std_logic_vector(0 downto 0);
		  LEDG : out std_logic_vector(0 downto 0));
end SeqDetector;

architecture Behavioral  of SeqDetector is
	signal clock, sw0_ff_out, sw1_ff_out: std_logic;
begin


    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            sw0_ff_out <= SW(0);
				sw1_ff_out <= SW(1);
        end if;
    end process;

	divisor : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 250000000)
		port map(clkIn => CLOCK_50,
					clkOut => clock);
					
	system_core : entity work.SeqDetFSM(MealyArch)
		port map(reset    => sw1_ff_out,
					clk      => clock,
					xIn   => sw0_ff_out,
					zOut => LEDR(0));
					
	LEDG(0) <= clock;
	
end Behavioral;