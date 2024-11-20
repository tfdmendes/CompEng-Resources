library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grinaldaNatal is
  port
  (
    CLOCK_50   : in std_logic;
    SW         : in std_logic_vector(2 downto 0);
    KEY        : in std_logic_vector(2 downto 0);
    LEDR       : out std_logic_vector(3 downto 0);
    LEDG       : out std_logic_vector(7 downto 4);
    HEX0      : out std_logic_vector(6 downto 0));

end entity grinaldaNatal;

architecture Shell of grinaldaNatal is
  signal s_enableA, s_enableB, s_enableC, s_enableD, s_1Hz : std_logic;
  signal s_red1, s_green1, s_red2, s_green2, s_red3, s_green3, s_red4, s_green4 : std_logic_vector(3 downto 0);
begin
	
	  selector: entity work.ProgramSelector(Behavioral)
    port map (input => SW(1 downto 0),
					ProgramaA => s_enableA,
					ProgramaB => s_enableB,
					ProgramaC => s_enableC,
					ProgramaD => s_enableD);

	
	 Bin7SegDecoderUnits  : entity work.Bin7SegDecoder(Behavioral)
			port map(enable         => SW(2),
					  binInput  		=> SW(1 downto 0),
					  decOut_n 			=> HEX0);
						
		 progA      : entity work.ProgramaA(Behavioral)
		 port map (Enable          => s_enableA,
					  LEDROUT         => s_red1,
					  LEDGOUT         => s_green1);

		 progB       : entity work.ProgramaB(Behavioral)
		 port map (CLK     		=> CLOCK_50,
					  Enable  		=> s_enableB,
					  LEDROUT    	=> s_red2,
					  LEDGOUT    	=> s_green2);

					  
		 progC         : entity work.ProgramaC(Behavioral)
		 port map (CLK     => CLOCK_50,
				     Enable  => s_enableC,
					  LEDROUT => s_red3,
					  LEDGOUT => s_green3);
		
		
		 progD         : entity work.ProgramaD(Behavioral)
		 port map (CLK     => CLOCK_50,
				     Enable  => s_enableD,
					  LEDROUT => s_red4,
					  LEDGOUT => s_green4);
					  
					  
					  
		LEDR <= s_red1 when s_enableA = '1' else
				  s_red2 when s_enableB = '1' else
				  s_red3 when s_enableC = '1' else
				  s_red4 when s_enableD = '1' else
				  (others => '0');
					
		LEDG <= s_green1 when s_enableA = '1' else
				  s_green2 when s_enableB = '1' else
				  s_green3 when s_enableC = '1' else
				  s_green4 when s_enableD = '1' else
				  (others => '0');
			  
end architecture;