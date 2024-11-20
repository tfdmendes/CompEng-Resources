library IEEE;
use ieee.std_logic_1164.all;

entity ProgramSelector is
    Port (
        input        : in  std_logic_vector(1 downto 0);
        ProgramaA   : out std_logic;
        ProgramaB   : out std_logic;
        ProgramaC   : out std_logic;
        programaD   : out std_logic
    );
end ProgramSelector;

architecture Behavioral of ProgramSelector is
begin
    ProgramaA <= '1' when input = "00" else '0';
    ProgramaB <= '1' when input = "01" else '0';
    ProgramaC <= '1' when input = "10" else '0';
    ProgramaD <= '1' when input = "11" else '0';
end Behavioral;
