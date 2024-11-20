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

-- DATE "03/06/2024 15:03:47"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PEnc16_4 IS
    PORT (
	decodedIn : IN std_logic_vector(15 DOWNTO 0);
	encodedOut : BUFFER std_logic_vector(3 DOWNTO 0);
	validOut : BUFFER std_logic
	);
END PEnc16_4;

-- Design Ports Information
-- encodedOut[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOut	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[10]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[14]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedIn[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PEnc16_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodedIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_encodedOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \encodedOut[2]~output_o\ : std_logic;
SIGNAL \encodedOut[3]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodedIn[0]~input_o\ : std_logic;
SIGNAL \decodedIn[12]~input_o\ : std_logic;
SIGNAL \decodedIn[13]~input_o\ : std_logic;
SIGNAL \decodedIn[10]~input_o\ : std_logic;
SIGNAL \decodedIn[8]~input_o\ : std_logic;
SIGNAL \decodedIn[14]~input_o\ : std_logic;
SIGNAL \encodedOut~7_combout\ : std_logic;
SIGNAL \decodedIn[11]~input_o\ : std_logic;
SIGNAL \decodedIn[9]~input_o\ : std_logic;
SIGNAL \encodedOut~6_combout\ : std_logic;
SIGNAL \decodedIn[7]~input_o\ : std_logic;
SIGNAL \encodedOut~8_combout\ : std_logic;
SIGNAL \decodedIn[2]~input_o\ : std_logic;
SIGNAL \decodedIn[1]~input_o\ : std_logic;
SIGNAL \decodedIn[3]~input_o\ : std_logic;
SIGNAL \decodedIn[4]~input_o\ : std_logic;
SIGNAL \decodedIn[5]~input_o\ : std_logic;
SIGNAL \encodedOut~4_combout\ : std_logic;
SIGNAL \encodedOut~5_combout\ : std_logic;
SIGNAL \decodedIn[6]~input_o\ : std_logic;
SIGNAL \encodedOut~9_combout\ : std_logic;
SIGNAL \encodedOut~10_combout\ : std_logic;
SIGNAL \encodedOut~12_combout\ : std_logic;
SIGNAL \encodedOut~11_combout\ : std_logic;
SIGNAL \encodedOut~13_combout\ : std_logic;
SIGNAL \encodedOut~14_combout\ : std_logic;
SIGNAL \encodedOut~15_combout\ : std_logic;
SIGNAL \encodedOut~16_combout\ : std_logic;
SIGNAL \encodedOut~17_combout\ : std_logic;
SIGNAL \encodedOut~18_combout\ : std_logic;
SIGNAL \encodedOut~19_combout\ : std_logic;
SIGNAL \encodedOut~20_combout\ : std_logic;
SIGNAL \decodedIn[15]~input_o\ : std_logic;
SIGNAL \validOut~0_combout\ : std_logic;
SIGNAL \validOut~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_decodedIn <= decodedIn;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y53_N9
\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~10_combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~16_combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\encodedOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~19_combout\,
	devoe => ww_devoe,
	o => \encodedOut[2]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\encodedOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~20_combout\,
	devoe => ww_devoe,
	o => \encodedOut[3]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \validOut~1_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

-- Location: IOIBUF_X0_Y53_N1
\decodedIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(0),
	o => \decodedIn[0]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\decodedIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(12),
	o => \decodedIn[12]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\decodedIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(13),
	o => \decodedIn[13]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\decodedIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(10),
	o => \decodedIn[10]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\decodedIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(8),
	o => \decodedIn[8]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\decodedIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(14),
	o => \decodedIn[14]~input_o\);

-- Location: LCCOMB_X1_Y54_N14
\encodedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~7_combout\ = (!\decodedIn[10]~input_o\ & (!\decodedIn[8]~input_o\ & ((\decodedIn[13]~input_o\) # (!\decodedIn[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[13]~input_o\,
	datab => \decodedIn[10]~input_o\,
	datac => \decodedIn[8]~input_o\,
	datad => \decodedIn[14]~input_o\,
	combout => \encodedOut~7_combout\);

-- Location: IOIBUF_X0_Y49_N1
\decodedIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(11),
	o => \decodedIn[11]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\decodedIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(9),
	o => \decodedIn[9]~input_o\);

-- Location: LCCOMB_X1_Y54_N4
\encodedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~6_combout\ = (!\decodedIn[8]~input_o\ & ((\decodedIn[9]~input_o\) # ((!\decodedIn[10]~input_o\ & \decodedIn[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[10]~input_o\,
	datab => \decodedIn[11]~input_o\,
	datac => \decodedIn[8]~input_o\,
	datad => \decodedIn[9]~input_o\,
	combout => \encodedOut~6_combout\);

-- Location: IOIBUF_X0_Y52_N22
\decodedIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(7),
	o => \decodedIn[7]~input_o\);

-- Location: LCCOMB_X1_Y54_N8
\encodedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~8_combout\ = (\encodedOut~6_combout\) # ((\decodedIn[7]~input_o\) # ((!\decodedIn[12]~input_o\ & \encodedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[12]~input_o\,
	datab => \encodedOut~7_combout\,
	datac => \encodedOut~6_combout\,
	datad => \decodedIn[7]~input_o\,
	combout => \encodedOut~8_combout\);

-- Location: IOIBUF_X0_Y55_N15
\decodedIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(2),
	o => \decodedIn[2]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\decodedIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(1),
	o => \decodedIn[1]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\decodedIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(3),
	o => \decodedIn[3]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\decodedIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(4),
	o => \decodedIn[4]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\decodedIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(5),
	o => \decodedIn[5]~input_o\);

-- Location: LCCOMB_X1_Y54_N24
\encodedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~4_combout\ = (!\decodedIn[4]~input_o\ & (\decodedIn[5]~input_o\ & !\decodedIn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodedIn[4]~input_o\,
	datac => \decodedIn[5]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \encodedOut~4_combout\);

-- Location: LCCOMB_X1_Y54_N26
\encodedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~5_combout\ = (\decodedIn[1]~input_o\) # ((\encodedOut~4_combout\) # ((!\decodedIn[2]~input_o\ & \decodedIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[2]~input_o\,
	datab => \decodedIn[1]~input_o\,
	datac => \decodedIn[3]~input_o\,
	datad => \encodedOut~4_combout\,
	combout => \encodedOut~5_combout\);

-- Location: IOIBUF_X0_Y55_N22
\decodedIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(6),
	o => \decodedIn[6]~input_o\);

-- Location: LCCOMB_X1_Y55_N16
\encodedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~9_combout\ = (!\decodedIn[2]~input_o\ & (!\decodedIn[4]~input_o\ & !\decodedIn[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[2]~input_o\,
	datab => \decodedIn[4]~input_o\,
	datad => \decodedIn[6]~input_o\,
	combout => \encodedOut~9_combout\);

-- Location: LCCOMB_X1_Y53_N16
\encodedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~10_combout\ = (!\decodedIn[0]~input_o\ & ((\encodedOut~5_combout\) # ((\encodedOut~8_combout\ & \encodedOut~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[0]~input_o\,
	datab => \encodedOut~8_combout\,
	datac => \encodedOut~5_combout\,
	datad => \encodedOut~9_combout\,
	combout => \encodedOut~10_combout\);

-- Location: LCCOMB_X1_Y54_N20
\encodedOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~12_combout\ = (!\decodedIn[4]~input_o\ & !\decodedIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodedIn[4]~input_o\,
	datac => \decodedIn[5]~input_o\,
	combout => \encodedOut~12_combout\);

-- Location: LCCOMB_X1_Y54_N10
\encodedOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~11_combout\ = (\decodedIn[10]~input_o\) # ((\decodedIn[11]~input_o\) # ((!\decodedIn[13]~input_o\ & !\decodedIn[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[10]~input_o\,
	datab => \decodedIn[11]~input_o\,
	datac => \decodedIn[13]~input_o\,
	datad => \decodedIn[12]~input_o\,
	combout => \encodedOut~11_combout\);

-- Location: LCCOMB_X1_Y54_N22
\encodedOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~13_combout\ = (!\decodedIn[9]~input_o\ & (\encodedOut~12_combout\ & (!\decodedIn[8]~input_o\ & \encodedOut~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[9]~input_o\,
	datab => \encodedOut~12_combout\,
	datac => \decodedIn[8]~input_o\,
	datad => \encodedOut~11_combout\,
	combout => \encodedOut~13_combout\);

-- Location: LCCOMB_X1_Y55_N10
\encodedOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~14_combout\ = (!\decodedIn[7]~input_o\ & !\decodedIn[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[7]~input_o\,
	datad => \decodedIn[6]~input_o\,
	combout => \encodedOut~14_combout\);

-- Location: LCCOMB_X1_Y54_N16
\encodedOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~15_combout\ = (\decodedIn[2]~input_o\) # ((\decodedIn[3]~input_o\) # ((\encodedOut~12_combout\ & !\encodedOut~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[2]~input_o\,
	datab => \encodedOut~12_combout\,
	datac => \decodedIn[3]~input_o\,
	datad => \encodedOut~14_combout\,
	combout => \encodedOut~15_combout\);

-- Location: LCCOMB_X1_Y54_N18
\encodedOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~16_combout\ = (!\decodedIn[0]~input_o\ & (!\decodedIn[1]~input_o\ & ((\encodedOut~13_combout\) # (\encodedOut~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[0]~input_o\,
	datab => \decodedIn[1]~input_o\,
	datac => \encodedOut~13_combout\,
	datad => \encodedOut~15_combout\,
	combout => \encodedOut~16_combout\);

-- Location: LCCOMB_X1_Y54_N28
\encodedOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~17_combout\ = (!\decodedIn[0]~input_o\ & (!\decodedIn[2]~input_o\ & (!\decodedIn[3]~input_o\ & !\decodedIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[0]~input_o\,
	datab => \decodedIn[2]~input_o\,
	datac => \decodedIn[3]~input_o\,
	datad => \decodedIn[1]~input_o\,
	combout => \encodedOut~17_combout\);

-- Location: LCCOMB_X1_Y54_N30
\encodedOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~18_combout\ = (!\decodedIn[10]~input_o\ & (!\decodedIn[11]~input_o\ & (!\decodedIn[8]~input_o\ & !\decodedIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[10]~input_o\,
	datab => \decodedIn[11]~input_o\,
	datac => \decodedIn[8]~input_o\,
	datad => \decodedIn[9]~input_o\,
	combout => \encodedOut~18_combout\);

-- Location: LCCOMB_X1_Y54_N0
\encodedOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~19_combout\ = (\encodedOut~17_combout\ & (((\encodedOut~18_combout\) # (!\encodedOut~14_combout\)) # (!\encodedOut~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encodedOut~17_combout\,
	datab => \encodedOut~12_combout\,
	datac => \encodedOut~18_combout\,
	datad => \encodedOut~14_combout\,
	combout => \encodedOut~19_combout\);

-- Location: LCCOMB_X1_Y54_N6
\encodedOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~20_combout\ = (!\decodedIn[5]~input_o\ & (\encodedOut~17_combout\ & (!\decodedIn[4]~input_o\ & \encodedOut~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[5]~input_o\,
	datab => \encodedOut~17_combout\,
	datac => \decodedIn[4]~input_o\,
	datad => \encodedOut~14_combout\,
	combout => \encodedOut~20_combout\);

-- Location: IOIBUF_X0_Y57_N22
\decodedIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(15),
	o => \decodedIn[15]~input_o\);

-- Location: LCCOMB_X1_Y54_N2
\validOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~0_combout\ = (\decodedIn[12]~input_o\) # ((\decodedIn[14]~input_o\) # ((\decodedIn[13]~input_o\) # (\decodedIn[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[12]~input_o\,
	datab => \decodedIn[14]~input_o\,
	datac => \decodedIn[13]~input_o\,
	datad => \decodedIn[15]~input_o\,
	combout => \validOut~0_combout\);

-- Location: LCCOMB_X1_Y54_N12
\validOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~1_combout\ = (\validOut~0_combout\) # ((!\encodedOut~20_combout\) # (!\encodedOut~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \validOut~0_combout\,
	datac => \encodedOut~18_combout\,
	datad => \encodedOut~20_combout\,
	combout => \validOut~1_combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_encodedOut(2) <= \encodedOut[2]~output_o\;

ww_encodedOut(3) <= \encodedOut[3]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


