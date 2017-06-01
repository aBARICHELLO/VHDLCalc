-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "06/01/2017 14:58:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topo IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END topo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \L0|Selector7~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \L0|CS.S4~q\ : std_logic;
SIGNAL \L0|Selector6~0_combout\ : std_logic;
SIGNAL \L0|CS.S3~q\ : std_logic;
SIGNAL \L0|Selector9~0_combout\ : std_logic;
SIGNAL \L0|CS.S7~q\ : std_logic;
SIGNAL \L0|NS.S6~0_combout\ : std_logic;
SIGNAL \L0|CS.S6~q\ : std_logic;
SIGNAL \L0|Selector4~0_combout\ : std_logic;
SIGNAL \L0|CS.S0~q\ : std_logic;
SIGNAL \L0|Selector5~0_combout\ : std_logic;
SIGNAL \L0|CS.S1~q\ : std_logic;
SIGNAL \L0|NS.S2~0_combout\ : std_logic;
SIGNAL \L0|CS.S2~q\ : std_logic;
SIGNAL \L0|WideOr9~combout\ : std_logic;
SIGNAL \L0|CS.S5~0_combout\ : std_logic;
SIGNAL \L0|CS.S5~q\ : std_logic;
SIGNAL \L0|WideOr8~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \L0|Selection~1_combout\ : std_logic;
SIGNAL \L0|Enable_1~combout\ : std_logic;
SIGNAL \L2|Add0~13_sumout\ : std_logic;
SIGNAL \L0|Selection~0_combout\ : std_logic;
SIGNAL \L6|m[0]~0_combout\ : std_logic;
SIGNAL \L0|WideOr8~combout\ : std_logic;
SIGNAL \L0|Enable_2~combout\ : std_logic;
SIGNAL \L4|signalshift[1]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \L4|signalshift[3]~feeder_combout\ : std_logic;
SIGNAL \L2|Add0~14\ : std_logic;
SIGNAL \L2|Add0~5_sumout\ : std_logic;
SIGNAL \L6|m[1]~18_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \L2|Add0~6\ : std_logic;
SIGNAL \L2|Add0~2\ : std_logic;
SIGNAL \L2|Add0~9_sumout\ : std_logic;
SIGNAL \L6|m[3]~14_combout\ : std_logic;
SIGNAL \L2|Add0~1_sumout\ : std_logic;
SIGNAL \L6|m[2]~22_combout\ : std_logic;
SIGNAL \L10|F[0]~0_combout\ : std_logic;
SIGNAL \L10|F[1]~1_combout\ : std_logic;
SIGNAL \L10|F[2]~2_combout\ : std_logic;
SIGNAL \L10|F[3]~3_combout\ : std_logic;
SIGNAL \L10|F[4]~4_combout\ : std_logic;
SIGNAL \L10|F[5]~5_combout\ : std_logic;
SIGNAL \L10|F[6]~6_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \L2|Add0~10\ : std_logic;
SIGNAL \L2|Add0~29_sumout\ : std_logic;
SIGNAL \L6|m[4]~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \L4|signalshift[7]~feeder_combout\ : std_logic;
SIGNAL \L2|Add0~30\ : std_logic;
SIGNAL \L2|Add0~21_sumout\ : std_logic;
SIGNAL \L6|m[5]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \L5|signalshift[6]~feeder_combout\ : std_logic;
SIGNAL \L2|Add0~22\ : std_logic;
SIGNAL \L2|Add0~17_sumout\ : std_logic;
SIGNAL \L6|m[6]~10_combout\ : std_logic;
SIGNAL \L2|Add0~18\ : std_logic;
SIGNAL \L2|Add0~25_sumout\ : std_logic;
SIGNAL \L6|m[7]~1_combout\ : std_logic;
SIGNAL \L9|F[0]~0_combout\ : std_logic;
SIGNAL \L9|F[1]~1_combout\ : std_logic;
SIGNAL \L9|F[2]~2_combout\ : std_logic;
SIGNAL \L9|F[3]~3_combout\ : std_logic;
SIGNAL \L9|F[4]~4_combout\ : std_logic;
SIGNAL \L9|F[5]~5_combout\ : std_logic;
SIGNAL \L9|F[6]~6_combout\ : std_logic;
SIGNAL \L0|Selection\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L5|signalshift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L4|signalshift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L10|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L8|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \L0|ALT_INV_Enable_1~combout\ : std_logic;
SIGNAL \L0|ALT_INV_Enable_2~combout\ : std_logic;
SIGNAL \L0|ALT_INV_Selection\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L0|ALT_INV_Selection~1_combout\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S3~q\ : std_logic;
SIGNAL \L0|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \L0|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S5~q\ : std_logic;
SIGNAL \L0|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S1~q\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S0~q\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S7~q\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S2~q\ : std_logic;
SIGNAL \L0|ALT_INV_Selection~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S6~q\ : std_logic;
SIGNAL \L0|ALT_INV_CS.S4~q\ : std_logic;
SIGNAL \L1|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L4|ALT_INV_signalshift\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \L5|ALT_INV_signalshift\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \L9|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L7|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L10|ALT_INV_F[6]~6_combout\ <= NOT \L10|F[6]~6_combout\;
\L8|ALT_INV_Q\(0) <= NOT \L8|Q\(0);
\L8|ALT_INV_Q\(3) <= NOT \L8|Q\(3);
\L8|ALT_INV_Q\(1) <= NOT \L8|Q\(1);
\L8|ALT_INV_Q\(2) <= NOT \L8|Q\(2);
\L2|ALT_INV_Add0~29_sumout\ <= NOT \L2|Add0~29_sumout\;
\L2|ALT_INV_Add0~25_sumout\ <= NOT \L2|Add0~25_sumout\;
\L2|ALT_INV_Add0~21_sumout\ <= NOT \L2|Add0~21_sumout\;
\L2|ALT_INV_Add0~17_sumout\ <= NOT \L2|Add0~17_sumout\;
\L2|ALT_INV_Add0~13_sumout\ <= NOT \L2|Add0~13_sumout\;
\L2|ALT_INV_Add0~9_sumout\ <= NOT \L2|Add0~9_sumout\;
\L2|ALT_INV_Add0~5_sumout\ <= NOT \L2|Add0~5_sumout\;
\L2|ALT_INV_Add0~1_sumout\ <= NOT \L2|Add0~1_sumout\;
\ALT_INV_CLOCK_50~inputCLKENA0_outclk\ <= NOT \CLOCK_50~inputCLKENA0_outclk\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\L0|ALT_INV_Enable_1~combout\ <= NOT \L0|Enable_1~combout\;
\L0|ALT_INV_Enable_2~combout\ <= NOT \L0|Enable_2~combout\;
\L0|ALT_INV_Selection\(1) <= NOT \L0|Selection\(1);
\L0|ALT_INV_Selection\(0) <= NOT \L0|Selection\(0);
\L0|ALT_INV_Selection~1_combout\ <= NOT \L0|Selection~1_combout\;
\L0|ALT_INV_CS.S3~q\ <= NOT \L0|CS.S3~q\;
\L0|ALT_INV_WideOr8~combout\ <= NOT \L0|WideOr8~combout\;
\L0|ALT_INV_WideOr8~0_combout\ <= NOT \L0|WideOr8~0_combout\;
\L0|ALT_INV_CS.S5~q\ <= NOT \L0|CS.S5~q\;
\L0|ALT_INV_WideOr9~combout\ <= NOT \L0|WideOr9~combout\;
\L0|ALT_INV_CS.S1~q\ <= NOT \L0|CS.S1~q\;
\L0|ALT_INV_CS.S0~q\ <= NOT \L0|CS.S0~q\;
\L0|ALT_INV_CS.S7~q\ <= NOT \L0|CS.S7~q\;
\L0|ALT_INV_CS.S2~q\ <= NOT \L0|CS.S2~q\;
\L0|ALT_INV_Selection~0_combout\ <= NOT \L0|Selection~0_combout\;
\L0|ALT_INV_CS.S6~q\ <= NOT \L0|CS.S6~q\;
\L0|ALT_INV_CS.S4~q\ <= NOT \L0|CS.S4~q\;
\L1|ALT_INV_Q\(4) <= NOT \L1|Q\(4);
\L1|ALT_INV_Q\(7) <= NOT \L1|Q\(7);
\L1|ALT_INV_Q\(5) <= NOT \L1|Q\(5);
\L4|ALT_INV_signalshift\(7) <= NOT \L4|signalshift\(7);
\L1|ALT_INV_Q\(6) <= NOT \L1|Q\(6);
\L5|ALT_INV_signalshift\(6) <= NOT \L5|signalshift\(6);
\L4|ALT_INV_signalshift\(6) <= NOT \L4|signalshift\(6);
\L1|ALT_INV_Q\(0) <= NOT \L1|Q\(0);
\L1|ALT_INV_Q\(3) <= NOT \L1|Q\(3);
\L4|ALT_INV_signalshift\(5) <= NOT \L4|signalshift\(5);
\L1|ALT_INV_Q\(1) <= NOT \L1|Q\(1);
\L4|ALT_INV_signalshift\(3) <= NOT \L4|signalshift\(3);
\L4|ALT_INV_signalshift\(1) <= NOT \L4|signalshift\(1);
\L1|ALT_INV_Q\(2) <= NOT \L1|Q\(2);
\L4|ALT_INV_signalshift\(4) <= NOT \L4|signalshift\(4);
\L4|ALT_INV_signalshift\(2) <= NOT \L4|signalshift\(2);
\L9|ALT_INV_F[6]~6_combout\ <= NOT \L9|F[6]~6_combout\;
\L7|ALT_INV_Q\(0) <= NOT \L7|Q\(0);
\L7|ALT_INV_Q\(3) <= NOT \L7|Q\(3);
\L7|ALT_INV_Q\(1) <= NOT \L7|Q\(1);
\L7|ALT_INV_Q\(2) <= NOT \L7|Q\(2);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L10|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L9|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X85_Y3_N48
\L0|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector7~0_combout\ = ( \L0|CS.S4~q\ & ( \L0|CS.S2~q\ & ( ((\SW[8]~input_o\ & !\SW[9]~input_o\)) # (\KEY[1]~input_o\) ) ) ) # ( !\L0|CS.S4~q\ & ( \L0|CS.S2~q\ & ( (\SW[8]~input_o\ & !\SW[9]~input_o\) ) ) ) # ( \L0|CS.S4~q\ & ( !\L0|CS.S2~q\ & ( 
-- \KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101000100010001000100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datae => \L0|ALT_INV_CS.S4~q\,
	dataf => \L0|ALT_INV_CS.S2~q\,
	combout => \L0|Selector7~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X85_Y3_N50
\L0|CS.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Selector7~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S4~q\);

-- Location: LABCELL_X85_Y3_N33
\L0|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector6~0_combout\ = ( \L0|CS.S3~q\ & ( ((!\SW[9]~input_o\ & (\L0|CS.S2~q\ & !\SW[8]~input_o\))) # (\KEY[1]~input_o\) ) ) # ( !\L0|CS.S3~q\ & ( (!\SW[9]~input_o\ & (\L0|CS.S2~q\ & !\SW[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000111011001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \L0|ALT_INV_CS.S2~q\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \L0|ALT_INV_CS.S3~q\,
	combout => \L0|Selector6~0_combout\);

-- Location: FF_X85_Y3_N53
\L0|CS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|Selector6~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S3~q\);

-- Location: LABCELL_X85_Y3_N30
\L0|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector9~0_combout\ = ( \L0|CS.S3~q\ & ( !\KEY[1]~input_o\ ) ) # ( !\L0|CS.S3~q\ & ( (!\KEY[1]~input_o\ & ((\L0|CS.S7~q\) # (\L0|CS.S4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \L0|ALT_INV_CS.S4~q\,
	datad => \L0|ALT_INV_CS.S7~q\,
	dataf => \L0|ALT_INV_CS.S3~q\,
	combout => \L0|Selector9~0_combout\);

-- Location: FF_X85_Y3_N32
\L0|CS.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Selector9~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S7~q\);

-- Location: LABCELL_X85_Y3_N18
\L0|NS.S6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|NS.S6~0_combout\ = ( \L0|CS.S2~q\ & ( (\SW[9]~input_o\ & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => \L0|ALT_INV_CS.S2~q\,
	combout => \L0|NS.S6~0_combout\);

-- Location: FF_X85_Y3_N20
\L0|CS.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|NS.S6~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S6~q\);

-- Location: LABCELL_X85_Y3_N3
\L0|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector4~0_combout\ = ( !\L0|CS.S6~q\ & ( (!\KEY[1]~input_o\) # ((!\L0|CS.S7~q\ & \L0|CS.S0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \L0|ALT_INV_CS.S7~q\,
	datad => \L0|ALT_INV_CS.S0~q\,
	dataf => \L0|ALT_INV_CS.S6~q\,
	combout => \L0|Selector4~0_combout\);

-- Location: FF_X85_Y3_N26
\L0|CS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L0|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S0~q\);

-- Location: LABCELL_X85_Y3_N27
\L0|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector5~0_combout\ = ( \L0|CS.S1~q\ & ( \L0|CS.S0~q\ & ( !\KEY[1]~input_o\ ) ) ) # ( \L0|CS.S1~q\ & ( !\L0|CS.S0~q\ & ( !\KEY[1]~input_o\ ) ) ) # ( !\L0|CS.S1~q\ & ( !\L0|CS.S0~q\ & ( !\KEY[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datae => \L0|ALT_INV_CS.S1~q\,
	dataf => \L0|ALT_INV_CS.S0~q\,
	combout => \L0|Selector5~0_combout\);

-- Location: FF_X85_Y3_N29
\L0|CS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S1~q\);

-- Location: LABCELL_X85_Y3_N15
\L0|NS.S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|NS.S2~0_combout\ = ( \KEY[1]~input_o\ & ( \L0|CS.S1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_CS.S1~q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \L0|NS.S2~0_combout\);

-- Location: FF_X85_Y3_N17
\L0|CS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|NS.S2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S2~q\);

-- Location: LABCELL_X85_Y3_N54
\L0|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|WideOr9~combout\ = ( \L0|CS.S7~q\ ) # ( !\L0|CS.S7~q\ & ( ((!\L0|CS.S0~q\) # (\L0|CS.S1~q\)) # (\L0|CS.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_CS.S2~q\,
	datac => \L0|ALT_INV_CS.S0~q\,
	datad => \L0|ALT_INV_CS.S1~q\,
	dataf => \L0|ALT_INV_CS.S7~q\,
	combout => \L0|WideOr9~combout\);

-- Location: LABCELL_X85_Y3_N12
\L0|CS.S5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|CS.S5~0_combout\ = ( \L0|CS.S2~q\ & ( ((\SW[9]~input_o\ & !\SW[8]~input_o\)) # (\L0|CS.S5~q\) ) ) # ( !\L0|CS.S2~q\ & ( \L0|CS.S5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \L0|ALT_INV_CS.S5~q\,
	dataf => \L0|ALT_INV_CS.S2~q\,
	combout => \L0|CS.S5~0_combout\);

-- Location: FF_X85_Y3_N14
\L0|CS.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|CS.S5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|CS.S5~q\);

-- Location: LABCELL_X85_Y3_N6
\L0|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|WideOr8~0_combout\ = ( !\L0|CS.S6~q\ & ( !\L0|CS.S5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_CS.S5~q\,
	dataf => \L0|ALT_INV_CS.S6~q\,
	combout => \L0|WideOr8~0_combout\);

-- Location: LABCELL_X85_Y3_N9
\L0|Selection[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selection\(1) = ( \L0|WideOr8~0_combout\ & ( (\L0|Selection\(1) & \L0|WideOr9~combout\) ) ) # ( !\L0|WideOr8~0_combout\ & ( (!\L0|WideOr9~combout\) # (\L0|Selection\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_Selection\(1),
	datad => \L0|ALT_INV_WideOr9~combout\,
	dataf => \L0|ALT_INV_WideOr8~0_combout\,
	combout => \L0|Selection\(1));

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X88_Y3_N47
\L4|signalshift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(2));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X85_Y3_N57
\L0|Selection~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selection~1_combout\ = ( !\L0|CS.S3~q\ & ( !\L0|CS.S4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_CS.S4~q\,
	dataf => \L0|ALT_INV_CS.S3~q\,
	combout => \L0|Selection~1_combout\);

-- Location: LABCELL_X85_Y3_N36
\L0|Enable_1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Enable_1~combout\ = ( \L0|Selection~1_combout\ & ( \L0|CS.S1~q\ ) ) # ( !\L0|Selection~1_combout\ & ( \L0|Enable_1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_Enable_1~combout\,
	datad => \L0|ALT_INV_CS.S1~q\,
	dataf => \L0|ALT_INV_Selection~1_combout\,
	combout => \L0|Enable_1~combout\);

-- Location: FF_X87_Y3_N2
\L1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(0));

-- Location: MLABCELL_X87_Y3_N0
\L2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~13_sumout\ = SUM(( \L1|Q\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \L2|Add0~14\ = CARRY(( \L1|Q\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datad => \L1|ALT_INV_Q\(0),
	cin => GND,
	sumout => \L2|Add0~13_sumout\,
	cout => \L2|Add0~14\);

-- Location: LABCELL_X85_Y3_N39
\L0|Selection~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selection~0_combout\ = ( \L0|CS.S6~q\ ) # ( !\L0|CS.S6~q\ & ( \L0|CS.S4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_CS.S4~q\,
	dataf => \L0|ALT_INV_CS.S6~q\,
	combout => \L0|Selection~0_combout\);

-- Location: LABCELL_X85_Y3_N0
\L0|Selection[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selection\(0) = ( \L0|Selection~0_combout\ & ( (!\L0|WideOr9~combout\) # (\L0|Selection\(0)) ) ) # ( !\L0|Selection~0_combout\ & ( (\L0|Selection\(0) & \L0|WideOr9~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_Selection\(0),
	datad => \L0|ALT_INV_WideOr9~combout\,
	dataf => \L0|ALT_INV_Selection~0_combout\,
	combout => \L0|Selection\(0));

-- Location: LABCELL_X88_Y3_N18
\L6|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[0]~0_combout\ = ( \L2|Add0~13_sumout\ & ( \L0|Selection\(0) & ( (!\L0|Selection\(1) & (((\SW[0]~input_o\) # (\L1|Q\(0))))) # (\L0|Selection\(1) & (\L4|signalshift\(2))) ) ) ) # ( !\L2|Add0~13_sumout\ & ( \L0|Selection\(0) & ( (!\L0|Selection\(1) & 
-- (((\SW[0]~input_o\) # (\L1|Q\(0))))) # (\L0|Selection\(1) & (\L4|signalshift\(2))) ) ) ) # ( \L2|Add0~13_sumout\ & ( !\L0|Selection\(0) & ( !\L0|Selection\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_Selection\(1),
	datab => \L4|ALT_INV_signalshift\(2),
	datac => \L1|ALT_INV_Q\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \L2|ALT_INV_Add0~13_sumout\,
	dataf => \L0|ALT_INV_Selection\(0),
	combout => \L6|m[0]~0_combout\);

-- Location: LABCELL_X85_Y3_N42
\L0|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|WideOr8~combout\ = ( \L0|CS.S7~q\ ) # ( !\L0|CS.S7~q\ & ( (\L0|CS.S5~q\) # (\L0|CS.S6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_CS.S6~q\,
	datad => \L0|ALT_INV_CS.S5~q\,
	dataf => \L0|ALT_INV_CS.S7~q\,
	combout => \L0|WideOr8~combout\);

-- Location: LABCELL_X85_Y3_N21
\L0|Enable_2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Enable_2~combout\ = ( \L0|WideOr8~combout\ & ( (\L0|Enable_2~combout\) # (\L0|Selection~1_combout\) ) ) # ( !\L0|WideOr8~combout\ & ( (!\L0|Selection~1_combout\ & \L0|Enable_2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_Selection~1_combout\,
	datad => \L0|ALT_INV_Enable_2~combout\,
	dataf => \L0|ALT_INV_WideOr8~combout\,
	combout => \L0|Enable_2~combout\);

-- Location: FF_X88_Y3_N20
\L8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(0));

-- Location: FF_X87_Y3_N5
\L1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(1));

-- Location: LABCELL_X88_Y3_N33
\L4|signalshift[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|signalshift[1]~feeder_combout\ = ( \SW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \L4|signalshift[1]~feeder_combout\);

-- Location: FF_X88_Y3_N34
\L4|signalshift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L4|signalshift[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(1));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X88_Y3_N0
\L4|signalshift[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|signalshift[3]~feeder_combout\ = ( \SW[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \L4|signalshift[3]~feeder_combout\);

-- Location: FF_X88_Y3_N2
\L4|signalshift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L4|signalshift[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(3));

-- Location: MLABCELL_X87_Y3_N3
\L2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~5_sumout\ = SUM(( \L1|Q\(1) ) + ( \SW[1]~input_o\ ) + ( \L2|Add0~14\ ))
-- \L2|Add0~6\ = CARRY(( \L1|Q\(1) ) + ( \SW[1]~input_o\ ) + ( \L2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \L1|ALT_INV_Q\(1),
	cin => \L2|Add0~14\,
	sumout => \L2|Add0~5_sumout\,
	cout => \L2|Add0~6\);

-- Location: MLABCELL_X87_Y3_N48
\L6|m[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[1]~18_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~5_sumout\)))) # (\L0|Selection\(0) & (((\SW[1]~input_o\)) # (\L1|Q\(1))))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & (\L4|signalshift\(1))) # (\L0|Selection\(0) 
-- & ((\L4|signalshift\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111101110111011101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Q\(1),
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \L4|ALT_INV_signalshift\(1),
	datad => \L4|ALT_INV_signalshift\(3),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~5_sumout\,
	combout => \L6|m[1]~18_combout\);

-- Location: FF_X87_Y3_N50
\L8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[1]~18_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(1));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X87_Y3_N11
\L1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(3));

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X85_Y3_N59
\L4|signalshift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(5));

-- Location: FF_X87_Y3_N8
\L1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(2));

-- Location: MLABCELL_X87_Y3_N6
\L2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~1_sumout\ = SUM(( \SW[2]~input_o\ ) + ( \L1|Q\(2) ) + ( \L2|Add0~6\ ))
-- \L2|Add0~2\ = CARRY(( \SW[2]~input_o\ ) + ( \L1|Q\(2) ) + ( \L2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|ALT_INV_Q\(2),
	datad => \ALT_INV_SW[2]~input_o\,
	cin => \L2|Add0~6\,
	sumout => \L2|Add0~1_sumout\,
	cout => \L2|Add0~2\);

-- Location: MLABCELL_X87_Y3_N9
\L2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~9_sumout\ = SUM(( \L1|Q\(3) ) + ( \SW[3]~input_o\ ) + ( \L2|Add0~2\ ))
-- \L2|Add0~10\ = CARRY(( \L1|Q\(3) ) + ( \SW[3]~input_o\ ) + ( \L2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \L1|ALT_INV_Q\(3),
	cin => \L2|Add0~2\,
	sumout => \L2|Add0~9_sumout\,
	cout => \L2|Add0~10\);

-- Location: MLABCELL_X87_Y3_N54
\L6|m[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[3]~14_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~9_sumout\)))) # (\L0|Selection\(0) & (((\L1|Q\(3))) # (\SW[3]~input_o\)))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & (\L4|signalshift\(3))) # (\L0|Selection\(0) 
-- & ((\L4|signalshift\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111101110111011101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \L1|ALT_INV_Q\(3),
	datac => \L4|ALT_INV_signalshift\(3),
	datad => \L4|ALT_INV_signalshift\(5),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~9_sumout\,
	combout => \L6|m[3]~14_combout\);

-- Location: FF_X87_Y3_N56
\L8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[3]~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(3));

-- Location: FF_X88_Y3_N29
\L4|signalshift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(4));

-- Location: LABCELL_X88_Y3_N48
\L6|m[2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[2]~22_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~1_sumout\)))) # (\L0|Selection\(0) & (((\L1|Q\(2))) # (\SW[2]~input_o\)))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & ((\L4|signalshift\(2)))) # 
-- (\L0|Selection\(0) & (\L4|signalshift\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100110011111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|ALT_INV_signalshift\(4),
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \L4|ALT_INV_signalshift\(2),
	datad => \L1|ALT_INV_Q\(2),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~1_sumout\,
	combout => \L6|m[2]~22_combout\);

-- Location: FF_X88_Y3_N50
\L8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[2]~22_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L8|Q\(2));

-- Location: LABCELL_X88_Y3_N39
\L10|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[0]~0_combout\ = ( \L8|Q\(2) & ( (!\L8|Q\(1) & (!\L8|Q\(0) $ (\L8|Q\(3)))) ) ) # ( !\L8|Q\(2) & ( (\L8|Q\(0) & (!\L8|Q\(1) $ (\L8|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datac => \L8|ALT_INV_Q\(1),
	datad => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[0]~0_combout\);

-- Location: LABCELL_X88_Y3_N6
\L10|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[1]~1_combout\ = ( \L8|Q\(2) & ( (!\L8|Q\(0) & ((\L8|Q\(3)) # (\L8|Q\(1)))) # (\L8|Q\(0) & (!\L8|Q\(1) $ (\L8|Q\(3)))) ) ) # ( !\L8|Q\(2) & ( (\L8|Q\(0) & (\L8|Q\(1) & \L8|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[1]~1_combout\);

-- Location: LABCELL_X88_Y3_N12
\L10|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[2]~2_combout\ = ( \L8|Q\(2) & ( (\L8|Q\(3) & ((!\L8|Q\(0)) # (\L8|Q\(1)))) ) ) # ( !\L8|Q\(2) & ( (!\L8|Q\(0) & (\L8|Q\(1) & !\L8|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[2]~2_combout\);

-- Location: LABCELL_X88_Y3_N15
\L10|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[3]~3_combout\ = ( \L8|Q\(2) & ( (!\L8|Q\(0) & (!\L8|Q\(1) & !\L8|Q\(3))) # (\L8|Q\(0) & (\L8|Q\(1))) ) ) # ( !\L8|Q\(2) & ( (!\L8|Q\(0) & (\L8|Q\(1) & \L8|Q\(3))) # (\L8|Q\(0) & (!\L8|Q\(1) & !\L8|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datac => \L8|ALT_INV_Q\(1),
	datad => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[3]~3_combout\);

-- Location: LABCELL_X88_Y3_N42
\L10|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[4]~4_combout\ = ( \L8|Q\(2) & ( (!\L8|Q\(3) & ((!\L8|Q\(1)) # (\L8|Q\(0)))) ) ) # ( !\L8|Q\(2) & ( (\L8|Q\(0) & ((!\L8|Q\(1)) # (!\L8|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[4]~4_combout\);

-- Location: LABCELL_X88_Y3_N36
\L10|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[5]~5_combout\ = ( \L8|Q\(2) & ( (\L8|Q\(0) & (!\L8|Q\(1) $ (!\L8|Q\(3)))) ) ) # ( !\L8|Q\(2) & ( (!\L8|Q\(3) & ((\L8|Q\(1)) # (\L8|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[5]~5_combout\);

-- Location: LABCELL_X88_Y3_N24
\L10|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L10|F[6]~6_combout\ = ( \L8|Q\(2) & ( (!\L8|Q\(0) & ((!\L8|Q\(3)) # (\L8|Q\(1)))) # (\L8|Q\(0) & ((!\L8|Q\(1)) # (\L8|Q\(3)))) ) ) # ( !\L8|Q\(2) & ( (\L8|Q\(3)) # (\L8|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111100111111001111110011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L8|ALT_INV_Q\(0),
	datab => \L8|ALT_INV_Q\(1),
	datac => \L8|ALT_INV_Q\(3),
	dataf => \L8|ALT_INV_Q\(2),
	combout => \L10|F[6]~6_combout\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X85_Y3_N47
\L4|signalshift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(6));

-- Location: FF_X87_Y3_N14
\L1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(4));

-- Location: MLABCELL_X87_Y3_N12
\L2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~29_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \L1|Q\(4) ) + ( \L2|Add0~10\ ))
-- \L2|Add0~30\ = CARRY(( \SW[4]~input_o\ ) + ( \L1|Q\(4) ) + ( \L2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|ALT_INV_Q\(4),
	datad => \ALT_INV_SW[4]~input_o\,
	cin => \L2|Add0~10\,
	sumout => \L2|Add0~29_sumout\,
	cout => \L2|Add0~30\);

-- Location: MLABCELL_X87_Y3_N24
\L6|m[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[4]~2_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~29_sumout\)))) # (\L0|Selection\(0) & (((\L1|Q\(4))) # (\SW[4]~input_o\)))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & ((\L4|signalshift\(4)))) # 
-- (\L0|Selection\(0) & (\L4|signalshift\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100110011111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|ALT_INV_signalshift\(6),
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \L4|ALT_INV_signalshift\(4),
	datad => \L1|ALT_INV_Q\(4),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~29_sumout\,
	combout => \L6|m[4]~2_combout\);

-- Location: FF_X87_Y3_N26
\L7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[4]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(0));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X88_Y3_N30
\L4|signalshift[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|signalshift[7]~feeder_combout\ = ( \SW[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \L4|signalshift[7]~feeder_combout\);

-- Location: FF_X88_Y3_N32
\L4|signalshift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L4|signalshift[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|signalshift\(7));

-- Location: FF_X87_Y3_N17
\L1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(5));

-- Location: MLABCELL_X87_Y3_N15
\L2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~21_sumout\ = SUM(( \SW[5]~input_o\ ) + ( \L1|Q\(5) ) + ( \L2|Add0~30\ ))
-- \L2|Add0~22\ = CARRY(( \SW[5]~input_o\ ) + ( \L1|Q\(5) ) + ( \L2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_Q\(5),
	datad => \ALT_INV_SW[5]~input_o\,
	cin => \L2|Add0~30\,
	sumout => \L2|Add0~21_sumout\,
	cout => \L2|Add0~22\);

-- Location: MLABCELL_X87_Y3_N42
\L6|m[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[5]~6_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~21_sumout\)))) # (\L0|Selection\(0) & (((\L1|Q\(5))) # (\SW[5]~input_o\)))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & ((\L4|signalshift\(5)))) # 
-- (\L0|Selection\(0) & (\L4|signalshift\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100110011111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|ALT_INV_signalshift\(7),
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \L4|ALT_INV_signalshift\(5),
	datad => \L1|ALT_INV_Q\(5),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~21_sumout\,
	combout => \L6|m[5]~6_combout\);

-- Location: FF_X87_Y3_N44
\L7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[5]~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(1));

-- Location: FF_X87_Y3_N20
\L1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(6));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X88_Y3_N54
\L5|signalshift[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L5|signalshift[6]~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \L5|signalshift[6]~feeder_combout\);

-- Location: FF_X88_Y3_N55
\L5|signalshift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L5|signalshift[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|signalshift\(6));

-- Location: MLABCELL_X87_Y3_N18
\L2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~17_sumout\ = SUM(( \SW[6]~input_o\ ) + ( \L1|Q\(6) ) + ( \L2|Add0~22\ ))
-- \L2|Add0~18\ = CARRY(( \SW[6]~input_o\ ) + ( \L1|Q\(6) ) + ( \L2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|ALT_INV_Q\(6),
	datad => \ALT_INV_SW[6]~input_o\,
	cin => \L2|Add0~22\,
	sumout => \L2|Add0~17_sumout\,
	cout => \L2|Add0~18\);

-- Location: MLABCELL_X87_Y3_N36
\L6|m[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[6]~10_combout\ = ( !\L0|Selection\(1) & ( ((!\L0|Selection\(0) & (((\L2|Add0~17_sumout\)))) # (\L0|Selection\(0) & (((\SW[6]~input_o\)) # (\L1|Q\(6))))) ) ) # ( \L0|Selection\(1) & ( (((!\L0|Selection\(0) & (\L4|signalshift\(6))) # 
-- (\L0|Selection\(0) & ((\L5|signalshift\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111101110111011101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|ALT_INV_Q\(6),
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \L4|ALT_INV_signalshift\(6),
	datad => \L5|ALT_INV_signalshift\(6),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	datag => \L2|ALT_INV_Add0~17_sumout\,
	combout => \L6|m[6]~10_combout\);

-- Location: FF_X87_Y3_N38
\L7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[6]~10_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(2));

-- Location: FF_X87_Y3_N23
\L1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \L0|Enable_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Q\(7));

-- Location: MLABCELL_X87_Y3_N21
\L2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Add0~25_sumout\ = SUM(( \L1|Q\(7) ) + ( \SW[7]~input_o\ ) + ( \L2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datad => \L1|ALT_INV_Q\(7),
	cin => \L2|Add0~18\,
	sumout => \L2|Add0~25_sumout\);

-- Location: MLABCELL_X87_Y3_N30
\L6|m[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L6|m[7]~1_combout\ = ( !\L0|Selection\(1) & ( \L0|Selection\(0) & ( (\L1|Q\(7)) # (\SW[7]~input_o\) ) ) ) # ( \L0|Selection\(1) & ( !\L0|Selection\(0) & ( \L4|signalshift\(7) ) ) ) # ( !\L0|Selection\(1) & ( !\L0|Selection\(0) & ( \L2|Add0~25_sumout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \L4|ALT_INV_signalshift\(7),
	datac => \L2|ALT_INV_Add0~25_sumout\,
	datad => \L1|ALT_INV_Q\(7),
	datae => \L0|ALT_INV_Selection\(1),
	dataf => \L0|ALT_INV_Selection\(0),
	combout => \L6|m[7]~1_combout\);

-- Location: FF_X87_Y3_N32
\L7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L6|m[7]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \L0|Enable_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L7|Q\(3));

-- Location: LABCELL_X88_Y4_N51
\L9|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[0]~0_combout\ = ( \L7|Q\(2) & ( \L7|Q\(3) & ( (\L7|Q\(0) & !\L7|Q\(1)) ) ) ) # ( !\L7|Q\(2) & ( \L7|Q\(3) & ( (\L7|Q\(0) & \L7|Q\(1)) ) ) ) # ( \L7|Q\(2) & ( !\L7|Q\(3) & ( (!\L7|Q\(0) & !\L7|Q\(1)) ) ) ) # ( !\L7|Q\(2) & ( !\L7|Q\(3) & ( (\L7|Q\(0) 
-- & !\L7|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(0),
	datac => \L7|ALT_INV_Q\(1),
	datae => \L7|ALT_INV_Q\(2),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[0]~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\L9|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[1]~1_combout\ = ( \L7|Q\(0) & ( \L7|Q\(3) & ( \L7|Q\(1) ) ) ) # ( !\L7|Q\(0) & ( \L7|Q\(3) & ( \L7|Q\(2) ) ) ) # ( \L7|Q\(0) & ( !\L7|Q\(3) & ( (!\L7|Q\(1) & \L7|Q\(2)) ) ) ) # ( !\L7|Q\(0) & ( !\L7|Q\(3) & ( (\L7|Q\(1) & \L7|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001100110000000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(1),
	datad => \L7|ALT_INV_Q\(2),
	datae => \L7|ALT_INV_Q\(0),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[1]~1_combout\);

-- Location: LABCELL_X88_Y4_N15
\L9|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[2]~2_combout\ = ( \L7|Q\(2) & ( \L7|Q\(3) & ( (!\L7|Q\(0)) # (\L7|Q\(1)) ) ) ) # ( !\L7|Q\(2) & ( !\L7|Q\(3) & ( (!\L7|Q\(0) & \L7|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(0),
	datac => \L7|ALT_INV_Q\(1),
	datae => \L7|ALT_INV_Q\(2),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[2]~2_combout\);

-- Location: LABCELL_X88_Y4_N30
\L9|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[3]~3_combout\ = ( \L7|Q\(0) & ( \L7|Q\(3) & ( (\L7|Q\(1) & \L7|Q\(2)) ) ) ) # ( !\L7|Q\(0) & ( \L7|Q\(3) & ( (\L7|Q\(1) & !\L7|Q\(2)) ) ) ) # ( \L7|Q\(0) & ( !\L7|Q\(3) & ( !\L7|Q\(1) $ (\L7|Q\(2)) ) ) ) # ( !\L7|Q\(0) & ( !\L7|Q\(3) & ( (!\L7|Q\(1) 
-- & \L7|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000011001100110011000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(1),
	datad => \L7|ALT_INV_Q\(2),
	datae => \L7|ALT_INV_Q\(0),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[3]~3_combout\);

-- Location: LABCELL_X88_Y4_N39
\L9|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[4]~4_combout\ = ( !\L7|Q\(2) & ( \L7|Q\(3) & ( (\L7|Q\(0) & !\L7|Q\(1)) ) ) ) # ( \L7|Q\(2) & ( !\L7|Q\(3) & ( (!\L7|Q\(1)) # (\L7|Q\(0)) ) ) ) # ( !\L7|Q\(2) & ( !\L7|Q\(3) & ( \L7|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(0),
	datac => \L7|ALT_INV_Q\(1),
	datae => \L7|ALT_INV_Q\(2),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[4]~4_combout\);

-- Location: LABCELL_X88_Y4_N42
\L9|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[5]~5_combout\ = ( \L7|Q\(0) & ( \L7|Q\(3) & ( (!\L7|Q\(1) & \L7|Q\(2)) ) ) ) # ( \L7|Q\(0) & ( !\L7|Q\(3) & ( (!\L7|Q\(2)) # (\L7|Q\(1)) ) ) ) # ( !\L7|Q\(0) & ( !\L7|Q\(3) & ( (\L7|Q\(1) & !\L7|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111110011001100000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(1),
	datad => \L7|ALT_INV_Q\(2),
	datae => \L7|ALT_INV_Q\(0),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[5]~5_combout\);

-- Location: LABCELL_X88_Y4_N3
\L9|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L9|F[6]~6_combout\ = ( \L7|Q\(2) & ( \L7|Q\(3) & ( (\L7|Q\(1)) # (\L7|Q\(0)) ) ) ) # ( !\L7|Q\(2) & ( \L7|Q\(3) ) ) # ( \L7|Q\(2) & ( !\L7|Q\(3) & ( (!\L7|Q\(0)) # (!\L7|Q\(1)) ) ) ) # ( !\L7|Q\(2) & ( !\L7|Q\(3) & ( \L7|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111001111110011111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L7|ALT_INV_Q\(0),
	datac => \L7|ALT_INV_Q\(1),
	datae => \L7|ALT_INV_Q\(2),
	dataf => \L7|ALT_INV_Q\(3),
	combout => \L9|F[6]~6_combout\);

-- Location: MLABCELL_X25_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


