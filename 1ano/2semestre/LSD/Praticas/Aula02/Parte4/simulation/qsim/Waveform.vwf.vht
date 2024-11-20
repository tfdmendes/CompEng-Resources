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
-- Generated on "03/06/2024 13:59:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PEnc4_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PEnc4_2_vhd_vec_tst IS
END PEnc4_2_vhd_vec_tst;
ARCHITECTURE PEnc4_2_arch OF PEnc4_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL decodedIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL encodedOut : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL validOut : STD_LOGIC;
COMPONENT PEnc4_2
	PORT (
	decodedIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	encodedOut : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	validOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PEnc4_2
	PORT MAP (
-- list connections between master ports and signals
	decodedIn => decodedIn,
	encodedOut => encodedOut,
	validOut => validOut
	);
-- decodedIn[3]
t_prcs_decodedIn_3: PROCESS
BEGIN
	decodedIn(3) <= '1';
	WAIT FOR 60000 ps;
	decodedIn(3) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_3;
-- decodedIn[2]
t_prcs_decodedIn_2: PROCESS
BEGIN
	decodedIn(2) <= '1';
	WAIT FOR 110000 ps;
	decodedIn(2) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_2;
-- decodedIn[1]
t_prcs_decodedIn_1: PROCESS
BEGIN
	decodedIn(1) <= '1';
	WAIT FOR 170000 ps;
	decodedIn(1) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_1;
-- decodedIn[0]
t_prcs_decodedIn_0: PROCESS
BEGIN
	decodedIn(0) <= '1';
	WAIT FOR 230000 ps;
	decodedIn(0) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_0;
END PEnc4_2_arch;
