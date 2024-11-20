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

-- DATE "05/17/2024 11:53:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	DrinksMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[18]~63\ : std_logic;
SIGNAL \clk_divider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[19]~65\ : std_logic;
SIGNAL \clk_divider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[20]~67\ : std_logic;
SIGNAL \clk_divider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[21]~69\ : std_logic;
SIGNAL \clk_divider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[22]~71\ : std_logic;
SIGNAL \clk_divider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[23]~73\ : std_logic;
SIGNAL \clk_divider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[24]~75\ : std_logic;
SIGNAL \clk_divider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~4_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~4_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~5_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~3_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~0_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~1_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~6_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[0]~27\ : std_logic;
SIGNAL \clk_divider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[1]~29\ : std_logic;
SIGNAL \clk_divider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[2]~31\ : std_logic;
SIGNAL \clk_divider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[3]~33\ : std_logic;
SIGNAL \clk_divider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[4]~35\ : std_logic;
SIGNAL \clk_divider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[5]~37\ : std_logic;
SIGNAL \clk_divider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[6]~39\ : std_logic;
SIGNAL \clk_divider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[7]~41\ : std_logic;
SIGNAL \clk_divider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[8]~43\ : std_logic;
SIGNAL \clk_divider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[9]~45\ : std_logic;
SIGNAL \clk_divider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[10]~47\ : std_logic;
SIGNAL \clk_divider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[11]~49\ : std_logic;
SIGNAL \clk_divider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[12]~51\ : std_logic;
SIGNAL \clk_divider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[13]~53\ : std_logic;
SIGNAL \clk_divider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[14]~55\ : std_logic;
SIGNAL \clk_divider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[15]~57\ : std_logic;
SIGNAL \clk_divider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[16]~59\ : std_logic;
SIGNAL \clk_divider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter[17]~61\ : std_logic;
SIGNAL \clk_divider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \clk_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~2_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~5_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~6_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~7_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~8_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~9_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~q\ : std_logic;
SIGNAL \clk_divider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \reset_ff_out~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \V_ff_out~feeder_combout\ : std_logic;
SIGNAL \V_ff_out~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \C_ff_out~feeder_combout\ : std_logic;
SIGNAL \C_ff_out~q\ : std_logic;
SIGNAL \drink_core|nState~0_combout\ : std_logic;
SIGNAL \drink_core|pState~17_combout\ : std_logic;
SIGNAL \drink_core|pState.S0~q\ : std_logic;
SIGNAL \drink_core|pState~16_combout\ : std_logic;
SIGNAL \drink_core|pState~11_combout\ : std_logic;
SIGNAL \drink_core|pState.S1~q\ : std_logic;
SIGNAL \drink_core|pState~10_combout\ : std_logic;
SIGNAL \drink_core|pState.S2~q\ : std_logic;
SIGNAL \drink_core|pState~12_combout\ : std_logic;
SIGNAL \drink_core|pState~13_combout\ : std_logic;
SIGNAL \drink_core|pState.S3~q\ : std_logic;
SIGNAL \drink_core|pState~14_combout\ : std_logic;
SIGNAL \drink_core|pState~15_combout\ : std_logic;
SIGNAL \drink_core|pState.S4~q\ : std_logic;
SIGNAL \drink_core|pState~8_combout\ : std_logic;
SIGNAL \drink_core|pState~9_combout\ : std_logic;
SIGNAL \drink_core|pState.S5~q\ : std_logic;
SIGNAL \clk_divider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_divider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_divider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink_core|pState.S5~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X61_Y6_N6
\clk_divider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[0]~26_combout\ = \clk_divider|s_divCounter\(0) $ (VCC)
-- \clk_divider|s_divCounter[0]~27\ = CARRY(\clk_divider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(0),
	datad => VCC,
	combout => \clk_divider|s_divCounter[0]~26_combout\,
	cout => \clk_divider|s_divCounter[0]~27\);

-- Location: LCCOMB_X61_Y5_N10
\clk_divider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[18]~62_combout\ = (\clk_divider|s_divCounter\(18) & (\clk_divider|s_divCounter[17]~61\ $ (GND))) # (!\clk_divider|s_divCounter\(18) & (!\clk_divider|s_divCounter[17]~61\ & VCC))
-- \clk_divider|s_divCounter[18]~63\ = CARRY((\clk_divider|s_divCounter\(18) & !\clk_divider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datad => VCC,
	cin => \clk_divider|s_divCounter[17]~61\,
	combout => \clk_divider|s_divCounter[18]~62_combout\,
	cout => \clk_divider|s_divCounter[18]~63\);

-- Location: LCCOMB_X61_Y5_N12
\clk_divider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[19]~64_combout\ = (\clk_divider|s_divCounter\(19) & (!\clk_divider|s_divCounter[18]~63\)) # (!\clk_divider|s_divCounter\(19) & ((\clk_divider|s_divCounter[18]~63\) # (GND)))
-- \clk_divider|s_divCounter[19]~65\ = CARRY((!\clk_divider|s_divCounter[18]~63\) # (!\clk_divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(19),
	datad => VCC,
	cin => \clk_divider|s_divCounter[18]~63\,
	combout => \clk_divider|s_divCounter[19]~64_combout\,
	cout => \clk_divider|s_divCounter[19]~65\);

-- Location: FF_X61_Y5_N13
\clk_divider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[19]~64_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(19));

-- Location: LCCOMB_X61_Y5_N14
\clk_divider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[20]~66_combout\ = (\clk_divider|s_divCounter\(20) & (\clk_divider|s_divCounter[19]~65\ $ (GND))) # (!\clk_divider|s_divCounter\(20) & (!\clk_divider|s_divCounter[19]~65\ & VCC))
-- \clk_divider|s_divCounter[20]~67\ = CARRY((\clk_divider|s_divCounter\(20) & !\clk_divider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(20),
	datad => VCC,
	cin => \clk_divider|s_divCounter[19]~65\,
	combout => \clk_divider|s_divCounter[20]~66_combout\,
	cout => \clk_divider|s_divCounter[20]~67\);

-- Location: FF_X61_Y5_N15
\clk_divider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[20]~66_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(20));

-- Location: LCCOMB_X61_Y5_N16
\clk_divider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[21]~68_combout\ = (\clk_divider|s_divCounter\(21) & (!\clk_divider|s_divCounter[20]~67\)) # (!\clk_divider|s_divCounter\(21) & ((\clk_divider|s_divCounter[20]~67\) # (GND)))
-- \clk_divider|s_divCounter[21]~69\ = CARRY((!\clk_divider|s_divCounter[20]~67\) # (!\clk_divider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(21),
	datad => VCC,
	cin => \clk_divider|s_divCounter[20]~67\,
	combout => \clk_divider|s_divCounter[21]~68_combout\,
	cout => \clk_divider|s_divCounter[21]~69\);

-- Location: FF_X61_Y5_N17
\clk_divider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[21]~68_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(21));

-- Location: LCCOMB_X61_Y5_N18
\clk_divider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[22]~70_combout\ = (\clk_divider|s_divCounter\(22) & (\clk_divider|s_divCounter[21]~69\ $ (GND))) # (!\clk_divider|s_divCounter\(22) & (!\clk_divider|s_divCounter[21]~69\ & VCC))
-- \clk_divider|s_divCounter[22]~71\ = CARRY((\clk_divider|s_divCounter\(22) & !\clk_divider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(22),
	datad => VCC,
	cin => \clk_divider|s_divCounter[21]~69\,
	combout => \clk_divider|s_divCounter[22]~70_combout\,
	cout => \clk_divider|s_divCounter[22]~71\);

-- Location: FF_X61_Y5_N19
\clk_divider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[22]~70_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(22));

-- Location: LCCOMB_X61_Y5_N20
\clk_divider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[23]~72_combout\ = (\clk_divider|s_divCounter\(23) & (!\clk_divider|s_divCounter[22]~71\)) # (!\clk_divider|s_divCounter\(23) & ((\clk_divider|s_divCounter[22]~71\) # (GND)))
-- \clk_divider|s_divCounter[23]~73\ = CARRY((!\clk_divider|s_divCounter[22]~71\) # (!\clk_divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(23),
	datad => VCC,
	cin => \clk_divider|s_divCounter[22]~71\,
	combout => \clk_divider|s_divCounter[23]~72_combout\,
	cout => \clk_divider|s_divCounter[23]~73\);

-- Location: FF_X61_Y5_N21
\clk_divider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[23]~72_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(23));

-- Location: LCCOMB_X61_Y5_N22
\clk_divider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[24]~74_combout\ = (\clk_divider|s_divCounter\(24) & (\clk_divider|s_divCounter[23]~73\ $ (GND))) # (!\clk_divider|s_divCounter\(24) & (!\clk_divider|s_divCounter[23]~73\ & VCC))
-- \clk_divider|s_divCounter[24]~75\ = CARRY((\clk_divider|s_divCounter\(24) & !\clk_divider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(24),
	datad => VCC,
	cin => \clk_divider|s_divCounter[23]~73\,
	combout => \clk_divider|s_divCounter[24]~74_combout\,
	cout => \clk_divider|s_divCounter[24]~75\);

-- Location: FF_X61_Y5_N23
\clk_divider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[24]~74_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(24));

-- Location: LCCOMB_X61_Y5_N24
\clk_divider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[25]~76_combout\ = \clk_divider|s_divCounter[24]~75\ $ (\clk_divider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|s_divCounter\(25),
	cin => \clk_divider|s_divCounter[24]~75\,
	combout => \clk_divider|s_divCounter[25]~76_combout\);

-- Location: FF_X61_Y5_N25
\clk_divider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[25]~76_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(25));

-- Location: LCCOMB_X61_Y5_N26
\clk_divider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~4_combout\ = ((!\clk_divider|s_divCounter\(18) & !\clk_divider|s_divCounter\(17))) # (!\clk_divider|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datac => \clk_divider|s_divCounter\(17),
	datad => \clk_divider|s_divCounter\(23),
	combout => \clk_divider|LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y5_N30
\clk_divider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~4_combout\ = (\clk_divider|s_divCounter\(19) & (\clk_divider|s_divCounter\(22) & (\clk_divider|s_divCounter\(20) & \clk_divider|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(19),
	datab => \clk_divider|s_divCounter\(22),
	datac => \clk_divider|s_divCounter\(20),
	datad => \clk_divider|s_divCounter\(21),
	combout => \clk_divider|clkOut~4_combout\);

-- Location: LCCOMB_X60_Y6_N14
\clk_divider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~5_combout\ = ((!\clk_divider|s_divCounter\(24) & ((\clk_divider|LessThan0~4_combout\) # (!\clk_divider|clkOut~4_combout\)))) # (!\clk_divider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(25),
	datab => \clk_divider|s_divCounter\(24),
	datac => \clk_divider|LessThan0~4_combout\,
	datad => \clk_divider|clkOut~4_combout\,
	combout => \clk_divider|LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y6_N4
\clk_divider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~3_combout\ = (!\clk_divider|s_divCounter\(8) & (!\clk_divider|s_divCounter\(9) & (!\clk_divider|s_divCounter\(10) & !\clk_divider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(8),
	datab => \clk_divider|s_divCounter\(9),
	datac => \clk_divider|s_divCounter\(10),
	datad => \clk_divider|s_divCounter\(7),
	combout => \clk_divider|clkOut~3_combout\);

-- Location: LCCOMB_X61_Y6_N0
\clk_divider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~0_combout\ = (\clk_divider|s_divCounter\(3) & (\clk_divider|s_divCounter\(1) & (\clk_divider|s_divCounter\(0) & \clk_divider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(3),
	datab => \clk_divider|s_divCounter\(1),
	datac => \clk_divider|s_divCounter\(0),
	datad => \clk_divider|s_divCounter\(2),
	combout => \clk_divider|clkOut~0_combout\);

-- Location: LCCOMB_X61_Y6_N2
\clk_divider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~1_combout\ = (\clk_divider|s_divCounter\(5) & (\clk_divider|s_divCounter\(4) & \clk_divider|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(5),
	datac => \clk_divider|s_divCounter\(4),
	datad => \clk_divider|clkOut~0_combout\,
	combout => \clk_divider|clkOut~1_combout\);

-- Location: LCCOMB_X60_Y6_N18
\clk_divider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~0_combout\ = (!\clk_divider|s_divCounter\(18) & (!\clk_divider|s_divCounter\(11) & (!\clk_divider|s_divCounter\(24) & !\clk_divider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datab => \clk_divider|s_divCounter\(11),
	datac => \clk_divider|s_divCounter\(24),
	datad => \clk_divider|s_divCounter\(16),
	combout => \clk_divider|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y6_N28
\clk_divider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~1_combout\ = (\clk_divider|clkOut~3_combout\ & (\clk_divider|LessThan0~0_combout\ & ((!\clk_divider|clkOut~1_combout\) # (!\clk_divider|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clkOut~3_combout\,
	datab => \clk_divider|s_divCounter\(6),
	datac => \clk_divider|clkOut~1_combout\,
	datad => \clk_divider|LessThan0~0_combout\,
	combout => \clk_divider|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y6_N30
\clk_divider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~6_combout\ = (!\clk_divider|LessThan0~5_combout\ & (!\clk_divider|LessThan0~3_combout\ & !\clk_divider|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|LessThan0~5_combout\,
	datac => \clk_divider|LessThan0~3_combout\,
	datad => \clk_divider|LessThan0~1_combout\,
	combout => \clk_divider|LessThan0~6_combout\);

-- Location: FF_X61_Y6_N7
\clk_divider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[0]~26_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(0));

-- Location: LCCOMB_X61_Y6_N8
\clk_divider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[1]~28_combout\ = (\clk_divider|s_divCounter\(1) & (!\clk_divider|s_divCounter[0]~27\)) # (!\clk_divider|s_divCounter\(1) & ((\clk_divider|s_divCounter[0]~27\) # (GND)))
-- \clk_divider|s_divCounter[1]~29\ = CARRY((!\clk_divider|s_divCounter[0]~27\) # (!\clk_divider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(1),
	datad => VCC,
	cin => \clk_divider|s_divCounter[0]~27\,
	combout => \clk_divider|s_divCounter[1]~28_combout\,
	cout => \clk_divider|s_divCounter[1]~29\);

-- Location: FF_X61_Y6_N9
\clk_divider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[1]~28_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(1));

-- Location: LCCOMB_X61_Y6_N10
\clk_divider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[2]~30_combout\ = (\clk_divider|s_divCounter\(2) & (\clk_divider|s_divCounter[1]~29\ $ (GND))) # (!\clk_divider|s_divCounter\(2) & (!\clk_divider|s_divCounter[1]~29\ & VCC))
-- \clk_divider|s_divCounter[2]~31\ = CARRY((\clk_divider|s_divCounter\(2) & !\clk_divider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(2),
	datad => VCC,
	cin => \clk_divider|s_divCounter[1]~29\,
	combout => \clk_divider|s_divCounter[2]~30_combout\,
	cout => \clk_divider|s_divCounter[2]~31\);

-- Location: FF_X61_Y6_N11
\clk_divider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[2]~30_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(2));

-- Location: LCCOMB_X61_Y6_N12
\clk_divider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[3]~32_combout\ = (\clk_divider|s_divCounter\(3) & (!\clk_divider|s_divCounter[2]~31\)) # (!\clk_divider|s_divCounter\(3) & ((\clk_divider|s_divCounter[2]~31\) # (GND)))
-- \clk_divider|s_divCounter[3]~33\ = CARRY((!\clk_divider|s_divCounter[2]~31\) # (!\clk_divider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(3),
	datad => VCC,
	cin => \clk_divider|s_divCounter[2]~31\,
	combout => \clk_divider|s_divCounter[3]~32_combout\,
	cout => \clk_divider|s_divCounter[3]~33\);

-- Location: FF_X61_Y6_N13
\clk_divider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[3]~32_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(3));

-- Location: LCCOMB_X61_Y6_N14
\clk_divider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[4]~34_combout\ = (\clk_divider|s_divCounter\(4) & (\clk_divider|s_divCounter[3]~33\ $ (GND))) # (!\clk_divider|s_divCounter\(4) & (!\clk_divider|s_divCounter[3]~33\ & VCC))
-- \clk_divider|s_divCounter[4]~35\ = CARRY((\clk_divider|s_divCounter\(4) & !\clk_divider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(4),
	datad => VCC,
	cin => \clk_divider|s_divCounter[3]~33\,
	combout => \clk_divider|s_divCounter[4]~34_combout\,
	cout => \clk_divider|s_divCounter[4]~35\);

-- Location: FF_X61_Y6_N15
\clk_divider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[4]~34_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(4));

-- Location: LCCOMB_X61_Y6_N16
\clk_divider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[5]~36_combout\ = (\clk_divider|s_divCounter\(5) & (!\clk_divider|s_divCounter[4]~35\)) # (!\clk_divider|s_divCounter\(5) & ((\clk_divider|s_divCounter[4]~35\) # (GND)))
-- \clk_divider|s_divCounter[5]~37\ = CARRY((!\clk_divider|s_divCounter[4]~35\) # (!\clk_divider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(5),
	datad => VCC,
	cin => \clk_divider|s_divCounter[4]~35\,
	combout => \clk_divider|s_divCounter[5]~36_combout\,
	cout => \clk_divider|s_divCounter[5]~37\);

-- Location: FF_X61_Y6_N17
\clk_divider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[5]~36_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(5));

-- Location: LCCOMB_X61_Y6_N18
\clk_divider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[6]~38_combout\ = (\clk_divider|s_divCounter\(6) & (\clk_divider|s_divCounter[5]~37\ $ (GND))) # (!\clk_divider|s_divCounter\(6) & (!\clk_divider|s_divCounter[5]~37\ & VCC))
-- \clk_divider|s_divCounter[6]~39\ = CARRY((\clk_divider|s_divCounter\(6) & !\clk_divider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(6),
	datad => VCC,
	cin => \clk_divider|s_divCounter[5]~37\,
	combout => \clk_divider|s_divCounter[6]~38_combout\,
	cout => \clk_divider|s_divCounter[6]~39\);

-- Location: FF_X61_Y6_N19
\clk_divider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[6]~38_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(6));

-- Location: LCCOMB_X61_Y6_N20
\clk_divider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[7]~40_combout\ = (\clk_divider|s_divCounter\(7) & (!\clk_divider|s_divCounter[6]~39\)) # (!\clk_divider|s_divCounter\(7) & ((\clk_divider|s_divCounter[6]~39\) # (GND)))
-- \clk_divider|s_divCounter[7]~41\ = CARRY((!\clk_divider|s_divCounter[6]~39\) # (!\clk_divider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(7),
	datad => VCC,
	cin => \clk_divider|s_divCounter[6]~39\,
	combout => \clk_divider|s_divCounter[7]~40_combout\,
	cout => \clk_divider|s_divCounter[7]~41\);

-- Location: FF_X61_Y6_N21
\clk_divider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[7]~40_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(7));

-- Location: LCCOMB_X61_Y6_N22
\clk_divider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[8]~42_combout\ = (\clk_divider|s_divCounter\(8) & (\clk_divider|s_divCounter[7]~41\ $ (GND))) # (!\clk_divider|s_divCounter\(8) & (!\clk_divider|s_divCounter[7]~41\ & VCC))
-- \clk_divider|s_divCounter[8]~43\ = CARRY((\clk_divider|s_divCounter\(8) & !\clk_divider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(8),
	datad => VCC,
	cin => \clk_divider|s_divCounter[7]~41\,
	combout => \clk_divider|s_divCounter[8]~42_combout\,
	cout => \clk_divider|s_divCounter[8]~43\);

-- Location: FF_X61_Y6_N23
\clk_divider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[8]~42_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(8));

-- Location: LCCOMB_X61_Y6_N24
\clk_divider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[9]~44_combout\ = (\clk_divider|s_divCounter\(9) & (!\clk_divider|s_divCounter[8]~43\)) # (!\clk_divider|s_divCounter\(9) & ((\clk_divider|s_divCounter[8]~43\) # (GND)))
-- \clk_divider|s_divCounter[9]~45\ = CARRY((!\clk_divider|s_divCounter[8]~43\) # (!\clk_divider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(9),
	datad => VCC,
	cin => \clk_divider|s_divCounter[8]~43\,
	combout => \clk_divider|s_divCounter[9]~44_combout\,
	cout => \clk_divider|s_divCounter[9]~45\);

-- Location: FF_X61_Y6_N25
\clk_divider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[9]~44_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(9));

-- Location: LCCOMB_X61_Y6_N26
\clk_divider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[10]~46_combout\ = (\clk_divider|s_divCounter\(10) & (\clk_divider|s_divCounter[9]~45\ $ (GND))) # (!\clk_divider|s_divCounter\(10) & (!\clk_divider|s_divCounter[9]~45\ & VCC))
-- \clk_divider|s_divCounter[10]~47\ = CARRY((\clk_divider|s_divCounter\(10) & !\clk_divider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(10),
	datad => VCC,
	cin => \clk_divider|s_divCounter[9]~45\,
	combout => \clk_divider|s_divCounter[10]~46_combout\,
	cout => \clk_divider|s_divCounter[10]~47\);

-- Location: FF_X61_Y6_N27
\clk_divider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[10]~46_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(10));

-- Location: LCCOMB_X61_Y6_N28
\clk_divider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[11]~48_combout\ = (\clk_divider|s_divCounter\(11) & (!\clk_divider|s_divCounter[10]~47\)) # (!\clk_divider|s_divCounter\(11) & ((\clk_divider|s_divCounter[10]~47\) # (GND)))
-- \clk_divider|s_divCounter[11]~49\ = CARRY((!\clk_divider|s_divCounter[10]~47\) # (!\clk_divider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(11),
	datad => VCC,
	cin => \clk_divider|s_divCounter[10]~47\,
	combout => \clk_divider|s_divCounter[11]~48_combout\,
	cout => \clk_divider|s_divCounter[11]~49\);

-- Location: FF_X61_Y6_N29
\clk_divider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[11]~48_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(11));

-- Location: LCCOMB_X61_Y6_N30
\clk_divider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[12]~50_combout\ = (\clk_divider|s_divCounter\(12) & (\clk_divider|s_divCounter[11]~49\ $ (GND))) # (!\clk_divider|s_divCounter\(12) & (!\clk_divider|s_divCounter[11]~49\ & VCC))
-- \clk_divider|s_divCounter[12]~51\ = CARRY((\clk_divider|s_divCounter\(12) & !\clk_divider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(12),
	datad => VCC,
	cin => \clk_divider|s_divCounter[11]~49\,
	combout => \clk_divider|s_divCounter[12]~50_combout\,
	cout => \clk_divider|s_divCounter[12]~51\);

-- Location: FF_X61_Y6_N31
\clk_divider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[12]~50_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(12));

-- Location: LCCOMB_X61_Y5_N0
\clk_divider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[13]~52_combout\ = (\clk_divider|s_divCounter\(13) & (!\clk_divider|s_divCounter[12]~51\)) # (!\clk_divider|s_divCounter\(13) & ((\clk_divider|s_divCounter[12]~51\) # (GND)))
-- \clk_divider|s_divCounter[13]~53\ = CARRY((!\clk_divider|s_divCounter[12]~51\) # (!\clk_divider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(13),
	datad => VCC,
	cin => \clk_divider|s_divCounter[12]~51\,
	combout => \clk_divider|s_divCounter[13]~52_combout\,
	cout => \clk_divider|s_divCounter[13]~53\);

-- Location: FF_X60_Y6_N25
\clk_divider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_divider|s_divCounter[13]~52_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(13));

-- Location: LCCOMB_X61_Y5_N2
\clk_divider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[14]~54_combout\ = (\clk_divider|s_divCounter\(14) & (\clk_divider|s_divCounter[13]~53\ $ (GND))) # (!\clk_divider|s_divCounter\(14) & (!\clk_divider|s_divCounter[13]~53\ & VCC))
-- \clk_divider|s_divCounter[14]~55\ = CARRY((\clk_divider|s_divCounter\(14) & !\clk_divider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(14),
	datad => VCC,
	cin => \clk_divider|s_divCounter[13]~53\,
	combout => \clk_divider|s_divCounter[14]~54_combout\,
	cout => \clk_divider|s_divCounter[14]~55\);

-- Location: FF_X61_Y5_N3
\clk_divider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[14]~54_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(14));

-- Location: LCCOMB_X61_Y5_N4
\clk_divider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[15]~56_combout\ = (\clk_divider|s_divCounter\(15) & (!\clk_divider|s_divCounter[14]~55\)) # (!\clk_divider|s_divCounter\(15) & ((\clk_divider|s_divCounter[14]~55\) # (GND)))
-- \clk_divider|s_divCounter[15]~57\ = CARRY((!\clk_divider|s_divCounter[14]~55\) # (!\clk_divider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(15),
	datad => VCC,
	cin => \clk_divider|s_divCounter[14]~55\,
	combout => \clk_divider|s_divCounter[15]~56_combout\,
	cout => \clk_divider|s_divCounter[15]~57\);

-- Location: FF_X61_Y5_N5
\clk_divider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[15]~56_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(15));

-- Location: LCCOMB_X61_Y5_N6
\clk_divider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[16]~58_combout\ = (\clk_divider|s_divCounter\(16) & (\clk_divider|s_divCounter[15]~57\ $ (GND))) # (!\clk_divider|s_divCounter\(16) & (!\clk_divider|s_divCounter[15]~57\ & VCC))
-- \clk_divider|s_divCounter[16]~59\ = CARRY((\clk_divider|s_divCounter\(16) & !\clk_divider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(16),
	datad => VCC,
	cin => \clk_divider|s_divCounter[15]~57\,
	combout => \clk_divider|s_divCounter[16]~58_combout\,
	cout => \clk_divider|s_divCounter[16]~59\);

-- Location: FF_X61_Y5_N7
\clk_divider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[16]~58_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(16));

-- Location: LCCOMB_X61_Y5_N8
\clk_divider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter[17]~60_combout\ = (\clk_divider|s_divCounter\(17) & (!\clk_divider|s_divCounter[16]~59\)) # (!\clk_divider|s_divCounter\(17) & ((\clk_divider|s_divCounter[16]~59\) # (GND)))
-- \clk_divider|s_divCounter[17]~61\ = CARRY((!\clk_divider|s_divCounter[16]~59\) # (!\clk_divider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(17),
	datad => VCC,
	cin => \clk_divider|s_divCounter[16]~59\,
	combout => \clk_divider|s_divCounter[17]~60_combout\,
	cout => \clk_divider|s_divCounter[17]~61\);

-- Location: FF_X61_Y5_N9
\clk_divider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[17]~60_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(17));

-- Location: FF_X61_Y5_N11
\clk_divider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter[18]~62_combout\,
	sclr => \clk_divider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(18));

-- Location: LCCOMB_X60_Y6_N20
\clk_divider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~2_combout\ = (((!\clk_divider|s_divCounter\(15)) # (!\clk_divider|s_divCounter\(14))) # (!\clk_divider|s_divCounter\(13))) # (!\clk_divider|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(12),
	datab => \clk_divider|s_divCounter\(13),
	datac => \clk_divider|s_divCounter\(14),
	datad => \clk_divider|s_divCounter\(15),
	combout => \clk_divider|LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y6_N8
\clk_divider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|LessThan0~3_combout\ = (!\clk_divider|s_divCounter\(18) & (!\clk_divider|s_divCounter\(16) & (!\clk_divider|s_divCounter\(24) & \clk_divider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datab => \clk_divider|s_divCounter\(16),
	datac => \clk_divider|s_divCounter\(24),
	datad => \clk_divider|LessThan0~2_combout\,
	combout => \clk_divider|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y6_N26
\clk_divider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~2_combout\ = (!\clk_divider|s_divCounter\(6) & (\clk_divider|s_divCounter\(14) & (\clk_divider|s_divCounter\(12) & \clk_divider|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(6),
	datab => \clk_divider|s_divCounter\(14),
	datac => \clk_divider|s_divCounter\(12),
	datad => \clk_divider|s_divCounter\(13),
	combout => \clk_divider|clkOut~2_combout\);

-- Location: LCCOMB_X61_Y5_N28
\clk_divider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~5_combout\ = (\clk_divider|s_divCounter\(24) & (!\clk_divider|s_divCounter\(25) & (!\clk_divider|s_divCounter\(23) & \clk_divider|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(24),
	datab => \clk_divider|s_divCounter\(25),
	datac => \clk_divider|s_divCounter\(23),
	datad => \clk_divider|s_divCounter\(18),
	combout => \clk_divider|clkOut~5_combout\);

-- Location: LCCOMB_X60_Y6_N6
\clk_divider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~6_combout\ = (\clk_divider|s_divCounter\(16) & (!\clk_divider|s_divCounter\(15) & (\clk_divider|clkOut~5_combout\ & !\clk_divider|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(16),
	datab => \clk_divider|s_divCounter\(15),
	datac => \clk_divider|clkOut~5_combout\,
	datad => \clk_divider|s_divCounter\(17),
	combout => \clk_divider|clkOut~6_combout\);

-- Location: LCCOMB_X60_Y6_N16
\clk_divider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~7_combout\ = (\clk_divider|clkOut~4_combout\ & (\clk_divider|s_divCounter\(11) & (\clk_divider|clkOut~3_combout\ & \clk_divider|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clkOut~4_combout\,
	datab => \clk_divider|s_divCounter\(11),
	datac => \clk_divider|clkOut~3_combout\,
	datad => \clk_divider|clkOut~6_combout\,
	combout => \clk_divider|clkOut~7_combout\);

-- Location: LCCOMB_X60_Y6_N4
\clk_divider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~8_combout\ = (\clk_divider|clkOut~q\) # ((\clk_divider|clkOut~2_combout\ & (\clk_divider|clkOut~1_combout\ & \clk_divider|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clkOut~2_combout\,
	datab => \clk_divider|clkOut~1_combout\,
	datac => \clk_divider|clkOut~q\,
	datad => \clk_divider|clkOut~7_combout\,
	combout => \clk_divider|clkOut~8_combout\);

-- Location: LCCOMB_X60_Y6_N22
\clk_divider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~9_combout\ = (\clk_divider|clkOut~8_combout\ & ((\clk_divider|LessThan0~3_combout\) # ((\clk_divider|LessThan0~1_combout\) # (\clk_divider|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|LessThan0~3_combout\,
	datab => \clk_divider|LessThan0~1_combout\,
	datac => \clk_divider|LessThan0~5_combout\,
	datad => \clk_divider|clkOut~8_combout\,
	combout => \clk_divider|clkOut~9_combout\);

-- Location: FF_X60_Y6_N23
\clk_divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clkOut~q\);

-- Location: CLKCTRL_G17
\clk_divider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X113_Y20_N17
reset_ff_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_ff_out~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X113_Y20_N4
\V_ff_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_ff_out~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \V_ff_out~feeder_combout\);

-- Location: FF_X113_Y20_N5
V_ff_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \V_ff_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_ff_out~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X113_Y20_N22
\C_ff_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \C_ff_out~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \C_ff_out~feeder_combout\);

-- Location: FF_X113_Y20_N23
C_ff_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C_ff_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_ff_out~q\);

-- Location: LCCOMB_X113_Y20_N30
\drink_core|nState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|nState~0_combout\ = (!\C_ff_out~q\ & !\V_ff_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_ff_out~q\,
	datad => \V_ff_out~q\,
	combout => \drink_core|nState~0_combout\);

-- Location: LCCOMB_X112_Y20_N20
\drink_core|pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~17_combout\ = (\reset_ff_out~q\ & (!\drink_core|pState.S5~q\ & ((\drink_core|pState.S0~q\) # (!\drink_core|nState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|nState~0_combout\,
	datab => \reset_ff_out~q\,
	datac => \drink_core|pState.S0~q\,
	datad => \drink_core|pState.S5~q\,
	combout => \drink_core|pState~17_combout\);

-- Location: FF_X112_Y20_N21
\drink_core|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S0~q\);

-- Location: LCCOMB_X112_Y20_N26
\drink_core|pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~16_combout\ = (\V_ff_out~q\ & (\reset_ff_out~q\ & !\drink_core|pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_ff_out~q\,
	datab => \reset_ff_out~q\,
	datad => \drink_core|pState.S0~q\,
	combout => \drink_core|pState~16_combout\);

-- Location: LCCOMB_X113_Y20_N28
\drink_core|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~11_combout\ = (\V_ff_out~q\) # ((\C_ff_out~q\) # (!\reset_ff_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \V_ff_out~q\,
	datac => \C_ff_out~q\,
	datad => \reset_ff_out~q\,
	combout => \drink_core|pState~11_combout\);

-- Location: FF_X112_Y20_N27
\drink_core|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~16_combout\,
	ena => \drink_core|pState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S1~q\);

-- Location: LCCOMB_X112_Y20_N22
\drink_core|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~10_combout\ = (\V_ff_out~q\ & (\reset_ff_out~q\ & \drink_core|pState.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_ff_out~q\,
	datab => \reset_ff_out~q\,
	datac => \drink_core|pState.S1~q\,
	combout => \drink_core|pState~10_combout\);

-- Location: FF_X112_Y20_N23
\drink_core|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~10_combout\,
	ena => \drink_core|pState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S2~q\);

-- Location: LCCOMB_X112_Y20_N18
\drink_core|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~12_combout\ = (!\V_ff_out~q\ & ((\C_ff_out~q\ & ((!\drink_core|pState.S0~q\))) # (!\C_ff_out~q\ & (\drink_core|pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_ff_out~q\,
	datab => \C_ff_out~q\,
	datac => \drink_core|pState.S3~q\,
	datad => \drink_core|pState.S0~q\,
	combout => \drink_core|pState~12_combout\);

-- Location: LCCOMB_X112_Y20_N4
\drink_core|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~13_combout\ = (\reset_ff_out~q\ & ((\drink_core|pState~12_combout\) # ((\drink_core|pState.S2~q\ & \V_ff_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drink_core|pState.S2~q\,
	datab => \reset_ff_out~q\,
	datac => \V_ff_out~q\,
	datad => \drink_core|pState~12_combout\,
	combout => \drink_core|pState~13_combout\);

-- Location: FF_X112_Y20_N5
\drink_core|pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S3~q\);

-- Location: LCCOMB_X112_Y20_N24
\drink_core|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~14_combout\ = (\C_ff_out~q\ & (\drink_core|pState.S1~q\)) # (!\C_ff_out~q\ & ((\drink_core|pState.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_ff_out~q\,
	datac => \drink_core|pState.S1~q\,
	datad => \drink_core|pState.S4~q\,
	combout => \drink_core|pState~14_combout\);

-- Location: LCCOMB_X112_Y20_N16
\drink_core|pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~15_combout\ = (\reset_ff_out~q\ & ((\V_ff_out~q\ & (\drink_core|pState.S3~q\)) # (!\V_ff_out~q\ & ((\drink_core|pState~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_ff_out~q\,
	datab => \reset_ff_out~q\,
	datac => \drink_core|pState.S3~q\,
	datad => \drink_core|pState~14_combout\,
	combout => \drink_core|pState~15_combout\);

-- Location: FF_X112_Y20_N17
\drink_core|pState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S4~q\);

-- Location: LCCOMB_X112_Y20_N2
\drink_core|pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~8_combout\ = (!\V_ff_out~q\ & (\C_ff_out~q\ & ((\drink_core|pState.S3~q\) # (\drink_core|pState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_ff_out~q\,
	datab => \C_ff_out~q\,
	datac => \drink_core|pState.S3~q\,
	datad => \drink_core|pState.S2~q\,
	combout => \drink_core|pState~8_combout\);

-- Location: LCCOMB_X112_Y20_N28
\drink_core|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink_core|pState~9_combout\ = (\reset_ff_out~q\ & ((\drink_core|pState~8_combout\) # ((\drink_core|pState.S4~q\ & !\drink_core|nState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_ff_out~q\,
	datab => \drink_core|pState.S4~q\,
	datac => \drink_core|nState~0_combout\,
	datad => \drink_core|pState~8_combout\,
	combout => \drink_core|pState~9_combout\);

-- Location: FF_X112_Y20_N29
\drink_core|pState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \drink_core|pState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink_core|pState.S5~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


