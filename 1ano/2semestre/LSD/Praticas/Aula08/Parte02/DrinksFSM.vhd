library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity DrinksFSM is
	port( clk		: in std_logic;
			reset		: in std_logic;
			V, C		: in std_logic;
			drinkOut	: out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is
	type TState is (S0, S1, S2, S3, S4, S5);
	signal pState, nState : TState;
	
begin
	sync_proc 	: process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then 
				pState <= S0;
			else 
				pState <= nState;
			end if;
		end if;
	end process;
	
	comb_proc	: process(pState, V, C)
	begin
		case pState is
			when S0 =>
				drinkOut <= '0';
				if (V = '1') then
					nState <= S1;
				elsif (C = '1') then
					nState <= S3;
				else
					nState <= S0;
				end if;
				
			when S1 =>
				drinkOut <= '0';
				if (V = '1') then
					nState <= S2;
				elsif (C = '1') then
					nState <= S4;
				else
					nState <= S1;
				end if;
				
				
			when S2 =>
				drinkOut <= '0';
				if (V = '1') then
					nState <= S3;
				elsif (C = '1') then
					nState <= S5;
				else
					nState <= S2;
				end if;
			
			when S3 =>
				drinkOut <= '0';
				if (V = '1') then
					nState <= S4;
				elsif (C = '1') then
					nState <= S5;
				else
					nState <= S3;
				end if;
			
			when S4 =>
				drinkOut <= '0';
				if (V = '1') then
					nState <= S5;
				elsif (C = '1') then
					nState <= S5;
				else
					nState <= S4;
				end if;
			
			when S5 =>
				drinkOut <= '1';
				nState <= S0;
				
			when others =>
				nState <= S0;
				drinkOut <= '0';
			end case;
		end process;
	end Behavioral;