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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/17/2024 10:31:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DrinksFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DrinksFSM_vhd_vec_tst IS
END DrinksFSM_vhd_vec_tst;
ARCHITECTURE DrinksFSM_arch OF DrinksFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL drinkOut : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL V : STD_LOGIC;
COMPONENT DrinksFSM
	PORT (
	C : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	drinkOut : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	V : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DrinksFSM
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	clk => clk,
	drinkOut => drinkOut,
	reset => reset,
	V => V
	);

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 30000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 15000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 15000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 25000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 15000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 30000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 40000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 15000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	C <= '0';
	WAIT FOR 10000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	C <= '0';
	WAIT FOR 15000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 5000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
	WAIT FOR 5000 ps;
	C <= '1';
	WAIT FOR 10000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- V
t_prcs_V: PROCESS
BEGIN
	V <= '0';
	WAIT FOR 20000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 30000 ps;
	V <= '0';
	WAIT FOR 25000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 25000 ps;
	V <= '1';
	WAIT FOR 25000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 20000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 15000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 25000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 20000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 25000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 20000 ps;
	V <= '0';
	WAIT FOR 25000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 25000 ps;
	V <= '0';
	WAIT FOR 20000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 15000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 20000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 20000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 15000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 20000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 20000 ps;
	V <= '0';
	WAIT FOR 10000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 15000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 15000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 15000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 15000 ps;
	V <= '1';
	WAIT FOR 10000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 30000 ps;
	V <= '0';
	WAIT FOR 5000 ps;
	V <= '1';
	WAIT FOR 5000 ps;
	V <= '0';
	WAIT FOR 30000 ps;
	V <= '1';
WAIT;
END PROCESS t_prcs_V;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END DrinksFSM_arch;
