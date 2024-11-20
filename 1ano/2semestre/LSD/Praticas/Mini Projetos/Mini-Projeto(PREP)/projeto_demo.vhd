	library IEEE;
	use IEEE.std_logic_1164.all;

	entity projeto_demo is
		 port(
			  CLOCK_50 	  : in std_logic;
			  KEY		  : in std_logic_vector(1 downto 0);
			  SW          : in std_logic_vector(1 downto 0);
			  LEDR        : out std_logic_vector(3 downto 0);
			  HEX0        : out std_logic_vector(6 downto 0);
			  HEX1        : out std_logic_vector(6 downto 0);
			  LEDG        : out std_logic_vector(0 downto 0)
		 );
	end projeto_demo;


	architecture Structural of projeto_demo is
		 signal pulseFreq, pulseStart, blinkSignal          : std_logic;
		 signal count_number                    : std_logic_vector(3 downto 0);
		 signal bcd_outUnits, bcd_outDozens     : std_logic_vector(3 downto 0);
		 
	begin 
		 FreqDivider         : entity work.ClkDividerN(Behavioral)
					generic map (divFactor  => 50000000)
					port map(clkIn          => CLOCK_50,
							  pulseOut        => pulseFreq);
							  
							  
		 Debouncer				: entity work.Debouncer(Behavioral)
					port map(refClk 			=> CLOCK_50,
								dirtyIn 			=> not(KEY(1)),
								pulsedOut 		=> pulseStart);

		 Counter             : entity work.Counter(Behavioral)
					port map(clk            => CLOCK_50,
								clkEn				=> pulseFreq,
							  reset           => not(KEY(0)),
							  enable          => SW(0),
							  max             => LEDG(0),
							  count           => count_number);
			

		 BinToBCD            : entity work.BinToBCD(Behavioral)
					port map(bindata    => count_number,
							  dec_out_d   => bcd_outDozens,
							  dec_out_u   => bcd_outUnits);
		 
		 Bin7SegDecoderUnits  : entity work.Bin7SegDecoder(Behavioral)
					port map(enable         => SW(1),
							  binInput_units  => bcd_outUnits,
							  binInput_dozens => bcd_outDozens,
							  decOut_u        => HEX0,
							  decOut_d 			=> HEX1);
							  

		BlinkGenerator : entity work.blink_gen
				generic map (NUMBER_STEPS => 12_500_000) -- Ajusta para 4Hz com base no CLOCK_50
				port map (
						clk   => CLOCK_50,
						reset => not(KEY(1)), -- Assumindo que KEY(1) possa ser usado como reset
						blink => blinkSignal
						);

				LEDR <= count_number when blinkSignal = '1' else
						(others => '0');

			
	end Structural;