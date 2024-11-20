library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo is
    port (KEY  : in  std_logic_vector(0 downto 0);
          SW   : in  std_logic_vector(3 downto 0);
          HEX0 : out std_logic_vector(6 downto 0);
          LEDR : out std_logic_vector(6 downto 0);
          LEDG : out std_logic_vector(3 downto 0));
end DisplayDemo;

architecture Shell of DisplayDemo is
	signal s_decOut : std_logic_vector(6 downto 0);
begin
    system_core : entity work.Bin7SegDecoder(Behavioral)
                    port map(binInput  => SW,
										enable   => KEY(0),
										decOut_n => s_decOut);
									
										HEX0 <= s_decOut;	
										LEDR <= s_decOut;	-- Segmentos desligados
										LEDG <= 	SW;		-- Corresponde à forma binaria do numero/letra correspondente					  
end Shell;