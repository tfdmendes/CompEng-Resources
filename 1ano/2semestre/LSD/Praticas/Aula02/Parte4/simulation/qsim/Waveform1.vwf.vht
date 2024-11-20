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
-- Generated on "03/06/2024 15:03:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PEnc16_4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PEnc16_4_vhd_vec_tst IS
END PEnc16_4_vhd_vec_tst;
ARCHITECTURE PEnc16_4_arch OF PEnc16_4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL decodedIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL encodedOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL validOut : STD_LOGIC;
COMPONENT PEnc16_4
	PORT (
	decodedIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	encodedOut : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	validOut : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PEnc16_4
	PORT MAP (
-- list connections between master ports and signals
	decodedIn => decodedIn,
	encodedOut => encodedOut,
	validOut => validOut
	);
-- decodedIn[15]
t_prcs_decodedIn_15: PROCESS
BEGIN
	decodedIn(15) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(15) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_15;
-- decodedIn[14]
t_prcs_decodedIn_14: PROCESS
BEGIN
	decodedIn(14) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(14) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(14) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(14) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_14;
-- decodedIn[13]
t_prcs_decodedIn_13: PROCESS
BEGIN
	decodedIn(13) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(13) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_13;
-- decodedIn[12]
t_prcs_decodedIn_12: PROCESS
BEGIN
	decodedIn(12) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(12) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_12;
-- decodedIn[11]
t_prcs_decodedIn_11: PROCESS
BEGIN
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(11) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_11;
-- decodedIn[10]
t_prcs_decodedIn_10: PROCESS
BEGIN
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(10) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_10;
-- decodedIn[9]
t_prcs_decodedIn_9: PROCESS
BEGIN
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(9) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_9;
-- decodedIn[8]
t_prcs_decodedIn_8: PROCESS
BEGIN
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(8) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_8;
-- decodedIn[7]
t_prcs_decodedIn_7: PROCESS
BEGIN
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(7) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_7;
-- decodedIn[6]
t_prcs_decodedIn_6: PROCESS
BEGIN
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(6) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_6;
-- decodedIn[5]
t_prcs_decodedIn_5: PROCESS
BEGIN
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(5) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_5;
-- decodedIn[4]
t_prcs_decodedIn_4: PROCESS
BEGIN
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(4) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_4;
-- decodedIn[3]
t_prcs_decodedIn_3: PROCESS
BEGIN
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(3) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_3;
-- decodedIn[2]
t_prcs_decodedIn_2: PROCESS
BEGIN
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(2) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_2;
-- decodedIn[1]
t_prcs_decodedIn_1: PROCESS
BEGIN
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(1) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_1;
-- decodedIn[0]
t_prcs_decodedIn_0: PROCESS
BEGIN
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '1';
	WAIT FOR 10000 ps;
	decodedIn(0) <= '0';
WAIT;
END PROCESS t_prcs_decodedIn_0;
END PEnc16_4_arch;
