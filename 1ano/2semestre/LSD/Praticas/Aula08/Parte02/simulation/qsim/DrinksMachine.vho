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

-- DATE "05/17/2024 10:31:19"

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

ENTITY 	DrinksFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	V : IN std_logic;
	C : IN std_logic;
	drinkOut : OUT std_logic
	);
END DrinksFSM;

-- Design Ports Information
-- drinkOut	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_drinkOut : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drinkOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \pState~9_combout\ : std_logic;
SIGNAL \pState~13_combout\ : std_logic;
SIGNAL \pState~11_combout\ : std_logic;
SIGNAL \nState~0_combout\ : std_logic;
SIGNAL \pState~19_combout\ : std_logic;
SIGNAL \pState.S0~q\ : std_logic;
SIGNAL \pState~18_combout\ : std_logic;
SIGNAL \pState.S1~q\ : std_logic;
SIGNAL \pState~15_combout\ : std_logic;
SIGNAL \pState.S2~q\ : std_logic;
SIGNAL \pState~16_combout\ : std_logic;
SIGNAL \pState~17_combout\ : std_logic;
SIGNAL \pState.S3~q\ : std_logic;
SIGNAL \pState~12_combout\ : std_logic;
SIGNAL \pState~14_combout\ : std_logic;
SIGNAL \pState.S4~q\ : std_logic;
SIGNAL \pState~8_combout\ : std_logic;
SIGNAL \pState~10_combout\ : std_logic;
SIGNAL \pState.S5~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_V <= V;
ww_C <= C;
drinkOut <= ww_drinkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y73_N9
\drinkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pState.S5~q\,
	devoe => ww_devoe,
	o => \drinkOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y73_N1
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\V~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

-- Location: LCCOMB_X34_Y72_N24
\pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~9_combout\ = (\C~input_o\ & (!\reset~input_o\ & !\V~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \reset~input_o\,
	datac => \V~input_o\,
	combout => \pState~9_combout\);

-- Location: LCCOMB_X34_Y72_N12
\pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~13_combout\ = (\C~input_o\) # ((\reset~input_o\) # (\V~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \reset~input_o\,
	datac => \V~input_o\,
	combout => \pState~13_combout\);

-- Location: LCCOMB_X34_Y72_N28
\pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~11_combout\ = (\V~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datac => \reset~input_o\,
	combout => \pState~11_combout\);

-- Location: LCCOMB_X34_Y72_N8
\nState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nState~0_combout\ = (\V~input_o\) # (\C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datac => \C~input_o\,
	combout => \nState~0_combout\);

-- Location: LCCOMB_X34_Y72_N10
\pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~19_combout\ = (!\reset~input_o\ & ((\nState~0_combout\ & ((!\pState.S5~q\))) # (!\nState~0_combout\ & (\pState.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nState~0_combout\,
	datab => \reset~input_o\,
	datac => \pState.S0~q\,
	datad => \pState.S5~q\,
	combout => \pState~19_combout\);

-- Location: FF_X34_Y72_N11
\pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S0~q\);

-- Location: LCCOMB_X34_Y72_N30
\pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~18_combout\ = (\V~input_o\ & (!\reset~input_o\ & !\pState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datab => \reset~input_o\,
	datad => \pState.S0~q\,
	combout => \pState~18_combout\);

-- Location: FF_X34_Y72_N31
\pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~18_combout\,
	ena => \pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S1~q\);

-- Location: LCCOMB_X34_Y72_N26
\pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~15_combout\ = (\V~input_o\ & (!\reset~input_o\ & \pState.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datac => \reset~input_o\,
	datad => \pState.S1~q\,
	combout => \pState~15_combout\);

-- Location: FF_X34_Y72_N27
\pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~15_combout\,
	ena => \pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S2~q\);

-- Location: LCCOMB_X34_Y72_N20
\pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~16_combout\ = (\pState~9_combout\ & (((\pState~11_combout\ & \pState.S2~q\)) # (!\pState.S0~q\))) # (!\pState~9_combout\ & (\pState~11_combout\ & (\pState.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pState~9_combout\,
	datab => \pState~11_combout\,
	datac => \pState.S2~q\,
	datad => \pState.S0~q\,
	combout => \pState~16_combout\);

-- Location: LCCOMB_X34_Y72_N0
\pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~17_combout\ = (\pState~16_combout\) # ((!\pState~13_combout\ & \pState.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pState~13_combout\,
	datac => \pState.S3~q\,
	datad => \pState~16_combout\,
	combout => \pState~17_combout\);

-- Location: FF_X34_Y72_N1
\pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S3~q\);

-- Location: LCCOMB_X34_Y72_N6
\pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~12_combout\ = (\pState~9_combout\ & ((\pState.S1~q\) # ((\pState~11_combout\ & \pState.S3~q\)))) # (!\pState~9_combout\ & (\pState~11_combout\ & ((\pState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pState~9_combout\,
	datab => \pState~11_combout\,
	datac => \pState.S1~q\,
	datad => \pState.S3~q\,
	combout => \pState~12_combout\);

-- Location: LCCOMB_X34_Y72_N22
\pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~14_combout\ = (\pState~12_combout\) # ((!\pState~13_combout\ & \pState.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pState~13_combout\,
	datac => \pState.S4~q\,
	datad => \pState~12_combout\,
	combout => \pState~14_combout\);

-- Location: FF_X34_Y72_N23
\pState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S4~q\);

-- Location: LCCOMB_X34_Y72_N2
\pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~8_combout\ = (!\reset~input_o\ & ((\nState~0_combout\ & (\pState.S4~q\)) # (!\nState~0_combout\ & ((\pState.S5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nState~0_combout\,
	datab => \reset~input_o\,
	datac => \pState.S4~q\,
	datad => \pState.S5~q\,
	combout => \pState~8_combout\);

-- Location: LCCOMB_X34_Y72_N16
\pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pState~10_combout\ = (\pState~8_combout\) # ((\pState~9_combout\ & ((\pState.S3~q\) # (\pState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pState~9_combout\,
	datab => \pState.S3~q\,
	datac => \pState.S2~q\,
	datad => \pState~8_combout\,
	combout => \pState~10_combout\);

-- Location: FF_X34_Y72_N17
\pState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pState.S5~q\);

ww_drinkOut <= \drinkOut~output_o\;
END structure;


