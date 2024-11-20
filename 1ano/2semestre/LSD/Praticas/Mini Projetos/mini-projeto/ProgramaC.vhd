library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Programa3 is
    Port (
        CLK         : in std_logic; 
        Enable      : in std_logic; 
        Reset       : in std_logic; 
        LEDR        : out std_logic_vector(3 downto 0); 
        LEDG        : out std_logic_vector(3 downto 0)  
    );
end Programa3;

architecture Behavioral of Programa3 is
    signal blinkSignal : std_logic;
begin
    blinkInstance: entity work.blink_gen
        generic map (NUMBER_STEPS => 50_000_000) -- Para piscar uma vez por segundo com um clock de 50MHz
        port map (
            clk    => CLK,
            reset  => Reset,
            blink  => blinkSignal
        );
        
    LEDControl: process(blinkSignal)
    begin
        if Enable = '1' then
            LEDR <= (others => '0');
            LEDG <= (others => blinkSignal);
        else
            LEDR <= (others => '0');
            LEDG <= (others => '0');
        end if;
    end process;
end Behavioral;
