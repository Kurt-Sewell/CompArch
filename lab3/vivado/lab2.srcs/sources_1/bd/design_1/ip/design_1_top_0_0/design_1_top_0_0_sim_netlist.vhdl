-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr 15 19:36:35 2025
-- Host        : CEAT-ENDV350-12L running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_top_0_0 -prefix
--               design_1_top_0_0_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
end design_1_top_0_0_MemControl;

architecture STRUCTURE of design_1_top_0_0_MemControl is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair112";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
  Done <= \<const0>\;
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \PCSrc1__6\ : in STD_LOGIC;
    jalrTarget : in STD_LOGIC_VECTOR ( 27 downto 0 );
    PCPlus4F : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end design_1_top_0_0_adder;

architecture STRUCTURE of design_1_top_0_0_adder is
  signal PCTargetE : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(0),
      I2 => PCF(0),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(0),
      O => D(0)
    );
\q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(10),
      I2 => PCPlus4F(7),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(10),
      O => D(10)
    );
\q[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(11),
      I2 => PCPlus4F(8),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(11),
      O => D(11)
    );
\q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(12),
      I2 => PCPlus4F(9),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(12),
      O => D(12)
    );
\q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(13),
      I2 => PCPlus4F(10),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(13),
      O => D(13)
    );
\q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(14),
      I2 => PCPlus4F(11),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(14),
      O => D(14)
    );
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(15),
      I2 => PCPlus4F(12),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(15),
      O => D(15)
    );
\q[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(16),
      I2 => PCPlus4F(13),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(16),
      O => D(16)
    );
\q[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(17),
      I2 => PCPlus4F(14),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(17),
      O => D(17)
    );
\q[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(18),
      I2 => PCPlus4F(15),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(18),
      O => D(18)
    );
\q[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(19),
      I2 => PCPlus4F(16),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(19),
      O => D(19)
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(1),
      I2 => PCF(1),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(1),
      O => D(1)
    );
\q[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(20),
      I2 => PCPlus4F(17),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(20),
      O => D(20)
    );
\q[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(21),
      I2 => PCPlus4F(18),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(21),
      O => D(21)
    );
\q[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(22),
      I2 => PCPlus4F(19),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(22),
      O => D(22)
    );
\q[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(23),
      I2 => PCPlus4F(20),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(23),
      O => D(23)
    );
\q[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(24),
      I2 => PCPlus4F(21),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(24),
      O => D(24)
    );
\q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(25),
      I2 => PCPlus4F(22),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(25),
      O => D(25)
    );
\q[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(26),
      I2 => PCPlus4F(23),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(26),
      O => D(26)
    );
\q[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(27),
      I2 => PCPlus4F(24),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(27),
      O => D(27)
    );
\q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8D008D"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(2),
      I2 => PCF(2),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(2),
      O => D(2)
    );
\q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(3),
      I2 => PCPlus4F(0),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(3),
      O => D(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(4),
      I2 => PCPlus4F(1),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(4),
      O => D(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(5),
      I2 => PCPlus4F(2),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(5),
      O => D(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(6),
      I2 => PCPlus4F(3),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(6),
      O => D(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(7),
      I2 => PCPlus4F(4),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(7),
      O => D(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(8),
      I2 => PCPlus4F(5),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(8),
      O => D(8)
    );
\q[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(9),
      I2 => PCPlus4F(6),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(9),
      O => D(9)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => PCTargetE(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => PCTargetE(7 downto 4),
      S(3 downto 0) => \q_reg[7]\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => PCTargetE(11 downto 8),
      S(3 downto 0) => \q_reg[11]\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => PCTargetE(15 downto 12),
      S(3 downto 0) => \q_reg[15]\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => PCTargetE(19 downto 16),
      S(3 downto 0) => \q_reg[19]\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => PCTargetE(23 downto 20),
      S(3 downto 0) => \q_reg[23]\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => PCTargetE(27 downto 24),
      S(3 downto 0) => \q_reg[27]\(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(30 downto 28),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => \q_reg[31]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder_0 is
  port (
    PCPlus4F : out STD_LOGIC_VECTOR ( 28 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder_0 : entity is "adder";
end design_1_top_0_0_adder_0;

architecture STRUCTURE of design_1_top_0_0_adder_0 is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => PCPlus4F(3 downto 0),
      S(3 downto 0) => Q(4 downto 1)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => PCPlus4F(7 downto 4),
      S(3 downto 0) => Q(8 downto 5)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => PCPlus4F(11 downto 8),
      S(3 downto 0) => Q(12 downto 9)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => PCPlus4F(15 downto 12),
      S(3 downto 0) => Q(16 downto 13)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => PCPlus4F(19 downto 16),
      S(3 downto 0) => Q(20 downto 17)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => PCPlus4F(23 downto 20),
      S(3 downto 0) => Q(24 downto 21)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => PCPlus4F(27 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => PCPlus4F(28),
      S(3 downto 1) => B"000",
      S(0) => Q(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_alu is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[149]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[153]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[157]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[161]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[165]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[169]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[173]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[176]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[105]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[105]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 60 downto 0 );
    \q_reg[108]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[108]_i_8_0\ : in STD_LOGIC
  );
end design_1_top_0_0_alu;

architecture STRUCTURE of design_1_top_0_0_alu is
  signal \result0_inferred__6/i__carry__0_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__0_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__1_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry__2_n_3\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_0\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \result0_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_result0_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result0_inferred__6/i__carry__2\ : label is 11;
begin
\q[108]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(33),
      I1 => Q(2),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[149]\(3)
    );
\q[108]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(32),
      I1 => Q(1),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[149]\(2)
    );
\q[108]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(31),
      I1 => Q(0),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[149]\(1)
    );
\q[108]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(30),
      I1 => \q_reg[108]_i_8\(0),
      O => \q_reg[149]\(0)
    );
\q[112]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(37),
      I1 => Q(6),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[153]\(3)
    );
\q[112]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(36),
      I1 => Q(5),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[153]\(2)
    );
\q[112]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(35),
      I1 => Q(4),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[153]\(1)
    );
\q[112]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(34),
      I1 => Q(3),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[153]\(0)
    );
\q[116]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(41),
      I1 => Q(10),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[157]\(3)
    );
\q[116]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(40),
      I1 => Q(9),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[157]\(2)
    );
\q[116]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(39),
      I1 => Q(8),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[157]\(1)
    );
\q[116]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(38),
      I1 => Q(7),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[157]\(0)
    );
\q[120]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(45),
      I1 => Q(14),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[161]\(3)
    );
\q[120]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(44),
      I1 => Q(13),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[161]\(2)
    );
\q[120]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(43),
      I1 => Q(12),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[161]\(1)
    );
\q[120]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(42),
      I1 => Q(11),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[161]\(0)
    );
\q[124]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(49),
      I1 => Q(18),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[165]\(3)
    );
\q[124]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(48),
      I1 => Q(17),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[165]\(2)
    );
\q[124]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(47),
      I1 => Q(16),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[165]\(1)
    );
\q[124]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(46),
      I1 => Q(15),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[165]\(0)
    );
\q[128]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(53),
      I1 => Q(22),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[169]\(3)
    );
\q[128]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(52),
      I1 => Q(21),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[169]\(2)
    );
\q[128]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(51),
      I1 => Q(20),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[169]\(1)
    );
\q[128]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(50),
      I1 => Q(19),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[169]\(0)
    );
\q[132]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(57),
      I1 => Q(26),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[173]\(3)
    );
\q[132]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(56),
      I1 => Q(25),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[173]\(2)
    );
\q[132]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(55),
      I1 => Q(24),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[173]\(1)
    );
\q[132]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(54),
      I1 => Q(23),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[173]\(0)
    );
\q[136]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(60),
      I1 => Q(29),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[176]\(2)
    );
\q[136]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(59),
      I1 => Q(28),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[176]\(1)
    );
\q[136]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => Q(58),
      I1 => Q(27),
      I2 => \q_reg[108]_i_8_0\,
      I3 => \q_reg[108]_i_8\(0),
      O => \q_reg[176]\(0)
    );
\result0_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result0_inferred__6/i__carry_n_0\,
      CO(2) => \result0_inferred__6/i__carry_n_1\,
      CO(1) => \result0_inferred__6/i__carry_n_2\,
      CO(0) => \result0_inferred__6/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\result0_inferred__6/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry_n_0\,
      CO(3) => \result0_inferred__6/i__carry__0_n_0\,
      CO(2) => \result0_inferred__6/i__carry__0_n_1\,
      CO(1) => \result0_inferred__6/i__carry__0_n_2\,
      CO(0) => \result0_inferred__6/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result0_inferred__6/i__carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result0_inferred__6/i__carry__1_1\(3 downto 0)
    );
\result0_inferred__6/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry__0_n_0\,
      CO(3) => \result0_inferred__6/i__carry__1_n_0\,
      CO(2) => \result0_inferred__6/i__carry__1_n_1\,
      CO(1) => \result0_inferred__6/i__carry__1_n_2\,
      CO(0) => \result0_inferred__6/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result0_inferred__6/i__carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result0_inferred__6/i__carry__2_1\(3 downto 0)
    );
\result0_inferred__6/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result0_inferred__6/i__carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \result0_inferred__6/i__carry__2_n_1\,
      CO(1) => \result0_inferred__6/i__carry__2_n_2\,
      CO(0) => \result0_inferred__6/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q_reg[105]\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q_reg[105]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_top_0_0_flopenr;

architecture STRUCTURE of design_1_top_0_0_flopenr is
  signal \^pcf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[32]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[33]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[34]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q[35]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q[36]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q[37]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q[38]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[39]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[40]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[41]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[42]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[43]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[44]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[45]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[46]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[47]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[48]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[49]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[50]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[51]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[52]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[53]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[54]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[55]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[56]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[57]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[58]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[59]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[60]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[61]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[62]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[63]_i_1\ : label is "soft_lutpair37";
begin
  PCF(31 downto 0) <= \^pcf\(31 downto 0);
\q[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(0),
      I1 => PCSrcE(0),
      O => D(0)
    );
\q[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(1),
      I1 => PCSrcE(0),
      O => D(1)
    );
\q[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(2),
      I1 => PCSrcE(0),
      O => D(2)
    );
\q[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(3),
      I1 => PCSrcE(0),
      O => D(3)
    );
\q[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(4),
      I1 => PCSrcE(0),
      O => D(4)
    );
\q[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(5),
      I1 => PCSrcE(0),
      O => D(5)
    );
\q[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(6),
      I1 => PCSrcE(0),
      O => D(6)
    );
\q[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(7),
      I1 => PCSrcE(0),
      O => D(7)
    );
\q[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(8),
      I1 => PCSrcE(0),
      O => D(8)
    );
\q[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(9),
      I1 => PCSrcE(0),
      O => D(9)
    );
\q[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(10),
      I1 => PCSrcE(0),
      O => D(10)
    );
\q[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(11),
      I1 => PCSrcE(0),
      O => D(11)
    );
\q[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(12),
      I1 => PCSrcE(0),
      O => D(12)
    );
\q[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(13),
      I1 => PCSrcE(0),
      O => D(13)
    );
\q[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(14),
      I1 => PCSrcE(0),
      O => D(14)
    );
\q[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(15),
      I1 => PCSrcE(0),
      O => D(15)
    );
\q[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(16),
      I1 => PCSrcE(0),
      O => D(16)
    );
\q[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(17),
      I1 => PCSrcE(0),
      O => D(17)
    );
\q[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(18),
      I1 => PCSrcE(0),
      O => D(18)
    );
\q[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(19),
      I1 => PCSrcE(0),
      O => D(19)
    );
\q[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(20),
      I1 => PCSrcE(0),
      O => D(20)
    );
\q[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(21),
      I1 => PCSrcE(0),
      O => D(21)
    );
\q[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(22),
      I1 => PCSrcE(0),
      O => D(22)
    );
\q[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(23),
      I1 => PCSrcE(0),
      O => D(23)
    );
\q[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(24),
      I1 => PCSrcE(0),
      O => D(24)
    );
\q[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(25),
      I1 => PCSrcE(0),
      O => D(25)
    );
\q[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(26),
      I1 => PCSrcE(0),
      O => D(26)
    );
\q[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(27),
      I1 => PCSrcE(0),
      O => D(27)
    );
\q[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(28),
      I1 => PCSrcE(0),
      O => D(28)
    );
\q[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(29),
      I1 => PCSrcE(0),
      O => D(29)
    );
\q[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(30),
      I1 => PCSrcE(0),
      O => D(30)
    );
\q[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcf\(31),
      I1 => PCSrcE(0),
      O => D(31)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(0),
      Q => \^pcf\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(10),
      Q => \^pcf\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(11),
      Q => \^pcf\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(12),
      Q => \^pcf\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(13),
      Q => \^pcf\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(14),
      Q => \^pcf\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(15),
      Q => \^pcf\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(16),
      Q => \^pcf\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(17),
      Q => \^pcf\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(18),
      Q => \^pcf\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(19),
      Q => \^pcf\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(1),
      Q => \^pcf\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(20),
      Q => \^pcf\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(21),
      Q => \^pcf\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(22),
      Q => \^pcf\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(23),
      Q => \^pcf\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(24),
      Q => \^pcf\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(25),
      Q => \^pcf\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(26),
      Q => \^pcf\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(27),
      Q => \^pcf\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(28),
      Q => \^pcf\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(29),
      Q => \^pcf\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(2),
      Q => \^pcf\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(30),
      Q => \^pcf\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(31),
      Q => \^pcf\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(3),
      Q => \^pcf\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(4),
      Q => \^pcf\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(5),
      Q => \^pcf\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(6),
      Q => \^pcf\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(7),
      Q => \^pcf\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(8),
      Q => \^pcf\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(9),
      Q => \^pcf\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenrc is
  port (
    D : out STD_LOGIC_VECTOR ( 100 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \q_reg[70]_0\ : out STD_LOGIC;
    \q_reg[70]_1\ : out STD_LOGIC;
    \q_reg[70]_2\ : out STD_LOGIC;
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[11]_rep__1\ : in STD_LOGIC;
    FlushE : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[95]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_top_0_0_flopenrc;

architecture STRUCTURE of design_1_top_0_0_flopenrc is
  signal ImmSrcD : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PCD : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal RdD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c/ALUOpD\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal funct3D : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal funct7b5D : STD_LOGIC;
  signal opD : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \q[11]_i_2_n_0\ : STD_LOGIC;
  signal \q[12]_i_2_n_0\ : STD_LOGIC;
  signal \q[13]_i_2_n_0\ : STD_LOGIC;
  signal \q[14]_i_2_n_0\ : STD_LOGIC;
  signal \q[35]_i_2_n_0\ : STD_LOGIC;
  signal \q[39]_i_2_n_0\ : STD_LOGIC;
  signal \q[46]_i_2_n_0\ : STD_LOGIC;
  signal \q[54]_i_3_n_0\ : STD_LOGIC;
  signal \q_reg_n_0_[89]\ : STD_LOGIC;
  signal \q_reg_n_0_[90]\ : STD_LOGIC;
  signal \q_reg_n_0_[91]\ : STD_LOGIC;
  signal \q_reg_n_0_[92]\ : STD_LOGIC;
  signal \q_reg_n_0_[93]\ : STD_LOGIC;
  signal \q_reg_n_0_[95]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[0]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[100]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[101]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[102]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[103]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[104]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[105]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[106]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[107]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[108]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[109]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[10]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \q[110]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[111]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[112]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[113]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[11]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[12]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[146]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[147]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[148]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[149]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[14]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[150]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[151]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[152]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[153]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[154]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[155]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[156]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[157]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[158]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[159]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[15]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[160]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[161]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[162]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[163]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[164]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[165]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[166]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[167]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[168]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[169]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[16]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[170]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[171]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[172]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[173]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[174]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[175]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[176]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[177]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[17]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q[18]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[1]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[2]_i_1__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[39]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[3]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[40]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q[41]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[42]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[43]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[44]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[46]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[46]_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[4]_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \q[54]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[54]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[5]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[66]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[67]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[68]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[69]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[6]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[70]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[71]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[7]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[82]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[83]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[84]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[85]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[86]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[87]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[88]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[89]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[8]_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \q[90]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[91]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[92]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[93]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[94]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[95]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[96]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[97]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[98]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[99]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[9]_i_1__0\ : label is "soft_lutpair84";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => opD(1),
      I1 => opD(4),
      I2 => opD(6),
      I3 => PCSrcE(0),
      I4 => \q_reg[11]_rep__1\,
      O => p_0_in(0)
    );
\q[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(18),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(55)
    );
\q[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(19),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(56)
    );
\q[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(20),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(57)
    );
\q[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(21),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(58)
    );
\q[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(22),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(59)
    );
\q[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(23),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(60)
    );
\q[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(24),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(61)
    );
\q[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(25),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(62)
    );
\q[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(26),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(63)
    );
\q[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(27),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(64)
    );
\q[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(2),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(10)
    );
\q[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(28),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(65)
    );
\q[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(29),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(66)
    );
\q[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(30),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(67)
    );
\q[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(31),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(68)
    );
\q[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => opD(6),
      I1 => \q[11]_i_2_n_0\,
      I2 => opD(5),
      I3 => opD(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => p_0_in(11)
    );
\q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => opD(2),
      I1 => opD(4),
      O => \q[11]_i_2_n_0\
    );
\q[11]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => opD(6),
      I1 => \q[11]_i_2_n_0\,
      I2 => opD(5),
      I3 => opD(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => \q_reg[70]_0\
    );
\q[11]_rep_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => opD(6),
      I1 => \q[11]_i_2_n_0\,
      I2 => opD(5),
      I3 => opD(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => \q_reg[70]_1\
    );
\q[11]_rep_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => opD(6),
      I1 => \q[11]_i_2_n_0\,
      I2 => opD(5),
      I3 => opD(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => \q_reg[70]_2\
    );
\q[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F022"
    )
        port map (
      I0 => opD(6),
      I1 => opD(2),
      I2 => \q[12]_i_2_n_0\,
      I3 => \c/ALUOpD\(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => p_0_in(12)
    );
\q[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05F0F0F8"
    )
        port map (
      I0 => funct7b5D,
      I1 => opD(5),
      I2 => funct3D(1),
      I3 => funct3D(2),
      I4 => funct3D(0),
      O => \q[12]_i_2_n_0\
    );
\q[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000800080008"
    )
        port map (
      I0 => \q[13]_i_2_n_0\,
      I1 => \c/ALUOpD\(1),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => funct3D(1),
      I5 => funct3D(2),
      O => p_0_in(13)
    );
\q[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => funct3D(1),
      I1 => funct3D(0),
      I2 => funct3D(2),
      I3 => funct7b5D,
      O => \q[13]_i_2_n_0\
    );
\q[146]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(0),
      O => D(69)
    );
\q[147]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(1),
      O => D(70)
    );
\q[148]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(2),
      O => D(71)
    );
\q[149]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(3),
      O => D(72)
    );
\q[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000110000000000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(5),
      I3 => opD(4),
      I4 => opD(2),
      I5 => \q[14]_i_2_n_0\,
      O => p_0_in(14)
    );
\q[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"037C"
    )
        port map (
      I0 => funct7b5D,
      I1 => funct3D(0),
      I2 => funct3D(2),
      I3 => funct3D(1),
      O => \q[14]_i_2_n_0\
    );
\q[150]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(4),
      O => D(73)
    );
\q[151]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(5),
      O => D(74)
    );
\q[152]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(6),
      O => D(75)
    );
\q[153]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(7),
      O => D(76)
    );
\q[154]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(8),
      O => D(77)
    );
\q[155]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(9),
      O => D(78)
    );
\q[156]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(10),
      O => D(79)
    );
\q[157]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(11),
      O => D(80)
    );
\q[158]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(12),
      O => D(81)
    );
\q[159]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(13),
      O => D(82)
    );
\q[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C080000000000"
    )
        port map (
      I0 => funct7b5D,
      I1 => \c/ALUOpD\(1),
      I2 => FlushE,
      I3 => funct3D(2),
      I4 => funct3D(1),
      I5 => funct3D(0),
      O => p_0_in(15)
    );
\q[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => opD(5),
      I1 => opD(4),
      I2 => opD(2),
      O => \c/ALUOpD\(1)
    );
\q[160]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(14),
      O => D(83)
    );
\q[161]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(15),
      O => D(84)
    );
\q[162]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(16),
      O => D(85)
    );
\q[163]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(17),
      O => D(86)
    );
\q[164]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(18),
      O => D(87)
    );
\q[165]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(19),
      O => D(88)
    );
\q[166]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(20),
      O => D(89)
    );
\q[167]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(21),
      O => D(90)
    );
\q[168]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(22),
      O => D(91)
    );
\q[169]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(23),
      O => D(92)
    );
\q[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(6),
      I3 => opD(2),
      O => p_0_in(16)
    );
\q[170]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(24),
      O => D(93)
    );
\q[171]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(25),
      O => D(94)
    );
\q[172]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(26),
      O => D(95)
    );
\q[173]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(27),
      O => D(96)
    );
\q[174]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(28),
      O => D(97)
    );
\q[175]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(29),
      O => D(98)
    );
\q[176]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(30),
      O => D(99)
    );
\q[177]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(5),
      I4 => PCD(31),
      O => D(100)
    );
\q[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(6),
      I3 => opD(2),
      O => p_0_in(17)
    );
\q[18]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => opD(4),
      I1 => opD(5),
      I2 => opD(6),
      I3 => PCSrcE(0),
      I4 => \q_reg[11]_rep__1\,
      O => p_0_in(18)
    );
\q[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009100"
    )
        port map (
      I0 => opD(5),
      I1 => opD(4),
      I2 => opD(2),
      I3 => opD(1),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => p_0_in(19)
    );
\q[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(0),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(1)
    );
\q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(1),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(2)
    );
\q[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400000000000C"
    )
        port map (
      I0 => opD(3),
      I1 => \q[35]_i_2_n_0\,
      I2 => \q_reg[11]_rep__1\,
      I3 => PCSrcE(0),
      I4 => opD(2),
      I5 => opD(6),
      O => D(0)
    );
\q[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => RdD(0),
      I1 => opD(3),
      I2 => opD(4),
      I3 => opD(5),
      I4 => opD(6),
      I5 => \^q\(5),
      O => \q[35]_i_2_n_0\
    );
\q[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \^q\(6),
      I1 => RdD(1),
      I2 => \q_reg[11]_rep__1\,
      I3 => PCSrcE(0),
      I4 => ImmSrcD(2),
      I5 => \q[39]_i_2_n_0\,
      O => D(1)
    );
\q[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \^q\(7),
      I1 => RdD(2),
      I2 => \q_reg[11]_rep__1\,
      I3 => PCSrcE(0),
      I4 => ImmSrcD(2),
      I5 => \q[39]_i_2_n_0\,
      O => D(2)
    );
\q[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \^q\(8),
      I1 => RdD(3),
      I2 => \q_reg[11]_rep__1\,
      I3 => PCSrcE(0),
      I4 => ImmSrcD(2),
      I5 => \q[39]_i_2_n_0\,
      O => D(3)
    );
\q[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \^q\(9),
      I1 => RdD(4),
      I2 => \q_reg[11]_rep__1\,
      I3 => PCSrcE(0),
      I4 => ImmSrcD(2),
      I5 => \q[39]_i_2_n_0\,
      O => D(4)
    );
\q[39]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEBB8B"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(5),
      I3 => opD(4),
      I4 => opD(3),
      O => \q[39]_i_2_n_0\
    );
\q[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(2),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(3)
    );
\q[40]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[89]\,
      O => D(5)
    );
\q[41]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[90]\,
      O => D(6)
    );
\q[42]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[91]\,
      O => D(7)
    );
\q[43]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[92]\,
      O => D(8)
    );
\q[44]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[93]\,
      O => D(9)
    );
\q[45]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => funct7b5D,
      O => D(10)
    );
\q[46]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => \q_reg[11]_rep__1\,
      I1 => PCSrcE(0),
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q[46]_i_2_n_0\,
      O => D(11)
    );
\q[46]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => RdD(0),
      I2 => ImmSrcD(1),
      I3 => ImmSrcD(0),
      I4 => \^q\(5),
      O => \q[46]_i_2_n_0\
    );
\q[46]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => opD(3),
      I1 => opD(2),
      I2 => opD(6),
      O => ImmSrcD(1)
    );
\q[46]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => opD(3),
      I1 => opD(4),
      I2 => opD(5),
      I3 => opD(6),
      O => ImmSrcD(0)
    );
\q[47]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => funct3D(0),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(12)
    );
\q[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => funct3D(1),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(13)
    );
\q[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => funct3D(2),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(14)
    );
\q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(3),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(4)
    );
\q[50]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => \^q\(0),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(15)
    );
\q[51]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => \^q\(1),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(16)
    );
\q[52]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => \^q\(2),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(17)
    );
\q[53]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => \^q\(3),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(18)
    );
\q[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B000A0008000A"
    )
        port map (
      I0 => \^q\(4),
      I1 => ImmSrcD(2),
      I2 => PCSrcE(0),
      I3 => \q_reg[11]_rep__1\,
      I4 => \q[54]_i_3_n_0\,
      I5 => \q_reg_n_0_[95]\,
      O => D(19)
    );
\q[54]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      O => ImmSrcD(2)
    );
\q[54]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      O => \q[54]_i_3_n_0\
    );
\q[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(20)
    );
\q[56]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(21)
    );
\q[57]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(22)
    );
\q[58]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(23)
    );
\q[59]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(24)
    );
\q[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(4),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(5)
    );
\q[60]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[89]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(25)
    );
\q[61]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[90]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(26)
    );
\q[62]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[91]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(27)
    );
\q[63]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[92]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(28)
    );
\q[64]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[93]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(29)
    );
\q[65]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => funct7b5D,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE(0),
      I5 => \q_reg[11]_rep__1\,
      O => D(30)
    );
\q[66]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(31)
    );
\q[67]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(0),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(32)
    );
\q[68]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(1),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(33)
    );
\q[69]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(2),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(34)
    );
\q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(5),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(6)
    );
\q[70]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(3),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(35)
    );
\q[71]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(4),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(36)
    );
\q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => opD(6),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(7)
    );
\q[82]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(0),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(37)
    );
\q[83]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(1),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(38)
    );
\q[84]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(2),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(39)
    );
\q[85]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(3),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(40)
    );
\q[86]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(4),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(41)
    );
\q[87]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(5),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(42)
    );
\q[88]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(6),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(43)
    );
\q[89]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(7),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(44)
    );
\q[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(0),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(8)
    );
\q[90]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(8),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(45)
    );
\q[91]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(9),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(46)
    );
\q[92]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(10),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(47)
    );
\q[93]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(11),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(48)
    );
\q[94]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(12),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(49)
    );
\q[95]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(13),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(50)
    );
\q[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(14),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(51)
    );
\q[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(15),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(52)
    );
\q[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(16),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(53)
    );
\q[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(17),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => D(54)
    );
\q[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(1),
      I1 => PCSrcE(0),
      I2 => \q_reg[11]_rep__1\,
      O => p_0_in(9)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(0),
      Q => PCD(0)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(1),
      Q => PCD(1)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(2),
      Q => PCD(2)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(3),
      Q => PCD(3)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(4),
      Q => PCD(4)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(5),
      Q => PCD(5)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(6),
      Q => PCD(6)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(7),
      Q => PCD(7)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(8),
      Q => PCD(8)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(9),
      Q => PCD(9)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(10),
      Q => PCD(10)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(11),
      Q => PCD(11)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(12),
      Q => PCD(12)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(13),
      Q => PCD(13)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(14),
      Q => PCD(14)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(15),
      Q => PCD(15)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(16),
      Q => PCD(16)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(17),
      Q => PCD(17)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(18),
      Q => PCD(18)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(19),
      Q => PCD(19)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(20),
      Q => PCD(20)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(21),
      Q => PCD(21)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(22),
      Q => PCD(22)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(23),
      Q => PCD(23)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(24),
      Q => PCD(24)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(25),
      Q => PCD(25)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(26),
      Q => PCD(26)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(27),
      Q => PCD(27)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(28),
      Q => PCD(28)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(29),
      Q => PCD(29)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(30),
      Q => PCD(30)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(31),
      Q => PCD(31)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(32),
      Q => opD(0)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(33),
      Q => opD(1)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(34),
      Q => opD(2)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(35),
      Q => opD(3)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(36),
      Q => opD(4)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(37),
      Q => opD(5)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(38),
      Q => opD(6)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(39),
      Q => RdD(0)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(40),
      Q => RdD(1)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(41),
      Q => RdD(2)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(42),
      Q => RdD(3)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(43),
      Q => RdD(4)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(44),
      Q => funct3D(0)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(45),
      Q => funct3D(1)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(46),
      Q => funct3D(2)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(47),
      Q => \^q\(0)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(48),
      Q => \^q\(1)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(49),
      Q => \^q\(2)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(50),
      Q => \^q\(3)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(51),
      Q => \^q\(4)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(52),
      Q => \^q\(5)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(53),
      Q => \^q\(6)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(54),
      Q => \^q\(7)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(55),
      Q => \^q\(8)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(56),
      Q => \^q\(9)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(57),
      Q => \q_reg_n_0_[89]\
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(58),
      Q => \q_reg_n_0_[90]\
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(59),
      Q => \q_reg_n_0_[91]\
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(60),
      Q => \q_reg_n_0_[92]\
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(61),
      Q => \q_reg_n_0_[93]\
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(62),
      Q => funct7b5D
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(63),
      Q => \q_reg_n_0_[95]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopr is
  port (
    \q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_top_0_0_flopr;

architecture STRUCTURE of design_1_top_0_0_flopr is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \q_reg[1]_0\(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \q_reg[1]_0\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_flopr__parameterized1\ is
  port (
    ALUResultM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[136]_0\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    MemWriteM : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_flopr__parameterized1\ : entity is "flopr";
end \design_1_top_0_0_flopr__parameterized1\;

architecture STRUCTURE of \design_1_top_0_0_flopr__parameterized1\ is
  signal \^aluresultm\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WriteDataOut_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal funct3M : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  ALUResultM(31 downto 0) <= \^aluresultm\(31 downto 0);
\WriteDataOut_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(0),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(0)
    );
\WriteDataOut_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(10),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(10)
    );
\WriteDataOut_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(11),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(11)
    );
\WriteDataOut_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(12),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(12)
    );
\WriteDataOut_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(13),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(13)
    );
\WriteDataOut_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(14),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(14)
    );
\WriteDataOut_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(15),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(15)
    );
\WriteDataOut_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(16),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(16)
    );
\WriteDataOut_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(17),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(17)
    );
\WriteDataOut_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(18),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(18)
    );
\WriteDataOut_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(19),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(19)
    );
\WriteDataOut_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(1),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(1)
    );
\WriteDataOut_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(20),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(20)
    );
\WriteDataOut_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(21),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(21)
    );
\WriteDataOut_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(22),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(22)
    );
\WriteDataOut_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000750000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(23),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(23)
    );
\WriteDataOut_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(24),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(24)
    );
\WriteDataOut_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(25),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(25)
    );
\WriteDataOut_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(26),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(26)
    );
\WriteDataOut_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(27),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(27)
    );
\WriteDataOut_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(28),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(28)
    );
\WriteDataOut_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(29),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(29)
    );
\WriteDataOut_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(2),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(2)
    );
\WriteDataOut_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(30),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(30)
    );
\WriteDataOut_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(31),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(31)
    );
\WriteDataOut_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => \^aluresultm\(0),
      I1 => funct3M(2),
      I2 => funct3M(0),
      I3 => funct3M(1),
      I4 => MemWriteM,
      O => E(0)
    );
\WriteDataOut_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => funct3M(2),
      I1 => MemWriteM,
      O => \WriteDataOut_reg[31]_i_3_n_0\
    );
\WriteDataOut_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(3),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(3)
    );
\WriteDataOut_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(4),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(4)
    );
\WriteDataOut_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(5),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(5)
    );
\WriteDataOut_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(6),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(6)
    );
\WriteDataOut_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000BA0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(7),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(7)
    );
\WriteDataOut_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(8),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(8)
    );
\WriteDataOut_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^aluresultm\(1),
      I1 => funct3M(0),
      I2 => \^aluresultm\(0),
      I3 => funct3M(1),
      I4 => ReadDataM(9),
      I5 => \WriteDataOut_reg[31]_i_3_n_0\,
      O => D(9)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(3),
      Q => \^aluresultm\(0)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(4),
      Q => \^aluresultm\(1)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(5),
      Q => \^aluresultm\(2)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(6),
      Q => \^aluresultm\(3)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(7),
      Q => \^aluresultm\(4)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(8),
      Q => \^aluresultm\(5)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(9),
      Q => \^aluresultm\(6)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(10),
      Q => \^aluresultm\(7)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(11),
      Q => \^aluresultm\(8)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(12),
      Q => \^aluresultm\(9)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(13),
      Q => \^aluresultm\(10)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(14),
      Q => \^aluresultm\(11)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(15),
      Q => \^aluresultm\(12)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(16),
      Q => \^aluresultm\(13)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(17),
      Q => \^aluresultm\(14)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(18),
      Q => \^aluresultm\(15)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(19),
      Q => \^aluresultm\(16)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(20),
      Q => \^aluresultm\(17)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(21),
      Q => \^aluresultm\(18)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(22),
      Q => \^aluresultm\(19)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(23),
      Q => \^aluresultm\(20)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(24),
      Q => \^aluresultm\(21)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(25),
      Q => \^aluresultm\(22)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(26),
      Q => \^aluresultm\(23)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(27),
      Q => \^aluresultm\(24)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(28),
      Q => \^aluresultm\(25)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(29),
      Q => \^aluresultm\(26)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(30),
      Q => \^aluresultm\(27)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(31),
      Q => \^aluresultm\(28)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(32),
      Q => \^aluresultm\(29)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(33),
      Q => \^aluresultm\(30)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(34),
      Q => \^aluresultm\(31)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(0),
      Q => funct3M(0)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(1),
      Q => funct3M(1)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[136]_0\(2),
      Q => funct3M(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_floprc is
  port (
    \q_reg[10]_0\ : out STD_LOGIC;
    funct3E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[16]_0\ : out STD_LOGIC;
    FlushE : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[11]_rep__1_0\ : out STD_LOGIC;
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[14]_0\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[155]\ : out STD_LOGIC;
    \q_reg[15]_0\ : out STD_LOGIC;
    \q_reg[11]_rep__0_0\ : out STD_LOGIC;
    \q_reg[11]_rep_0\ : out STD_LOGIC;
    \q_reg[11]_rep__0_1\ : out STD_LOGIC;
    \q_reg[11]_rep__1_1\ : out STD_LOGIC;
    \q_reg[12]_2\ : out STD_LOGIC;
    \q_reg[11]_rep__1_2\ : out STD_LOGIC;
    \q_reg[11]_rep__1_3\ : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    \PCSrc1__6\ : out STD_LOGIC;
    \condinvb__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[15]_1\ : in STD_LOGIC;
    ovfE : in STD_LOGIC;
    \q_reg[105]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    data6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[105]_0\ : in STD_LOGIC;
    \q_reg[105]_1\ : in STD_LOGIC;
    \q_reg[105]_2\ : in STD_LOGIC;
    \q_reg[136]\ : in STD_LOGIC_VECTOR ( 59 downto 0 );
    \q_reg[105]_3\ : in STD_LOGIC;
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC;
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    \q_reg[108]\ : in STD_LOGIC;
    \q_reg[108]_0\ : in STD_LOGIC;
    \q_reg[108]_1\ : in STD_LOGIC;
    \q[15]_i_5_0\ : in STD_LOGIC;
    \q_reg[110]\ : in STD_LOGIC;
    \q_reg[109]\ : in STD_LOGIC;
    \q_reg[109]_0\ : in STD_LOGIC;
    \q_reg[109]_1\ : in STD_LOGIC;
    \q_reg[109]_2\ : in STD_LOGIC;
    \q_reg[110]_0\ : in STD_LOGIC;
    \q_reg[111]\ : in STD_LOGIC;
    \q_reg[112]\ : in STD_LOGIC;
    \q_reg[111]_0\ : in STD_LOGIC;
    \q_reg[112]_0\ : in STD_LOGIC;
    \q[15]_i_4_0\ : in STD_LOGIC;
    \q_reg[113]\ : in STD_LOGIC;
    \q_reg[113]_0\ : in STD_LOGIC;
    \q_reg[114]\ : in STD_LOGIC;
    \q_reg[114]_0\ : in STD_LOGIC;
    \q_reg[115]\ : in STD_LOGIC;
    \q_reg[115]_0\ : in STD_LOGIC;
    \q_reg[116]\ : in STD_LOGIC;
    \q_reg[116]_0\ : in STD_LOGIC;
    \q_reg[117]\ : in STD_LOGIC;
    \q_reg[117]_0\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[118]_0\ : in STD_LOGIC;
    \q_reg[119]\ : in STD_LOGIC;
    \q_reg[119]_0\ : in STD_LOGIC;
    \q_reg[120]\ : in STD_LOGIC;
    \q_reg[120]_0\ : in STD_LOGIC;
    \q_reg[121]\ : in STD_LOGIC;
    \q_reg[121]_0\ : in STD_LOGIC;
    \q_reg[122]\ : in STD_LOGIC;
    \q_reg[122]_0\ : in STD_LOGIC;
    \q_reg[123]\ : in STD_LOGIC;
    \q_reg[123]_0\ : in STD_LOGIC;
    \q_reg[124]\ : in STD_LOGIC;
    \q_reg[124]_0\ : in STD_LOGIC;
    \q_reg[125]\ : in STD_LOGIC;
    \q_reg[125]_0\ : in STD_LOGIC;
    \q_reg[126]\ : in STD_LOGIC;
    \q_reg[126]_0\ : in STD_LOGIC;
    \q_reg[127]\ : in STD_LOGIC;
    \q_reg[127]_0\ : in STD_LOGIC;
    \q_reg[128]\ : in STD_LOGIC;
    \q_reg[128]_0\ : in STD_LOGIC;
    \q_reg[129]\ : in STD_LOGIC;
    \q_reg[129]_0\ : in STD_LOGIC;
    \q_reg[130]\ : in STD_LOGIC;
    \q_reg[130]_0\ : in STD_LOGIC;
    \q_reg[131]\ : in STD_LOGIC;
    \q_reg[131]_0\ : in STD_LOGIC;
    \q_reg[132]\ : in STD_LOGIC;
    \q_reg[132]_0\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    \q_reg[134]\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[134]_1\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[135]_1\ : in STD_LOGIC;
    \q_reg[136]_0\ : in STD_LOGIC;
    \q[15]_i_7_0\ : in STD_LOGIC;
    \q[15]_i_7_1\ : in STD_LOGIC;
    \q[15]_i_6_0\ : in STD_LOGIC;
    \q[15]_i_6_1\ : in STD_LOGIC;
    \SrcBE__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[15]_i_6_2\ : in STD_LOGIC;
    \q[15]_i_6_3\ : in STD_LOGIC;
    \q[15]_i_8_0\ : in STD_LOGIC;
    \q_reg[112]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[116]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[120]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[124]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[128]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[132]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_12_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[11]_rep_1\ : in STD_LOGIC;
    \q_reg[11]_rep__0_2\ : in STD_LOGIC;
    \q_reg[11]_rep__1_4\ : in STD_LOGIC
  );
end design_1_top_0_0_floprc;

architecture STRUCTURE of design_1_top_0_0_floprc is
  signal JumpE : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ZeroE : STD_LOGIC;
  signal \^funct3e\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \q[105]_i_2_n_0\ : STD_LOGIC;
  signal \q[105]_i_4_n_0\ : STD_LOGIC;
  signal \q[106]_i_4_n_0\ : STD_LOGIC;
  signal \q[107]_i_4_n_0\ : STD_LOGIC;
  signal \q[108]_i_4_n_0\ : STD_LOGIC;
  signal \q[109]_i_2_n_0\ : STD_LOGIC;
  signal \q[109]_i_5_n_0\ : STD_LOGIC;
  signal \q[109]_i_7_n_0\ : STD_LOGIC;
  signal \q[110]_i_4_n_0\ : STD_LOGIC;
  signal \q[110]_i_5_n_0\ : STD_LOGIC;
  signal \q[111]_i_4_n_0\ : STD_LOGIC;
  signal \q[111]_i_5_n_0\ : STD_LOGIC;
  signal \q[112]_i_4_n_0\ : STD_LOGIC;
  signal \q[112]_i_5_n_0\ : STD_LOGIC;
  signal \q[113]_i_3_n_0\ : STD_LOGIC;
  signal \q[113]_i_4_n_0\ : STD_LOGIC;
  signal \q[114]_i_3_n_0\ : STD_LOGIC;
  signal \q[115]_i_3_n_0\ : STD_LOGIC;
  signal \q[115]_i_4_n_0\ : STD_LOGIC;
  signal \q[116]_i_3_n_0\ : STD_LOGIC;
  signal \q[116]_i_4_n_0\ : STD_LOGIC;
  signal \q[117]_i_3_n_0\ : STD_LOGIC;
  signal \q[117]_i_4_n_0\ : STD_LOGIC;
  signal \q[118]_i_3_n_0\ : STD_LOGIC;
  signal \q[118]_i_4_n_0\ : STD_LOGIC;
  signal \q[119]_i_3_n_0\ : STD_LOGIC;
  signal \q[119]_i_4_n_0\ : STD_LOGIC;
  signal \q[120]_i_3_n_0\ : STD_LOGIC;
  signal \q[120]_i_4_n_0\ : STD_LOGIC;
  signal \q[121]_i_4_n_0\ : STD_LOGIC;
  signal \q[121]_i_5_n_0\ : STD_LOGIC;
  signal \q[122]_i_4_n_0\ : STD_LOGIC;
  signal \q[122]_i_5_n_0\ : STD_LOGIC;
  signal \q[123]_i_4_n_0\ : STD_LOGIC;
  signal \q[123]_i_5_n_0\ : STD_LOGIC;
  signal \q[124]_i_4_n_0\ : STD_LOGIC;
  signal \q[124]_i_5_n_0\ : STD_LOGIC;
  signal \q[125]_i_4_n_0\ : STD_LOGIC;
  signal \q[125]_i_5_n_0\ : STD_LOGIC;
  signal \q[126]_i_4_n_0\ : STD_LOGIC;
  signal \q[126]_i_5_n_0\ : STD_LOGIC;
  signal \q[127]_i_4_n_0\ : STD_LOGIC;
  signal \q[127]_i_5_n_0\ : STD_LOGIC;
  signal \q[128]_i_4_n_0\ : STD_LOGIC;
  signal \q[128]_i_5_n_0\ : STD_LOGIC;
  signal \q[129]_i_4_n_0\ : STD_LOGIC;
  signal \q[129]_i_5_n_0\ : STD_LOGIC;
  signal \q[130]_i_4_n_0\ : STD_LOGIC;
  signal \q[130]_i_5_n_0\ : STD_LOGIC;
  signal \q[131]_i_4_n_0\ : STD_LOGIC;
  signal \q[131]_i_5_n_0\ : STD_LOGIC;
  signal \q[132]_i_4_n_0\ : STD_LOGIC;
  signal \q[132]_i_5_n_0\ : STD_LOGIC;
  signal \q[133]_i_4_n_0\ : STD_LOGIC;
  signal \q[133]_i_5_n_0\ : STD_LOGIC;
  signal \q[134]_i_2_n_0\ : STD_LOGIC;
  signal \q[134]_i_4_n_0\ : STD_LOGIC;
  signal \q[134]_i_5_n_0\ : STD_LOGIC;
  signal \q[135]_i_2_n_0\ : STD_LOGIC;
  signal \q[135]_i_4_n_0\ : STD_LOGIC;
  signal \q[135]_i_5_n_0\ : STD_LOGIC;
  signal \q[136]_i_13_n_0\ : STD_LOGIC;
  signal \q[136]_i_15_n_0\ : STD_LOGIC;
  signal \q[136]_i_5_n_0\ : STD_LOGIC;
  signal \q[136]_i_6_n_0\ : STD_LOGIC;
  signal \q[136]_i_7_n_0\ : STD_LOGIC;
  signal \q[15]_i_11_n_0\ : STD_LOGIC;
  signal \q[15]_i_13_n_0\ : STD_LOGIC;
  signal \q[15]_i_4_n_0\ : STD_LOGIC;
  signal \q[15]_i_5_n_0\ : STD_LOGIC;
  signal \q[15]_i_6_n_0\ : STD_LOGIC;
  signal \q[15]_i_7_n_0\ : STD_LOGIC;
  signal \q[15]_i_8_n_0\ : STD_LOGIC;
  signal \q[15]_i_9_n_0\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_12_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_15_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_18_n_0\ : STD_LOGIC;
  signal \q[31]_i_19_n_0\ : STD_LOGIC;
  signal \q[31]_i_21_n_0\ : STD_LOGIC;
  signal \q[31]_i_22_n_0\ : STD_LOGIC;
  signal \q[31]_i_23_n_0\ : STD_LOGIC;
  signal \q[31]_i_24_n_0\ : STD_LOGIC;
  signal \q[31]_i_30_n_0\ : STD_LOGIC;
  signal \q[31]_i_9_n_0\ : STD_LOGIC;
  signal \^q_reg[10]_0\ : STD_LOGIC;
  signal \^q_reg[11]_rep_0\ : STD_LOGIC;
  signal \^q_reg[11]_rep__0_0\ : STD_LOGIC;
  signal \^q_reg[11]_rep__1_0\ : STD_LOGIC;
  signal \^q_reg[11]_rep__1_1\ : STD_LOGIC;
  signal \^q_reg[12]_0\ : STD_LOGIC;
  signal \^q_reg[12]_1\ : STD_LOGIC;
  signal \^q_reg[13]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q_reg[13]_1\ : STD_LOGIC;
  signal \^q_reg[14]_0\ : STD_LOGIC;
  signal \^q_reg[155]\ : STD_LOGIC;
  signal \^q_reg[15]_0\ : STD_LOGIC;
  signal \^q_reg[16]_0\ : STD_LOGIC;
  signal \q_reg_n_0_[16]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[105]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[106]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[106]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[135]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[135]_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[135]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[135]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[136]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[15]_i_13\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[31]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[31]_i_21\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[31]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[64]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[65]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[66]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[67]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[68]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[69]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[70]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[71]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[72]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[73]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[74]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[75]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[76]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[77]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[78]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[79]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[80]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[81]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[82]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[83]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[84]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[85]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[86]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[87]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[88]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[89]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[90]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q[91]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q[92]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[93]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[94]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q[95]_i_1\ : label is "soft_lutpair21";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \q_reg[11]\ : label is "q_reg[11]";
  attribute ORIG_CELL_NAME of \q_reg[11]_rep\ : label is "q_reg[11]";
  attribute ORIG_CELL_NAME of \q_reg[11]_rep__0\ : label is "q_reg[11]";
  attribute ORIG_CELL_NAME of \q_reg[11]_rep__1\ : label is "q_reg[11]";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  funct3E(1 downto 0) <= \^funct3e\(1 downto 0);
  \q_reg[10]_0\ <= \^q_reg[10]_0\;
  \q_reg[11]_rep_0\ <= \^q_reg[11]_rep_0\;
  \q_reg[11]_rep__0_0\ <= \^q_reg[11]_rep__0_0\;
  \q_reg[11]_rep__1_0\ <= \^q_reg[11]_rep__1_0\;
  \q_reg[11]_rep__1_1\ <= \^q_reg[11]_rep__1_1\;
  \q_reg[12]_0\ <= \^q_reg[12]_0\;
  \q_reg[12]_1\ <= \^q_reg[12]_1\;
  \q_reg[13]_0\(31 downto 0) <= \^q_reg[13]_0\(31 downto 0);
  \q_reg[13]_1\ <= \^q_reg[13]_1\;
  \q_reg[14]_0\ <= \^q_reg[14]_0\;
  \q_reg[155]\ <= \^q_reg[155]\;
  \q_reg[15]_0\ <= \^q_reg[15]_0\;
  \q_reg[16]_0\ <= \^q_reg[16]_0\;
\q[105]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => p_4_in
    );
\q[105]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEF0FEF0FEF0FE"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => \q_reg[105]\,
      I2 => \q[105]_i_4_n_0\,
      I3 => \^q\(5),
      I4 => CO(0),
      I5 => \^q\(2),
      O => \^q_reg[13]_0\(0)
    );
\q[105]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A0AAAAA8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => data6(0),
      I4 => \q_reg[105]_0\,
      I5 => \q_reg[105]_1\,
      O => \q[105]_i_2_n_0\
    );
\q[105]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440404000404040"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \q_reg[105]_2\,
      I3 => \^q_reg[11]_rep__1_0\,
      I4 => \q_reg[136]\(0),
      I5 => \q_reg[105]_3\,
      O => \q[105]_i_4_n_0\
    );
\q[106]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[106]\,
      I3 => \q_reg[106]_0\,
      I4 => \q[106]_i_4_n_0\,
      I5 => \q_reg[106]_1\,
      O => \^q_reg[13]_0\(1)
    );
\q[106]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg[136]\(29),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \SrcBE__0\(0),
      O => \q[106]_i_4_n_0\
    );
\q[106]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q_reg[11]_rep__1_0\,
      I2 => \q_reg[136]\(0),
      O => \q_reg[12]_2\
    );
\q[106]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q_reg[11]_rep__1_0\,
      I1 => \q_reg[136]\(0),
      I2 => \^q\(2),
      O => \^q_reg[11]_rep__1_1\
    );
\q[107]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[107]\,
      I3 => \q_reg[107]_0\,
      I4 => \q[107]_i_4_n_0\,
      I5 => \q_reg[107]_1\,
      O => \^q_reg[13]_0\(2)
    );
\q[107]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg[136]\(30),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \SrcBE__0\(1),
      O => \q[107]_i_4_n_0\
    );
\q[108]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q_reg[11]_rep_0\,
      I2 => \q_reg[136]\(0),
      O => \condinvb__0\(0)
    );
\q[108]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[108]\,
      I3 => \q_reg[108]_0\,
      I4 => \q[108]_i_4_n_0\,
      I5 => \q_reg[108]_1\,
      O => \^q_reg[13]_0\(3)
    );
\q[108]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg[136]\(31),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \SrcBE__0\(2),
      O => \q[108]_i_4_n_0\
    );
\q[109]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[109]_i_2_n_0\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[109]\,
      I3 => \q_reg[109]_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[109]_i_5_n_0\,
      O => \^q_reg[13]_0\(4)
    );
\q[109]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[109]_1\,
      I1 => \^q_reg[12]_0\,
      I2 => \q_reg[109]_2\,
      I3 => \^q_reg[12]_1\,
      I4 => \q[109]_i_7_n_0\,
      O => \q[109]_i_2_n_0\
    );
\q[109]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \SrcBE__0\(3),
      I5 => \q_reg[136]\(32),
      O => \q[109]_i_5_n_0\
    );
\q[109]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \q_reg[136]\(32),
      I1 => \q_reg[136]\(1),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \q[109]_i_7_n_0\
    );
\q[110]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[110]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[110]_0\,
      I3 => \q[110]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[110]_i_5_n_0\,
      O => \^q_reg[13]_0\(5)
    );
\q[110]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[112]_1\(0),
      I2 => \q_reg[136]\(33),
      I3 => \q_reg[136]\(2),
      I4 => \^q_reg[11]_rep__0_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[110]_i_4_n_0\
    );
\q[110]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(33),
      I3 => \q_reg[136]\(2),
      I4 => \^q_reg[11]_rep__0_0\,
      O => \q[110]_i_5_n_0\
    );
\q[111]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[111]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[111]_0\,
      I3 => \q[111]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[111]_i_5_n_0\,
      O => \^q_reg[13]_0\(6)
    );
\q[111]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[112]_1\(1),
      I2 => \q_reg[136]\(34),
      I3 => \q_reg[136]\(3),
      I4 => \^q_reg[11]_rep__1_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[111]_i_4_n_0\
    );
\q[111]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(34),
      I3 => \q_reg[136]\(3),
      I4 => \^q_reg[11]_rep__0_0\,
      O => \q[111]_i_5_n_0\
    );
\q[112]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[112]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[112]_0\,
      I3 => \q[112]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[112]_i_5_n_0\,
      O => \^q_reg[13]_0\(7)
    );
\q[112]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[112]_1\(2),
      I2 => \q_reg[136]\(35),
      I3 => \q_reg[136]\(4),
      I4 => \^q_reg[11]_rep__0_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[112]_i_4_n_0\
    );
\q[112]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(35),
      I3 => \q_reg[136]\(4),
      I4 => \^q_reg[11]_rep__0_0\,
      O => \q[112]_i_5_n_0\
    );
\q[113]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[113]\,
      I3 => \q[113]_i_3_n_0\,
      I4 => \q[113]_i_4_n_0\,
      I5 => \q_reg[113]_0\,
      O => \^q_reg[13]_0\(8)
    );
\q[113]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[116]_1\(0),
      I2 => \^q_reg[11]_rep__0_0\,
      I3 => \q_reg[136]\(5),
      I4 => \q_reg[136]\(36),
      I5 => \q[136]_i_15_n_0\,
      O => \q[113]_i_3_n_0\
    );
\q[113]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(36),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(5),
      I4 => \^q_reg[11]_rep__0_0\,
      O => \q[113]_i_4_n_0\
    );
\q[114]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[114]\,
      I3 => \q[114]_i_3_n_0\,
      I4 => \^q_reg[155]\,
      I5 => \q_reg[114]_0\,
      O => \^q_reg[13]_0\(9)
    );
\q[114]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[116]_1\(1),
      I2 => \^q_reg[11]_rep__0_0\,
      I3 => \q_reg[136]\(6),
      I4 => \q_reg[136]\(37),
      I5 => \q[136]_i_15_n_0\,
      O => \q[114]_i_3_n_0\
    );
\q[114]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(37),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(6),
      I4 => \^q_reg[11]_rep__0_0\,
      O => \^q_reg[155]\
    );
\q[115]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[115]\,
      I3 => \q[115]_i_3_n_0\,
      I4 => \q[115]_i_4_n_0\,
      I5 => \q_reg[115]_0\,
      O => \^q_reg[13]_0\(10)
    );
\q[115]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[116]_1\(2),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(7),
      I4 => \q_reg[136]\(38),
      I5 => \q[136]_i_15_n_0\,
      O => \q[115]_i_3_n_0\
    );
\q[115]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(38),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(7),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[115]_i_4_n_0\
    );
\q[116]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[116]\,
      I3 => \q[116]_i_3_n_0\,
      I4 => \q[116]_i_4_n_0\,
      I5 => \q_reg[116]_0\,
      O => \^q_reg[13]_0\(11)
    );
\q[116]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[116]_1\(3),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(8),
      I4 => \q_reg[136]\(39),
      I5 => \q[136]_i_15_n_0\,
      O => \q[116]_i_3_n_0\
    );
\q[116]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(39),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(8),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[116]_i_4_n_0\
    );
\q[117]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[117]\,
      I3 => \q[117]_i_3_n_0\,
      I4 => \q[117]_i_4_n_0\,
      I5 => \q_reg[117]_0\,
      O => \^q_reg[13]_0\(12)
    );
\q[117]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[120]_1\(0),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(9),
      I4 => \q_reg[136]\(40),
      I5 => \q[136]_i_15_n_0\,
      O => \q[117]_i_3_n_0\
    );
\q[117]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(40),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(9),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[117]_i_4_n_0\
    );
\q[118]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[118]\,
      I3 => \q[118]_i_3_n_0\,
      I4 => \q[118]_i_4_n_0\,
      I5 => \q_reg[118]_0\,
      O => \^q_reg[13]_0\(13)
    );
\q[118]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[120]_1\(1),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(10),
      I4 => \q_reg[136]\(41),
      I5 => \q[136]_i_15_n_0\,
      O => \q[118]_i_3_n_0\
    );
\q[118]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(41),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(10),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[118]_i_4_n_0\
    );
\q[119]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[119]\,
      I3 => \q[119]_i_3_n_0\,
      I4 => \q[119]_i_4_n_0\,
      I5 => \q_reg[119]_0\,
      O => \^q_reg[13]_0\(14)
    );
\q[119]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[120]_1\(2),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(11),
      I4 => \q_reg[136]\(42),
      I5 => \q[136]_i_15_n_0\,
      O => \q[119]_i_3_n_0\
    );
\q[119]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(42),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(11),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[119]_i_4_n_0\
    );
\q[120]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[120]\,
      I3 => \q[120]_i_3_n_0\,
      I4 => \q[120]_i_4_n_0\,
      I5 => \q_reg[120]_0\,
      O => \^q_reg[13]_0\(15)
    );
\q[120]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[120]_1\(3),
      I2 => \^q_reg[11]_rep_0\,
      I3 => \q_reg[136]\(12),
      I4 => \q_reg[136]\(43),
      I5 => \q[136]_i_15_n_0\,
      O => \q[120]_i_3_n_0\
    );
\q[120]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8808080"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[136]\(43),
      I2 => \q[136]_i_13_n_0\,
      I3 => \q_reg[136]\(12),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[120]_i_4_n_0\
    );
\q[121]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[121]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[121]_0\,
      I3 => \q[121]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[121]_i_5_n_0\,
      O => \^q_reg[13]_0\(16)
    );
\q[121]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[124]_1\(0),
      I2 => \q_reg[136]\(44),
      I3 => \q_reg[136]\(13),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[121]_i_4_n_0\
    );
\q[121]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(44),
      I3 => \q_reg[136]\(13),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[121]_i_5_n_0\
    );
\q[122]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[122]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[122]_0\,
      I3 => \q[122]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[122]_i_5_n_0\,
      O => \^q_reg[13]_0\(17)
    );
\q[122]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[124]_1\(1),
      I2 => \q_reg[136]\(45),
      I3 => \q_reg[136]\(14),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[122]_i_4_n_0\
    );
\q[122]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(45),
      I3 => \q_reg[136]\(14),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[122]_i_5_n_0\
    );
\q[123]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[123]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[123]_0\,
      I3 => \q[123]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[123]_i_5_n_0\,
      O => \^q_reg[13]_0\(18)
    );
\q[123]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[124]_1\(2),
      I2 => \q_reg[136]\(46),
      I3 => \q_reg[136]\(15),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[123]_i_4_n_0\
    );
\q[123]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(46),
      I3 => \q_reg[136]\(15),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[123]_i_5_n_0\
    );
\q[124]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[124]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[124]_0\,
      I3 => \q[124]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[124]_i_5_n_0\,
      O => \^q_reg[13]_0\(19)
    );
\q[124]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[124]_1\(3),
      I2 => \q_reg[136]\(47),
      I3 => \q_reg[136]\(16),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[124]_i_4_n_0\
    );
\q[124]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(47),
      I3 => \q_reg[136]\(16),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[124]_i_5_n_0\
    );
\q[125]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[125]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[125]_0\,
      I3 => \q[125]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[125]_i_5_n_0\,
      O => \^q_reg[13]_0\(20)
    );
\q[125]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[128]_1\(0),
      I2 => \q_reg[136]\(48),
      I3 => \q_reg[136]\(17),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[125]_i_4_n_0\
    );
\q[125]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(48),
      I3 => \q_reg[136]\(17),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[125]_i_5_n_0\
    );
\q[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[126]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[126]_0\,
      I3 => \q[126]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[126]_i_5_n_0\,
      O => \^q_reg[13]_0\(21)
    );
\q[126]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[128]_1\(1),
      I2 => \q_reg[136]\(49),
      I3 => \q_reg[136]\(18),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[126]_i_4_n_0\
    );
\q[126]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(49),
      I3 => \q_reg[136]\(18),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[126]_i_5_n_0\
    );
\q[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[127]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[127]_0\,
      I3 => \q[127]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[127]_i_5_n_0\,
      O => \^q_reg[13]_0\(22)
    );
\q[127]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[128]_1\(2),
      I2 => \q_reg[136]\(50),
      I3 => \q_reg[136]\(19),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[127]_i_4_n_0\
    );
\q[127]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(50),
      I3 => \q_reg[136]\(19),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[127]_i_5_n_0\
    );
\q[128]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[128]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[128]_0\,
      I3 => \q[128]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[128]_i_5_n_0\,
      O => \^q_reg[13]_0\(23)
    );
\q[128]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[128]_1\(3),
      I2 => \q_reg[136]\(51),
      I3 => \q_reg[136]\(20),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[128]_i_4_n_0\
    );
\q[128]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(51),
      I3 => \q_reg[136]\(20),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[128]_i_5_n_0\
    );
\q[129]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[129]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[129]_0\,
      I3 => \q[129]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[129]_i_5_n_0\,
      O => \^q_reg[13]_0\(24)
    );
\q[129]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[132]_1\(0),
      I2 => \q_reg[136]\(52),
      I3 => \q_reg[136]\(21),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[129]_i_4_n_0\
    );
\q[129]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(52),
      I3 => \q_reg[136]\(21),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[129]_i_5_n_0\
    );
\q[130]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[130]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[130]_0\,
      I3 => \q[130]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[130]_i_5_n_0\,
      O => \^q_reg[13]_0\(25)
    );
\q[130]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[132]_1\(1),
      I2 => \q_reg[136]\(53),
      I3 => \q_reg[136]\(22),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[130]_i_4_n_0\
    );
\q[130]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(53),
      I3 => \q_reg[136]\(22),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[130]_i_5_n_0\
    );
\q[131]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[131]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[131]_0\,
      I3 => \q[131]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[131]_i_5_n_0\,
      O => \^q_reg[13]_0\(26)
    );
\q[131]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[132]_1\(2),
      I2 => \q_reg[136]\(54),
      I3 => \q_reg[136]\(23),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[131]_i_4_n_0\
    );
\q[131]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(54),
      I3 => \q_reg[136]\(23),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[131]_i_5_n_0\
    );
\q[132]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[132]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[132]_0\,
      I3 => \q[132]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[132]_i_5_n_0\,
      O => \^q_reg[13]_0\(27)
    );
\q[132]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q_reg[132]_1\(3),
      I2 => \q_reg[136]\(55),
      I3 => \q_reg[136]\(24),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[132]_i_4_n_0\
    );
\q[132]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(55),
      I3 => \q_reg[136]\(24),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[132]_i_5_n_0\
    );
\q[133]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q_reg[133]\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[133]_0\,
      I3 => \q[133]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[133]_i_5_n_0\,
      O => \^q_reg[13]_0\(28)
    );
\q[133]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => O(0),
      I2 => \q_reg[136]\(56),
      I3 => \q_reg[136]\(25),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[133]_i_4_n_0\
    );
\q[133]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(56),
      I3 => \q_reg[136]\(25),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[133]_i_5_n_0\
    );
\q[134]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[134]_i_2_n_0\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[134]\,
      I3 => \q[134]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[134]_i_5_n_0\,
      O => \^q_reg[13]_0\(29)
    );
\q[134]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q_reg[12]_0\,
      I1 => \q_reg[135]\,
      I2 => \q_reg[134]_0\,
      I3 => \^q_reg[12]_1\,
      I4 => \^q_reg[15]_0\,
      I5 => \q_reg[134]_1\,
      O => \q[134]_i_2_n_0\
    );
\q[134]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => O(1),
      I2 => \q_reg[136]\(57),
      I3 => \q_reg[136]\(26),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[134]_i_4_n_0\
    );
\q[134]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(57),
      I3 => \q_reg[136]\(26),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[134]_i_5_n_0\
    );
\q[135]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[135]_i_2_n_0\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[135]_0\,
      I3 => \q[135]_i_4_n_0\,
      I4 => \^q_reg[13]_1\,
      I5 => \q[135]_i_5_n_0\,
      O => \^q_reg[13]_0\(30)
    );
\q[135]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^q_reg[11]_rep__1_0\,
      I1 => \q_reg[136]\(0),
      I2 => \^q\(2),
      O => \q_reg[11]_rep__1_2\
    );
\q[135]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q_reg[11]_rep__1_0\,
      I1 => \q_reg[136]\(0),
      I2 => \^q\(2),
      O => \q_reg[11]_rep__1_3\
    );
\q[135]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q_reg[12]_1\,
      I1 => \q_reg[135]\,
      I2 => \^q_reg[12]_0\,
      I3 => \q_reg[136]\(59),
      I4 => \^q_reg[15]_0\,
      I5 => \q_reg[135]_1\,
      O => \q[135]_i_2_n_0\
    );
\q[135]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => O(2),
      I2 => \q_reg[136]\(58),
      I3 => \q_reg[136]\(27),
      I4 => \^q_reg[11]_rep_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[135]_i_4_n_0\
    );
\q[135]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(58),
      I3 => \q_reg[136]\(27),
      I4 => \^q_reg[11]_rep_0\,
      O => \q[135]_i_5_n_0\
    );
\q[135]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q_reg[11]_rep__0_0\,
      I3 => \q_reg[136]\(0),
      O => \^q_reg[12]_1\
    );
\q[135]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q_reg[11]_rep__0_0\,
      I3 => \q_reg[136]\(0),
      O => \^q_reg[12]_0\
    );
\q[136]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[13]_1\,
      I1 => \^q_reg[14]_0\,
      I2 => \q_reg[136]_0\,
      I3 => \q[136]_i_5_n_0\,
      I4 => \q[136]_i_6_n_0\,
      I5 => \q[136]_i_7_n_0\,
      O => \^q_reg[13]_0\(31)
    );
\q[136]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \q[136]_i_13_n_0\
    );
\q[136]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \q[136]_i_15_n_0\
    );
\q[136]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      O => \^q_reg[15]_0\
    );
\q[136]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      O => \^q_reg[13]_1\
    );
\q[136]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \^q_reg[14]_0\
    );
\q[136]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFF44444444444"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => O(3),
      I2 => \q_reg[136]\(28),
      I3 => \^q_reg[11]_rep_0\,
      I4 => \q_reg[136]\(59),
      I5 => \q[136]_i_15_n_0\,
      O => \q[136]_i_5_n_0\
    );
\q[136]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q_reg[136]\(28),
      I3 => \^q_reg[11]_rep_0\,
      I4 => \q_reg[136]\(59),
      O => \q[136]_i_6_n_0\
    );
\q[136]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000FF008000"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \^q_reg[11]_rep_0\,
      I2 => \q_reg[136]\(28),
      I3 => \q_reg[136]\(59),
      I4 => \^q\(5),
      I5 => \^q\(2),
      O => \q[136]_i_7_n_0\
    );
\q[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAEAEAEAEA"
    )
        port map (
      I0 => \q[110]_i_5_n_0\,
      I1 => \^q_reg[13]_1\,
      I2 => \q[110]_i_4_n_0\,
      I3 => \q[15]_i_7_0\,
      I4 => \q[15]_i_7_1\,
      I5 => \^q_reg[14]_0\,
      O => \q[15]_i_11_n_0\
    );
\q[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg[136]\(0),
      I2 => \^q_reg[11]_rep__1_0\,
      I3 => \q[15]_i_8_0\,
      O => \q[15]_i_13_n_0\
    );
\q[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \q_reg[15]_1\,
      I1 => JumpE,
      I2 => \q_reg_n_0_[16]\,
      I3 => \q[31]_i_12_n_0\,
      I4 => \q[15]_i_4_n_0\,
      O => FlushE
    );
\q[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \q[31]_i_15_n_0\,
      I1 => \q[31]_i_16_n_0\,
      I2 => \q[31]_i_17_n_0\,
      I3 => \q[15]_i_5_n_0\,
      I4 => \q[31]_i_10_n_0\,
      I5 => \q[31]_i_9_n_0\,
      O => \q[15]_i_4_n_0\
    );
\q[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \q[15]_i_6_n_0\,
      I1 => \q[15]_i_7_n_0\,
      I2 => \^q_reg[13]_0\(3),
      I3 => \^q_reg[13]_0\(2),
      I4 => \^q_reg[13]_0\(0),
      I5 => \^q_reg[13]_0\(1),
      O => \q[15]_i_5_n_0\
    );
\q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \q[111]_i_5_n_0\,
      I1 => \^q_reg[13]_1\,
      I2 => \q[15]_i_8_n_0\,
      I3 => \q_reg[111]\,
      I4 => \q[15]_i_9_n_0\,
      I5 => \q_reg[112]\,
      O => \q[15]_i_6_n_0\
    );
\q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \q[109]_i_5_n_0\,
      I1 => \^q_reg[13]_1\,
      I2 => \q[15]_i_5_0\,
      I3 => \q[109]_i_2_n_0\,
      I4 => \q[15]_i_11_n_0\,
      I5 => \q_reg[110]\,
      O => \q[15]_i_7_n_0\
    );
\q[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEAAAAAAAA"
    )
        port map (
      I0 => \q[111]_i_4_n_0\,
      I1 => \q[15]_i_6_2\,
      I2 => \^q_reg[11]_rep__1_1\,
      I3 => \q[15]_i_6_3\,
      I4 => \q[15]_i_13_n_0\,
      I5 => \^q_reg[14]_0\,
      O => \q[15]_i_8_n_0\
    );
\q[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAEAEAEAEA"
    )
        port map (
      I0 => \q[112]_i_5_n_0\,
      I1 => \^q_reg[13]_1\,
      I2 => \q[112]_i_4_n_0\,
      I3 => \q[15]_i_6_0\,
      I4 => \q[15]_i_6_1\,
      I5 => \^q_reg[14]_0\,
      O => \q[15]_i_9_n_0\
    );
\q[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^funct3e\(1),
      I1 => \^funct3e\(0),
      I2 => \^q_reg[10]_0\,
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \q[31]_i_15_n_0\,
      I1 => \q[31]_i_16_n_0\,
      I2 => \q[31]_i_17_n_0\,
      I3 => \q[31]_i_18_n_0\,
      I4 => \q[31]_i_19_n_0\,
      I5 => \^q_reg[13]_0\(1),
      O => ZeroE
    );
\q[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222288828288"
    )
        port map (
      I0 => \^q_reg[10]_0\,
      I1 => \^funct3e\(0),
      I2 => \^funct3e\(1),
      I3 => ovfE,
      I4 => \^q_reg[13]_0\(31),
      I5 => \q[31]_i_21_n_0\,
      O => \q[31]_i_12_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in_0(7),
      I1 => p_0_in_0(6),
      I2 => p_0_in_0(5),
      I3 => p_0_in_0(4),
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q_reg[13]_0\(28),
      I1 => \^q_reg[13]_0\(29),
      I2 => \q[31]_i_22_n_0\,
      I3 => \q[31]_i_23_n_0\,
      O => \q[31]_i_15_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[13]_0\(31),
      I1 => \^q_reg[13]_0\(25),
      I2 => \^q_reg[13]_0\(24),
      I3 => \^q_reg[13]_0\(27),
      I4 => \^q_reg[13]_0\(26),
      I5 => \^q_reg[13]_0\(30),
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^q_reg[13]_0\(12),
      I1 => \^q_reg[13]_0\(13),
      I2 => \q[31]_i_24_n_0\,
      I3 => \q[15]_i_4_0\,
      I4 => \^q_reg[13]_0\(10),
      I5 => \^q_reg[13]_0\(11),
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[13]_0\(7),
      I1 => \^q_reg[13]_0\(6),
      I2 => \^q_reg[13]_0\(5),
      I3 => \^q_reg[13]_0\(4),
      O => \q[31]_i_18_n_0\
    );
\q[31]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q_reg[13]_0\(3),
      I1 => \^q_reg[13]_0\(2),
      I2 => \^q_reg[13]_0\(0),
      O => \q[31]_i_19_n_0\
    );
\q[31]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q[31]_i_12_0\(0),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^funct3e\(1),
      O => \q[31]_i_21_n_0\
    );
\q[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[13]_0\(23),
      I1 => \^q_reg[13]_0\(22),
      I2 => \^q_reg[13]_0\(21),
      I3 => \^q_reg[13]_0\(20),
      O => \q[31]_i_22_n_0\
    );
\q[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[13]_0\(17),
      I1 => \^q_reg[13]_0\(16),
      I2 => \^q_reg[13]_0\(19),
      I3 => \^q_reg[13]_0\(18),
      O => \q[31]_i_23_n_0\
    );
\q[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[13]_0\(14),
      I1 => \^q_reg[13]_0\(15),
      O => \q[31]_i_24_n_0\
    );
\q[31]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F888888888"
    )
        port map (
      I0 => \q[31]_i_30_n_0\,
      I1 => \^q_reg[15]_0\,
      I2 => \q[113]_i_3_n_0\,
      I3 => \q_reg[113]\,
      I4 => \^q_reg[14]_0\,
      I5 => \^q_reg[13]_1\,
      O => \q_reg[11]_rep__0_1\
    );
\q[31]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888000"
    )
        port map (
      I0 => \^q_reg[11]_rep__0_0\,
      I1 => \q_reg[136]\(5),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \q_reg[136]\(36),
      O => \q[31]_i_30_n_0\
    );
\q[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF140000"
    )
        port map (
      I0 => \q[31]_i_9_n_0\,
      I1 => \q[31]_i_10_n_0\,
      I2 => ZeroE,
      I3 => \q[31]_i_12_n_0\,
      I4 => \q_reg_n_0_[16]\,
      I5 => JumpE,
      O => \^q_reg[16]_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \q[31]_i_13_n_0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      O => \PCSrc1__6\
    );
\q[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^funct3e\(1),
      I1 => \^q_reg[10]_0\,
      O => \q[31]_i_9_n_0\
    );
\q[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(0),
      I1 => \^q_reg[16]_0\,
      O => D(0)
    );
\q[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(1),
      I1 => \^q_reg[16]_0\,
      O => D(1)
    );
\q[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(2),
      I1 => \^q_reg[16]_0\,
      O => D(2)
    );
\q[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(3),
      I1 => \^q_reg[16]_0\,
      O => D(3)
    );
\q[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(4),
      I1 => \^q_reg[16]_0\,
      O => D(4)
    );
\q[69]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(5),
      I1 => \^q_reg[16]_0\,
      O => D(5)
    );
\q[70]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(6),
      I1 => \^q_reg[16]_0\,
      O => D(6)
    );
\q[71]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(7),
      I1 => \^q_reg[16]_0\,
      O => D(7)
    );
\q[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(8),
      I1 => \^q_reg[16]_0\,
      O => D(8)
    );
\q[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(9),
      I1 => \^q_reg[16]_0\,
      O => D(9)
    );
\q[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(10),
      I1 => \^q_reg[16]_0\,
      O => D(10)
    );
\q[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(11),
      I1 => \^q_reg[16]_0\,
      O => D(11)
    );
\q[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(12),
      I1 => \^q_reg[16]_0\,
      O => D(12)
    );
\q[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(13),
      I1 => \^q_reg[16]_0\,
      O => D(13)
    );
\q[78]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(14),
      I1 => \^q_reg[16]_0\,
      O => D(14)
    );
\q[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(15),
      I1 => \^q_reg[16]_0\,
      O => D(15)
    );
\q[80]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(16),
      I1 => \^q_reg[16]_0\,
      O => D(16)
    );
\q[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(17),
      I1 => \^q_reg[16]_0\,
      O => D(17)
    );
\q[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(18),
      I1 => \^q_reg[16]_0\,
      O => D(18)
    );
\q[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(19),
      I1 => \^q_reg[16]_0\,
      O => D(19)
    );
\q[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(20),
      I1 => \^q_reg[16]_0\,
      O => D(20)
    );
\q[85]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(21),
      I1 => \^q_reg[16]_0\,
      O => D(21)
    );
\q[86]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(22),
      I1 => \^q_reg[16]_0\,
      O => D(22)
    );
\q[87]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(23),
      I1 => \^q_reg[16]_0\,
      O => D(23)
    );
\q[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(24),
      I1 => \^q_reg[16]_0\,
      O => D(24)
    );
\q[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(25),
      I1 => \^q_reg[16]_0\,
      O => D(25)
    );
\q[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(26),
      I1 => \^q_reg[16]_0\,
      O => D(26)
    );
\q[91]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(27),
      I1 => \^q_reg[16]_0\,
      O => D(27)
    );
\q[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(28),
      I1 => \^q_reg[16]_0\,
      O => D(28)
    );
\q[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(29),
      I1 => \^q_reg[16]_0\,
      O => D(29)
    );
\q[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(30),
      I1 => \^q_reg[16]_0\,
      O => D(30)
    );
\q[95]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(31),
      I1 => \^q_reg[16]_0\,
      O => D(31)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(10),
      Q => \^q_reg[10]_0\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(11),
      Q => \^q\(1)
    );
\q_reg[11]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[11]_rep_1\,
      Q => \^q_reg[11]_rep_0\
    );
\q_reg[11]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[11]_rep__0_2\,
      Q => \^q_reg[11]_rep__0_0\
    );
\q_reg[11]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[11]_rep__1_4\,
      Q => \^q_reg[11]_rep__1_0\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(12),
      Q => \^q\(2)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(13),
      Q => \^q\(3)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(14),
      Q => \^q\(4)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(15),
      Q => \^q\(5)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(16),
      Q => \q_reg_n_0_[16]\
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(17),
      Q => JumpE
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(18),
      Q => \^q\(6)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(19),
      Q => \^q\(7)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(1),
      Q => p_0_in_0(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(2),
      Q => p_0_in_0(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(3),
      Q => p_0_in_0(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(4),
      Q => p_0_in_0(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(5),
      Q => p_0_in_0(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(6),
      Q => p_0_in_0(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(7),
      Q => p_0_in_0(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(8),
      Q => \^funct3e\(0)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(9),
      Q => \^funct3e\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_floprc__parameterized0\ is
  port (
    \q_reg[16]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[177]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \q_reg[177]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ovfE : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC;
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[164]_0\ : out STD_LOGIC;
    \q_reg[12]_2\ : out STD_LOGIC;
    \q_reg[165]_0\ : out STD_LOGIC;
    \q_reg[12]_3\ : out STD_LOGIC;
    \q_reg[12]_4\ : out STD_LOGIC;
    \q_reg[12]_5\ : out STD_LOGIC;
    \q_reg[12]_6\ : out STD_LOGIC;
    \q_reg[12]_7\ : out STD_LOGIC;
    \q_reg[12]_8\ : out STD_LOGIC;
    \q_reg[12]_9\ : out STD_LOGIC;
    \q_reg[12]_10\ : out STD_LOGIC;
    \q_reg[12]_11\ : out STD_LOGIC;
    \q_reg[37]_1\ : out STD_LOGIC;
    \q_reg[36]_0\ : out STD_LOGIC;
    \q_reg[12]_12\ : out STD_LOGIC;
    \q_reg[12]_13\ : out STD_LOGIC;
    \q_reg[12]_14\ : out STD_LOGIC;
    \q_reg[12]_15\ : out STD_LOGIC;
    \q_reg[12]_16\ : out STD_LOGIC;
    \q_reg[12]_17\ : out STD_LOGIC;
    \q_reg[12]_18\ : out STD_LOGIC;
    \q_reg[12]_19\ : out STD_LOGIC;
    \q_reg[12]_20\ : out STD_LOGIC;
    \q_reg[36]_1\ : out STD_LOGIC;
    \q_reg[36]_2\ : out STD_LOGIC;
    \q_reg[36]_3\ : out STD_LOGIC;
    \q_reg[36]_4\ : out STD_LOGIC;
    \q_reg[175]_0\ : out STD_LOGIC;
    \q_reg[175]_1\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC;
    \q_reg[65]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[65]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[150]_0\ : out STD_LOGIC;
    \q_reg[150]_1\ : out STD_LOGIC;
    \q_reg[39]_0\ : out STD_LOGIC;
    data6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[37]_2\ : out STD_LOGIC;
    \q_reg[37]_3\ : out STD_LOGIC;
    \q_reg[38]_0\ : out STD_LOGIC;
    \q_reg[12]_21\ : out STD_LOGIC;
    \q_reg[12]_22\ : out STD_LOGIC;
    \q_reg[12]_23\ : out STD_LOGIC;
    \q_reg[12]_24\ : out STD_LOGIC;
    \q_reg[12]_25\ : out STD_LOGIC;
    \q_reg[147]_0\ : out STD_LOGIC;
    \q_reg[146]_0\ : out STD_LOGIC;
    \q_reg[12]_26\ : out STD_LOGIC;
    \q_reg[36]_5\ : out STD_LOGIC;
    \q_reg[146]_1\ : out STD_LOGIC;
    \q_reg[12]_27\ : out STD_LOGIC;
    \q_reg[11]_rep__0\ : out STD_LOGIC;
    \q_reg[12]_28\ : out STD_LOGIC;
    \q_reg[147]_1\ : out STD_LOGIC;
    \q_reg[147]_2\ : out STD_LOGIC;
    \q_reg[157]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]_29\ : out STD_LOGIC;
    \q_reg[12]_30\ : out STD_LOGIC;
    \q_reg[12]_31\ : out STD_LOGIC;
    \q_reg[12]_32\ : out STD_LOGIC;
    \q_reg[12]_33\ : out STD_LOGIC;
    \q_reg[12]_34\ : out STD_LOGIC;
    \q_reg[12]_35\ : out STD_LOGIC;
    \q_reg[176]_0\ : out STD_LOGIC;
    \q_reg[12]_36\ : out STD_LOGIC;
    \q_reg[12]_37\ : out STD_LOGIC;
    \q_reg[12]_38\ : out STD_LOGIC;
    \q_reg[12]_39\ : out STD_LOGIC;
    \q_reg[12]_40\ : out STD_LOGIC;
    \q_reg[12]_41\ : out STD_LOGIC;
    \q_reg[12]_42\ : out STD_LOGIC;
    \q_reg[12]_43\ : out STD_LOGIC;
    \q_reg[12]_44\ : out STD_LOGIC;
    \q_reg[12]_45\ : out STD_LOGIC;
    \q_reg[12]_46\ : out STD_LOGIC;
    \q_reg[12]_47\ : out STD_LOGIC;
    \q_reg[12]_48\ : out STD_LOGIC;
    \q_reg[12]_49\ : out STD_LOGIC;
    \q_reg[11]_rep__1\ : out STD_LOGIC;
    \q_reg[12]_50\ : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC;
    \q_reg[149]_0\ : out STD_LOGIC;
    \q_reg[148]_0\ : out STD_LOGIC;
    \q_reg[147]_3\ : out STD_LOGIC;
    \q_reg[11]_rep__0_0\ : out STD_LOGIC;
    \q_reg[11]_rep__0_1\ : out STD_LOGIC;
    \q_reg[57]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[57]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[49]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[161]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[66]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[177]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[19]\ : out STD_LOGIC;
    \q_reg[153]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[161]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[165]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[169]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[173]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[177]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[38]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[42]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[46]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[50]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[54]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[58]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[62]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[149]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[153]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[157]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[161]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[165]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[169]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[173]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCPlus4F : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \PCSrc1__6\ : in STD_LOGIC;
    \q_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[32]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_4_in : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    \q_reg[133]_1\ : in STD_LOGIC;
    \q[31]_i_17\ : in STD_LOGIC;
    \q[31]_i_17_0\ : in STD_LOGIC;
    \q[31]_i_17_1\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC;
    \q[15]_i_7\ : in STD_LOGIC;
    \q_reg[106]_2\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q[31]_i_6_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \condinvb__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[105]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[109]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[113]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[117]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[121]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[125]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[129]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[133]_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 100 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_floprc__parameterized0\ : entity is "floprc";
end \design_1_top_0_0_floprc__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_floprc__parameterized0\ is
  signal PCE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal RdE : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SrcBE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SrcBE__0\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \alu/result00_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \q[105]_i_10_n_0\ : STD_LOGIC;
  signal \q[105]_i_14_n_0\ : STD_LOGIC;
  signal \q[105]_i_15_n_0\ : STD_LOGIC;
  signal \q[105]_i_16_n_0\ : STD_LOGIC;
  signal \q[105]_i_17_n_0\ : STD_LOGIC;
  signal \q[105]_i_18_n_0\ : STD_LOGIC;
  signal \q[105]_i_19_n_0\ : STD_LOGIC;
  signal \q[105]_i_20_n_0\ : STD_LOGIC;
  signal \q[105]_i_21_n_0\ : STD_LOGIC;
  signal \q[105]_i_22_n_0\ : STD_LOGIC;
  signal \q[105]_i_9_n_0\ : STD_LOGIC;
  signal \q[106]_i_10_n_0\ : STD_LOGIC;
  signal \q[106]_i_11_n_0\ : STD_LOGIC;
  signal \q[106]_i_8_n_0\ : STD_LOGIC;
  signal \q[107]_i_10_n_0\ : STD_LOGIC;
  signal \q[107]_i_11_n_0\ : STD_LOGIC;
  signal \q[107]_i_12_n_0\ : STD_LOGIC;
  signal \q[107]_i_13_n_0\ : STD_LOGIC;
  signal \q[107]_i_6_n_0\ : STD_LOGIC;
  signal \q[107]_i_7_n_0\ : STD_LOGIC;
  signal \q[107]_i_9_n_0\ : STD_LOGIC;
  signal \q[108]_i_10_n_0\ : STD_LOGIC;
  signal \q[108]_i_11_n_0\ : STD_LOGIC;
  signal \q[108]_i_17_n_0\ : STD_LOGIC;
  signal \q[108]_i_18_n_0\ : STD_LOGIC;
  signal \q[108]_i_19_n_0\ : STD_LOGIC;
  signal \q[108]_i_6_n_0\ : STD_LOGIC;
  signal \q[108]_i_7_n_0\ : STD_LOGIC;
  signal \q[109]_i_11_n_0\ : STD_LOGIC;
  signal \q[109]_i_8_n_0\ : STD_LOGIC;
  signal \q[109]_i_9_n_0\ : STD_LOGIC;
  signal \q[110]_i_10_n_0\ : STD_LOGIC;
  signal \q[110]_i_7_n_0\ : STD_LOGIC;
  signal \q[110]_i_8_n_0\ : STD_LOGIC;
  signal \q[110]_i_9_n_0\ : STD_LOGIC;
  signal \q[111]_i_10_n_0\ : STD_LOGIC;
  signal \q[111]_i_11_n_0\ : STD_LOGIC;
  signal \q[111]_i_12_n_0\ : STD_LOGIC;
  signal \q[111]_i_6_n_0\ : STD_LOGIC;
  signal \q[111]_i_7_n_0\ : STD_LOGIC;
  signal \q[111]_i_8_n_0\ : STD_LOGIC;
  signal \q[112]_i_11_n_0\ : STD_LOGIC;
  signal \q[112]_i_12_n_0\ : STD_LOGIC;
  signal \q[112]_i_17_n_0\ : STD_LOGIC;
  signal \q[112]_i_6_n_0\ : STD_LOGIC;
  signal \q[112]_i_7_n_0\ : STD_LOGIC;
  signal \q[112]_i_9_n_0\ : STD_LOGIC;
  signal \q[113]_i_10_n_0\ : STD_LOGIC;
  signal \q[113]_i_6_n_0\ : STD_LOGIC;
  signal \q[113]_i_7_n_0\ : STD_LOGIC;
  signal \q[113]_i_8_n_0\ : STD_LOGIC;
  signal \q[113]_i_9_n_0\ : STD_LOGIC;
  signal \q[114]_i_10_n_0\ : STD_LOGIC;
  signal \q[114]_i_11_n_0\ : STD_LOGIC;
  signal \q[114]_i_12_n_0\ : STD_LOGIC;
  signal \q[114]_i_13_n_0\ : STD_LOGIC;
  signal \q[114]_i_6_n_0\ : STD_LOGIC;
  signal \q[114]_i_7_n_0\ : STD_LOGIC;
  signal \q[114]_i_8_n_0\ : STD_LOGIC;
  signal \q[114]_i_9_n_0\ : STD_LOGIC;
  signal \q[115]_i_10_n_0\ : STD_LOGIC;
  signal \q[115]_i_11_n_0\ : STD_LOGIC;
  signal \q[115]_i_12_n_0\ : STD_LOGIC;
  signal \q[115]_i_6_n_0\ : STD_LOGIC;
  signal \q[115]_i_7_n_0\ : STD_LOGIC;
  signal \q[115]_i_8_n_0\ : STD_LOGIC;
  signal \q[115]_i_9_n_0\ : STD_LOGIC;
  signal \q[116]_i_10_n_0\ : STD_LOGIC;
  signal \q[116]_i_11_n_0\ : STD_LOGIC;
  signal \q[116]_i_16_n_0\ : STD_LOGIC;
  signal \q[116]_i_17_n_0\ : STD_LOGIC;
  signal \q[116]_i_6_n_0\ : STD_LOGIC;
  signal \q[116]_i_7_n_0\ : STD_LOGIC;
  signal \q[116]_i_9_n_0\ : STD_LOGIC;
  signal \q[117]_i_10_n_0\ : STD_LOGIC;
  signal \q[117]_i_11_n_0\ : STD_LOGIC;
  signal \q[117]_i_12_n_0\ : STD_LOGIC;
  signal \q[117]_i_13_n_0\ : STD_LOGIC;
  signal \q[117]_i_6_n_0\ : STD_LOGIC;
  signal \q[117]_i_7_n_0\ : STD_LOGIC;
  signal \q[117]_i_8_n_0\ : STD_LOGIC;
  signal \q[117]_i_9_n_0\ : STD_LOGIC;
  signal \q[118]_i_10_n_0\ : STD_LOGIC;
  signal \q[118]_i_11_n_0\ : STD_LOGIC;
  signal \q[118]_i_12_n_0\ : STD_LOGIC;
  signal \q[118]_i_13_n_0\ : STD_LOGIC;
  signal \q[118]_i_14_n_0\ : STD_LOGIC;
  signal \q[118]_i_15_n_0\ : STD_LOGIC;
  signal \q[118]_i_16_n_0\ : STD_LOGIC;
  signal \q[118]_i_6_n_0\ : STD_LOGIC;
  signal \q[118]_i_7_n_0\ : STD_LOGIC;
  signal \q[118]_i_8_n_0\ : STD_LOGIC;
  signal \q[118]_i_9_n_0\ : STD_LOGIC;
  signal \q[119]_i_10_n_0\ : STD_LOGIC;
  signal \q[119]_i_11_n_0\ : STD_LOGIC;
  signal \q[119]_i_12_n_0\ : STD_LOGIC;
  signal \q[119]_i_13_n_0\ : STD_LOGIC;
  signal \q[119]_i_14_n_0\ : STD_LOGIC;
  signal \q[119]_i_6_n_0\ : STD_LOGIC;
  signal \q[119]_i_7_n_0\ : STD_LOGIC;
  signal \q[119]_i_8_n_0\ : STD_LOGIC;
  signal \q[120]_i_10_n_0\ : STD_LOGIC;
  signal \q[120]_i_11_n_0\ : STD_LOGIC;
  signal \q[120]_i_16_n_0\ : STD_LOGIC;
  signal \q[120]_i_6_n_0\ : STD_LOGIC;
  signal \q[120]_i_7_n_0\ : STD_LOGIC;
  signal \q[120]_i_9_n_0\ : STD_LOGIC;
  signal \q[121]_i_10_n_0\ : STD_LOGIC;
  signal \q[121]_i_11_n_0\ : STD_LOGIC;
  signal \q[121]_i_12_n_0\ : STD_LOGIC;
  signal \q[121]_i_6_n_0\ : STD_LOGIC;
  signal \q[121]_i_7_n_0\ : STD_LOGIC;
  signal \q[121]_i_8_n_0\ : STD_LOGIC;
  signal \q[121]_i_9_n_0\ : STD_LOGIC;
  signal \q[122]_i_10_n_0\ : STD_LOGIC;
  signal \q[122]_i_11_n_0\ : STD_LOGIC;
  signal \q[122]_i_12_n_0\ : STD_LOGIC;
  signal \q[122]_i_6_n_0\ : STD_LOGIC;
  signal \q[122]_i_7_n_0\ : STD_LOGIC;
  signal \q[122]_i_8_n_0\ : STD_LOGIC;
  signal \q[122]_i_9_n_0\ : STD_LOGIC;
  signal \q[123]_i_10_n_0\ : STD_LOGIC;
  signal \q[123]_i_11_n_0\ : STD_LOGIC;
  signal \q[123]_i_12_n_0\ : STD_LOGIC;
  signal \q[123]_i_6_n_0\ : STD_LOGIC;
  signal \q[123]_i_7_n_0\ : STD_LOGIC;
  signal \q[123]_i_8_n_0\ : STD_LOGIC;
  signal \q[123]_i_9_n_0\ : STD_LOGIC;
  signal \q[124]_i_11_n_0\ : STD_LOGIC;
  signal \q[124]_i_12_n_0\ : STD_LOGIC;
  signal \q[124]_i_13_n_0\ : STD_LOGIC;
  signal \q[124]_i_6_n_0\ : STD_LOGIC;
  signal \q[124]_i_7_n_0\ : STD_LOGIC;
  signal \q[124]_i_8_n_0\ : STD_LOGIC;
  signal \q[124]_i_9_n_0\ : STD_LOGIC;
  signal \q[125]_i_10_n_0\ : STD_LOGIC;
  signal \q[125]_i_11_n_0\ : STD_LOGIC;
  signal \q[125]_i_12_n_0\ : STD_LOGIC;
  signal \q[125]_i_13_n_0\ : STD_LOGIC;
  signal \q[125]_i_14_n_0\ : STD_LOGIC;
  signal \q[125]_i_6_n_0\ : STD_LOGIC;
  signal \q[125]_i_7_n_0\ : STD_LOGIC;
  signal \q[125]_i_8_n_0\ : STD_LOGIC;
  signal \q[125]_i_9_n_0\ : STD_LOGIC;
  signal \q[126]_i_10_n_0\ : STD_LOGIC;
  signal \q[126]_i_11_n_0\ : STD_LOGIC;
  signal \q[126]_i_12_n_0\ : STD_LOGIC;
  signal \q[126]_i_13_n_0\ : STD_LOGIC;
  signal \q[126]_i_14_n_0\ : STD_LOGIC;
  signal \q[126]_i_6_n_0\ : STD_LOGIC;
  signal \q[126]_i_7_n_0\ : STD_LOGIC;
  signal \q[126]_i_8_n_0\ : STD_LOGIC;
  signal \q[126]_i_9_n_0\ : STD_LOGIC;
  signal \q[127]_i_10_n_0\ : STD_LOGIC;
  signal \q[127]_i_11_n_0\ : STD_LOGIC;
  signal \q[127]_i_12_n_0\ : STD_LOGIC;
  signal \q[127]_i_6_n_0\ : STD_LOGIC;
  signal \q[127]_i_7_n_0\ : STD_LOGIC;
  signal \q[127]_i_8_n_0\ : STD_LOGIC;
  signal \q[127]_i_9_n_0\ : STD_LOGIC;
  signal \q[128]_i_11_n_0\ : STD_LOGIC;
  signal \q[128]_i_12_n_0\ : STD_LOGIC;
  signal \q[128]_i_13_n_0\ : STD_LOGIC;
  signal \q[128]_i_14_n_0\ : STD_LOGIC;
  signal \q[128]_i_15_n_0\ : STD_LOGIC;
  signal \q[128]_i_16_n_0\ : STD_LOGIC;
  signal \q[128]_i_17_n_0\ : STD_LOGIC;
  signal \q[128]_i_6_n_0\ : STD_LOGIC;
  signal \q[128]_i_7_n_0\ : STD_LOGIC;
  signal \q[128]_i_8_n_0\ : STD_LOGIC;
  signal \q[128]_i_9_n_0\ : STD_LOGIC;
  signal \q[129]_i_10_n_0\ : STD_LOGIC;
  signal \q[129]_i_11_n_0\ : STD_LOGIC;
  signal \q[129]_i_12_n_0\ : STD_LOGIC;
  signal \q[129]_i_13_n_0\ : STD_LOGIC;
  signal \q[129]_i_14_n_0\ : STD_LOGIC;
  signal \q[129]_i_15_n_0\ : STD_LOGIC;
  signal \q[129]_i_16_n_0\ : STD_LOGIC;
  signal \q[129]_i_6_n_0\ : STD_LOGIC;
  signal \q[129]_i_7_n_0\ : STD_LOGIC;
  signal \q[129]_i_8_n_0\ : STD_LOGIC;
  signal \q[129]_i_9_n_0\ : STD_LOGIC;
  signal \q[130]_i_10_n_0\ : STD_LOGIC;
  signal \q[130]_i_11_n_0\ : STD_LOGIC;
  signal \q[130]_i_12_n_0\ : STD_LOGIC;
  signal \q[130]_i_6_n_0\ : STD_LOGIC;
  signal \q[130]_i_7_n_0\ : STD_LOGIC;
  signal \q[130]_i_8_n_0\ : STD_LOGIC;
  signal \q[130]_i_9_n_0\ : STD_LOGIC;
  signal \q[131]_i_10_n_0\ : STD_LOGIC;
  signal \q[131]_i_11_n_0\ : STD_LOGIC;
  signal \q[131]_i_6_n_0\ : STD_LOGIC;
  signal \q[131]_i_7_n_0\ : STD_LOGIC;
  signal \q[131]_i_8_n_0\ : STD_LOGIC;
  signal \q[131]_i_9_n_0\ : STD_LOGIC;
  signal \q[132]_i_11_n_0\ : STD_LOGIC;
  signal \q[132]_i_12_n_0\ : STD_LOGIC;
  signal \q[132]_i_13_n_0\ : STD_LOGIC;
  signal \q[132]_i_6_n_0\ : STD_LOGIC;
  signal \q[132]_i_7_n_0\ : STD_LOGIC;
  signal \q[132]_i_8_n_0\ : STD_LOGIC;
  signal \q[132]_i_9_n_0\ : STD_LOGIC;
  signal \q[133]_i_10_n_0\ : STD_LOGIC;
  signal \q[133]_i_11_n_0\ : STD_LOGIC;
  signal \q[133]_i_12_n_0\ : STD_LOGIC;
  signal \q[133]_i_6_n_0\ : STD_LOGIC;
  signal \q[133]_i_7_n_0\ : STD_LOGIC;
  signal \q[133]_i_8_n_0\ : STD_LOGIC;
  signal \q[133]_i_9_n_0\ : STD_LOGIC;
  signal \q[134]_i_10_n_0\ : STD_LOGIC;
  signal \q[134]_i_11_n_0\ : STD_LOGIC;
  signal \q[134]_i_8_n_0\ : STD_LOGIC;
  signal \q[134]_i_9_n_0\ : STD_LOGIC;
  signal \q[135]_i_11_n_0\ : STD_LOGIC;
  signal \q[135]_i_13_n_0\ : STD_LOGIC;
  signal \q[135]_i_14_n_0\ : STD_LOGIC;
  signal \q[135]_i_15_n_0\ : STD_LOGIC;
  signal \q[135]_i_16_n_0\ : STD_LOGIC;
  signal \q[136]_i_10_n_0\ : STD_LOGIC;
  signal \q[136]_i_12_n_0\ : STD_LOGIC;
  signal \q[136]_i_17_n_0\ : STD_LOGIC;
  signal \q[136]_i_18_n_0\ : STD_LOGIC;
  signal \q[136]_i_19_n_0\ : STD_LOGIC;
  signal \q[136]_i_20_n_0\ : STD_LOGIC;
  signal \q[136]_i_21_n_0\ : STD_LOGIC;
  signal \q[136]_i_22_n_0\ : STD_LOGIC;
  signal \q[136]_i_23_n_0\ : STD_LOGIC;
  signal \q[136]_i_24_n_0\ : STD_LOGIC;
  signal \q[136]_i_25_n_0\ : STD_LOGIC;
  signal \q[136]_i_8_n_0\ : STD_LOGIC;
  signal \q[136]_i_9_n_0\ : STD_LOGIC;
  signal \q[15]_i_16_n_0\ : STD_LOGIC;
  signal \q[15]_i_17_n_0\ : STD_LOGIC;
  signal \q[15]_i_20_n_0\ : STD_LOGIC;
  signal \q[15]_i_21_n_0\ : STD_LOGIC;
  signal \q[15]_i_22_n_0\ : STD_LOGIC;
  signal \q[15]_i_23_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_26_n_0\ : STD_LOGIC;
  signal \q[31]_i_29_n_0\ : STD_LOGIC;
  signal \q[31]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_7_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_4\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_5\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_6\ : STD_LOGIC;
  signal \q_reg[108]_i_8_n_7\ : STD_LOGIC;
  signal \q_reg[112]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[112]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[112]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[112]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[112]_i_10_n_7\ : STD_LOGIC;
  signal \q_reg[116]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[116]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[116]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[116]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[120]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[120]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[120]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[120]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[124]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[124]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[124]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[124]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[128]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[128]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[128]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[128]_i_10_n_3\ : STD_LOGIC;
  signal \^q_reg[12]_29\ : STD_LOGIC;
  signal \^q_reg[12]_6\ : STD_LOGIC;
  signal \^q_reg[12]_7\ : STD_LOGIC;
  signal \q_reg[132]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[132]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[132]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[132]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[136]_i_14_n_0\ : STD_LOGIC;
  signal \q_reg[136]_i_14_n_1\ : STD_LOGIC;
  signal \q_reg[136]_i_14_n_2\ : STD_LOGIC;
  signal \q_reg[136]_i_14_n_3\ : STD_LOGIC;
  signal \^q_reg[147]_0\ : STD_LOGIC;
  signal \^q_reg[150]_1\ : STD_LOGIC;
  signal \^q_reg[157]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[164]_0\ : STD_LOGIC;
  signal \^q_reg[165]_0\ : STD_LOGIC;
  signal \^q_reg[175]_1\ : STD_LOGIC;
  signal \^q_reg[177]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[19]\ : STD_LOGIC;
  signal \^q_reg[36]_0\ : STD_LOGIC;
  signal \^q_reg[36]_5\ : STD_LOGIC;
  signal \^q_reg[37]_0\ : STD_LOGIC;
  signal \^q_reg[37]_3\ : STD_LOGIC;
  signal \^q_reg[38]_0\ : STD_LOGIC;
  signal \^q_reg[39]_0\ : STD_LOGIC;
  signal \NLW_q_reg[31]_i_27_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[31]_i_27_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[105]_i_11\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \q[105]_i_12\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[105]_i_18\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[105]_i_22\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[107]_i_13\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[108]_i_19\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[111]_i_12\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[111]_i_7\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[112]_i_17\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[112]_i_7\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[116]_i_6\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[116]_i_7\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[118]_i_14\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[118]_i_6\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[118]_i_7\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[119]_i_12\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[119]_i_14\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[121]_i_12\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[121]_i_7\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[122]_i_11\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[122]_i_7\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[123]_i_11\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[123]_i_7\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[124]_i_12\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[124]_i_7\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[125]_i_11\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[125]_i_7\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[126]_i_11\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[126]_i_12\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[126]_i_7\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[127]_i_12\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[127]_i_7\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[128]_i_15\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[128]_i_7\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[129]_i_7\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[130]_i_6\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[130]_i_7\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[131]_i_6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[131]_i_7\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[132]_i_6\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[132]_i_7\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[133]_i_6\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[133]_i_7\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[134]_i_7\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[135]_i_15\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[135]_i_9\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[136]_i_10\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[136]_i_12\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[31]_i_26\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[31]_i_31\ : label is "soft_lutpair104";
begin
  Q(63 downto 0) <= \^q\(63 downto 0);
  \q_reg[12]_29\ <= \^q_reg[12]_29\;
  \q_reg[12]_6\ <= \^q_reg[12]_6\;
  \q_reg[12]_7\ <= \^q_reg[12]_7\;
  \q_reg[147]_0\ <= \^q_reg[147]_0\;
  \q_reg[150]_1\ <= \^q_reg[150]_1\;
  \q_reg[157]_0\(3 downto 0) <= \^q_reg[157]_0\(3 downto 0);
  \q_reg[164]_0\ <= \^q_reg[164]_0\;
  \q_reg[165]_0\ <= \^q_reg[165]_0\;
  \q_reg[175]_1\ <= \^q_reg[175]_1\;
  \q_reg[177]_1\(3 downto 0) <= \^q_reg[177]_1\(3 downto 0);
  \q_reg[19]\ <= \^q_reg[19]\;
  \q_reg[36]_0\ <= \^q_reg[36]_0\;
  \q_reg[36]_5\ <= \^q_reg[36]_5\;
  \q_reg[37]_0\ <= \^q_reg[37]_0\;
  \q_reg[37]_3\ <= \^q_reg[37]_3\;
  \q_reg[38]_0\ <= \^q_reg[38]_0\;
  \q_reg[39]_0\ <= \^q_reg[39]_0\;
\i__carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(46),
      I2 => \^q\(47),
      I3 => \^q\(15),
      I4 => \q_reg[32]\(0),
      O => \q_reg[49]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(44),
      I2 => \^q\(45),
      I3 => \^q\(13),
      I4 => \q_reg[32]\(0),
      O => \q_reg[49]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(42),
      I2 => \^q\(43),
      I3 => \^q\(11),
      I4 => \q_reg[32]\(0),
      O => \q_reg[49]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(40),
      I2 => \^q\(41),
      I3 => \^q\(9),
      I4 => \q_reg[32]\(0),
      O => \q_reg[49]_0\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(47),
      I1 => \^q\(15),
      I2 => \^q\(46),
      I3 => \^q\(14),
      I4 => \q_reg[32]\(0),
      O => \q_reg[161]_0\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(45),
      I1 => \^q\(13),
      I2 => \^q\(44),
      I3 => \^q\(12),
      I4 => \q_reg[32]\(0),
      O => \q_reg[161]_0\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(43),
      I1 => \^q\(11),
      I2 => \^q\(42),
      I3 => \^q\(10),
      I4 => \q_reg[32]\(0),
      O => \q_reg[161]_0\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(9),
      I2 => \^q\(40),
      I3 => \^q\(8),
      I4 => \q_reg[32]\(0),
      O => \q_reg[161]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(54),
      I2 => \^q\(55),
      I3 => \^q\(23),
      I4 => \q_reg[32]\(0),
      O => \q_reg[57]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(52),
      I2 => \^q\(53),
      I3 => \^q\(21),
      I4 => \q_reg[32]\(0),
      O => \q_reg[57]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(50),
      I2 => \^q\(51),
      I3 => \^q\(19),
      I4 => \q_reg[32]\(0),
      O => \q_reg[57]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(48),
      I2 => \^q\(49),
      I3 => \^q\(17),
      I4 => \q_reg[32]\(0),
      O => \q_reg[57]_0\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(54),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(23),
      I4 => \^q\(55),
      O => \q_reg[57]_1\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(52),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(21),
      I4 => \^q\(53),
      O => \q_reg[57]_1\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(50),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(19),
      I4 => \^q\(51),
      O => \q_reg[57]_1\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(48),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(17),
      I4 => \^q\(49),
      O => \q_reg[57]_1\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(62),
      I2 => \^q\(63),
      I3 => \^q\(31),
      I4 => \q_reg[32]\(0),
      O => \q_reg[65]_0\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(60),
      I2 => \^q\(61),
      I3 => \^q\(29),
      I4 => \q_reg[32]\(0),
      O => \q_reg[65]_0\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(58),
      I2 => \^q\(59),
      I3 => \^q\(27),
      I4 => \q_reg[32]\(0),
      O => \q_reg[65]_0\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(56),
      I2 => \^q\(57),
      I3 => \^q\(25),
      I4 => \q_reg[32]\(0),
      O => \q_reg[65]_0\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90030903"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(62),
      I2 => \^q\(63),
      I3 => \q_reg[32]\(0),
      I4 => \^q\(31),
      O => \q_reg[65]_1\(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(60),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(29),
      I4 => \^q\(61),
      O => \q_reg[65]_1\(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(58),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(27),
      I4 => \^q\(59),
      O => \q_reg[65]_1\(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(56),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(25),
      I4 => \^q\(57),
      O => \q_reg[65]_1\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(38),
      I2 => \^q\(39),
      I3 => \^q\(7),
      I4 => \q_reg[32]\(0),
      O => DI(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(5),
      I4 => \q_reg[32]\(0),
      O => DI(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^q\(3),
      I4 => \q_reg[32]\(0),
      O => DI(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F020000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \^q\(1),
      I4 => \q_reg[32]\(0),
      O => DI(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000393"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(38),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(7),
      I4 => \^q\(39),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000595"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(4),
      I2 => \q_reg[32]\(0),
      I3 => \^q\(5),
      I4 => \^q\(37),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(3),
      I2 => \^q\(34),
      I3 => \^q\(2),
      I4 => \q_reg[32]\(0),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090505"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(1),
      I2 => \^q\(32),
      I3 => \^q\(0),
      I4 => \q_reg[32]\(0),
      O => S(0)
    );
\jalrTarget_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q\(7),
      O => \q_reg[153]_1\(3)
    );
\jalrTarget_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(38),
      I1 => \^q\(6),
      O => \q_reg[153]_1\(2)
    );
\jalrTarget_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(5),
      O => \q_reg[153]_1\(1)
    );
\jalrTarget_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(4),
      O => \q_reg[153]_1\(0)
    );
\jalrTarget_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(43),
      I1 => \^q\(11),
      O => \q_reg[157]_1\(3)
    );
\jalrTarget_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(42),
      I1 => \^q\(10),
      O => \q_reg[157]_1\(2)
    );
\jalrTarget_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(9),
      O => \q_reg[157]_1\(1)
    );
\jalrTarget_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(8),
      O => \q_reg[157]_1\(0)
    );
\jalrTarget_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(47),
      I1 => \^q\(15),
      O => \q_reg[161]_2\(3)
    );
\jalrTarget_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(46),
      I1 => \^q\(14),
      O => \q_reg[161]_2\(2)
    );
\jalrTarget_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(45),
      I1 => \^q\(13),
      O => \q_reg[161]_2\(1)
    );
\jalrTarget_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(44),
      I1 => \^q\(12),
      O => \q_reg[161]_2\(0)
    );
\jalrTarget_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(51),
      I1 => \^q\(19),
      O => \q_reg[165]_2\(3)
    );
\jalrTarget_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(50),
      I1 => \^q\(18),
      O => \q_reg[165]_2\(2)
    );
\jalrTarget_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(49),
      I1 => \^q\(17),
      O => \q_reg[165]_2\(1)
    );
\jalrTarget_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^q\(16),
      O => \q_reg[165]_2\(0)
    );
\jalrTarget_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(23),
      O => \q_reg[169]_1\(3)
    );
\jalrTarget_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(54),
      I1 => \^q\(22),
      O => \q_reg[169]_1\(2)
    );
\jalrTarget_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(53),
      I1 => \^q\(21),
      O => \q_reg[169]_1\(1)
    );
\jalrTarget_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(52),
      I1 => \^q\(20),
      O => \q_reg[169]_1\(0)
    );
\jalrTarget_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(27),
      O => \q_reg[173]_1\(3)
    );
\jalrTarget_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(26),
      O => \q_reg[173]_1\(2)
    );
\jalrTarget_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(57),
      I1 => \^q\(25),
      O => \q_reg[173]_1\(1)
    );
\jalrTarget_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(56),
      I1 => \^q\(24),
      O => \q_reg[173]_1\(0)
    );
\jalrTarget_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(63),
      I1 => \^q\(31),
      O => \q_reg[177]_2\(3)
    );
\jalrTarget_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(30),
      O => \q_reg[177]_2\(2)
    );
\jalrTarget_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(29),
      O => \q_reg[177]_2\(1)
    );
\jalrTarget_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(28),
      O => \q_reg[177]_2\(0)
    );
jalrTarget_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(3),
      O => \q_reg[149]_1\(3)
    );
jalrTarget_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(2),
      O => \q_reg[149]_1\(2)
    );
jalrTarget_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(1),
      O => \q_reg[149]_1\(1)
    );
jalrTarget_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(0),
      O => \q_reg[149]_1\(0)
    );
\q[105]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF0EEEE"
    )
        port map (
      I0 => \q[105]_i_19_n_0\,
      I1 => \q[105]_i_20_n_0\,
      I2 => \q[105]_i_21_n_0\,
      I3 => \q[105]_i_22_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \^q_reg[36]_0\,
      O => \q[105]_i_10_n_0\
    );
\q[105]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \q_reg[118]\,
      I1 => \^q\(0),
      I2 => \^q\(32),
      O => \alu/result00_out\(0)
    );
\q[105]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(31),
      I1 => \q_reg[118]\,
      O => \SrcBE__0\(31)
    );
\q[105]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(48),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(56),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(40),
      O => \q[105]_i_14_n_0\
    );
\q[105]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(49),
      I1 => \^q\(33),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[105]_i_15_n_0\
    );
\q[105]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(4),
      I2 => \^q\(57),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(3),
      O => \q[105]_i_16_n_0\
    );
\q[105]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(53),
      I1 => \^q\(37),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[105]_i_17_n_0\
    );
\q[105]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \^q\(45),
      I1 => \^q\(4),
      I2 => \^q\(61),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(3),
      O => \q[105]_i_18_n_0\
    );
\q[105]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^q\(32),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[105]_i_19_n_0\
    );
\q[105]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(4),
      I2 => \^q\(56),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(3),
      O => \q[105]_i_20_n_0\
    );
\q[105]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(52),
      I1 => \^q\(36),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[105]_i_21_n_0\
    );
\q[105]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => \^q\(44),
      I1 => \^q\(4),
      I2 => \^q\(60),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(3),
      O => \q[105]_i_22_n_0\
    );
\q[105]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232320232020202"
    )
        port map (
      I0 => \q_reg[108]_i_8_n_7\,
      I1 => \q_reg[32]\(3),
      I2 => \q_reg[32]\(2),
      I3 => SrcBE(0),
      I4 => \q_reg[32]\(1),
      I5 => \^q\(32),
      O => \q_reg[14]\
    );
\q[105]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFAFA0EFE0AFA0"
    )
        port map (
      I0 => \q[105]_i_9_n_0\,
      I1 => \q[108]_i_11_n_0\,
      I2 => SrcBE(0),
      I3 => \q[105]_i_10_n_0\,
      I4 => \^q_reg[36]_0\,
      I5 => \q[107]_i_10_n_0\,
      O => data6(0)
    );
\q[105]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \q_reg[135]\,
      I1 => \^q_reg[37]_3\,
      I2 => \^q_reg[36]_0\,
      I3 => \q_reg[32]\(2),
      I4 => \^q\(32),
      I5 => \q[135]_i_15_n_0\,
      O => \q_reg[13]\
    );
\q[105]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFA0ACAFAFA0A0A"
    )
        port map (
      I0 => \alu/result00_out\(0),
      I1 => \^q\(63),
      I2 => \q_reg[32]\(1),
      I3 => \SrcBE__0\(31),
      I4 => \^q_reg[177]_1\(3),
      I5 => p_4_in,
      O => \q_reg[177]_0\
    );
\q[105]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD8F0F000D8F0F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q[109]_i_11_n_0\,
      I2 => \q[105]_i_14_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[107]_0\,
      I5 => \q[107]_i_10_n_0\,
      O => \q_reg[37]_2\
    );
\q[105]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF0EEEE"
    )
        port map (
      I0 => \q[105]_i_15_n_0\,
      I1 => \q[105]_i_16_n_0\,
      I2 => \q[105]_i_17_n_0\,
      I3 => \q[105]_i_18_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \^q_reg[36]_0\,
      O => \q[105]_i_9_n_0\
    );
\q[106]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A000000000000"
    )
        port map (
      I0 => \q_reg[135]_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(2),
      I4 => \^q\(32),
      I5 => \q[135]_i_15_n_0\,
      O => \q[106]_i_10_n_0\
    );
\q[106]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(49),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(57),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(41),
      O => \q[106]_i_11_n_0\
    );
\q[106]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \q_reg[106]_2\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[106]_i_8_n_0\,
      I3 => \q_reg[106]_1\,
      I4 => \q[107]_i_7_n_0\,
      I5 => \q[106]_i_10_n_0\,
      O => \q_reg[12]_21\
    );
\q[106]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[108]_i_8_n_6\,
      I1 => \^q_reg[36]_0\,
      I2 => \^q\(33),
      I3 => \q_reg[32]\(3),
      I4 => \q_reg[32]\(1),
      I5 => \q_reg[32]\(2),
      O => \q_reg[147]_3\
    );
\q[106]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000C000C000C00"
    )
        port map (
      I0 => \q[107]_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(0),
      O => \q_reg[12]\
    );
\q[106]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD8F0F000D8F0F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q[110]_i_10_n_0\,
      I2 => \q[106]_i_11_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[107]_0\,
      I5 => \q[108]_i_11_n_0\,
      O => \^q_reg[37]_0\
    );
\q[106]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A000000000000"
    )
        port map (
      I0 => \q_reg[135]\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(2),
      I4 => \^q\(33),
      I5 => \q[135]_i_15_n_0\,
      O => \q[106]_i_8_n_0\
    );
\q[107]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFAFA0EFE0AFA0"
    )
        port map (
      I0 => \q[107]_i_11_n_0\,
      I1 => \q[119]_i_14_n_0\,
      I2 => \^q_reg[37]_3\,
      I3 => \q[107]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[107]_i_13_n_0\,
      O => \q[107]_i_10_n_0\
    );
\q[107]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(54),
      I1 => \^q\(38),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[107]_i_11_n_0\
    );
\q[107]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(50),
      I1 => \^q\(34),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[107]_i_12_n_0\
    );
\q[107]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(4),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(42),
      O => \q[107]_i_13_n_0\
    );
\q[107]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFECCFEFCCECCCE"
    )
        port map (
      I0 => \q[108]_i_6_n_0\,
      I1 => \q[107]_i_6_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[108]_i_7_n_0\,
      I5 => \q[107]_i_7_n_0\,
      O => \q_reg[12]_22\
    );
\q[107]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[108]_i_8_n_5\,
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(34),
      I3 => \q_reg[32]\(3),
      I4 => \q_reg[32]\(1),
      I5 => \q_reg[32]\(2),
      O => \q_reg[148]_0\
    );
\q[107]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[107]_i_9_n_0\,
      I1 => \q[108]_i_10_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(0),
      O => \q_reg[12]_0\
    );
\q[107]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3700000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(2),
      I3 => \q_reg[135]_0\,
      I4 => \^q\(33),
      I5 => \q[135]_i_15_n_0\,
      O => \q[107]_i_6_n_0\
    );
\q[107]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \q[113]_i_9_n_0\,
      I1 => \^q\(2),
      I2 => \q[109]_i_11_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \q[107]_i_10_n_0\,
      O => \q[107]_i_7_n_0\
    );
\q[107]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg[106]_0\,
      O => \^q_reg[37]_3\
    );
\q[107]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \q[113]_i_10_n_0\,
      I1 => \^q\(2),
      I2 => \q[109]_i_11_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[107]_0\,
      I5 => \q[107]_i_10_n_0\,
      O => \q[107]_i_9_n_0\
    );
\q[108]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \q[114]_i_13_n_0\,
      I1 => \^q\(2),
      I2 => \q[110]_i_10_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[107]_0\,
      I5 => \q[108]_i_11_n_0\,
      O => \q[108]_i_10_n_0\
    );
\q[108]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFAFA0EFE0AFA0"
    )
        port map (
      I0 => \q[108]_i_17_n_0\,
      I1 => \q[116]_i_17_n_0\,
      I2 => \^q_reg[37]_3\,
      I3 => \q[108]_i_18_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[108]_i_19_n_0\,
      O => \q[108]_i_11_n_0\
    );
\q[108]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(39),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[108]_i_17_n_0\
    );
\q[108]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACC0CCC"
    )
        port map (
      I0 => \^q\(51),
      I1 => \^q\(35),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[108]_i_18_n_0\
    );
\q[108]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(4),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(43),
      O => \q[108]_i_19_n_0\
    );
\q[108]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[108]_i_6_n_0\,
      I1 => \q[109]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[109]_i_8_n_0\,
      I5 => \q[108]_i_7_n_0\,
      O => \q_reg[12]_23\
    );
\q[108]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[108]_i_8_n_4\,
      I1 => \^q_reg[38]_0\,
      I2 => \^q\(35),
      I3 => \q_reg[32]\(3),
      I4 => \q_reg[32]\(1),
      I5 => \q_reg[32]\(2),
      O => \q_reg[149]_0\
    );
\q[108]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[108]_i_10_n_0\,
      I1 => \^q_reg[164]_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(0),
      O => \q_reg[12]_1\
    );
\q[108]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888C0888888"
    )
        port map (
      I0 => \^q\(34),
      I1 => \q[135]_i_15_n_0\,
      I2 => \^q\(32),
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(2),
      O => \q[108]_i_6_n_0\
    );
\q[108]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \q[114]_i_11_n_0\,
      I1 => \^q\(2),
      I2 => \q[110]_i_10_n_0\,
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \q[108]_i_11_n_0\,
      O => \q[108]_i_7_n_0\
    );
\q[108]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \q_reg[106]_0\,
      O => \^q_reg[38]_0\
    );
\q[109]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      O => \^q_reg[39]_0\
    );
\q[109]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(52),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(60),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(44),
      O => \q[109]_i_11_n_0\
    );
\q[109]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[109]_i_8_n_0\,
      I1 => \q[110]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[110]_i_8_n_0\,
      I5 => \q[109]_i_9_n_0\,
      O => \q_reg[12]_24\
    );
\q[109]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[112]_i_10_n_7\,
      I1 => \^q_reg[39]_0\,
      I2 => \^q\(36),
      I3 => \q_reg[32]\(3),
      I4 => \q_reg[32]\(1),
      I5 => \q_reg[32]\(2),
      O => \^q_reg[150]_1\
    );
\q[109]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[115]_i_12_n_0\,
      I1 => \q[111]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[113]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[109]_i_11_n_0\,
      O => \^q_reg[164]_0\
    );
\q[109]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[115]_i_10_n_0\,
      I1 => \q[111]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[113]_i_9_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[109]_i_11_n_0\,
      O => \q[109]_i_8_n_0\
    );
\q[109]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888C0888888"
    )
        port map (
      I0 => \^q\(35),
      I1 => \q[135]_i_15_n_0\,
      I2 => \^q\(33),
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(2),
      O => \q[109]_i_9_n_0\
    );
\q[110]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(53),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(61),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(45),
      O => \q[110]_i_10_n_0\
    );
\q[110]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[111]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \^q_reg[165]_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[110]_i_7_n_0\,
      O => \q_reg[12]_2\
    );
\q[110]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[110]_i_8_n_0\,
      I1 => \^q_reg[147]_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[111]_i_8_n_0\,
      I5 => \q[110]_i_9_n_0\,
      O => \q_reg[12]_25\
    );
\q[110]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[116]_i_16_n_0\,
      I1 => \q[112]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[114]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[110]_i_10_n_0\,
      O => \^q_reg[165]_0\
    );
\q[110]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[106]_0\,
      I1 => \^q\(5),
      I2 => \^q\(37),
      O => \q[110]_i_7_n_0\
    );
\q[110]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[114]_i_9_n_0\,
      I1 => \q[112]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[114]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[110]_i_10_n_0\,
      O => \q[110]_i_8_n_0\
    );
\q[110]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(36),
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(34),
      I4 => \^q_reg[36]_0\,
      I5 => \^q_reg[37]_3\,
      O => \q[110]_i_9_n_0\
    );
\q[111]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(38),
      I1 => \^q\(54),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(62),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(46),
      O => \q[111]_i_10_n_0\
    );
\q[111]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACAFFFF0ACA0000"
    )
        port map (
      I0 => \q[111]_i_12_n_0\,
      I1 => \^q\(52),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[113]_i_9_n_0\,
      O => \q[111]_i_11_n_0\
    );
\q[111]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(4),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(44),
      O => \q[111]_i_12_n_0\
    );
\q[111]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[112]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[111]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[111]_i_7_n_0\,
      O => \q_reg[12]_3\
    );
\q[111]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[111]_i_8_n_0\,
      I1 => \q[112]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \^q_reg[36]_5\,
      I5 => \^q_reg[147]_0\,
      O => \q_reg[12]_26\
    );
\q[111]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[117]_i_13_n_0\,
      I1 => \q[113]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[115]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[111]_i_10_n_0\,
      O => \q[111]_i_6_n_0\
    );
\q[111]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[106]_0\,
      I1 => \^q\(6),
      I2 => \^q\(38),
      O => \q[111]_i_7_n_0\
    );
\q[111]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[111]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[115]_i_10_n_0\,
      I4 => \^q\(2),
      I5 => \q[111]_i_10_n_0\,
      O => \q[111]_i_8_n_0\
    );
\q[111]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(37),
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(35),
      I4 => \^q_reg[36]_0\,
      I5 => \^q_reg[37]_3\,
      O => \^q_reg[147]_0\
    );
\q[112]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC0C0CFA0AFA0A"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q\(55),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(47),
      I4 => \^q\(63),
      I5 => \^q_reg[39]_0\,
      O => \q[112]_i_11_n_0\
    );
\q[112]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACAFFFF0ACA0000"
    )
        port map (
      I0 => \q[112]_i_17_n_0\,
      I1 => \^q\(53),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[114]_i_11_n_0\,
      O => \q[112]_i_12_n_0\
    );
\q[112]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(4),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(45),
      O => \q[112]_i_17_n_0\
    );
\q[112]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[113]_i_8_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[112]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[112]_i_7_n_0\,
      O => \q_reg[12]_4\
    );
\q[112]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \^q_reg[36]_5\,
      I1 => \q[113]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[113]_i_6_n_0\,
      I5 => \q[112]_i_9_n_0\,
      O => \q_reg[12]_27\
    );
\q[112]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[118]_i_15_n_0\,
      I1 => \q[114]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[116]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[112]_i_11_n_0\,
      O => \q[112]_i_6_n_0\
    );
\q[112]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[106]_0\,
      I1 => \^q\(7),
      I2 => \^q\(39),
      O => \q[112]_i_7_n_0\
    );
\q[112]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[112]_i_12_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[114]_i_9_n_0\,
      I4 => \^q\(2),
      I5 => \q[112]_i_11_n_0\,
      O => \^q_reg[36]_5\
    );
\q[112]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q_reg[37]_3\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(36),
      I4 => \^q_reg[36]_0\,
      I5 => \q[114]_i_12_n_0\,
      O => \q[112]_i_9_n_0\
    );
\q[113]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(56),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(40),
      O => \q[113]_i_10_n_0\
    );
\q[113]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[113]_i_6_n_0\,
      I1 => \q[114]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[114]_i_6_n_0\,
      I5 => \q[113]_i_7_n_0\,
      O => \q_reg[12]_28\
    );
\q[113]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[113]_i_8_n_0\,
      I1 => \q[114]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(0),
      O => \^q_reg[12]_6\
    );
\q[113]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[119]_i_11_n_0\,
      I1 => \q[115]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[115]_i_9_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[113]_i_9_n_0\,
      O => \q[113]_i_6_n_0\
    );
\q[113]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q_reg[37]_3\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(37),
      I4 => \^q_reg[36]_0\,
      I5 => \q[115]_i_11_n_0\,
      O => \q[113]_i_7_n_0\
    );
\q[113]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[118]_i_16_n_0\,
      I1 => \q[115]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[117]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[113]_i_10_n_0\,
      O => \q[113]_i_8_n_0\
    );
\q[113]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(56),
      I1 => \^q\(40),
      I2 => \^q\(48),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[113]_i_9_n_0\
    );
\q[114]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(45),
      I2 => \^q\(53),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[114]_i_10_n_0\
    );
\q[114]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(57),
      I1 => \^q\(41),
      I2 => \^q\(49),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[114]_i_11_n_0\
    );
\q[114]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FBF00000080"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(38),
      O => \q[114]_i_12_n_0\
    );
\q[114]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(49),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(57),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(41),
      O => \q[114]_i_13_n_0\
    );
\q[114]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[114]_i_6_n_0\,
      I1 => \q[115]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[115]_i_6_n_0\,
      I5 => \q[114]_i_7_n_0\,
      O => \^q_reg[12]_29\
    );
\q[114]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[114]_i_8_n_0\,
      I1 => \q[115]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(0),
      O => \^q_reg[12]_7\
    );
\q[114]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_10_n_0\,
      I1 => \q[114]_i_9_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[114]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[114]_i_11_n_0\,
      O => \q[114]_i_6_n_0\
    );
\q[114]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \q[114]_i_12_n_0\,
      I1 => \^q_reg[36]_0\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(36),
      I4 => \^q_reg[37]_3\,
      I5 => \q[120]_i_11_n_0\,
      O => \q[114]_i_7_n_0\
    );
\q[114]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_16_n_0\,
      I1 => \q[116]_i_16_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[118]_i_15_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[114]_i_13_n_0\,
      O => \q[114]_i_8_n_0\
    );
\q[114]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(43),
      I2 => \^q\(51),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[114]_i_9_n_0\
    );
\q[115]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(42),
      I2 => \^q\(50),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[115]_i_10_n_0\
    );
\q[115]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FBF00000080"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(39),
      O => \q[115]_i_11_n_0\
    );
\q[115]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(50),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(58),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(42),
      O => \q[115]_i_12_n_0\
    );
\q[115]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[115]_i_6_n_0\,
      I1 => \q[116]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[116]_i_6_n_0\,
      I5 => \q[115]_i_7_n_0\,
      O => \q_reg[12]_30\
    );
\q[115]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[115]_i_8_n_0\,
      I1 => \q[116]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[118]\,
      I5 => \^q\(0),
      O => \q_reg[12]_8\
    );
\q[115]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_11_n_0\,
      I1 => \q[115]_i_9_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[119]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[115]_i_10_n_0\,
      O => \q[115]_i_6_n_0\
    );
\q[115]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \q[115]_i_11_n_0\,
      I1 => \^q_reg[36]_0\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(37),
      I4 => \^q_reg[37]_3\,
      I5 => \q[121]_i_12_n_0\,
      O => \q[115]_i_7_n_0\
    );
\q[115]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_10_n_0\,
      I1 => \q[117]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[118]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[115]_i_12_n_0\,
      O => \q[115]_i_8_n_0\
    );
\q[115]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(44),
      I2 => \^q\(52),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[115]_i_9_n_0\
    );
\q[116]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACAFFFF0ACA0000"
    )
        port map (
      I0 => \q[116]_i_17_n_0\,
      I1 => \^q\(55),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[114]_i_9_n_0\,
      O => \q[116]_i_10_n_0\
    );
\q[116]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(40),
      I3 => \^q\(32),
      I4 => \^q_reg[38]_0\,
      I5 => \^q_reg[39]_0\,
      O => \q[116]_i_11_n_0\
    );
\q[116]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(51),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(59),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(43),
      O => \q[116]_i_16_n_0\
    );
\q[116]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^q\(47),
      I1 => \^q\(63),
      I2 => \^q\(4),
      I3 => \q_reg[107]_0\,
      O => \q[116]_i_17_n_0\
    );
\q[116]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[116]_i_6_n_0\,
      I1 => \q[117]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[117]_i_6_n_0\,
      I5 => \q[116]_i_7_n_0\,
      O => \q_reg[12]_31\
    );
\q[116]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[116]_i_9_n_0\,
      I1 => \q[117]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[118]\,
      I5 => \^q\(0),
      O => \q_reg[12]_9\
    );
\q[116]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[118]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[116]_i_10_n_0\,
      O => \q[116]_i_6_n_0\
    );
\q[116]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[116]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[118]_i_12_n_0\,
      O => \q[116]_i_7_n_0\
    );
\q[116]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_10_n_0\,
      I1 => \q[118]_i_15_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[120]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[116]_i_16_n_0\,
      O => \q[116]_i_9_n_0\
    );
\q[117]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^q\(56),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[115]_i_9_n_0\,
      O => \q[117]_i_10_n_0\
    );
\q[117]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(41),
      I3 => \^q\(33),
      I4 => \^q_reg[38]_0\,
      I5 => \^q_reg[39]_0\,
      O => \q[117]_i_11_n_0\
    );
\q[117]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(43),
      I3 => \^q\(35),
      I4 => \^q_reg[38]_0\,
      I5 => \^q_reg[39]_0\,
      O => \q[117]_i_12_n_0\
    );
\q[117]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(52),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(60),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(44),
      O => \q[117]_i_13_n_0\
    );
\q[117]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[117]_i_6_n_0\,
      I1 => \q[118]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[118]_i_6_n_0\,
      I5 => \q[117]_i_7_n_0\,
      O => \q_reg[12]_32\
    );
\q[117]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[117]_i_8_n_0\,
      I1 => \q[118]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[118]\,
      I5 => \^q\(0),
      O => \q_reg[12]_10\
    );
\q[117]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[117]_i_9_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[117]_i_10_n_0\,
      O => \q[117]_i_6_n_0\
    );
\q[117]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[117]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[117]_i_12_n_0\,
      O => \q[117]_i_7_n_0\
    );
\q[117]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[123]_i_10_n_0\,
      I1 => \q[118]_i_16_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[121]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[117]_i_13_n_0\,
      O => \q[117]_i_8_n_0\
    );
\q[117]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q\(50),
      I1 => \^q\(58),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[119]_i_11_n_0\,
      O => \q[117]_i_9_n_0\
    );
\q[118]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q\(51),
      I1 => \^q\(59),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[120]_i_10_n_0\,
      O => \q[118]_i_10_n_0\
    );
\q[118]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q\(49),
      I1 => \^q\(57),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[114]_i_10_n_0\,
      O => \q[118]_i_11_n_0\
    );
\q[118]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q\(38),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(42),
      I3 => \^q\(34),
      I4 => \^q_reg[38]_0\,
      I5 => \^q_reg[39]_0\,
      O => \q[118]_i_12_n_0\
    );
\q[118]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(32),
      I2 => \^q_reg[38]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[124]_i_13_n_0\,
      O => \q[118]_i_13_n_0\
    );
\q[118]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[124]_i_11_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[120]_i_16_n_0\,
      O => \q[118]_i_14_n_0\
    );
\q[118]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(53),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(61),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(45),
      O => \q[118]_i_15_n_0\
    );
\q[118]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(54),
      I1 => \^q\(63),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(62),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(46),
      O => \q[118]_i_16_n_0\
    );
\q[118]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[118]_i_6_n_0\,
      I1 => \q[119]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[119]_i_6_n_0\,
      I5 => \q[118]_i_7_n_0\,
      O => \q_reg[12]_33\
    );
\q[118]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[118]_i_8_n_0\,
      I1 => \q[118]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[118]\,
      I5 => \^q\(0),
      O => \q_reg[12]_11\
    );
\q[118]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[118]_i_10_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[118]_i_11_n_0\,
      O => \q[118]_i_6_n_0\
    );
\q[118]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[118]_i_12_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[118]_i_13_n_0\,
      O => \q[118]_i_7_n_0\
    );
\q[118]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[118]_i_14_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[122]_i_10_n_0\,
      I4 => \^q\(2),
      I5 => \q[118]_i_15_n_0\,
      O => \q[118]_i_8_n_0\
    );
\q[118]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[119]_i_8_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[123]_i_10_n_0\,
      I4 => \^q\(2),
      I5 => \q[118]_i_16_n_0\,
      O => \q[118]_i_9_n_0\
    );
\q[119]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[123]_i_10_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[119]_i_13_n_0\,
      I4 => \^q\(3),
      I5 => \q[119]_i_14_n_0\,
      O => \q[119]_i_10_n_0\
    );
\q[119]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(46),
      I2 => \^q\(54),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[119]_i_11_n_0\
    );
\q[119]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(39),
      O => \q[119]_i_12_n_0\
    );
\q[119]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^q\(54),
      I1 => \^q\(63),
      I2 => \^q\(4),
      I3 => \q_reg[106]_0\,
      O => \q[119]_i_13_n_0\
    );
\q[119]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(4),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(46),
      O => \q[119]_i_14_n_0\
    );
\q[119]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[119]_i_6_n_0\,
      I1 => \q[120]_i_7_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[120]_i_6_n_0\,
      I5 => \q[119]_i_7_n_0\,
      O => \q_reg[12]_34\
    );
\q[119]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \q[119]_i_8_n_0\,
      I1 => \^q_reg[36]_0\,
      I2 => \q[119]_i_10_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q[120]_i_9_n_0\,
      I5 => \q_reg[133]\,
      O => \q_reg[37]_1\
    );
\q[119]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[125]_i_13_n_0\,
      I1 => \q[121]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[123]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[119]_i_11_n_0\,
      O => \q[119]_i_6_n_0\
    );
\q[119]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[119]_i_12_n_0\,
      I1 => \q[123]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[121]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[125]_i_14_n_0\,
      O => \q[119]_i_7_n_0\
    );
\q[119]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[125]_i_10_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[121]_i_10_n_0\,
      O => \q[119]_i_8_n_0\
    );
\q[119]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[106]_0\,
      O => \^q_reg[36]_0\
    );
\q[120]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CCAAAAF0AAAAAA"
    )
        port map (
      I0 => \^q\(47),
      I1 => \^q\(63),
      I2 => \^q\(55),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      I5 => \^q\(4),
      O => \q[120]_i_10_n_0\
    );
\q[120]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(32),
      I2 => \^q\(3),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(4),
      O => \q[120]_i_11_n_0\
    );
\q[120]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(47),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[120]_i_16_n_0\
    );
\q[120]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[120]_i_6_n_0\,
      I1 => \q[121]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[121]_i_8_n_0\,
      I5 => \q[120]_i_7_n_0\,
      O => \q_reg[12]_35\
    );
\q[120]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A000A000A00"
    )
        port map (
      I0 => \q[120]_i_9_n_0\,
      I1 => \q[121]_i_6_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => \q_reg[32]\(4),
      I4 => \q_reg[118]\,
      I5 => \^q\(0),
      O => \q_reg[12]_12\
    );
\q[120]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_13_n_0\,
      I1 => \q[122]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[124]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[120]_i_10_n_0\,
      O => \q[120]_i_6_n_0\
    );
\q[120]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_11_n_0\,
      I1 => \q[124]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[122]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[126]_i_14_n_0\,
      O => \q[120]_i_7_n_0\
    );
\q[120]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_10_n_0\,
      I1 => \q[122]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[124]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[120]_i_16_n_0\,
      O => \q[120]_i_9_n_0\
    );
\q[121]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(56),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(48),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[121]_i_10_n_0\
    );
\q[121]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^q\(56),
      I2 => \^q\(3),
      I3 => \q_reg[107]_0\,
      I4 => \^q\(4),
      O => \q[121]_i_11_n_0\
    );
\q[121]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(33),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[121]_i_12_n_0\
    );
\q[121]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[122]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[121]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[121]_i_7_n_0\,
      O => \q_reg[12]_13\
    );
\q[121]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[121]_i_8_n_0\,
      I1 => \q[122]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[122]_i_8_n_0\,
      I5 => \q[121]_i_9_n_0\,
      O => \q_reg[12]_36\
    );
\q[121]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_10_n_0\,
      I1 => \q[123]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[125]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[121]_i_10_n_0\,
      O => \q[121]_i_6_n_0\
    );
\q[121]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(16),
      I2 => \^q\(48),
      O => \q[121]_i_7_n_0\
    );
\q[121]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_11_n_0\,
      I1 => \q[123]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[125]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[121]_i_11_n_0\,
      O => \q[121]_i_8_n_0\
    );
\q[121]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_12_n_0\,
      I1 => \q[125]_i_14_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[123]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[127]_i_12_n_0\,
      O => \q[121]_i_9_n_0\
    );
\q[122]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(57),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(49),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[122]_i_10_n_0\
    );
\q[122]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(49),
      I1 => \^q\(57),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[122]_i_11_n_0\
    );
\q[122]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(42),
      I1 => \^q\(34),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[122]_i_12_n_0\
    );
\q[122]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[123]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[122]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[122]_i_7_n_0\,
      O => \q_reg[12]_14\
    );
\q[122]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[122]_i_8_n_0\,
      I1 => \q[123]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[123]_i_8_n_0\,
      I5 => \q[122]_i_9_n_0\,
      O => \q_reg[12]_37\
    );
\q[122]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_14_n_0\,
      I1 => \q[124]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[126]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[122]_i_10_n_0\,
      O => \q[122]_i_6_n_0\
    );
\q[122]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(17),
      I2 => \^q\(49),
      O => \q[122]_i_7_n_0\
    );
\q[122]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_15_n_0\,
      I1 => \q[124]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[126]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[122]_i_11_n_0\,
      O => \q[122]_i_8_n_0\
    );
\q[122]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_12_n_0\,
      I1 => \q[126]_i_14_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[124]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[128]_i_16_n_0\,
      O => \q[122]_i_9_n_0\
    );
\q[123]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(50),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[123]_i_10_n_0\
    );
\q[123]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(50),
      I1 => \^q\(58),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[123]_i_11_n_0\
    );
\q[123]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(43),
      I1 => \^q\(35),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[123]_i_12_n_0\
    );
\q[123]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[124]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[123]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[123]_i_7_n_0\,
      O => \q_reg[12]_15\
    );
\q[123]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[123]_i_8_n_0\,
      I1 => \q[124]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[124]_i_8_n_0\,
      I5 => \q[123]_i_9_n_0\,
      O => \q_reg[12]_38\
    );
\q[123]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_13_n_0\,
      I1 => \q[125]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[127]_i_10_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[123]_i_10_n_0\,
      O => \q[123]_i_6_n_0\
    );
\q[123]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(18),
      I2 => \^q\(50),
      O => \q[123]_i_7_n_0\
    );
\q[123]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[125]_i_12_n_0\,
      I1 => \q[125]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[127]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[123]_i_11_n_0\,
      O => \q[123]_i_8_n_0\
    );
\q[123]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[123]_i_12_n_0\,
      I1 => \q[127]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[125]_i_14_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[129]_i_15_n_0\,
      O => \q[123]_i_9_n_0\
    );
\q[124]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(51),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[124]_i_11_n_0\
    );
\q[124]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(51),
      I1 => \^q\(59),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[124]_i_12_n_0\
    );
\q[124]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(44),
      I1 => \^q\(36),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[124]_i_13_n_0\
    );
\q[124]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[125]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[124]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[124]_i_7_n_0\,
      O => \q_reg[12]_16\
    );
\q[124]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[124]_i_8_n_0\,
      I1 => \q[125]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[125]_i_8_n_0\,
      I5 => \q[124]_i_9_n_0\,
      O => \q_reg[12]_39\
    );
\q[124]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_12_n_0\,
      I1 => \q[126]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_14_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[124]_i_11_n_0\,
      O => \q[124]_i_6_n_0\
    );
\q[124]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(19),
      I2 => \^q\(51),
      O => \q[124]_i_7_n_0\
    );
\q[124]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_12_n_0\,
      I1 => \q[126]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_15_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[124]_i_12_n_0\,
      O => \q[124]_i_8_n_0\
    );
\q[124]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[124]_i_13_n_0\,
      I1 => \q[128]_i_16_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[126]_i_14_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[128]_i_17_n_0\,
      O => \q[124]_i_9_n_0\
    );
\q[125]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(52),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[125]_i_10_n_0\
    );
\q[125]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(58),
      O => \q[125]_i_11_n_0\
    );
\q[125]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(56),
      O => \q[125]_i_12_n_0\
    );
\q[125]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(52),
      I1 => \^q\(60),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[125]_i_13_n_0\
    );
\q[125]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(45),
      I1 => \^q\(37),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[125]_i_14_n_0\
    );
\q[125]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[126]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[125]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[125]_i_7_n_0\,
      O => \q_reg[12]_17\
    );
\q[125]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[125]_i_8_n_0\,
      I1 => \q[126]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[126]_i_8_n_0\,
      I5 => \q[125]_i_9_n_0\,
      O => \q_reg[12]_40\
    );
\q[125]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_11_n_0\,
      I1 => \q[127]_i_10_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[129]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[125]_i_10_n_0\,
      O => \q[125]_i_6_n_0\
    );
\q[125]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(20),
      I2 => \^q\(52),
      O => \q[125]_i_7_n_0\
    );
\q[125]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[125]_i_11_n_0\,
      I1 => \q[127]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[125]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[125]_i_13_n_0\,
      O => \q[125]_i_8_n_0\
    );
\q[125]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[125]_i_14_n_0\,
      I1 => \q[129]_i_15_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[127]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[129]_i_16_n_0\,
      O => \q[125]_i_9_n_0\
    );
\q[126]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(53),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[126]_i_10_n_0\
    );
\q[126]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(59),
      O => \q[126]_i_11_n_0\
    );
\q[126]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(57),
      O => \q[126]_i_12_n_0\
    );
\q[126]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(53),
      I1 => \^q\(61),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[126]_i_13_n_0\
    );
\q[126]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(46),
      I1 => \^q\(38),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[126]_i_14_n_0\
    );
\q[126]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[127]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[126]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[126]_i_7_n_0\,
      O => \q_reg[12]_18\
    );
\q[126]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[126]_i_8_n_0\,
      I1 => \q[127]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[127]_i_8_n_0\,
      I5 => \q[126]_i_9_n_0\,
      O => \q_reg[12]_41\
    );
\q[126]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_13_n_0\,
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[126]_i_10_n_0\,
      O => \q[126]_i_6_n_0\
    );
\q[126]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(21),
      I2 => \^q\(53),
      O => \q[126]_i_7_n_0\
    );
\q[126]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_11_n_0\,
      I1 => \q[128]_i_15_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[126]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[126]_i_13_n_0\,
      O => \q[126]_i_8_n_0\
    );
\q[126]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_14_n_0\,
      I1 => \q[128]_i_17_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[132]_i_13_n_0\,
      O => \q[126]_i_9_n_0\
    );
\q[127]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00F00BF80BF80"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(3),
      I2 => \q_reg[107]_0\,
      I3 => \^q\(54),
      I4 => \^q\(63),
      I5 => \^q\(4),
      O => \q[127]_i_10_n_0\
    );
\q[127]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(54),
      I1 => \^q\(62),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[127]_i_11_n_0\
    );
\q[127]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(47),
      I1 => \^q\(39),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[127]_i_12_n_0\
    );
\q[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[128]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[127]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[127]_i_7_n_0\,
      O => \q_reg[12]_19\
    );
\q[127]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[127]_i_8_n_0\,
      I1 => \q[128]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[128]_i_8_n_0\,
      I5 => \q[127]_i_9_n_0\,
      O => \q_reg[12]_42\
    );
\q[127]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_12_n_0\,
      I1 => \q[129]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[129]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[127]_i_10_n_0\,
      O => \q[127]_i_6_n_0\
    );
\q[127]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(22),
      I2 => \^q\(54),
      O => \q[127]_i_7_n_0\
    );
\q[127]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \q[129]_i_14_n_0\,
      I1 => \^q_reg[36]_0\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(58),
      I4 => \^q_reg[37]_3\,
      I5 => \q[127]_i_11_n_0\,
      O => \q[127]_i_8_n_0\
    );
\q[127]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_12_n_0\,
      I1 => \q[129]_i_16_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[129]_i_15_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[133]_i_12_n_0\,
      O => \q[127]_i_9_n_0\
    );
\q[128]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[128]_i_11_n_0\
    );
\q[128]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(57),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[128]_i_12_n_0\
    );
\q[128]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[128]_i_13_n_0\
    );
\q[128]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[128]_i_14_n_0\
    );
\q[128]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AACAAA"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(63),
      I2 => \^q\(3),
      I3 => \q_reg[106]_0\,
      I4 => \^q\(4),
      O => \q[128]_i_15_n_0\
    );
\q[128]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(48),
      I2 => \^q\(40),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[128]_i_16_n_0\
    );
\q[128]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(50),
      I2 => \^q\(42),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[128]_i_17_n_0\
    );
\q[128]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[129]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[128]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[128]_i_7_n_0\,
      O => \q_reg[12]_20\
    );
\q[128]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[128]_i_8_n_0\,
      I1 => \q[129]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[129]_i_8_n_0\,
      I5 => \q[128]_i_9_n_0\,
      O => \q_reg[12]_43\
    );
\q[128]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_11_n_0\,
      I1 => \q[128]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_13_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[128]_i_14_n_0\,
      O => \q[128]_i_6_n_0\
    );
\q[128]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(23),
      I2 => \^q\(55),
      O => \q[128]_i_7_n_0\
    );
\q[128]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \q[130]_i_11_n_0\,
      I1 => \^q_reg[36]_0\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(59),
      I4 => \^q_reg[37]_3\,
      I5 => \q[128]_i_15_n_0\,
      O => \q[128]_i_8_n_0\
    );
\q[128]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_16_n_0\,
      I1 => \q[132]_i_13_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[128]_i_17_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[134]_i_11_n_0\,
      O => \q[128]_i_9_n_0\
    );
\q[129]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[129]_i_10_n_0\
    );
\q[129]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[129]_i_11_n_0\
    );
\q[129]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[129]_i_12_n_0\
    );
\q[129]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2AAAA"
    )
        port map (
      I0 => \^q\(56),
      I1 => \^q\(4),
      I2 => \^q\(63),
      I3 => \^q\(3),
      I4 => \q_reg[107]_0\,
      O => \q[129]_i_13_n_0\
    );
\q[129]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FBF00000080"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(56),
      O => \q[129]_i_14_n_0\
    );
\q[129]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(49),
      I2 => \^q\(41),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[129]_i_15_n_0\
    );
\q[129]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(51),
      I2 => \^q\(43),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[129]_i_16_n_0\
    );
\q[129]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[130]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[129]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[129]_i_7_n_0\,
      O => \q_reg[36]_1\
    );
\q[129]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[129]_i_8_n_0\,
      I1 => \q[130]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[130]_i_8_n_0\,
      I5 => \q[129]_i_9_n_0\,
      O => \q_reg[12]_44\
    );
\q[129]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_10_n_0\,
      I1 => \q[129]_i_11_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[129]_i_12_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[129]_i_13_n_0\,
      O => \q[129]_i_6_n_0\
    );
\q[129]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(24),
      I2 => \^q\(56),
      O => \q[129]_i_7_n_0\
    );
\q[129]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q_reg[37]_3\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(58),
      I4 => \^q_reg[36]_0\,
      I5 => \q[129]_i_14_n_0\,
      O => \q[129]_i_8_n_0\
    );
\q[129]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_15_n_0\,
      I1 => \q[133]_i_12_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[129]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[135]_i_16_n_0\,
      O => \q[129]_i_9_n_0\
    );
\q[130]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(57),
      I3 => \^q_reg[39]_0\,
      I4 => \^q\(63),
      I5 => \^q_reg[38]_0\,
      O => \q[130]_i_10_n_0\
    );
\q[130]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FBF00000080"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(57),
      O => \q[130]_i_11_n_0\
    );
\q[130]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[128]_i_17_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[134]_i_11_n_0\,
      O => \q[130]_i_12_n_0\
    );
\q[130]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[131]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[130]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[130]_i_7_n_0\,
      O => \q_reg[36]_2\
    );
\q[130]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[130]_i_8_n_0\,
      I1 => \q[131]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[131]_i_9_n_0\,
      I5 => \q[130]_i_9_n_0\,
      O => \q_reg[12]_45\
    );
\q[130]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[132]_i_12_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[130]_i_10_n_0\,
      O => \q[130]_i_6_n_0\
    );
\q[130]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(25),
      I2 => \^q\(57),
      O => \q[130]_i_7_n_0\
    );
\q[130]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q\(63),
      I1 => \^q_reg[37]_3\,
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(59),
      I4 => \^q_reg[36]_0\,
      I5 => \q[130]_i_11_n_0\,
      O => \q[130]_i_8_n_0\
    );
\q[130]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[130]_i_12_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[132]_i_13_n_0\,
      I4 => \^q\(2),
      I5 => \q[136]_i_23_n_0\,
      O => \q[130]_i_9_n_0\
    );
\q[131]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q_reg[37]_3\,
      I2 => \^q\(58),
      I3 => \^q_reg[39]_0\,
      I4 => \^q\(63),
      I5 => \^q_reg[38]_0\,
      O => \q[131]_i_10_n_0\
    );
\q[131]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[129]_i_16_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[135]_i_16_n_0\,
      O => \q[131]_i_11_n_0\
    );
\q[131]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[132]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[131]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[131]_i_7_n_0\,
      O => \q_reg[36]_3\
    );
\q[131]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[131]_i_8_n_0\,
      I1 => \q[132]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[132]_i_9_n_0\,
      I5 => \q[131]_i_9_n_0\,
      O => \q_reg[12]_46\
    );
\q[131]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[133]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[131]_i_10_n_0\,
      O => \q[131]_i_6_n_0\
    );
\q[131]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(26),
      I2 => \^q\(58),
      O => \q[131]_i_7_n_0\
    );
\q[131]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => \q[131]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \q[133]_i_12_n_0\,
      I4 => \^q\(2),
      I5 => \q[136]_i_19_n_0\,
      O => \q[131]_i_8_n_0\
    );
\q[131]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(58),
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(60),
      I4 => \^q_reg[36]_0\,
      I5 => \^q_reg[37]_3\,
      O => \q[131]_i_9_n_0\
    );
\q[132]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE02AAAAAAAA"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(63),
      I4 => \^q\(2),
      I5 => \q_reg[107]_0\,
      O => \q[132]_i_11_n_0\
    );
\q[132]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE02AAAAAAAA"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(63),
      I4 => \^q\(2),
      I5 => \q_reg[107]_0\,
      O => \q[132]_i_12_n_0\
    );
\q[132]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(52),
      I2 => \^q\(44),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[132]_i_13_n_0\
    );
\q[132]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[133]_i_6_n_0\,
      I1 => \q_reg[133]\,
      I2 => \q[132]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[132]_i_7_n_0\,
      O => \q_reg[36]_4\
    );
\q[132]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[132]_i_8_n_0\,
      I1 => \q[133]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[133]_i_9_n_0\,
      I5 => \q[132]_i_9_n_0\,
      O => \q_reg[12]_47\
    );
\q[132]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[132]_i_11_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[132]_i_12_n_0\,
      O => \q[132]_i_6_n_0\
    );
\q[132]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(27),
      I2 => \^q\(59),
      O => \q[132]_i_7_n_0\
    );
\q[132]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[132]_i_13_n_0\,
      I1 => \q[136]_i_23_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[134]_i_11_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_21_n_0\,
      O => \q[132]_i_8_n_0\
    );
\q[132]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q\(63),
      I1 => \^q\(59),
      I2 => \q[135]_i_15_n_0\,
      I3 => \^q\(61),
      I4 => \^q_reg[36]_0\,
      I5 => \^q_reg[37]_3\,
      O => \q[132]_i_9_n_0\
    );
\q[133]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE02AAAAAAAA"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(63),
      I4 => \^q\(2),
      I5 => \q_reg[107]_0\,
      O => \q[133]_i_10_n_0\
    );
\q[133]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE02AAAAAAAA"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(63),
      I4 => \^q\(2),
      I5 => \q_reg[107]_0\,
      O => \q[133]_i_11_n_0\
    );
\q[133]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(53),
      I2 => \^q\(45),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[133]_i_12_n_0\
    );
\q[133]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q_reg[175]_1\,
      I1 => \q_reg[133]\,
      I2 => \q[133]_i_6_n_0\,
      I3 => \q_reg[133]_0\,
      I4 => \q_reg[133]_1\,
      I5 => \q[133]_i_7_n_0\,
      O => \q_reg[175]_0\
    );
\q[133]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[133]_i_8_n_0\,
      I1 => \q[134]_i_9_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[134]_i_10_n_0\,
      I5 => \q[133]_i_9_n_0\,
      O => \q_reg[12]_48\
    );
\q[133]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q[133]_i_10_n_0\,
      I1 => \^q\(1),
      I2 => \q_reg[107]_0\,
      I3 => \q[133]_i_11_n_0\,
      O => \q[133]_i_6_n_0\
    );
\q[133]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(28),
      I2 => \^q\(60),
      O => \q[133]_i_7_n_0\
    );
\q[133]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[133]_i_12_n_0\,
      I1 => \q[136]_i_19_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[135]_i_16_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_17_n_0\,
      O => \q[133]_i_8_n_0\
    );
\q[133]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888C0888888"
    )
        port map (
      I0 => \^q\(60),
      I1 => \q[135]_i_15_n_0\,
      I2 => \^q\(62),
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(2),
      O => \q[133]_i_9_n_0\
    );
\q[134]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888C0888888"
    )
        port map (
      I0 => \^q\(61),
      I1 => \q[135]_i_15_n_0\,
      I2 => \^q\(63),
      I3 => \^q\(1),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(2),
      O => \q[134]_i_10_n_0\
    );
\q[134]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(38),
      I1 => \^q\(54),
      I2 => \^q\(46),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[134]_i_11_n_0\
    );
\q[134]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFECCFECFCECCCE"
    )
        port map (
      I0 => \q[135]_i_13_n_0\,
      I1 => \q[134]_i_8_n_0\,
      I2 => \q_reg[32]\(1),
      I3 => SrcBE(0),
      I4 => \q[134]_i_9_n_0\,
      I5 => \q[134]_i_10_n_0\,
      O => \q_reg[12]_49\
    );
\q[134]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => \^q_reg[36]_0\,
      I1 => \^q\(61),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \^q\(63),
      I5 => \^q_reg[37]_3\,
      O => \^q_reg[175]_1\
    );
\q[134]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(29),
      I2 => \^q\(61),
      O => \q_reg[11]_rep__0_1\
    );
\q[134]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3700000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(2),
      I3 => \q_reg[106]_1\,
      I4 => \^q\(62),
      I5 => \q[135]_i_15_n_0\,
      O => \q[134]_i_8_n_0\
    );
\q[134]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[134]_i_11_n_0\,
      I1 => \q[136]_i_21_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[136]_i_23_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_24_n_0\,
      O => \q[134]_i_9_n_0\
    );
\q[135]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A000000000000"
    )
        port map (
      I0 => \q_reg[106]_2\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(2),
      I4 => \^q\(62),
      I5 => \q[135]_i_15_n_0\,
      O => \q[135]_i_11_n_0\
    );
\q[135]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[135]_i_16_n_0\,
      I1 => \q[136]_i_17_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[136]_i_19_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_20_n_0\,
      O => \q[135]_i_13_n_0\
    );
\q[135]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A000000000000"
    )
        port map (
      I0 => \q_reg[106]_1\,
      I1 => \^q\(1),
      I2 => \q_reg[106]_0\,
      I3 => \^q\(2),
      I4 => \^q\(63),
      I5 => \q[135]_i_15_n_0\,
      O => \q[135]_i_14_n_0\
    );
\q[135]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \^q\(3),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(4),
      O => \q[135]_i_15_n_0\
    );
\q[135]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AACCCCF0CCCCCC"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q\(55),
      I2 => \^q\(47),
      I3 => \^q\(3),
      I4 => \q_reg[106]_0\,
      I5 => \^q\(4),
      O => \q[135]_i_16_n_0\
    );
\q[135]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \q_reg[135]\,
      I1 => \q[136]_i_9_n_0\,
      I2 => \q[135]_i_11_n_0\,
      I3 => \q_reg[135]_0\,
      I4 => \q[135]_i_13_n_0\,
      I5 => \q[135]_i_14_n_0\,
      O => \q_reg[11]_rep__1\
    );
\q[135]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => \^q_reg[36]_0\,
      I1 => \^q\(62),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \^q\(63),
      I5 => \^q_reg[37]_3\,
      O => \q_reg[176]_0\
    );
\q[135]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \^q\(30),
      I2 => \^q\(62),
      O => \q_reg[11]_rep__0_0\
    );
\q[136]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3700"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(3),
      I3 => \^q\(63),
      O => \q[136]_i_10_n_0\
    );
\q[136]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \q_reg[106]_0\,
      O => SrcBE(0)
    );
\q[136]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg[106]_0\,
      I2 => \^q\(2),
      O => \q[136]_i_12_n_0\
    );
\q[136]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(59),
      I1 => \^q\(43),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(35),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(51),
      O => \q[136]_i_17_n_0\
    );
\q[136]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(63),
      I1 => \^q\(47),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(39),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(55),
      O => \q[136]_i_18_n_0\
    );
\q[136]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(57),
      I1 => \^q\(41),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(33),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(49),
      O => \q[136]_i_19_n_0\
    );
\q[136]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(45),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(37),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(53),
      O => \q[136]_i_20_n_0\
    );
\q[136]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(58),
      I1 => \^q\(42),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(34),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(50),
      O => \q[136]_i_21_n_0\
    );
\q[136]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(62),
      I1 => \^q\(46),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(38),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(54),
      O => \q[136]_i_22_n_0\
    );
\q[136]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(56),
      I1 => \^q\(40),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(32),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(48),
      O => \q[136]_i_23_n_0\
    );
\q[136]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(60),
      I1 => \^q\(44),
      I2 => \^q_reg[38]_0\,
      I3 => \^q\(36),
      I4 => \^q_reg[39]_0\,
      I5 => \^q\(52),
      O => \q[136]_i_24_n_0\
    );
\q[136]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^q\(63),
      I1 => \q_reg[32]\(1),
      I2 => \^q\(31),
      I3 => \q_reg[118]\,
      O => \q[136]_i_25_n_0\
    );
\q[136]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCAA0000CCAA"
    )
        port map (
      I0 => \q[136]_i_8_n_0\,
      I1 => \q[136]_i_9_n_0\,
      I2 => \q[136]_i_10_n_0\,
      I3 => SrcBE(0),
      I4 => \q_reg[32]\(1),
      I5 => \q[136]_i_12_n_0\,
      O => \q_reg[12]_50\
    );
\q[136]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \q[136]_i_17_n_0\,
      I1 => \q[136]_i_18_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[136]_i_19_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_20_n_0\,
      O => \q[136]_i_8_n_0\
    );
\q[136]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \q[136]_i_21_n_0\,
      I1 => \q[136]_i_22_n_0\,
      I2 => \^q_reg[36]_0\,
      I3 => \q[136]_i_23_n_0\,
      I4 => \^q_reg[37]_3\,
      I5 => \q[136]_i_24_n_0\,
      O => \q[136]_i_9_n_0\
    );
\q[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEAAAAAAAA"
    )
        port map (
      I0 => \^q_reg[150]_1\,
      I1 => \q[15]_i_16_n_0\,
      I2 => \q_reg[106]_1\,
      I3 => \q[110]_i_8_n_0\,
      I4 => \q[15]_i_17_n_0\,
      I5 => \q[15]_i_7\,
      O => \q_reg[150]_0\
    );
\q[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \q[112]_i_9_n_0\,
      I1 => \q_reg[135]\,
      I2 => \q[111]_i_11_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[15]_i_20_n_0\,
      I5 => \q_reg[106]_2\,
      O => \q_reg[146]_1\
    );
\q[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \q[113]_i_7_n_0\,
      I1 => \q_reg[135]\,
      I2 => \q[112]_i_12_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[15]_i_21_n_0\,
      I5 => \q_reg[106]_2\,
      O => \q_reg[147]_2\
    );
\q[15]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000A000"
    )
        port map (
      I0 => \q[112]_i_9_n_0\,
      I1 => \q[113]_i_6_n_0\,
      I2 => \q_reg[107]_0\,
      I3 => \^q\(0),
      I4 => \q_reg[32]\(1),
      O => \q_reg[11]_rep__0\
    );
\q[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \q[110]_i_9_n_0\,
      I1 => \q_reg[135]\,
      I2 => \q[15]_i_20_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[15]_i_22_n_0\,
      I5 => \q_reg[106]_2\,
      O => \q[15]_i_16_n_0\
    );
\q[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202000020000000"
    )
        port map (
      I0 => \q_reg[135]_0\,
      I1 => \^q_reg[37]_3\,
      I2 => \^q_reg[36]_0\,
      I3 => \^q\(33),
      I4 => \q[135]_i_15_n_0\,
      I5 => \^q\(35),
      O => \q[15]_i_17_n_0\
    );
\q[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \^q_reg[147]_0\,
      I1 => \q_reg[135]\,
      I2 => \q[15]_i_21_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[15]_i_23_n_0\,
      I5 => \q_reg[106]_2\,
      O => \q_reg[147]_1\
    );
\q[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF88888888888"
    )
        port map (
      I0 => \q[110]_i_9_n_0\,
      I1 => \q_reg[135]_0\,
      I2 => \q[111]_i_11_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[15]_i_20_n_0\,
      I5 => \q_reg[106]_1\,
      O => \q_reg[146]_0\
    );
\q[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BF80BF80BF80"
    )
        port map (
      I0 => \q[115]_i_10_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[107]_i_11_n_0\,
      I4 => \^q\(3),
      I5 => \q[119]_i_14_n_0\,
      O => \q[15]_i_20_n_0\
    );
\q[15]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BF80BF80BF80"
    )
        port map (
      I0 => \q[114]_i_9_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[108]_i_17_n_0\,
      I4 => \^q\(3),
      I5 => \q[116]_i_17_n_0\,
      O => \q[15]_i_21_n_0\
    );
\q[15]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BF80BF80BF80"
    )
        port map (
      I0 => \q[113]_i_9_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[105]_i_21_n_0\,
      I4 => \^q\(3),
      I5 => \q[111]_i_12_n_0\,
      O => \q[15]_i_22_n_0\
    );
\q[15]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BF80BF80BF80"
    )
        port map (
      I0 => \q[114]_i_11_n_0\,
      I1 => \^q\(2),
      I2 => \q_reg[106]_0\,
      I3 => \q[105]_i_17_n_0\,
      I4 => \^q\(3),
      I5 => \q[112]_i_17_n_0\,
      O => \q[15]_i_23_n_0\
    );
\q[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(0),
      I2 => PCPlus4F(0),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]\(0),
      O => \q_reg[16]\(0)
    );
\q[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(1),
      I2 => PCPlus4F(1),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]\(1),
      O => \q_reg[16]\(1)
    );
\q[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(2),
      I2 => PCPlus4F(2),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]\(2),
      O => \q_reg[16]\(2)
    );
\q[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[19]\,
      O => E(0)
    );
\q[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => RdE(3),
      I1 => \q[31]_i_6_0\(8),
      I2 => \q[31]_i_6_0\(9),
      I3 => RdE(4),
      I4 => \q[31]_i_6_0\(7),
      I5 => RdE(2),
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(3),
      I2 => PCPlus4F(3),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]\(3),
      O => \q_reg[16]\(3)
    );
\q[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000014"
    )
        port map (
      I0 => \q[31]_i_26_n_0\,
      I1 => \^q_reg[177]_1\(3),
      I2 => \^q\(63),
      I3 => \q_reg[32]\(2),
      I4 => \q_reg[32]\(3),
      I5 => \q_reg[32]\(4),
      O => ovfE
    );
\q[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => \^q_reg[12]_6\,
      I1 => \q[31]_i_17\,
      I2 => \^q_reg[12]_7\,
      I3 => \q[31]_i_17_0\,
      I4 => \q[31]_i_29_n_0\,
      I5 => \q[31]_i_17_1\,
      O => \q_reg[12]_5\
    );
\q[31]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^q\(63),
      I1 => \q_reg[32]\(1),
      I2 => \^q\(31),
      I3 => \q_reg[118]\,
      O => \q[31]_i_26_n_0\
    );
\q[31]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0CC00CCAACC"
    )
        port map (
      I0 => \alu/result00_out\(9),
      I1 => \^q_reg[157]_0\(1),
      I2 => \^q_reg[12]_29\,
      I3 => \q_reg[32]\(3),
      I4 => \q_reg[32]\(1),
      I5 => \q_reg[32]\(2),
      O => \q[31]_i_29_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88888A888888888"
    )
        port map (
      I0 => \q_reg[32]\(5),
      I1 => \q[31]_i_6_n_0\,
      I2 => \q[31]_i_7_n_0\,
      I3 => RdE(2),
      I4 => \q[31]_i_6_0\(2),
      I5 => \q[31]_i_8_n_0\,
      O => \^q_reg[19]\
    );
\q[31]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \q_reg[118]\,
      I1 => \^q\(9),
      I2 => \^q\(41),
      O => \alu/result00_out\(9)
    );
\q[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => RdE(0),
      I1 => \q[31]_i_6_0\(5),
      I2 => RdE(1),
      I3 => \q[31]_i_6_0\(6),
      I4 => \q[31]_i_14_n_0\,
      O => \q[31]_i_6_n_0\
    );
\q[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => RdE(1),
      I1 => \q[31]_i_6_0\(1),
      I2 => \q[31]_i_6_0\(0),
      I3 => RdE(0),
      O => \q[31]_i_7_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => RdE(3),
      I1 => \q[31]_i_6_0\(3),
      I2 => \q[31]_i_6_0\(4),
      I3 => RdE(4),
      O => \q[31]_i_8_n_0\
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => PCE(18)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => PCE(19)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => PCE(20)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => PCE(21)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => PCE(22)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => PCE(23)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => PCE(24)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => PCE(25)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => PCE(26)
    );
\q_reg[108]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[108]_i_8_n_0\,
      CO(2) => \q_reg[108]_i_8_n_1\,
      CO(1) => \q_reg[108]_i_8_n_2\,
      CO(0) => \q_reg[108]_i_8_n_3\,
      CYINIT => \condinvb__0\(0),
      DI(3 downto 0) => \^q\(35 downto 32),
      O(3) => \q_reg[108]_i_8_n_4\,
      O(2) => \q_reg[108]_i_8_n_5\,
      O(1) => \q_reg[108]_i_8_n_6\,
      O(0) => \q_reg[108]_i_8_n_7\,
      S(3 downto 0) => \q[105]_i_3_0\(3 downto 0)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(64),
      Q => PCE(27)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(65),
      Q => PCE(28)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(66),
      Q => PCE(29)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(67),
      Q => PCE(30)
    );
\q_reg[112]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[108]_i_8_n_0\,
      CO(3) => \q_reg[112]_i_10_n_0\,
      CO(2) => \q_reg[112]_i_10_n_1\,
      CO(1) => \q_reg[112]_i_10_n_2\,
      CO(0) => \q_reg[112]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(39 downto 36),
      O(3 downto 1) => \q_reg[153]_0\(2 downto 0),
      O(0) => \q_reg[112]_i_10_n_7\,
      S(3 downto 0) => \q[109]_i_4_0\(3 downto 0)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(68),
      Q => PCE(31)
    );
\q_reg[116]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[112]_i_10_n_0\,
      CO(3) => \q_reg[116]_i_8_n_0\,
      CO(2) => \q_reg[116]_i_8_n_1\,
      CO(1) => \q_reg[116]_i_8_n_2\,
      CO(0) => \q_reg[116]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(43 downto 40),
      O(3 downto 0) => \^q_reg[157]_0\(3 downto 0),
      S(3 downto 0) => \q[113]_i_3\(3 downto 0)
    );
\q_reg[120]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[116]_i_8_n_0\,
      CO(3) => \q_reg[120]_i_8_n_0\,
      CO(2) => \q_reg[120]_i_8_n_1\,
      CO(1) => \q_reg[120]_i_8_n_2\,
      CO(0) => \q_reg[120]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(47 downto 44),
      O(3 downto 0) => \q_reg[161]_1\(3 downto 0),
      S(3 downto 0) => \q[117]_i_3\(3 downto 0)
    );
\q_reg[124]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[120]_i_8_n_0\,
      CO(3) => \q_reg[124]_i_10_n_0\,
      CO(2) => \q_reg[124]_i_10_n_1\,
      CO(1) => \q_reg[124]_i_10_n_2\,
      CO(0) => \q_reg[124]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(51 downto 48),
      O(3 downto 0) => \q_reg[165]_1\(3 downto 0),
      S(3 downto 0) => \q[121]_i_4\(3 downto 0)
    );
\q_reg[128]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[124]_i_10_n_0\,
      CO(3) => \q_reg[128]_i_10_n_0\,
      CO(2) => \q_reg[128]_i_10_n_1\,
      CO(1) => \q_reg[128]_i_10_n_2\,
      CO(0) => \q_reg[128]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(55 downto 52),
      O(3 downto 0) => \q_reg[169]_0\(3 downto 0),
      S(3 downto 0) => \q[125]_i_4\(3 downto 0)
    );
\q_reg[132]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[128]_i_10_n_0\,
      CO(3) => \q_reg[132]_i_10_n_0\,
      CO(2) => \q_reg[132]_i_10_n_1\,
      CO(1) => \q_reg[132]_i_10_n_2\,
      CO(0) => \q_reg[132]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(59 downto 56),
      O(3 downto 0) => \q_reg[173]_0\(3 downto 0),
      S(3 downto 0) => \q[129]_i_4\(3 downto 0)
    );
\q_reg[136]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[132]_i_10_n_0\,
      CO(3) => \q_reg[136]_i_14_n_0\,
      CO(2) => \q_reg[136]_i_14_n_1\,
      CO(1) => \q_reg[136]_i_14_n_2\,
      CO(0) => \q_reg[136]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(63 downto 60),
      O(3 downto 0) => \^q_reg[177]_1\(3 downto 0),
      S(3) => \q[136]_i_25_n_0\,
      S(2 downto 0) => \q[133]_i_4\(2 downto 0)
    );
\q_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(69),
      Q => \^q\(32)
    );
\q_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(70),
      Q => \^q\(33)
    );
\q_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(71),
      Q => \^q\(34)
    );
\q_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(72),
      Q => \^q\(35)
    );
\q_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(73),
      Q => \^q\(36)
    );
\q_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(74),
      Q => \^q\(37)
    );
\q_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(75),
      Q => \^q\(38)
    );
\q_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(76),
      Q => \^q\(39)
    );
\q_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(77),
      Q => \^q\(40)
    );
\q_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(78),
      Q => \^q\(41)
    );
\q_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(79),
      Q => \^q\(42)
    );
\q_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(80),
      Q => \^q\(43)
    );
\q_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(81),
      Q => \^q\(44)
    );
\q_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(82),
      Q => \^q\(45)
    );
\q_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(83),
      Q => \^q\(46)
    );
\q_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(84),
      Q => \^q\(47)
    );
\q_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(85),
      Q => \^q\(48)
    );
\q_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(86),
      Q => \^q\(49)
    );
\q_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(87),
      Q => \^q\(50)
    );
\q_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(88),
      Q => \^q\(51)
    );
\q_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(89),
      Q => \^q\(52)
    );
\q_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(90),
      Q => \^q\(53)
    );
\q_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(91),
      Q => \^q\(54)
    );
\q_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(92),
      Q => \^q\(55)
    );
\q_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(93),
      Q => \^q\(56)
    );
\q_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(94),
      Q => \^q\(57)
    );
\q_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(95),
      Q => \^q\(58)
    );
\q_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(96),
      Q => \^q\(59)
    );
\q_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(97),
      Q => \^q\(60)
    );
\q_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(98),
      Q => \^q\(61)
    );
\q_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(99),
      Q => \^q\(62)
    );
\q_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(100),
      Q => \^q\(63)
    );
\q_reg[31]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[136]_i_14_n_0\,
      CO(3 downto 1) => \NLW_q_reg[31]_i_27_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \q_reg[177]_3\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_q_reg[31]_i_27_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => \^q\(8)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => \^q\(9)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => \^q\(10)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => \^q\(11)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => \^q\(12)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => \^q\(13)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => \^q\(14)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => \^q\(15)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => \^q\(16)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => \^q\(17)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => \^q\(18)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => \^q\(19)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => \^q\(20)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => \^q\(21)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => \^q\(22)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => \^q\(23)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => \^q\(24)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => \^q\(25)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => \^q\(26)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => \^q\(27)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => \^q\(28)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => \^q\(29)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => \^q\(30)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => \^q\(31)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => RdE(0)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => RdE(1)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => RdE(2)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => RdE(3)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => RdE(4)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => PCE(0)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => PCE(1)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => PCE(2)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => PCE(3)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => PCE(4)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => PCE(5)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => PCE(6)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => PCE(7)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => PCE(8)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => PCE(9)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => PCE(10)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => PCE(11)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => PCE(12)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => PCE(13)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => PCE(14)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => PCE(15)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => PCE(16)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => PCE(17)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => PCE(7),
      O => \q_reg[42]_0\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => PCE(6),
      O => \q_reg[42]_0\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => PCE(5),
      O => \q_reg[42]_0\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => PCE(4),
      O => \q_reg[42]_0\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => PCE(11),
      O => \q_reg[46]_0\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => PCE(10),
      O => \q_reg[46]_0\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => PCE(9),
      O => \q_reg[46]_0\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => PCE(8),
      O => \q_reg[46]_0\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => PCE(15),
      O => \q_reg[50]_0\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => PCE(14),
      O => \q_reg[50]_0\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => PCE(13),
      O => \q_reg[50]_0\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => PCE(12),
      O => \q_reg[50]_0\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(19),
      I1 => PCE(19),
      O => \q_reg[54]_0\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(18),
      I1 => PCE(18),
      O => \q_reg[54]_0\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(17),
      I1 => PCE(17),
      O => \q_reg[54]_0\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(16),
      I1 => PCE(16),
      O => \q_reg[54]_0\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(23),
      I1 => PCE(23),
      O => \q_reg[58]_0\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(22),
      I1 => PCE(22),
      O => \q_reg[58]_0\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(21),
      I1 => PCE(21),
      O => \q_reg[58]_0\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => PCE(20),
      O => \q_reg[58]_0\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(27),
      I1 => PCE(27),
      O => \q_reg[62]_0\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(26),
      I1 => PCE(26),
      O => \q_reg[62]_0\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => PCE(25),
      O => \q_reg[62]_0\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(24),
      I1 => PCE(24),
      O => \q_reg[62]_0\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(31),
      I1 => PCE(31),
      O => \q_reg[66]_0\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => PCE(30),
      O => \q_reg[66]_0\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(29),
      I1 => PCE(29),
      O => \q_reg[66]_0\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(28),
      I1 => PCE(28),
      O => \q_reg[66]_0\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => PCE(3),
      O => \q_reg[38]_1\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCE(2),
      O => \q_reg[38]_1\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => PCE(1),
      O => \q_reg[38]_1\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => PCE(0),
      O => \q_reg[38]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_store is
  port (
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_top_0_0_store;

architecture STRUCTURE of design_1_top_0_0_store is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[18]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[18]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[24]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[24]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[25]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[25]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[26]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[26]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[27]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[27]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[28]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[28]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[29]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[29]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[30]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[30]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[31]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \WriteDataOut_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \WriteDataOut_reg[9]\ : label is "VCC:GE GND:CLR";
begin
\WriteDataOut_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => WriteDataM(0)
    );
\WriteDataOut_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => E(0),
      GE => '1',
      Q => WriteDataM(10)
    );
\WriteDataOut_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => WriteDataM(11)
    );
\WriteDataOut_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => WriteDataM(12)
    );
\WriteDataOut_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => WriteDataM(13)
    );
\WriteDataOut_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => WriteDataM(14)
    );
\WriteDataOut_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => E(0),
      GE => '1',
      Q => WriteDataM(15)
    );
\WriteDataOut_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(16),
      G => E(0),
      GE => '1',
      Q => WriteDataM(16)
    );
\WriteDataOut_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(17),
      G => E(0),
      GE => '1',
      Q => WriteDataM(17)
    );
\WriteDataOut_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(18),
      G => E(0),
      GE => '1',
      Q => WriteDataM(18)
    );
\WriteDataOut_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(19),
      G => E(0),
      GE => '1',
      Q => WriteDataM(19)
    );
\WriteDataOut_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => WriteDataM(1)
    );
\WriteDataOut_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(20),
      G => E(0),
      GE => '1',
      Q => WriteDataM(20)
    );
\WriteDataOut_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(21),
      G => E(0),
      GE => '1',
      Q => WriteDataM(21)
    );
\WriteDataOut_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(22),
      G => E(0),
      GE => '1',
      Q => WriteDataM(22)
    );
\WriteDataOut_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(23),
      G => E(0),
      GE => '1',
      Q => WriteDataM(23)
    );
\WriteDataOut_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(24),
      G => E(0),
      GE => '1',
      Q => WriteDataM(24)
    );
\WriteDataOut_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(25),
      G => E(0),
      GE => '1',
      Q => WriteDataM(25)
    );
\WriteDataOut_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(26),
      G => E(0),
      GE => '1',
      Q => WriteDataM(26)
    );
\WriteDataOut_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(27),
      G => E(0),
      GE => '1',
      Q => WriteDataM(27)
    );
\WriteDataOut_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(28),
      G => E(0),
      GE => '1',
      Q => WriteDataM(28)
    );
\WriteDataOut_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(29),
      G => E(0),
      GE => '1',
      Q => WriteDataM(29)
    );
\WriteDataOut_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => WriteDataM(2)
    );
\WriteDataOut_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(30),
      G => E(0),
      GE => '1',
      Q => WriteDataM(30)
    );
\WriteDataOut_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(31),
      G => E(0),
      GE => '1',
      Q => WriteDataM(31)
    );
\WriteDataOut_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => WriteDataM(3)
    );
\WriteDataOut_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => WriteDataM(4)
    );
\WriteDataOut_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => WriteDataM(5)
    );
\WriteDataOut_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => WriteDataM(6)
    );
\WriteDataOut_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => WriteDataM(7)
    );
\WriteDataOut_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => WriteDataM(8)
    );
\WriteDataOut_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => WriteDataM(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_controller is
  port (
    funct3E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCSrcE : out STD_LOGIC_VECTOR ( 0 to 0 );
    FlushE : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_reg[11]_rep__1\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[155]\ : out STD_LOGIC;
    \q_reg[15]\ : out STD_LOGIC;
    \q_reg[11]_rep__0\ : out STD_LOGIC;
    \q_reg[11]_rep\ : out STD_LOGIC;
    \q_reg[11]_rep__0_0\ : out STD_LOGIC;
    \q_reg[11]_rep__1_0\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[11]_rep__1_1\ : out STD_LOGIC;
    \q_reg[11]_rep__1_2\ : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    \PCSrc1__6\ : out STD_LOGIC;
    \condinvb__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[15]_0\ : in STD_LOGIC;
    ovfE : in STD_LOGIC;
    \q_reg[105]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    data6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[105]_0\ : in STD_LOGIC;
    \q_reg[105]_1\ : in STD_LOGIC;
    \q_reg[105]_2\ : in STD_LOGIC;
    \q_reg[136]\ : in STD_LOGIC_VECTOR ( 59 downto 0 );
    \q_reg[105]_3\ : in STD_LOGIC;
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC;
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    \q_reg[108]\ : in STD_LOGIC;
    \q_reg[108]_0\ : in STD_LOGIC;
    \q_reg[108]_1\ : in STD_LOGIC;
    \q[15]_i_5\ : in STD_LOGIC;
    \q_reg[110]\ : in STD_LOGIC;
    \q_reg[109]\ : in STD_LOGIC;
    \q_reg[109]_0\ : in STD_LOGIC;
    \q_reg[109]_1\ : in STD_LOGIC;
    \q_reg[109]_2\ : in STD_LOGIC;
    \q_reg[110]_0\ : in STD_LOGIC;
    \q_reg[111]\ : in STD_LOGIC;
    \q_reg[112]\ : in STD_LOGIC;
    \q_reg[111]_0\ : in STD_LOGIC;
    \q_reg[112]_0\ : in STD_LOGIC;
    \q[15]_i_4\ : in STD_LOGIC;
    \q_reg[113]\ : in STD_LOGIC;
    \q_reg[113]_0\ : in STD_LOGIC;
    \q_reg[114]\ : in STD_LOGIC;
    \q_reg[114]_0\ : in STD_LOGIC;
    \q_reg[115]\ : in STD_LOGIC;
    \q_reg[115]_0\ : in STD_LOGIC;
    \q_reg[116]\ : in STD_LOGIC;
    \q_reg[116]_0\ : in STD_LOGIC;
    \q_reg[117]\ : in STD_LOGIC;
    \q_reg[117]_0\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[118]_0\ : in STD_LOGIC;
    \q_reg[119]\ : in STD_LOGIC;
    \q_reg[119]_0\ : in STD_LOGIC;
    \q_reg[120]\ : in STD_LOGIC;
    \q_reg[120]_0\ : in STD_LOGIC;
    \q_reg[121]\ : in STD_LOGIC;
    \q_reg[121]_0\ : in STD_LOGIC;
    \q_reg[122]\ : in STD_LOGIC;
    \q_reg[122]_0\ : in STD_LOGIC;
    \q_reg[123]\ : in STD_LOGIC;
    \q_reg[123]_0\ : in STD_LOGIC;
    \q_reg[124]\ : in STD_LOGIC;
    \q_reg[124]_0\ : in STD_LOGIC;
    \q_reg[125]\ : in STD_LOGIC;
    \q_reg[125]_0\ : in STD_LOGIC;
    \q_reg[126]\ : in STD_LOGIC;
    \q_reg[126]_0\ : in STD_LOGIC;
    \q_reg[127]\ : in STD_LOGIC;
    \q_reg[127]_0\ : in STD_LOGIC;
    \q_reg[128]\ : in STD_LOGIC;
    \q_reg[128]_0\ : in STD_LOGIC;
    \q_reg[129]\ : in STD_LOGIC;
    \q_reg[129]_0\ : in STD_LOGIC;
    \q_reg[130]\ : in STD_LOGIC;
    \q_reg[130]_0\ : in STD_LOGIC;
    \q_reg[131]\ : in STD_LOGIC;
    \q_reg[131]_0\ : in STD_LOGIC;
    \q_reg[132]\ : in STD_LOGIC;
    \q_reg[132]_0\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    \q_reg[134]\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[134]_1\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[135]_1\ : in STD_LOGIC;
    \q_reg[136]_0\ : in STD_LOGIC;
    \q[15]_i_7\ : in STD_LOGIC;
    \q[15]_i_7_0\ : in STD_LOGIC;
    \q[15]_i_6\ : in STD_LOGIC;
    \q[15]_i_6_0\ : in STD_LOGIC;
    \SrcBE__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[15]_i_6_1\ : in STD_LOGIC;
    \q[15]_i_6_2\ : in STD_LOGIC;
    \q[15]_i_8\ : in STD_LOGIC;
    \q_reg[112]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[116]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[120]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[124]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[128]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[132]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[31]_i_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[11]_rep_0\ : in STD_LOGIC;
    \q_reg[11]_rep__0_1\ : in STD_LOGIC;
    \q_reg[11]_rep__1_3\ : in STD_LOGIC
  );
end design_1_top_0_0_controller;

architecture STRUCTURE of design_1_top_0_0_controller is
  signal controlregE_n_70 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
controlregE: entity work.design_1_top_0_0_floprc
     port map (
      CO(0) => CO(0),
      D(31 downto 0) => D(31 downto 0),
      FlushE => FlushE,
      InstrF(31 downto 0) => InstrF(31 downto 0),
      O(3 downto 0) => O(3 downto 0),
      \PCSrc1__6\ => \PCSrc1__6\,
      Q(7) => Q(5),
      Q(6) => controlregE_n_70,
      Q(5 downto 1) => Q(4 downto 0),
      Q(0) => p_0_in_0(0),
      \SrcBE__0\(3 downto 0) => \SrcBE__0\(3 downto 0),
      clk => clk,
      \condinvb__0\(0) => \condinvb__0\(0),
      data6(0) => data6(0),
      funct3E(1 downto 0) => funct3E(1 downto 0),
      ovfE => ovfE,
      p_0_in(19 downto 0) => p_0_in(19 downto 0),
      p_4_in => p_4_in,
      \q[15]_i_4_0\ => \q[15]_i_4\,
      \q[15]_i_5_0\ => \q[15]_i_5\,
      \q[15]_i_6_0\ => \q[15]_i_6\,
      \q[15]_i_6_1\ => \q[15]_i_6_0\,
      \q[15]_i_6_2\ => \q[15]_i_6_1\,
      \q[15]_i_6_3\ => \q[15]_i_6_2\,
      \q[15]_i_7_0\ => \q[15]_i_7\,
      \q[15]_i_7_1\ => \q[15]_i_7_0\,
      \q[15]_i_8_0\ => \q[15]_i_8\,
      \q[31]_i_12_0\(0) => \q[31]_i_12\(0),
      \q_reg[105]\ => \q_reg[105]\,
      \q_reg[105]_0\ => \q_reg[105]_0\,
      \q_reg[105]_1\ => \q_reg[105]_1\,
      \q_reg[105]_2\ => \q_reg[105]_2\,
      \q_reg[105]_3\ => \q_reg[105]_3\,
      \q_reg[106]\ => \q_reg[106]\,
      \q_reg[106]_0\ => \q_reg[106]_0\,
      \q_reg[106]_1\ => \q_reg[106]_1\,
      \q_reg[107]\ => \q_reg[107]\,
      \q_reg[107]_0\ => \q_reg[107]_0\,
      \q_reg[107]_1\ => \q_reg[107]_1\,
      \q_reg[108]\ => \q_reg[108]\,
      \q_reg[108]_0\ => \q_reg[108]_0\,
      \q_reg[108]_1\ => \q_reg[108]_1\,
      \q_reg[109]\ => \q_reg[109]\,
      \q_reg[109]_0\ => \q_reg[109]_0\,
      \q_reg[109]_1\ => \q_reg[109]_1\,
      \q_reg[109]_2\ => \q_reg[109]_2\,
      \q_reg[10]_0\ => funct3E(2),
      \q_reg[110]\ => \q_reg[110]\,
      \q_reg[110]_0\ => \q_reg[110]_0\,
      \q_reg[111]\ => \q_reg[111]\,
      \q_reg[111]_0\ => \q_reg[111]_0\,
      \q_reg[112]\ => \q_reg[112]\,
      \q_reg[112]_0\ => \q_reg[112]_0\,
      \q_reg[112]_1\(2 downto 0) => \q_reg[112]_1\(2 downto 0),
      \q_reg[113]\ => \q_reg[113]\,
      \q_reg[113]_0\ => \q_reg[113]_0\,
      \q_reg[114]\ => \q_reg[114]\,
      \q_reg[114]_0\ => \q_reg[114]_0\,
      \q_reg[115]\ => \q_reg[115]\,
      \q_reg[115]_0\ => \q_reg[115]_0\,
      \q_reg[116]\ => \q_reg[116]\,
      \q_reg[116]_0\ => \q_reg[116]_0\,
      \q_reg[116]_1\(3 downto 0) => \q_reg[116]_1\(3 downto 0),
      \q_reg[117]\ => \q_reg[117]\,
      \q_reg[117]_0\ => \q_reg[117]_0\,
      \q_reg[118]\ => \q_reg[118]\,
      \q_reg[118]_0\ => \q_reg[118]_0\,
      \q_reg[119]\ => \q_reg[119]\,
      \q_reg[119]_0\ => \q_reg[119]_0\,
      \q_reg[11]_rep_0\ => \q_reg[11]_rep\,
      \q_reg[11]_rep_1\ => \q_reg[11]_rep_0\,
      \q_reg[11]_rep__0_0\ => \q_reg[11]_rep__0\,
      \q_reg[11]_rep__0_1\ => \q_reg[11]_rep__0_0\,
      \q_reg[11]_rep__0_2\ => \q_reg[11]_rep__0_1\,
      \q_reg[11]_rep__1_0\ => \q_reg[11]_rep__1\,
      \q_reg[11]_rep__1_1\ => \q_reg[11]_rep__1_0\,
      \q_reg[11]_rep__1_2\ => \q_reg[11]_rep__1_1\,
      \q_reg[11]_rep__1_3\ => \q_reg[11]_rep__1_2\,
      \q_reg[11]_rep__1_4\ => \q_reg[11]_rep__1_3\,
      \q_reg[120]\ => \q_reg[120]\,
      \q_reg[120]_0\ => \q_reg[120]_0\,
      \q_reg[120]_1\(3 downto 0) => \q_reg[120]_1\(3 downto 0),
      \q_reg[121]\ => \q_reg[121]\,
      \q_reg[121]_0\ => \q_reg[121]_0\,
      \q_reg[122]\ => \q_reg[122]\,
      \q_reg[122]_0\ => \q_reg[122]_0\,
      \q_reg[123]\ => \q_reg[123]\,
      \q_reg[123]_0\ => \q_reg[123]_0\,
      \q_reg[124]\ => \q_reg[124]\,
      \q_reg[124]_0\ => \q_reg[124]_0\,
      \q_reg[124]_1\(3 downto 0) => \q_reg[124]_1\(3 downto 0),
      \q_reg[125]\ => \q_reg[125]\,
      \q_reg[125]_0\ => \q_reg[125]_0\,
      \q_reg[126]\ => \q_reg[126]\,
      \q_reg[126]_0\ => \q_reg[126]_0\,
      \q_reg[127]\ => \q_reg[127]\,
      \q_reg[127]_0\ => \q_reg[127]_0\,
      \q_reg[128]\ => \q_reg[128]\,
      \q_reg[128]_0\ => \q_reg[128]_0\,
      \q_reg[128]_1\(3 downto 0) => \q_reg[128]_1\(3 downto 0),
      \q_reg[129]\ => \q_reg[129]\,
      \q_reg[129]_0\ => \q_reg[129]_0\,
      \q_reg[12]_0\ => \q_reg[12]\,
      \q_reg[12]_1\ => \q_reg[12]_0\,
      \q_reg[12]_2\ => \q_reg[12]_1\,
      \q_reg[130]\ => \q_reg[130]\,
      \q_reg[130]_0\ => \q_reg[130]_0\,
      \q_reg[131]\ => \q_reg[131]\,
      \q_reg[131]_0\ => \q_reg[131]_0\,
      \q_reg[132]\ => \q_reg[132]\,
      \q_reg[132]_0\ => \q_reg[132]_0\,
      \q_reg[132]_1\(3 downto 0) => \q_reg[132]_1\(3 downto 0),
      \q_reg[133]\ => \q_reg[133]\,
      \q_reg[133]_0\ => \q_reg[133]_0\,
      \q_reg[134]\ => \q_reg[134]\,
      \q_reg[134]_0\ => \q_reg[134]_0\,
      \q_reg[134]_1\ => \q_reg[134]_1\,
      \q_reg[135]\ => \q_reg[135]\,
      \q_reg[135]_0\ => \q_reg[135]_0\,
      \q_reg[135]_1\ => \q_reg[135]_1\,
      \q_reg[136]\(59 downto 0) => \q_reg[136]\(59 downto 0),
      \q_reg[136]_0\ => \q_reg[136]_0\,
      \q_reg[13]_0\(31 downto 0) => \q_reg[13]\(31 downto 0),
      \q_reg[13]_1\ => \q_reg[13]_0\,
      \q_reg[14]_0\ => \q_reg[14]\,
      \q_reg[155]\ => \q_reg[155]\,
      \q_reg[15]_0\ => \q_reg[15]\,
      \q_reg[15]_1\ => \q_reg[15]_0\,
      \q_reg[16]_0\ => PCSrcE(0),
      reset => reset
    );
controlregM: entity work.design_1_top_0_0_flopr
     port map (
      D(1) => controlregE_n_70,
      D(0) => p_0_in_0(0),
      clk => clk,
      \q_reg[1]_0\(1 downto 0) => \q_reg[1]\(1 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_datapath is
  port (
    PCF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[19]\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \q_reg[177]\ : out STD_LOGIC;
    \q_reg[39]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ovfE : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC;
    \q_reg[37]\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \q_reg[164]\ : out STD_LOGIC;
    \q_reg[12]_2\ : out STD_LOGIC;
    \q_reg[165]\ : out STD_LOGIC;
    \q_reg[12]_3\ : out STD_LOGIC;
    \q_reg[12]_4\ : out STD_LOGIC;
    \q_reg[12]_5\ : out STD_LOGIC;
    \q_reg[12]_6\ : out STD_LOGIC;
    \q_reg[12]_7\ : out STD_LOGIC;
    \q_reg[12]_8\ : out STD_LOGIC;
    \q_reg[12]_9\ : out STD_LOGIC;
    \q_reg[12]_10\ : out STD_LOGIC;
    \q_reg[12]_11\ : out STD_LOGIC;
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[12]_12\ : out STD_LOGIC;
    \q_reg[12]_13\ : out STD_LOGIC;
    \q_reg[12]_14\ : out STD_LOGIC;
    \q_reg[12]_15\ : out STD_LOGIC;
    \q_reg[12]_16\ : out STD_LOGIC;
    \q_reg[12]_17\ : out STD_LOGIC;
    \q_reg[12]_18\ : out STD_LOGIC;
    \q_reg[12]_19\ : out STD_LOGIC;
    \q_reg[12]_20\ : out STD_LOGIC;
    \q_reg[36]\ : out STD_LOGIC;
    \q_reg[36]_0\ : out STD_LOGIC;
    \q_reg[36]_1\ : out STD_LOGIC;
    \q_reg[36]_2\ : out STD_LOGIC;
    \q_reg[175]\ : out STD_LOGIC;
    \q_reg[175]_0\ : out STD_LOGIC;
    \q_reg[14]\ : out STD_LOGIC;
    \q_reg[150]\ : out STD_LOGIC;
    \q_reg[150]_0\ : out STD_LOGIC;
    data6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[37]_1\ : out STD_LOGIC;
    \q_reg[12]_21\ : out STD_LOGIC;
    \q_reg[12]_22\ : out STD_LOGIC;
    \q_reg[12]_23\ : out STD_LOGIC;
    \q_reg[12]_24\ : out STD_LOGIC;
    \q_reg[12]_25\ : out STD_LOGIC;
    \q_reg[147]\ : out STD_LOGIC;
    \q_reg[146]\ : out STD_LOGIC;
    \q_reg[12]_26\ : out STD_LOGIC;
    \q_reg[36]_3\ : out STD_LOGIC;
    \q_reg[146]_0\ : out STD_LOGIC;
    \q_reg[12]_27\ : out STD_LOGIC;
    \q_reg[11]_rep__0\ : out STD_LOGIC;
    \q_reg[12]_28\ : out STD_LOGIC;
    \q_reg[147]_0\ : out STD_LOGIC;
    \q_reg[147]_1\ : out STD_LOGIC;
    \q_reg[157]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[12]_29\ : out STD_LOGIC;
    \q_reg[12]_30\ : out STD_LOGIC;
    \q_reg[12]_31\ : out STD_LOGIC;
    \q_reg[12]_32\ : out STD_LOGIC;
    \q_reg[12]_33\ : out STD_LOGIC;
    \q_reg[12]_34\ : out STD_LOGIC;
    \q_reg[12]_35\ : out STD_LOGIC;
    \q_reg[176]\ : out STD_LOGIC;
    \q_reg[12]_36\ : out STD_LOGIC;
    \q_reg[12]_37\ : out STD_LOGIC;
    \q_reg[12]_38\ : out STD_LOGIC;
    \q_reg[12]_39\ : out STD_LOGIC;
    \q_reg[12]_40\ : out STD_LOGIC;
    \q_reg[12]_41\ : out STD_LOGIC;
    \q_reg[12]_42\ : out STD_LOGIC;
    \q_reg[12]_43\ : out STD_LOGIC;
    \q_reg[12]_44\ : out STD_LOGIC;
    \q_reg[12]_45\ : out STD_LOGIC;
    \q_reg[12]_46\ : out STD_LOGIC;
    \q_reg[12]_47\ : out STD_LOGIC;
    \q_reg[12]_48\ : out STD_LOGIC;
    \q_reg[12]_49\ : out STD_LOGIC;
    \q_reg[11]_rep__1\ : out STD_LOGIC;
    \q_reg[12]_50\ : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC;
    \q_reg[149]\ : out STD_LOGIC;
    \q_reg[148]\ : out STD_LOGIC;
    \q_reg[147]_2\ : out STD_LOGIC;
    \q_reg[11]_rep__0_0\ : out STD_LOGIC;
    \q_reg[11]_rep__0_1\ : out STD_LOGIC;
    \q_reg[70]\ : out STD_LOGIC;
    \q_reg[70]_0\ : out STD_LOGIC;
    \q_reg[70]_1\ : out STD_LOGIC;
    \q_reg[153]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[161]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[165]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[169]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[173]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[177]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ALUResultM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PCSrc1__6\ : in STD_LOGIC;
    FlushE : in STD_LOGIC;
    \q_reg[32]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_4_in : in STD_LOGIC;
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[133]\ : in STD_LOGIC;
    \q_reg[133]_0\ : in STD_LOGIC;
    \q_reg[133]_1\ : in STD_LOGIC;
    \q[31]_i_17\ : in STD_LOGIC;
    \q[31]_i_17_0\ : in STD_LOGIC;
    \q[31]_i_17_1\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q[15]_i_7\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \condinvb__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[136]\ : in STD_LOGIC_VECTOR ( 34 downto 0 );
    MemWriteM : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_top_0_0_datapath;

architecture STRUCTURE of design_1_top_0_0_datapath is
  signal ImmExtE : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^pcf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCNextF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4F : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCTargetE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \^q\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal RD1E : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Rs1D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal alu_n_1 : STD_LOGIC;
  signal alu_n_10 : STD_LOGIC;
  signal alu_n_11 : STD_LOGIC;
  signal alu_n_12 : STD_LOGIC;
  signal alu_n_13 : STD_LOGIC;
  signal alu_n_14 : STD_LOGIC;
  signal alu_n_15 : STD_LOGIC;
  signal alu_n_16 : STD_LOGIC;
  signal alu_n_17 : STD_LOGIC;
  signal alu_n_18 : STD_LOGIC;
  signal alu_n_19 : STD_LOGIC;
  signal alu_n_2 : STD_LOGIC;
  signal alu_n_20 : STD_LOGIC;
  signal alu_n_21 : STD_LOGIC;
  signal alu_n_22 : STD_LOGIC;
  signal alu_n_23 : STD_LOGIC;
  signal alu_n_24 : STD_LOGIC;
  signal alu_n_25 : STD_LOGIC;
  signal alu_n_26 : STD_LOGIC;
  signal alu_n_27 : STD_LOGIC;
  signal alu_n_28 : STD_LOGIC;
  signal alu_n_29 : STD_LOGIC;
  signal alu_n_3 : STD_LOGIC;
  signal alu_n_30 : STD_LOGIC;
  signal alu_n_31 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal jalrTarget : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \jalrTarget_carry__0_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__0_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__0_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__0_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__1_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__1_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__1_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__1_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__2_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__2_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__2_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__2_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__3_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__3_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__3_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__3_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__4_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__4_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__4_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__4_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__5_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__5_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__5_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__5_n_3\ : STD_LOGIC;
  signal \jalrTarget_carry__6_n_1\ : STD_LOGIC;
  signal \jalrTarget_carry__6_n_2\ : STD_LOGIC;
  signal \jalrTarget_carry__6_n_3\ : STD_LOGIC;
  signal jalrTarget_carry_n_0 : STD_LOGIC;
  signal jalrTarget_carry_n_1 : STD_LOGIC;
  signal jalrTarget_carry_n_2 : STD_LOGIC;
  signal jalrTarget_carry_n_3 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 177 downto 35 );
  signal \^q_reg[19]\ : STD_LOGIC;
  signal regE_n_108 : STD_LOGIC;
  signal regE_n_109 : STD_LOGIC;
  signal regE_n_110 : STD_LOGIC;
  signal regE_n_111 : STD_LOGIC;
  signal regE_n_112 : STD_LOGIC;
  signal regE_n_113 : STD_LOGIC;
  signal regE_n_114 : STD_LOGIC;
  signal regE_n_115 : STD_LOGIC;
  signal regE_n_116 : STD_LOGIC;
  signal regE_n_117 : STD_LOGIC;
  signal regE_n_118 : STD_LOGIC;
  signal regE_n_119 : STD_LOGIC;
  signal regE_n_120 : STD_LOGIC;
  signal regE_n_121 : STD_LOGIC;
  signal regE_n_122 : STD_LOGIC;
  signal regE_n_123 : STD_LOGIC;
  signal regE_n_180 : STD_LOGIC;
  signal regE_n_181 : STD_LOGIC;
  signal regE_n_182 : STD_LOGIC;
  signal regE_n_183 : STD_LOGIC;
  signal regE_n_184 : STD_LOGIC;
  signal regE_n_185 : STD_LOGIC;
  signal regE_n_186 : STD_LOGIC;
  signal regE_n_187 : STD_LOGIC;
  signal regE_n_188 : STD_LOGIC;
  signal regE_n_189 : STD_LOGIC;
  signal regE_n_190 : STD_LOGIC;
  signal regE_n_191 : STD_LOGIC;
  signal regE_n_192 : STD_LOGIC;
  signal regE_n_193 : STD_LOGIC;
  signal regE_n_194 : STD_LOGIC;
  signal regE_n_195 : STD_LOGIC;
  signal regE_n_196 : STD_LOGIC;
  signal regE_n_197 : STD_LOGIC;
  signal regE_n_198 : STD_LOGIC;
  signal regE_n_199 : STD_LOGIC;
  signal regE_n_200 : STD_LOGIC;
  signal regE_n_201 : STD_LOGIC;
  signal regE_n_202 : STD_LOGIC;
  signal regE_n_203 : STD_LOGIC;
  signal regE_n_204 : STD_LOGIC;
  signal regE_n_226 : STD_LOGIC;
  signal regE_n_227 : STD_LOGIC;
  signal regE_n_228 : STD_LOGIC;
  signal regE_n_229 : STD_LOGIC;
  signal regE_n_230 : STD_LOGIC;
  signal regE_n_231 : STD_LOGIC;
  signal regE_n_232 : STD_LOGIC;
  signal regE_n_233 : STD_LOGIC;
  signal regE_n_234 : STD_LOGIC;
  signal regE_n_235 : STD_LOGIC;
  signal regE_n_236 : STD_LOGIC;
  signal regE_n_237 : STD_LOGIC;
  signal regE_n_238 : STD_LOGIC;
  signal regE_n_239 : STD_LOGIC;
  signal regE_n_240 : STD_LOGIC;
  signal regE_n_241 : STD_LOGIC;
  signal regE_n_242 : STD_LOGIC;
  signal regE_n_243 : STD_LOGIC;
  signal regE_n_244 : STD_LOGIC;
  signal regE_n_245 : STD_LOGIC;
  signal regE_n_246 : STD_LOGIC;
  signal regE_n_247 : STD_LOGIC;
  signal regE_n_248 : STD_LOGIC;
  signal regE_n_249 : STD_LOGIC;
  signal regE_n_250 : STD_LOGIC;
  signal regE_n_251 : STD_LOGIC;
  signal regE_n_252 : STD_LOGIC;
  signal regE_n_253 : STD_LOGIC;
  signal regE_n_254 : STD_LOGIC;
  signal regE_n_255 : STD_LOGIC;
  signal regE_n_256 : STD_LOGIC;
  signal regE_n_257 : STD_LOGIC;
  signal regE_n_258 : STD_LOGIC;
  signal regE_n_259 : STD_LOGIC;
  signal regE_n_260 : STD_LOGIC;
  signal regE_n_261 : STD_LOGIC;
  signal regE_n_262 : STD_LOGIC;
  signal regE_n_263 : STD_LOGIC;
  signal regE_n_264 : STD_LOGIC;
  signal regE_n_265 : STD_LOGIC;
  signal regE_n_266 : STD_LOGIC;
  signal regE_n_267 : STD_LOGIC;
  signal regE_n_268 : STD_LOGIC;
  signal regE_n_269 : STD_LOGIC;
  signal regE_n_270 : STD_LOGIC;
  signal regE_n_271 : STD_LOGIC;
  signal regE_n_272 : STD_LOGIC;
  signal regE_n_273 : STD_LOGIC;
  signal regE_n_274 : STD_LOGIC;
  signal regE_n_275 : STD_LOGIC;
  signal regE_n_276 : STD_LOGIC;
  signal regE_n_277 : STD_LOGIC;
  signal regE_n_278 : STD_LOGIC;
  signal regE_n_279 : STD_LOGIC;
  signal regE_n_280 : STD_LOGIC;
  signal regE_n_281 : STD_LOGIC;
  signal regM_n_32 : STD_LOGIC;
  signal regM_n_33 : STD_LOGIC;
  signal regM_n_34 : STD_LOGIC;
  signal regM_n_35 : STD_LOGIC;
  signal regM_n_36 : STD_LOGIC;
  signal regM_n_37 : STD_LOGIC;
  signal regM_n_38 : STD_LOGIC;
  signal regM_n_39 : STD_LOGIC;
  signal regM_n_40 : STD_LOGIC;
  signal regM_n_41 : STD_LOGIC;
  signal regM_n_42 : STD_LOGIC;
  signal regM_n_43 : STD_LOGIC;
  signal regM_n_44 : STD_LOGIC;
  signal regM_n_45 : STD_LOGIC;
  signal regM_n_46 : STD_LOGIC;
  signal regM_n_47 : STD_LOGIC;
  signal regM_n_48 : STD_LOGIC;
  signal regM_n_49 : STD_LOGIC;
  signal regM_n_50 : STD_LOGIC;
  signal regM_n_51 : STD_LOGIC;
  signal regM_n_52 : STD_LOGIC;
  signal regM_n_53 : STD_LOGIC;
  signal regM_n_54 : STD_LOGIC;
  signal regM_n_55 : STD_LOGIC;
  signal regM_n_56 : STD_LOGIC;
  signal regM_n_57 : STD_LOGIC;
  signal regM_n_58 : STD_LOGIC;
  signal regM_n_59 : STD_LOGIC;
  signal regM_n_60 : STD_LOGIC;
  signal regM_n_61 : STD_LOGIC;
  signal regM_n_62 : STD_LOGIC;
  signal regM_n_63 : STD_LOGIC;
  signal regM_n_64 : STD_LOGIC;
  signal \NLW_jalrTarget_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of jalrTarget_carry : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \jalrTarget_carry__6\ : label is 35;
begin
  PCF(31 downto 0) <= \^pcf\(31 downto 0);
  Q(59 downto 0) <= \^q\(59 downto 0);
  \q_reg[19]\ <= \^q_reg[19]\;
alu: entity work.design_1_top_0_0_alu
     port map (
      CO(0) => CO(0),
      DI(3) => regE_n_116,
      DI(2) => regE_n_117,
      DI(1) => regE_n_118,
      DI(0) => regE_n_119,
      Q(60 downto 31) => \^q\(58 downto 29),
      Q(30) => RD1E(0),
      Q(29 downto 3) => \^q\(27 downto 1),
      Q(2 downto 0) => ImmExtE(3 downto 1),
      S(3) => regE_n_120,
      S(2) => regE_n_121,
      S(1) => regE_n_122,
      S(0) => regE_n_123,
      \q_reg[105]\(3) => regE_n_108,
      \q_reg[105]\(2) => regE_n_109,
      \q_reg[105]\(1) => regE_n_110,
      \q_reg[105]\(0) => regE_n_111,
      \q_reg[105]_0\(3) => regE_n_112,
      \q_reg[105]_0\(2) => regE_n_113,
      \q_reg[105]_0\(1) => regE_n_114,
      \q_reg[105]_0\(0) => regE_n_115,
      \q_reg[108]_i_8\(0) => \q_reg[32]\(1),
      \q_reg[108]_i_8_0\ => \q_reg[118]\,
      \q_reg[149]\(3) => alu_n_1,
      \q_reg[149]\(2) => alu_n_2,
      \q_reg[149]\(1) => alu_n_3,
      \q_reg[149]\(0) => alu_n_4,
      \q_reg[153]\(3) => alu_n_5,
      \q_reg[153]\(2) => alu_n_6,
      \q_reg[153]\(1) => alu_n_7,
      \q_reg[153]\(0) => alu_n_8,
      \q_reg[157]\(3) => alu_n_9,
      \q_reg[157]\(2) => alu_n_10,
      \q_reg[157]\(1) => alu_n_11,
      \q_reg[157]\(0) => alu_n_12,
      \q_reg[161]\(3) => alu_n_13,
      \q_reg[161]\(2) => alu_n_14,
      \q_reg[161]\(1) => alu_n_15,
      \q_reg[161]\(0) => alu_n_16,
      \q_reg[165]\(3) => alu_n_17,
      \q_reg[165]\(2) => alu_n_18,
      \q_reg[165]\(1) => alu_n_19,
      \q_reg[165]\(0) => alu_n_20,
      \q_reg[169]\(3) => alu_n_21,
      \q_reg[169]\(2) => alu_n_22,
      \q_reg[169]\(1) => alu_n_23,
      \q_reg[169]\(0) => alu_n_24,
      \q_reg[173]\(3) => alu_n_25,
      \q_reg[173]\(2) => alu_n_26,
      \q_reg[173]\(1) => alu_n_27,
      \q_reg[173]\(0) => alu_n_28,
      \q_reg[176]\(2) => alu_n_29,
      \q_reg[176]\(1) => alu_n_30,
      \q_reg[176]\(0) => alu_n_31,
      \result0_inferred__6/i__carry__1_0\(3) => regE_n_188,
      \result0_inferred__6/i__carry__1_0\(2) => regE_n_189,
      \result0_inferred__6/i__carry__1_0\(1) => regE_n_190,
      \result0_inferred__6/i__carry__1_0\(0) => regE_n_191,
      \result0_inferred__6/i__carry__1_1\(3) => regE_n_192,
      \result0_inferred__6/i__carry__1_1\(2) => regE_n_193,
      \result0_inferred__6/i__carry__1_1\(1) => regE_n_194,
      \result0_inferred__6/i__carry__1_1\(0) => regE_n_195,
      \result0_inferred__6/i__carry__2_0\(3) => regE_n_180,
      \result0_inferred__6/i__carry__2_0\(2) => regE_n_181,
      \result0_inferred__6/i__carry__2_0\(1) => regE_n_182,
      \result0_inferred__6/i__carry__2_0\(0) => regE_n_183,
      \result0_inferred__6/i__carry__2_1\(3) => regE_n_184,
      \result0_inferred__6/i__carry__2_1\(2) => regE_n_185,
      \result0_inferred__6/i__carry__2_1\(1) => regE_n_186,
      \result0_inferred__6/i__carry__2_1\(0) => regE_n_187
    );
branchadd: entity work.design_1_top_0_0_adder
     port map (
      D(27 downto 0) => PCNextF(27 downto 0),
      O(3 downto 0) => PCTargetE(31 downto 28),
      PCF(2 downto 0) => \^pcf\(2 downto 0),
      PCPlus4F(24 downto 0) => PCPlus4F(27 downto 3),
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(30 downto 4) => \^q\(27 downto 1),
      Q(3 downto 1) => ImmExtE(3 downto 1),
      Q(0) => \^q\(0),
      S(3) => regE_n_226,
      S(2) => regE_n_227,
      S(1) => regE_n_228,
      S(0) => regE_n_229,
      jalrTarget(27 downto 0) => jalrTarget(27 downto 0),
      \q_reg[11]\(3) => regE_n_234,
      \q_reg[11]\(2) => regE_n_235,
      \q_reg[11]\(1) => regE_n_236,
      \q_reg[11]\(0) => regE_n_237,
      \q_reg[15]\(3) => regE_n_238,
      \q_reg[15]\(2) => regE_n_239,
      \q_reg[15]\(1) => regE_n_240,
      \q_reg[15]\(0) => regE_n_241,
      \q_reg[19]\(3) => regE_n_242,
      \q_reg[19]\(2) => regE_n_243,
      \q_reg[19]\(1) => regE_n_244,
      \q_reg[19]\(0) => regE_n_245,
      \q_reg[23]\(3) => regE_n_246,
      \q_reg[23]\(2) => regE_n_247,
      \q_reg[23]\(1) => regE_n_248,
      \q_reg[23]\(0) => regE_n_249,
      \q_reg[27]\(3) => regE_n_250,
      \q_reg[27]\(2) => regE_n_251,
      \q_reg[27]\(1) => regE_n_252,
      \q_reg[27]\(0) => regE_n_253,
      \q_reg[31]\(3) => regE_n_196,
      \q_reg[31]\(2) => regE_n_197,
      \q_reg[31]\(1) => regE_n_198,
      \q_reg[31]\(0) => regE_n_199,
      \q_reg[7]\(3) => regE_n_230,
      \q_reg[7]\(2) => regE_n_231,
      \q_reg[7]\(1) => regE_n_232,
      \q_reg[7]\(0) => regE_n_233
    );
jalrTarget_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => jalrTarget_carry_n_0,
      CO(2) => jalrTarget_carry_n_1,
      CO(1) => jalrTarget_carry_n_2,
      CO(0) => jalrTarget_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \^q\(31 downto 29),
      DI(0) => RD1E(0),
      O(3 downto 0) => jalrTarget(3 downto 0),
      S(3) => regE_n_254,
      S(2) => regE_n_255,
      S(1) => regE_n_256,
      S(0) => regE_n_257
    );
\jalrTarget_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => jalrTarget_carry_n_0,
      CO(3) => \jalrTarget_carry__0_n_0\,
      CO(2) => \jalrTarget_carry__0_n_1\,
      CO(1) => \jalrTarget_carry__0_n_2\,
      CO(0) => \jalrTarget_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(35 downto 32),
      O(3 downto 0) => jalrTarget(7 downto 4),
      S(3) => regE_n_258,
      S(2) => regE_n_259,
      S(1) => regE_n_260,
      S(0) => regE_n_261
    );
\jalrTarget_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__0_n_0\,
      CO(3) => \jalrTarget_carry__1_n_0\,
      CO(2) => \jalrTarget_carry__1_n_1\,
      CO(1) => \jalrTarget_carry__1_n_2\,
      CO(0) => \jalrTarget_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(39 downto 36),
      O(3 downto 0) => jalrTarget(11 downto 8),
      S(3) => regE_n_262,
      S(2) => regE_n_263,
      S(1) => regE_n_264,
      S(0) => regE_n_265
    );
\jalrTarget_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__1_n_0\,
      CO(3) => \jalrTarget_carry__2_n_0\,
      CO(2) => \jalrTarget_carry__2_n_1\,
      CO(1) => \jalrTarget_carry__2_n_2\,
      CO(0) => \jalrTarget_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(43 downto 40),
      O(3 downto 0) => jalrTarget(15 downto 12),
      S(3) => regE_n_266,
      S(2) => regE_n_267,
      S(1) => regE_n_268,
      S(0) => regE_n_269
    );
\jalrTarget_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__2_n_0\,
      CO(3) => \jalrTarget_carry__3_n_0\,
      CO(2) => \jalrTarget_carry__3_n_1\,
      CO(1) => \jalrTarget_carry__3_n_2\,
      CO(0) => \jalrTarget_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(47 downto 44),
      O(3 downto 0) => jalrTarget(19 downto 16),
      S(3) => regE_n_270,
      S(2) => regE_n_271,
      S(1) => regE_n_272,
      S(0) => regE_n_273
    );
\jalrTarget_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__3_n_0\,
      CO(3) => \jalrTarget_carry__4_n_0\,
      CO(2) => \jalrTarget_carry__4_n_1\,
      CO(1) => \jalrTarget_carry__4_n_2\,
      CO(0) => \jalrTarget_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(51 downto 48),
      O(3 downto 0) => jalrTarget(23 downto 20),
      S(3) => regE_n_274,
      S(2) => regE_n_275,
      S(1) => regE_n_276,
      S(0) => regE_n_277
    );
\jalrTarget_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__4_n_0\,
      CO(3) => \jalrTarget_carry__5_n_0\,
      CO(2) => \jalrTarget_carry__5_n_1\,
      CO(1) => \jalrTarget_carry__5_n_2\,
      CO(0) => \jalrTarget_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(55 downto 52),
      O(3 downto 0) => jalrTarget(27 downto 24),
      S(3) => regE_n_278,
      S(2) => regE_n_279,
      S(1) => regE_n_280,
      S(0) => regE_n_281
    );
\jalrTarget_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__5_n_0\,
      CO(3) => \NLW_jalrTarget_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \jalrTarget_carry__6_n_1\,
      CO(1) => \jalrTarget_carry__6_n_2\,
      CO(0) => \jalrTarget_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(58 downto 56),
      O(3 downto 0) => jalrTarget(31 downto 28),
      S(3) => regE_n_200,
      S(2) => regE_n_201,
      S(1) => regE_n_202,
      S(0) => regE_n_203
    );
pcadd: entity work.design_1_top_0_0_adder_0
     port map (
      PCPlus4F(28 downto 0) => PCPlus4F(31 downto 3),
      Q(29 downto 0) => \^pcf\(31 downto 2)
    );
pcreg: entity work.design_1_top_0_0_flopenr
     port map (
      D(31 downto 0) => p_0_in_0(63 downto 32),
      E(0) => regE_n_204,
      PCF(31 downto 0) => \^pcf\(31 downto 0),
      PCSrcE(0) => PCSrcE(0),
      clk => clk,
      \q_reg[31]_0\(31 downto 0) => PCNextF(31 downto 0),
      reset => reset
    );
regD: entity work.design_1_top_0_0_flopenrc
     port map (
      D(100 downto 69) => p_0_in_1(177 downto 146),
      D(68 downto 37) => p_0_in_1(113 downto 82),
      D(36 downto 0) => p_0_in_1(71 downto 35),
      E(0) => regE_n_204,
      FlushE => FlushE,
      PCSrcE(0) => PCSrcE(0),
      Q(9 downto 5) => Rs2D(4 downto 0),
      Q(4 downto 0) => Rs1D(4 downto 0),
      clk => clk,
      p_0_in(19 downto 0) => p_0_in(19 downto 0),
      \q_reg[11]_rep__1\ => \^q_reg[19]\,
      \q_reg[70]_0\ => \q_reg[70]\,
      \q_reg[70]_1\ => \q_reg[70]_0\,
      \q_reg[70]_2\ => \q_reg[70]_1\,
      \q_reg[95]_0\(63 downto 32) => D(31 downto 0),
      \q_reg[95]_0\(31 downto 0) => p_0_in_0(63 downto 32),
      reset => reset
    );
regE: entity work.\design_1_top_0_0_floprc__parameterized0\
     port map (
      D(100 downto 69) => p_0_in_1(177 downto 146),
      D(68 downto 37) => p_0_in_1(113 downto 82),
      D(36 downto 0) => p_0_in_1(71 downto 35),
      DI(3) => regE_n_116,
      DI(2) => regE_n_117,
      DI(1) => regE_n_118,
      DI(0) => regE_n_119,
      E(0) => regE_n_204,
      O(3 downto 0) => PCTargetE(31 downto 28),
      PCPlus4F(3 downto 0) => PCPlus4F(31 downto 28),
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(63 downto 33) => \^q\(59 downto 29),
      Q(32) => RD1E(0),
      Q(31 downto 4) => \^q\(28 downto 1),
      Q(3 downto 1) => ImmExtE(3 downto 1),
      Q(0) => \^q\(0),
      S(3) => regE_n_120,
      S(2) => regE_n_121,
      S(1) => regE_n_122,
      S(0) => regE_n_123,
      clk => clk,
      \condinvb__0\(0) => \condinvb__0\(0),
      data6(0) => data6(0),
      ovfE => ovfE,
      p_4_in => p_4_in,
      \q[105]_i_3_0\(3) => alu_n_1,
      \q[105]_i_3_0\(2) => alu_n_2,
      \q[105]_i_3_0\(1) => alu_n_3,
      \q[105]_i_3_0\(0) => alu_n_4,
      \q[109]_i_4_0\(3) => alu_n_5,
      \q[109]_i_4_0\(2) => alu_n_6,
      \q[109]_i_4_0\(1) => alu_n_7,
      \q[109]_i_4_0\(0) => alu_n_8,
      \q[113]_i_3\(3) => alu_n_9,
      \q[113]_i_3\(2) => alu_n_10,
      \q[113]_i_3\(1) => alu_n_11,
      \q[113]_i_3\(0) => alu_n_12,
      \q[117]_i_3\(3) => alu_n_13,
      \q[117]_i_3\(2) => alu_n_14,
      \q[117]_i_3\(1) => alu_n_15,
      \q[117]_i_3\(0) => alu_n_16,
      \q[121]_i_4\(3) => alu_n_17,
      \q[121]_i_4\(2) => alu_n_18,
      \q[121]_i_4\(1) => alu_n_19,
      \q[121]_i_4\(0) => alu_n_20,
      \q[125]_i_4\(3) => alu_n_21,
      \q[125]_i_4\(2) => alu_n_22,
      \q[125]_i_4\(1) => alu_n_23,
      \q[125]_i_4\(0) => alu_n_24,
      \q[129]_i_4\(3) => alu_n_25,
      \q[129]_i_4\(2) => alu_n_26,
      \q[129]_i_4\(1) => alu_n_27,
      \q[129]_i_4\(0) => alu_n_28,
      \q[133]_i_4\(2) => alu_n_29,
      \q[133]_i_4\(1) => alu_n_30,
      \q[133]_i_4\(0) => alu_n_31,
      \q[15]_i_7\ => \q[15]_i_7\,
      \q[31]_i_17\ => \q[31]_i_17\,
      \q[31]_i_17_0\ => \q[31]_i_17_0\,
      \q[31]_i_17_1\ => \q[31]_i_17_1\,
      \q[31]_i_6_0\(9 downto 5) => Rs2D(4 downto 0),
      \q[31]_i_6_0\(4 downto 0) => Rs1D(4 downto 0),
      \q_reg[106]_0\ => \q_reg[106]\,
      \q_reg[106]_1\ => \q_reg[106]_0\,
      \q_reg[106]_2\ => \q_reg[106]_1\,
      \q_reg[107]_0\ => \q_reg[107]\,
      \q_reg[118]\ => \q_reg[118]\,
      \q_reg[11]_rep__0\ => \q_reg[11]_rep__0\,
      \q_reg[11]_rep__0_0\ => \q_reg[11]_rep__0_0\,
      \q_reg[11]_rep__0_1\ => \q_reg[11]_rep__0_1\,
      \q_reg[11]_rep__1\ => \q_reg[11]_rep__1\,
      \q_reg[12]\ => \q_reg[12]\,
      \q_reg[12]_0\ => \q_reg[12]_0\,
      \q_reg[12]_1\ => \q_reg[12]_1\,
      \q_reg[12]_10\ => \q_reg[12]_10\,
      \q_reg[12]_11\ => \q_reg[12]_11\,
      \q_reg[12]_12\ => \q_reg[12]_12\,
      \q_reg[12]_13\ => \q_reg[12]_13\,
      \q_reg[12]_14\ => \q_reg[12]_14\,
      \q_reg[12]_15\ => \q_reg[12]_15\,
      \q_reg[12]_16\ => \q_reg[12]_16\,
      \q_reg[12]_17\ => \q_reg[12]_17\,
      \q_reg[12]_18\ => \q_reg[12]_18\,
      \q_reg[12]_19\ => \q_reg[12]_19\,
      \q_reg[12]_2\ => \q_reg[12]_2\,
      \q_reg[12]_20\ => \q_reg[12]_20\,
      \q_reg[12]_21\ => \q_reg[12]_21\,
      \q_reg[12]_22\ => \q_reg[12]_22\,
      \q_reg[12]_23\ => \q_reg[12]_23\,
      \q_reg[12]_24\ => \q_reg[12]_24\,
      \q_reg[12]_25\ => \q_reg[12]_25\,
      \q_reg[12]_26\ => \q_reg[12]_26\,
      \q_reg[12]_27\ => \q_reg[12]_27\,
      \q_reg[12]_28\ => \q_reg[12]_28\,
      \q_reg[12]_29\ => \q_reg[12]_29\,
      \q_reg[12]_3\ => \q_reg[12]_3\,
      \q_reg[12]_30\ => \q_reg[12]_30\,
      \q_reg[12]_31\ => \q_reg[12]_31\,
      \q_reg[12]_32\ => \q_reg[12]_32\,
      \q_reg[12]_33\ => \q_reg[12]_33\,
      \q_reg[12]_34\ => \q_reg[12]_34\,
      \q_reg[12]_35\ => \q_reg[12]_35\,
      \q_reg[12]_36\ => \q_reg[12]_36\,
      \q_reg[12]_37\ => \q_reg[12]_37\,
      \q_reg[12]_38\ => \q_reg[12]_38\,
      \q_reg[12]_39\ => \q_reg[12]_39\,
      \q_reg[12]_4\ => \q_reg[12]_4\,
      \q_reg[12]_40\ => \q_reg[12]_40\,
      \q_reg[12]_41\ => \q_reg[12]_41\,
      \q_reg[12]_42\ => \q_reg[12]_42\,
      \q_reg[12]_43\ => \q_reg[12]_43\,
      \q_reg[12]_44\ => \q_reg[12]_44\,
      \q_reg[12]_45\ => \q_reg[12]_45\,
      \q_reg[12]_46\ => \q_reg[12]_46\,
      \q_reg[12]_47\ => \q_reg[12]_47\,
      \q_reg[12]_48\ => \q_reg[12]_48\,
      \q_reg[12]_49\ => \q_reg[12]_49\,
      \q_reg[12]_5\ => \q_reg[12]_5\,
      \q_reg[12]_50\ => \q_reg[12]_50\,
      \q_reg[12]_6\ => \q_reg[12]_6\,
      \q_reg[12]_7\ => \q_reg[12]_7\,
      \q_reg[12]_8\ => \q_reg[12]_8\,
      \q_reg[12]_9\ => \q_reg[12]_9\,
      \q_reg[133]\ => \q_reg[133]\,
      \q_reg[133]_0\ => \q_reg[133]_0\,
      \q_reg[133]_1\ => \q_reg[133]_1\,
      \q_reg[135]\ => \q_reg[135]\,
      \q_reg[135]_0\ => \q_reg[135]_0\,
      \q_reg[13]\ => \q_reg[13]\,
      \q_reg[146]_0\ => \q_reg[146]\,
      \q_reg[146]_1\ => \q_reg[146]_0\,
      \q_reg[147]_0\ => \q_reg[147]\,
      \q_reg[147]_1\ => \q_reg[147]_0\,
      \q_reg[147]_2\ => \q_reg[147]_1\,
      \q_reg[147]_3\ => \q_reg[147]_2\,
      \q_reg[148]_0\ => \q_reg[148]\,
      \q_reg[149]_0\ => \q_reg[149]\,
      \q_reg[149]_1\(3) => regE_n_254,
      \q_reg[149]_1\(2) => regE_n_255,
      \q_reg[149]_1\(1) => regE_n_256,
      \q_reg[149]_1\(0) => regE_n_257,
      \q_reg[14]\ => \q_reg[14]\,
      \q_reg[150]_0\ => \q_reg[150]\,
      \q_reg[150]_1\ => \q_reg[150]_0\,
      \q_reg[153]_0\(2 downto 0) => \q_reg[153]\(2 downto 0),
      \q_reg[153]_1\(3) => regE_n_258,
      \q_reg[153]_1\(2) => regE_n_259,
      \q_reg[153]_1\(1) => regE_n_260,
      \q_reg[153]_1\(0) => regE_n_261,
      \q_reg[157]_0\(3 downto 0) => \q_reg[157]\(3 downto 0),
      \q_reg[157]_1\(3) => regE_n_262,
      \q_reg[157]_1\(2) => regE_n_263,
      \q_reg[157]_1\(1) => regE_n_264,
      \q_reg[157]_1\(0) => regE_n_265,
      \q_reg[161]_0\(3) => regE_n_192,
      \q_reg[161]_0\(2) => regE_n_193,
      \q_reg[161]_0\(1) => regE_n_194,
      \q_reg[161]_0\(0) => regE_n_195,
      \q_reg[161]_1\(3 downto 0) => \q_reg[161]\(3 downto 0),
      \q_reg[161]_2\(3) => regE_n_266,
      \q_reg[161]_2\(2) => regE_n_267,
      \q_reg[161]_2\(1) => regE_n_268,
      \q_reg[161]_2\(0) => regE_n_269,
      \q_reg[164]_0\ => \q_reg[164]\,
      \q_reg[165]_0\ => \q_reg[165]\,
      \q_reg[165]_1\(3 downto 0) => \q_reg[165]_0\(3 downto 0),
      \q_reg[165]_2\(3) => regE_n_270,
      \q_reg[165]_2\(2) => regE_n_271,
      \q_reg[165]_2\(1) => regE_n_272,
      \q_reg[165]_2\(0) => regE_n_273,
      \q_reg[169]_0\(3 downto 0) => \q_reg[169]\(3 downto 0),
      \q_reg[169]_1\(3) => regE_n_274,
      \q_reg[169]_1\(2) => regE_n_275,
      \q_reg[169]_1\(1) => regE_n_276,
      \q_reg[169]_1\(0) => regE_n_277,
      \q_reg[16]\(3 downto 0) => PCNextF(31 downto 28),
      \q_reg[173]_0\(3 downto 0) => \q_reg[173]\(3 downto 0),
      \q_reg[173]_1\(3) => regE_n_278,
      \q_reg[173]_1\(2) => regE_n_279,
      \q_reg[173]_1\(1) => regE_n_280,
      \q_reg[173]_1\(0) => regE_n_281,
      \q_reg[175]_0\ => \q_reg[175]\,
      \q_reg[175]_1\ => \q_reg[175]_0\,
      \q_reg[176]_0\ => \q_reg[176]\,
      \q_reg[177]_0\ => \q_reg[177]\,
      \q_reg[177]_1\(3 downto 0) => O(3 downto 0),
      \q_reg[177]_2\(3) => regE_n_200,
      \q_reg[177]_2\(2) => regE_n_201,
      \q_reg[177]_2\(1) => regE_n_202,
      \q_reg[177]_2\(0) => regE_n_203,
      \q_reg[177]_3\(0) => \q_reg[177]_0\(0),
      \q_reg[19]\ => \^q_reg[19]\,
      \q_reg[31]\(3 downto 0) => jalrTarget(31 downto 28),
      \q_reg[32]\(5 downto 0) => \q_reg[32]\(5 downto 0),
      \q_reg[36]_0\ => \q_reg[39]\(0),
      \q_reg[36]_1\ => \q_reg[36]\,
      \q_reg[36]_2\ => \q_reg[36]_0\,
      \q_reg[36]_3\ => \q_reg[36]_1\,
      \q_reg[36]_4\ => \q_reg[36]_2\,
      \q_reg[36]_5\ => \q_reg[36]_3\,
      \q_reg[37]_0\ => \q_reg[37]\,
      \q_reg[37]_1\ => \q_reg[37]_0\,
      \q_reg[37]_2\ => \q_reg[37]_1\,
      \q_reg[37]_3\ => \q_reg[39]\(1),
      \q_reg[38]_0\ => \q_reg[39]\(2),
      \q_reg[38]_1\(3) => regE_n_226,
      \q_reg[38]_1\(2) => regE_n_227,
      \q_reg[38]_1\(1) => regE_n_228,
      \q_reg[38]_1\(0) => regE_n_229,
      \q_reg[39]_0\ => \q_reg[39]\(3),
      \q_reg[42]_0\(3) => regE_n_230,
      \q_reg[42]_0\(2) => regE_n_231,
      \q_reg[42]_0\(1) => regE_n_232,
      \q_reg[42]_0\(0) => regE_n_233,
      \q_reg[46]_0\(3) => regE_n_234,
      \q_reg[46]_0\(2) => regE_n_235,
      \q_reg[46]_0\(1) => regE_n_236,
      \q_reg[46]_0\(0) => regE_n_237,
      \q_reg[49]_0\(3) => regE_n_188,
      \q_reg[49]_0\(2) => regE_n_189,
      \q_reg[49]_0\(1) => regE_n_190,
      \q_reg[49]_0\(0) => regE_n_191,
      \q_reg[50]_0\(3) => regE_n_238,
      \q_reg[50]_0\(2) => regE_n_239,
      \q_reg[50]_0\(1) => regE_n_240,
      \q_reg[50]_0\(0) => regE_n_241,
      \q_reg[54]_0\(3) => regE_n_242,
      \q_reg[54]_0\(2) => regE_n_243,
      \q_reg[54]_0\(1) => regE_n_244,
      \q_reg[54]_0\(0) => regE_n_245,
      \q_reg[57]_0\(3) => regE_n_180,
      \q_reg[57]_0\(2) => regE_n_181,
      \q_reg[57]_0\(1) => regE_n_182,
      \q_reg[57]_0\(0) => regE_n_183,
      \q_reg[57]_1\(3) => regE_n_184,
      \q_reg[57]_1\(2) => regE_n_185,
      \q_reg[57]_1\(1) => regE_n_186,
      \q_reg[57]_1\(0) => regE_n_187,
      \q_reg[58]_0\(3) => regE_n_246,
      \q_reg[58]_0\(2) => regE_n_247,
      \q_reg[58]_0\(1) => regE_n_248,
      \q_reg[58]_0\(0) => regE_n_249,
      \q_reg[62]_0\(3) => regE_n_250,
      \q_reg[62]_0\(2) => regE_n_251,
      \q_reg[62]_0\(1) => regE_n_252,
      \q_reg[62]_0\(0) => regE_n_253,
      \q_reg[65]_0\(3) => regE_n_108,
      \q_reg[65]_0\(2) => regE_n_109,
      \q_reg[65]_0\(1) => regE_n_110,
      \q_reg[65]_0\(0) => regE_n_111,
      \q_reg[65]_1\(3) => regE_n_112,
      \q_reg[65]_1\(2) => regE_n_113,
      \q_reg[65]_1\(1) => regE_n_114,
      \q_reg[65]_1\(0) => regE_n_115,
      \q_reg[66]_0\(3) => regE_n_196,
      \q_reg[66]_0\(2) => regE_n_197,
      \q_reg[66]_0\(1) => regE_n_198,
      \q_reg[66]_0\(0) => regE_n_199,
      reset => reset
    );
regM: entity work.\design_1_top_0_0_flopr__parameterized1\
     port map (
      ALUResultM(31 downto 0) => ALUResultM(31 downto 0),
      D(31) => regM_n_33,
      D(30) => regM_n_34,
      D(29) => regM_n_35,
      D(28) => regM_n_36,
      D(27) => regM_n_37,
      D(26) => regM_n_38,
      D(25) => regM_n_39,
      D(24) => regM_n_40,
      D(23) => regM_n_41,
      D(22) => regM_n_42,
      D(21) => regM_n_43,
      D(20) => regM_n_44,
      D(19) => regM_n_45,
      D(18) => regM_n_46,
      D(17) => regM_n_47,
      D(16) => regM_n_48,
      D(15) => regM_n_49,
      D(14) => regM_n_50,
      D(13) => regM_n_51,
      D(12) => regM_n_52,
      D(11) => regM_n_53,
      D(10) => regM_n_54,
      D(9) => regM_n_55,
      D(8) => regM_n_56,
      D(7) => regM_n_57,
      D(6) => regM_n_58,
      D(5) => regM_n_59,
      D(4) => regM_n_60,
      D(3) => regM_n_61,
      D(2) => regM_n_62,
      D(1) => regM_n_63,
      D(0) => regM_n_64,
      E(0) => regM_n_32,
      MemWriteM => MemWriteM,
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      clk => clk,
      \q_reg[136]_0\(34 downto 0) => \q_reg[136]\(34 downto 0),
      reset => reset
    );
store: entity work.design_1_top_0_0_store
     port map (
      D(31) => regM_n_33,
      D(30) => regM_n_34,
      D(29) => regM_n_35,
      D(28) => regM_n_36,
      D(27) => regM_n_37,
      D(26) => regM_n_38,
      D(25) => regM_n_39,
      D(24) => regM_n_40,
      D(23) => regM_n_41,
      D(22) => regM_n_42,
      D(21) => regM_n_43,
      D(20) => regM_n_44,
      D(19) => regM_n_45,
      D(18) => regM_n_46,
      D(17) => regM_n_47,
      D(16) => regM_n_48,
      D(15) => regM_n_49,
      D(14) => regM_n_50,
      D(13) => regM_n_51,
      D(12) => regM_n_52,
      D(11) => regM_n_53,
      D(10) => regM_n_54,
      D(9) => regM_n_55,
      D(8) => regM_n_56,
      D(7) => regM_n_57,
      D(6) => regM_n_58,
      D(5) => regM_n_59,
      D(4) => regM_n_60,
      D(3) => regM_n_61,
      D(2) => regM_n_62,
      D(1) => regM_n_63,
      D(0) => regM_n_64,
      E(0) => regM_n_32,
      WriteDataM(31 downto 0) => WriteDataM(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_riscv is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PCF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWriteM : out STD_LOGIC;
    ALUResultM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobeM : out STD_LOGIC;
    PCReady : out STD_LOGIC
  );
end design_1_top_0_0_riscv;

architecture STRUCTURE of design_1_top_0_0_riscv is
  signal \<const0>\ : STD_LOGIC;
  signal ALUControlE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALUResultE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal ALUSrcE : STD_LOGIC;
  signal FlushE : STD_LOGIC;
  signal ImmExtE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^memwritem\ : STD_LOGIC;
  signal \PCSrc1__6\ : STD_LOGIC;
  signal PCSrcE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD1E : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal ResultSrcEb0 : STD_LOGIC;
  signal \SrcBE__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \alu/condinvb__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu/data6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu/data8\ : STD_LOGIC;
  signal \alu/p_1_in\ : STD_LOGIC;
  signal \alu/p_2_in\ : STD_LOGIC;
  signal \alu/p_4_in\ : STD_LOGIC;
  signal c_n_75 : STD_LOGIC;
  signal c_n_76 : STD_LOGIC;
  signal c_n_77 : STD_LOGIC;
  signal c_n_78 : STD_LOGIC;
  signal c_n_79 : STD_LOGIC;
  signal c_n_80 : STD_LOGIC;
  signal c_n_81 : STD_LOGIC;
  signal c_n_82 : STD_LOGIC;
  signal c_n_83 : STD_LOGIC;
  signal c_n_84 : STD_LOGIC;
  signal c_n_85 : STD_LOGIC;
  signal c_n_86 : STD_LOGIC;
  signal c_n_87 : STD_LOGIC;
  signal c_n_88 : STD_LOGIC;
  signal dp_n_114 : STD_LOGIC;
  signal dp_n_120 : STD_LOGIC;
  signal dp_n_121 : STD_LOGIC;
  signal dp_n_122 : STD_LOGIC;
  signal dp_n_124 : STD_LOGIC;
  signal dp_n_125 : STD_LOGIC;
  signal dp_n_126 : STD_LOGIC;
  signal dp_n_127 : STD_LOGIC;
  signal dp_n_128 : STD_LOGIC;
  signal dp_n_129 : STD_LOGIC;
  signal dp_n_130 : STD_LOGIC;
  signal dp_n_131 : STD_LOGIC;
  signal dp_n_132 : STD_LOGIC;
  signal dp_n_133 : STD_LOGIC;
  signal dp_n_134 : STD_LOGIC;
  signal dp_n_135 : STD_LOGIC;
  signal dp_n_136 : STD_LOGIC;
  signal dp_n_137 : STD_LOGIC;
  signal dp_n_138 : STD_LOGIC;
  signal dp_n_139 : STD_LOGIC;
  signal dp_n_140 : STD_LOGIC;
  signal dp_n_141 : STD_LOGIC;
  signal dp_n_142 : STD_LOGIC;
  signal dp_n_143 : STD_LOGIC;
  signal dp_n_144 : STD_LOGIC;
  signal dp_n_145 : STD_LOGIC;
  signal dp_n_146 : STD_LOGIC;
  signal dp_n_147 : STD_LOGIC;
  signal dp_n_148 : STD_LOGIC;
  signal dp_n_149 : STD_LOGIC;
  signal dp_n_150 : STD_LOGIC;
  signal dp_n_151 : STD_LOGIC;
  signal dp_n_152 : STD_LOGIC;
  signal dp_n_153 : STD_LOGIC;
  signal dp_n_154 : STD_LOGIC;
  signal dp_n_155 : STD_LOGIC;
  signal dp_n_156 : STD_LOGIC;
  signal dp_n_157 : STD_LOGIC;
  signal dp_n_158 : STD_LOGIC;
  signal dp_n_160 : STD_LOGIC;
  signal dp_n_161 : STD_LOGIC;
  signal dp_n_162 : STD_LOGIC;
  signal dp_n_163 : STD_LOGIC;
  signal dp_n_164 : STD_LOGIC;
  signal dp_n_165 : STD_LOGIC;
  signal dp_n_166 : STD_LOGIC;
  signal dp_n_167 : STD_LOGIC;
  signal dp_n_168 : STD_LOGIC;
  signal dp_n_169 : STD_LOGIC;
  signal dp_n_170 : STD_LOGIC;
  signal dp_n_171 : STD_LOGIC;
  signal dp_n_172 : STD_LOGIC;
  signal dp_n_173 : STD_LOGIC;
  signal dp_n_174 : STD_LOGIC;
  signal dp_n_175 : STD_LOGIC;
  signal dp_n_176 : STD_LOGIC;
  signal dp_n_177 : STD_LOGIC;
  signal dp_n_178 : STD_LOGIC;
  signal dp_n_179 : STD_LOGIC;
  signal dp_n_180 : STD_LOGIC;
  signal dp_n_181 : STD_LOGIC;
  signal dp_n_182 : STD_LOGIC;
  signal dp_n_183 : STD_LOGIC;
  signal dp_n_184 : STD_LOGIC;
  signal dp_n_185 : STD_LOGIC;
  signal dp_n_186 : STD_LOGIC;
  signal dp_n_187 : STD_LOGIC;
  signal dp_n_188 : STD_LOGIC;
  signal dp_n_189 : STD_LOGIC;
  signal dp_n_190 : STD_LOGIC;
  signal dp_n_191 : STD_LOGIC;
  signal dp_n_192 : STD_LOGIC;
  signal dp_n_193 : STD_LOGIC;
  signal dp_n_194 : STD_LOGIC;
  signal dp_n_195 : STD_LOGIC;
  signal dp_n_196 : STD_LOGIC;
  signal dp_n_197 : STD_LOGIC;
  signal dp_n_198 : STD_LOGIC;
  signal dp_n_199 : STD_LOGIC;
  signal dp_n_200 : STD_LOGIC;
  signal dp_n_201 : STD_LOGIC;
  signal dp_n_202 : STD_LOGIC;
  signal dp_n_203 : STD_LOGIC;
  signal dp_n_204 : STD_LOGIC;
  signal dp_n_205 : STD_LOGIC;
  signal dp_n_206 : STD_LOGIC;
  signal dp_n_207 : STD_LOGIC;
  signal dp_n_208 : STD_LOGIC;
  signal dp_n_209 : STD_LOGIC;
  signal dp_n_210 : STD_LOGIC;
  signal dp_n_211 : STD_LOGIC;
  signal dp_n_212 : STD_LOGIC;
  signal dp_n_213 : STD_LOGIC;
  signal dp_n_214 : STD_LOGIC;
  signal dp_n_215 : STD_LOGIC;
  signal dp_n_216 : STD_LOGIC;
  signal dp_n_217 : STD_LOGIC;
  signal dp_n_218 : STD_LOGIC;
  signal dp_n_219 : STD_LOGIC;
  signal dp_n_220 : STD_LOGIC;
  signal dp_n_221 : STD_LOGIC;
  signal dp_n_222 : STD_LOGIC;
  signal dp_n_223 : STD_LOGIC;
  signal dp_n_224 : STD_LOGIC;
  signal dp_n_225 : STD_LOGIC;
  signal dp_n_226 : STD_LOGIC;
  signal dp_n_227 : STD_LOGIC;
  signal dp_n_228 : STD_LOGIC;
  signal dp_n_229 : STD_LOGIC;
  signal dp_n_230 : STD_LOGIC;
  signal dp_n_231 : STD_LOGIC;
  signal dp_n_93 : STD_LOGIC;
  signal funct3E : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal negE : STD_LOGIC;
  signal ovfE : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \regD/p_0_in\ : STD_LOGIC_VECTOR ( 95 downto 64 );
begin
  MemWriteM <= \^memwritem\;
  PCReady <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
c: entity work.design_1_top_0_0_controller
     port map (
      CO(0) => \alu/data8\,
      D(31 downto 0) => \regD/p_0_in\(95 downto 64),
      FlushE => FlushE,
      InstrF(31 downto 0) => InstrF(31 downto 0),
      O(3) => \alu/p_2_in\,
      O(2) => dp_n_120,
      O(1) => dp_n_121,
      O(0) => dp_n_122,
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(5) => ResultSrcEb0,
      Q(4 downto 1) => ALUControlE(3 downto 0),
      Q(0) => ALUSrcE,
      \SrcBE__0\(3 downto 0) => \SrcBE__0\(4 downto 1),
      clk => clk,
      \condinvb__0\(0) => \alu/condinvb__0\(0),
      data6(0) => \alu/data6\(0),
      funct3E(2 downto 0) => funct3E(2 downto 0),
      ovfE => ovfE,
      p_0_in(19 downto 0) => p_0_in(19 downto 0),
      p_4_in => \alu/p_4_in\,
      \q[15]_i_4\ => dp_n_133,
      \q[15]_i_5\ => dp_n_157,
      \q[15]_i_6\ => dp_n_175,
      \q[15]_i_6_0\ => dp_n_172,
      \q[15]_i_6_1\ => dp_n_170,
      \q[15]_i_6_2\ => dp_n_169,
      \q[15]_i_7\ => dp_n_174,
      \q[15]_i_7_0\ => dp_n_167,
      \q[15]_i_8\ => dp_n_166,
      \q[31]_i_12\(0) => \alu/p_1_in\,
      \q_reg[105]\ => dp_n_156,
      \q_reg[105]_0\ => dp_n_204,
      \q_reg[105]_1\ => dp_n_114,
      \q_reg[105]_2\ => dp_n_160,
      \q_reg[105]_3\ => dp_n_125,
      \q_reg[106]\ => dp_n_161,
      \q_reg[106]_0\ => dp_n_207,
      \q_reg[106]_1\ => dp_n_124,
      \q_reg[107]\ => dp_n_162,
      \q_reg[107]_0\ => dp_n_206,
      \q_reg[107]_1\ => dp_n_126,
      \q_reg[108]\ => dp_n_163,
      \q_reg[108]_0\ => dp_n_205,
      \q_reg[108]_1\ => dp_n_127,
      \q_reg[109]\ => dp_n_164,
      \q_reg[109]_0\ => dp_n_158,
      \q_reg[109]_1\ => dp_n_130,
      \q_reg[109]_2\ => dp_n_128,
      \q_reg[110]\ => dp_n_129,
      \q_reg[110]_0\ => dp_n_165,
      \q_reg[111]\ => dp_n_131,
      \q_reg[111]_0\ => dp_n_168,
      \q_reg[112]\ => dp_n_132,
      \q_reg[112]_0\ => dp_n_171,
      \q_reg[112]_1\(2) => dp_n_213,
      \q_reg[112]_1\(1) => dp_n_214,
      \q_reg[112]_1\(0) => dp_n_215,
      \q_reg[113]\ => dp_n_173,
      \q_reg[113]_0\ => dp_n_134,
      \q_reg[114]\ => dp_n_180,
      \q_reg[114]_0\ => dp_n_135,
      \q_reg[115]\ => dp_n_181,
      \q_reg[115]_0\ => dp_n_136,
      \q_reg[116]\ => dp_n_182,
      \q_reg[116]_0\ => dp_n_137,
      \q_reg[116]_1\(3) => dp_n_176,
      \q_reg[116]_1\(2) => dp_n_177,
      \q_reg[116]_1\(1) => dp_n_178,
      \q_reg[116]_1\(0) => dp_n_179,
      \q_reg[117]\ => dp_n_183,
      \q_reg[117]_0\ => dp_n_138,
      \q_reg[118]\ => dp_n_184,
      \q_reg[118]_0\ => dp_n_139,
      \q_reg[119]\ => dp_n_185,
      \q_reg[119]_0\ => dp_n_140,
      \q_reg[11]_rep\ => c_n_83,
      \q_reg[11]_rep_0\ => dp_n_210,
      \q_reg[11]_rep__0\ => c_n_82,
      \q_reg[11]_rep__0_0\ => c_n_84,
      \q_reg[11]_rep__0_1\ => dp_n_211,
      \q_reg[11]_rep__1\ => c_n_75,
      \q_reg[11]_rep__1_0\ => c_n_85,
      \q_reg[11]_rep__1_1\ => c_n_87,
      \q_reg[11]_rep__1_2\ => c_n_88,
      \q_reg[11]_rep__1_3\ => dp_n_212,
      \q_reg[120]\ => dp_n_186,
      \q_reg[120]_0\ => dp_n_141,
      \q_reg[120]_1\(3) => dp_n_216,
      \q_reg[120]_1\(2) => dp_n_217,
      \q_reg[120]_1\(1) => dp_n_218,
      \q_reg[120]_1\(0) => dp_n_219,
      \q_reg[121]\ => dp_n_142,
      \q_reg[121]_0\ => dp_n_188,
      \q_reg[122]\ => dp_n_143,
      \q_reg[122]_0\ => dp_n_189,
      \q_reg[123]\ => dp_n_144,
      \q_reg[123]_0\ => dp_n_190,
      \q_reg[124]\ => dp_n_145,
      \q_reg[124]_0\ => dp_n_191,
      \q_reg[124]_1\(3) => dp_n_220,
      \q_reg[124]_1\(2) => dp_n_221,
      \q_reg[124]_1\(1) => dp_n_222,
      \q_reg[124]_1\(0) => dp_n_223,
      \q_reg[125]\ => dp_n_146,
      \q_reg[125]_0\ => dp_n_192,
      \q_reg[126]\ => dp_n_147,
      \q_reg[126]_0\ => dp_n_193,
      \q_reg[127]\ => dp_n_148,
      \q_reg[127]_0\ => dp_n_194,
      \q_reg[128]\ => dp_n_149,
      \q_reg[128]_0\ => dp_n_195,
      \q_reg[128]_1\(3) => dp_n_224,
      \q_reg[128]_1\(2) => dp_n_225,
      \q_reg[128]_1\(1) => dp_n_226,
      \q_reg[128]_1\(0) => dp_n_227,
      \q_reg[129]\ => dp_n_150,
      \q_reg[129]_0\ => dp_n_196,
      \q_reg[12]\ => c_n_78,
      \q_reg[12]_0\ => c_n_79,
      \q_reg[12]_1\ => c_n_86,
      \q_reg[130]\ => dp_n_151,
      \q_reg[130]_0\ => dp_n_197,
      \q_reg[131]\ => dp_n_152,
      \q_reg[131]_0\ => dp_n_198,
      \q_reg[132]\ => dp_n_153,
      \q_reg[132]_0\ => dp_n_199,
      \q_reg[132]_1\(3) => dp_n_228,
      \q_reg[132]_1\(2) => dp_n_229,
      \q_reg[132]_1\(1) => dp_n_230,
      \q_reg[132]_1\(0) => dp_n_231,
      \q_reg[133]\ => dp_n_154,
      \q_reg[133]_0\ => dp_n_200,
      \q_reg[134]\ => dp_n_201,
      \q_reg[134]_0\ => dp_n_155,
      \q_reg[134]_1\ => dp_n_209,
      \q_reg[135]\ => dp_n_187,
      \q_reg[135]_0\ => dp_n_202,
      \q_reg[135]_1\ => dp_n_208,
      \q_reg[136]\(59 downto 29) => RD1E(31 downto 1),
      \q_reg[136]\(28 downto 1) => ImmExtE(31 downto 4),
      \q_reg[136]\(0) => ImmExtE(0),
      \q_reg[136]_0\ => dp_n_203,
      \q_reg[13]\(31) => negE,
      \q_reg[13]\(30 downto 0) => ALUResultE(30 downto 0),
      \q_reg[13]_0\ => c_n_76,
      \q_reg[14]\ => c_n_77,
      \q_reg[155]\ => c_n_80,
      \q_reg[15]\ => c_n_81,
      \q_reg[15]_0\ => dp_n_93,
      \q_reg[1]\(1) => \^memwritem\,
      \q_reg[1]\(0) => MemStrobeM,
      reset => reset
    );
dp: entity work.design_1_top_0_0_datapath
     port map (
      ALUResultM(31 downto 0) => ALUResultM(31 downto 0),
      CO(0) => \alu/data8\,
      D(31 downto 0) => \regD/p_0_in\(95 downto 64),
      FlushE => FlushE,
      MemWriteM => \^memwritem\,
      O(3) => \alu/p_2_in\,
      O(2) => dp_n_120,
      O(1) => dp_n_121,
      O(0) => dp_n_122,
      PCF(31 downto 0) => PCF(31 downto 0),
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(59 downto 29) => RD1E(31 downto 1),
      Q(28 downto 1) => ImmExtE(31 downto 4),
      Q(0) => ImmExtE(0),
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      WriteDataM(31 downto 0) => WriteDataM(31 downto 0),
      clk => clk,
      \condinvb__0\(0) => \alu/condinvb__0\(0),
      data6(0) => \alu/data6\(0),
      ovfE => ovfE,
      p_0_in(19 downto 0) => p_0_in(19 downto 0),
      p_4_in => \alu/p_4_in\,
      \q[15]_i_7\ => c_n_77,
      \q[31]_i_17\ => c_n_84,
      \q[31]_i_17_0\ => c_n_80,
      \q[31]_i_17_1\ => c_n_76,
      \q_reg[106]\ => c_n_75,
      \q_reg[106]_0\ => c_n_85,
      \q_reg[106]_1\ => c_n_86,
      \q_reg[107]\ => c_n_82,
      \q_reg[118]\ => c_n_83,
      \q_reg[11]_rep__0\ => dp_n_172,
      \q_reg[11]_rep__0_0\ => dp_n_208,
      \q_reg[11]_rep__0_1\ => dp_n_209,
      \q_reg[11]_rep__1\ => dp_n_202,
      \q_reg[12]\ => dp_n_124,
      \q_reg[12]_0\ => dp_n_126,
      \q_reg[12]_1\ => dp_n_127,
      \q_reg[12]_10\ => dp_n_138,
      \q_reg[12]_11\ => dp_n_139,
      \q_reg[12]_12\ => dp_n_141,
      \q_reg[12]_13\ => dp_n_142,
      \q_reg[12]_14\ => dp_n_143,
      \q_reg[12]_15\ => dp_n_144,
      \q_reg[12]_16\ => dp_n_145,
      \q_reg[12]_17\ => dp_n_146,
      \q_reg[12]_18\ => dp_n_147,
      \q_reg[12]_19\ => dp_n_148,
      \q_reg[12]_2\ => dp_n_129,
      \q_reg[12]_20\ => dp_n_149,
      \q_reg[12]_21\ => dp_n_161,
      \q_reg[12]_22\ => dp_n_162,
      \q_reg[12]_23\ => dp_n_163,
      \q_reg[12]_24\ => dp_n_164,
      \q_reg[12]_25\ => dp_n_165,
      \q_reg[12]_26\ => dp_n_168,
      \q_reg[12]_27\ => dp_n_171,
      \q_reg[12]_28\ => dp_n_173,
      \q_reg[12]_29\ => dp_n_180,
      \q_reg[12]_3\ => dp_n_131,
      \q_reg[12]_30\ => dp_n_181,
      \q_reg[12]_31\ => dp_n_182,
      \q_reg[12]_32\ => dp_n_183,
      \q_reg[12]_33\ => dp_n_184,
      \q_reg[12]_34\ => dp_n_185,
      \q_reg[12]_35\ => dp_n_186,
      \q_reg[12]_36\ => dp_n_188,
      \q_reg[12]_37\ => dp_n_189,
      \q_reg[12]_38\ => dp_n_190,
      \q_reg[12]_39\ => dp_n_191,
      \q_reg[12]_4\ => dp_n_132,
      \q_reg[12]_40\ => dp_n_192,
      \q_reg[12]_41\ => dp_n_193,
      \q_reg[12]_42\ => dp_n_194,
      \q_reg[12]_43\ => dp_n_195,
      \q_reg[12]_44\ => dp_n_196,
      \q_reg[12]_45\ => dp_n_197,
      \q_reg[12]_46\ => dp_n_198,
      \q_reg[12]_47\ => dp_n_199,
      \q_reg[12]_48\ => dp_n_200,
      \q_reg[12]_49\ => dp_n_201,
      \q_reg[12]_5\ => dp_n_133,
      \q_reg[12]_50\ => dp_n_203,
      \q_reg[12]_6\ => dp_n_134,
      \q_reg[12]_7\ => dp_n_135,
      \q_reg[12]_8\ => dp_n_136,
      \q_reg[12]_9\ => dp_n_137,
      \q_reg[133]\ => c_n_78,
      \q_reg[133]_0\ => c_n_79,
      \q_reg[133]_1\ => c_n_81,
      \q_reg[135]\ => c_n_87,
      \q_reg[135]_0\ => c_n_88,
      \q_reg[136]\(34) => negE,
      \q_reg[136]\(33 downto 3) => ALUResultE(30 downto 0),
      \q_reg[136]\(2 downto 0) => funct3E(2 downto 0),
      \q_reg[13]\ => dp_n_204,
      \q_reg[146]\ => dp_n_167,
      \q_reg[146]_0\ => dp_n_170,
      \q_reg[147]\ => dp_n_166,
      \q_reg[147]_0\ => dp_n_174,
      \q_reg[147]_1\ => dp_n_175,
      \q_reg[147]_2\ => dp_n_207,
      \q_reg[148]\ => dp_n_206,
      \q_reg[149]\ => dp_n_205,
      \q_reg[14]\ => dp_n_156,
      \q_reg[150]\ => dp_n_157,
      \q_reg[150]_0\ => dp_n_158,
      \q_reg[153]\(2) => dp_n_213,
      \q_reg[153]\(1) => dp_n_214,
      \q_reg[153]\(0) => dp_n_215,
      \q_reg[157]\(3) => dp_n_176,
      \q_reg[157]\(2) => dp_n_177,
      \q_reg[157]\(1) => dp_n_178,
      \q_reg[157]\(0) => dp_n_179,
      \q_reg[161]\(3) => dp_n_216,
      \q_reg[161]\(2) => dp_n_217,
      \q_reg[161]\(1) => dp_n_218,
      \q_reg[161]\(0) => dp_n_219,
      \q_reg[164]\ => dp_n_128,
      \q_reg[165]\ => dp_n_130,
      \q_reg[165]_0\(3) => dp_n_220,
      \q_reg[165]_0\(2) => dp_n_221,
      \q_reg[165]_0\(1) => dp_n_222,
      \q_reg[165]_0\(0) => dp_n_223,
      \q_reg[169]\(3) => dp_n_224,
      \q_reg[169]\(2) => dp_n_225,
      \q_reg[169]\(1) => dp_n_226,
      \q_reg[169]\(0) => dp_n_227,
      \q_reg[173]\(3) => dp_n_228,
      \q_reg[173]\(2) => dp_n_229,
      \q_reg[173]\(1) => dp_n_230,
      \q_reg[173]\(0) => dp_n_231,
      \q_reg[175]\ => dp_n_154,
      \q_reg[175]_0\ => dp_n_155,
      \q_reg[176]\ => dp_n_187,
      \q_reg[177]\ => dp_n_114,
      \q_reg[177]_0\(0) => \alu/p_1_in\,
      \q_reg[19]\ => dp_n_93,
      \q_reg[32]\(5) => ResultSrcEb0,
      \q_reg[32]\(4 downto 1) => ALUControlE(3 downto 0),
      \q_reg[32]\(0) => ALUSrcE,
      \q_reg[36]\ => dp_n_150,
      \q_reg[36]_0\ => dp_n_151,
      \q_reg[36]_1\ => dp_n_152,
      \q_reg[36]_2\ => dp_n_153,
      \q_reg[36]_3\ => dp_n_169,
      \q_reg[37]\ => dp_n_125,
      \q_reg[37]_0\ => dp_n_140,
      \q_reg[37]_1\ => dp_n_160,
      \q_reg[39]\(3 downto 0) => \SrcBE__0\(4 downto 1),
      \q_reg[70]\ => dp_n_210,
      \q_reg[70]_0\ => dp_n_211,
      \q_reg[70]_1\ => dp_n_212,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_top_0_0_top : entity is "soft";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal NLW_memcontrol_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_riscv_PCReady_UNCONNECTED : STD_LOGIC;
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscv : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(31)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(30)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(21)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(20)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(19)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(18)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(17)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(16)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(15)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(14)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(13)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(12)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(29)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(11)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(10)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(9)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(8)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(7)
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(6)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(5)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(4)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(3)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(2)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(28)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(1)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(0)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(27)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(26)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(25)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(24)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(23)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => Instr(22)
    );
memcontrol: entity work.design_1_top_0_0_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => NLW_memcontrol_Done_UNCONNECTED,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscv: entity work.design_1_top_0_0_riscv
     port map (
      ALUResultM(31 downto 0) => addressM(31 downto 0),
      InstrF(31 downto 0) => Instr(31 downto 0),
      MemStrobeM => MStrobe,
      MemWriteM => MemWrite,
      PCF(31 downto 0) => PC(31 downto 0),
      PCReady => NLW_riscv_PCReady_UNCONNECTED,
      ReadDataM(31 downto 0) => readDataM(31 downto 0),
      WriteDataM(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2023.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_top_0_0_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
