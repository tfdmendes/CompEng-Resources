library IEEE;
use IEEE.std_logic_1164.all;

entity DrinksMachine is
    port(   CLOCK_50 : in std_logic;
            SW       : in std_logic_vector(1 downto 0);
            KEY      : in std_logic_vector(0 downto 0);
            LEDR     : out std_logic_vector(0 downto 0);
            LEDG     : out std_logic_vector(0 downto 0));
end DrinksMachine;

architecture Shell of DrinksMachine is
    signal s_clk_1hz, sw0clean, sw1clean, reset_fsm : std_logic;
    signal reset_ff_out, V_ff_out, C_ff_out : std_logic;

begin
    -- Clock Divider to generate 1Hz clock signal
    clk_divider : entity work.ClkDividerN(Behavioral)
        generic map(divFactor => 50000000)
        port map(clkIn  => CLOCK_50,
                 clkOut => s_clk_1hz);
    LEDR(0) <= s_clk_1hz;

	 
	 
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            reset_ff_out <= KEY(0);
        end if;
    end process;
    reset_fsm <= not reset_ff_out;

	 
	 
	 
    -- Flip-Flop for SW(0) -> V
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            V_ff_out <= SW(0);
        end if;
    end process;

    -- Flip-Flop for SW(1) -> C
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            C_ff_out <= SW(1);
        end if;
    end process;

	 
    drink_core : entity work.DrinksFSM(Behavioral)
        port map(C         => C_ff_out,
                 V         => V_ff_out,
                 reset     => reset_fsm,
                 clk       => s_clk_1hz,
                 drinkOut  => LEDG(0));

end Shell;
