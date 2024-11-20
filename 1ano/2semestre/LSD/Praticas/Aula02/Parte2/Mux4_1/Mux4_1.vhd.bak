library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
    port(sel    : in  std_logic_vector(1 downto 0);
         dataIn : in  std_logic_vector(3 downto 0);
         dataOut: out std_logic);
end Mux4_1;

architecture BehavAssign of Mux4_1 is
begin
    dataOut <= dataIn(0) when sel = ("00") else
                    dataIn(1) when sel = ("01") else
                    dataIn(2) when sel = ("10") else
                    dataIn(3);    
end BehavAssign;