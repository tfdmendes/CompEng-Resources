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

-- DATE "05/10/2024 10:10:46"

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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
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
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
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
SIGNAL \SW[2]~ibuf_o\ : std_logic;
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
SIGNAL SW : std_logic_vector(1 DOWNTO 0);

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

ENTITY 	DebugDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END DebugDemo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DebugDemo IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \system_core|s_cntVal[0]~30_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \system_core|s_cntVal[27]~56_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[0]~31\ : std_logic;
SIGNAL \system_core|s_cntVal[1]~32_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[1]~33\ : std_logic;
SIGNAL \system_core|s_cntVal[2]~34_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[2]~35\ : std_logic;
SIGNAL \system_core|s_cntVal[3]~36_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[3]~37\ : std_logic;
SIGNAL \system_core|s_cntVal[4]~38_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[4]~39\ : std_logic;
SIGNAL \system_core|s_cntVal[5]~40_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[5]~41\ : std_logic;
SIGNAL \system_core|s_cntVal[6]~42_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[6]~43\ : std_logic;
SIGNAL \system_core|s_cntVal[7]~44_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[7]~45\ : std_logic;
SIGNAL \system_core|s_cntVal[8]~46_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[8]~47\ : std_logic;
SIGNAL \system_core|s_cntVal[9]~48_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[9]~49\ : std_logic;
SIGNAL \system_core|s_cntVal[10]~50_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[10]~51\ : std_logic;
SIGNAL \system_core|s_cntVal[11]~52_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[11]~53\ : std_logic;
SIGNAL \system_core|s_cntVal[12]~54_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[12]~55\ : std_logic;
SIGNAL \system_core|s_cntVal[13]~57_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[13]~58\ : std_logic;
SIGNAL \system_core|s_cntVal[14]~59_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[14]~60\ : std_logic;
SIGNAL \system_core|s_cntVal[15]~61_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[15]~62\ : std_logic;
SIGNAL \system_core|s_cntVal[16]~63_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[16]~64\ : std_logic;
SIGNAL \system_core|s_cntVal[17]~65_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[17]~66\ : std_logic;
SIGNAL \system_core|s_cntVal[18]~67_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[18]~68\ : std_logic;
SIGNAL \system_core|s_cntVal[19]~69_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[19]~70\ : std_logic;
SIGNAL \system_core|s_cntVal[20]~71_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[20]~72\ : std_logic;
SIGNAL \system_core|s_cntVal[21]~73_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[21]~74\ : std_logic;
SIGNAL \system_core|s_cntVal[22]~75_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[22]~76\ : std_logic;
SIGNAL \system_core|s_cntVal[23]~77_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[23]~78\ : std_logic;
SIGNAL \system_core|s_cntVal[24]~79_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[24]~80\ : std_logic;
SIGNAL \system_core|s_cntVal[25]~81_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[25]~82\ : std_logic;
SIGNAL \system_core|s_cntVal[26]~83_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[26]~84\ : std_logic;
SIGNAL \system_core|s_cntVal[27]~85_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[27]~86\ : std_logic;
SIGNAL \system_core|s_cntVal[28]~87_combout\ : std_logic;
SIGNAL \system_core|s_cntVal[28]~88\ : std_logic;
SIGNAL \system_core|s_cntVal[29]~89_combout\ : std_logic;
SIGNAL \system_core|s_cntVal\ : std_logic_vector(29 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \system_core|s_cntVal\(12),
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
	i => \system_core|s_cntVal\(13),
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
	i => \system_core|s_cntVal\(14),
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
	i => \system_core|s_cntVal\(15),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(16),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(17),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(18),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(19),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(20),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(21),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(22),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(23),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(24),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(25),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(26),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(27),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(28),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|s_cntVal\(29),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X72_Y70_N2
\system_core|s_cntVal[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[0]~30_combout\ = \system_core|s_cntVal\(0) $ (VCC)
-- \system_core|s_cntVal[0]~31\ = CARRY(\system_core|s_cntVal\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(0),
	datad => VCC,
	combout => \system_core|s_cntVal[0]~30_combout\,
	cout => \system_core|s_cntVal[0]~31\);

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

-- Location: LCCOMB_X72_Y69_N30
\system_core|s_cntVal[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[27]~56_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \system_core|s_cntVal[27]~56_combout\);

-- Location: FF_X72_Y70_N3
\system_core|s_cntVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[0]~30_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(0));

-- Location: LCCOMB_X72_Y70_N4
\system_core|s_cntVal[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[1]~32_combout\ = (\system_core|s_cntVal\(1) & (!\system_core|s_cntVal[0]~31\)) # (!\system_core|s_cntVal\(1) & ((\system_core|s_cntVal[0]~31\) # (GND)))
-- \system_core|s_cntVal[1]~33\ = CARRY((!\system_core|s_cntVal[0]~31\) # (!\system_core|s_cntVal\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(1),
	datad => VCC,
	cin => \system_core|s_cntVal[0]~31\,
	combout => \system_core|s_cntVal[1]~32_combout\,
	cout => \system_core|s_cntVal[1]~33\);

-- Location: FF_X72_Y70_N5
\system_core|s_cntVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[1]~32_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(1));

-- Location: LCCOMB_X72_Y70_N6
\system_core|s_cntVal[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[2]~34_combout\ = (\system_core|s_cntVal\(2) & (\system_core|s_cntVal[1]~33\ $ (GND))) # (!\system_core|s_cntVal\(2) & (!\system_core|s_cntVal[1]~33\ & VCC))
-- \system_core|s_cntVal[2]~35\ = CARRY((\system_core|s_cntVal\(2) & !\system_core|s_cntVal[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(2),
	datad => VCC,
	cin => \system_core|s_cntVal[1]~33\,
	combout => \system_core|s_cntVal[2]~34_combout\,
	cout => \system_core|s_cntVal[2]~35\);

-- Location: FF_X72_Y70_N7
\system_core|s_cntVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[2]~34_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(2));

-- Location: LCCOMB_X72_Y70_N8
\system_core|s_cntVal[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[3]~36_combout\ = (\system_core|s_cntVal\(3) & (!\system_core|s_cntVal[2]~35\)) # (!\system_core|s_cntVal\(3) & ((\system_core|s_cntVal[2]~35\) # (GND)))
-- \system_core|s_cntVal[3]~37\ = CARRY((!\system_core|s_cntVal[2]~35\) # (!\system_core|s_cntVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(3),
	datad => VCC,
	cin => \system_core|s_cntVal[2]~35\,
	combout => \system_core|s_cntVal[3]~36_combout\,
	cout => \system_core|s_cntVal[3]~37\);

-- Location: FF_X72_Y70_N9
\system_core|s_cntVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[3]~36_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(3));

-- Location: LCCOMB_X72_Y70_N10
\system_core|s_cntVal[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[4]~38_combout\ = (\system_core|s_cntVal\(4) & (\system_core|s_cntVal[3]~37\ $ (GND))) # (!\system_core|s_cntVal\(4) & (!\system_core|s_cntVal[3]~37\ & VCC))
-- \system_core|s_cntVal[4]~39\ = CARRY((\system_core|s_cntVal\(4) & !\system_core|s_cntVal[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(4),
	datad => VCC,
	cin => \system_core|s_cntVal[3]~37\,
	combout => \system_core|s_cntVal[4]~38_combout\,
	cout => \system_core|s_cntVal[4]~39\);

-- Location: FF_X72_Y70_N11
\system_core|s_cntVal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[4]~38_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(4));

-- Location: LCCOMB_X72_Y70_N12
\system_core|s_cntVal[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[5]~40_combout\ = (\system_core|s_cntVal\(5) & (!\system_core|s_cntVal[4]~39\)) # (!\system_core|s_cntVal\(5) & ((\system_core|s_cntVal[4]~39\) # (GND)))
-- \system_core|s_cntVal[5]~41\ = CARRY((!\system_core|s_cntVal[4]~39\) # (!\system_core|s_cntVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(5),
	datad => VCC,
	cin => \system_core|s_cntVal[4]~39\,
	combout => \system_core|s_cntVal[5]~40_combout\,
	cout => \system_core|s_cntVal[5]~41\);

-- Location: FF_X72_Y70_N13
\system_core|s_cntVal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[5]~40_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(5));

-- Location: LCCOMB_X72_Y70_N14
\system_core|s_cntVal[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[6]~42_combout\ = (\system_core|s_cntVal\(6) & (\system_core|s_cntVal[5]~41\ $ (GND))) # (!\system_core|s_cntVal\(6) & (!\system_core|s_cntVal[5]~41\ & VCC))
-- \system_core|s_cntVal[6]~43\ = CARRY((\system_core|s_cntVal\(6) & !\system_core|s_cntVal[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(6),
	datad => VCC,
	cin => \system_core|s_cntVal[5]~41\,
	combout => \system_core|s_cntVal[6]~42_combout\,
	cout => \system_core|s_cntVal[6]~43\);

-- Location: FF_X72_Y70_N15
\system_core|s_cntVal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[6]~42_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(6));

-- Location: LCCOMB_X72_Y70_N16
\system_core|s_cntVal[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[7]~44_combout\ = (\system_core|s_cntVal\(7) & (!\system_core|s_cntVal[6]~43\)) # (!\system_core|s_cntVal\(7) & ((\system_core|s_cntVal[6]~43\) # (GND)))
-- \system_core|s_cntVal[7]~45\ = CARRY((!\system_core|s_cntVal[6]~43\) # (!\system_core|s_cntVal\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(7),
	datad => VCC,
	cin => \system_core|s_cntVal[6]~43\,
	combout => \system_core|s_cntVal[7]~44_combout\,
	cout => \system_core|s_cntVal[7]~45\);

-- Location: FF_X72_Y70_N17
\system_core|s_cntVal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[7]~44_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(7));

-- Location: LCCOMB_X72_Y70_N18
\system_core|s_cntVal[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[8]~46_combout\ = (\system_core|s_cntVal\(8) & (\system_core|s_cntVal[7]~45\ $ (GND))) # (!\system_core|s_cntVal\(8) & (!\system_core|s_cntVal[7]~45\ & VCC))
-- \system_core|s_cntVal[8]~47\ = CARRY((\system_core|s_cntVal\(8) & !\system_core|s_cntVal[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(8),
	datad => VCC,
	cin => \system_core|s_cntVal[7]~45\,
	combout => \system_core|s_cntVal[8]~46_combout\,
	cout => \system_core|s_cntVal[8]~47\);

-- Location: FF_X72_Y70_N19
\system_core|s_cntVal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[8]~46_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(8));

-- Location: LCCOMB_X72_Y70_N20
\system_core|s_cntVal[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[9]~48_combout\ = (\system_core|s_cntVal\(9) & (!\system_core|s_cntVal[8]~47\)) # (!\system_core|s_cntVal\(9) & ((\system_core|s_cntVal[8]~47\) # (GND)))
-- \system_core|s_cntVal[9]~49\ = CARRY((!\system_core|s_cntVal[8]~47\) # (!\system_core|s_cntVal\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(9),
	datad => VCC,
	cin => \system_core|s_cntVal[8]~47\,
	combout => \system_core|s_cntVal[9]~48_combout\,
	cout => \system_core|s_cntVal[9]~49\);

-- Location: FF_X72_Y70_N21
\system_core|s_cntVal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[9]~48_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(9));

-- Location: LCCOMB_X72_Y70_N22
\system_core|s_cntVal[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[10]~50_combout\ = (\system_core|s_cntVal\(10) & (\system_core|s_cntVal[9]~49\ $ (GND))) # (!\system_core|s_cntVal\(10) & (!\system_core|s_cntVal[9]~49\ & VCC))
-- \system_core|s_cntVal[10]~51\ = CARRY((\system_core|s_cntVal\(10) & !\system_core|s_cntVal[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(10),
	datad => VCC,
	cin => \system_core|s_cntVal[9]~49\,
	combout => \system_core|s_cntVal[10]~50_combout\,
	cout => \system_core|s_cntVal[10]~51\);

-- Location: FF_X72_Y70_N23
\system_core|s_cntVal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[10]~50_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(10));

-- Location: LCCOMB_X72_Y70_N24
\system_core|s_cntVal[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[11]~52_combout\ = (\system_core|s_cntVal\(11) & (!\system_core|s_cntVal[10]~51\)) # (!\system_core|s_cntVal\(11) & ((\system_core|s_cntVal[10]~51\) # (GND)))
-- \system_core|s_cntVal[11]~53\ = CARRY((!\system_core|s_cntVal[10]~51\) # (!\system_core|s_cntVal\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(11),
	datad => VCC,
	cin => \system_core|s_cntVal[10]~51\,
	combout => \system_core|s_cntVal[11]~52_combout\,
	cout => \system_core|s_cntVal[11]~53\);

-- Location: FF_X72_Y70_N25
\system_core|s_cntVal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[11]~52_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(11));

-- Location: LCCOMB_X72_Y70_N26
\system_core|s_cntVal[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[12]~54_combout\ = (\system_core|s_cntVal\(12) & (\system_core|s_cntVal[11]~53\ $ (GND))) # (!\system_core|s_cntVal\(12) & (!\system_core|s_cntVal[11]~53\ & VCC))
-- \system_core|s_cntVal[12]~55\ = CARRY((\system_core|s_cntVal\(12) & !\system_core|s_cntVal[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(12),
	datad => VCC,
	cin => \system_core|s_cntVal[11]~53\,
	combout => \system_core|s_cntVal[12]~54_combout\,
	cout => \system_core|s_cntVal[12]~55\);

-- Location: FF_X72_Y70_N27
\system_core|s_cntVal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[12]~54_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(12));

-- Location: LCCOMB_X72_Y70_N28
\system_core|s_cntVal[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[13]~57_combout\ = (\system_core|s_cntVal\(13) & (!\system_core|s_cntVal[12]~55\)) # (!\system_core|s_cntVal\(13) & ((\system_core|s_cntVal[12]~55\) # (GND)))
-- \system_core|s_cntVal[13]~58\ = CARRY((!\system_core|s_cntVal[12]~55\) # (!\system_core|s_cntVal\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(13),
	datad => VCC,
	cin => \system_core|s_cntVal[12]~55\,
	combout => \system_core|s_cntVal[13]~57_combout\,
	cout => \system_core|s_cntVal[13]~58\);

-- Location: FF_X72_Y70_N29
\system_core|s_cntVal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[13]~57_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(13));

-- Location: LCCOMB_X72_Y70_N30
\system_core|s_cntVal[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[14]~59_combout\ = (\system_core|s_cntVal\(14) & (\system_core|s_cntVal[13]~58\ $ (GND))) # (!\system_core|s_cntVal\(14) & (!\system_core|s_cntVal[13]~58\ & VCC))
-- \system_core|s_cntVal[14]~60\ = CARRY((\system_core|s_cntVal\(14) & !\system_core|s_cntVal[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(14),
	datad => VCC,
	cin => \system_core|s_cntVal[13]~58\,
	combout => \system_core|s_cntVal[14]~59_combout\,
	cout => \system_core|s_cntVal[14]~60\);

-- Location: FF_X72_Y70_N31
\system_core|s_cntVal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[14]~59_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(14));

-- Location: LCCOMB_X72_Y69_N0
\system_core|s_cntVal[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[15]~61_combout\ = (\system_core|s_cntVal\(15) & (!\system_core|s_cntVal[14]~60\)) # (!\system_core|s_cntVal\(15) & ((\system_core|s_cntVal[14]~60\) # (GND)))
-- \system_core|s_cntVal[15]~62\ = CARRY((!\system_core|s_cntVal[14]~60\) # (!\system_core|s_cntVal\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(15),
	datad => VCC,
	cin => \system_core|s_cntVal[14]~60\,
	combout => \system_core|s_cntVal[15]~61_combout\,
	cout => \system_core|s_cntVal[15]~62\);

-- Location: FF_X72_Y69_N1
\system_core|s_cntVal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[15]~61_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(15));

-- Location: LCCOMB_X72_Y69_N2
\system_core|s_cntVal[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[16]~63_combout\ = (\system_core|s_cntVal\(16) & (\system_core|s_cntVal[15]~62\ $ (GND))) # (!\system_core|s_cntVal\(16) & (!\system_core|s_cntVal[15]~62\ & VCC))
-- \system_core|s_cntVal[16]~64\ = CARRY((\system_core|s_cntVal\(16) & !\system_core|s_cntVal[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(16),
	datad => VCC,
	cin => \system_core|s_cntVal[15]~62\,
	combout => \system_core|s_cntVal[16]~63_combout\,
	cout => \system_core|s_cntVal[16]~64\);

-- Location: FF_X72_Y69_N3
\system_core|s_cntVal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[16]~63_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(16));

-- Location: LCCOMB_X72_Y69_N4
\system_core|s_cntVal[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[17]~65_combout\ = (\system_core|s_cntVal\(17) & (!\system_core|s_cntVal[16]~64\)) # (!\system_core|s_cntVal\(17) & ((\system_core|s_cntVal[16]~64\) # (GND)))
-- \system_core|s_cntVal[17]~66\ = CARRY((!\system_core|s_cntVal[16]~64\) # (!\system_core|s_cntVal\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(17),
	datad => VCC,
	cin => \system_core|s_cntVal[16]~64\,
	combout => \system_core|s_cntVal[17]~65_combout\,
	cout => \system_core|s_cntVal[17]~66\);

-- Location: FF_X72_Y69_N5
\system_core|s_cntVal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[17]~65_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(17));

-- Location: LCCOMB_X72_Y69_N6
\system_core|s_cntVal[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[18]~67_combout\ = (\system_core|s_cntVal\(18) & (\system_core|s_cntVal[17]~66\ $ (GND))) # (!\system_core|s_cntVal\(18) & (!\system_core|s_cntVal[17]~66\ & VCC))
-- \system_core|s_cntVal[18]~68\ = CARRY((\system_core|s_cntVal\(18) & !\system_core|s_cntVal[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(18),
	datad => VCC,
	cin => \system_core|s_cntVal[17]~66\,
	combout => \system_core|s_cntVal[18]~67_combout\,
	cout => \system_core|s_cntVal[18]~68\);

-- Location: FF_X72_Y69_N7
\system_core|s_cntVal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[18]~67_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(18));

-- Location: LCCOMB_X72_Y69_N8
\system_core|s_cntVal[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[19]~69_combout\ = (\system_core|s_cntVal\(19) & (!\system_core|s_cntVal[18]~68\)) # (!\system_core|s_cntVal\(19) & ((\system_core|s_cntVal[18]~68\) # (GND)))
-- \system_core|s_cntVal[19]~70\ = CARRY((!\system_core|s_cntVal[18]~68\) # (!\system_core|s_cntVal\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(19),
	datad => VCC,
	cin => \system_core|s_cntVal[18]~68\,
	combout => \system_core|s_cntVal[19]~69_combout\,
	cout => \system_core|s_cntVal[19]~70\);

-- Location: FF_X72_Y69_N9
\system_core|s_cntVal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[19]~69_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(19));

-- Location: LCCOMB_X72_Y69_N10
\system_core|s_cntVal[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[20]~71_combout\ = (\system_core|s_cntVal\(20) & (\system_core|s_cntVal[19]~70\ $ (GND))) # (!\system_core|s_cntVal\(20) & (!\system_core|s_cntVal[19]~70\ & VCC))
-- \system_core|s_cntVal[20]~72\ = CARRY((\system_core|s_cntVal\(20) & !\system_core|s_cntVal[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(20),
	datad => VCC,
	cin => \system_core|s_cntVal[19]~70\,
	combout => \system_core|s_cntVal[20]~71_combout\,
	cout => \system_core|s_cntVal[20]~72\);

-- Location: FF_X72_Y69_N11
\system_core|s_cntVal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[20]~71_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(20));

-- Location: LCCOMB_X72_Y69_N12
\system_core|s_cntVal[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[21]~73_combout\ = (\system_core|s_cntVal\(21) & (!\system_core|s_cntVal[20]~72\)) # (!\system_core|s_cntVal\(21) & ((\system_core|s_cntVal[20]~72\) # (GND)))
-- \system_core|s_cntVal[21]~74\ = CARRY((!\system_core|s_cntVal[20]~72\) # (!\system_core|s_cntVal\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(21),
	datad => VCC,
	cin => \system_core|s_cntVal[20]~72\,
	combout => \system_core|s_cntVal[21]~73_combout\,
	cout => \system_core|s_cntVal[21]~74\);

-- Location: FF_X72_Y69_N13
\system_core|s_cntVal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[21]~73_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(21));

-- Location: LCCOMB_X72_Y69_N14
\system_core|s_cntVal[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[22]~75_combout\ = (\system_core|s_cntVal\(22) & (\system_core|s_cntVal[21]~74\ $ (GND))) # (!\system_core|s_cntVal\(22) & (!\system_core|s_cntVal[21]~74\ & VCC))
-- \system_core|s_cntVal[22]~76\ = CARRY((\system_core|s_cntVal\(22) & !\system_core|s_cntVal[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(22),
	datad => VCC,
	cin => \system_core|s_cntVal[21]~74\,
	combout => \system_core|s_cntVal[22]~75_combout\,
	cout => \system_core|s_cntVal[22]~76\);

-- Location: FF_X72_Y69_N15
\system_core|s_cntVal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[22]~75_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(22));

-- Location: LCCOMB_X72_Y69_N16
\system_core|s_cntVal[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[23]~77_combout\ = (\system_core|s_cntVal\(23) & (!\system_core|s_cntVal[22]~76\)) # (!\system_core|s_cntVal\(23) & ((\system_core|s_cntVal[22]~76\) # (GND)))
-- \system_core|s_cntVal[23]~78\ = CARRY((!\system_core|s_cntVal[22]~76\) # (!\system_core|s_cntVal\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(23),
	datad => VCC,
	cin => \system_core|s_cntVal[22]~76\,
	combout => \system_core|s_cntVal[23]~77_combout\,
	cout => \system_core|s_cntVal[23]~78\);

-- Location: FF_X72_Y69_N17
\system_core|s_cntVal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[23]~77_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(23));

-- Location: LCCOMB_X72_Y69_N18
\system_core|s_cntVal[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[24]~79_combout\ = (\system_core|s_cntVal\(24) & (\system_core|s_cntVal[23]~78\ $ (GND))) # (!\system_core|s_cntVal\(24) & (!\system_core|s_cntVal[23]~78\ & VCC))
-- \system_core|s_cntVal[24]~80\ = CARRY((\system_core|s_cntVal\(24) & !\system_core|s_cntVal[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(24),
	datad => VCC,
	cin => \system_core|s_cntVal[23]~78\,
	combout => \system_core|s_cntVal[24]~79_combout\,
	cout => \system_core|s_cntVal[24]~80\);

-- Location: FF_X72_Y69_N19
\system_core|s_cntVal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[24]~79_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(24));

-- Location: LCCOMB_X72_Y69_N20
\system_core|s_cntVal[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[25]~81_combout\ = (\system_core|s_cntVal\(25) & (!\system_core|s_cntVal[24]~80\)) # (!\system_core|s_cntVal\(25) & ((\system_core|s_cntVal[24]~80\) # (GND)))
-- \system_core|s_cntVal[25]~82\ = CARRY((!\system_core|s_cntVal[24]~80\) # (!\system_core|s_cntVal\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(25),
	datad => VCC,
	cin => \system_core|s_cntVal[24]~80\,
	combout => \system_core|s_cntVal[25]~81_combout\,
	cout => \system_core|s_cntVal[25]~82\);

-- Location: FF_X72_Y69_N21
\system_core|s_cntVal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[25]~81_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(25));

-- Location: LCCOMB_X72_Y69_N22
\system_core|s_cntVal[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[26]~83_combout\ = (\system_core|s_cntVal\(26) & (\system_core|s_cntVal[25]~82\ $ (GND))) # (!\system_core|s_cntVal\(26) & (!\system_core|s_cntVal[25]~82\ & VCC))
-- \system_core|s_cntVal[26]~84\ = CARRY((\system_core|s_cntVal\(26) & !\system_core|s_cntVal[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(26),
	datad => VCC,
	cin => \system_core|s_cntVal[25]~82\,
	combout => \system_core|s_cntVal[26]~83_combout\,
	cout => \system_core|s_cntVal[26]~84\);

-- Location: FF_X72_Y69_N23
\system_core|s_cntVal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[26]~83_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(26));

-- Location: LCCOMB_X72_Y69_N24
\system_core|s_cntVal[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[27]~85_combout\ = (\system_core|s_cntVal\(27) & (!\system_core|s_cntVal[26]~84\)) # (!\system_core|s_cntVal\(27) & ((\system_core|s_cntVal[26]~84\) # (GND)))
-- \system_core|s_cntVal[27]~86\ = CARRY((!\system_core|s_cntVal[26]~84\) # (!\system_core|s_cntVal\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_cntVal\(27),
	datad => VCC,
	cin => \system_core|s_cntVal[26]~84\,
	combout => \system_core|s_cntVal[27]~85_combout\,
	cout => \system_core|s_cntVal[27]~86\);

-- Location: FF_X72_Y69_N25
\system_core|s_cntVal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[27]~85_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(27));

-- Location: LCCOMB_X72_Y69_N26
\system_core|s_cntVal[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[28]~87_combout\ = (\system_core|s_cntVal\(28) & (\system_core|s_cntVal[27]~86\ $ (GND))) # (!\system_core|s_cntVal\(28) & (!\system_core|s_cntVal[27]~86\ & VCC))
-- \system_core|s_cntVal[28]~88\ = CARRY((\system_core|s_cntVal\(28) & !\system_core|s_cntVal[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_cntVal\(28),
	datad => VCC,
	cin => \system_core|s_cntVal[27]~86\,
	combout => \system_core|s_cntVal[28]~87_combout\,
	cout => \system_core|s_cntVal[28]~88\);

-- Location: FF_X72_Y69_N27
\system_core|s_cntVal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[28]~87_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(28));

-- Location: LCCOMB_X72_Y69_N28
\system_core|s_cntVal[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_cntVal[29]~89_combout\ = \system_core|s_cntVal[28]~88\ $ (\system_core|s_cntVal\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \system_core|s_cntVal\(29),
	cin => \system_core|s_cntVal[28]~88\,
	combout => \system_core|s_cntVal[29]~89_combout\);

-- Location: FF_X72_Y69_N29
\system_core|s_cntVal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_cntVal[29]~89_combout\,
	sclr => \SW[0]~input_o\,
	ena => \system_core|s_cntVal[27]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_cntVal\(29));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


