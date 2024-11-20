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

-- DATE "04/12/2024 11:48:52"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL SW : std_logic_vector(2 DOWNTO 0);
SIGNAL KEY : std_logic_vector(2 DOWNTO 0);

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

ENTITY 	grinaldaNatal IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 4);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END grinaldaNatal;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF grinaldaNatal IS
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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progD|clkDividerN|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \progD|red_blink|s_counter[0]~26_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[11]~49\ : std_logic;
SIGNAL \progD|red_blink|s_counter[12]~50_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[12]~51\ : std_logic;
SIGNAL \progD|red_blink|s_counter[13]~52_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[13]~53\ : std_logic;
SIGNAL \progD|red_blink|s_counter[14]~54_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[14]~55\ : std_logic;
SIGNAL \progD|red_blink|s_counter[15]~56_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[15]~57\ : std_logic;
SIGNAL \progD|red_blink|s_counter[16]~58_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[16]~59\ : std_logic;
SIGNAL \progD|red_blink|s_counter[17]~60_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[17]~61\ : std_logic;
SIGNAL \progD|red_blink|s_counter[18]~62_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[18]~63\ : std_logic;
SIGNAL \progD|red_blink|s_counter[19]~64_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[19]~65\ : std_logic;
SIGNAL \progD|red_blink|s_counter[20]~66_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[20]~67\ : std_logic;
SIGNAL \progD|red_blink|s_counter[21]~68_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[21]~69\ : std_logic;
SIGNAL \progD|red_blink|s_counter[22]~70_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[22]~71\ : std_logic;
SIGNAL \progD|red_blink|s_counter[23]~72_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[23]~73\ : std_logic;
SIGNAL \progD|red_blink|s_counter[24]~74_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[24]~75\ : std_logic;
SIGNAL \progD|red_blink|s_counter[25]~76_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~4_combout\ : std_logic;
SIGNAL \progD|red_blink|LessThan0~0_combout\ : std_logic;
SIGNAL \progD|red_blink|LessThan0~1_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~3_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~6_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~7_combout\ : std_logic;
SIGNAL \progD|red_blink|LessThan0~2_combout\ : std_logic;
SIGNAL \progD|red_blink|LessThan0~3_combout\ : std_logic;
SIGNAL \progD|red_blink|LessThan0~4_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[0]~27\ : std_logic;
SIGNAL \progD|red_blink|s_counter[1]~28_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[1]~29\ : std_logic;
SIGNAL \progD|red_blink|s_counter[2]~30_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[2]~31\ : std_logic;
SIGNAL \progD|red_blink|s_counter[3]~32_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[3]~33\ : std_logic;
SIGNAL \progD|red_blink|s_counter[4]~34_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[4]~35\ : std_logic;
SIGNAL \progD|red_blink|s_counter[5]~36_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[5]~37\ : std_logic;
SIGNAL \progD|red_blink|s_counter[6]~38_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[6]~39\ : std_logic;
SIGNAL \progD|red_blink|s_counter[7]~40_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[7]~41\ : std_logic;
SIGNAL \progD|red_blink|s_counter[8]~42_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[8]~43\ : std_logic;
SIGNAL \progD|red_blink|s_counter[9]~44_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[9]~45\ : std_logic;
SIGNAL \progD|red_blink|s_counter[10]~46_combout\ : std_logic;
SIGNAL \progD|red_blink|s_counter[10]~47\ : std_logic;
SIGNAL \progD|red_blink|s_counter[11]~48_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~2_combout\ : std_logic;
SIGNAL \progD|LEDROUT~3_combout\ : std_logic;
SIGNAL \progD|LEDROUT~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|Equal1~0_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~9_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~5_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~11_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~8_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~10_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~feeder_combout\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~q\ : std_logic;
SIGNAL \progD|clkDividerN|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \progD|timer6s|s_count[0]~32_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[0]~33\ : std_logic;
SIGNAL \progD|timer6s|s_count[1]~34_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[1]~35\ : std_logic;
SIGNAL \progD|timer6s|s_count[2]~36_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[2]~37\ : std_logic;
SIGNAL \progD|timer6s|s_count[3]~38_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[3]~39\ : std_logic;
SIGNAL \progD|timer6s|s_count[4]~41_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[4]~42\ : std_logic;
SIGNAL \progD|timer6s|s_count[5]~43_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[5]~44\ : std_logic;
SIGNAL \progD|timer6s|s_count[6]~45_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~0_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[6]~46\ : std_logic;
SIGNAL \progD|timer6s|s_count[7]~47_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[7]~48\ : std_logic;
SIGNAL \progD|timer6s|s_count[8]~49_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[8]~50\ : std_logic;
SIGNAL \progD|timer6s|s_count[9]~51_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[9]~52\ : std_logic;
SIGNAL \progD|timer6s|s_count[10]~53_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~1_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[10]~54\ : std_logic;
SIGNAL \progD|timer6s|s_count[11]~55_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[11]~56\ : std_logic;
SIGNAL \progD|timer6s|s_count[12]~57_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[12]~58\ : std_logic;
SIGNAL \progD|timer6s|s_count[13]~59_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[13]~60\ : std_logic;
SIGNAL \progD|timer6s|s_count[14]~61_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[14]~62\ : std_logic;
SIGNAL \progD|timer6s|s_count[15]~63_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[15]~64\ : std_logic;
SIGNAL \progD|timer6s|s_count[16]~65_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[16]~66\ : std_logic;
SIGNAL \progD|timer6s|s_count[17]~67_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[17]~68\ : std_logic;
SIGNAL \progD|timer6s|s_count[18]~69_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[18]~70\ : std_logic;
SIGNAL \progD|timer6s|s_count[19]~71_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[19]~72\ : std_logic;
SIGNAL \progD|timer6s|s_count[20]~73_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[20]~74\ : std_logic;
SIGNAL \progD|timer6s|s_count[21]~75_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[21]~76\ : std_logic;
SIGNAL \progD|timer6s|s_count[22]~77_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[22]~78\ : std_logic;
SIGNAL \progD|timer6s|s_count[23]~79_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[23]~80\ : std_logic;
SIGNAL \progD|timer6s|s_count[24]~81_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[24]~82\ : std_logic;
SIGNAL \progD|timer6s|s_count[25]~83_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[25]~84\ : std_logic;
SIGNAL \progD|timer6s|s_count[26]~85_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~6_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[26]~86\ : std_logic;
SIGNAL \progD|timer6s|s_count[27]~87_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[27]~88\ : std_logic;
SIGNAL \progD|timer6s|s_count[28]~89_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[28]~90\ : std_logic;
SIGNAL \progD|timer6s|s_count[29]~91_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[29]~92\ : std_logic;
SIGNAL \progD|timer6s|s_count[30]~93_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[30]~94\ : std_logic;
SIGNAL \progD|timer6s|s_count[31]~95_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~5_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~7_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~8_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~3_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~2_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~4_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~9_combout\ : std_logic;
SIGNAL \progD|timer6s|s_count[17]~40_combout\ : std_logic;
SIGNAL \progD|timer6s|Equal0~10_combout\ : std_logic;
SIGNAL \progD|timer6s|timerOut~q\ : std_logic;
SIGNAL \progD|last_timer_output~feeder_combout\ : std_logic;
SIGNAL \progD|last_timer_output~q\ : std_logic;
SIGNAL \progD|phase~0_combout\ : std_logic;
SIGNAL \progD|phase~q\ : std_logic;
SIGNAL \progD|LEDROUT~0_combout\ : std_logic;
SIGNAL \progD|LEDROUT~1_combout\ : std_logic;
SIGNAL \progD|LEDROUT~2_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[0]~25_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~2_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~0_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~1_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~3_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~5_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~2_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~4_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~6_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan0~7_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[0]~26\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[1]~27_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[1]~28\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[2]~29_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[2]~30\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[3]~31_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[3]~32\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[4]~33_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[4]~34\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[5]~35_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[5]~36\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[6]~37_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[6]~38\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[7]~39_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[7]~40\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[8]~41_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[8]~42\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[9]~43_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[9]~44\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[10]~45_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[10]~46\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[11]~47_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[11]~48\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[12]~49_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[12]~50\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[13]~51_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[13]~52\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[14]~53_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[14]~54\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[15]~55_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[15]~56\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[16]~57_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[16]~58\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[17]~59_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[17]~60\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[18]~61_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[18]~62\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[19]~63_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[19]~64\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[20]~65_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[20]~66\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[21]~67_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[21]~68\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[22]~69_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[22]~70\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[23]~71_combout\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[23]~72\ : std_logic;
SIGNAL \progB|blinkInstance|s_counter[24]~73_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~3_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~0_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~1_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~4_combout\ : std_logic;
SIGNAL \progB|blinkInstance|LessThan1~5_combout\ : std_logic;
SIGNAL \progB|LEDROUT~0_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \progD|LEDGOUT~2_combout\ : std_logic;
SIGNAL \progC|LEDGOUT~0_combout\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|decOut_n[5]~4_combout\ : std_logic;
SIGNAL \progC|LEDGOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progB|blinkInstance|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \progD|LEDROUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progB|LEDROUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \progD|red_blink|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \progD|timer6s|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \progD|LEDGOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \Bin7SegDecoderUnits|ALT_INV_decOut_n[2]~2_combout\ : std_logic;

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
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\progD|clkDividerN|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \progD|clkDividerN|clkOut~q\);
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\Bin7SegDecoderUnits|ALT_INV_decOut_n[2]~2_combout\ <= NOT \Bin7SegDecoderUnits|decOut_n[2]~2_combout\;
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegDecoderUnits|decOut_n[0]~0_combout\,
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
	i => \Bin7SegDecoderUnits|decOut_n[1]~1_combout\,
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
	i => \Bin7SegDecoderUnits|ALT_INV_decOut_n[2]~2_combout\,
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
	i => \Bin7SegDecoderUnits|decOut_n[3]~3_combout\,
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
	i => \ALT_INV_SW[2]~input_o\,
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
	i => \Bin7SegDecoderUnits|decOut_n[5]~4_combout\,
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
	i => \Bin7SegDecoderUnits|ALT_INV_decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X102_Y56_N6
\progD|red_blink|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[0]~26_combout\ = \progD|red_blink|s_counter\(0) $ (VCC)
-- \progD|red_blink|s_counter[0]~27\ = CARRY(\progD|red_blink|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(0),
	datad => VCC,
	combout => \progD|red_blink|s_counter[0]~26_combout\,
	cout => \progD|red_blink|s_counter[0]~27\);

-- Location: LCCOMB_X102_Y56_N28
\progD|red_blink|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[11]~48_combout\ = (\progD|red_blink|s_counter\(11) & (!\progD|red_blink|s_counter[10]~47\)) # (!\progD|red_blink|s_counter\(11) & ((\progD|red_blink|s_counter[10]~47\) # (GND)))
-- \progD|red_blink|s_counter[11]~49\ = CARRY((!\progD|red_blink|s_counter[10]~47\) # (!\progD|red_blink|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(11),
	datad => VCC,
	cin => \progD|red_blink|s_counter[10]~47\,
	combout => \progD|red_blink|s_counter[11]~48_combout\,
	cout => \progD|red_blink|s_counter[11]~49\);

-- Location: LCCOMB_X102_Y56_N30
\progD|red_blink|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[12]~50_combout\ = (\progD|red_blink|s_counter\(12) & (\progD|red_blink|s_counter[11]~49\ $ (GND))) # (!\progD|red_blink|s_counter\(12) & (!\progD|red_blink|s_counter[11]~49\ & VCC))
-- \progD|red_blink|s_counter[12]~51\ = CARRY((\progD|red_blink|s_counter\(12) & !\progD|red_blink|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(12),
	datad => VCC,
	cin => \progD|red_blink|s_counter[11]~49\,
	combout => \progD|red_blink|s_counter[12]~50_combout\,
	cout => \progD|red_blink|s_counter[12]~51\);

-- Location: FF_X102_Y56_N31
\progD|red_blink|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[12]~50_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(12));

-- Location: LCCOMB_X102_Y55_N0
\progD|red_blink|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[13]~52_combout\ = (\progD|red_blink|s_counter\(13) & (!\progD|red_blink|s_counter[12]~51\)) # (!\progD|red_blink|s_counter\(13) & ((\progD|red_blink|s_counter[12]~51\) # (GND)))
-- \progD|red_blink|s_counter[13]~53\ = CARRY((!\progD|red_blink|s_counter[12]~51\) # (!\progD|red_blink|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(13),
	datad => VCC,
	cin => \progD|red_blink|s_counter[12]~51\,
	combout => \progD|red_blink|s_counter[13]~52_combout\,
	cout => \progD|red_blink|s_counter[13]~53\);

-- Location: FF_X103_Y56_N7
\progD|red_blink|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \progD|red_blink|s_counter[13]~52_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(13));

-- Location: LCCOMB_X102_Y55_N2
\progD|red_blink|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[14]~54_combout\ = (\progD|red_blink|s_counter\(14) & (\progD|red_blink|s_counter[13]~53\ $ (GND))) # (!\progD|red_blink|s_counter\(14) & (!\progD|red_blink|s_counter[13]~53\ & VCC))
-- \progD|red_blink|s_counter[14]~55\ = CARRY((\progD|red_blink|s_counter\(14) & !\progD|red_blink|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(14),
	datad => VCC,
	cin => \progD|red_blink|s_counter[13]~53\,
	combout => \progD|red_blink|s_counter[14]~54_combout\,
	cout => \progD|red_blink|s_counter[14]~55\);

-- Location: FF_X103_Y56_N23
\progD|red_blink|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \progD|red_blink|s_counter[14]~54_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(14));

-- Location: LCCOMB_X102_Y55_N4
\progD|red_blink|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[15]~56_combout\ = (\progD|red_blink|s_counter\(15) & (!\progD|red_blink|s_counter[14]~55\)) # (!\progD|red_blink|s_counter\(15) & ((\progD|red_blink|s_counter[14]~55\) # (GND)))
-- \progD|red_blink|s_counter[15]~57\ = CARRY((!\progD|red_blink|s_counter[14]~55\) # (!\progD|red_blink|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(15),
	datad => VCC,
	cin => \progD|red_blink|s_counter[14]~55\,
	combout => \progD|red_blink|s_counter[15]~56_combout\,
	cout => \progD|red_blink|s_counter[15]~57\);

-- Location: FF_X103_Y56_N19
\progD|red_blink|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \progD|red_blink|s_counter[15]~56_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(15));

-- Location: LCCOMB_X102_Y55_N6
\progD|red_blink|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[16]~58_combout\ = (\progD|red_blink|s_counter\(16) & (\progD|red_blink|s_counter[15]~57\ $ (GND))) # (!\progD|red_blink|s_counter\(16) & (!\progD|red_blink|s_counter[15]~57\ & VCC))
-- \progD|red_blink|s_counter[16]~59\ = CARRY((\progD|red_blink|s_counter\(16) & !\progD|red_blink|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(16),
	datad => VCC,
	cin => \progD|red_blink|s_counter[15]~57\,
	combout => \progD|red_blink|s_counter[16]~58_combout\,
	cout => \progD|red_blink|s_counter[16]~59\);

-- Location: FF_X103_Y56_N27
\progD|red_blink|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \progD|red_blink|s_counter[16]~58_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(16));

-- Location: LCCOMB_X102_Y55_N8
\progD|red_blink|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[17]~60_combout\ = (\progD|red_blink|s_counter\(17) & (!\progD|red_blink|s_counter[16]~59\)) # (!\progD|red_blink|s_counter\(17) & ((\progD|red_blink|s_counter[16]~59\) # (GND)))
-- \progD|red_blink|s_counter[17]~61\ = CARRY((!\progD|red_blink|s_counter[16]~59\) # (!\progD|red_blink|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(17),
	datad => VCC,
	cin => \progD|red_blink|s_counter[16]~59\,
	combout => \progD|red_blink|s_counter[17]~60_combout\,
	cout => \progD|red_blink|s_counter[17]~61\);

-- Location: FF_X102_Y55_N9
\progD|red_blink|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[17]~60_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(17));

-- Location: LCCOMB_X102_Y55_N10
\progD|red_blink|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[18]~62_combout\ = (\progD|red_blink|s_counter\(18) & (\progD|red_blink|s_counter[17]~61\ $ (GND))) # (!\progD|red_blink|s_counter\(18) & (!\progD|red_blink|s_counter[17]~61\ & VCC))
-- \progD|red_blink|s_counter[18]~63\ = CARRY((\progD|red_blink|s_counter\(18) & !\progD|red_blink|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(18),
	datad => VCC,
	cin => \progD|red_blink|s_counter[17]~61\,
	combout => \progD|red_blink|s_counter[18]~62_combout\,
	cout => \progD|red_blink|s_counter[18]~63\);

-- Location: FF_X102_Y55_N11
\progD|red_blink|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[18]~62_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(18));

-- Location: LCCOMB_X102_Y55_N12
\progD|red_blink|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[19]~64_combout\ = (\progD|red_blink|s_counter\(19) & (!\progD|red_blink|s_counter[18]~63\)) # (!\progD|red_blink|s_counter\(19) & ((\progD|red_blink|s_counter[18]~63\) # (GND)))
-- \progD|red_blink|s_counter[19]~65\ = CARRY((!\progD|red_blink|s_counter[18]~63\) # (!\progD|red_blink|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(19),
	datad => VCC,
	cin => \progD|red_blink|s_counter[18]~63\,
	combout => \progD|red_blink|s_counter[19]~64_combout\,
	cout => \progD|red_blink|s_counter[19]~65\);

-- Location: FF_X102_Y55_N13
\progD|red_blink|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[19]~64_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(19));

-- Location: LCCOMB_X102_Y55_N14
\progD|red_blink|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[20]~66_combout\ = (\progD|red_blink|s_counter\(20) & (\progD|red_blink|s_counter[19]~65\ $ (GND))) # (!\progD|red_blink|s_counter\(20) & (!\progD|red_blink|s_counter[19]~65\ & VCC))
-- \progD|red_blink|s_counter[20]~67\ = CARRY((\progD|red_blink|s_counter\(20) & !\progD|red_blink|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(20),
	datad => VCC,
	cin => \progD|red_blink|s_counter[19]~65\,
	combout => \progD|red_blink|s_counter[20]~66_combout\,
	cout => \progD|red_blink|s_counter[20]~67\);

-- Location: FF_X102_Y55_N15
\progD|red_blink|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[20]~66_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(20));

-- Location: LCCOMB_X102_Y55_N16
\progD|red_blink|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[21]~68_combout\ = (\progD|red_blink|s_counter\(21) & (!\progD|red_blink|s_counter[20]~67\)) # (!\progD|red_blink|s_counter\(21) & ((\progD|red_blink|s_counter[20]~67\) # (GND)))
-- \progD|red_blink|s_counter[21]~69\ = CARRY((!\progD|red_blink|s_counter[20]~67\) # (!\progD|red_blink|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(21),
	datad => VCC,
	cin => \progD|red_blink|s_counter[20]~67\,
	combout => \progD|red_blink|s_counter[21]~68_combout\,
	cout => \progD|red_blink|s_counter[21]~69\);

-- Location: FF_X102_Y55_N17
\progD|red_blink|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[21]~68_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(21));

-- Location: LCCOMB_X102_Y55_N18
\progD|red_blink|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[22]~70_combout\ = (\progD|red_blink|s_counter\(22) & (\progD|red_blink|s_counter[21]~69\ $ (GND))) # (!\progD|red_blink|s_counter\(22) & (!\progD|red_blink|s_counter[21]~69\ & VCC))
-- \progD|red_blink|s_counter[22]~71\ = CARRY((\progD|red_blink|s_counter\(22) & !\progD|red_blink|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(22),
	datad => VCC,
	cin => \progD|red_blink|s_counter[21]~69\,
	combout => \progD|red_blink|s_counter[22]~70_combout\,
	cout => \progD|red_blink|s_counter[22]~71\);

-- Location: FF_X102_Y55_N19
\progD|red_blink|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[22]~70_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(22));

-- Location: LCCOMB_X102_Y55_N20
\progD|red_blink|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[23]~72_combout\ = (\progD|red_blink|s_counter\(23) & (!\progD|red_blink|s_counter[22]~71\)) # (!\progD|red_blink|s_counter\(23) & ((\progD|red_blink|s_counter[22]~71\) # (GND)))
-- \progD|red_blink|s_counter[23]~73\ = CARRY((!\progD|red_blink|s_counter[22]~71\) # (!\progD|red_blink|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(23),
	datad => VCC,
	cin => \progD|red_blink|s_counter[22]~71\,
	combout => \progD|red_blink|s_counter[23]~72_combout\,
	cout => \progD|red_blink|s_counter[23]~73\);

-- Location: FF_X102_Y55_N21
\progD|red_blink|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[23]~72_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(23));

-- Location: LCCOMB_X102_Y55_N22
\progD|red_blink|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[24]~74_combout\ = (\progD|red_blink|s_counter\(24) & (\progD|red_blink|s_counter[23]~73\ $ (GND))) # (!\progD|red_blink|s_counter\(24) & (!\progD|red_blink|s_counter[23]~73\ & VCC))
-- \progD|red_blink|s_counter[24]~75\ = CARRY((\progD|red_blink|s_counter\(24) & !\progD|red_blink|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(24),
	datad => VCC,
	cin => \progD|red_blink|s_counter[23]~73\,
	combout => \progD|red_blink|s_counter[24]~74_combout\,
	cout => \progD|red_blink|s_counter[24]~75\);

-- Location: FF_X102_Y55_N23
\progD|red_blink|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[24]~74_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(24));

-- Location: LCCOMB_X102_Y55_N24
\progD|red_blink|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[25]~76_combout\ = \progD|red_blink|s_counter[24]~75\ $ (\progD|red_blink|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \progD|red_blink|s_counter\(25),
	cin => \progD|red_blink|s_counter[24]~75\,
	combout => \progD|red_blink|s_counter[25]~76_combout\);

-- Location: FF_X102_Y55_N25
\progD|red_blink|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[25]~76_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(25));

-- Location: LCCOMB_X102_Y55_N26
\progD|clkDividerN|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~4_combout\ = (\progD|red_blink|s_counter\(19) & (\progD|red_blink|s_counter\(22) & (\progD|red_blink|s_counter\(20) & \progD|red_blink|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(19),
	datab => \progD|red_blink|s_counter\(22),
	datac => \progD|red_blink|s_counter\(20),
	datad => \progD|red_blink|s_counter\(21),
	combout => \progD|clkDividerN|clkOut~4_combout\);

-- Location: LCCOMB_X103_Y56_N14
\progD|red_blink|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|LessThan0~0_combout\ = (((!\progD|red_blink|s_counter\(18) & !\progD|red_blink|s_counter\(17))) # (!\progD|red_blink|s_counter\(23))) # (!\progD|clkDividerN|clkOut~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~4_combout\,
	datab => \progD|red_blink|s_counter\(18),
	datac => \progD|red_blink|s_counter\(17),
	datad => \progD|red_blink|s_counter\(23),
	combout => \progD|red_blink|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y56_N10
\progD|red_blink|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|LessThan0~1_combout\ = (((!\progD|red_blink|s_counter\(12)) # (!\progD|red_blink|s_counter\(13))) # (!\progD|red_blink|s_counter\(15))) # (!\progD|red_blink|s_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(14),
	datab => \progD|red_blink|s_counter\(15),
	datac => \progD|red_blink|s_counter\(13),
	datad => \progD|red_blink|s_counter\(12),
	combout => \progD|red_blink|LessThan0~1_combout\);

-- Location: LCCOMB_X102_Y56_N4
\progD|clkDividerN|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~3_combout\ = (!\progD|red_blink|s_counter\(10) & (!\progD|red_blink|s_counter\(7) & (!\progD|red_blink|s_counter\(8) & !\progD|red_blink|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(10),
	datab => \progD|red_blink|s_counter\(7),
	datac => \progD|red_blink|s_counter\(8),
	datad => \progD|red_blink|s_counter\(9),
	combout => \progD|clkDividerN|clkOut~3_combout\);

-- Location: LCCOMB_X102_Y56_N2
\progD|clkDividerN|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~6_combout\ = (\progD|red_blink|s_counter\(3) & (\progD|red_blink|s_counter\(2) & (\progD|red_blink|s_counter\(1) & \progD|red_blink|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(3),
	datab => \progD|red_blink|s_counter\(2),
	datac => \progD|red_blink|s_counter\(1),
	datad => \progD|red_blink|s_counter\(0),
	combout => \progD|clkDividerN|clkOut~6_combout\);

-- Location: LCCOMB_X102_Y56_N0
\progD|clkDividerN|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~7_combout\ = (\progD|red_blink|s_counter\(5) & (\progD|red_blink|s_counter\(4) & \progD|clkDividerN|clkOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(5),
	datac => \progD|red_blink|s_counter\(4),
	datad => \progD|clkDividerN|clkOut~6_combout\,
	combout => \progD|clkDividerN|clkOut~7_combout\);

-- Location: LCCOMB_X103_Y56_N20
\progD|red_blink|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|LessThan0~2_combout\ = (!\progD|red_blink|s_counter\(11) & (\progD|clkDividerN|clkOut~3_combout\ & ((!\progD|red_blink|s_counter\(6)) # (!\progD|clkDividerN|clkOut~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(11),
	datab => \progD|clkDividerN|clkOut~3_combout\,
	datac => \progD|clkDividerN|clkOut~7_combout\,
	datad => \progD|red_blink|s_counter\(6),
	combout => \progD|red_blink|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y56_N2
\progD|red_blink|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|LessThan0~3_combout\ = (!\progD|red_blink|s_counter\(16) & (!\progD|red_blink|s_counter\(18) & ((\progD|red_blink|LessThan0~1_combout\) # (\progD|red_blink|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|LessThan0~1_combout\,
	datab => \progD|red_blink|s_counter\(16),
	datac => \progD|red_blink|s_counter\(18),
	datad => \progD|red_blink|LessThan0~2_combout\,
	combout => \progD|red_blink|LessThan0~3_combout\);

-- Location: LCCOMB_X103_Y56_N0
\progD|red_blink|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|LessThan0~4_combout\ = (\progD|red_blink|s_counter\(25) & ((\progD|red_blink|s_counter\(24)) # ((!\progD|red_blink|LessThan0~0_combout\ & !\progD|red_blink|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(25),
	datab => \progD|red_blink|s_counter\(24),
	datac => \progD|red_blink|LessThan0~0_combout\,
	datad => \progD|red_blink|LessThan0~3_combout\,
	combout => \progD|red_blink|LessThan0~4_combout\);

-- Location: FF_X102_Y56_N7
\progD|red_blink|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[0]~26_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(0));

-- Location: LCCOMB_X102_Y56_N8
\progD|red_blink|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[1]~28_combout\ = (\progD|red_blink|s_counter\(1) & (!\progD|red_blink|s_counter[0]~27\)) # (!\progD|red_blink|s_counter\(1) & ((\progD|red_blink|s_counter[0]~27\) # (GND)))
-- \progD|red_blink|s_counter[1]~29\ = CARRY((!\progD|red_blink|s_counter[0]~27\) # (!\progD|red_blink|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(1),
	datad => VCC,
	cin => \progD|red_blink|s_counter[0]~27\,
	combout => \progD|red_blink|s_counter[1]~28_combout\,
	cout => \progD|red_blink|s_counter[1]~29\);

-- Location: FF_X102_Y56_N9
\progD|red_blink|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[1]~28_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(1));

-- Location: LCCOMB_X102_Y56_N10
\progD|red_blink|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[2]~30_combout\ = (\progD|red_blink|s_counter\(2) & (\progD|red_blink|s_counter[1]~29\ $ (GND))) # (!\progD|red_blink|s_counter\(2) & (!\progD|red_blink|s_counter[1]~29\ & VCC))
-- \progD|red_blink|s_counter[2]~31\ = CARRY((\progD|red_blink|s_counter\(2) & !\progD|red_blink|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(2),
	datad => VCC,
	cin => \progD|red_blink|s_counter[1]~29\,
	combout => \progD|red_blink|s_counter[2]~30_combout\,
	cout => \progD|red_blink|s_counter[2]~31\);

-- Location: FF_X102_Y56_N11
\progD|red_blink|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[2]~30_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(2));

-- Location: LCCOMB_X102_Y56_N12
\progD|red_blink|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[3]~32_combout\ = (\progD|red_blink|s_counter\(3) & (!\progD|red_blink|s_counter[2]~31\)) # (!\progD|red_blink|s_counter\(3) & ((\progD|red_blink|s_counter[2]~31\) # (GND)))
-- \progD|red_blink|s_counter[3]~33\ = CARRY((!\progD|red_blink|s_counter[2]~31\) # (!\progD|red_blink|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(3),
	datad => VCC,
	cin => \progD|red_blink|s_counter[2]~31\,
	combout => \progD|red_blink|s_counter[3]~32_combout\,
	cout => \progD|red_blink|s_counter[3]~33\);

-- Location: FF_X102_Y56_N13
\progD|red_blink|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[3]~32_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(3));

-- Location: LCCOMB_X102_Y56_N14
\progD|red_blink|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[4]~34_combout\ = (\progD|red_blink|s_counter\(4) & (\progD|red_blink|s_counter[3]~33\ $ (GND))) # (!\progD|red_blink|s_counter\(4) & (!\progD|red_blink|s_counter[3]~33\ & VCC))
-- \progD|red_blink|s_counter[4]~35\ = CARRY((\progD|red_blink|s_counter\(4) & !\progD|red_blink|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(4),
	datad => VCC,
	cin => \progD|red_blink|s_counter[3]~33\,
	combout => \progD|red_blink|s_counter[4]~34_combout\,
	cout => \progD|red_blink|s_counter[4]~35\);

-- Location: FF_X102_Y56_N15
\progD|red_blink|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[4]~34_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(4));

-- Location: LCCOMB_X102_Y56_N16
\progD|red_blink|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[5]~36_combout\ = (\progD|red_blink|s_counter\(5) & (!\progD|red_blink|s_counter[4]~35\)) # (!\progD|red_blink|s_counter\(5) & ((\progD|red_blink|s_counter[4]~35\) # (GND)))
-- \progD|red_blink|s_counter[5]~37\ = CARRY((!\progD|red_blink|s_counter[4]~35\) # (!\progD|red_blink|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(5),
	datad => VCC,
	cin => \progD|red_blink|s_counter[4]~35\,
	combout => \progD|red_blink|s_counter[5]~36_combout\,
	cout => \progD|red_blink|s_counter[5]~37\);

-- Location: FF_X102_Y56_N17
\progD|red_blink|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[5]~36_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(5));

-- Location: LCCOMB_X102_Y56_N18
\progD|red_blink|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[6]~38_combout\ = (\progD|red_blink|s_counter\(6) & (\progD|red_blink|s_counter[5]~37\ $ (GND))) # (!\progD|red_blink|s_counter\(6) & (!\progD|red_blink|s_counter[5]~37\ & VCC))
-- \progD|red_blink|s_counter[6]~39\ = CARRY((\progD|red_blink|s_counter\(6) & !\progD|red_blink|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(6),
	datad => VCC,
	cin => \progD|red_blink|s_counter[5]~37\,
	combout => \progD|red_blink|s_counter[6]~38_combout\,
	cout => \progD|red_blink|s_counter[6]~39\);

-- Location: FF_X102_Y56_N19
\progD|red_blink|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[6]~38_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(6));

-- Location: LCCOMB_X102_Y56_N20
\progD|red_blink|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[7]~40_combout\ = (\progD|red_blink|s_counter\(7) & (!\progD|red_blink|s_counter[6]~39\)) # (!\progD|red_blink|s_counter\(7) & ((\progD|red_blink|s_counter[6]~39\) # (GND)))
-- \progD|red_blink|s_counter[7]~41\ = CARRY((!\progD|red_blink|s_counter[6]~39\) # (!\progD|red_blink|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(7),
	datad => VCC,
	cin => \progD|red_blink|s_counter[6]~39\,
	combout => \progD|red_blink|s_counter[7]~40_combout\,
	cout => \progD|red_blink|s_counter[7]~41\);

-- Location: FF_X102_Y56_N21
\progD|red_blink|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[7]~40_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(7));

-- Location: LCCOMB_X102_Y56_N22
\progD|red_blink|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[8]~42_combout\ = (\progD|red_blink|s_counter\(8) & (\progD|red_blink|s_counter[7]~41\ $ (GND))) # (!\progD|red_blink|s_counter\(8) & (!\progD|red_blink|s_counter[7]~41\ & VCC))
-- \progD|red_blink|s_counter[8]~43\ = CARRY((\progD|red_blink|s_counter\(8) & !\progD|red_blink|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(8),
	datad => VCC,
	cin => \progD|red_blink|s_counter[7]~41\,
	combout => \progD|red_blink|s_counter[8]~42_combout\,
	cout => \progD|red_blink|s_counter[8]~43\);

-- Location: FF_X102_Y56_N23
\progD|red_blink|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[8]~42_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(8));

-- Location: LCCOMB_X102_Y56_N24
\progD|red_blink|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[9]~44_combout\ = (\progD|red_blink|s_counter\(9) & (!\progD|red_blink|s_counter[8]~43\)) # (!\progD|red_blink|s_counter\(9) & ((\progD|red_blink|s_counter[8]~43\) # (GND)))
-- \progD|red_blink|s_counter[9]~45\ = CARRY((!\progD|red_blink|s_counter[8]~43\) # (!\progD|red_blink|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(9),
	datad => VCC,
	cin => \progD|red_blink|s_counter[8]~43\,
	combout => \progD|red_blink|s_counter[9]~44_combout\,
	cout => \progD|red_blink|s_counter[9]~45\);

-- Location: FF_X102_Y56_N25
\progD|red_blink|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[9]~44_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(9));

-- Location: LCCOMB_X102_Y56_N26
\progD|red_blink|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|red_blink|s_counter[10]~46_combout\ = (\progD|red_blink|s_counter\(10) & (\progD|red_blink|s_counter[9]~45\ $ (GND))) # (!\progD|red_blink|s_counter\(10) & (!\progD|red_blink|s_counter[9]~45\ & VCC))
-- \progD|red_blink|s_counter[10]~47\ = CARRY((\progD|red_blink|s_counter\(10) & !\progD|red_blink|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(10),
	datad => VCC,
	cin => \progD|red_blink|s_counter[9]~45\,
	combout => \progD|red_blink|s_counter[10]~46_combout\,
	cout => \progD|red_blink|s_counter[10]~47\);

-- Location: FF_X102_Y56_N27
\progD|red_blink|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[10]~46_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(10));

-- Location: FF_X102_Y56_N29
\progD|red_blink|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|red_blink|s_counter[11]~48_combout\,
	sclr => \progD|red_blink|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|red_blink|s_counter\(11));

-- Location: LCCOMB_X103_Y56_N6
\progD|clkDividerN|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~2_combout\ = (\progD|red_blink|s_counter\(11) & (\progD|red_blink|s_counter\(14) & (\progD|red_blink|s_counter\(13) & \progD|red_blink|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(11),
	datab => \progD|red_blink|s_counter\(14),
	datac => \progD|red_blink|s_counter\(13),
	datad => \progD|red_blink|s_counter\(12),
	combout => \progD|clkDividerN|clkOut~2_combout\);

-- Location: LCCOMB_X103_Y56_N18
\progD|LEDROUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDROUT~3_combout\ = (\progD|red_blink|s_counter\(15)) # ((\progD|clkDividerN|clkOut~2_combout\ & ((\progD|red_blink|s_counter\(6)) # (!\progD|clkDividerN|clkOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~2_combout\,
	datab => \progD|clkDividerN|clkOut~3_combout\,
	datac => \progD|red_blink|s_counter\(15),
	datad => \progD|red_blink|s_counter\(6),
	combout => \progD|LEDROUT~3_combout\);

-- Location: LCCOMB_X103_Y56_N26
\progD|LEDROUT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDROUT~4_combout\ = (\progD|red_blink|s_counter\(17)) # ((\progD|LEDROUT~3_combout\ & \progD|red_blink|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|LEDROUT~3_combout\,
	datab => \progD|red_blink|s_counter\(17),
	datac => \progD|red_blink|s_counter\(16),
	combout => \progD|LEDROUT~4_combout\);

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

-- Location: LCCOMB_X101_Y56_N0
\Bin7SegDecoderUnits|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|Equal1~0_combout\ = (\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Bin7SegDecoderUnits|Equal1~0_combout\);

-- Location: LCCOMB_X103_Y56_N4
\progD|clkDividerN|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~9_combout\ = (!\progD|red_blink|s_counter\(25) & (!\progD|red_blink|s_counter\(15) & (!\progD|red_blink|s_counter\(17) & !\progD|red_blink|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(25),
	datab => \progD|red_blink|s_counter\(15),
	datac => \progD|red_blink|s_counter\(17),
	datad => \progD|red_blink|s_counter\(23),
	combout => \progD|clkDividerN|clkOut~9_combout\);

-- Location: LCCOMB_X103_Y56_N28
\progD|clkDividerN|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~5_combout\ = (\progD|red_blink|s_counter\(18) & (\progD|red_blink|s_counter\(24) & \progD|clkDividerN|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progD|red_blink|s_counter\(18),
	datac => \progD|red_blink|s_counter\(24),
	datad => \progD|clkDividerN|clkOut~4_combout\,
	combout => \progD|clkDividerN|clkOut~5_combout\);

-- Location: LCCOMB_X103_Y56_N30
\progD|clkDividerN|clkOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~11_combout\ = (\progD|clkDividerN|clkOut~2_combout\ & (\progD|red_blink|s_counter\(16) & (\progD|clkDividerN|clkOut~9_combout\ & \progD|clkDividerN|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~2_combout\,
	datab => \progD|red_blink|s_counter\(16),
	datac => \progD|clkDividerN|clkOut~9_combout\,
	datad => \progD|clkDividerN|clkOut~5_combout\,
	combout => \progD|clkDividerN|clkOut~11_combout\);

-- Location: LCCOMB_X103_Y56_N24
\progD|clkDividerN|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~8_combout\ = (\progD|clkDividerN|clkOut~7_combout\ & (!\progD|red_blink|s_counter\(6) & \progD|clkDividerN|clkOut~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~7_combout\,
	datab => \progD|red_blink|s_counter\(6),
	datac => \progD|clkDividerN|clkOut~3_combout\,
	combout => \progD|clkDividerN|clkOut~8_combout\);

-- Location: LCCOMB_X103_Y56_N8
\progD|clkDividerN|clkOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~10_combout\ = (!\progD|red_blink|LessThan0~4_combout\ & ((\progD|clkDividerN|clkOut~q\) # ((\progD|clkDividerN|clkOut~11_combout\ & \progD|clkDividerN|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~11_combout\,
	datab => \progD|clkDividerN|clkOut~8_combout\,
	datac => \progD|clkDividerN|clkOut~q\,
	datad => \progD|red_blink|LessThan0~4_combout\,
	combout => \progD|clkDividerN|clkOut~10_combout\);

-- Location: LCCOMB_X103_Y56_N16
\progD|clkDividerN|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|clkDividerN|clkOut~feeder_combout\ = \progD|clkDividerN|clkOut~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|clkDividerN|clkOut~10_combout\,
	combout => \progD|clkDividerN|clkOut~feeder_combout\);

-- Location: FF_X103_Y56_N17
\progD|clkDividerN|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|clkDividerN|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|clkDividerN|clkOut~q\);

-- Location: CLKCTRL_G9
\progD|clkDividerN|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \progD|clkDividerN|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \progD|clkDividerN|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X100_Y57_N0
\progD|timer6s|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[0]~32_combout\ = \progD|timer6s|s_count\(0) $ (VCC)
-- \progD|timer6s|s_count[0]~33\ = CARRY(\progD|timer6s|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(0),
	datad => VCC,
	combout => \progD|timer6s|s_count[0]~32_combout\,
	cout => \progD|timer6s|s_count[0]~33\);

-- Location: LCCOMB_X100_Y57_N2
\progD|timer6s|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[1]~34_combout\ = (\progD|timer6s|s_count\(1) & (!\progD|timer6s|s_count[0]~33\)) # (!\progD|timer6s|s_count\(1) & ((\progD|timer6s|s_count[0]~33\) # (GND)))
-- \progD|timer6s|s_count[1]~35\ = CARRY((!\progD|timer6s|s_count[0]~33\) # (!\progD|timer6s|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(1),
	datad => VCC,
	cin => \progD|timer6s|s_count[0]~33\,
	combout => \progD|timer6s|s_count[1]~34_combout\,
	cout => \progD|timer6s|s_count[1]~35\);

-- Location: FF_X100_Y57_N3
\progD|timer6s|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[1]~34_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(1));

-- Location: LCCOMB_X100_Y57_N4
\progD|timer6s|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[2]~36_combout\ = (\progD|timer6s|s_count\(2) & (\progD|timer6s|s_count[1]~35\ $ (GND))) # (!\progD|timer6s|s_count\(2) & (!\progD|timer6s|s_count[1]~35\ & VCC))
-- \progD|timer6s|s_count[2]~37\ = CARRY((\progD|timer6s|s_count\(2) & !\progD|timer6s|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(2),
	datad => VCC,
	cin => \progD|timer6s|s_count[1]~35\,
	combout => \progD|timer6s|s_count[2]~36_combout\,
	cout => \progD|timer6s|s_count[2]~37\);

-- Location: FF_X100_Y57_N5
\progD|timer6s|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[2]~36_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(2));

-- Location: LCCOMB_X100_Y57_N6
\progD|timer6s|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[3]~38_combout\ = (\progD|timer6s|s_count\(3) & (!\progD|timer6s|s_count[2]~37\)) # (!\progD|timer6s|s_count\(3) & ((\progD|timer6s|s_count[2]~37\) # (GND)))
-- \progD|timer6s|s_count[3]~39\ = CARRY((!\progD|timer6s|s_count[2]~37\) # (!\progD|timer6s|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(3),
	datad => VCC,
	cin => \progD|timer6s|s_count[2]~37\,
	combout => \progD|timer6s|s_count[3]~38_combout\,
	cout => \progD|timer6s|s_count[3]~39\);

-- Location: FF_X100_Y57_N7
\progD|timer6s|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[3]~38_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(3));

-- Location: LCCOMB_X100_Y57_N8
\progD|timer6s|s_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[4]~41_combout\ = (\progD|timer6s|s_count\(4) & (\progD|timer6s|s_count[3]~39\ $ (GND))) # (!\progD|timer6s|s_count\(4) & (!\progD|timer6s|s_count[3]~39\ & VCC))
-- \progD|timer6s|s_count[4]~42\ = CARRY((\progD|timer6s|s_count\(4) & !\progD|timer6s|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(4),
	datad => VCC,
	cin => \progD|timer6s|s_count[3]~39\,
	combout => \progD|timer6s|s_count[4]~41_combout\,
	cout => \progD|timer6s|s_count[4]~42\);

-- Location: FF_X100_Y57_N9
\progD|timer6s|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[4]~41_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(4));

-- Location: LCCOMB_X100_Y57_N10
\progD|timer6s|s_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[5]~43_combout\ = (\progD|timer6s|s_count\(5) & (!\progD|timer6s|s_count[4]~42\)) # (!\progD|timer6s|s_count\(5) & ((\progD|timer6s|s_count[4]~42\) # (GND)))
-- \progD|timer6s|s_count[5]~44\ = CARRY((!\progD|timer6s|s_count[4]~42\) # (!\progD|timer6s|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(5),
	datad => VCC,
	cin => \progD|timer6s|s_count[4]~42\,
	combout => \progD|timer6s|s_count[5]~43_combout\,
	cout => \progD|timer6s|s_count[5]~44\);

-- Location: FF_X100_Y57_N11
\progD|timer6s|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[5]~43_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(5));

-- Location: LCCOMB_X100_Y57_N12
\progD|timer6s|s_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[6]~45_combout\ = (\progD|timer6s|s_count\(6) & (\progD|timer6s|s_count[5]~44\ $ (GND))) # (!\progD|timer6s|s_count\(6) & (!\progD|timer6s|s_count[5]~44\ & VCC))
-- \progD|timer6s|s_count[6]~46\ = CARRY((\progD|timer6s|s_count\(6) & !\progD|timer6s|s_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(6),
	datad => VCC,
	cin => \progD|timer6s|s_count[5]~44\,
	combout => \progD|timer6s|s_count[6]~45_combout\,
	cout => \progD|timer6s|s_count[6]~46\);

-- Location: FF_X100_Y57_N13
\progD|timer6s|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[6]~45_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(6));

-- Location: LCCOMB_X101_Y56_N10
\progD|timer6s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~0_combout\ = (!\progD|timer6s|s_count\(4) & (!\progD|timer6s|s_count\(3) & (!\progD|timer6s|s_count\(5) & !\progD|timer6s|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(4),
	datab => \progD|timer6s|s_count\(3),
	datac => \progD|timer6s|s_count\(5),
	datad => \progD|timer6s|s_count\(6),
	combout => \progD|timer6s|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y57_N14
\progD|timer6s|s_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[7]~47_combout\ = (\progD|timer6s|s_count\(7) & (!\progD|timer6s|s_count[6]~46\)) # (!\progD|timer6s|s_count\(7) & ((\progD|timer6s|s_count[6]~46\) # (GND)))
-- \progD|timer6s|s_count[7]~48\ = CARRY((!\progD|timer6s|s_count[6]~46\) # (!\progD|timer6s|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(7),
	datad => VCC,
	cin => \progD|timer6s|s_count[6]~46\,
	combout => \progD|timer6s|s_count[7]~47_combout\,
	cout => \progD|timer6s|s_count[7]~48\);

-- Location: FF_X100_Y57_N15
\progD|timer6s|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[7]~47_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(7));

-- Location: LCCOMB_X100_Y57_N16
\progD|timer6s|s_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[8]~49_combout\ = (\progD|timer6s|s_count\(8) & (\progD|timer6s|s_count[7]~48\ $ (GND))) # (!\progD|timer6s|s_count\(8) & (!\progD|timer6s|s_count[7]~48\ & VCC))
-- \progD|timer6s|s_count[8]~50\ = CARRY((\progD|timer6s|s_count\(8) & !\progD|timer6s|s_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(8),
	datad => VCC,
	cin => \progD|timer6s|s_count[7]~48\,
	combout => \progD|timer6s|s_count[8]~49_combout\,
	cout => \progD|timer6s|s_count[8]~50\);

-- Location: FF_X100_Y57_N17
\progD|timer6s|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[8]~49_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(8));

-- Location: LCCOMB_X100_Y57_N18
\progD|timer6s|s_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[9]~51_combout\ = (\progD|timer6s|s_count\(9) & (!\progD|timer6s|s_count[8]~50\)) # (!\progD|timer6s|s_count\(9) & ((\progD|timer6s|s_count[8]~50\) # (GND)))
-- \progD|timer6s|s_count[9]~52\ = CARRY((!\progD|timer6s|s_count[8]~50\) # (!\progD|timer6s|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(9),
	datad => VCC,
	cin => \progD|timer6s|s_count[8]~50\,
	combout => \progD|timer6s|s_count[9]~51_combout\,
	cout => \progD|timer6s|s_count[9]~52\);

-- Location: FF_X100_Y57_N19
\progD|timer6s|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[9]~51_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(9));

-- Location: LCCOMB_X100_Y57_N20
\progD|timer6s|s_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[10]~53_combout\ = (\progD|timer6s|s_count\(10) & (\progD|timer6s|s_count[9]~52\ $ (GND))) # (!\progD|timer6s|s_count\(10) & (!\progD|timer6s|s_count[9]~52\ & VCC))
-- \progD|timer6s|s_count[10]~54\ = CARRY((\progD|timer6s|s_count\(10) & !\progD|timer6s|s_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(10),
	datad => VCC,
	cin => \progD|timer6s|s_count[9]~52\,
	combout => \progD|timer6s|s_count[10]~53_combout\,
	cout => \progD|timer6s|s_count[10]~54\);

-- Location: FF_X100_Y57_N21
\progD|timer6s|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[10]~53_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(10));

-- Location: LCCOMB_X101_Y56_N4
\progD|timer6s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~1_combout\ = (!\progD|timer6s|s_count\(7) & (!\progD|timer6s|s_count\(9) & (!\progD|timer6s|s_count\(8) & !\progD|timer6s|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(7),
	datab => \progD|timer6s|s_count\(9),
	datac => \progD|timer6s|s_count\(8),
	datad => \progD|timer6s|s_count\(10),
	combout => \progD|timer6s|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y57_N22
\progD|timer6s|s_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[11]~55_combout\ = (\progD|timer6s|s_count\(11) & (!\progD|timer6s|s_count[10]~54\)) # (!\progD|timer6s|s_count\(11) & ((\progD|timer6s|s_count[10]~54\) # (GND)))
-- \progD|timer6s|s_count[11]~56\ = CARRY((!\progD|timer6s|s_count[10]~54\) # (!\progD|timer6s|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(11),
	datad => VCC,
	cin => \progD|timer6s|s_count[10]~54\,
	combout => \progD|timer6s|s_count[11]~55_combout\,
	cout => \progD|timer6s|s_count[11]~56\);

-- Location: FF_X100_Y57_N23
\progD|timer6s|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[11]~55_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(11));

-- Location: LCCOMB_X100_Y57_N24
\progD|timer6s|s_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[12]~57_combout\ = (\progD|timer6s|s_count\(12) & (\progD|timer6s|s_count[11]~56\ $ (GND))) # (!\progD|timer6s|s_count\(12) & (!\progD|timer6s|s_count[11]~56\ & VCC))
-- \progD|timer6s|s_count[12]~58\ = CARRY((\progD|timer6s|s_count\(12) & !\progD|timer6s|s_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(12),
	datad => VCC,
	cin => \progD|timer6s|s_count[11]~56\,
	combout => \progD|timer6s|s_count[12]~57_combout\,
	cout => \progD|timer6s|s_count[12]~58\);

-- Location: FF_X100_Y57_N25
\progD|timer6s|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[12]~57_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(12));

-- Location: LCCOMB_X100_Y57_N26
\progD|timer6s|s_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[13]~59_combout\ = (\progD|timer6s|s_count\(13) & (!\progD|timer6s|s_count[12]~58\)) # (!\progD|timer6s|s_count\(13) & ((\progD|timer6s|s_count[12]~58\) # (GND)))
-- \progD|timer6s|s_count[13]~60\ = CARRY((!\progD|timer6s|s_count[12]~58\) # (!\progD|timer6s|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(13),
	datad => VCC,
	cin => \progD|timer6s|s_count[12]~58\,
	combout => \progD|timer6s|s_count[13]~59_combout\,
	cout => \progD|timer6s|s_count[13]~60\);

-- Location: FF_X100_Y57_N27
\progD|timer6s|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[13]~59_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(13));

-- Location: LCCOMB_X100_Y57_N28
\progD|timer6s|s_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[14]~61_combout\ = (\progD|timer6s|s_count\(14) & (\progD|timer6s|s_count[13]~60\ $ (GND))) # (!\progD|timer6s|s_count\(14) & (!\progD|timer6s|s_count[13]~60\ & VCC))
-- \progD|timer6s|s_count[14]~62\ = CARRY((\progD|timer6s|s_count\(14) & !\progD|timer6s|s_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(14),
	datad => VCC,
	cin => \progD|timer6s|s_count[13]~60\,
	combout => \progD|timer6s|s_count[14]~61_combout\,
	cout => \progD|timer6s|s_count[14]~62\);

-- Location: FF_X101_Y56_N23
\progD|timer6s|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	asdata => \progD|timer6s|s_count[14]~61_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(14));

-- Location: LCCOMB_X100_Y57_N30
\progD|timer6s|s_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[15]~63_combout\ = (\progD|timer6s|s_count\(15) & (!\progD|timer6s|s_count[14]~62\)) # (!\progD|timer6s|s_count\(15) & ((\progD|timer6s|s_count[14]~62\) # (GND)))
-- \progD|timer6s|s_count[15]~64\ = CARRY((!\progD|timer6s|s_count[14]~62\) # (!\progD|timer6s|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(15),
	datad => VCC,
	cin => \progD|timer6s|s_count[14]~62\,
	combout => \progD|timer6s|s_count[15]~63_combout\,
	cout => \progD|timer6s|s_count[15]~64\);

-- Location: FF_X101_Y56_N1
\progD|timer6s|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	asdata => \progD|timer6s|s_count[15]~63_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(15));

-- Location: LCCOMB_X100_Y56_N0
\progD|timer6s|s_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[16]~65_combout\ = (\progD|timer6s|s_count\(16) & (\progD|timer6s|s_count[15]~64\ $ (GND))) # (!\progD|timer6s|s_count\(16) & (!\progD|timer6s|s_count[15]~64\ & VCC))
-- \progD|timer6s|s_count[16]~66\ = CARRY((\progD|timer6s|s_count\(16) & !\progD|timer6s|s_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(16),
	datad => VCC,
	cin => \progD|timer6s|s_count[15]~64\,
	combout => \progD|timer6s|s_count[16]~65_combout\,
	cout => \progD|timer6s|s_count[16]~66\);

-- Location: FF_X100_Y56_N1
\progD|timer6s|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[16]~65_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(16));

-- Location: LCCOMB_X100_Y56_N2
\progD|timer6s|s_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[17]~67_combout\ = (\progD|timer6s|s_count\(17) & (!\progD|timer6s|s_count[16]~66\)) # (!\progD|timer6s|s_count\(17) & ((\progD|timer6s|s_count[16]~66\) # (GND)))
-- \progD|timer6s|s_count[17]~68\ = CARRY((!\progD|timer6s|s_count[16]~66\) # (!\progD|timer6s|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(17),
	datad => VCC,
	cin => \progD|timer6s|s_count[16]~66\,
	combout => \progD|timer6s|s_count[17]~67_combout\,
	cout => \progD|timer6s|s_count[17]~68\);

-- Location: FF_X100_Y56_N3
\progD|timer6s|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[17]~67_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(17));

-- Location: LCCOMB_X100_Y56_N4
\progD|timer6s|s_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[18]~69_combout\ = (\progD|timer6s|s_count\(18) & (\progD|timer6s|s_count[17]~68\ $ (GND))) # (!\progD|timer6s|s_count\(18) & (!\progD|timer6s|s_count[17]~68\ & VCC))
-- \progD|timer6s|s_count[18]~70\ = CARRY((\progD|timer6s|s_count\(18) & !\progD|timer6s|s_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(18),
	datad => VCC,
	cin => \progD|timer6s|s_count[17]~68\,
	combout => \progD|timer6s|s_count[18]~69_combout\,
	cout => \progD|timer6s|s_count[18]~70\);

-- Location: FF_X100_Y56_N5
\progD|timer6s|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[18]~69_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(18));

-- Location: LCCOMB_X100_Y56_N6
\progD|timer6s|s_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[19]~71_combout\ = (\progD|timer6s|s_count\(19) & (!\progD|timer6s|s_count[18]~70\)) # (!\progD|timer6s|s_count\(19) & ((\progD|timer6s|s_count[18]~70\) # (GND)))
-- \progD|timer6s|s_count[19]~72\ = CARRY((!\progD|timer6s|s_count[18]~70\) # (!\progD|timer6s|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(19),
	datad => VCC,
	cin => \progD|timer6s|s_count[18]~70\,
	combout => \progD|timer6s|s_count[19]~71_combout\,
	cout => \progD|timer6s|s_count[19]~72\);

-- Location: FF_X100_Y56_N7
\progD|timer6s|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[19]~71_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(19));

-- Location: LCCOMB_X100_Y56_N8
\progD|timer6s|s_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[20]~73_combout\ = (\progD|timer6s|s_count\(20) & (\progD|timer6s|s_count[19]~72\ $ (GND))) # (!\progD|timer6s|s_count\(20) & (!\progD|timer6s|s_count[19]~72\ & VCC))
-- \progD|timer6s|s_count[20]~74\ = CARRY((\progD|timer6s|s_count\(20) & !\progD|timer6s|s_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(20),
	datad => VCC,
	cin => \progD|timer6s|s_count[19]~72\,
	combout => \progD|timer6s|s_count[20]~73_combout\,
	cout => \progD|timer6s|s_count[20]~74\);

-- Location: FF_X100_Y56_N9
\progD|timer6s|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[20]~73_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(20));

-- Location: LCCOMB_X100_Y56_N10
\progD|timer6s|s_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[21]~75_combout\ = (\progD|timer6s|s_count\(21) & (!\progD|timer6s|s_count[20]~74\)) # (!\progD|timer6s|s_count\(21) & ((\progD|timer6s|s_count[20]~74\) # (GND)))
-- \progD|timer6s|s_count[21]~76\ = CARRY((!\progD|timer6s|s_count[20]~74\) # (!\progD|timer6s|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(21),
	datad => VCC,
	cin => \progD|timer6s|s_count[20]~74\,
	combout => \progD|timer6s|s_count[21]~75_combout\,
	cout => \progD|timer6s|s_count[21]~76\);

-- Location: FF_X100_Y56_N11
\progD|timer6s|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[21]~75_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(21));

-- Location: LCCOMB_X100_Y56_N12
\progD|timer6s|s_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[22]~77_combout\ = (\progD|timer6s|s_count\(22) & (\progD|timer6s|s_count[21]~76\ $ (GND))) # (!\progD|timer6s|s_count\(22) & (!\progD|timer6s|s_count[21]~76\ & VCC))
-- \progD|timer6s|s_count[22]~78\ = CARRY((\progD|timer6s|s_count\(22) & !\progD|timer6s|s_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(22),
	datad => VCC,
	cin => \progD|timer6s|s_count[21]~76\,
	combout => \progD|timer6s|s_count[22]~77_combout\,
	cout => \progD|timer6s|s_count[22]~78\);

-- Location: FF_X100_Y56_N13
\progD|timer6s|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[22]~77_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(22));

-- Location: LCCOMB_X100_Y56_N14
\progD|timer6s|s_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[23]~79_combout\ = (\progD|timer6s|s_count\(23) & (!\progD|timer6s|s_count[22]~78\)) # (!\progD|timer6s|s_count\(23) & ((\progD|timer6s|s_count[22]~78\) # (GND)))
-- \progD|timer6s|s_count[23]~80\ = CARRY((!\progD|timer6s|s_count[22]~78\) # (!\progD|timer6s|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(23),
	datad => VCC,
	cin => \progD|timer6s|s_count[22]~78\,
	combout => \progD|timer6s|s_count[23]~79_combout\,
	cout => \progD|timer6s|s_count[23]~80\);

-- Location: FF_X100_Y56_N15
\progD|timer6s|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[23]~79_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(23));

-- Location: LCCOMB_X100_Y56_N16
\progD|timer6s|s_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[24]~81_combout\ = (\progD|timer6s|s_count\(24) & (\progD|timer6s|s_count[23]~80\ $ (GND))) # (!\progD|timer6s|s_count\(24) & (!\progD|timer6s|s_count[23]~80\ & VCC))
-- \progD|timer6s|s_count[24]~82\ = CARRY((\progD|timer6s|s_count\(24) & !\progD|timer6s|s_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(24),
	datad => VCC,
	cin => \progD|timer6s|s_count[23]~80\,
	combout => \progD|timer6s|s_count[24]~81_combout\,
	cout => \progD|timer6s|s_count[24]~82\);

-- Location: FF_X100_Y56_N17
\progD|timer6s|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[24]~81_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(24));

-- Location: LCCOMB_X100_Y56_N18
\progD|timer6s|s_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[25]~83_combout\ = (\progD|timer6s|s_count\(25) & (!\progD|timer6s|s_count[24]~82\)) # (!\progD|timer6s|s_count\(25) & ((\progD|timer6s|s_count[24]~82\) # (GND)))
-- \progD|timer6s|s_count[25]~84\ = CARRY((!\progD|timer6s|s_count[24]~82\) # (!\progD|timer6s|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(25),
	datad => VCC,
	cin => \progD|timer6s|s_count[24]~82\,
	combout => \progD|timer6s|s_count[25]~83_combout\,
	cout => \progD|timer6s|s_count[25]~84\);

-- Location: FF_X100_Y56_N19
\progD|timer6s|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[25]~83_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(25));

-- Location: LCCOMB_X100_Y56_N20
\progD|timer6s|s_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[26]~85_combout\ = (\progD|timer6s|s_count\(26) & (\progD|timer6s|s_count[25]~84\ $ (GND))) # (!\progD|timer6s|s_count\(26) & (!\progD|timer6s|s_count[25]~84\ & VCC))
-- \progD|timer6s|s_count[26]~86\ = CARRY((\progD|timer6s|s_count\(26) & !\progD|timer6s|s_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(26),
	datad => VCC,
	cin => \progD|timer6s|s_count[25]~84\,
	combout => \progD|timer6s|s_count[26]~85_combout\,
	cout => \progD|timer6s|s_count[26]~86\);

-- Location: FF_X100_Y56_N21
\progD|timer6s|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[26]~85_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(26));

-- Location: LCCOMB_X101_Y56_N30
\progD|timer6s|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~6_combout\ = (!\progD|timer6s|s_count\(23) & (!\progD|timer6s|s_count\(26) & (!\progD|timer6s|s_count\(24) & !\progD|timer6s|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(23),
	datab => \progD|timer6s|s_count\(26),
	datac => \progD|timer6s|s_count\(24),
	datad => \progD|timer6s|s_count\(25),
	combout => \progD|timer6s|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y56_N22
\progD|timer6s|s_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[27]~87_combout\ = (\progD|timer6s|s_count\(27) & (!\progD|timer6s|s_count[26]~86\)) # (!\progD|timer6s|s_count\(27) & ((\progD|timer6s|s_count[26]~86\) # (GND)))
-- \progD|timer6s|s_count[27]~88\ = CARRY((!\progD|timer6s|s_count[26]~86\) # (!\progD|timer6s|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(27),
	datad => VCC,
	cin => \progD|timer6s|s_count[26]~86\,
	combout => \progD|timer6s|s_count[27]~87_combout\,
	cout => \progD|timer6s|s_count[27]~88\);

-- Location: FF_X100_Y56_N23
\progD|timer6s|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[27]~87_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(27));

-- Location: LCCOMB_X100_Y56_N24
\progD|timer6s|s_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[28]~89_combout\ = (\progD|timer6s|s_count\(28) & (\progD|timer6s|s_count[27]~88\ $ (GND))) # (!\progD|timer6s|s_count\(28) & (!\progD|timer6s|s_count[27]~88\ & VCC))
-- \progD|timer6s|s_count[28]~90\ = CARRY((\progD|timer6s|s_count\(28) & !\progD|timer6s|s_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(28),
	datad => VCC,
	cin => \progD|timer6s|s_count[27]~88\,
	combout => \progD|timer6s|s_count[28]~89_combout\,
	cout => \progD|timer6s|s_count[28]~90\);

-- Location: FF_X100_Y56_N25
\progD|timer6s|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[28]~89_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(28));

-- Location: LCCOMB_X100_Y56_N26
\progD|timer6s|s_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[29]~91_combout\ = (\progD|timer6s|s_count\(29) & (!\progD|timer6s|s_count[28]~90\)) # (!\progD|timer6s|s_count\(29) & ((\progD|timer6s|s_count[28]~90\) # (GND)))
-- \progD|timer6s|s_count[29]~92\ = CARRY((!\progD|timer6s|s_count[28]~90\) # (!\progD|timer6s|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(29),
	datad => VCC,
	cin => \progD|timer6s|s_count[28]~90\,
	combout => \progD|timer6s|s_count[29]~91_combout\,
	cout => \progD|timer6s|s_count[29]~92\);

-- Location: FF_X100_Y56_N27
\progD|timer6s|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[29]~91_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(29));

-- Location: LCCOMB_X100_Y56_N28
\progD|timer6s|s_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[30]~93_combout\ = (\progD|timer6s|s_count\(30) & (\progD|timer6s|s_count[29]~92\ $ (GND))) # (!\progD|timer6s|s_count\(30) & (!\progD|timer6s|s_count[29]~92\ & VCC))
-- \progD|timer6s|s_count[30]~94\ = CARRY((\progD|timer6s|s_count\(30) & !\progD|timer6s|s_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progD|timer6s|s_count\(30),
	datad => VCC,
	cin => \progD|timer6s|s_count[29]~92\,
	combout => \progD|timer6s|s_count[30]~93_combout\,
	cout => \progD|timer6s|s_count[30]~94\);

-- Location: FF_X100_Y56_N29
\progD|timer6s|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[30]~93_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(30));

-- Location: LCCOMB_X100_Y56_N30
\progD|timer6s|s_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[31]~95_combout\ = \progD|timer6s|s_count\(31) $ (\progD|timer6s|s_count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(31),
	cin => \progD|timer6s|s_count[30]~94\,
	combout => \progD|timer6s|s_count[31]~95_combout\);

-- Location: FF_X100_Y56_N31
\progD|timer6s|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[31]~95_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(31));

-- Location: LCCOMB_X101_Y56_N8
\progD|timer6s|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~5_combout\ = (!\progD|timer6s|s_count\(20) & (!\progD|timer6s|s_count\(19) & (!\progD|timer6s|s_count\(22) & !\progD|timer6s|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(20),
	datab => \progD|timer6s|s_count\(19),
	datac => \progD|timer6s|s_count\(22),
	datad => \progD|timer6s|s_count\(21),
	combout => \progD|timer6s|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y56_N12
\progD|timer6s|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~7_combout\ = (!\progD|timer6s|s_count\(29) & (!\progD|timer6s|s_count\(28) & (!\progD|timer6s|s_count\(30) & !\progD|timer6s|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(29),
	datab => \progD|timer6s|s_count\(28),
	datac => \progD|timer6s|s_count\(30),
	datad => \progD|timer6s|s_count\(27),
	combout => \progD|timer6s|Equal0~7_combout\);

-- Location: LCCOMB_X101_Y56_N26
\progD|timer6s|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~8_combout\ = (\progD|timer6s|Equal0~6_combout\ & (!\progD|timer6s|s_count\(31) & (\progD|timer6s|Equal0~5_combout\ & \progD|timer6s|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|Equal0~6_combout\,
	datab => \progD|timer6s|s_count\(31),
	datac => \progD|timer6s|Equal0~5_combout\,
	datad => \progD|timer6s|Equal0~7_combout\,
	combout => \progD|timer6s|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y56_N28
\progD|timer6s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~3_combout\ = (!\progD|timer6s|s_count\(17) & (!\progD|timer6s|s_count\(15) & (!\progD|timer6s|s_count\(18) & !\progD|timer6s|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(17),
	datab => \progD|timer6s|s_count\(15),
	datac => \progD|timer6s|s_count\(18),
	datad => \progD|timer6s|s_count\(16),
	combout => \progD|timer6s|Equal0~3_combout\);

-- Location: LCCOMB_X101_Y56_N6
\progD|timer6s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~2_combout\ = (!\progD|timer6s|s_count\(12) & !\progD|timer6s|s_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \progD|timer6s|s_count\(12),
	datad => \progD|timer6s|s_count\(11),
	combout => \progD|timer6s|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y56_N2
\progD|timer6s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~4_combout\ = (!\progD|timer6s|s_count\(14) & (\progD|timer6s|Equal0~3_combout\ & (!\progD|timer6s|s_count\(13) & \progD|timer6s|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(14),
	datab => \progD|timer6s|Equal0~3_combout\,
	datac => \progD|timer6s|s_count\(13),
	datad => \progD|timer6s|Equal0~2_combout\,
	combout => \progD|timer6s|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y56_N16
\progD|timer6s|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~9_combout\ = (\progD|timer6s|Equal0~0_combout\ & (\progD|timer6s|Equal0~1_combout\ & (\progD|timer6s|Equal0~8_combout\ & \progD|timer6s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|Equal0~0_combout\,
	datab => \progD|timer6s|Equal0~1_combout\,
	datac => \progD|timer6s|Equal0~8_combout\,
	datad => \progD|timer6s|Equal0~4_combout\,
	combout => \progD|timer6s|Equal0~9_combout\);

-- Location: LCCOMB_X101_Y56_N14
\progD|timer6s|s_count[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|s_count[17]~40_combout\ = (((\progD|timer6s|s_count\(1) & \progD|timer6s|s_count\(2))) # (!\progD|timer6s|Equal0~9_combout\)) # (!\Bin7SegDecoderUnits|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoderUnits|Equal1~0_combout\,
	datab => \progD|timer6s|s_count\(1),
	datac => \progD|timer6s|s_count\(2),
	datad => \progD|timer6s|Equal0~9_combout\,
	combout => \progD|timer6s|s_count[17]~40_combout\);

-- Location: FF_X100_Y57_N1
\progD|timer6s|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|s_count[0]~32_combout\,
	sclr => \progD|timer6s|s_count[17]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|s_count\(0));

-- Location: LCCOMB_X101_Y56_N18
\progD|timer6s|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|timer6s|Equal0~10_combout\ = (\progD|timer6s|s_count\(0)) # ((\progD|timer6s|s_count\(1)) # ((\progD|timer6s|s_count\(2)) # (!\progD|timer6s|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|timer6s|s_count\(0),
	datab => \progD|timer6s|s_count\(1),
	datac => \progD|timer6s|s_count\(2),
	datad => \progD|timer6s|Equal0~9_combout\,
	combout => \progD|timer6s|Equal0~10_combout\);

-- Location: FF_X101_Y56_N19
\progD|timer6s|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \progD|clkDividerN|clkOut~clkctrl_outclk\,
	d => \progD|timer6s|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|timer6s|timerOut~q\);

-- Location: LCCOMB_X101_Y56_N24
\progD|last_timer_output~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|last_timer_output~feeder_combout\ = \progD|timer6s|timerOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \progD|timer6s|timerOut~q\,
	combout => \progD|last_timer_output~feeder_combout\);

-- Location: FF_X101_Y56_N25
\progD|last_timer_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|last_timer_output~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|last_timer_output~q\);

-- Location: LCCOMB_X101_Y56_N20
\progD|phase~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|phase~0_combout\ = (\Bin7SegDecoderUnits|Equal1~0_combout\ & (\progD|phase~q\ $ (((\progD|last_timer_output~q\ & !\progD|timer6s|timerOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoderUnits|Equal1~0_combout\,
	datab => \progD|last_timer_output~q\,
	datac => \progD|phase~q\,
	datad => \progD|timer6s|timerOut~q\,
	combout => \progD|phase~0_combout\);

-- Location: FF_X101_Y56_N21
\progD|phase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|phase~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|phase~q\);

-- Location: LCCOMB_X101_Y56_N22
\progD|LEDROUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDROUT~0_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & \progD|phase~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \progD|phase~q\,
	combout => \progD|LEDROUT~0_combout\);

-- Location: LCCOMB_X103_Y56_N22
\progD|LEDROUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDROUT~1_combout\ = (\progD|red_blink|s_counter\(25)) # ((\progD|red_blink|s_counter\(23) & \progD|red_blink|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|red_blink|s_counter\(23),
	datab => \progD|red_blink|s_counter\(24),
	datad => \progD|red_blink|s_counter\(25),
	combout => \progD|LEDROUT~1_combout\);

-- Location: LCCOMB_X103_Y56_N12
\progD|LEDROUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDROUT~2_combout\ = (\progD|LEDROUT~0_combout\ & ((\progD|LEDROUT~1_combout\) # ((\progD|LEDROUT~4_combout\ & \progD|clkDividerN|clkOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|LEDROUT~4_combout\,
	datab => \progD|LEDROUT~0_combout\,
	datac => \progD|LEDROUT~1_combout\,
	datad => \progD|clkDividerN|clkOut~5_combout\,
	combout => \progD|LEDROUT~2_combout\);

-- Location: FF_X103_Y56_N13
\progD|LEDROUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|LEDROUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|LEDROUT\(0));

-- Location: LCCOMB_X100_Y63_N8
\progB|blinkInstance|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[0]~25_combout\ = \progB|blinkInstance|s_counter\(0) $ (VCC)
-- \progB|blinkInstance|s_counter[0]~26\ = CARRY(\progB|blinkInstance|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(0),
	datad => VCC,
	combout => \progB|blinkInstance|s_counter[0]~25_combout\,
	cout => \progB|blinkInstance|s_counter[0]~26\);

-- Location: LCCOMB_X100_Y63_N6
\progB|blinkInstance|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~2_combout\ = (((!\progB|blinkInstance|s_counter\(1)) # (!\progB|blinkInstance|s_counter\(0))) # (!\progB|blinkInstance|s_counter\(5))) # (!\progB|blinkInstance|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(2),
	datab => \progB|blinkInstance|s_counter\(5),
	datac => \progB|blinkInstance|s_counter\(0),
	datad => \progB|blinkInstance|s_counter\(1),
	combout => \progB|blinkInstance|LessThan0~2_combout\);

-- Location: LCCOMB_X100_Y63_N4
\progB|blinkInstance|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~0_combout\ = (!\progB|blinkInstance|s_counter\(9) & (!\progB|blinkInstance|s_counter\(6) & (!\progB|blinkInstance|s_counter\(7) & !\progB|blinkInstance|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(9),
	datab => \progB|blinkInstance|s_counter\(6),
	datac => \progB|blinkInstance|s_counter\(7),
	datad => \progB|blinkInstance|s_counter\(8),
	combout => \progB|blinkInstance|LessThan0~0_combout\);

-- Location: LCCOMB_X101_Y63_N16
\progB|blinkInstance|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~1_combout\ = (!\progB|blinkInstance|s_counter\(17) & (!\progB|blinkInstance|s_counter\(10) & (\progB|blinkInstance|LessThan0~0_combout\ & !\progB|blinkInstance|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(17),
	datab => \progB|blinkInstance|s_counter\(10),
	datac => \progB|blinkInstance|LessThan0~0_combout\,
	datad => \progB|blinkInstance|s_counter\(15),
	combout => \progB|blinkInstance|LessThan0~1_combout\);

-- Location: LCCOMB_X101_Y63_N22
\progB|blinkInstance|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~3_combout\ = (\progB|blinkInstance|LessThan0~1_combout\ & (((\progB|blinkInstance|LessThan0~2_combout\) # (!\progB|blinkInstance|s_counter\(4))) # (!\progB|blinkInstance|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(3),
	datab => \progB|blinkInstance|LessThan0~2_combout\,
	datac => \progB|blinkInstance|s_counter\(4),
	datad => \progB|blinkInstance|LessThan0~1_combout\,
	combout => \progB|blinkInstance|LessThan0~3_combout\);

-- Location: LCCOMB_X101_Y63_N0
\progB|blinkInstance|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~5_combout\ = (((!\progB|blinkInstance|s_counter\(14)) # (!\progB|blinkInstance|s_counter\(12))) # (!\progB|blinkInstance|s_counter\(11))) # (!\progB|blinkInstance|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(13),
	datab => \progB|blinkInstance|s_counter\(11),
	datac => \progB|blinkInstance|s_counter\(12),
	datad => \progB|blinkInstance|s_counter\(14),
	combout => \progB|blinkInstance|LessThan0~5_combout\);

-- Location: LCCOMB_X100_Y62_N30
\progB|blinkInstance|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~2_combout\ = (\progB|blinkInstance|s_counter\(18) & (\progB|blinkInstance|s_counter\(20) & (\progB|blinkInstance|s_counter\(19) & \progB|blinkInstance|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(18),
	datab => \progB|blinkInstance|s_counter\(20),
	datac => \progB|blinkInstance|s_counter\(19),
	datad => \progB|blinkInstance|s_counter\(21),
	combout => \progB|blinkInstance|LessThan1~2_combout\);

-- Location: LCCOMB_X100_Y62_N26
\progB|blinkInstance|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~4_combout\ = (((!\progB|blinkInstance|s_counter\(17) & !\progB|blinkInstance|s_counter\(16))) # (!\progB|blinkInstance|s_counter\(22))) # (!\progB|blinkInstance|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(17),
	datab => \progB|blinkInstance|s_counter\(16),
	datac => \progB|blinkInstance|LessThan1~2_combout\,
	datad => \progB|blinkInstance|s_counter\(22),
	combout => \progB|blinkInstance|LessThan0~4_combout\);

-- Location: LCCOMB_X101_Y63_N10
\progB|blinkInstance|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~6_combout\ = (\progB|blinkInstance|LessThan0~4_combout\) # ((!\progB|blinkInstance|s_counter\(17) & (\progB|blinkInstance|LessThan0~5_combout\ & !\progB|blinkInstance|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(17),
	datab => \progB|blinkInstance|LessThan0~5_combout\,
	datac => \progB|blinkInstance|LessThan0~4_combout\,
	datad => \progB|blinkInstance|s_counter\(15),
	combout => \progB|blinkInstance|LessThan0~6_combout\);

-- Location: LCCOMB_X101_Y63_N20
\progB|blinkInstance|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan0~7_combout\ = (\progB|blinkInstance|s_counter\(24) & ((\progB|blinkInstance|s_counter\(23)) # ((!\progB|blinkInstance|LessThan0~3_combout\ & !\progB|blinkInstance|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(24),
	datab => \progB|blinkInstance|s_counter\(23),
	datac => \progB|blinkInstance|LessThan0~3_combout\,
	datad => \progB|blinkInstance|LessThan0~6_combout\,
	combout => \progB|blinkInstance|LessThan0~7_combout\);

-- Location: FF_X100_Y63_N9
\progB|blinkInstance|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[0]~25_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(0));

-- Location: LCCOMB_X100_Y63_N10
\progB|blinkInstance|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[1]~27_combout\ = (\progB|blinkInstance|s_counter\(1) & (!\progB|blinkInstance|s_counter[0]~26\)) # (!\progB|blinkInstance|s_counter\(1) & ((\progB|blinkInstance|s_counter[0]~26\) # (GND)))
-- \progB|blinkInstance|s_counter[1]~28\ = CARRY((!\progB|blinkInstance|s_counter[0]~26\) # (!\progB|blinkInstance|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(1),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[0]~26\,
	combout => \progB|blinkInstance|s_counter[1]~27_combout\,
	cout => \progB|blinkInstance|s_counter[1]~28\);

-- Location: FF_X100_Y63_N11
\progB|blinkInstance|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[1]~27_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(1));

-- Location: LCCOMB_X100_Y63_N12
\progB|blinkInstance|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[2]~29_combout\ = (\progB|blinkInstance|s_counter\(2) & (\progB|blinkInstance|s_counter[1]~28\ $ (GND))) # (!\progB|blinkInstance|s_counter\(2) & (!\progB|blinkInstance|s_counter[1]~28\ & VCC))
-- \progB|blinkInstance|s_counter[2]~30\ = CARRY((\progB|blinkInstance|s_counter\(2) & !\progB|blinkInstance|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(2),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[1]~28\,
	combout => \progB|blinkInstance|s_counter[2]~29_combout\,
	cout => \progB|blinkInstance|s_counter[2]~30\);

-- Location: FF_X100_Y63_N13
\progB|blinkInstance|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[2]~29_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(2));

-- Location: LCCOMB_X100_Y63_N14
\progB|blinkInstance|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[3]~31_combout\ = (\progB|blinkInstance|s_counter\(3) & (!\progB|blinkInstance|s_counter[2]~30\)) # (!\progB|blinkInstance|s_counter\(3) & ((\progB|blinkInstance|s_counter[2]~30\) # (GND)))
-- \progB|blinkInstance|s_counter[3]~32\ = CARRY((!\progB|blinkInstance|s_counter[2]~30\) # (!\progB|blinkInstance|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(3),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[2]~30\,
	combout => \progB|blinkInstance|s_counter[3]~31_combout\,
	cout => \progB|blinkInstance|s_counter[3]~32\);

-- Location: FF_X100_Y63_N15
\progB|blinkInstance|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[3]~31_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(3));

-- Location: LCCOMB_X100_Y63_N16
\progB|blinkInstance|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[4]~33_combout\ = (\progB|blinkInstance|s_counter\(4) & (\progB|blinkInstance|s_counter[3]~32\ $ (GND))) # (!\progB|blinkInstance|s_counter\(4) & (!\progB|blinkInstance|s_counter[3]~32\ & VCC))
-- \progB|blinkInstance|s_counter[4]~34\ = CARRY((\progB|blinkInstance|s_counter\(4) & !\progB|blinkInstance|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(4),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[3]~32\,
	combout => \progB|blinkInstance|s_counter[4]~33_combout\,
	cout => \progB|blinkInstance|s_counter[4]~34\);

-- Location: FF_X100_Y63_N17
\progB|blinkInstance|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[4]~33_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(4));

-- Location: LCCOMB_X100_Y63_N18
\progB|blinkInstance|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[5]~35_combout\ = (\progB|blinkInstance|s_counter\(5) & (!\progB|blinkInstance|s_counter[4]~34\)) # (!\progB|blinkInstance|s_counter\(5) & ((\progB|blinkInstance|s_counter[4]~34\) # (GND)))
-- \progB|blinkInstance|s_counter[5]~36\ = CARRY((!\progB|blinkInstance|s_counter[4]~34\) # (!\progB|blinkInstance|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(5),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[4]~34\,
	combout => \progB|blinkInstance|s_counter[5]~35_combout\,
	cout => \progB|blinkInstance|s_counter[5]~36\);

-- Location: FF_X100_Y63_N19
\progB|blinkInstance|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[5]~35_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(5));

-- Location: LCCOMB_X100_Y63_N20
\progB|blinkInstance|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[6]~37_combout\ = (\progB|blinkInstance|s_counter\(6) & (\progB|blinkInstance|s_counter[5]~36\ $ (GND))) # (!\progB|blinkInstance|s_counter\(6) & (!\progB|blinkInstance|s_counter[5]~36\ & VCC))
-- \progB|blinkInstance|s_counter[6]~38\ = CARRY((\progB|blinkInstance|s_counter\(6) & !\progB|blinkInstance|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(6),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[5]~36\,
	combout => \progB|blinkInstance|s_counter[6]~37_combout\,
	cout => \progB|blinkInstance|s_counter[6]~38\);

-- Location: FF_X100_Y63_N21
\progB|blinkInstance|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[6]~37_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(6));

-- Location: LCCOMB_X100_Y63_N22
\progB|blinkInstance|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[7]~39_combout\ = (\progB|blinkInstance|s_counter\(7) & (!\progB|blinkInstance|s_counter[6]~38\)) # (!\progB|blinkInstance|s_counter\(7) & ((\progB|blinkInstance|s_counter[6]~38\) # (GND)))
-- \progB|blinkInstance|s_counter[7]~40\ = CARRY((!\progB|blinkInstance|s_counter[6]~38\) # (!\progB|blinkInstance|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(7),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[6]~38\,
	combout => \progB|blinkInstance|s_counter[7]~39_combout\,
	cout => \progB|blinkInstance|s_counter[7]~40\);

-- Location: FF_X100_Y63_N23
\progB|blinkInstance|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[7]~39_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(7));

-- Location: LCCOMB_X100_Y63_N24
\progB|blinkInstance|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[8]~41_combout\ = (\progB|blinkInstance|s_counter\(8) & (\progB|blinkInstance|s_counter[7]~40\ $ (GND))) # (!\progB|blinkInstance|s_counter\(8) & (!\progB|blinkInstance|s_counter[7]~40\ & VCC))
-- \progB|blinkInstance|s_counter[8]~42\ = CARRY((\progB|blinkInstance|s_counter\(8) & !\progB|blinkInstance|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(8),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[7]~40\,
	combout => \progB|blinkInstance|s_counter[8]~41_combout\,
	cout => \progB|blinkInstance|s_counter[8]~42\);

-- Location: FF_X100_Y63_N25
\progB|blinkInstance|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[8]~41_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(8));

-- Location: LCCOMB_X100_Y63_N26
\progB|blinkInstance|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[9]~43_combout\ = (\progB|blinkInstance|s_counter\(9) & (!\progB|blinkInstance|s_counter[8]~42\)) # (!\progB|blinkInstance|s_counter\(9) & ((\progB|blinkInstance|s_counter[8]~42\) # (GND)))
-- \progB|blinkInstance|s_counter[9]~44\ = CARRY((!\progB|blinkInstance|s_counter[8]~42\) # (!\progB|blinkInstance|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(9),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[8]~42\,
	combout => \progB|blinkInstance|s_counter[9]~43_combout\,
	cout => \progB|blinkInstance|s_counter[9]~44\);

-- Location: FF_X100_Y63_N27
\progB|blinkInstance|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[9]~43_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(9));

-- Location: LCCOMB_X100_Y63_N28
\progB|blinkInstance|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[10]~45_combout\ = (\progB|blinkInstance|s_counter\(10) & (\progB|blinkInstance|s_counter[9]~44\ $ (GND))) # (!\progB|blinkInstance|s_counter\(10) & (!\progB|blinkInstance|s_counter[9]~44\ & VCC))
-- \progB|blinkInstance|s_counter[10]~46\ = CARRY((\progB|blinkInstance|s_counter\(10) & !\progB|blinkInstance|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(10),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[9]~44\,
	combout => \progB|blinkInstance|s_counter[10]~45_combout\,
	cout => \progB|blinkInstance|s_counter[10]~46\);

-- Location: FF_X100_Y63_N29
\progB|blinkInstance|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[10]~45_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(10));

-- Location: LCCOMB_X100_Y63_N30
\progB|blinkInstance|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[11]~47_combout\ = (\progB|blinkInstance|s_counter\(11) & (!\progB|blinkInstance|s_counter[10]~46\)) # (!\progB|blinkInstance|s_counter\(11) & ((\progB|blinkInstance|s_counter[10]~46\) # (GND)))
-- \progB|blinkInstance|s_counter[11]~48\ = CARRY((!\progB|blinkInstance|s_counter[10]~46\) # (!\progB|blinkInstance|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(11),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[10]~46\,
	combout => \progB|blinkInstance|s_counter[11]~47_combout\,
	cout => \progB|blinkInstance|s_counter[11]~48\);

-- Location: FF_X100_Y63_N31
\progB|blinkInstance|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[11]~47_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(11));

-- Location: LCCOMB_X100_Y62_N0
\progB|blinkInstance|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[12]~49_combout\ = (\progB|blinkInstance|s_counter\(12) & (\progB|blinkInstance|s_counter[11]~48\ $ (GND))) # (!\progB|blinkInstance|s_counter\(12) & (!\progB|blinkInstance|s_counter[11]~48\ & VCC))
-- \progB|blinkInstance|s_counter[12]~50\ = CARRY((\progB|blinkInstance|s_counter\(12) & !\progB|blinkInstance|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(12),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[11]~48\,
	combout => \progB|blinkInstance|s_counter[12]~49_combout\,
	cout => \progB|blinkInstance|s_counter[12]~50\);

-- Location: FF_X100_Y62_N1
\progB|blinkInstance|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[12]~49_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(12));

-- Location: LCCOMB_X100_Y62_N2
\progB|blinkInstance|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[13]~51_combout\ = (\progB|blinkInstance|s_counter\(13) & (!\progB|blinkInstance|s_counter[12]~50\)) # (!\progB|blinkInstance|s_counter\(13) & ((\progB|blinkInstance|s_counter[12]~50\) # (GND)))
-- \progB|blinkInstance|s_counter[13]~52\ = CARRY((!\progB|blinkInstance|s_counter[12]~50\) # (!\progB|blinkInstance|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(13),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[12]~50\,
	combout => \progB|blinkInstance|s_counter[13]~51_combout\,
	cout => \progB|blinkInstance|s_counter[13]~52\);

-- Location: FF_X100_Y62_N3
\progB|blinkInstance|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[13]~51_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(13));

-- Location: LCCOMB_X100_Y62_N4
\progB|blinkInstance|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[14]~53_combout\ = (\progB|blinkInstance|s_counter\(14) & (\progB|blinkInstance|s_counter[13]~52\ $ (GND))) # (!\progB|blinkInstance|s_counter\(14) & (!\progB|blinkInstance|s_counter[13]~52\ & VCC))
-- \progB|blinkInstance|s_counter[14]~54\ = CARRY((\progB|blinkInstance|s_counter\(14) & !\progB|blinkInstance|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(14),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[13]~52\,
	combout => \progB|blinkInstance|s_counter[14]~53_combout\,
	cout => \progB|blinkInstance|s_counter[14]~54\);

-- Location: FF_X100_Y62_N5
\progB|blinkInstance|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[14]~53_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(14));

-- Location: LCCOMB_X100_Y62_N6
\progB|blinkInstance|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[15]~55_combout\ = (\progB|blinkInstance|s_counter\(15) & (!\progB|blinkInstance|s_counter[14]~54\)) # (!\progB|blinkInstance|s_counter\(15) & ((\progB|blinkInstance|s_counter[14]~54\) # (GND)))
-- \progB|blinkInstance|s_counter[15]~56\ = CARRY((!\progB|blinkInstance|s_counter[14]~54\) # (!\progB|blinkInstance|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(15),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[14]~54\,
	combout => \progB|blinkInstance|s_counter[15]~55_combout\,
	cout => \progB|blinkInstance|s_counter[15]~56\);

-- Location: FF_X100_Y62_N7
\progB|blinkInstance|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[15]~55_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(15));

-- Location: LCCOMB_X100_Y62_N8
\progB|blinkInstance|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[16]~57_combout\ = (\progB|blinkInstance|s_counter\(16) & (\progB|blinkInstance|s_counter[15]~56\ $ (GND))) # (!\progB|blinkInstance|s_counter\(16) & (!\progB|blinkInstance|s_counter[15]~56\ & VCC))
-- \progB|blinkInstance|s_counter[16]~58\ = CARRY((\progB|blinkInstance|s_counter\(16) & !\progB|blinkInstance|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(16),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[15]~56\,
	combout => \progB|blinkInstance|s_counter[16]~57_combout\,
	cout => \progB|blinkInstance|s_counter[16]~58\);

-- Location: FF_X100_Y62_N9
\progB|blinkInstance|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[16]~57_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(16));

-- Location: LCCOMB_X100_Y62_N10
\progB|blinkInstance|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[17]~59_combout\ = (\progB|blinkInstance|s_counter\(17) & (!\progB|blinkInstance|s_counter[16]~58\)) # (!\progB|blinkInstance|s_counter\(17) & ((\progB|blinkInstance|s_counter[16]~58\) # (GND)))
-- \progB|blinkInstance|s_counter[17]~60\ = CARRY((!\progB|blinkInstance|s_counter[16]~58\) # (!\progB|blinkInstance|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(17),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[16]~58\,
	combout => \progB|blinkInstance|s_counter[17]~59_combout\,
	cout => \progB|blinkInstance|s_counter[17]~60\);

-- Location: FF_X100_Y62_N11
\progB|blinkInstance|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[17]~59_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(17));

-- Location: LCCOMB_X100_Y62_N12
\progB|blinkInstance|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[18]~61_combout\ = (\progB|blinkInstance|s_counter\(18) & (\progB|blinkInstance|s_counter[17]~60\ $ (GND))) # (!\progB|blinkInstance|s_counter\(18) & (!\progB|blinkInstance|s_counter[17]~60\ & VCC))
-- \progB|blinkInstance|s_counter[18]~62\ = CARRY((\progB|blinkInstance|s_counter\(18) & !\progB|blinkInstance|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(18),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[17]~60\,
	combout => \progB|blinkInstance|s_counter[18]~61_combout\,
	cout => \progB|blinkInstance|s_counter[18]~62\);

-- Location: FF_X100_Y62_N13
\progB|blinkInstance|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[18]~61_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(18));

-- Location: LCCOMB_X100_Y62_N14
\progB|blinkInstance|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[19]~63_combout\ = (\progB|blinkInstance|s_counter\(19) & (!\progB|blinkInstance|s_counter[18]~62\)) # (!\progB|blinkInstance|s_counter\(19) & ((\progB|blinkInstance|s_counter[18]~62\) # (GND)))
-- \progB|blinkInstance|s_counter[19]~64\ = CARRY((!\progB|blinkInstance|s_counter[18]~62\) # (!\progB|blinkInstance|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(19),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[18]~62\,
	combout => \progB|blinkInstance|s_counter[19]~63_combout\,
	cout => \progB|blinkInstance|s_counter[19]~64\);

-- Location: FF_X100_Y62_N15
\progB|blinkInstance|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[19]~63_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(19));

-- Location: LCCOMB_X100_Y62_N16
\progB|blinkInstance|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[20]~65_combout\ = (\progB|blinkInstance|s_counter\(20) & (\progB|blinkInstance|s_counter[19]~64\ $ (GND))) # (!\progB|blinkInstance|s_counter\(20) & (!\progB|blinkInstance|s_counter[19]~64\ & VCC))
-- \progB|blinkInstance|s_counter[20]~66\ = CARRY((\progB|blinkInstance|s_counter\(20) & !\progB|blinkInstance|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(20),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[19]~64\,
	combout => \progB|blinkInstance|s_counter[20]~65_combout\,
	cout => \progB|blinkInstance|s_counter[20]~66\);

-- Location: FF_X100_Y62_N17
\progB|blinkInstance|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[20]~65_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(20));

-- Location: LCCOMB_X100_Y62_N18
\progB|blinkInstance|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[21]~67_combout\ = (\progB|blinkInstance|s_counter\(21) & (!\progB|blinkInstance|s_counter[20]~66\)) # (!\progB|blinkInstance|s_counter\(21) & ((\progB|blinkInstance|s_counter[20]~66\) # (GND)))
-- \progB|blinkInstance|s_counter[21]~68\ = CARRY((!\progB|blinkInstance|s_counter[20]~66\) # (!\progB|blinkInstance|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(21),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[20]~66\,
	combout => \progB|blinkInstance|s_counter[21]~67_combout\,
	cout => \progB|blinkInstance|s_counter[21]~68\);

-- Location: FF_X100_Y62_N19
\progB|blinkInstance|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[21]~67_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(21));

-- Location: LCCOMB_X100_Y62_N20
\progB|blinkInstance|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[22]~69_combout\ = (\progB|blinkInstance|s_counter\(22) & (\progB|blinkInstance|s_counter[21]~68\ $ (GND))) # (!\progB|blinkInstance|s_counter\(22) & (!\progB|blinkInstance|s_counter[21]~68\ & VCC))
-- \progB|blinkInstance|s_counter[22]~70\ = CARRY((\progB|blinkInstance|s_counter\(22) & !\progB|blinkInstance|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(22),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[21]~68\,
	combout => \progB|blinkInstance|s_counter[22]~69_combout\,
	cout => \progB|blinkInstance|s_counter[22]~70\);

-- Location: FF_X100_Y62_N21
\progB|blinkInstance|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[22]~69_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(22));

-- Location: LCCOMB_X100_Y62_N22
\progB|blinkInstance|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[23]~71_combout\ = (\progB|blinkInstance|s_counter\(23) & (!\progB|blinkInstance|s_counter[22]~70\)) # (!\progB|blinkInstance|s_counter\(23) & ((\progB|blinkInstance|s_counter[22]~70\) # (GND)))
-- \progB|blinkInstance|s_counter[23]~72\ = CARRY((!\progB|blinkInstance|s_counter[22]~70\) # (!\progB|blinkInstance|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(23),
	datad => VCC,
	cin => \progB|blinkInstance|s_counter[22]~70\,
	combout => \progB|blinkInstance|s_counter[23]~71_combout\,
	cout => \progB|blinkInstance|s_counter[23]~72\);

-- Location: FF_X100_Y62_N23
\progB|blinkInstance|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[23]~71_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(23));

-- Location: LCCOMB_X100_Y62_N24
\progB|blinkInstance|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|s_counter[24]~73_combout\ = \progB|blinkInstance|s_counter[23]~72\ $ (!\progB|blinkInstance|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \progB|blinkInstance|s_counter\(24),
	cin => \progB|blinkInstance|s_counter[23]~72\,
	combout => \progB|blinkInstance|s_counter[24]~73_combout\);

-- Location: FF_X100_Y62_N25
\progB|blinkInstance|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|blinkInstance|s_counter[24]~73_combout\,
	sclr => \progB|blinkInstance|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|blinkInstance|s_counter\(24));

-- Location: LCCOMB_X100_Y62_N28
\progB|blinkInstance|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~3_combout\ = (\progB|blinkInstance|s_counter\(16)) # ((\progB|blinkInstance|s_counter\(14) & \progB|blinkInstance|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \progB|blinkInstance|s_counter\(16),
	datac => \progB|blinkInstance|s_counter\(14),
	datad => \progB|blinkInstance|s_counter\(15),
	combout => \progB|blinkInstance|LessThan1~3_combout\);

-- Location: LCCOMB_X101_Y63_N28
\progB|blinkInstance|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~0_combout\ = (\progB|blinkInstance|s_counter\(13) & (\progB|blinkInstance|s_counter\(11) & (\progB|blinkInstance|s_counter\(12) & \progB|blinkInstance|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(13),
	datab => \progB|blinkInstance|s_counter\(11),
	datac => \progB|blinkInstance|s_counter\(12),
	datad => \progB|blinkInstance|s_counter\(10),
	combout => \progB|blinkInstance|LessThan1~0_combout\);

-- Location: LCCOMB_X101_Y63_N6
\progB|blinkInstance|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~1_combout\ = (\progB|blinkInstance|s_counter\(15) & (\progB|blinkInstance|LessThan1~0_combout\ & ((\progB|blinkInstance|s_counter\(5)) # (!\progB|blinkInstance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(15),
	datab => \progB|blinkInstance|s_counter\(5),
	datac => \progB|blinkInstance|LessThan0~0_combout\,
	datad => \progB|blinkInstance|LessThan1~0_combout\,
	combout => \progB|blinkInstance|LessThan1~1_combout\);

-- Location: LCCOMB_X101_Y63_N4
\progB|blinkInstance|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~4_combout\ = (\progB|blinkInstance|s_counter\(17) & (\progB|blinkInstance|LessThan1~2_combout\ & ((\progB|blinkInstance|LessThan1~3_combout\) # (\progB|blinkInstance|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(17),
	datab => \progB|blinkInstance|LessThan1~2_combout\,
	datac => \progB|blinkInstance|LessThan1~3_combout\,
	datad => \progB|blinkInstance|LessThan1~1_combout\,
	combout => \progB|blinkInstance|LessThan1~4_combout\);

-- Location: LCCOMB_X101_Y63_N26
\progB|blinkInstance|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|blinkInstance|LessThan1~5_combout\ = (\progB|blinkInstance|s_counter\(24)) # ((\progB|blinkInstance|s_counter\(23) & ((\progB|blinkInstance|s_counter\(22)) # (\progB|blinkInstance|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progB|blinkInstance|s_counter\(24),
	datab => \progB|blinkInstance|s_counter\(22),
	datac => \progB|blinkInstance|LessThan1~4_combout\,
	datad => \progB|blinkInstance|s_counter\(23),
	combout => \progB|blinkInstance|LessThan1~5_combout\);

-- Location: LCCOMB_X101_Y63_N24
\progB|LEDROUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progB|LEDROUT~0_combout\ = (!\SW[1]~input_o\ & (\progB|blinkInstance|LessThan1~5_combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \progB|blinkInstance|LessThan1~5_combout\,
	datad => \SW[0]~input_o\,
	combout => \progB|LEDROUT~0_combout\);

-- Location: FF_X101_Y63_N25
\progB|LEDROUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progB|LEDROUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progB|LEDROUT\(0));

-- Location: LCCOMB_X102_Y63_N28
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\progD|LEDROUT\(0))) # (!\SW[1]~input_o\ & ((\progB|LEDROUT\(0)))))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|LEDROUT\(0),
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \progB|LEDROUT\(0),
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X101_Y63_N30
\progD|LEDGOUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \progD|LEDGOUT~2_combout\ = (\SW[1]~input_o\ & (!\progD|phase~q\ & (\progB|blinkInstance|LessThan1~5_combout\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \progD|phase~q\,
	datac => \progB|blinkInstance|LessThan1~5_combout\,
	datad => \SW[0]~input_o\,
	combout => \progD|LEDGOUT~2_combout\);

-- Location: FF_X101_Y63_N31
\progD|LEDGOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progD|LEDGOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progD|LEDGOUT\(0));

-- Location: LCCOMB_X101_Y63_N8
\progC|LEDGOUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \progC|LEDGOUT~0_combout\ = (\SW[1]~input_o\ & (\progB|blinkInstance|LessThan1~5_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \progB|blinkInstance|LessThan1~5_combout\,
	datad => \SW[0]~input_o\,
	combout => \progC|LEDGOUT~0_combout\);

-- Location: FF_X101_Y63_N9
\progC|LEDGOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \progC|LEDGOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \progC|LEDGOUT\(0));

-- Location: LCCOMB_X101_Y63_N2
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\progD|LEDGOUT\(0))) # (!\SW[0]~input_o\ & ((\progC|LEDGOUT\(0)))))) # (!\SW[1]~input_o\ & (((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \progD|LEDGOUT\(0),
	datab => \progC|LEDGOUT\(0),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDG~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X102_Y63_N26
\Bin7SegDecoderUnits|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_n[0]~0_combout\ = (\SW[0]~input_o\) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X102_Y63_N4
\Bin7SegDecoderUnits|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_n[1]~1_combout\ = (\SW[0]~input_o\ $ (\SW[1]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X102_Y63_N6
\Bin7SegDecoderUnits|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_n[2]~2_combout\ = (\SW[2]~input_o\ & ((\SW[0]~input_o\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y50_N4
\Bin7SegDecoderUnits|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_n[3]~3_combout\ = ((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X102_Y63_N8
\Bin7SegDecoderUnits|decOut_n[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoderUnits|decOut_n[5]~4_combout\ = ((\SW[0]~input_o\ & \SW[1]~input_o\)) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \Bin7SegDecoderUnits|decOut_n[5]~4_combout\);

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

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


