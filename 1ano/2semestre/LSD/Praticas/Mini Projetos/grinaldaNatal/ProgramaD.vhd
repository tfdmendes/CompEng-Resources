library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ProgramaD is
    Port (
        CLK         : in std_logic;
        Enable      : in std_logic;
        LEDROUT     : out std_logic_vector(3 downto 0);
        LEDGOUT     : out std_logic_vector(3 downto 0)
    );
end ProgramaD;

architecture Behavioral of ProgramaD is
    signal timer_output, last_timer_output : std_logic;
    signal s_1hz                           : std_logic;
    signal blink_red, blink_green          : std_logic;
    signal phase                           : std_logic := '0';

begin
    clkDividerN : entity work.CLkDividerN(Behavioral)
        generic map (divFactor => 50_000_000)
        port map(clkIn => CLK, 
						ClkOut => s_1hz);

    timer6s: entity work.TimerN(Behavioral)
        generic map (N => 6)
        port map (
            start    => '1',
            reset    => not Enable,  
            clk      => s_1hz,
            enable   => Enable,
            timerOut => timer_output
        );

    red_blink: entity work.BlinkGenerator(Behavioral)
        generic map (NUMBER_STEPS => 50_000_000)  -- for 1 Hz
        port map (clk => CLK, blink => blink_red);
          
    green_blink: entity work.BlinkGenerator(Behavioral)
        generic map (NUMBER_STEPS => 25_000_000)  -- for 2 Hz
        port map (clk => CLK, blink => blink_green);
          

    -- Update last_timer_output at every clock edge
    process(CLK)
    begin
        if rising_edge(CLK) then
            last_timer_output <= timer_output;

            if Enable = '1' then
                if last_timer_output = '1' and timer_output = '0' then
                    phase <= not phase; -- change phase after each complete timer cycle
                end if;

                if phase = '0' then
                    -- Phase 0: Green LEDs blink at 2 Hz, Red LEDs off
                    LEDGOUT <= (others => blink_green);
                    LEDROUT <= (others => '0');
                else
                    -- Phase 1: Red LEDs blink at 1 Hz, Green LEDs off
                    LEDGOUT <= (others => '0');
                    LEDROUT <= (others => blink_red);
                end if;
            else
                -- Reset all when not enabled
                LEDGOUT <= (others => '0');
                LEDROUT <= (others => '0');
                phase <= '0'; -- Reset phase to start with Green LEDs when enabled
            end if;
        end if;
    end process;
end Behavioral;
