library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ProgramaC is
    Port (
        CLK         : in std_logic;
        Enable      : in std_logic;
        LEDROUT     : out std_logic_vector(3 downto 0);
        LEDGOUT     : out std_logic_vector(3 downto 0)
    );
end ProgramaC;

architecture Behavioral of ProgramaC is
    signal blinkSignal : std_logic;
begin
    blinkInstance: entity work.BlinkGenerator(Behavioral)
        generic map (NUMBER_STEPS => 25_000_000)
        port map (
            clk    => CLK,
            blink  => blinkSignal
        );

    LEDControl: process(CLK)
    begin
        if rising_edge(CLK) then
            if Enable = '1' then
                LEDGOUT <= (others => blinkSignal);
                LEDROUT <= (others => '0');
            else
                LEDROUT <= (others => '0');
                LEDGOUT <= (others => '0');
            end if;
        end if;
    end process;

end Behavioral;