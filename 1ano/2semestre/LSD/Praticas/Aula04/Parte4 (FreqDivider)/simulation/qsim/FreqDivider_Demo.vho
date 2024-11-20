-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "04/03/2024 17:59:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider IS
    PORT (
	clkIn : IN std_logic;
	k : IN std_logic_vector(31 DOWNTO 0);
	clkOut : OUT std_logic
	);
END FreqDivider;

-- Design Ports Information
-- k[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkOut	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[14]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[16]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[17]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[19]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[22]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[24]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[23]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[25]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[28]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[30]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[31]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkIn	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_k : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clkOut : std_logic;
SIGNAL \clkIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \clkIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \k[9]~input_o\ : std_logic;
SIGNAL \k[8]~input_o\ : std_logic;
SIGNAL \k[7]~input_o\ : std_logic;
SIGNAL \k[6]~input_o\ : std_logic;
SIGNAL \k[5]~input_o\ : std_logic;
SIGNAL \k[4]~input_o\ : std_logic;
SIGNAL \k[3]~input_o\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \k[10]~input_o\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \s_counter[0]~32_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \k[25]~input_o\ : std_logic;
SIGNAL \k[26]~input_o\ : std_logic;
SIGNAL \s_counter[9]~52\ : std_logic;
SIGNAL \s_counter[10]~53_combout\ : std_logic;
SIGNAL \s_counter[10]~54\ : std_logic;
SIGNAL \s_counter[11]~55_combout\ : std_logic;
SIGNAL \s_counter[11]~56\ : std_logic;
SIGNAL \s_counter[12]~57_combout\ : std_logic;
SIGNAL \s_counter[12]~58\ : std_logic;
SIGNAL \s_counter[13]~59_combout\ : std_logic;
SIGNAL \s_counter[13]~60\ : std_logic;
SIGNAL \s_counter[14]~61_combout\ : std_logic;
SIGNAL \s_counter[14]~62\ : std_logic;
SIGNAL \s_counter[15]~63_combout\ : std_logic;
SIGNAL \s_counter[15]~64\ : std_logic;
SIGNAL \s_counter[16]~65_combout\ : std_logic;
SIGNAL \s_counter[16]~66\ : std_logic;
SIGNAL \s_counter[17]~67_combout\ : std_logic;
SIGNAL \s_counter[17]~68\ : std_logic;
SIGNAL \s_counter[18]~69_combout\ : std_logic;
SIGNAL \s_counter[18]~70\ : std_logic;
SIGNAL \s_counter[19]~71_combout\ : std_logic;
SIGNAL \s_counter[19]~72\ : std_logic;
SIGNAL \s_counter[20]~73_combout\ : std_logic;
SIGNAL \s_counter[20]~74\ : std_logic;
SIGNAL \s_counter[21]~75_combout\ : std_logic;
SIGNAL \s_counter[21]~76\ : std_logic;
SIGNAL \s_counter[22]~77_combout\ : std_logic;
SIGNAL \s_counter[22]~78\ : std_logic;
SIGNAL \s_counter[23]~79_combout\ : std_logic;
SIGNAL \s_counter[23]~80\ : std_logic;
SIGNAL \s_counter[24]~81_combout\ : std_logic;
SIGNAL \s_counter[24]~82\ : std_logic;
SIGNAL \s_counter[25]~83_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \k[20]~input_o\ : std_logic;
SIGNAL \k[19]~input_o\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \k[11]~input_o\ : std_logic;
SIGNAL \k[12]~input_o\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \k[15]~input_o\ : std_logic;
SIGNAL \k[16]~input_o\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \k[21]~input_o\ : std_logic;
SIGNAL \k[22]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \k[24]~input_o\ : std_logic;
SIGNAL \k[23]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \k[17]~input_o\ : std_logic;
SIGNAL \k[18]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \k[14]~input_o\ : std_logic;
SIGNAL \k[13]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \k[27]~input_o\ : std_logic;
SIGNAL \k[28]~input_o\ : std_logic;
SIGNAL \s_counter[25]~84\ : std_logic;
SIGNAL \s_counter[26]~85_combout\ : std_logic;
SIGNAL \s_counter[26]~86\ : std_logic;
SIGNAL \s_counter[27]~87_combout\ : std_logic;
SIGNAL \Equal1~15_combout\ : std_logic;
SIGNAL \k[31]~input_o\ : std_logic;
SIGNAL \s_counter[27]~88\ : std_logic;
SIGNAL \s_counter[28]~89_combout\ : std_logic;
SIGNAL \s_counter[28]~90\ : std_logic;
SIGNAL \s_counter[29]~91_combout\ : std_logic;
SIGNAL \s_counter[29]~92\ : std_logic;
SIGNAL \s_counter[30]~93_combout\ : std_logic;
SIGNAL \s_counter[30]~94\ : std_logic;
SIGNAL \s_counter[31]~95_combout\ : std_logic;
SIGNAL \k[29]~input_o\ : std_logic;
SIGNAL \k[30]~input_o\ : std_logic;
SIGNAL \Equal1~16_combout\ : std_logic;
SIGNAL \Equal1~17_combout\ : std_logic;
SIGNAL \Equal1~18_combout\ : std_logic;
SIGNAL \Equal1~19_combout\ : std_logic;
SIGNAL \Equal1~20_combout\ : std_logic;
SIGNAL \s_counter~34_combout\ : std_logic;
SIGNAL \s_counter[0]~33\ : std_logic;
SIGNAL \s_counter[1]~35_combout\ : std_logic;
SIGNAL \s_counter[1]~36\ : std_logic;
SIGNAL \s_counter[2]~37_combout\ : std_logic;
SIGNAL \s_counter[2]~38\ : std_logic;
SIGNAL \s_counter[3]~39_combout\ : std_logic;
SIGNAL \s_counter[3]~40\ : std_logic;
SIGNAL \s_counter[4]~41_combout\ : std_logic;
SIGNAL \s_counter[4]~42\ : std_logic;
SIGNAL \s_counter[5]~43_combout\ : std_logic;
SIGNAL \s_counter[5]~44\ : std_logic;
SIGNAL \s_counter[6]~45_combout\ : std_logic;
SIGNAL \s_counter[6]~46\ : std_logic;
SIGNAL \s_counter[7]~47_combout\ : std_logic;
SIGNAL \s_counter[7]~48\ : std_logic;
SIGNAL \s_counter[8]~49_combout\ : std_logic;
SIGNAL \s_counter[8]~50\ : std_logic;
SIGNAL \s_counter[9]~51_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkIn <= clkIn;
ww_k <= k;
clkOut <= ww_clkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkIn~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N23
\clkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkOut~reg0_q\,
	devoe => ww_devoe,
	o => \clkOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

-- Location: CLKCTRL_G2
\clkIn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkIn~inputclkctrl_outclk\);

-- Location: IOIBUF_X40_Y73_N8
\k[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(9),
	o => \k[9]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\k[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(8),
	o => \k[8]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\k[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(7),
	o => \k[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\k[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(6),
	o => \k[6]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\k[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(5),
	o => \k[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\k[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(4),
	o => \k[4]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\k[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(3),
	o => \k[3]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

-- Location: LCCOMB_X46_Y70_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \k[1]~input_o\ $ (VCC)
-- \Add1~1\ = CARRY(\k[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \k[1]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X46_Y70_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\k[2]~input_o\ & (\Add1~1\ & VCC)) # (!\k[2]~input_o\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\k[2]~input_o\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X46_Y70_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\k[3]~input_o\ & ((GND) # (!\Add1~3\))) # (!\k[3]~input_o\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\k[3]~input_o\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[3]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X46_Y70_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\k[4]~input_o\ & (\Add1~5\ & VCC)) # (!\k[4]~input_o\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\k[4]~input_o\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[4]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X46_Y70_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\k[5]~input_o\ & ((GND) # (!\Add1~7\))) # (!\k[5]~input_o\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\k[5]~input_o\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[5]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X46_Y70_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\k[6]~input_o\ & (\Add1~9\ & VCC)) # (!\k[6]~input_o\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\k[6]~input_o\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[6]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X46_Y70_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\k[7]~input_o\ & ((GND) # (!\Add1~11\))) # (!\k[7]~input_o\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\k[7]~input_o\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X46_Y70_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\k[8]~input_o\ & (\Add1~13\ & VCC)) # (!\k[8]~input_o\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\k[8]~input_o\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[8]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X46_Y70_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\k[9]~input_o\ & ((GND) # (!\Add1~15\))) # (!\k[9]~input_o\ & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((\k[9]~input_o\) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: IOIBUF_X42_Y73_N8
\k[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(10),
	o => \k[10]~input_o\);

-- Location: LCCOMB_X46_Y70_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\k[10]~input_o\ & (\Add1~17\ & VCC)) # (!\k[10]~input_o\ & (!\Add1~17\))
-- \Add1~19\ = CARRY((!\k[10]~input_o\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[10]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X49_Y70_N0
\s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~32_combout\ = s_counter(0) $ (VCC)
-- \s_counter[0]~33\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(0),
	datad => VCC,
	combout => \s_counter[0]~32_combout\,
	cout => \s_counter[0]~33\);

-- Location: LCCOMB_X48_Y70_N12
\Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (\k[2]~input_o\ & (s_counter(1) & (\k[1]~input_o\ $ (!s_counter(0))))) # (!\k[2]~input_o\ & (!s_counter(1) & (\k[1]~input_o\ $ (!s_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datab => \k[1]~input_o\,
	datac => s_counter(0),
	datad => s_counter(1),
	combout => \Equal1~11_combout\);

-- Location: LCCOMB_X48_Y70_N2
\Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (\k[5]~input_o\ & (s_counter(4) & (s_counter(5) $ (!\k[6]~input_o\)))) # (!\k[5]~input_o\ & (!s_counter(4) & (s_counter(5) $ (!\k[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[5]~input_o\,
	datab => s_counter(4),
	datac => s_counter(5),
	datad => \k[6]~input_o\,
	combout => \Equal1~12_combout\);

-- Location: LCCOMB_X48_Y70_N4
\Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (\k[8]~input_o\ & (s_counter(7) & (\k[7]~input_o\ $ (!s_counter(6))))) # (!\k[8]~input_o\ & (!s_counter(7) & (\k[7]~input_o\ $ (!s_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[8]~input_o\,
	datab => \k[7]~input_o\,
	datac => s_counter(7),
	datad => s_counter(6),
	combout => \Equal1~13_combout\);

-- Location: IOIBUF_X52_Y73_N15
\k[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(25),
	o => \k[25]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\k[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(26),
	o => \k[26]~input_o\);

-- Location: LCCOMB_X49_Y70_N18
\s_counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~51_combout\ = (s_counter(9) & (!\s_counter[8]~50\)) # (!s_counter(9) & ((\s_counter[8]~50\) # (GND)))
-- \s_counter[9]~52\ = CARRY((!\s_counter[8]~50\) # (!s_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(9),
	datad => VCC,
	cin => \s_counter[8]~50\,
	combout => \s_counter[9]~51_combout\,
	cout => \s_counter[9]~52\);

-- Location: LCCOMB_X49_Y70_N20
\s_counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~53_combout\ = (s_counter(10) & (\s_counter[9]~52\ $ (GND))) # (!s_counter(10) & (!\s_counter[9]~52\ & VCC))
-- \s_counter[10]~54\ = CARRY((s_counter(10) & !\s_counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~52\,
	combout => \s_counter[10]~53_combout\,
	cout => \s_counter[10]~54\);

-- Location: FF_X49_Y70_N21
\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[10]~53_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

-- Location: LCCOMB_X49_Y70_N22
\s_counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~55_combout\ = (s_counter(11) & (!\s_counter[10]~54\)) # (!s_counter(11) & ((\s_counter[10]~54\) # (GND)))
-- \s_counter[11]~56\ = CARRY((!\s_counter[10]~54\) # (!s_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \s_counter[10]~54\,
	combout => \s_counter[11]~55_combout\,
	cout => \s_counter[11]~56\);

-- Location: FF_X49_Y70_N23
\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[11]~55_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

-- Location: LCCOMB_X49_Y70_N24
\s_counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~57_combout\ = (s_counter(12) & (\s_counter[11]~56\ $ (GND))) # (!s_counter(12) & (!\s_counter[11]~56\ & VCC))
-- \s_counter[12]~58\ = CARRY((s_counter(12) & !\s_counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~56\,
	combout => \s_counter[12]~57_combout\,
	cout => \s_counter[12]~58\);

-- Location: FF_X49_Y70_N25
\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[12]~57_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

-- Location: LCCOMB_X49_Y70_N26
\s_counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~59_combout\ = (s_counter(13) & (!\s_counter[12]~58\)) # (!s_counter(13) & ((\s_counter[12]~58\) # (GND)))
-- \s_counter[13]~60\ = CARRY((!\s_counter[12]~58\) # (!s_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \s_counter[12]~58\,
	combout => \s_counter[13]~59_combout\,
	cout => \s_counter[13]~60\);

-- Location: FF_X49_Y70_N27
\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[13]~59_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

-- Location: LCCOMB_X49_Y70_N28
\s_counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~61_combout\ = (s_counter(14) & (\s_counter[13]~60\ $ (GND))) # (!s_counter(14) & (!\s_counter[13]~60\ & VCC))
-- \s_counter[14]~62\ = CARRY((s_counter(14) & !\s_counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~60\,
	combout => \s_counter[14]~61_combout\,
	cout => \s_counter[14]~62\);

-- Location: FF_X49_Y70_N29
\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[14]~61_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

-- Location: LCCOMB_X49_Y70_N30
\s_counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~63_combout\ = (s_counter(15) & (!\s_counter[14]~62\)) # (!s_counter(15) & ((\s_counter[14]~62\) # (GND)))
-- \s_counter[15]~64\ = CARRY((!\s_counter[14]~62\) # (!s_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~62\,
	combout => \s_counter[15]~63_combout\,
	cout => \s_counter[15]~64\);

-- Location: FF_X49_Y70_N31
\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[15]~63_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

-- Location: LCCOMB_X49_Y69_N0
\s_counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~65_combout\ = (s_counter(16) & (\s_counter[15]~64\ $ (GND))) # (!s_counter(16) & (!\s_counter[15]~64\ & VCC))
-- \s_counter[16]~66\ = CARRY((s_counter(16) & !\s_counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datad => VCC,
	cin => \s_counter[15]~64\,
	combout => \s_counter[16]~65_combout\,
	cout => \s_counter[16]~66\);

-- Location: FF_X47_Y69_N5
\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[16]~65_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

-- Location: LCCOMB_X49_Y69_N2
\s_counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~67_combout\ = (s_counter(17) & (!\s_counter[16]~66\)) # (!s_counter(17) & ((\s_counter[16]~66\) # (GND)))
-- \s_counter[17]~68\ = CARRY((!\s_counter[16]~66\) # (!s_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~66\,
	combout => \s_counter[17]~67_combout\,
	cout => \s_counter[17]~68\);

-- Location: FF_X47_Y69_N19
\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[17]~67_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

-- Location: LCCOMB_X49_Y69_N4
\s_counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~69_combout\ = (s_counter(18) & (\s_counter[17]~68\ $ (GND))) # (!s_counter(18) & (!\s_counter[17]~68\ & VCC))
-- \s_counter[18]~70\ = CARRY((s_counter(18) & !\s_counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~68\,
	combout => \s_counter[18]~69_combout\,
	cout => \s_counter[18]~70\);

-- Location: FF_X47_Y70_N21
\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[18]~69_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

-- Location: LCCOMB_X49_Y69_N6
\s_counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~71_combout\ = (s_counter(19) & (!\s_counter[18]~70\)) # (!s_counter(19) & ((\s_counter[18]~70\) # (GND)))
-- \s_counter[19]~72\ = CARRY((!\s_counter[18]~70\) # (!s_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \s_counter[18]~70\,
	combout => \s_counter[19]~71_combout\,
	cout => \s_counter[19]~72\);

-- Location: FF_X47_Y70_N31
\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[19]~71_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

-- Location: LCCOMB_X49_Y69_N8
\s_counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~73_combout\ = (s_counter(20) & (\s_counter[19]~72\ $ (GND))) # (!s_counter(20) & (!\s_counter[19]~72\ & VCC))
-- \s_counter[20]~74\ = CARRY((s_counter(20) & !\s_counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datad => VCC,
	cin => \s_counter[19]~72\,
	combout => \s_counter[20]~73_combout\,
	cout => \s_counter[20]~74\);

-- Location: FF_X48_Y69_N13
\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[20]~73_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

-- Location: LCCOMB_X49_Y69_N10
\s_counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~75_combout\ = (s_counter(21) & (!\s_counter[20]~74\)) # (!s_counter(21) & ((\s_counter[20]~74\) # (GND)))
-- \s_counter[21]~76\ = CARRY((!\s_counter[20]~74\) # (!s_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~74\,
	combout => \s_counter[21]~75_combout\,
	cout => \s_counter[21]~76\);

-- Location: FF_X48_Y69_N15
\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[21]~75_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

-- Location: LCCOMB_X49_Y69_N12
\s_counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~77_combout\ = (s_counter(22) & (\s_counter[21]~76\ $ (GND))) # (!s_counter(22) & (!\s_counter[21]~76\ & VCC))
-- \s_counter[22]~78\ = CARRY((s_counter(22) & !\s_counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~76\,
	combout => \s_counter[22]~77_combout\,
	cout => \s_counter[22]~78\);

-- Location: FF_X49_Y69_N13
\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[22]~77_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

-- Location: LCCOMB_X49_Y69_N14
\s_counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~79_combout\ = (s_counter(23) & (!\s_counter[22]~78\)) # (!s_counter(23) & ((\s_counter[22]~78\) # (GND)))
-- \s_counter[23]~80\ = CARRY((!\s_counter[22]~78\) # (!s_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~78\,
	combout => \s_counter[23]~79_combout\,
	cout => \s_counter[23]~80\);

-- Location: FF_X49_Y69_N15
\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[23]~79_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

-- Location: LCCOMB_X49_Y69_N16
\s_counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~81_combout\ = (s_counter(24) & (\s_counter[23]~80\ $ (GND))) # (!s_counter(24) & (!\s_counter[23]~80\ & VCC))
-- \s_counter[24]~82\ = CARRY((s_counter(24) & !\s_counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(24),
	datad => VCC,
	cin => \s_counter[23]~80\,
	combout => \s_counter[24]~81_combout\,
	cout => \s_counter[24]~82\);

-- Location: FF_X48_Y69_N5
\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	asdata => \s_counter[24]~81_combout\,
	sclr => \s_counter~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

-- Location: LCCOMB_X49_Y69_N18
\s_counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~83_combout\ = (s_counter(25) & (!\s_counter[24]~82\)) # (!s_counter(25) & ((\s_counter[24]~82\) # (GND)))
-- \s_counter[25]~84\ = CARRY((!\s_counter[24]~82\) # (!s_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(25),
	datad => VCC,
	cin => \s_counter[24]~82\,
	combout => \s_counter[25]~83_combout\,
	cout => \s_counter[25]~84\);

-- Location: FF_X49_Y69_N19
\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[25]~83_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

-- Location: LCCOMB_X48_Y69_N16
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\k[25]~input_o\ & (s_counter(24) & (\k[26]~input_o\ $ (!s_counter(25))))) # (!\k[25]~input_o\ & (!s_counter(24) & (\k[26]~input_o\ $ (!s_counter(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datab => \k[26]~input_o\,
	datac => s_counter(24),
	datad => s_counter(25),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X48_Y70_N6
\Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (\Equal1~11_combout\ & (\Equal1~12_combout\ & (\Equal1~13_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~11_combout\,
	datab => \Equal1~12_combout\,
	datac => \Equal1~13_combout\,
	datad => \Equal1~10_combout\,
	combout => \Equal1~14_combout\);

-- Location: LCCOMB_X47_Y70_N12
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\k[10]~input_o\ & (s_counter(9) & (\k[9]~input_o\ $ (!s_counter(8))))) # (!\k[10]~input_o\ & (!s_counter(9) & (\k[9]~input_o\ $ (!s_counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[10]~input_o\,
	datab => \k[9]~input_o\,
	datac => s_counter(9),
	datad => s_counter(8),
	combout => \Equal1~5_combout\);

-- Location: IOIBUF_X38_Y73_N8
\k[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(20),
	o => \k[20]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\k[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(19),
	o => \k[19]~input_o\);

-- Location: LCCOMB_X47_Y70_N2
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\k[20]~input_o\ & (s_counter(19) & (\k[19]~input_o\ $ (!s_counter(18))))) # (!\k[20]~input_o\ & (!s_counter(19) & (\k[19]~input_o\ $ (!s_counter(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datab => \k[19]~input_o\,
	datac => s_counter(19),
	datad => s_counter(18),
	combout => \Equal1~8_combout\);

-- Location: IOIBUF_X38_Y73_N15
\k[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(11),
	o => \k[11]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\k[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(12),
	o => \k[12]~input_o\);

-- Location: LCCOMB_X47_Y70_N26
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\k[11]~input_o\ & (s_counter(10) & (s_counter(11) $ (!\k[12]~input_o\)))) # (!\k[11]~input_o\ & (!s_counter(10) & (s_counter(11) $ (!\k[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datab => s_counter(11),
	datac => \k[12]~input_o\,
	datad => s_counter(10),
	combout => \Equal1~6_combout\);

-- Location: IOIBUF_X38_Y73_N22
\k[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(15),
	o => \k[15]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\k[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(16),
	o => \k[16]~input_o\);

-- Location: LCCOMB_X47_Y70_N0
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\k[15]~input_o\ & (s_counter(14) & (\k[16]~input_o\ $ (!s_counter(15))))) # (!\k[15]~input_o\ & (!s_counter(14) & (\k[16]~input_o\ $ (!s_counter(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datab => \k[16]~input_o\,
	datac => s_counter(14),
	datad => s_counter(15),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X47_Y70_N4
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (\Equal1~8_combout\ & (\Equal1~6_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~9_combout\);

-- Location: IOIBUF_X60_Y73_N15
\k[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(21),
	o => \k[21]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\k[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(22),
	o => \k[22]~input_o\);

-- Location: LCCOMB_X48_Y69_N18
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\k[21]~input_o\ & (s_counter(20) & (\k[22]~input_o\ $ (!s_counter(21))))) # (!\k[21]~input_o\ & (!s_counter(20) & (\k[22]~input_o\ $ (!s_counter(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[21]~input_o\,
	datab => \k[22]~input_o\,
	datac => s_counter(21),
	datad => s_counter(20),
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X54_Y73_N1
\k[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(24),
	o => \k[24]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\k[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(23),
	o => \k[23]~input_o\);

-- Location: LCCOMB_X48_Y70_N0
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\k[24]~input_o\ & (s_counter(23) & (\k[23]~input_o\ $ (!s_counter(22))))) # (!\k[24]~input_o\ & (!s_counter(23) & (\k[23]~input_o\ $ (!s_counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datab => \k[23]~input_o\,
	datac => s_counter(23),
	datad => s_counter(22),
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X35_Y73_N15
\k[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(17),
	o => \k[17]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\k[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(18),
	o => \k[18]~input_o\);

-- Location: LCCOMB_X47_Y69_N10
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\k[17]~input_o\ & (s_counter(16) & (\k[18]~input_o\ $ (!s_counter(17))))) # (!\k[17]~input_o\ & (!s_counter(16) & (\k[18]~input_o\ $ (!s_counter(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datab => \k[18]~input_o\,
	datac => s_counter(16),
	datad => s_counter(17),
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\k[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(14),
	o => \k[14]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\k[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(13),
	o => \k[13]~input_o\);

-- Location: LCCOMB_X47_Y70_N10
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\k[14]~input_o\ & (s_counter(13) & (\k[13]~input_o\ $ (!s_counter(12))))) # (!\k[14]~input_o\ & (!s_counter(13) & (\k[13]~input_o\ $ (!s_counter(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[14]~input_o\,
	datab => \k[13]~input_o\,
	datac => s_counter(13),
	datad => s_counter(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X48_Y70_N14
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~3_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: IOIBUF_X58_Y73_N1
\k[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(27),
	o => \k[27]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\k[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(28),
	o => \k[28]~input_o\);

-- Location: LCCOMB_X49_Y69_N20
\s_counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~85_combout\ = (s_counter(26) & (\s_counter[25]~84\ $ (GND))) # (!s_counter(26) & (!\s_counter[25]~84\ & VCC))
-- \s_counter[26]~86\ = CARRY((s_counter(26) & !\s_counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(26),
	datad => VCC,
	cin => \s_counter[25]~84\,
	combout => \s_counter[26]~85_combout\,
	cout => \s_counter[26]~86\);

-- Location: FF_X49_Y69_N21
\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[26]~85_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

-- Location: LCCOMB_X49_Y69_N22
\s_counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~87_combout\ = (s_counter(27) & (!\s_counter[26]~86\)) # (!s_counter(27) & ((\s_counter[26]~86\) # (GND)))
-- \s_counter[27]~88\ = CARRY((!\s_counter[26]~86\) # (!s_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \s_counter[26]~86\,
	combout => \s_counter[27]~87_combout\,
	cout => \s_counter[27]~88\);

-- Location: FF_X49_Y69_N23
\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[27]~87_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

-- Location: LCCOMB_X48_Y69_N30
\Equal1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~15_combout\ = (\k[27]~input_o\ & (s_counter(26) & (\k[28]~input_o\ $ (!s_counter(27))))) # (!\k[27]~input_o\ & (!s_counter(26) & (\k[28]~input_o\ $ (!s_counter(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datab => \k[28]~input_o\,
	datac => s_counter(26),
	datad => s_counter(27),
	combout => \Equal1~15_combout\);

-- Location: IOIBUF_X54_Y73_N8
\k[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(31),
	o => \k[31]~input_o\);

-- Location: LCCOMB_X49_Y69_N24
\s_counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~89_combout\ = (s_counter(28) & (\s_counter[27]~88\ $ (GND))) # (!s_counter(28) & (!\s_counter[27]~88\ & VCC))
-- \s_counter[28]~90\ = CARRY((s_counter(28) & !\s_counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(28),
	datad => VCC,
	cin => \s_counter[27]~88\,
	combout => \s_counter[28]~89_combout\,
	cout => \s_counter[28]~90\);

-- Location: FF_X49_Y69_N25
\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[28]~89_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

-- Location: LCCOMB_X49_Y69_N26
\s_counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[29]~91_combout\ = (s_counter(29) & (!\s_counter[28]~90\)) # (!s_counter(29) & ((\s_counter[28]~90\) # (GND)))
-- \s_counter[29]~92\ = CARRY((!\s_counter[28]~90\) # (!s_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \s_counter[28]~90\,
	combout => \s_counter[29]~91_combout\,
	cout => \s_counter[29]~92\);

-- Location: FF_X49_Y69_N27
\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[29]~91_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

-- Location: LCCOMB_X49_Y69_N28
\s_counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[30]~93_combout\ = (s_counter(30) & (\s_counter[29]~92\ $ (GND))) # (!s_counter(30) & (!\s_counter[29]~92\ & VCC))
-- \s_counter[30]~94\ = CARRY((s_counter(30) & !\s_counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(30),
	datad => VCC,
	cin => \s_counter[29]~92\,
	combout => \s_counter[30]~93_combout\,
	cout => \s_counter[30]~94\);

-- Location: FF_X49_Y69_N29
\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[30]~93_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

-- Location: LCCOMB_X49_Y69_N30
\s_counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[31]~95_combout\ = s_counter(31) $ (\s_counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(31),
	cin => \s_counter[30]~94\,
	combout => \s_counter[31]~95_combout\);

-- Location: FF_X49_Y69_N31
\s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[31]~95_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(31));

-- Location: IOIBUF_X62_Y73_N22
\k[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(29),
	o => \k[29]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\k[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(30),
	o => \k[30]~input_o\);

-- Location: LCCOMB_X48_Y69_N24
\Equal1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~16_combout\ = (\k[29]~input_o\ & (s_counter(28) & (\k[30]~input_o\ $ (!s_counter(29))))) # (!\k[29]~input_o\ & (!s_counter(28) & (\k[30]~input_o\ $ (!s_counter(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[29]~input_o\,
	datab => \k[30]~input_o\,
	datac => s_counter(28),
	datad => s_counter(29),
	combout => \Equal1~16_combout\);

-- Location: LCCOMB_X48_Y69_N22
\Equal1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~17_combout\ = (!s_counter(31) & (\Equal1~16_combout\ & (\k[31]~input_o\ $ (!s_counter(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[31]~input_o\,
	datab => s_counter(30),
	datac => s_counter(31),
	datad => \Equal1~16_combout\,
	combout => \Equal1~17_combout\);

-- Location: LCCOMB_X48_Y69_N20
\Equal1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~18_combout\ = (\k[4]~input_o\ & (s_counter(3) & (\k[3]~input_o\ $ (!s_counter(2))))) # (!\k[4]~input_o\ & (!s_counter(3) & (\k[3]~input_o\ $ (!s_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datab => \k[3]~input_o\,
	datac => s_counter(2),
	datad => s_counter(3),
	combout => \Equal1~18_combout\);

-- Location: LCCOMB_X48_Y69_N2
\Equal1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~19_combout\ = (\Equal1~15_combout\ & (\Equal1~17_combout\ & \Equal1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~15_combout\,
	datac => \Equal1~17_combout\,
	datad => \Equal1~18_combout\,
	combout => \Equal1~19_combout\);

-- Location: LCCOMB_X48_Y70_N28
\Equal1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~20_combout\ = (\Equal1~14_combout\ & (\Equal1~9_combout\ & (\Equal1~4_combout\ & \Equal1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~14_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~19_combout\,
	combout => \Equal1~20_combout\);

-- Location: LCCOMB_X48_Y70_N30
\s_counter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~34_combout\ = (!\Equal0~20_combout\ & \Equal1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~20_combout\,
	datad => \Equal1~20_combout\,
	combout => \s_counter~34_combout\);

-- Location: FF_X49_Y70_N1
\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[0]~32_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

-- Location: LCCOMB_X49_Y70_N2
\s_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~35_combout\ = (s_counter(1) & (!\s_counter[0]~33\)) # (!s_counter(1) & ((\s_counter[0]~33\) # (GND)))
-- \s_counter[1]~36\ = CARRY((!\s_counter[0]~33\) # (!s_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(1),
	datad => VCC,
	cin => \s_counter[0]~33\,
	combout => \s_counter[1]~35_combout\,
	cout => \s_counter[1]~36\);

-- Location: FF_X49_Y70_N3
\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[1]~35_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

-- Location: LCCOMB_X49_Y70_N4
\s_counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~37_combout\ = (s_counter(2) & (\s_counter[1]~36\ $ (GND))) # (!s_counter(2) & (!\s_counter[1]~36\ & VCC))
-- \s_counter[2]~38\ = CARRY((s_counter(2) & !\s_counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~36\,
	combout => \s_counter[2]~37_combout\,
	cout => \s_counter[2]~38\);

-- Location: FF_X49_Y70_N5
\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[2]~37_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

-- Location: LCCOMB_X49_Y70_N6
\s_counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~39_combout\ = (s_counter(3) & (!\s_counter[2]~38\)) # (!s_counter(3) & ((\s_counter[2]~38\) # (GND)))
-- \s_counter[3]~40\ = CARRY((!\s_counter[2]~38\) # (!s_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \s_counter[2]~38\,
	combout => \s_counter[3]~39_combout\,
	cout => \s_counter[3]~40\);

-- Location: FF_X49_Y70_N7
\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[3]~39_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

-- Location: LCCOMB_X49_Y70_N8
\s_counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~41_combout\ = (s_counter(4) & (\s_counter[3]~40\ $ (GND))) # (!s_counter(4) & (!\s_counter[3]~40\ & VCC))
-- \s_counter[4]~42\ = CARRY((s_counter(4) & !\s_counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(4),
	datad => VCC,
	cin => \s_counter[3]~40\,
	combout => \s_counter[4]~41_combout\,
	cout => \s_counter[4]~42\);

-- Location: FF_X49_Y70_N9
\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[4]~41_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

-- Location: LCCOMB_X49_Y70_N10
\s_counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~43_combout\ = (s_counter(5) & (!\s_counter[4]~42\)) # (!s_counter(5) & ((\s_counter[4]~42\) # (GND)))
-- \s_counter[5]~44\ = CARRY((!\s_counter[4]~42\) # (!s_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~42\,
	combout => \s_counter[5]~43_combout\,
	cout => \s_counter[5]~44\);

-- Location: FF_X49_Y70_N11
\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[5]~43_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

-- Location: LCCOMB_X49_Y70_N12
\s_counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~45_combout\ = (s_counter(6) & (\s_counter[5]~44\ $ (GND))) # (!s_counter(6) & (!\s_counter[5]~44\ & VCC))
-- \s_counter[6]~46\ = CARRY((s_counter(6) & !\s_counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~44\,
	combout => \s_counter[6]~45_combout\,
	cout => \s_counter[6]~46\);

-- Location: FF_X49_Y70_N13
\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[6]~45_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

-- Location: LCCOMB_X49_Y70_N14
\s_counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~47_combout\ = (s_counter(7) & (!\s_counter[6]~46\)) # (!s_counter(7) & ((\s_counter[6]~46\) # (GND)))
-- \s_counter[7]~48\ = CARRY((!\s_counter[6]~46\) # (!s_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~46\,
	combout => \s_counter[7]~47_combout\,
	cout => \s_counter[7]~48\);

-- Location: FF_X49_Y70_N15
\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[7]~47_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

-- Location: LCCOMB_X49_Y70_N16
\s_counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~49_combout\ = (s_counter(8) & (\s_counter[7]~48\ $ (GND))) # (!s_counter(8) & (!\s_counter[7]~48\ & VCC))
-- \s_counter[8]~50\ = CARRY((s_counter(8) & !\s_counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~48\,
	combout => \s_counter[8]~49_combout\,
	cout => \s_counter[8]~50\);

-- Location: FF_X49_Y70_N17
\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[8]~49_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

-- Location: FF_X49_Y70_N19
\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \s_counter[9]~51_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

-- Location: LCCOMB_X47_Y70_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add1~16_combout\ & (s_counter(8) & (\Add1~18_combout\ $ (!s_counter(9))))) # (!\Add1~16_combout\ & (!s_counter(8) & (\Add1~18_combout\ $ (!s_counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~18_combout\,
	datac => s_counter(9),
	datad => s_counter(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X46_Y70_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\k[11]~input_o\ & ((GND) # (!\Add1~19\))) # (!\k[11]~input_o\ & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((\k[11]~input_o\) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X46_Y70_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\k[12]~input_o\ & (\Add1~21\ & VCC)) # (!\k[12]~input_o\ & (!\Add1~21\))
-- \Add1~23\ = CARRY((!\k[12]~input_o\ & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[12]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X47_Y70_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add1~22_combout\ & (s_counter(11) & (\Add1~20_combout\ $ (!s_counter(10))))) # (!\Add1~22_combout\ & (!s_counter(11) & (\Add1~20_combout\ $ (!s_counter(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add1~20_combout\,
	datac => s_counter(11),
	datad => s_counter(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X46_Y70_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\k[13]~input_o\ & ((GND) # (!\Add1~23\))) # (!\k[13]~input_o\ & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((\k[13]~input_o\) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X46_Y70_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\k[14]~input_o\ & (\Add1~25\ & VCC)) # (!\k[14]~input_o\ & (!\Add1~25\))
-- \Add1~27\ = CARRY((!\k[14]~input_o\ & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[14]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X46_Y70_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\k[15]~input_o\ & ((GND) # (!\Add1~27\))) # (!\k[15]~input_o\ & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((\k[15]~input_o\) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X46_Y70_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\k[16]~input_o\ & (\Add1~29\ & VCC)) # (!\k[16]~input_o\ & (!\Add1~29\))
-- \Add1~31\ = CARRY((!\k[16]~input_o\ & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[16]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X47_Y70_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add1~28_combout\ & (s_counter(14) & (\Add1~30_combout\ $ (!s_counter(15))))) # (!\Add1~28_combout\ & (!s_counter(14) & (\Add1~30_combout\ $ (!s_counter(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~30_combout\,
	datac => s_counter(14),
	datad => s_counter(15),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X47_Y70_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add1~26_combout\ & (s_counter(13) & (\Add1~24_combout\ $ (!s_counter(12))))) # (!\Add1~26_combout\ & (!s_counter(13) & (\Add1~24_combout\ $ (!s_counter(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~24_combout\,
	datac => s_counter(13),
	datad => s_counter(12),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X47_Y70_N14
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X46_Y69_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\k[17]~input_o\ & ((GND) # (!\Add1~31\))) # (!\k[17]~input_o\ & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((\k[17]~input_o\) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X46_Y69_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\k[18]~input_o\ & (\Add1~33\ & VCC)) # (!\k[18]~input_o\ & (!\Add1~33\))
-- \Add1~35\ = CARRY((!\k[18]~input_o\ & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[18]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X46_Y69_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\k[19]~input_o\ & ((GND) # (!\Add1~35\))) # (!\k[19]~input_o\ & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((\k[19]~input_o\) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[19]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X46_Y69_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\k[20]~input_o\ & (\Add1~37\ & VCC)) # (!\k[20]~input_o\ & (!\Add1~37\))
-- \Add1~39\ = CARRY((!\k[20]~input_o\ & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[20]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X46_Y69_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\k[21]~input_o\ & ((GND) # (!\Add1~39\))) # (!\k[21]~input_o\ & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((\k[21]~input_o\) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[21]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X46_Y69_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\k[22]~input_o\ & (\Add1~41\ & VCC)) # (!\k[22]~input_o\ & (!\Add1~41\))
-- \Add1~43\ = CARRY((!\k[22]~input_o\ & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[22]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X46_Y69_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\k[23]~input_o\ & ((GND) # (!\Add1~43\))) # (!\k[23]~input_o\ & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((\k[23]~input_o\) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X46_Y69_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\k[24]~input_o\ & (\Add1~45\ & VCC)) # (!\k[24]~input_o\ & (!\Add1~45\))
-- \Add1~47\ = CARRY((!\k[24]~input_o\ & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X46_Y69_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\k[25]~input_o\ & ((GND) # (!\Add1~47\))) # (!\k[25]~input_o\ & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((\k[25]~input_o\) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X46_Y69_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\k[26]~input_o\ & (\Add1~49\ & VCC)) # (!\k[26]~input_o\ & (!\Add1~49\))
-- \Add1~51\ = CARRY((!\k[26]~input_o\ & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X46_Y69_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\k[27]~input_o\ & ((GND) # (!\Add1~51\))) # (!\k[27]~input_o\ & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((\k[27]~input_o\) # (!\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X46_Y69_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\k[28]~input_o\ & (\Add1~53\ & VCC)) # (!\k[28]~input_o\ & (!\Add1~53\))
-- \Add1~55\ = CARRY((!\k[28]~input_o\ & !\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[28]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X48_Y69_N26
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (s_counter(26) & (\Add1~52_combout\ & (\Add1~54_combout\ $ (!s_counter(27))))) # (!s_counter(26) & (!\Add1~52_combout\ & (\Add1~54_combout\ $ (!s_counter(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datab => \Add1~54_combout\,
	datac => \Add1~52_combout\,
	datad => s_counter(27),
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X48_Y69_N28
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (\Add1~48_combout\ & (s_counter(24) & (\Add1~50_combout\ $ (!s_counter(25))))) # (!\Add1~48_combout\ & (!s_counter(24) & (\Add1~50_combout\ $ (!s_counter(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add1~50_combout\,
	datac => s_counter(24),
	datad => s_counter(25),
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X46_Y69_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\k[29]~input_o\ & ((GND) # (!\Add1~55\))) # (!\k[29]~input_o\ & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((\k[29]~input_o\) # (!\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[29]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X46_Y69_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\k[30]~input_o\ & (\Add1~57\ & VCC)) # (!\k[30]~input_o\ & (!\Add1~57\))
-- \Add1~59\ = CARRY((!\k[30]~input_o\ & !\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[30]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X48_Y69_N8
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (\Add1~58_combout\ & (s_counter(29) & (\Add1~56_combout\ $ (!s_counter(28))))) # (!\Add1~58_combout\ & (!s_counter(29) & (\Add1~56_combout\ $ (!s_counter(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~56_combout\,
	datac => s_counter(28),
	datad => s_counter(29),
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X46_Y69_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\k[31]~input_o\ & ((GND) # (!\Add1~59\))) # (!\k[31]~input_o\ & (\Add1~59\ $ (GND)))
-- \Add1~61\ = CARRY((\k[31]~input_o\) # (!\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \k[31]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X46_Y69_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = !\Add1~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X48_Y69_N10
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (\Add1~62_combout\ & (s_counter(31) & (\Add1~60_combout\ $ (!s_counter(30))))) # (!\Add1~62_combout\ & (!s_counter(31) & (\Add1~60_combout\ $ (!s_counter(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~60_combout\,
	datac => s_counter(31),
	datad => s_counter(30),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X48_Y69_N0
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Equal0~16_combout\ & (\Equal0~15_combout\ & (\Equal0~17_combout\ & \Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~16_combout\,
	datab => \Equal0~15_combout\,
	datac => \Equal0~17_combout\,
	datad => \Equal0~18_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X48_Y70_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add1~0_combout\ & (s_counter(0) & (\Add1~2_combout\ $ (!s_counter(1))))) # (!\Add1~0_combout\ & (!s_counter(0) & (\Add1~2_combout\ $ (!s_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => s_counter(0),
	datac => \Add1~2_combout\,
	datad => s_counter(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X48_Y70_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add1~14_combout\ & (s_counter(7) & (\Add1~12_combout\ $ (!s_counter(6))))) # (!\Add1~14_combout\ & (!s_counter(7) & (\Add1~12_combout\ $ (!s_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~12_combout\,
	datac => s_counter(7),
	datad => s_counter(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X47_Y70_N16
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add1~6_combout\ & (s_counter(3) & (\Add1~4_combout\ $ (!s_counter(2))))) # (!\Add1~6_combout\ & (!s_counter(3) & (\Add1~4_combout\ $ (!s_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => s_counter(2),
	datad => s_counter(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X48_Y70_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add1~8_combout\ & (s_counter(4) & (s_counter(5) $ (!\Add1~10_combout\)))) # (!\Add1~8_combout\ & (!s_counter(4) & (s_counter(5) $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => s_counter(4),
	datac => s_counter(5),
	datad => \Add1~10_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X48_Y70_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X47_Y69_N16
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Add1~34_combout\ & (s_counter(17) & (s_counter(16) $ (!\Add1~32_combout\)))) # (!\Add1~34_combout\ & (!s_counter(17) & (s_counter(16) $ (!\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datab => s_counter(16),
	datac => \Add1~32_combout\,
	datad => s_counter(17),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X47_Y70_N24
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Add1~36_combout\ & (s_counter(18) & (\Add1~38_combout\ $ (!s_counter(19))))) # (!\Add1~36_combout\ & (!s_counter(18) & (\Add1~38_combout\ $ (!s_counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add1~38_combout\,
	datac => s_counter(19),
	datad => s_counter(18),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X48_Y70_N26
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Add1~46_combout\ & (s_counter(23) & (\Add1~44_combout\ $ (!s_counter(22))))) # (!\Add1~46_combout\ & (!s_counter(23) & (\Add1~44_combout\ $ (!s_counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Add1~44_combout\,
	datac => s_counter(23),
	datad => s_counter(22),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X48_Y69_N6
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\Add1~40_combout\ & (s_counter(20) & (\Add1~42_combout\ $ (!s_counter(21))))) # (!\Add1~40_combout\ & (!s_counter(20) & (\Add1~42_combout\ $ (!s_counter(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~42_combout\,
	datac => s_counter(21),
	datad => s_counter(20),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X48_Y70_N16
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~10_combout\ & (\Equal0~11_combout\ & (\Equal0~13_combout\ & \Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~11_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal0~12_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X48_Y70_N22
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\Equal0~9_combout\ & (\Equal0~19_combout\ & (\Equal0~4_combout\ & \Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~19_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~14_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X48_Y70_N24
\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = (\Equal0~20_combout\) # ((\clkOut~reg0_q\ & !\Equal1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~20_combout\,
	datac => \clkOut~reg0_q\,
	datad => \Equal1~20_combout\,
	combout => \clkOut~0_combout\);

-- Location: FF_X48_Y70_N25
\clkOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~inputclkctrl_outclk\,
	d => \clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~reg0_q\);

-- Location: IOIBUF_X96_Y73_N22
\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

ww_clkOut <= \clkOut~output_o\;
END structure;


