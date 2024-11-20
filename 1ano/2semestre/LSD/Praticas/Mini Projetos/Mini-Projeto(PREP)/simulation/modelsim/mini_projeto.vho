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

-- DATE "04/10/2024 15:17:21"

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

ENTITY 	projeto_demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END projeto_demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto_demo IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[0]~24_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[15]~55\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[16]~56_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[16]~57\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[17]~58_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[17]~59\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[18]~60_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[18]~61\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[19]~62_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[19]~63\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[20]~64_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[20]~65\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[21]~66_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[21]~67\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[22]~68_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[22]~69\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[23]~70_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan0~4_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan0~2_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan1~0_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan0~3_combout\ : std_logic;
SIGNAL \BlinkGenerator|count_proc~0_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan0~0_combout\ : std_logic;
SIGNAL \BlinkGenerator|count_proc~1_combout\ : std_logic;
SIGNAL \BlinkGenerator|count_proc~2_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[0]~25\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[1]~26_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[1]~27\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[2]~28_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[2]~29\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[3]~30_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[3]~31\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[4]~32_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[4]~33\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[5]~34_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[5]~35\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[6]~36_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[6]~37\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[7]~38_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[7]~39\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[8]~40_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[8]~41\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[9]~42_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[9]~43\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[10]~44_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[10]~45\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[11]~46_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[11]~47\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[12]~48_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[12]~49\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[13]~50_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[13]~51\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[14]~52_combout\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[14]~53\ : std_logic;
SIGNAL \BlinkGenerator|s_counter[15]~54_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan0~1_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan1~1_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan1~2_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan1~3_combout\ : std_logic;
SIGNAL \BlinkGenerator|LessThan1~4_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Counter|s_count~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FreqDivider|Add0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~1\ : std_logic;
SIGNAL \FreqDivider|Add0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~3\ : std_logic;
SIGNAL \FreqDivider|Add0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~5\ : std_logic;
SIGNAL \FreqDivider|Add0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~7\ : std_logic;
SIGNAL \FreqDivider|Add0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~9\ : std_logic;
SIGNAL \FreqDivider|Add0~10_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~11\ : std_logic;
SIGNAL \FreqDivider|Add0~12_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~13\ : std_logic;
SIGNAL \FreqDivider|Add0~14_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~6_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~15\ : std_logic;
SIGNAL \FreqDivider|Add0~16_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~17\ : std_logic;
SIGNAL \FreqDivider|Add0~18_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~19\ : std_logic;
SIGNAL \FreqDivider|Add0~20_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~21\ : std_logic;
SIGNAL \FreqDivider|Add0~22_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~23\ : std_logic;
SIGNAL \FreqDivider|Add0~24_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~17_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~25\ : std_logic;
SIGNAL \FreqDivider|Add0~26_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~16_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~27\ : std_logic;
SIGNAL \FreqDivider|Add0~28_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~15_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~29\ : std_logic;
SIGNAL \FreqDivider|Add0~30_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~14_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~31\ : std_logic;
SIGNAL \FreqDivider|Add0~32_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~33\ : std_logic;
SIGNAL \FreqDivider|Add0~34_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~13_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~35\ : std_logic;
SIGNAL \FreqDivider|Add0~36_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~37\ : std_logic;
SIGNAL \FreqDivider|Add0~38_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~12_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~39\ : std_logic;
SIGNAL \FreqDivider|Add0~40_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~11_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~1_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~41\ : std_logic;
SIGNAL \FreqDivider|Add0~42_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~10_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~43\ : std_logic;
SIGNAL \FreqDivider|Add0~44_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~9_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~45\ : std_logic;
SIGNAL \FreqDivider|Add0~47\ : std_logic;
SIGNAL \FreqDivider|Add0~48_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~49\ : std_logic;
SIGNAL \FreqDivider|Add0~50_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~7_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~0_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~2_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~3_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~51\ : std_logic;
SIGNAL \FreqDivider|Add0~52_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~53\ : std_logic;
SIGNAL \FreqDivider|Add0~54_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~55\ : std_logic;
SIGNAL \FreqDivider|Add0~56_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~57\ : std_logic;
SIGNAL \FreqDivider|Add0~58_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~59\ : std_logic;
SIGNAL \FreqDivider|Add0~60_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~5_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~46_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter~8_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDivider|pulseOut~q\ : std_logic;
SIGNAL \Counter|s_count[0]~1_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \Counter|Add0~0_combout\ : std_logic;
SIGNAL \Counter|s_count~3_combout\ : std_logic;
SIGNAL \Counter|s_count~4_combout\ : std_logic;
SIGNAL \Counter|max~0_combout\ : std_logic;
SIGNAL \Counter|s_count~2_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[0]~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[0]~16_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u~4_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u~5_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[2]~6_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[2]~7_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u~8_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u~9_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[4]~10_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[4]~11_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|Equal8~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[6]~2_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[5]~12_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[5]~13_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[6]~14_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_u[6]~15_combout\ : std_logic;
SIGNAL \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_d[0]~0_combout\ : std_logic;
SIGNAL \Counter|max~1_combout\ : std_logic;
SIGNAL \Counter|max~2_combout\ : std_logic;
SIGNAL \Counter|max~q\ : std_logic;
SIGNAL \BlinkGenerator|s_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \FreqDivider|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Counter|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
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
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u[0]~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u[2]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u[4]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u[5]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_u[6]~15_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_d[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_d[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_d[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_d[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter|max~q\,
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

-- Location: LCCOMB_X112_Y58_N8
\BlinkGenerator|s_counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[0]~24_combout\ = \BlinkGenerator|s_counter\(0) $ (VCC)
-- \BlinkGenerator|s_counter[0]~25\ = CARRY(\BlinkGenerator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(0),
	datad => VCC,
	combout => \BlinkGenerator|s_counter[0]~24_combout\,
	cout => \BlinkGenerator|s_counter[0]~25\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X112_Y57_N6
\BlinkGenerator|s_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[15]~54_combout\ = (\BlinkGenerator|s_counter\(15) & (!\BlinkGenerator|s_counter[14]~53\)) # (!\BlinkGenerator|s_counter\(15) & ((\BlinkGenerator|s_counter[14]~53\) # (GND)))
-- \BlinkGenerator|s_counter[15]~55\ = CARRY((!\BlinkGenerator|s_counter[14]~53\) # (!\BlinkGenerator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(15),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[14]~53\,
	combout => \BlinkGenerator|s_counter[15]~54_combout\,
	cout => \BlinkGenerator|s_counter[15]~55\);

-- Location: LCCOMB_X112_Y57_N8
\BlinkGenerator|s_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[16]~56_combout\ = (\BlinkGenerator|s_counter\(16) & (\BlinkGenerator|s_counter[15]~55\ $ (GND))) # (!\BlinkGenerator|s_counter\(16) & (!\BlinkGenerator|s_counter[15]~55\ & VCC))
-- \BlinkGenerator|s_counter[16]~57\ = CARRY((\BlinkGenerator|s_counter\(16) & !\BlinkGenerator|s_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(16),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[15]~55\,
	combout => \BlinkGenerator|s_counter[16]~56_combout\,
	cout => \BlinkGenerator|s_counter[16]~57\);

-- Location: FF_X112_Y57_N9
\BlinkGenerator|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[16]~56_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(16));

-- Location: LCCOMB_X112_Y57_N10
\BlinkGenerator|s_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[17]~58_combout\ = (\BlinkGenerator|s_counter\(17) & (!\BlinkGenerator|s_counter[16]~57\)) # (!\BlinkGenerator|s_counter\(17) & ((\BlinkGenerator|s_counter[16]~57\) # (GND)))
-- \BlinkGenerator|s_counter[17]~59\ = CARRY((!\BlinkGenerator|s_counter[16]~57\) # (!\BlinkGenerator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(17),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[16]~57\,
	combout => \BlinkGenerator|s_counter[17]~58_combout\,
	cout => \BlinkGenerator|s_counter[17]~59\);

-- Location: FF_X112_Y57_N11
\BlinkGenerator|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[17]~58_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(17));

-- Location: LCCOMB_X112_Y57_N12
\BlinkGenerator|s_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[18]~60_combout\ = (\BlinkGenerator|s_counter\(18) & (\BlinkGenerator|s_counter[17]~59\ $ (GND))) # (!\BlinkGenerator|s_counter\(18) & (!\BlinkGenerator|s_counter[17]~59\ & VCC))
-- \BlinkGenerator|s_counter[18]~61\ = CARRY((\BlinkGenerator|s_counter\(18) & !\BlinkGenerator|s_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(18),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[17]~59\,
	combout => \BlinkGenerator|s_counter[18]~60_combout\,
	cout => \BlinkGenerator|s_counter[18]~61\);

-- Location: FF_X112_Y57_N13
\BlinkGenerator|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[18]~60_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(18));

-- Location: LCCOMB_X112_Y57_N14
\BlinkGenerator|s_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[19]~62_combout\ = (\BlinkGenerator|s_counter\(19) & (!\BlinkGenerator|s_counter[18]~61\)) # (!\BlinkGenerator|s_counter\(19) & ((\BlinkGenerator|s_counter[18]~61\) # (GND)))
-- \BlinkGenerator|s_counter[19]~63\ = CARRY((!\BlinkGenerator|s_counter[18]~61\) # (!\BlinkGenerator|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(19),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[18]~61\,
	combout => \BlinkGenerator|s_counter[19]~62_combout\,
	cout => \BlinkGenerator|s_counter[19]~63\);

-- Location: FF_X112_Y57_N15
\BlinkGenerator|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[19]~62_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(19));

-- Location: LCCOMB_X112_Y57_N16
\BlinkGenerator|s_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[20]~64_combout\ = (\BlinkGenerator|s_counter\(20) & (\BlinkGenerator|s_counter[19]~63\ $ (GND))) # (!\BlinkGenerator|s_counter\(20) & (!\BlinkGenerator|s_counter[19]~63\ & VCC))
-- \BlinkGenerator|s_counter[20]~65\ = CARRY((\BlinkGenerator|s_counter\(20) & !\BlinkGenerator|s_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(20),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[19]~63\,
	combout => \BlinkGenerator|s_counter[20]~64_combout\,
	cout => \BlinkGenerator|s_counter[20]~65\);

-- Location: FF_X112_Y57_N17
\BlinkGenerator|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[20]~64_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(20));

-- Location: LCCOMB_X112_Y57_N18
\BlinkGenerator|s_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[21]~66_combout\ = (\BlinkGenerator|s_counter\(21) & (!\BlinkGenerator|s_counter[20]~65\)) # (!\BlinkGenerator|s_counter\(21) & ((\BlinkGenerator|s_counter[20]~65\) # (GND)))
-- \BlinkGenerator|s_counter[21]~67\ = CARRY((!\BlinkGenerator|s_counter[20]~65\) # (!\BlinkGenerator|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(21),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[20]~65\,
	combout => \BlinkGenerator|s_counter[21]~66_combout\,
	cout => \BlinkGenerator|s_counter[21]~67\);

-- Location: FF_X112_Y57_N19
\BlinkGenerator|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[21]~66_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(21));

-- Location: LCCOMB_X112_Y57_N20
\BlinkGenerator|s_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[22]~68_combout\ = (\BlinkGenerator|s_counter\(22) & (\BlinkGenerator|s_counter[21]~67\ $ (GND))) # (!\BlinkGenerator|s_counter\(22) & (!\BlinkGenerator|s_counter[21]~67\ & VCC))
-- \BlinkGenerator|s_counter[22]~69\ = CARRY((\BlinkGenerator|s_counter\(22) & !\BlinkGenerator|s_counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(22),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[21]~67\,
	combout => \BlinkGenerator|s_counter[22]~68_combout\,
	cout => \BlinkGenerator|s_counter[22]~69\);

-- Location: FF_X112_Y57_N21
\BlinkGenerator|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[22]~68_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(22));

-- Location: LCCOMB_X112_Y57_N22
\BlinkGenerator|s_counter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[23]~70_combout\ = \BlinkGenerator|s_counter\(23) $ (\BlinkGenerator|s_counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(23),
	cin => \BlinkGenerator|s_counter[22]~69\,
	combout => \BlinkGenerator|s_counter[23]~70_combout\);

-- Location: FF_X112_Y57_N23
\BlinkGenerator|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[23]~70_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(23));

-- Location: LCCOMB_X112_Y57_N28
\BlinkGenerator|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan0~4_combout\ = (\BlinkGenerator|s_counter\(11) & (\BlinkGenerator|s_counter\(13) & (\BlinkGenerator|s_counter\(10) & \BlinkGenerator|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(11),
	datab => \BlinkGenerator|s_counter\(13),
	datac => \BlinkGenerator|s_counter\(10),
	datad => \BlinkGenerator|s_counter\(12),
	combout => \BlinkGenerator|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y58_N4
\BlinkGenerator|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan0~2_combout\ = (\BlinkGenerator|s_counter\(2) & (\BlinkGenerator|s_counter\(4) & (\BlinkGenerator|s_counter\(0) & \BlinkGenerator|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(2),
	datab => \BlinkGenerator|s_counter\(4),
	datac => \BlinkGenerator|s_counter\(0),
	datad => \BlinkGenerator|s_counter\(1),
	combout => \BlinkGenerator|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y58_N0
\BlinkGenerator|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan1~0_combout\ = (!\BlinkGenerator|s_counter\(7) & (!\BlinkGenerator|s_counter\(5) & (!\BlinkGenerator|s_counter\(8) & !\BlinkGenerator|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(7),
	datab => \BlinkGenerator|s_counter\(5),
	datac => \BlinkGenerator|s_counter\(8),
	datad => \BlinkGenerator|s_counter\(6),
	combout => \BlinkGenerator|LessThan1~0_combout\);

-- Location: LCCOMB_X112_Y58_N6
\BlinkGenerator|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan0~3_combout\ = (\BlinkGenerator|s_counter\(9)) # (((\BlinkGenerator|s_counter\(3) & \BlinkGenerator|LessThan0~2_combout\)) # (!\BlinkGenerator|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(9),
	datab => \BlinkGenerator|s_counter\(3),
	datac => \BlinkGenerator|LessThan0~2_combout\,
	datad => \BlinkGenerator|LessThan1~0_combout\,
	combout => \BlinkGenerator|LessThan0~3_combout\);

-- Location: LCCOMB_X112_Y57_N30
\BlinkGenerator|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|count_proc~0_combout\ = (\BlinkGenerator|s_counter\(15) & ((\BlinkGenerator|s_counter\(14)) # ((\BlinkGenerator|LessThan0~4_combout\ & \BlinkGenerator|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(15),
	datab => \BlinkGenerator|s_counter\(14),
	datac => \BlinkGenerator|LessThan0~4_combout\,
	datad => \BlinkGenerator|LessThan0~3_combout\,
	combout => \BlinkGenerator|count_proc~0_combout\);

-- Location: LCCOMB_X111_Y57_N16
\BlinkGenerator|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan0~0_combout\ = (\BlinkGenerator|s_counter\(18) & (\BlinkGenerator|s_counter\(19) & (\BlinkGenerator|s_counter\(17) & \BlinkGenerator|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(18),
	datab => \BlinkGenerator|s_counter\(19),
	datac => \BlinkGenerator|s_counter\(17),
	datad => \BlinkGenerator|s_counter\(20),
	combout => \BlinkGenerator|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y57_N24
\BlinkGenerator|count_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|count_proc~1_combout\ = (\BlinkGenerator|s_counter\(21) & (\BlinkGenerator|LessThan0~0_combout\ & ((\BlinkGenerator|s_counter\(16)) # (\BlinkGenerator|count_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(21),
	datab => \BlinkGenerator|s_counter\(16),
	datac => \BlinkGenerator|count_proc~0_combout\,
	datad => \BlinkGenerator|LessThan0~0_combout\,
	combout => \BlinkGenerator|count_proc~1_combout\);

-- Location: LCCOMB_X112_Y57_N26
\BlinkGenerator|count_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|count_proc~2_combout\ = ((\BlinkGenerator|s_counter\(23) & ((\BlinkGenerator|s_counter\(22)) # (\BlinkGenerator|count_proc~1_combout\)))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \BlinkGenerator|s_counter\(22),
	datac => \BlinkGenerator|s_counter\(23),
	datad => \BlinkGenerator|count_proc~1_combout\,
	combout => \BlinkGenerator|count_proc~2_combout\);

-- Location: FF_X112_Y58_N9
\BlinkGenerator|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[0]~24_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(0));

-- Location: LCCOMB_X112_Y58_N10
\BlinkGenerator|s_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[1]~26_combout\ = (\BlinkGenerator|s_counter\(1) & (!\BlinkGenerator|s_counter[0]~25\)) # (!\BlinkGenerator|s_counter\(1) & ((\BlinkGenerator|s_counter[0]~25\) # (GND)))
-- \BlinkGenerator|s_counter[1]~27\ = CARRY((!\BlinkGenerator|s_counter[0]~25\) # (!\BlinkGenerator|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(1),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[0]~25\,
	combout => \BlinkGenerator|s_counter[1]~26_combout\,
	cout => \BlinkGenerator|s_counter[1]~27\);

-- Location: FF_X112_Y58_N11
\BlinkGenerator|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[1]~26_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(1));

-- Location: LCCOMB_X112_Y58_N12
\BlinkGenerator|s_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[2]~28_combout\ = (\BlinkGenerator|s_counter\(2) & (\BlinkGenerator|s_counter[1]~27\ $ (GND))) # (!\BlinkGenerator|s_counter\(2) & (!\BlinkGenerator|s_counter[1]~27\ & VCC))
-- \BlinkGenerator|s_counter[2]~29\ = CARRY((\BlinkGenerator|s_counter\(2) & !\BlinkGenerator|s_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(2),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[1]~27\,
	combout => \BlinkGenerator|s_counter[2]~28_combout\,
	cout => \BlinkGenerator|s_counter[2]~29\);

-- Location: FF_X112_Y58_N13
\BlinkGenerator|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[2]~28_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(2));

-- Location: LCCOMB_X112_Y58_N14
\BlinkGenerator|s_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[3]~30_combout\ = (\BlinkGenerator|s_counter\(3) & (!\BlinkGenerator|s_counter[2]~29\)) # (!\BlinkGenerator|s_counter\(3) & ((\BlinkGenerator|s_counter[2]~29\) # (GND)))
-- \BlinkGenerator|s_counter[3]~31\ = CARRY((!\BlinkGenerator|s_counter[2]~29\) # (!\BlinkGenerator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(3),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[2]~29\,
	combout => \BlinkGenerator|s_counter[3]~30_combout\,
	cout => \BlinkGenerator|s_counter[3]~31\);

-- Location: FF_X112_Y58_N15
\BlinkGenerator|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[3]~30_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(3));

-- Location: LCCOMB_X112_Y58_N16
\BlinkGenerator|s_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[4]~32_combout\ = (\BlinkGenerator|s_counter\(4) & (\BlinkGenerator|s_counter[3]~31\ $ (GND))) # (!\BlinkGenerator|s_counter\(4) & (!\BlinkGenerator|s_counter[3]~31\ & VCC))
-- \BlinkGenerator|s_counter[4]~33\ = CARRY((\BlinkGenerator|s_counter\(4) & !\BlinkGenerator|s_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(4),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[3]~31\,
	combout => \BlinkGenerator|s_counter[4]~32_combout\,
	cout => \BlinkGenerator|s_counter[4]~33\);

-- Location: FF_X112_Y58_N17
\BlinkGenerator|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[4]~32_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(4));

-- Location: LCCOMB_X112_Y58_N18
\BlinkGenerator|s_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[5]~34_combout\ = (\BlinkGenerator|s_counter\(5) & (!\BlinkGenerator|s_counter[4]~33\)) # (!\BlinkGenerator|s_counter\(5) & ((\BlinkGenerator|s_counter[4]~33\) # (GND)))
-- \BlinkGenerator|s_counter[5]~35\ = CARRY((!\BlinkGenerator|s_counter[4]~33\) # (!\BlinkGenerator|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(5),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[4]~33\,
	combout => \BlinkGenerator|s_counter[5]~34_combout\,
	cout => \BlinkGenerator|s_counter[5]~35\);

-- Location: FF_X112_Y58_N19
\BlinkGenerator|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[5]~34_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(5));

-- Location: LCCOMB_X112_Y58_N20
\BlinkGenerator|s_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[6]~36_combout\ = (\BlinkGenerator|s_counter\(6) & (\BlinkGenerator|s_counter[5]~35\ $ (GND))) # (!\BlinkGenerator|s_counter\(6) & (!\BlinkGenerator|s_counter[5]~35\ & VCC))
-- \BlinkGenerator|s_counter[6]~37\ = CARRY((\BlinkGenerator|s_counter\(6) & !\BlinkGenerator|s_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(6),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[5]~35\,
	combout => \BlinkGenerator|s_counter[6]~36_combout\,
	cout => \BlinkGenerator|s_counter[6]~37\);

-- Location: FF_X112_Y58_N21
\BlinkGenerator|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[6]~36_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(6));

-- Location: LCCOMB_X112_Y58_N22
\BlinkGenerator|s_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[7]~38_combout\ = (\BlinkGenerator|s_counter\(7) & (!\BlinkGenerator|s_counter[6]~37\)) # (!\BlinkGenerator|s_counter\(7) & ((\BlinkGenerator|s_counter[6]~37\) # (GND)))
-- \BlinkGenerator|s_counter[7]~39\ = CARRY((!\BlinkGenerator|s_counter[6]~37\) # (!\BlinkGenerator|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(7),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[6]~37\,
	combout => \BlinkGenerator|s_counter[7]~38_combout\,
	cout => \BlinkGenerator|s_counter[7]~39\);

-- Location: FF_X112_Y58_N23
\BlinkGenerator|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[7]~38_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(7));

-- Location: LCCOMB_X112_Y58_N24
\BlinkGenerator|s_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[8]~40_combout\ = (\BlinkGenerator|s_counter\(8) & (\BlinkGenerator|s_counter[7]~39\ $ (GND))) # (!\BlinkGenerator|s_counter\(8) & (!\BlinkGenerator|s_counter[7]~39\ & VCC))
-- \BlinkGenerator|s_counter[8]~41\ = CARRY((\BlinkGenerator|s_counter\(8) & !\BlinkGenerator|s_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(8),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[7]~39\,
	combout => \BlinkGenerator|s_counter[8]~40_combout\,
	cout => \BlinkGenerator|s_counter[8]~41\);

-- Location: FF_X112_Y58_N25
\BlinkGenerator|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[8]~40_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(8));

-- Location: LCCOMB_X112_Y58_N26
\BlinkGenerator|s_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[9]~42_combout\ = (\BlinkGenerator|s_counter\(9) & (!\BlinkGenerator|s_counter[8]~41\)) # (!\BlinkGenerator|s_counter\(9) & ((\BlinkGenerator|s_counter[8]~41\) # (GND)))
-- \BlinkGenerator|s_counter[9]~43\ = CARRY((!\BlinkGenerator|s_counter[8]~41\) # (!\BlinkGenerator|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(9),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[8]~41\,
	combout => \BlinkGenerator|s_counter[9]~42_combout\,
	cout => \BlinkGenerator|s_counter[9]~43\);

-- Location: FF_X112_Y58_N27
\BlinkGenerator|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[9]~42_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(9));

-- Location: LCCOMB_X112_Y58_N28
\BlinkGenerator|s_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[10]~44_combout\ = (\BlinkGenerator|s_counter\(10) & (\BlinkGenerator|s_counter[9]~43\ $ (GND))) # (!\BlinkGenerator|s_counter\(10) & (!\BlinkGenerator|s_counter[9]~43\ & VCC))
-- \BlinkGenerator|s_counter[10]~45\ = CARRY((\BlinkGenerator|s_counter\(10) & !\BlinkGenerator|s_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(10),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[9]~43\,
	combout => \BlinkGenerator|s_counter[10]~44_combout\,
	cout => \BlinkGenerator|s_counter[10]~45\);

-- Location: FF_X111_Y57_N25
\BlinkGenerator|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BlinkGenerator|s_counter[10]~44_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(10));

-- Location: LCCOMB_X112_Y58_N30
\BlinkGenerator|s_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[11]~46_combout\ = (\BlinkGenerator|s_counter\(11) & (!\BlinkGenerator|s_counter[10]~45\)) # (!\BlinkGenerator|s_counter\(11) & ((\BlinkGenerator|s_counter[10]~45\) # (GND)))
-- \BlinkGenerator|s_counter[11]~47\ = CARRY((!\BlinkGenerator|s_counter[10]~45\) # (!\BlinkGenerator|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(11),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[10]~45\,
	combout => \BlinkGenerator|s_counter[11]~46_combout\,
	cout => \BlinkGenerator|s_counter[11]~47\);

-- Location: FF_X111_Y57_N15
\BlinkGenerator|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BlinkGenerator|s_counter[11]~46_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(11));

-- Location: LCCOMB_X112_Y57_N0
\BlinkGenerator|s_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[12]~48_combout\ = (\BlinkGenerator|s_counter\(12) & (\BlinkGenerator|s_counter[11]~47\ $ (GND))) # (!\BlinkGenerator|s_counter\(12) & (!\BlinkGenerator|s_counter[11]~47\ & VCC))
-- \BlinkGenerator|s_counter[12]~49\ = CARRY((\BlinkGenerator|s_counter\(12) & !\BlinkGenerator|s_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(12),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[11]~47\,
	combout => \BlinkGenerator|s_counter[12]~48_combout\,
	cout => \BlinkGenerator|s_counter[12]~49\);

-- Location: FF_X112_Y57_N1
\BlinkGenerator|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[12]~48_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(12));

-- Location: LCCOMB_X112_Y57_N2
\BlinkGenerator|s_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[13]~50_combout\ = (\BlinkGenerator|s_counter\(13) & (!\BlinkGenerator|s_counter[12]~49\)) # (!\BlinkGenerator|s_counter\(13) & ((\BlinkGenerator|s_counter[12]~49\) # (GND)))
-- \BlinkGenerator|s_counter[13]~51\ = CARRY((!\BlinkGenerator|s_counter[12]~49\) # (!\BlinkGenerator|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(13),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[12]~49\,
	combout => \BlinkGenerator|s_counter[13]~50_combout\,
	cout => \BlinkGenerator|s_counter[13]~51\);

-- Location: FF_X112_Y57_N3
\BlinkGenerator|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[13]~50_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(13));

-- Location: LCCOMB_X112_Y57_N4
\BlinkGenerator|s_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|s_counter[14]~52_combout\ = (\BlinkGenerator|s_counter\(14) & (\BlinkGenerator|s_counter[13]~51\ $ (GND))) # (!\BlinkGenerator|s_counter\(14) & (!\BlinkGenerator|s_counter[13]~51\ & VCC))
-- \BlinkGenerator|s_counter[14]~53\ = CARRY((\BlinkGenerator|s_counter\(14) & !\BlinkGenerator|s_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(14),
	datad => VCC,
	cin => \BlinkGenerator|s_counter[13]~51\,
	combout => \BlinkGenerator|s_counter[14]~52_combout\,
	cout => \BlinkGenerator|s_counter[14]~53\);

-- Location: FF_X112_Y57_N5
\BlinkGenerator|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[14]~52_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(14));

-- Location: FF_X112_Y57_N7
\BlinkGenerator|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BlinkGenerator|s_counter[15]~54_combout\,
	sclr => \BlinkGenerator|count_proc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BlinkGenerator|s_counter\(15));

-- Location: LCCOMB_X111_Y57_N10
\BlinkGenerator|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan0~1_combout\ = (\BlinkGenerator|s_counter\(11) & (\BlinkGenerator|s_counter\(12) & \BlinkGenerator|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BlinkGenerator|s_counter\(11),
	datac => \BlinkGenerator|s_counter\(12),
	datad => \BlinkGenerator|s_counter\(10),
	combout => \BlinkGenerator|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y58_N2
\BlinkGenerator|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan1~1_combout\ = (((!\BlinkGenerator|s_counter\(4) & \BlinkGenerator|LessThan1~0_combout\)) # (!\BlinkGenerator|LessThan0~1_combout\)) # (!\BlinkGenerator|s_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(4),
	datab => \BlinkGenerator|LessThan1~0_combout\,
	datac => \BlinkGenerator|s_counter\(9),
	datad => \BlinkGenerator|LessThan0~1_combout\,
	combout => \BlinkGenerator|LessThan1~1_combout\);

-- Location: LCCOMB_X111_Y57_N20
\BlinkGenerator|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan1~2_combout\ = (\BlinkGenerator|s_counter\(14) & ((\BlinkGenerator|s_counter\(13)) # (!\BlinkGenerator|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(14),
	datac => \BlinkGenerator|LessThan1~1_combout\,
	datad => \BlinkGenerator|s_counter\(13),
	combout => \BlinkGenerator|LessThan1~2_combout\);

-- Location: LCCOMB_X111_Y57_N22
\BlinkGenerator|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan1~3_combout\ = (\BlinkGenerator|LessThan0~0_combout\ & (\BlinkGenerator|s_counter\(16) & ((\BlinkGenerator|s_counter\(15)) # (\BlinkGenerator|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|s_counter\(15),
	datab => \BlinkGenerator|LessThan0~0_combout\,
	datac => \BlinkGenerator|s_counter\(16),
	datad => \BlinkGenerator|LessThan1~2_combout\,
	combout => \BlinkGenerator|LessThan1~3_combout\);

-- Location: LCCOMB_X111_Y57_N28
\BlinkGenerator|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlinkGenerator|LessThan1~4_combout\ = (!\BlinkGenerator|s_counter\(23) & (((!\BlinkGenerator|LessThan1~3_combout\ & !\BlinkGenerator|s_counter\(21))) # (!\BlinkGenerator|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|LessThan1~3_combout\,
	datab => \BlinkGenerator|s_counter\(23),
	datac => \BlinkGenerator|s_counter\(22),
	datad => \BlinkGenerator|s_counter\(21),
	combout => \BlinkGenerator|LessThan1~4_combout\);

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

-- Location: LCCOMB_X111_Y65_N8
\Counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~0_combout\ = (!\Counter|s_count\(0) & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(0),
	datad => \KEY[0]~input_o\,
	combout => \Counter|s_count~0_combout\);

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

-- Location: LCCOMB_X89_Y66_N2
\FreqDivider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~0_combout\ = \FreqDivider|s_counter\(0) $ (VCC)
-- \FreqDivider|Add0~1\ = CARRY(\FreqDivider|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(0),
	datad => VCC,
	combout => \FreqDivider|Add0~0_combout\,
	cout => \FreqDivider|Add0~1\);

-- Location: FF_X89_Y66_N3
\FreqDivider|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(0));

-- Location: LCCOMB_X89_Y66_N4
\FreqDivider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~2_combout\ = (\FreqDivider|s_counter\(1) & (!\FreqDivider|Add0~1\)) # (!\FreqDivider|s_counter\(1) & ((\FreqDivider|Add0~1\) # (GND)))
-- \FreqDivider|Add0~3\ = CARRY((!\FreqDivider|Add0~1\) # (!\FreqDivider|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(1),
	datad => VCC,
	cin => \FreqDivider|Add0~1\,
	combout => \FreqDivider|Add0~2_combout\,
	cout => \FreqDivider|Add0~3\);

-- Location: FF_X89_Y66_N5
\FreqDivider|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(1));

-- Location: LCCOMB_X89_Y66_N6
\FreqDivider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~4_combout\ = (\FreqDivider|s_counter\(2) & (\FreqDivider|Add0~3\ $ (GND))) # (!\FreqDivider|s_counter\(2) & (!\FreqDivider|Add0~3\ & VCC))
-- \FreqDivider|Add0~5\ = CARRY((\FreqDivider|s_counter\(2) & !\FreqDivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(2),
	datad => VCC,
	cin => \FreqDivider|Add0~3\,
	combout => \FreqDivider|Add0~4_combout\,
	cout => \FreqDivider|Add0~5\);

-- Location: FF_X89_Y66_N7
\FreqDivider|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(2));

-- Location: LCCOMB_X89_Y66_N8
\FreqDivider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~6_combout\ = (\FreqDivider|s_counter\(3) & (!\FreqDivider|Add0~5\)) # (!\FreqDivider|s_counter\(3) & ((\FreqDivider|Add0~5\) # (GND)))
-- \FreqDivider|Add0~7\ = CARRY((!\FreqDivider|Add0~5\) # (!\FreqDivider|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(3),
	datad => VCC,
	cin => \FreqDivider|Add0~5\,
	combout => \FreqDivider|Add0~6_combout\,
	cout => \FreqDivider|Add0~7\);

-- Location: FF_X89_Y66_N9
\FreqDivider|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(3));

-- Location: LCCOMB_X89_Y66_N10
\FreqDivider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~8_combout\ = (\FreqDivider|s_counter\(4) & (\FreqDivider|Add0~7\ $ (GND))) # (!\FreqDivider|s_counter\(4) & (!\FreqDivider|Add0~7\ & VCC))
-- \FreqDivider|Add0~9\ = CARRY((\FreqDivider|s_counter\(4) & !\FreqDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(4),
	datad => VCC,
	cin => \FreqDivider|Add0~7\,
	combout => \FreqDivider|Add0~8_combout\,
	cout => \FreqDivider|Add0~9\);

-- Location: FF_X89_Y66_N11
\FreqDivider|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(4));

-- Location: LCCOMB_X89_Y66_N12
\FreqDivider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~10_combout\ = (\FreqDivider|s_counter\(5) & (!\FreqDivider|Add0~9\)) # (!\FreqDivider|s_counter\(5) & ((\FreqDivider|Add0~9\) # (GND)))
-- \FreqDivider|Add0~11\ = CARRY((!\FreqDivider|Add0~9\) # (!\FreqDivider|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(5),
	datad => VCC,
	cin => \FreqDivider|Add0~9\,
	combout => \FreqDivider|Add0~10_combout\,
	cout => \FreqDivider|Add0~11\);

-- Location: FF_X89_Y66_N13
\FreqDivider|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(5));

-- Location: LCCOMB_X88_Y65_N10
\FreqDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~7_combout\ = (!\FreqDivider|s_counter\(2) & (!\FreqDivider|s_counter\(5) & (!\FreqDivider|s_counter\(3) & !\FreqDivider|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(2),
	datab => \FreqDivider|s_counter\(5),
	datac => \FreqDivider|s_counter\(3),
	datad => \FreqDivider|s_counter\(4),
	combout => \FreqDivider|Equal0~7_combout\);

-- Location: LCCOMB_X89_Y66_N14
\FreqDivider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~12_combout\ = (\FreqDivider|s_counter\(6) & (\FreqDivider|Add0~11\ $ (GND))) # (!\FreqDivider|s_counter\(6) & (!\FreqDivider|Add0~11\ & VCC))
-- \FreqDivider|Add0~13\ = CARRY((\FreqDivider|s_counter\(6) & !\FreqDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(6),
	datad => VCC,
	cin => \FreqDivider|Add0~11\,
	combout => \FreqDivider|Add0~12_combout\,
	cout => \FreqDivider|Add0~13\);

-- Location: FF_X89_Y66_N15
\FreqDivider|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(6));

-- Location: LCCOMB_X89_Y66_N16
\FreqDivider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~14_combout\ = (\FreqDivider|s_counter\(7) & (!\FreqDivider|Add0~13\)) # (!\FreqDivider|s_counter\(7) & ((\FreqDivider|Add0~13\) # (GND)))
-- \FreqDivider|Add0~15\ = CARRY((!\FreqDivider|Add0~13\) # (!\FreqDivider|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(7),
	datad => VCC,
	cin => \FreqDivider|Add0~13\,
	combout => \FreqDivider|Add0~14_combout\,
	cout => \FreqDivider|Add0~15\);

-- Location: LCCOMB_X89_Y66_N0
\FreqDivider|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~6_combout\ = (\FreqDivider|Add0~14_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Add0~14_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~6_combout\);

-- Location: FF_X89_Y66_N1
\FreqDivider|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(7));

-- Location: LCCOMB_X89_Y66_N18
\FreqDivider|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~16_combout\ = (\FreqDivider|s_counter\(8) & (\FreqDivider|Add0~15\ $ (GND))) # (!\FreqDivider|s_counter\(8) & (!\FreqDivider|Add0~15\ & VCC))
-- \FreqDivider|Add0~17\ = CARRY((\FreqDivider|s_counter\(8) & !\FreqDivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(8),
	datad => VCC,
	cin => \FreqDivider|Add0~15\,
	combout => \FreqDivider|Add0~16_combout\,
	cout => \FreqDivider|Add0~17\);

-- Location: FF_X89_Y66_N19
\FreqDivider|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(8));

-- Location: LCCOMB_X89_Y66_N20
\FreqDivider|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~18_combout\ = (\FreqDivider|s_counter\(9) & (!\FreqDivider|Add0~17\)) # (!\FreqDivider|s_counter\(9) & ((\FreqDivider|Add0~17\) # (GND)))
-- \FreqDivider|Add0~19\ = CARRY((!\FreqDivider|Add0~17\) # (!\FreqDivider|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(9),
	datad => VCC,
	cin => \FreqDivider|Add0~17\,
	combout => \FreqDivider|Add0~18_combout\,
	cout => \FreqDivider|Add0~19\);

-- Location: FF_X89_Y66_N21
\FreqDivider|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(9));

-- Location: LCCOMB_X89_Y66_N22
\FreqDivider|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~20_combout\ = (\FreqDivider|s_counter\(10) & (\FreqDivider|Add0~19\ $ (GND))) # (!\FreqDivider|s_counter\(10) & (!\FreqDivider|Add0~19\ & VCC))
-- \FreqDivider|Add0~21\ = CARRY((\FreqDivider|s_counter\(10) & !\FreqDivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(10),
	datad => VCC,
	cin => \FreqDivider|Add0~19\,
	combout => \FreqDivider|Add0~20_combout\,
	cout => \FreqDivider|Add0~21\);

-- Location: FF_X89_Y66_N23
\FreqDivider|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(10));

-- Location: LCCOMB_X89_Y66_N24
\FreqDivider|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~22_combout\ = (\FreqDivider|s_counter\(11) & (!\FreqDivider|Add0~21\)) # (!\FreqDivider|s_counter\(11) & ((\FreqDivider|Add0~21\) # (GND)))
-- \FreqDivider|Add0~23\ = CARRY((!\FreqDivider|Add0~21\) # (!\FreqDivider|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(11),
	datad => VCC,
	cin => \FreqDivider|Add0~21\,
	combout => \FreqDivider|Add0~22_combout\,
	cout => \FreqDivider|Add0~23\);

-- Location: FF_X89_Y66_N25
\FreqDivider|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(11));

-- Location: LCCOMB_X89_Y66_N26
\FreqDivider|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~24_combout\ = (\FreqDivider|s_counter\(12) & (\FreqDivider|Add0~23\ $ (GND))) # (!\FreqDivider|s_counter\(12) & (!\FreqDivider|Add0~23\ & VCC))
-- \FreqDivider|Add0~25\ = CARRY((\FreqDivider|s_counter\(12) & !\FreqDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(12),
	datad => VCC,
	cin => \FreqDivider|Add0~23\,
	combout => \FreqDivider|Add0~24_combout\,
	cout => \FreqDivider|Add0~25\);

-- Location: LCCOMB_X88_Y65_N22
\FreqDivider|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~17_combout\ = (\FreqDivider|Add0~24_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~24_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~17_combout\);

-- Location: FF_X88_Y65_N23
\FreqDivider|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(12));

-- Location: LCCOMB_X89_Y66_N28
\FreqDivider|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~26_combout\ = (\FreqDivider|s_counter\(13) & (!\FreqDivider|Add0~25\)) # (!\FreqDivider|s_counter\(13) & ((\FreqDivider|Add0~25\) # (GND)))
-- \FreqDivider|Add0~27\ = CARRY((!\FreqDivider|Add0~25\) # (!\FreqDivider|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(13),
	datad => VCC,
	cin => \FreqDivider|Add0~25\,
	combout => \FreqDivider|Add0~26_combout\,
	cout => \FreqDivider|Add0~27\);

-- Location: LCCOMB_X88_Y65_N0
\FreqDivider|s_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~16_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_counter~5_combout\,
	datad => \FreqDivider|Add0~26_combout\,
	combout => \FreqDivider|s_counter~16_combout\);

-- Location: FF_X88_Y65_N1
\FreqDivider|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(13));

-- Location: LCCOMB_X89_Y66_N30
\FreqDivider|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~28_combout\ = (\FreqDivider|s_counter\(14) & (\FreqDivider|Add0~27\ $ (GND))) # (!\FreqDivider|s_counter\(14) & (!\FreqDivider|Add0~27\ & VCC))
-- \FreqDivider|Add0~29\ = CARRY((\FreqDivider|s_counter\(14) & !\FreqDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(14),
	datad => VCC,
	cin => \FreqDivider|Add0~27\,
	combout => \FreqDivider|Add0~28_combout\,
	cout => \FreqDivider|Add0~29\);

-- Location: LCCOMB_X88_Y65_N2
\FreqDivider|s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~15_combout\ = (\FreqDivider|Add0~28_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~28_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~15_combout\);

-- Location: FF_X88_Y65_N3
\FreqDivider|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(14));

-- Location: LCCOMB_X89_Y65_N0
\FreqDivider|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~30_combout\ = (\FreqDivider|s_counter\(15) & (!\FreqDivider|Add0~29\)) # (!\FreqDivider|s_counter\(15) & ((\FreqDivider|Add0~29\) # (GND)))
-- \FreqDivider|Add0~31\ = CARRY((!\FreqDivider|Add0~29\) # (!\FreqDivider|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(15),
	datad => VCC,
	cin => \FreqDivider|Add0~29\,
	combout => \FreqDivider|Add0~30_combout\,
	cout => \FreqDivider|Add0~31\);

-- Location: LCCOMB_X90_Y65_N12
\FreqDivider|s_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~14_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter~5_combout\,
	datac => \FreqDivider|Add0~30_combout\,
	combout => \FreqDivider|s_counter~14_combout\);

-- Location: FF_X90_Y65_N13
\FreqDivider|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(15));

-- Location: LCCOMB_X89_Y65_N2
\FreqDivider|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~32_combout\ = (\FreqDivider|s_counter\(16) & (\FreqDivider|Add0~31\ $ (GND))) # (!\FreqDivider|s_counter\(16) & (!\FreqDivider|Add0~31\ & VCC))
-- \FreqDivider|Add0~33\ = CARRY((\FreqDivider|s_counter\(16) & !\FreqDivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(16),
	datad => VCC,
	cin => \FreqDivider|Add0~31\,
	combout => \FreqDivider|Add0~32_combout\,
	cout => \FreqDivider|Add0~33\);

-- Location: FF_X89_Y65_N3
\FreqDivider|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(16));

-- Location: LCCOMB_X89_Y65_N4
\FreqDivider|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~34_combout\ = (\FreqDivider|s_counter\(17) & (!\FreqDivider|Add0~33\)) # (!\FreqDivider|s_counter\(17) & ((\FreqDivider|Add0~33\) # (GND)))
-- \FreqDivider|Add0~35\ = CARRY((!\FreqDivider|Add0~33\) # (!\FreqDivider|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(17),
	datad => VCC,
	cin => \FreqDivider|Add0~33\,
	combout => \FreqDivider|Add0~34_combout\,
	cout => \FreqDivider|Add0~35\);

-- Location: LCCOMB_X90_Y65_N22
\FreqDivider|s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~13_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter~5_combout\,
	datac => \FreqDivider|Add0~34_combout\,
	combout => \FreqDivider|s_counter~13_combout\);

-- Location: FF_X90_Y65_N23
\FreqDivider|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(17));

-- Location: LCCOMB_X89_Y65_N6
\FreqDivider|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~36_combout\ = (\FreqDivider|s_counter\(18) & (\FreqDivider|Add0~35\ $ (GND))) # (!\FreqDivider|s_counter\(18) & (!\FreqDivider|Add0~35\ & VCC))
-- \FreqDivider|Add0~37\ = CARRY((\FreqDivider|s_counter\(18) & !\FreqDivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(18),
	datad => VCC,
	cin => \FreqDivider|Add0~35\,
	combout => \FreqDivider|Add0~36_combout\,
	cout => \FreqDivider|Add0~37\);

-- Location: FF_X89_Y65_N7
\FreqDivider|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(18));

-- Location: LCCOMB_X89_Y65_N8
\FreqDivider|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~38_combout\ = (\FreqDivider|s_counter\(19) & (!\FreqDivider|Add0~37\)) # (!\FreqDivider|s_counter\(19) & ((\FreqDivider|Add0~37\) # (GND)))
-- \FreqDivider|Add0~39\ = CARRY((!\FreqDivider|Add0~37\) # (!\FreqDivider|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(19),
	datad => VCC,
	cin => \FreqDivider|Add0~37\,
	combout => \FreqDivider|Add0~38_combout\,
	cout => \FreqDivider|Add0~39\);

-- Location: LCCOMB_X90_Y65_N24
\FreqDivider|s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~12_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_counter~5_combout\,
	datad => \FreqDivider|Add0~38_combout\,
	combout => \FreqDivider|s_counter~12_combout\);

-- Location: FF_X90_Y65_N25
\FreqDivider|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(19));

-- Location: LCCOMB_X89_Y65_N10
\FreqDivider|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~40_combout\ = (\FreqDivider|s_counter\(20) & (\FreqDivider|Add0~39\ $ (GND))) # (!\FreqDivider|s_counter\(20) & (!\FreqDivider|Add0~39\ & VCC))
-- \FreqDivider|Add0~41\ = CARRY((\FreqDivider|s_counter\(20) & !\FreqDivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datad => VCC,
	cin => \FreqDivider|Add0~39\,
	combout => \FreqDivider|Add0~40_combout\,
	cout => \FreqDivider|Add0~41\);

-- Location: LCCOMB_X90_Y65_N6
\FreqDivider|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~11_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_counter~5_combout\,
	datad => \FreqDivider|Add0~40_combout\,
	combout => \FreqDivider|s_counter~11_combout\);

-- Location: FF_X90_Y65_N7
\FreqDivider|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(20));

-- Location: LCCOMB_X90_Y65_N20
\FreqDivider|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~1_combout\ = (\FreqDivider|s_counter\(20) & (\FreqDivider|s_counter\(19) & (\FreqDivider|s_counter\(17) & \FreqDivider|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datab => \FreqDivider|s_counter\(19),
	datac => \FreqDivider|s_counter\(17),
	datad => \FreqDivider|s_counter\(15),
	combout => \FreqDivider|s_counter~1_combout\);

-- Location: LCCOMB_X89_Y65_N12
\FreqDivider|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~42_combout\ = (\FreqDivider|s_counter\(21) & (!\FreqDivider|Add0~41\)) # (!\FreqDivider|s_counter\(21) & ((\FreqDivider|Add0~41\) # (GND)))
-- \FreqDivider|Add0~43\ = CARRY((!\FreqDivider|Add0~41\) # (!\FreqDivider|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(21),
	datad => VCC,
	cin => \FreqDivider|Add0~41\,
	combout => \FreqDivider|Add0~42_combout\,
	cout => \FreqDivider|Add0~43\);

-- Location: LCCOMB_X88_Y65_N6
\FreqDivider|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~10_combout\ = (\FreqDivider|Add0~42_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~42_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~10_combout\);

-- Location: FF_X88_Y65_N7
\FreqDivider|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(21));

-- Location: LCCOMB_X89_Y65_N14
\FreqDivider|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~44_combout\ = (\FreqDivider|s_counter\(22) & (\FreqDivider|Add0~43\ $ (GND))) # (!\FreqDivider|s_counter\(22) & (!\FreqDivider|Add0~43\ & VCC))
-- \FreqDivider|Add0~45\ = CARRY((\FreqDivider|s_counter\(22) & !\FreqDivider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(22),
	datad => VCC,
	cin => \FreqDivider|Add0~43\,
	combout => \FreqDivider|Add0~44_combout\,
	cout => \FreqDivider|Add0~45\);

-- Location: LCCOMB_X88_Y65_N16
\FreqDivider|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~9_combout\ = (\FreqDivider|Add0~44_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~44_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~9_combout\);

-- Location: FF_X88_Y65_N17
\FreqDivider|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(22));

-- Location: LCCOMB_X89_Y65_N16
\FreqDivider|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~46_combout\ = (\FreqDivider|s_counter\(23) & (!\FreqDivider|Add0~45\)) # (!\FreqDivider|s_counter\(23) & ((\FreqDivider|Add0~45\) # (GND)))
-- \FreqDivider|Add0~47\ = CARRY((!\FreqDivider|Add0~45\) # (!\FreqDivider|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(23),
	datad => VCC,
	cin => \FreqDivider|Add0~45\,
	combout => \FreqDivider|Add0~46_combout\,
	cout => \FreqDivider|Add0~47\);

-- Location: LCCOMB_X89_Y65_N18
\FreqDivider|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~48_combout\ = (\FreqDivider|s_counter\(24) & (\FreqDivider|Add0~47\ $ (GND))) # (!\FreqDivider|s_counter\(24) & (!\FreqDivider|Add0~47\ & VCC))
-- \FreqDivider|Add0~49\ = CARRY((\FreqDivider|s_counter\(24) & !\FreqDivider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(24),
	datad => VCC,
	cin => \FreqDivider|Add0~47\,
	combout => \FreqDivider|Add0~48_combout\,
	cout => \FreqDivider|Add0~49\);

-- Location: FF_X89_Y65_N19
\FreqDivider|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(24));

-- Location: LCCOMB_X89_Y65_N20
\FreqDivider|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~50_combout\ = (\FreqDivider|s_counter\(25) & (!\FreqDivider|Add0~49\)) # (!\FreqDivider|s_counter\(25) & ((\FreqDivider|Add0~49\) # (GND)))
-- \FreqDivider|Add0~51\ = CARRY((!\FreqDivider|Add0~49\) # (!\FreqDivider|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(25),
	datad => VCC,
	cin => \FreqDivider|Add0~49\,
	combout => \FreqDivider|Add0~50_combout\,
	cout => \FreqDivider|Add0~51\);

-- Location: LCCOMB_X88_Y65_N8
\FreqDivider|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~7_combout\ = (\FreqDivider|Add0~50_combout\ & !\FreqDivider|s_counter~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~50_combout\,
	datad => \FreqDivider|s_counter~5_combout\,
	combout => \FreqDivider|s_counter~7_combout\);

-- Location: FF_X88_Y65_N9
\FreqDivider|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(25));

-- Location: LCCOMB_X88_Y65_N14
\FreqDivider|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~0_combout\ = (\FreqDivider|s_counter\(21) & (\FreqDivider|s_counter\(25) & (\FreqDivider|s_counter\(23) & \FreqDivider|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(21),
	datab => \FreqDivider|s_counter\(25),
	datac => \FreqDivider|s_counter\(23),
	datad => \FreqDivider|s_counter\(22),
	combout => \FreqDivider|s_counter~0_combout\);

-- Location: LCCOMB_X88_Y65_N4
\FreqDivider|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~2_combout\ = (\FreqDivider|s_counter\(12) & (\FreqDivider|s_counter\(14) & (\FreqDivider|s_counter\(6) & \FreqDivider|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(12),
	datab => \FreqDivider|s_counter\(14),
	datac => \FreqDivider|s_counter\(6),
	datad => \FreqDivider|s_counter\(13),
	combout => \FreqDivider|s_counter~2_combout\);

-- Location: LCCOMB_X88_Y65_N18
\FreqDivider|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~3_combout\ = (\FreqDivider|s_counter\(4) & (\FreqDivider|s_counter\(3) & (\FreqDivider|s_counter\(2) & \FreqDivider|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(4),
	datab => \FreqDivider|s_counter\(3),
	datac => \FreqDivider|s_counter\(2),
	datad => \FreqDivider|s_counter\(5),
	combout => \FreqDivider|s_counter~3_combout\);

-- Location: LCCOMB_X88_Y65_N20
\FreqDivider|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~4_combout\ = (\FreqDivider|s_counter~1_combout\ & (\FreqDivider|s_counter~0_combout\ & (\FreqDivider|s_counter~2_combout\ & \FreqDivider|s_counter~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter~1_combout\,
	datab => \FreqDivider|s_counter~0_combout\,
	datac => \FreqDivider|s_counter~2_combout\,
	datad => \FreqDivider|s_counter~3_combout\,
	combout => \FreqDivider|s_counter~4_combout\);

-- Location: LCCOMB_X89_Y65_N22
\FreqDivider|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~52_combout\ = (\FreqDivider|s_counter\(26) & (\FreqDivider|Add0~51\ $ (GND))) # (!\FreqDivider|s_counter\(26) & (!\FreqDivider|Add0~51\ & VCC))
-- \FreqDivider|Add0~53\ = CARRY((\FreqDivider|s_counter\(26) & !\FreqDivider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(26),
	datad => VCC,
	cin => \FreqDivider|Add0~51\,
	combout => \FreqDivider|Add0~52_combout\,
	cout => \FreqDivider|Add0~53\);

-- Location: FF_X89_Y65_N23
\FreqDivider|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(26));

-- Location: LCCOMB_X89_Y65_N24
\FreqDivider|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~54_combout\ = (\FreqDivider|s_counter\(27) & (!\FreqDivider|Add0~53\)) # (!\FreqDivider|s_counter\(27) & ((\FreqDivider|Add0~53\) # (GND)))
-- \FreqDivider|Add0~55\ = CARRY((!\FreqDivider|Add0~53\) # (!\FreqDivider|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(27),
	datad => VCC,
	cin => \FreqDivider|Add0~53\,
	combout => \FreqDivider|Add0~54_combout\,
	cout => \FreqDivider|Add0~55\);

-- Location: FF_X89_Y65_N25
\FreqDivider|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(27));

-- Location: LCCOMB_X89_Y65_N26
\FreqDivider|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~56_combout\ = (\FreqDivider|s_counter\(28) & (\FreqDivider|Add0~55\ $ (GND))) # (!\FreqDivider|s_counter\(28) & (!\FreqDivider|Add0~55\ & VCC))
-- \FreqDivider|Add0~57\ = CARRY((\FreqDivider|s_counter\(28) & !\FreqDivider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(28),
	datad => VCC,
	cin => \FreqDivider|Add0~55\,
	combout => \FreqDivider|Add0~56_combout\,
	cout => \FreqDivider|Add0~57\);

-- Location: FF_X89_Y65_N27
\FreqDivider|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(28));

-- Location: LCCOMB_X89_Y65_N28
\FreqDivider|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~58_combout\ = (\FreqDivider|s_counter\(29) & (!\FreqDivider|Add0~57\)) # (!\FreqDivider|s_counter\(29) & ((\FreqDivider|Add0~57\) # (GND)))
-- \FreqDivider|Add0~59\ = CARRY((!\FreqDivider|Add0~57\) # (!\FreqDivider|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(29),
	datad => VCC,
	cin => \FreqDivider|Add0~57\,
	combout => \FreqDivider|Add0~58_combout\,
	cout => \FreqDivider|Add0~59\);

-- Location: FF_X89_Y65_N29
\FreqDivider|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(29));

-- Location: LCCOMB_X89_Y65_N30
\FreqDivider|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~60_combout\ = \FreqDivider|s_counter\(30) $ (!\FreqDivider|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	cin => \FreqDivider|Add0~59\,
	combout => \FreqDivider|Add0~60_combout\);

-- Location: FF_X89_Y65_N31
\FreqDivider|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(30));

-- Location: LCCOMB_X90_Y65_N18
\FreqDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~2_combout\ = (!\FreqDivider|s_counter\(28) & (!\FreqDivider|s_counter\(29) & (!\FreqDivider|s_counter\(8) & !\FreqDivider|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(28),
	datab => \FreqDivider|s_counter\(29),
	datac => \FreqDivider|s_counter\(8),
	datad => \FreqDivider|s_counter\(7),
	combout => \FreqDivider|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y65_N26
\FreqDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~0_combout\ = (!\FreqDivider|s_counter\(26) & (!\FreqDivider|s_counter\(27) & (!\FreqDivider|s_counter\(18) & !\FreqDivider|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(26),
	datab => \FreqDivider|s_counter\(27),
	datac => \FreqDivider|s_counter\(18),
	datad => \FreqDivider|s_counter\(24),
	combout => \FreqDivider|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y65_N0
\FreqDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~1_combout\ = (!\FreqDivider|s_counter\(16) & (!\FreqDivider|s_counter\(10) & (!\FreqDivider|s_counter\(11) & !\FreqDivider|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(16),
	datab => \FreqDivider|s_counter\(10),
	datac => \FreqDivider|s_counter\(11),
	datad => \FreqDivider|s_counter\(9),
	combout => \FreqDivider|Equal0~1_combout\);

-- Location: LCCOMB_X90_Y65_N28
\FreqDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~3_combout\ = (!\FreqDivider|s_counter\(30) & (\FreqDivider|Equal0~2_combout\ & (\FreqDivider|Equal0~0_combout\ & \FreqDivider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	datab => \FreqDivider|Equal0~2_combout\,
	datac => \FreqDivider|Equal0~0_combout\,
	datad => \FreqDivider|Equal0~1_combout\,
	combout => \FreqDivider|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y65_N30
\FreqDivider|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~5_combout\ = (\FreqDivider|s_counter\(0) & (\FreqDivider|s_counter\(1) & (\FreqDivider|s_counter~4_combout\ & \FreqDivider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(0),
	datab => \FreqDivider|s_counter\(1),
	datac => \FreqDivider|s_counter~4_combout\,
	datad => \FreqDivider|Equal0~3_combout\,
	combout => \FreqDivider|s_counter~5_combout\);

-- Location: LCCOMB_X88_Y65_N30
\FreqDivider|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter~8_combout\ = (!\FreqDivider|s_counter~5_combout\ & \FreqDivider|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_counter~5_combout\,
	datad => \FreqDivider|Add0~46_combout\,
	combout => \FreqDivider|s_counter~8_combout\);

-- Location: FF_X88_Y65_N31
\FreqDivider|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(23));

-- Location: LCCOMB_X88_Y65_N24
\FreqDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~4_combout\ = (!\FreqDivider|s_counter\(23) & (!\FreqDivider|s_counter\(22) & (!\FreqDivider|s_counter\(25) & !\FreqDivider|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(23),
	datab => \FreqDivider|s_counter\(22),
	datac => \FreqDivider|s_counter\(25),
	datad => \FreqDivider|s_counter\(21),
	combout => \FreqDivider|Equal0~4_combout\);

-- Location: LCCOMB_X90_Y65_N14
\FreqDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~5_combout\ = (!\FreqDivider|s_counter\(20) & (!\FreqDivider|s_counter\(19) & (!\FreqDivider|s_counter\(17) & !\FreqDivider|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datab => \FreqDivider|s_counter\(19),
	datac => \FreqDivider|s_counter\(17),
	datad => \FreqDivider|s_counter\(15),
	combout => \FreqDivider|Equal0~5_combout\);

-- Location: LCCOMB_X88_Y65_N12
\FreqDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~6_combout\ = (!\FreqDivider|s_counter\(12) & (!\FreqDivider|s_counter\(14) & (!\FreqDivider|s_counter\(6) & !\FreqDivider|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(12),
	datab => \FreqDivider|s_counter\(14),
	datac => \FreqDivider|s_counter\(6),
	datad => \FreqDivider|s_counter\(13),
	combout => \FreqDivider|Equal0~6_combout\);

-- Location: LCCOMB_X88_Y65_N28
\FreqDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~8_combout\ = (\FreqDivider|Equal0~7_combout\ & (\FreqDivider|Equal0~4_combout\ & (\FreqDivider|Equal0~5_combout\ & \FreqDivider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~7_combout\,
	datab => \FreqDivider|Equal0~4_combout\,
	datac => \FreqDivider|Equal0~5_combout\,
	datad => \FreqDivider|Equal0~6_combout\,
	combout => \FreqDivider|Equal0~8_combout\);

-- Location: LCCOMB_X90_Y65_N16
\FreqDivider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~9_combout\ = (!\FreqDivider|s_counter\(0) & (!\FreqDivider|s_counter\(1) & (\FreqDivider|Equal0~8_combout\ & \FreqDivider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(0),
	datab => \FreqDivider|s_counter\(1),
	datac => \FreqDivider|Equal0~8_combout\,
	datad => \FreqDivider|Equal0~3_combout\,
	combout => \FreqDivider|Equal0~9_combout\);

-- Location: FF_X90_Y65_N17
\FreqDivider|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|pulseOut~q\);

-- Location: LCCOMB_X111_Y65_N30
\Counter|s_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count[0]~1_combout\ = (\FreqDivider|pulseOut~q\ & ((\SW[0]~input_o\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \FreqDivider|pulseOut~q\,
	combout => \Counter|s_count[0]~1_combout\);

-- Location: FF_X111_Y65_N9
\Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count~0_combout\,
	ena => \Counter|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(0));

-- Location: LCCOMB_X111_Y65_N18
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (!\BlinkGenerator|LessThan1~4_combout\ & \Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlinkGenerator|LessThan1~4_combout\,
	datac => \Counter|s_count\(0),
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X111_Y65_N10
\Counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|Add0~0_combout\ = (\Counter|s_count\(0) & \Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(1),
	combout => \Counter|Add0~0_combout\);

-- Location: LCCOMB_X111_Y65_N24
\Counter|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~3_combout\ = (!\Counter|max~0_combout\ & (\KEY[0]~input_o\ & (\Counter|Add0~0_combout\ $ (\Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~0_combout\,
	datab => \Counter|max~0_combout\,
	datac => \Counter|s_count\(2),
	datad => \KEY[0]~input_o\,
	combout => \Counter|s_count~3_combout\);

-- Location: FF_X111_Y65_N25
\Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count~3_combout\,
	ena => \Counter|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(2));

-- Location: LCCOMB_X111_Y65_N20
\Counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~4_combout\ = (\KEY[0]~input_o\ & ((\Counter|Add0~0_combout\ & (\Counter|s_count\(2) & !\Counter|s_count\(3))) # (!\Counter|Add0~0_combout\ & ((\Counter|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|Add0~0_combout\,
	datab => \Counter|s_count\(2),
	datac => \Counter|s_count\(3),
	datad => \KEY[0]~input_o\,
	combout => \Counter|s_count~4_combout\);

-- Location: FF_X111_Y65_N21
\Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count~4_combout\,
	ena => \Counter|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(3));

-- Location: LCCOMB_X111_Y65_N28
\Counter|max~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|max~0_combout\ = (\Counter|s_count\(1) & (\Counter|s_count\(3) & (\Counter|s_count\(0) & !\Counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datab => \Counter|s_count\(3),
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(2),
	combout => \Counter|max~0_combout\);

-- Location: LCCOMB_X111_Y65_N0
\Counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~2_combout\ = (!\Counter|max~0_combout\ & (\KEY[0]~input_o\ & (\Counter|s_count\(0) $ (\Counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(0),
	datab => \Counter|max~0_combout\,
	datac => \Counter|s_count\(1),
	datad => \KEY[0]~input_o\,
	combout => \Counter|s_count~2_combout\);

-- Location: FF_X111_Y65_N1
\Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|s_count~2_combout\,
	ena => \Counter|s_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(1));

-- Location: LCCOMB_X111_Y65_N22
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (!\BlinkGenerator|LessThan1~4_combout\ & \Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlinkGenerator|LessThan1~4_combout\,
	datad => \Counter|s_count\(1),
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X111_Y65_N26
\LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (!\BlinkGenerator|LessThan1~4_combout\ & \Counter|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlinkGenerator|LessThan1~4_combout\,
	datad => \Counter|s_count\(2),
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X111_Y65_N6
\LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (!\BlinkGenerator|LessThan1~4_combout\ & \Counter|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlinkGenerator|LessThan1~4_combout\,
	datad => \Counter|s_count\(3),
	combout => \LEDR~3_combout\);

-- Location: LCCOMB_X112_Y65_N12
\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Counter|s_count\(1) $ (VCC)
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datad => VCC,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X112_Y65_N14
\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Counter|s_count\(2) & (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Counter|s_count\(2) & 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Counter|s_count\(2) & !\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datad => VCC,
	cin => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X112_Y65_N16
\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Counter|s_count\(3) & (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Counter|s_count\(3) & 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Counter|s_count\(3) & !\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datad => VCC,
	cin => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X112_Y65_N18
\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X112_Y65_N26
\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Counter|s_count\(2))) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X112_Y65_N24
\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Counter|s_count\(3)))) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Counter|s_count\(3),
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

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

-- Location: LCCOMB_X112_Y65_N0
\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Counter|s_count\(1))) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Counter|s_count\(1),
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\);

-- Location: LCCOMB_X113_Y65_N6
\Bin7SegDecoderUnits|decOut_u[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[0]~3_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[0]~3_combout\);

-- Location: LCCOMB_X113_Y65_N22
\Bin7SegDecoderUnits|decOut_u[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[0]~16_combout\ = ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((!\Bin7SegDecoderUnits|decOut_u[0]~3_combout\))) # (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & \Bin7SegDecoderUnits|decOut_u[0]~3_combout\))) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \Bin7SegDecoderUnits|decOut_u[0]~3_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[0]~16_combout\);

-- Location: LCCOMB_X113_Y65_N28
\Bin7SegDecoderUnits|decOut_u~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u~4_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ $ (\Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u~4_combout\);

-- Location: LCCOMB_X113_Y65_N26
\Bin7SegDecoderUnits|decOut_u~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u~5_combout\ = (\Bin7SegDecoderUnits|decOut_u~4_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \Bin7SegDecoderUnits|decOut_u~4_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u~5_combout\);

-- Location: LCCOMB_X113_Y65_N8
\Bin7SegDecoderUnits|decOut_u[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[2]~6_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\Counter|s_count\(0) & (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- !\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[2]~6_combout\);

-- Location: LCCOMB_X113_Y65_N18
\Bin7SegDecoderUnits|decOut_u[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[2]~7_combout\ = (\Bin7SegDecoderUnits|decOut_u[2]~6_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegDecoderUnits|decOut_u[2]~6_combout\,
	datac => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_u[2]~7_combout\);

-- Location: LCCOMB_X113_Y65_N16
\Bin7SegDecoderUnits|decOut_u~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u~8_combout\ = (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\Counter|s_count\(0) & 
-- \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)) # (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\Counter|s_count\(0) $ (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u~8_combout\);

-- Location: LCCOMB_X113_Y65_N14
\Bin7SegDecoderUnits|decOut_u~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u~9_combout\ = (\Bin7SegDecoderUnits|decOut_u~8_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \Bin7SegDecoderUnits|decOut_u~8_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u~9_combout\);

-- Location: LCCOMB_X113_Y65_N12
\Bin7SegDecoderUnits|decOut_u[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[4]~10_combout\ = (\Counter|s_count\(0)) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(0),
	datac => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_u[4]~10_combout\);

-- Location: LCCOMB_X113_Y65_N2
\Bin7SegDecoderUnits|decOut_u[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[4]~11_combout\ = (\Bin7SegDecoderUnits|decOut_u[4]~10_combout\) # ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)) # 
-- (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \Bin7SegDecoderUnits|decOut_u[4]~10_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[4]~11_combout\);

-- Location: LCCOMB_X113_Y65_N10
\Bin7SegDecoderUnits|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|Equal8~0_combout\ = (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (!\Counter|s_count\(0) & (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- !\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|Equal8~0_combout\);

-- Location: LCCOMB_X113_Y65_N20
\Bin7SegDecoderUnits|decOut_u[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[6]~2_combout\ = (\SW[1]~input_o\ & ((\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\) # (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[6]~2_combout\);

-- Location: LCCOMB_X113_Y65_N24
\Bin7SegDecoderUnits|decOut_u[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[5]~12_combout\ = (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\ & (\Counter|s_count\(0) & (\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- !\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	datab => \Counter|s_count\(0),
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datad => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[5]~12_combout\);

-- Location: LCCOMB_X113_Y65_N0
\Bin7SegDecoderUnits|decOut_u[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[5]~13_combout\ = (\Bin7SegDecoderUnits|decOut_u[6]~2_combout\ & (((\Bin7SegDecoderUnits|decOut_u[5]~12_combout\)))) # (!\Bin7SegDecoderUnits|decOut_u[6]~2_combout\ & (((!\SW[1]~input_o\)) # 
-- (!\Bin7SegDecoderUnits|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoderUnits|Equal8~0_combout\,
	datab => \Bin7SegDecoderUnits|decOut_u[6]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \Bin7SegDecoderUnits|decOut_u[5]~12_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[5]~13_combout\);

-- Location: LCCOMB_X113_Y65_N30
\Bin7SegDecoderUnits|decOut_u[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[6]~14_combout\ = (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- !\BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datac => \BinToBCD|Mod0|auto_generated|divider|divider|StageOut[13]~2_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[6]~14_combout\);

-- Location: LCCOMB_X113_Y65_N4
\Bin7SegDecoderUnits|decOut_u[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_u[6]~15_combout\ = (\Bin7SegDecoderUnits|decOut_u[6]~2_combout\ & (((\Bin7SegDecoderUnits|decOut_u[5]~12_combout\)))) # (!\Bin7SegDecoderUnits|decOut_u[6]~2_combout\ & ((\Bin7SegDecoderUnits|decOut_u[6]~14_combout\) # 
-- ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoderUnits|decOut_u[6]~14_combout\,
	datab => \Bin7SegDecoderUnits|decOut_u[6]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \Bin7SegDecoderUnits|decOut_u[5]~12_combout\,
	combout => \Bin7SegDecoderUnits|decOut_u[6]~15_combout\);

-- Location: LCCOMB_X112_Y65_N4
\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(1),
	datad => VCC,
	cout => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y65_N6
\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\Counter|s_count\(2) & !\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(2),
	datad => VCC,
	cin => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y65_N8
\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\Counter|s_count\(3) & !\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter|s_count\(3),
	datad => VCC,
	cin => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y65_N10
\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X113_Y42_N4
\Bin7SegDecoderUnits|decOut_d[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_d[0]~0_combout\ = (!\SW[1]~input_o\) # (!\BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinToBCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_d[0]~0_combout\);

-- Location: LCCOMB_X111_Y65_N12
\Counter|max~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|max~1_combout\ = (\SW[0]~input_o\ & (\KEY[0]~input_o\ & \FreqDivider|pulseOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \FreqDivider|pulseOut~q\,
	combout => \Counter|max~1_combout\);

-- Location: LCCOMB_X111_Y65_N4
\Counter|max~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|max~2_combout\ = (\Counter|max~1_combout\ & (\Counter|max~0_combout\)) # (!\Counter|max~1_combout\ & ((\Counter|max~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|max~0_combout\,
	datac => \Counter|max~q\,
	datad => \Counter|max~1_combout\,
	combout => \Counter|max~2_combout\);

-- Location: FF_X111_Y65_N5
\Counter|max\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Counter|max~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|max~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


