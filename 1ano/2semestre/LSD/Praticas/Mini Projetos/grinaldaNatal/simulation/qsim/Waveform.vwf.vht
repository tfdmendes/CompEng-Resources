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
-- Generated on "04/12/2024 10:04:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProgramSelector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProgramSelector_vhd_vec_tst IS
END ProgramSelector_vhd_vec_tst;
ARCHITECTURE ProgramSelector_arch OF ProgramSelector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ProgramaA : STD_LOGIC;
SIGNAL ProgramaB : STD_LOGIC;
SIGNAL ProgramaC : STD_LOGIC;
SIGNAL programaD : STD_LOGIC;
COMPONENT ProgramSelector
	PORT (
	input : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ProgramaA : OUT STD_LOGIC;
	ProgramaB : OUT STD_LOGIC;
	ProgramaC : OUT STD_LOGIC;
	programaD : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ProgramSelector
	PORT MAP (
-- list connections between master ports and signals
	input => input,
	ProgramaA => ProgramaA,
	ProgramaB => ProgramaB,
	ProgramaC => ProgramaC,
	programaD => programaD
	);
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '0';
	WAIT FOR 40000 ps;
	input(1) <= '1';
	WAIT FOR 40000 ps;
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
	WAIT FOR 20000 ps;
	input(0) <= '1';
	WAIT FOR 20000 ps;
	input(0) <= '0';
	WAIT FOR 20000 ps;
	input(0) <= '1';
	WAIT FOR 20000 ps;
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;
END ProgramSelector_arch;
