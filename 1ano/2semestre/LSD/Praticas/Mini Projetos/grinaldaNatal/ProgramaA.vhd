library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProgramaA is
    Port (
        Enable      : in std_logic; 
        LEDROUT    : out std_logic_vector(3 downto 0);
        LEDGOUT    : out std_logic_vector(3 downto 0));
end ProgramaA;

architecture Behavioral of ProgramaA is
begin
    process(Enable)
    begin
            if Enable = '1' then
                LEDROUT <= "1111";
                LEDGOUT <= "1111";
            else
                LEDROUT <= "0000";
                LEDGOUT <= "0000";
            end if;
    end process;
end Behavioral;