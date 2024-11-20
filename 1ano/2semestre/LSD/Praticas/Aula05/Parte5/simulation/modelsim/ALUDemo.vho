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

-- DATE "03/20/2024 14:52:09"

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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \CLOCK_50~padout\ : std_logic;
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
SIGNAL \CLOCK_50~ibuf_o\ : std_logic;
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
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
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
SIGNAL SW : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo IS
    PORT (
	LEDR : OUT std_logic_vector(11 DOWNTO 0);
	SW : IN std_logic_vector(14 DOWNTO 0)
	);
END ALUDemo;

-- Design Ports Information
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst2|m[5]~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst2|m[4]~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst2|m[3]~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst2|m[2]~3_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst2|m[1]~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst2|m[0]~5_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15_combout\ : std_logic;
SIGNAL \inst2|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~7_cout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16_combout\ : std_logic;
SIGNAL \inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose[7]~2_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst2|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19_combout\ : std_logic;
SIGNAL \inst2|Mux4~3_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Mux5~3_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst2|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \inst2|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(41 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst2|Mult0|auto_generated|mac_mult1~dataout\ & \inst2|Mult0|auto_generated|mac_mult1~5\ & \inst2|Mult0|auto_generated|mac_mult1~4\ & 
\inst2|Mult0|auto_generated|mac_mult1~3\ & \inst2|Mult0|auto_generated|mac_mult1~2\ & \inst2|Mult0|auto_generated|mac_mult1~1\ & \inst2|Mult0|auto_generated|mac_mult1~0\);

\inst2|Mult0|auto_generated|mac_out2~0\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_out2~1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_out2~2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_out2~3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_out2~4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_out2~5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_out2~dataout\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\SW[11]~input_o\ & \SW[10]~input_o\ & \SW[9]~input_o\ & \SW[8]~input_o\ & \SW[7]~input_o\ & \SW[6]~input_o\ & gnd & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\ & gnd & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1~0\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_mult1~1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_mult1~2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_mult1~3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_mult1~4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_mult1~5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_mult1~dataout\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[5]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[4]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[3]~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[2]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[1]~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|m[0]~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

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

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: DSPMULT_X93_Y14_N0
\inst2|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y14_N2
\inst2|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X98_Y14_N16
\inst2|m[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[5]~0_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[5]~0_combout\);

-- Location: LCCOMB_X98_Y14_N26
\inst2|m[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[4]~1_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[4]~1_combout\);

-- Location: LCCOMB_X98_Y14_N20
\inst2|m[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[3]~2_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[3]~2_combout\);

-- Location: LCCOMB_X98_Y14_N22
\inst2|m[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[2]~3_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[2]~3_combout\);

-- Location: LCCOMB_X98_Y14_N0
\inst2|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[1]~4_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[1]~4_combout\);

-- Location: LCCOMB_X98_Y14_N18
\inst2|m[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|m[0]~5_combout\ = (!\SW[12]~input_o\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ & (!\SW[14]~input_o\ & \SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|m[0]~5_combout\);

-- Location: LCCOMB_X106_Y13_N10
\inst2|Mod0|auto_generated|divider|divider|selnose[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\ = (!\SW[3]~input_o\ & (!\SW[5]~input_o\ & (!\SW[2]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\);

-- Location: LCCOMB_X106_Y13_N8
\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0_combout\ = (\SW[0]~input_o\ & (!\SW[10]~input_o\ & \SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0_combout\);

-- Location: LCCOMB_X106_Y13_N20
\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ = (\SW[11]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~0_combout\,
	datac => \SW[11]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\);

-- Location: LCCOMB_X106_Y13_N22
\inst2|Mod0|auto_generated|divider|divider|selnose[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\ & !\SW[10]~input_o\)) # (!\SW[11]~input_o\))) # (!\SW[1]~input_o\ & (((\SW[0]~input_o\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\);

-- Location: LCCOMB_X106_Y13_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ = \SW[10]~input_o\ $ (((\SW[0]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\ & \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\);

-- Location: LCCOMB_X106_Y14_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[9]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[9]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X106_Y14_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X106_Y14_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X106_Y14_N28
\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X106_Y13_N2
\inst2|Mod0|auto_generated|divider|divider|selnose[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose\(14) = (\SW[3]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # ((\SW[5]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose\(14));

-- Location: LCCOMB_X106_Y14_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & (\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose\(14),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\);

-- Location: LCCOMB_X106_Y14_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & (\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose\(14),
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\);

-- Location: LCCOMB_X106_Y14_N20
\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & ((\SW[9]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|selnose\(14) & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[9]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose\(14),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\);

-- Location: LCCOMB_X108_Y14_N4
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[8]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[8]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X108_Y14_N6
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X108_Y14_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X108_Y14_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ & ((\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ & (\SW[3]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\ & ((\SW[3]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X108_Y14_N12
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X107_Y14_N8
\inst2|Mod0|auto_generated|divider|divider|selnose[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose\(21) = (\SW[5]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \SW[4]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose\(21));

-- Location: LCCOMB_X108_Y14_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose\(21),
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[14]~3_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\);

-- Location: LCCOMB_X108_Y14_N26
\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & (\inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[13]~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose\(21),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LCCOMB_X108_Y14_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & (\inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose\(21),
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\);

-- Location: LCCOMB_X108_Y14_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & ((\SW[8]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|selnose\(21) & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose\(21),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\);

-- Location: LCCOMB_X108_Y14_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[7]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[7]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[7]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X108_Y14_N16
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X108_Y14_N18
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X108_Y14_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ & ((\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ & (\SW[3]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ & ((\SW[3]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X108_Y14_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)) # 
-- (!\SW[4]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X108_Y14_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X107_Y14_N10
\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\)))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\))) # (!\SW[5]~input_o\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~6_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\);

-- Location: LCCOMB_X107_Y14_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\)) # (!\SW[5]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\);

-- Location: LCCOMB_X107_Y14_N6
\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\)) # (!\SW[5]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[19]~8_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\);

-- Location: LCCOMB_X107_Y14_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\ = (\SW[5]~input_o\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\)))) # (!\SW[5]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\);

-- Location: LCCOMB_X108_Y14_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[7]~input_o\)) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\SW[5]~input_o\ & (\SW[7]~input_o\)) # (!\SW[5]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \SW[7]~input_o\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\);

-- Location: LCCOMB_X107_Y14_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\SW[6]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[6]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\SW[6]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X107_Y14_N16
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & ((\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & (\SW[1]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\ & ((\SW[1]~input_o\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X107_Y14_N18
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\ $ (\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\ & (!\SW[2]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X107_Y14_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X107_Y14_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\ $ (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # 
-- (!\SW[4]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X107_Y14_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\SW[5]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\SW[5]~input_o\ & ((!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\))) # 
-- (!\SW[5]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X107_Y14_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X107_Y14_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~10_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15_combout\);

-- Location: LCCOMB_X102_Y14_N6
\inst2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_combout\ = (\SW[11]~input_o\ & ((\SW[13]~input_o\ $ (\SW[5]~input_o\)) # (!\SW[12]~input_o\))) # (!\SW[11]~input_o\ & ((\SW[13]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[13]~input_o\ & (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mux0~3_combout\);

-- Location: LCCOMB_X106_Y14_N8
\inst2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~4_combout\ = (\inst2|Mux0~3_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15_combout\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[35]~15_combout\,
	datab => \inst2|Mux0~3_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux0~4_combout\);

-- Location: LCCOMB_X98_Y14_N28
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\SW[14]~input_o\) # ((\SW[12]~input_o\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X98_Y14_N6
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\SW[14]~input_o\ & \SW[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y14_N24
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \SW[12]~input_o\ $ (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X98_Y14_N24
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = \SW[12]~input_o\ $ (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X103_Y14_N16
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \SW[12]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst2|Add0~2_combout\);

-- Location: LCCOMB_X106_Y14_N30
\inst2|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_combout\ = \SW[12]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst2|Add0~3_combout\);

-- Location: LCCOMB_X106_Y14_N0
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = \SW[12]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst2|Add0~4_combout\);

-- Location: LCCOMB_X103_Y14_N2
\inst2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = \SW[12]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Add0~5_combout\);

-- Location: LCCOMB_X102_Y14_N8
\inst2|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~7_cout\ = CARRY(\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datad => VCC,
	cout => \inst2|Add0~7_cout\);

-- Location: LCCOMB_X102_Y14_N10
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|Add0~5_combout\ & ((\SW[6]~input_o\ & (\inst2|Add0~7_cout\ & VCC)) # (!\SW[6]~input_o\ & (!\inst2|Add0~7_cout\)))) # (!\inst2|Add0~5_combout\ & ((\SW[6]~input_o\ & (!\inst2|Add0~7_cout\)) # (!\SW[6]~input_o\ & 
-- ((\inst2|Add0~7_cout\) # (GND)))))
-- \inst2|Add0~9\ = CARRY((\inst2|Add0~5_combout\ & (!\SW[6]~input_o\ & !\inst2|Add0~7_cout\)) # (!\inst2|Add0~5_combout\ & ((!\inst2|Add0~7_cout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~5_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~7_cout\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X102_Y14_N12
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = ((\inst2|Add0~4_combout\ $ (\SW[7]~input_o\ $ (!\inst2|Add0~9\)))) # (GND)
-- \inst2|Add0~11\ = CARRY((\inst2|Add0~4_combout\ & ((\SW[7]~input_o\) # (!\inst2|Add0~9\))) # (!\inst2|Add0~4_combout\ & (\SW[7]~input_o\ & !\inst2|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X102_Y14_N14
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\SW[8]~input_o\ & ((\inst2|Add0~3_combout\ & (\inst2|Add0~11\ & VCC)) # (!\inst2|Add0~3_combout\ & (!\inst2|Add0~11\)))) # (!\SW[8]~input_o\ & ((\inst2|Add0~3_combout\ & (!\inst2|Add0~11\)) # (!\inst2|Add0~3_combout\ & 
-- ((\inst2|Add0~11\) # (GND)))))
-- \inst2|Add0~13\ = CARRY((\SW[8]~input_o\ & (!\inst2|Add0~3_combout\ & !\inst2|Add0~11\)) # (!\SW[8]~input_o\ & ((!\inst2|Add0~11\) # (!\inst2|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst2|Add0~3_combout\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X102_Y14_N16
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = ((\inst2|Add0~2_combout\ $ (\SW[9]~input_o\ $ (!\inst2|Add0~13\)))) # (GND)
-- \inst2|Add0~15\ = CARRY((\inst2|Add0~2_combout\ & ((\SW[9]~input_o\) # (!\inst2|Add0~13\))) # (!\inst2|Add0~2_combout\ & (\SW[9]~input_o\ & !\inst2|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \SW[9]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X102_Y14_N18
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|Add0~1_combout\ & ((\SW[10]~input_o\ & (\inst2|Add0~15\ & VCC)) # (!\SW[10]~input_o\ & (!\inst2|Add0~15\)))) # (!\inst2|Add0~1_combout\ & ((\SW[10]~input_o\ & (!\inst2|Add0~15\)) # (!\SW[10]~input_o\ & ((\inst2|Add0~15\) 
-- # (GND)))))
-- \inst2|Add0~17\ = CARRY((\inst2|Add0~1_combout\ & (!\SW[10]~input_o\ & !\inst2|Add0~15\)) # (!\inst2|Add0~1_combout\ & ((!\inst2|Add0~15\) # (!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~1_combout\,
	datab => \SW[10]~input_o\,
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X102_Y14_N20
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \SW[11]~input_o\ $ (\inst2|Add0~17\ $ (!\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datad => \inst2|Add0~0_combout\,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X102_Y14_N2
\inst2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux0~0_combout\ & (((\inst2|Equal0~0_combout\)))) # (!\inst2|Mux0~0_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X106_Y13_N4
\inst2|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose\(0) = (\SW[1]~input_o\) # (((!\SW[11]~input_o\ & \SW[0]~input_o\)) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X102_Y14_N4
\inst2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\inst2|Mux0~1_combout\ & (((!\inst2|Mod0|auto_generated|divider|divider|selnose\(0)) # (!\inst2|Mux0~0_combout\)))) # (!\inst2|Mux0~1_combout\ & (\inst2|Mux0~4_combout\ & (\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~4_combout\,
	datab => \inst2|Mux0~1_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|selnose\(0),
	combout => \inst2|Mux0~2_combout\);

-- Location: LCCOMB_X98_Y14_N30
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\SW[10]~input_o\ & ((\SW[13]~input_o\ $ (\SW[4]~input_o\)) # (!\SW[12]~input_o\))) # (!\SW[10]~input_o\ & ((\SW[13]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[13]~input_o\ & (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X107_Y14_N12
\inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~11_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16_combout\);

-- Location: LCCOMB_X98_Y14_N8
\inst2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~3_combout\ = (\inst2|Mux1~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16_combout\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[34]~16_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux1~3_combout\);

-- Location: LCCOMB_X98_Y14_N2
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|Equal0~0_combout\ & (((\inst2|Mux0~0_combout\)))) # (!\inst2|Equal0~0_combout\ & ((\inst2|Mux0~0_combout\ & (\inst2|Mux1~3_combout\)) # (!\inst2|Mux0~0_combout\ & ((\inst2|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Mux1~3_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Mux0~0_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y13_N30
\inst2|Mod0|auto_generated|divider|divider|selnose[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|selnose[7]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|selnose[0]~0_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|selnose[7]~1_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|selnose[7]~2_combout\);

-- Location: LCCOMB_X98_Y14_N4
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|Mux1~0_combout\ & (((!\inst2|Equal0~0_combout\) # (!\inst2|Mod0|auto_generated|divider|divider|selnose[7]~2_combout\)))) # (!\inst2|Mux1~0_combout\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- ((\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \inst2|Mux1~0_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|selnose[7]~2_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X102_Y14_N30
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\) # ((\inst2|Mux0~0_combout\)))) # (!\inst2|Equal0~0_combout\ & (((!\inst2|Mux0~0_combout\ & \inst2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y13_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[9]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[9]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X106_Y13_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X106_Y13_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X106_Y13_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X107_Y13_N8
\inst2|Div0|auto_generated|divider|divider|selnose[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(14) = (\SW[3]~input_o\) # ((\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # ((\SW[5]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(14));

-- Location: LCCOMB_X107_Y14_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~12_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17_combout\);

-- Location: LCCOMB_X107_Y13_N16
\inst2|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\SW[3]~input_o\ & ((\SW[13]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[12]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[13]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[13]~input_o\ & (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X107_Y13_N2
\inst2|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|Mux2~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17_combout\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[33]~17_combout\,
	datab => \SW[12]~input_o\,
	datac => \inst2|Mux2~2_combout\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X106_Y13_N24
\inst2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|Mux2~0_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|selnose\(14))) # (!\inst2|Mux0~0_combout\))) # (!\inst2|Mux2~0_combout\ & (\inst2|Mux0~0_combout\ & ((\inst2|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst2|Mux0~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(14),
	datad => \inst2|Mux2~3_combout\,
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X106_Y13_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(14) & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|selnose\(14) & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(14),
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[7]~1_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\);

-- Location: LCCOMB_X106_Y13_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(14) & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|selnose\(14) & (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(14),
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[6]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X106_Y13_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(14) & ((\SW[9]~input_o\))) # (!\inst2|Div0|auto_generated|divider|divider|selnose\(14) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(14),
	datad => \SW[9]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\);

-- Location: LCCOMB_X108_Y13_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[8]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[8]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X108_Y13_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X108_Y13_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X108_Y13_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X108_Y13_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X107_Y13_N10
\inst2|Div0|auto_generated|divider|divider|selnose[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(21) = (\SW[5]~input_o\) # ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(21));

-- Location: LCCOMB_X103_Y14_N10
\inst2|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\SW[2]~input_o\ & ((\SW[8]~input_o\ $ (\SW[13]~input_o\)) # (!\SW[12]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[13]~input_o\ & (\SW[8]~input_o\)) # (!\SW[13]~input_o\ & ((!\SW[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X106_Y14_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[25]~13_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18_combout\);

-- Location: LCCOMB_X103_Y14_N28
\inst2|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\inst2|Mux3~2_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18_combout\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[32]~18_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X102_Y14_N22
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|Equal0~0_combout\) # ((\inst2|Mux3~3_combout\)))) # (!\inst2|Mux0~0_combout\ & (!\inst2|Equal0~0_combout\ & (\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Mux3~3_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y14_N16
\inst2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mux3~0_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|selnose\(21)))) # (!\inst2|Mux3~0_combout\ & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\inst2|Equal0~0_combout\ & 
-- (((\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(21),
	datad => \inst2|Mux3~0_combout\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X102_Y14_N0
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\) # ((\inst2|Mux0~0_combout\)))) # (!\inst2|Equal0~0_combout\ & (((!\inst2|Mux0~0_combout\ & \inst2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y13_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(21) & (\inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|selnose\(21),
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[14]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\);

-- Location: LCCOMB_X107_Y13_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(21) & (\inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|selnose\(21),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\);

-- Location: LCCOMB_X108_Y13_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(21) & (\inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|selnose\(21) & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|selnose\(21),
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[12]~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\);

-- Location: LCCOMB_X108_Y13_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\inst2|Div0|auto_generated|divider|divider|selnose\(21) & ((\SW[8]~input_o\))) # (!\inst2|Div0|auto_generated|divider|divider|selnose\(21) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|selnose\(21),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \SW[8]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LCCOMB_X107_Y13_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[7]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[7]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[7]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X107_Y13_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X107_Y13_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\ $ (\SW[2]~input_o\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\ & (!\SW[2]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X107_Y13_N26
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X107_Y13_N28
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\ $ (\SW[4]~input_o\ $ (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\SW[4]~input_o\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\ & (!\SW[4]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X107_Y13_N30
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X107_Y13_N0
\inst2|Div0|auto_generated|divider|divider|selnose[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|selnose\(28) = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\) # (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|selnose\(28));

-- Location: LCCOMB_X106_Y14_N12
\inst2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~2_combout\ = (\SW[1]~input_o\ & ((\SW[13]~input_o\ $ (\SW[7]~input_o\)) # (!\SW[12]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[13]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[13]~input_o\ & (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mux4~2_combout\);

-- Location: LCCOMB_X107_Y14_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[24]~14_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19_combout\);

-- Location: LCCOMB_X106_Y14_N6
\inst2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~3_combout\ = (\inst2|Mux4~2_combout\ & ((\SW[12]~input_o\) # ((\inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19_combout\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux4~2_combout\,
	datab => \SW[12]~input_o\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[31]~19_combout\,
	datad => \SW[13]~input_o\,
	combout => \inst2|Mux4~3_combout\);

-- Location: LCCOMB_X102_Y14_N26
\inst2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = (\inst2|Mux0~0_combout\ & ((\inst2|Mux4~0_combout\ & (!\inst2|Div0|auto_generated|divider|divider|selnose\(28))) # (!\inst2|Mux4~0_combout\ & ((\inst2|Mux4~3_combout\))))) # (!\inst2|Mux0~0_combout\ & (\inst2|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Mux4~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|selnose\(28),
	datad => \inst2|Mux4~3_combout\,
	combout => \inst2|Mux4~1_combout\);

-- Location: LCCOMB_X103_Y14_N12
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\SW[12]~input_o\ & (((\SW[6]~input_o\)))) # (!\SW[12]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\SW[6]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y14_N6
\inst2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\SW[13]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[13]~input_o\ & (\inst2|Mux5~0_combout\ & ((\SW[0]~input_o\) # (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~0_combout\,
	datab => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X103_Y14_N24
\inst2|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~2_combout\ = (\SW[13]~input_o\ & ((\SW[6]~input_o\ & ((!\SW[0]~input_o\) # (!\inst2|Mux5~1_combout\))) # (!\SW[6]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[13]~input_o\ & (\inst2|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~1_combout\,
	datab => \SW[13]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst2|Mux5~2_combout\);

-- Location: LCCOMB_X102_Y14_N28
\inst2|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~3_combout\ = (\inst2|Mux0~0_combout\ & (((\inst2|Equal0~0_combout\) # (\inst2|Mux5~2_combout\)))) # (!\inst2|Mux0~0_combout\ & (\inst2|Add0~8_combout\ & (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Mux5~2_combout\,
	combout => \inst2|Mux5~3_combout\);

-- Location: LCCOMB_X108_Y13_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\ = (\SW[5]~input_o\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\)))) # (!\SW[5]~input_o\ & 
-- ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~3_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\);

-- Location: LCCOMB_X107_Y13_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\))) # (!\SW[5]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\);

-- Location: LCCOMB_X107_Y13_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\))) # (!\SW[5]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[19]~5_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\);

-- Location: LCCOMB_X107_Y13_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[5]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\))) # (!\SW[5]~input_o\ & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\);

-- Location: LCCOMB_X108_Y13_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\ = (\SW[5]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[5]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[7]~input_o\))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\);

-- Location: LCCOMB_X108_Y13_N2
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\ = CARRY((\SW[6]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\);

-- Location: LCCOMB_X108_Y13_N4
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\SW[1]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\SW[1]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\);

-- Location: LCCOMB_X108_Y13_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\ = CARRY((\SW[2]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\)) # 
-- (!\SW[2]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~10_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\);

-- Location: LCCOMB_X108_Y13_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\ & (\SW[3]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\ & ((\SW[3]~input_o\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~9_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\);

-- Location: LCCOMB_X108_Y13_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\ = CARRY((\SW[4]~input_o\ & (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\)) # 
-- (!\SW[4]~input_o\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\);

-- Location: LCCOMB_X108_Y13_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11_cout\ = CARRY((\SW[5]~input_o\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\) # (!\inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\))) 
-- # (!\SW[5]~input_o\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~7_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11_cout\);

-- Location: LCCOMB_X108_Y13_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X101_Y14_N18
\inst2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~4_combout\ = (\inst2|Mux5~3_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # (!\inst2|Equal0~0_combout\)))) # (!\inst2|Mux5~3_combout\ & (\inst2|Mult0|auto_generated|mac_out2~dataout\ & 
-- (\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~dataout\,
	datab => \inst2|Mux5~3_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst2|Mux5~4_combout\);

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


