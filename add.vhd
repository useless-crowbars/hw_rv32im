-- megafunction wizard: %LPM_ADD_SUB%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_ADD_SUB 

-- ============================================================
-- File Name: add.vhd
-- Megafunction Name(s):
-- 			LPM_ADD_SUB
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY add IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END add;


ARCHITECTURE SYN OF add IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT lpm_add_sub
	GENERIC (
		lpm_direction		: STRING;
		lpm_hint		: STRING;
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	result    <= sub_wire0(31 DOWNTO 0);

	LPM_ADD_SUB_component : LPM_ADD_SUB
	GENERIC MAP (
		lpm_direction => "ADD",
		lpm_hint => "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO",
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_ADD_SUB",
		lpm_width => 32
	)
	PORT MAP (
		dataa => dataa,
		datab => datab,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: ConstantA NUMERIC "0"
-- Retrieval info: PRIVATE: ConstantB NUMERIC "0"
-- Retrieval info: PRIVATE: Function NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: Overflow NUMERIC "0"
-- Retrieval info: PRIVATE: RadixA NUMERIC "10"
-- Retrieval info: PRIVATE: RadixB NUMERIC "10"
-- Retrieval info: PRIVATE: Representation NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
-- Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
-- Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "32"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
-- Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
-- Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
-- Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
-- Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
-- Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
-- Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
-- Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL add.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL add.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL add.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL add.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL add_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
