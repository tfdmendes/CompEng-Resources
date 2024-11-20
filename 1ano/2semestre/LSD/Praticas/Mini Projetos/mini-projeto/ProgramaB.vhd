library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Programa2 is
    Port (
        CLK         : in std_logic;
        Enable      : in std_logic;
        Reset       : in std_logic;
        LEDR        : out std_logic_vector(3 downto 0);
        LEDG        : out std_logic_vector(3 downto 0)
    );
end Programa2;

architecture Behavioral of Programa2 is
    signal blinkSignal : std_logic;
begin
    blinkInstance: entity work.blink_gen
        generic map (NUMBER_STEPS => 25_000_000)
        port map (
            clk    => CLK,
            reset  => Reset,
            blink  => blinkSignal
        );
        
    LEDControl: process(CLK)
    begin
        if rising_edge(CLK) then
            if Enable = '1' then
                LEDR <= (others => blinkSignal);
                LEDG <= (others => '0');
            else
                LEDR <= (others => '0');
                LEDG <= (others => '0');
            end if;
        end if;
    end process;

end Behavioral;
