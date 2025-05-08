-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr 15 18:45:20 2025
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
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair192";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
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
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
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
    \q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
      I2 => \q_reg[2]\(0),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(0),
      O => D(0)
    );
\q[10]_i_1__0\: unisim.vcomponents.LUT5
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
\q[11]_i_1__0\: unisim.vcomponents.LUT5
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
\q[12]_i_1__0\: unisim.vcomponents.LUT5
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
\q[13]_i_1__0\: unisim.vcomponents.LUT5
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
\q[14]_i_1__0\: unisim.vcomponents.LUT5
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
\q[15]_i_1__0\: unisim.vcomponents.LUT5
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
\q[16]_i_1__0\: unisim.vcomponents.LUT5
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
\q[17]_i_1__0\: unisim.vcomponents.LUT5
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
\q[18]_i_1__0\: unisim.vcomponents.LUT5
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
\q[19]_i_1__0\: unisim.vcomponents.LUT5
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
      I2 => \q_reg[2]\(1),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(1),
      O => D(1)
    );
\q[20]_i_1__0\: unisim.vcomponents.LUT5
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
\q[21]_i_1__0\: unisim.vcomponents.LUT5
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
\q[22]_i_1__0\: unisim.vcomponents.LUT5
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
\q[23]_i_1__0\: unisim.vcomponents.LUT5
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
\q[24]_i_1__0\: unisim.vcomponents.LUT5
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
\q[25]_i_1__0\: unisim.vcomponents.LUT5
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
\q[26]_i_1__0\: unisim.vcomponents.LUT5
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
\q[27]_i_1__0\: unisim.vcomponents.LUT5
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
\q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8D008D"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => PCTargetE(2),
      I2 => \q_reg[2]\(2),
      I3 => \PCSrc1__6\,
      I4 => jalrTarget(2),
      O => D(2)
    );
\q[3]_i_1__0\: unisim.vcomponents.LUT5
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
\q[4]_i_1__0\: unisim.vcomponents.LUT5
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
\q[5]_i_1__0\: unisim.vcomponents.LUT5
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
\q[6]_i_1__0\: unisim.vcomponents.LUT5
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
\q[7]_i_1__0\: unisim.vcomponents.LUT5
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
\q[8]_i_1__0\: unisim.vcomponents.LUT5
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
\q[9]_i_1__0\: unisim.vcomponents.LUT5
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
    D : out STD_LOGIC_VECTOR ( 28 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder_0 : entity is "adder";
end design_1_top_0_0_adder_0;

architecture STRUCTURE of design_1_top_0_0_adder_0 is
  signal \^pcplus4f\ : STD_LOGIC_VECTOR ( 28 downto 0 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[21]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q[23]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q[25]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q[27]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q[29]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \q[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[9]_i_1\ : label is "soft_lutpair28";
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
  PCPlus4F(28 downto 0) <= \^pcplus4f\(28 downto 0);
\q[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(7),
      I1 => PCSrcE(0),
      O => D(7)
    );
\q[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(8),
      I1 => PCSrcE(0),
      O => D(8)
    );
\q[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(9),
      I1 => PCSrcE(0),
      O => D(9)
    );
\q[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(10),
      I1 => PCSrcE(0),
      O => D(10)
    );
\q[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(11),
      I1 => PCSrcE(0),
      O => D(11)
    );
\q[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(12),
      I1 => PCSrcE(0),
      O => D(12)
    );
\q[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(13),
      I1 => PCSrcE(0),
      O => D(13)
    );
\q[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(14),
      I1 => PCSrcE(0),
      O => D(14)
    );
\q[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(15),
      I1 => PCSrcE(0),
      O => D(15)
    );
\q[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(16),
      I1 => PCSrcE(0),
      O => D(16)
    );
\q[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(17),
      I1 => PCSrcE(0),
      O => D(17)
    );
\q[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(18),
      I1 => PCSrcE(0),
      O => D(18)
    );
\q[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(19),
      I1 => PCSrcE(0),
      O => D(19)
    );
\q[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(20),
      I1 => PCSrcE(0),
      O => D(20)
    );
\q[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(21),
      I1 => PCSrcE(0),
      O => D(21)
    );
\q[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(22),
      I1 => PCSrcE(0),
      O => D(22)
    );
\q[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(23),
      I1 => PCSrcE(0),
      O => D(23)
    );
\q[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(24),
      I1 => PCSrcE(0),
      O => D(24)
    );
\q[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(25),
      I1 => PCSrcE(0),
      O => D(25)
    );
\q[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(26),
      I1 => PCSrcE(0),
      O => D(26)
    );
\q[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(27),
      I1 => PCSrcE(0),
      O => D(27)
    );
\q[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(28),
      I1 => PCSrcE(0),
      O => D(28)
    );
\q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(0),
      I1 => PCSrcE(0),
      O => D(0)
    );
\q[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(1),
      I1 => PCSrcE(0),
      O => D(1)
    );
\q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(2),
      I1 => PCSrcE(0),
      O => D(2)
    );
\q[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(3),
      I1 => PCSrcE(0),
      O => D(3)
    );
\q[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(4),
      I1 => PCSrcE(0),
      O => D(4)
    );
\q[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(5),
      I1 => PCSrcE(0),
      O => D(5)
    );
\q[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pcplus4f\(6),
      I1 => PCSrcE(0),
      O => D(6)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => \^pcplus4f\(3 downto 0),
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
      O(3 downto 0) => \^pcplus4f\(7 downto 4),
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
      O(3 downto 0) => \^pcplus4f\(11 downto 8),
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
      O(3 downto 0) => \^pcplus4f\(15 downto 12),
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
      O(3 downto 0) => \^pcplus4f\(19 downto 16),
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
      O(3 downto 0) => \^pcplus4f\(23 downto 20),
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
      O(3 downto 0) => \^pcplus4f\(27 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \^pcplus4f\(28),
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
    \q_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result0_inferred__6/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[106]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[106]_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SrcAE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[109]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[109]_i_8_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[109]_i_8_1\ : in STD_LOGIC;
    \q_reg[109]_i_8_2\ : in STD_LOGIC;
    \q_reg[109]_i_8_3\ : in STD_LOGIC;
    \q_reg[113]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[113]_i_10_0\ : in STD_LOGIC;
    \q_reg[113]_i_10_1\ : in STD_LOGIC;
    \q_reg[113]_i_10_2\ : in STD_LOGIC;
    \q_reg[113]_i_10_3\ : in STD_LOGIC;
    \q_reg[117]_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[117]_i_8_0\ : in STD_LOGIC;
    \q_reg[117]_i_8_1\ : in STD_LOGIC;
    \q_reg[117]_i_8_2\ : in STD_LOGIC;
    \q_reg[117]_i_8_3\ : in STD_LOGIC;
    \q_reg[121]_i_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[121]_i_8_0\ : in STD_LOGIC;
    \q_reg[121]_i_8_1\ : in STD_LOGIC;
    \q_reg[121]_i_8_2\ : in STD_LOGIC;
    \q_reg[121]_i_8_3\ : in STD_LOGIC;
    \q_reg[125]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[125]_i_10_0\ : in STD_LOGIC;
    \q_reg[125]_i_10_1\ : in STD_LOGIC;
    \q_reg[125]_i_10_2\ : in STD_LOGIC;
    \q_reg[125]_i_10_3\ : in STD_LOGIC;
    \q_reg[129]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[129]_i_10_0\ : in STD_LOGIC;
    \q_reg[129]_i_10_1\ : in STD_LOGIC;
    \q_reg[129]_i_10_2\ : in STD_LOGIC;
    \q_reg[129]_i_10_3\ : in STD_LOGIC;
    \q_reg[133]_i_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[133]_i_10_0\ : in STD_LOGIC;
    \q_reg[133]_i_10_1\ : in STD_LOGIC;
    \q_reg[133]_i_10_2\ : in STD_LOGIC;
    \q_reg[133]_i_10_3\ : in STD_LOGIC;
    \q_reg[137]_i_12\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[137]_i_12_0\ : in STD_LOGIC;
    \q_reg[137]_i_12_1\ : in STD_LOGIC;
    \q_reg[137]_i_12_2\ : in STD_LOGIC;
    \q_reg[137]_i_12_3\ : in STD_LOGIC
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
\q[109]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[109]_i_8_0\(2),
      I1 => \q_reg[109]_i_8_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]\(3)
    );
\q[109]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[109]_i_8_0\(1),
      I1 => \q_reg[109]_i_8_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]\(2)
    );
\q[109]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[109]_i_8_0\(0),
      I1 => \q_reg[109]_i_8_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]\(1)
    );
\q[109]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SrcAE(0),
      I1 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]\(0)
    );
\q[113]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[113]_i_10\(3),
      I1 => \q_reg[113]_i_10_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_0\(3)
    );
\q[113]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[113]_i_10\(2),
      I1 => \q_reg[113]_i_10_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_0\(2)
    );
\q[113]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[113]_i_10\(1),
      I1 => \q_reg[113]_i_10_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_0\(1)
    );
\q[113]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[113]_i_10\(0),
      I1 => \q_reg[113]_i_10_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_0\(0)
    );
\q[117]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[117]_i_8\(3),
      I1 => \q_reg[117]_i_8_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_1\(3)
    );
\q[117]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[117]_i_8\(2),
      I1 => \q_reg[117]_i_8_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_1\(2)
    );
\q[117]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[117]_i_8\(1),
      I1 => \q_reg[117]_i_8_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_1\(1)
    );
\q[117]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[117]_i_8\(0),
      I1 => \q_reg[117]_i_8_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_1\(0)
    );
\q[121]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[121]_i_8\(3),
      I1 => \q_reg[121]_i_8_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_2\(3)
    );
\q[121]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[121]_i_8\(2),
      I1 => \q_reg[121]_i_8_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_2\(2)
    );
\q[121]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[121]_i_8\(1),
      I1 => \q_reg[121]_i_8_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_2\(1)
    );
\q[121]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[121]_i_8\(0),
      I1 => \q_reg[121]_i_8_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_2\(0)
    );
\q[125]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[125]_i_10\(3),
      I1 => \q_reg[125]_i_10_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_3\(3)
    );
\q[125]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[125]_i_10\(2),
      I1 => \q_reg[125]_i_10_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_3\(2)
    );
\q[125]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[125]_i_10\(1),
      I1 => \q_reg[125]_i_10_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_3\(1)
    );
\q[125]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[125]_i_10\(0),
      I1 => \q_reg[125]_i_10_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_3\(0)
    );
\q[129]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[129]_i_10\(3),
      I1 => \q_reg[129]_i_10_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_4\(3)
    );
\q[129]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[129]_i_10\(2),
      I1 => \q_reg[129]_i_10_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_4\(2)
    );
\q[129]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[129]_i_10\(1),
      I1 => \q_reg[129]_i_10_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_4\(1)
    );
\q[129]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[129]_i_10\(0),
      I1 => \q_reg[129]_i_10_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_4\(0)
    );
\q[133]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[133]_i_10\(3),
      I1 => \q_reg[133]_i_10_3\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_5\(3)
    );
\q[133]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[133]_i_10\(2),
      I1 => \q_reg[133]_i_10_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_5\(2)
    );
\q[133]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[133]_i_10\(1),
      I1 => \q_reg[133]_i_10_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_5\(1)
    );
\q[133]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[133]_i_10\(0),
      I1 => \q_reg[133]_i_10_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_5\(0)
    );
\q[137]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[137]_i_12\(3),
      I1 => \q_reg[109]_i_8\(0),
      I2 => \q_reg[137]_i_12_3\,
      O => \q_reg[11]_6\(3)
    );
\q[137]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[137]_i_12\(2),
      I1 => \q_reg[137]_i_12_2\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_6\(2)
    );
\q[137]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[137]_i_12\(1),
      I1 => \q_reg[137]_i_12_1\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_6\(1)
    );
\q[137]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_reg[137]_i_12\(0),
      I1 => \q_reg[137]_i_12_0\,
      I2 => \q_reg[109]_i_8\(0),
      O => \q_reg[11]_6\(0)
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
      DI(3 downto 0) => \q[106]_i_5\(3 downto 0),
      O(3 downto 0) => \NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q[106]_i_5_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_top_0_0_flopenr;

architecture STRUCTURE of design_1_top_0_0_flopenr is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[32]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[33]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q[34]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[35]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[36]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[37]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \q[38]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[39]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q[40]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[41]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[42]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[43]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[44]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[45]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[46]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[47]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[48]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[49]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[50]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[51]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[52]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[53]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[54]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[55]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[56]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[57]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[58]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[59]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[60]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[61]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[62]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[63]_i_1\ : label is "soft_lutpair54";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\q[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => PCSrcE(0),
      O => D(0)
    );
\q[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => PCSrcE(0),
      O => D(1)
    );
\q[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCSrcE(0),
      O => D(2)
    );
\q[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => PCSrcE(0),
      O => D(3)
    );
\q[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => PCSrcE(0),
      O => D(4)
    );
\q[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => PCSrcE(0),
      O => D(5)
    );
\q[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => PCSrcE(0),
      O => D(6)
    );
\q[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => PCSrcE(0),
      O => D(7)
    );
\q[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => PCSrcE(0),
      O => D(8)
    );
\q[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => PCSrcE(0),
      O => D(9)
    );
\q[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => PCSrcE(0),
      O => D(10)
    );
\q[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      I1 => PCSrcE(0),
      O => D(11)
    );
\q[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(12),
      I1 => PCSrcE(0),
      O => D(12)
    );
\q[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(13),
      I1 => PCSrcE(0),
      O => D(13)
    );
\q[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(14),
      I1 => PCSrcE(0),
      O => D(14)
    );
\q[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(15),
      I1 => PCSrcE(0),
      O => D(15)
    );
\q[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(16),
      I1 => PCSrcE(0),
      O => D(16)
    );
\q[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(17),
      I1 => PCSrcE(0),
      O => D(17)
    );
\q[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(18),
      I1 => PCSrcE(0),
      O => D(18)
    );
\q[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(19),
      I1 => PCSrcE(0),
      O => D(19)
    );
\q[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(20),
      I1 => PCSrcE(0),
      O => D(20)
    );
\q[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(21),
      I1 => PCSrcE(0),
      O => D(21)
    );
\q[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(22),
      I1 => PCSrcE(0),
      O => D(22)
    );
\q[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(23),
      I1 => PCSrcE(0),
      O => D(23)
    );
\q[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(24),
      I1 => PCSrcE(0),
      O => D(24)
    );
\q[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(25),
      I1 => PCSrcE(0),
      O => D(25)
    );
\q[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(26),
      I1 => PCSrcE(0),
      O => D(26)
    );
\q[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(27),
      I1 => PCSrcE(0),
      O => D(27)
    );
\q[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(28),
      I1 => PCSrcE(0),
      O => D(28)
    );
\q[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(29),
      I1 => PCSrcE(0),
      O => D(29)
    );
\q[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(30),
      I1 => PCSrcE(0),
      O => D(30)
    );
\q[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(31),
      I1 => PCSrcE(0),
      O => D(31)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(12),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(13),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(14),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(15),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(16),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(17),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(18),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(19),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(1),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(20),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(21),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(22),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(23),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(24),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(25),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(26),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(27),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(28),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(29),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(30),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(31),
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[31]_0\(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenrc is
  port (
    D : out STD_LOGIC_VECTOR ( 173 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 20 downto 0 );
    FlushE : in STD_LOGIC;
    \q_reg[104]\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[95]_0\ : in STD_LOGIC_VECTOR ( 93 downto 0 );
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
  signal \q[40]_i_2_n_0\ : STD_LOGIC;
  signal \q[47]_i_2_n_0\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[16]\ : STD_LOGIC;
  signal \q_reg_n_0_[17]\ : STD_LOGIC;
  signal \q_reg_n_0_[18]\ : STD_LOGIC;
  signal \q_reg_n_0_[19]\ : STD_LOGIC;
  signal \q_reg_n_0_[20]\ : STD_LOGIC;
  signal \q_reg_n_0_[21]\ : STD_LOGIC;
  signal \q_reg_n_0_[22]\ : STD_LOGIC;
  signal \q_reg_n_0_[23]\ : STD_LOGIC;
  signal \q_reg_n_0_[24]\ : STD_LOGIC;
  signal \q_reg_n_0_[25]\ : STD_LOGIC;
  signal \q_reg_n_0_[26]\ : STD_LOGIC;
  signal \q_reg_n_0_[27]\ : STD_LOGIC;
  signal \q_reg_n_0_[28]\ : STD_LOGIC;
  signal \q_reg_n_0_[29]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[30]\ : STD_LOGIC;
  signal \q_reg_n_0_[31]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[89]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[90]\ : STD_LOGIC;
  signal \q_reg_n_0_[91]\ : STD_LOGIC;
  signal \q_reg_n_0_[92]\ : STD_LOGIC;
  signal \q_reg_n_0_[93]\ : STD_LOGIC;
  signal \q_reg_n_0_[95]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
  signal \rf/rd11__3\ : STD_LOGIC;
  signal \rf/rd21__3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[0]_i_1__0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \q[0]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[100]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \q[101]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \q[102]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \q[103]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[104]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \q[105]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \q[106]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \q[107]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \q[108]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \q[109]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \q[10]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[110]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \q[111]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \q[112]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \q[113]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \q[114]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \q[115]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[116]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[117]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[118]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[119]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[11]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[120]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[121]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[122]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[123]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[124]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[125]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[126]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[127]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[128]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[129]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[12]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[130]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[131]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[132]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[133]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[134]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[135]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[136]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[137]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[138]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[139]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[13]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[140]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[141]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[142]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[143]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[144]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[145]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \q[146]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \q[14]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[14]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[15]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[15]_i_1__2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \q[16]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[16]_i_1__2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[17]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[17]_i_1__2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[18]_i_1__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[18]_i_1__2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[19]_i_1__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[19]_i_1__2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[20]_i_1__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[20]_i_1__2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[21]_i_1__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[22]_i_1__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[23]_i_1__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[24]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[25]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[26]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[27]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[28]_i_1__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[29]_i_1__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[2]_i_1__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[30]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[31]_i_1__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[32]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[33]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[34]_i_1__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[35]_i_1__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[36]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[36]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[36]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[3]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[40]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[41]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[42]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[43]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[44]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[45]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[46]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[47]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[4]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[56]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[57]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[5]_i_1__1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \q[61]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[62]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[63]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[64]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[65]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[66]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[67]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[68]_i_1__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[69]_i_1__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[6]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[6]_i_1__2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \q[70]_i_1__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[71]_i_1__0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[72]_i_1__0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \q[73]_i_1__0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \q[74]_i_1__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[75]_i_1__0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[76]_i_1__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[77]_i_1__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[78]_i_1__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[79]_i_1__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[7]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[7]_i_1__2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \q[80]_i_1__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[81]_i_1__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[82]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[83]_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[84]_i_1__0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[85]_i_1__0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[86]_i_1__0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[87]_i_1__0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \q[88]_i_1__0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \q[89]_i_1__0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \q[8]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[8]_i_1__2\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \q[90]_i_1__0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \q[91]_i_1__0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \q[92]_i_1__0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \q[93]_i_1__0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \q[94]_i_1__0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \q[95]_i_1__0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \q[96]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \q[97]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \q[98]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \q[99]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \q[9]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[9]_i_1__2\ : label is "soft_lutpair127";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\q[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(0),
      I1 => FlushE,
      O => p_0_in(0)
    );
\q[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => opD(6),
      I1 => opD(4),
      I2 => FlushE,
      I3 => opD(1),
      O => D(0)
    );
\q[100]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(17),
      I1 => \q_reg[104]\,
      O => D(95)
    );
\q[101]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(18),
      I1 => \q_reg[104]\,
      O => D(96)
    );
\q[102]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(19),
      I1 => \q_reg[104]\,
      O => D(97)
    );
\q[103]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(20),
      I1 => FlushE,
      O => D(98)
    );
\q[104]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(21),
      I1 => \q_reg[104]\,
      O => D(99)
    );
\q[105]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(22),
      I1 => \q_reg[104]\,
      O => D(100)
    );
\q[106]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(23),
      I1 => \q_reg[104]\,
      O => D(101)
    );
\q[107]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(24),
      I1 => \q_reg[104]\,
      O => D(102)
    );
\q[108]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(25),
      I1 => \q_reg[104]\,
      O => D(103)
    );
\q[109]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(26),
      I1 => \q_reg[104]\,
      O => D(104)
    );
\q[10]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => FlushE,
      O => D(5)
    );
\q[10]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045550000"
    )
        port map (
      I0 => opD(6),
      I1 => opD(2),
      I2 => opD(4),
      I3 => opD(5),
      I4 => opD(1),
      I5 => \q_reg[104]\,
      O => p_0_in(10)
    );
\q[110]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(27),
      I1 => \q_reg[104]\,
      O => D(105)
    );
\q[111]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(28),
      I1 => \q_reg[104]\,
      O => D(106)
    );
\q[112]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(29),
      I1 => \q_reg[104]\,
      O => D(107)
    );
\q[113]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(30),
      I1 => \q_reg[104]\,
      O => D(108)
    );
\q[114]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(31),
      I1 => \q_reg[104]\,
      O => D(109)
    );
\q[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(0),
      O => D(110)
    );
\q[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(1),
      O => D(111)
    );
\q[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(2),
      O => D(112)
    );
\q[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(3),
      O => D(113)
    );
\q[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(4),
      O => D(114)
    );
\q[11]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => FlushE,
      O => D(6)
    );
\q[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C000CACA"
    )
        port map (
      I0 => opD(6),
      I1 => \q[11]_i_2_n_0\,
      I2 => opD(4),
      I3 => opD(5),
      I4 => opD(2),
      I5 => \q_reg[104]\,
      O => p_0_in(11)
    );
\q[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05F0F0F8"
    )
        port map (
      I0 => funct7b5D,
      I1 => opD(5),
      I2 => funct3D(1),
      I3 => funct3D(2),
      I4 => funct3D(0),
      O => \q[11]_i_2_n_0\
    );
\q[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(5),
      O => D(115)
    );
\q[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(6),
      O => D(116)
    );
\q[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(7),
      O => D(117)
    );
\q[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(8),
      O => D(118)
    );
\q[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(9),
      O => D(119)
    );
\q[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(10),
      O => D(120)
    );
\q[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(11),
      O => D(121)
    );
\q[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(12),
      O => D(122)
    );
\q[128]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(13),
      O => D(123)
    );
\q[129]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(14),
      O => D(124)
    );
\q[12]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => FlushE,
      O => D(7)
    );
\q[12]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00020000000A0"
    )
        port map (
      I0 => funct3D(0),
      I1 => funct7b5D,
      I2 => \c/ALUOpD\(1),
      I3 => \q_reg[104]\,
      I4 => funct3D(1),
      I5 => funct3D(2),
      O => p_0_in(12)
    );
\q[130]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(15),
      O => D(125)
    );
\q[131]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(16),
      O => D(126)
    );
\q[132]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(17),
      O => D(127)
    );
\q[133]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(18),
      O => D(128)
    );
\q[134]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(19),
      O => D(129)
    );
\q[135]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(20),
      O => D(130)
    );
\q[136]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(21),
      O => D(131)
    );
\q[137]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(22),
      O => D(132)
    );
\q[138]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(23),
      O => D(133)
    );
\q[139]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(24),
      O => D(134)
    );
\q[13]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => FlushE,
      O => D(8)
    );
\q[13]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004044004040440"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => \c/ALUOpD\(1),
      I2 => funct3D(1),
      I3 => funct3D(2),
      I4 => funct3D(0),
      I5 => funct7b5D,
      O => p_0_in(13)
    );
\q[140]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(25),
      O => D(135)
    );
\q[141]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(26),
      O => D(136)
    );
\q[142]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(27),
      O => D(137)
    );
\q[143]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(28),
      O => D(138)
    );
\q[144]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(29),
      O => D(139)
    );
\q[145]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(30),
      O => D(140)
    );
\q[146]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => \rf/rd21__3\,
      I2 => rd20(31),
      O => D(141)
    );
\q[146]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(9),
      I4 => \^q\(7),
      O => \rf/rd21__3\
    );
\q[147]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(0),
      I1 => \rf/rd11__3\,
      I2 => PCD(0),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(142)
    );
\q[148]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(1),
      I1 => \rf/rd11__3\,
      I2 => PCD(1),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(143)
    );
\q[149]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(2),
      I1 => \rf/rd11__3\,
      I2 => PCD(2),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(144)
    );
\q[14]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => FlushE,
      O => D(9)
    );
\q[14]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C080000000000"
    )
        port map (
      I0 => funct7b5D,
      I1 => \c/ALUOpD\(1),
      I2 => \q_reg[104]\,
      I3 => funct3D(2),
      I4 => funct3D(1),
      I5 => funct3D(0),
      O => p_0_in(14)
    );
\q[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => opD(2),
      I1 => opD(5),
      I2 => opD(4),
      O => \c/ALUOpD\(1)
    );
\q[150]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(3),
      I1 => \rf/rd11__3\,
      I2 => PCD(3),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(145)
    );
\q[151]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(4),
      I1 => \rf/rd11__3\,
      I2 => PCD(4),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(146)
    );
\q[152]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(5),
      I1 => \rf/rd11__3\,
      I2 => PCD(5),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(147)
    );
\q[153]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(6),
      I1 => \rf/rd11__3\,
      I2 => PCD(6),
      I3 => FlushE,
      I4 => opD(2),
      I5 => opD(5),
      O => D(148)
    );
\q[154]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(7),
      I1 => \rf/rd11__3\,
      I2 => PCD(7),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(149)
    );
\q[155]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(8),
      I1 => \rf/rd11__3\,
      I2 => PCD(8),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(150)
    );
\q[156]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(9),
      I1 => \rf/rd11__3\,
      I2 => PCD(9),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(151)
    );
\q[157]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(10),
      I1 => \rf/rd11__3\,
      I2 => PCD(10),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(152)
    );
\q[158]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(11),
      I1 => \rf/rd11__3\,
      I2 => PCD(11),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(153)
    );
\q[159]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(12),
      I1 => \rf/rd11__3\,
      I2 => PCD(12),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(154)
    );
\q[15]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => FlushE,
      O => D(10)
    );
\q[15]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => FlushE,
      I1 => opD(6),
      I2 => opD(2),
      O => p_0_in(15)
    );
\q[160]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(13),
      I1 => \rf/rd11__3\,
      I2 => PCD(13),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(155)
    );
\q[161]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(14),
      I1 => \rf/rd11__3\,
      I2 => PCD(14),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(156)
    );
\q[162]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(15),
      I1 => \rf/rd11__3\,
      I2 => PCD(15),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(157)
    );
\q[163]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(16),
      I1 => \rf/rd11__3\,
      I2 => PCD(16),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(158)
    );
\q[164]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(17),
      I1 => \rf/rd11__3\,
      I2 => PCD(17),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(159)
    );
\q[165]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(18),
      I1 => \rf/rd11__3\,
      I2 => PCD(18),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(160)
    );
\q[166]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(19),
      I1 => \rf/rd11__3\,
      I2 => PCD(19),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(161)
    );
\q[167]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(20),
      I1 => \rf/rd11__3\,
      I2 => PCD(20),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(162)
    );
\q[168]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(21),
      I1 => \rf/rd11__3\,
      I2 => PCD(21),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(163)
    );
\q[169]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(22),
      I1 => \rf/rd11__3\,
      I2 => PCD(22),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(164)
    );
\q[16]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => FlushE,
      O => D(11)
    );
\q[16]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => FlushE,
      I1 => opD(6),
      I2 => opD(2),
      O => p_0_in(16)
    );
\q[170]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(23),
      I1 => \rf/rd11__3\,
      I2 => PCD(23),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(165)
    );
\q[171]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(24),
      I1 => \rf/rd11__3\,
      I2 => PCD(24),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(166)
    );
\q[172]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(25),
      I1 => \rf/rd11__3\,
      I2 => PCD(25),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(167)
    );
\q[173]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(26),
      I1 => \rf/rd11__3\,
      I2 => PCD(26),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(168)
    );
\q[174]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(27),
      I1 => \rf/rd11__3\,
      I2 => PCD(27),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(169)
    );
\q[175]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(28),
      I1 => \rf/rd11__3\,
      I2 => PCD(28),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(170)
    );
\q[176]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(29),
      I1 => \rf/rd11__3\,
      I2 => PCD(29),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(171)
    );
\q[177]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(30),
      I1 => \rf/rd11__3\,
      I2 => PCD(30),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(172)
    );
\q[178]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800F00088"
    )
        port map (
      I0 => rd10(31),
      I1 => \rf/rd11__3\,
      I2 => PCD(31),
      I3 => \q_reg[104]\,
      I4 => opD(2),
      I5 => opD(5),
      O => D(173)
    );
\q[178]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => \^q\(2),
      O => \rf/rd11__3\
    );
\q[17]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => FlushE,
      O => D(12)
    );
\q[17]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => opD(4),
      I1 => opD(5),
      I2 => opD(6),
      I3 => FlushE,
      O => p_0_in(17)
    );
\q[18]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => FlushE,
      O => D(13)
    );
\q[18]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00910000"
    )
        port map (
      I0 => opD(5),
      I1 => opD(4),
      I2 => opD(2),
      I3 => FlushE,
      I4 => opD(1),
      O => p_0_in(18)
    );
\q[19]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => FlushE,
      O => D(14)
    );
\q[19]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => opD(2),
      I1 => opD(5),
      I2 => opD(4),
      I3 => FlushE,
      O => p_0_in(19)
    );
\q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(1),
      I1 => FlushE,
      O => p_0_in(1)
    );
\q[20]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[16]\,
      I1 => FlushE,
      O => D(15)
    );
\q[20]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444404"
    )
        port map (
      I0 => FlushE,
      I1 => opD(1),
      I2 => opD(5),
      I3 => opD(4),
      I4 => opD(2),
      O => p_0_in(20)
    );
\q[21]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[17]\,
      I1 => FlushE,
      O => D(16)
    );
\q[22]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[18]\,
      I1 => FlushE,
      O => D(17)
    );
\q[23]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[19]\,
      I1 => FlushE,
      O => D(18)
    );
\q[24]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[20]\,
      I1 => FlushE,
      O => D(19)
    );
\q[25]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[21]\,
      I1 => FlushE,
      O => D(20)
    );
\q[26]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[22]\,
      I1 => FlushE,
      O => D(21)
    );
\q[27]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[23]\,
      I1 => FlushE,
      O => D(22)
    );
\q[28]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[24]\,
      I1 => FlushE,
      O => D(23)
    );
\q[29]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[25]\,
      I1 => FlushE,
      O => D(24)
    );
\q[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(2),
      I1 => FlushE,
      O => p_0_in(2)
    );
\q[30]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[26]\,
      I1 => FlushE,
      O => D(25)
    );
\q[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[27]\,
      I1 => FlushE,
      O => D(26)
    );
\q[32]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[28]\,
      I1 => FlushE,
      O => D(27)
    );
\q[33]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[29]\,
      I1 => FlushE,
      O => D(28)
    );
\q[34]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[30]\,
      I1 => FlushE,
      O => D(29)
    );
\q[35]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[31]\,
      I1 => FlushE,
      O => D(30)
    );
\q[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004540"
    )
        port map (
      I0 => ImmSrcD(1),
      I1 => RdD(0),
      I2 => ImmSrcD(0),
      I3 => \^q\(5),
      I4 => \q_reg[104]\,
      I5 => ImmSrcD(2),
      O => D(31)
    );
\q[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => opD(3),
      I1 => opD(2),
      I2 => opD(6),
      O => ImmSrcD(1)
    );
\q[36]_i_3\: unisim.vcomponents.LUT4
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
\q[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      O => ImmSrcD(2)
    );
\q[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A000A0C0C000C"
    )
        port map (
      I0 => \^q\(6),
      I1 => RdD(1),
      I2 => \q_reg[104]\,
      I3 => opD(2),
      I4 => opD(6),
      I5 => \q[40]_i_2_n_0\,
      O => D(32)
    );
\q[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A000A0C0C000C"
    )
        port map (
      I0 => \^q\(7),
      I1 => RdD(2),
      I2 => \q_reg[104]\,
      I3 => opD(2),
      I4 => opD(6),
      I5 => \q[40]_i_2_n_0\,
      O => D(33)
    );
\q[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A000A0C0C000C"
    )
        port map (
      I0 => \^q\(8),
      I1 => RdD(3),
      I2 => \q_reg[104]\,
      I3 => opD(2),
      I4 => opD(6),
      I5 => \q[40]_i_2_n_0\,
      O => D(34)
    );
\q[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(3),
      I1 => FlushE,
      O => p_0_in(3)
    );
\q[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A000A0C0C000C"
    )
        port map (
      I0 => \^q\(9),
      I1 => RdD(4),
      I2 => \q_reg[104]\,
      I3 => opD(2),
      I4 => opD(6),
      I5 => \q[40]_i_2_n_0\,
      O => D(35)
    );
\q[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEBB8B"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(5),
      I3 => opD(4),
      I4 => opD(3),
      O => \q[40]_i_2_n_0\
    );
\q[41]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q_reg_n_0_[89]\,
      O => D(36)
    );
\q[42]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q_reg_n_0_[90]\,
      O => D(37)
    );
\q[43]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q_reg_n_0_[91]\,
      O => D(38)
    );
\q[44]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q_reg_n_0_[92]\,
      O => D(39)
    );
\q[45]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q_reg_n_0_[93]\,
      O => D(40)
    );
\q[46]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => funct7b5D,
      O => D(41)
    );
\q[47]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => opD(2),
      I2 => opD(6),
      I3 => \q[47]_i_2_n_0\,
      O => D(42)
    );
\q[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => RdD(0),
      I2 => ImmSrcD(1),
      I3 => ImmSrcD(0),
      I4 => \^q\(5),
      O => \q[47]_i_2_n_0\
    );
\q[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => funct3D(0),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(43)
    );
\q[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => funct3D(1),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(44)
    );
\q[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(4),
      I1 => FlushE,
      O => p_0_in(4)
    );
\q[50]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => funct3D(2),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(45)
    );
\q[51]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(0),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(46)
    );
\q[52]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(1),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(47)
    );
\q[53]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(2),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(48)
    );
\q[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(3),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(49)
    );
\q[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF1D0000E200"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      I3 => \^q\(4),
      I4 => \q_reg[104]\,
      I5 => \q_reg_n_0_[95]\,
      O => D(50)
    );
\q[56]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(51)
    );
\q[57]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(52)
    );
\q[58]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(53)
    );
\q[59]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(54)
    );
\q[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(5),
      I1 => FlushE,
      O => p_0_in(5)
    );
\q[60]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(55)
    );
\q[61]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[89]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(56)
    );
\q[62]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[90]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(57)
    );
\q[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[91]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(58)
    );
\q[64]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[92]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(59)
    );
\q[65]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[93]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(60)
    );
\q[66]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CACC"
    )
        port map (
      I0 => funct7b5D,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => \q_reg[104]\,
      O => D(61)
    );
\q[67]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => \q_reg[104]\,
      O => D(62)
    );
\q[68]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RdD(0),
      I1 => FlushE,
      O => D(63)
    );
\q[69]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RdD(1),
      I1 => FlushE,
      O => D(64)
    );
\q[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => FlushE,
      O => D(1)
    );
\q[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(6),
      I1 => FlushE,
      O => p_0_in(6)
    );
\q[70]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RdD(2),
      I1 => FlushE,
      O => D(65)
    );
\q[71]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RdD(3),
      I1 => FlushE,
      O => D(66)
    );
\q[72]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RdD(4),
      I1 => FlushE,
      O => D(67)
    );
\q[73]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => FlushE,
      O => D(68)
    );
\q[74]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => FlushE,
      O => D(69)
    );
\q[75]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => FlushE,
      O => D(70)
    );
\q[76]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => FlushE,
      O => D(71)
    );
\q[77]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => FlushE,
      O => D(72)
    );
\q[78]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => FlushE,
      O => D(73)
    );
\q[79]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => FlushE,
      O => D(74)
    );
\q[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => FlushE,
      O => D(2)
    );
\q[7]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => funct3D(0),
      I1 => \q_reg[104]\,
      O => p_0_in(7)
    );
\q[80]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => FlushE,
      O => D(75)
    );
\q[81]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => FlushE,
      O => D(76)
    );
\q[82]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => FlushE,
      O => D(77)
    );
\q[83]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(0),
      I1 => \q_reg[104]\,
      O => D(78)
    );
\q[84]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(1),
      I1 => \q_reg[104]\,
      O => D(79)
    );
\q[85]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(2),
      I1 => \q_reg[104]\,
      O => D(80)
    );
\q[86]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(3),
      I1 => \q_reg[104]\,
      O => D(81)
    );
\q[87]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(4),
      I1 => \q_reg[104]\,
      O => D(82)
    );
\q[88]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(5),
      I1 => \q_reg[104]\,
      O => D(83)
    );
\q[89]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(6),
      I1 => \q_reg[104]\,
      O => D(84)
    );
\q[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => FlushE,
      O => D(3)
    );
\q[8]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => funct3D(1),
      I1 => \q_reg[104]\,
      O => p_0_in(8)
    );
\q[90]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(7),
      I1 => \q_reg[104]\,
      O => D(85)
    );
\q[91]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(8),
      I1 => \q_reg[104]\,
      O => D(86)
    );
\q[92]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(9),
      I1 => \q_reg[104]\,
      O => D(87)
    );
\q[93]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(10),
      I1 => \q_reg[104]\,
      O => D(88)
    );
\q[94]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(11),
      I1 => \q_reg[104]\,
      O => D(89)
    );
\q[95]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(12),
      I1 => \q_reg[104]\,
      O => D(90)
    );
\q[96]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(13),
      I1 => \q_reg[104]\,
      O => D(91)
    );
\q[97]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(14),
      I1 => \q_reg[104]\,
      O => D(92)
    );
\q[98]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(15),
      I1 => \q_reg[104]\,
      O => D(93)
    );
\q[99]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PCD(16),
      I1 => \q_reg[104]\,
      O => D(94)
    );
\q[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => FlushE,
      O => D(4)
    );
\q[9]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => funct3D(2),
      I1 => \q_reg[104]\,
      O => p_0_in(9)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(8),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(9),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(10),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(11),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(12),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(13),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(14),
      Q => \q_reg_n_0_[16]\
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(15),
      Q => \q_reg_n_0_[17]\
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(16),
      Q => \q_reg_n_0_[18]\
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(17),
      Q => \q_reg_n_0_[19]\
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(18),
      Q => \q_reg_n_0_[20]\
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(19),
      Q => \q_reg_n_0_[21]\
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(20),
      Q => \q_reg_n_0_[22]\
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(21),
      Q => \q_reg_n_0_[23]\
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(22),
      Q => \q_reg_n_0_[24]\
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(23),
      Q => \q_reg_n_0_[25]\
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(24),
      Q => \q_reg_n_0_[26]\
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(25),
      Q => \q_reg_n_0_[27]\
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(26),
      Q => \q_reg_n_0_[28]\
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(27),
      Q => \q_reg_n_0_[29]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(0),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(28),
      Q => \q_reg_n_0_[30]\
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(29),
      Q => \q_reg_n_0_[31]\
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(30),
      Q => PCD(0)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(31),
      Q => PCD(1)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(32),
      Q => PCD(2)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(33),
      Q => PCD(3)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(34),
      Q => PCD(4)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(35),
      Q => PCD(5)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(36),
      Q => PCD(6)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(37),
      Q => PCD(7)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(1),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(38),
      Q => PCD(8)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(39),
      Q => PCD(9)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(40),
      Q => PCD(10)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(41),
      Q => PCD(11)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(42),
      Q => PCD(12)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(43),
      Q => PCD(13)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(44),
      Q => PCD(14)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(45),
      Q => PCD(15)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(46),
      Q => PCD(16)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(47),
      Q => PCD(17)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(2),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(48),
      Q => PCD(18)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(49),
      Q => PCD(19)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(50),
      Q => PCD(20)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(51),
      Q => PCD(21)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(52),
      Q => PCD(22)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(53),
      Q => PCD(23)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(54),
      Q => PCD(24)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(55),
      Q => PCD(25)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(56),
      Q => PCD(26)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(57),
      Q => PCD(27)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(3),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(58),
      Q => PCD(28)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(59),
      Q => PCD(29)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(60),
      Q => PCD(30)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(61),
      Q => PCD(31)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(62),
      Q => opD(0)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(63),
      Q => opD(1)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(64),
      Q => opD(2)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(65),
      Q => opD(3)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(66),
      Q => opD(4)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(67),
      Q => opD(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(4),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(68),
      Q => opD(6)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(69),
      Q => RdD(0)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(70),
      Q => RdD(1)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(71),
      Q => RdD(2)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(72),
      Q => RdD(3)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(73),
      Q => RdD(4)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(74),
      Q => funct3D(0)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(75),
      Q => funct3D(1)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(76),
      Q => funct3D(2)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(77),
      Q => \^q\(0)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(5),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(78),
      Q => \^q\(1)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(79),
      Q => \^q\(2)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(80),
      Q => \^q\(3)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(81),
      Q => \^q\(4)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(82),
      Q => \^q\(5)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(83),
      Q => \^q\(6)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(84),
      Q => \^q\(7)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(85),
      Q => \^q\(8)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(86),
      Q => \^q\(9)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(87),
      Q => \q_reg_n_0_[89]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(6),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(88),
      Q => \q_reg_n_0_[90]\
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(89),
      Q => \q_reg_n_0_[91]\
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(90),
      Q => \q_reg_n_0_[92]\
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(91),
      Q => \q_reg_n_0_[93]\
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(92),
      Q => funct7b5D
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(93),
      Q => \q_reg_n_0_[95]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(7),
      Q => \q_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopr is
  port (
    \readDataM[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[83]\ : in STD_LOGIC;
    \q_reg[84]\ : in STD_LOGIC;
    \q_reg[85]\ : in STD_LOGIC;
    \q_reg[86]\ : in STD_LOGIC;
    \q_reg[87]\ : in STD_LOGIC;
    \q_reg[88]\ : in STD_LOGIC;
    \q_reg[89]\ : in STD_LOGIC;
    \q_reg[90]\ : in STD_LOGIC;
    \Data_reg[31]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_top_0_0_flopr;

architecture STRUCTURE of design_1_top_0_0_flopr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_reg[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Data_reg[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Data_reg[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Data_reg[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Data_reg[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Data_reg[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Data_reg[31]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Data_reg[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Data_reg[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Data_reg[9]_i_1\ : label is "soft_lutpair21";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \q_reg[3]_0\ <= \^q_reg[3]_0\;
\Data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(2),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[85]\,
      O => \readDataM[15]\(2)
    );
\Data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(3),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[86]\,
      O => \readDataM[15]\(3)
    );
\Data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(4),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[87]\,
      O => \readDataM[15]\(4)
    );
\Data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(5),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[88]\,
      O => \readDataM[15]\(5)
    );
\Data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(6),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[89]\,
      O => \readDataM[15]\(6)
    );
\Data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(7),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[90]\,
      O => \readDataM[15]\(7)
    );
\Data_reg[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \Data_reg[31]_i_2\(1),
      I1 => \^q\(3),
      I2 => \Data_reg[31]_i_2\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \^q_reg[3]_0\
    );
\Data_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \Data_reg[31]_i_2\(0),
      I3 => \^q\(3),
      O => \q_reg[2]_0\
    );
\Data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(0),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[83]\,
      O => \readDataM[15]\(0)
    );
\Data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ReadDataM(1),
      I1 => \^q_reg[3]_0\,
      I2 => \q_reg[84]\,
      O => \readDataM[15]\(1)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_flopr__parameterized0\ is
  port (
    RegWriteW : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_flopr__parameterized0\ : entity is "flopr";
end \design_1_top_0_0_flopr__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_flopr__parameterized0\ is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(0),
      Q => RegWriteW
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_flopr__parameterized1\ is
  port (
    ForwardAE11_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 103 downto 0 );
    \q_reg[71]_0\ : out STD_LOGIC;
    \q_reg[69]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[4]_1\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[2]_1\ : out STD_LOGIC;
    \q_reg[2]_2\ : out STD_LOGIC;
    \q_reg[2]_3\ : out STD_LOGIC;
    \q_reg[2]_4\ : out STD_LOGIC;
    \q_reg[2]_5\ : out STD_LOGIC;
    \q_reg[2]_6\ : out STD_LOGIC;
    \q_reg[2]_7\ : out STD_LOGIC;
    jalrTarget_carry_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[38]_0\ : in STD_LOGIC_VECTOR ( 74 downto 0 );
    jalrTarget_carry_i_9_0 : in STD_LOGIC;
    \q_reg[91]_0\ : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[75]_0\ : in STD_LOGIC;
    \q_reg[137]_0\ : in STD_LOGIC_VECTOR ( 67 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_flopr__parameterized1\ : entity is "flopr";
end \design_1_top_0_0_flopr__parameterized1\;

architecture STRUCTURE of \design_1_top_0_0_flopr__parameterized1\ is
  signal \Data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \Data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \Data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 103 downto 0 );
  signal WriteDataM_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WriteDataOut_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataOut_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal funct3M : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \load/data0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q_reg[71]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_reg[16]_i_1\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \Data_reg[17]_i_1\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \Data_reg[18]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \Data_reg[19]_i_1\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \Data_reg[20]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \Data_reg[21]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \Data_reg[22]_i_1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \Data_reg[23]_i_1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \Data_reg[24]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \Data_reg[25]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \Data_reg[26]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \Data_reg[27]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \Data_reg[28]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \Data_reg[29]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \Data_reg[30]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \Data_reg[31]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \Data_reg[31]_i_2\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[15]_i_3\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[23]_i_3\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[31]_i_2\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[31]_i_3\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[31]_i_5\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[7]_i_2\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \WriteDataOut_reg[7]_i_3\ : label is "soft_lutpair182";
begin
  Q(103 downto 0) <= \^q\(103 downto 0);
  \q_reg[71]_0\ <= \^q_reg[71]_0\;
\Data_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[0]_i_2_n_0\,
      I2 => ReadDataM(0),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(0)
    );
\Data_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(0),
      I2 => ReadDataM(16),
      I3 => funct3M(0),
      I4 => \load/data0\(0),
      O => \Data_reg[0]_i_2_n_0\
    );
\Data_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(8),
      I1 => ReadDataM(0),
      I2 => ReadDataM(24),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(16),
      O => \load/data0\(0)
    );
\Data_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(10),
      I4 => ReadDataM(26),
      I5 => \^q\(73),
      O => \q_reg[2]_5\
    );
\Data_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(11),
      I4 => ReadDataM(27),
      I5 => \^q\(73),
      O => \q_reg[2]_4\
    );
\Data_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(12),
      I4 => ReadDataM(28),
      I5 => \^q\(73),
      O => \q_reg[2]_3\
    );
\Data_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(13),
      I4 => ReadDataM(29),
      I5 => \^q\(73),
      O => \q_reg[2]_2\
    );
\Data_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(14),
      I4 => ReadDataM(30),
      I5 => \^q\(73),
      O => \q_reg[2]_1\
    );
\Data_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(15),
      I4 => ReadDataM(31),
      I5 => \^q\(73),
      O => \q_reg[2]_0\
    );
\Data_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(16),
      O => \q_reg[4]_1\(8)
    );
\Data_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(17),
      O => \q_reg[4]_1\(9)
    );
\Data_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(18),
      O => \q_reg[4]_1\(10)
    );
\Data_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(19),
      O => \q_reg[4]_1\(11)
    );
\Data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[1]_i_2_n_0\,
      I2 => ReadDataM(1),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(1)
    );
\Data_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(1),
      I2 => ReadDataM(17),
      I3 => funct3M(0),
      I4 => \load/data0\(1),
      O => \Data_reg[1]_i_2_n_0\
    );
\Data_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(9),
      I1 => ReadDataM(1),
      I2 => ReadDataM(25),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(17),
      O => \load/data0\(1)
    );
\Data_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(20),
      O => \q_reg[4]_1\(12)
    );
\Data_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(21),
      O => \q_reg[4]_1\(13)
    );
\Data_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(22),
      O => \q_reg[4]_1\(14)
    );
\Data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(23),
      O => \q_reg[4]_1\(15)
    );
\Data_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(24),
      O => \q_reg[4]_1\(16)
    );
\Data_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(25),
      O => \q_reg[4]_1\(17)
    );
\Data_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(26),
      O => \q_reg[4]_1\(18)
    );
\Data_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(27),
      O => \q_reg[4]_1\(19)
    );
\Data_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(28),
      O => \q_reg[4]_1\(20)
    );
\Data_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(29),
      O => \q_reg[4]_1\(21)
    );
\Data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[2]_i_2_n_0\,
      I2 => ReadDataM(2),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(2)
    );
\Data_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(2),
      I2 => ReadDataM(18),
      I3 => funct3M(0),
      I4 => \load/data0\(2),
      O => \Data_reg[2]_i_2_n_0\
    );
\Data_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(10),
      I1 => ReadDataM(2),
      I2 => ReadDataM(26),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(18),
      O => \load/data0\(2)
    );
\Data_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(30),
      O => \q_reg[4]_1\(22)
    );
\Data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC10"
    )
        port map (
      I0 => funct3M(2),
      I1 => \q_reg[91]_0\,
      I2 => \Data_reg[31]_i_4_n_0\,
      I3 => ReadDataM(31),
      O => \q_reg[4]_1\(23)
    );
\Data_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(72),
      I1 => funct3M(0),
      I2 => \q_reg[91]_0\,
      O => E(0)
    );
\Data_reg[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE22E2E2"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => ReadDataM(15),
      I3 => ReadDataM(31),
      I4 => \^q\(73),
      O => \Data_reg[31]_i_4_n_0\
    );
\Data_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(15),
      I1 => ReadDataM(7),
      I2 => ReadDataM(31),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(23),
      O => \load/data0\(31)
    );
\Data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[3]_i_2_n_0\,
      I2 => ReadDataM(3),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(3)
    );
\Data_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(3),
      I2 => ReadDataM(19),
      I3 => funct3M(0),
      I4 => \load/data0\(3),
      O => \Data_reg[3]_i_2_n_0\
    );
\Data_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(11),
      I1 => ReadDataM(3),
      I2 => ReadDataM(27),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(19),
      O => \load/data0\(3)
    );
\Data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[4]_i_2_n_0\,
      I2 => ReadDataM(4),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(4)
    );
\Data_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(4),
      I2 => ReadDataM(20),
      I3 => funct3M(0),
      I4 => \load/data0\(4),
      O => \Data_reg[4]_i_2_n_0\
    );
\Data_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(12),
      I1 => ReadDataM(4),
      I2 => ReadDataM(28),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(20),
      O => \load/data0\(4)
    );
\Data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[5]_i_2_n_0\,
      I2 => ReadDataM(5),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(5)
    );
\Data_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(5),
      I2 => ReadDataM(21),
      I3 => funct3M(0),
      I4 => \load/data0\(5),
      O => \Data_reg[5]_i_2_n_0\
    );
\Data_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(13),
      I1 => ReadDataM(5),
      I2 => ReadDataM(29),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(21),
      O => \load/data0\(5)
    );
\Data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[6]_i_2_n_0\,
      I2 => ReadDataM(6),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(6)
    );
\Data_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E4FFE400"
    )
        port map (
      I0 => \^q\(73),
      I1 => ReadDataM(6),
      I2 => ReadDataM(22),
      I3 => funct3M(0),
      I4 => \load/data0\(6),
      O => \Data_reg[6]_i_2_n_0\
    );
\Data_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => ReadDataM(14),
      I1 => ReadDataM(6),
      I2 => ReadDataM(30),
      I3 => \^q\(73),
      I4 => \^q\(72),
      I5 => ReadDataM(22),
      O => \load/data0\(6)
    );
\Data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Data_reg[7]_i_2_n_0\,
      I2 => ReadDataM(7),
      I3 => \q_reg[75]_0\,
      O => \q_reg[4]_1\(7)
    );
\Data_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2E2EE22"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => ReadDataM(23),
      I3 => ReadDataM(7),
      I4 => \^q\(73),
      O => \Data_reg[7]_i_2_n_0\
    );
\Data_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(8),
      I4 => ReadDataM(24),
      I5 => \^q\(73),
      O => \q_reg[2]_7\
    );
\Data_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECE0202CE02CE02"
    )
        port map (
      I0 => \load/data0\(31),
      I1 => funct3M(0),
      I2 => funct3M(2),
      I3 => ReadDataM(9),
      I4 => ReadDataM(25),
      I5 => \^q\(73),
      O => \q_reg[2]_6\
    );
\WriteDataOut_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(0),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(0),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(0)
    );
\WriteDataOut_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(10),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[10]_i_2_n_0\,
      I4 => \writeDataM[31]\(10),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(10)
    );
\WriteDataOut_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(2),
      I1 => \^q\(72),
      I2 => WriteDataM_0(10),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[10]_i_2_n_0\
    );
\WriteDataOut_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(11),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[11]_i_2_n_0\,
      I4 => \writeDataM[31]\(11),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(11)
    );
\WriteDataOut_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(3),
      I1 => \^q\(72),
      I2 => WriteDataM_0(11),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[11]_i_2_n_0\
    );
\WriteDataOut_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(12),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[12]_i_2_n_0\,
      I4 => \writeDataM[31]\(12),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(12)
    );
\WriteDataOut_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(4),
      I1 => \^q\(72),
      I2 => WriteDataM_0(12),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[12]_i_2_n_0\
    );
\WriteDataOut_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(13),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[13]_i_2_n_0\,
      I4 => \writeDataM[31]\(13),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(13)
    );
\WriteDataOut_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(5),
      I1 => \^q\(72),
      I2 => WriteDataM_0(13),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[13]_i_2_n_0\
    );
\WriteDataOut_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(14),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[14]_i_2_n_0\,
      I4 => \writeDataM[31]\(14),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(14)
    );
\WriteDataOut_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(6),
      I1 => \^q\(72),
      I2 => WriteDataM_0(14),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[14]_i_2_n_0\
    );
\WriteDataOut_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(15),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[15]_i_2_n_0\,
      I4 => \writeDataM[31]\(15),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(15)
    );
\WriteDataOut_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(7),
      I1 => \^q\(72),
      I2 => WriteDataM_0(15),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[15]_i_2_n_0\
    );
\WriteDataOut_reg[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3301"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(2),
      I2 => funct3M(0),
      I3 => \^q\(73),
      O => \WriteDataOut_reg[15]_i_3_n_0\
    );
\WriteDataOut_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(16),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[16]_i_2_n_0\,
      I4 => \writeDataM[31]\(16),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(16)
    );
\WriteDataOut_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(16),
      I1 => WriteDataM_0(0),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[16]_i_2_n_0\
    );
\WriteDataOut_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(17),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[17]_i_2_n_0\,
      I4 => \writeDataM[31]\(17),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(17)
    );
\WriteDataOut_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(17),
      I1 => WriteDataM_0(1),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[17]_i_2_n_0\
    );
\WriteDataOut_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(18),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[18]_i_2_n_0\,
      I4 => \writeDataM[31]\(18),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(18)
    );
\WriteDataOut_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(18),
      I1 => WriteDataM_0(2),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[18]_i_2_n_0\
    );
\WriteDataOut_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(19),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[19]_i_2_n_0\,
      I4 => \writeDataM[31]\(19),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(19)
    );
\WriteDataOut_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(19),
      I1 => WriteDataM_0(3),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[19]_i_2_n_0\
    );
\WriteDataOut_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(1),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(1),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(1)
    );
\WriteDataOut_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(20),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[20]_i_2_n_0\,
      I4 => \writeDataM[31]\(20),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(20)
    );
\WriteDataOut_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(20),
      I1 => WriteDataM_0(4),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[20]_i_2_n_0\
    );
\WriteDataOut_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(21),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[21]_i_2_n_0\,
      I4 => \writeDataM[31]\(21),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(21)
    );
\WriteDataOut_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(21),
      I1 => WriteDataM_0(5),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[21]_i_2_n_0\
    );
\WriteDataOut_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(22),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[22]_i_2_n_0\,
      I4 => \writeDataM[31]\(22),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(22)
    );
\WriteDataOut_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(22),
      I1 => WriteDataM_0(6),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[22]_i_2_n_0\
    );
\WriteDataOut_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(23),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[23]_i_2_n_0\,
      I4 => \writeDataM[31]\(23),
      I5 => \WriteDataOut_reg[23]_i_3_n_0\,
      O => D(23)
    );
\WriteDataOut_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAA0CAA00AA00"
    )
        port map (
      I0 => WriteDataM_0(23),
      I1 => WriteDataM_0(7),
      I2 => \^q\(72),
      I3 => \^q\(2),
      I4 => funct3M(0),
      I5 => \^q\(73),
      O => \WriteDataOut_reg[23]_i_2_n_0\
    );
\WriteDataOut_reg[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0233"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(2),
      I2 => funct3M(0),
      I3 => \^q\(73),
      O => \WriteDataOut_reg[23]_i_3_n_0\
    );
\WriteDataOut_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(24),
      I3 => \WriteDataOut_reg[24]_i_2_n_0\,
      I4 => \writeDataM[31]\(24),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(24)
    );
\WriteDataOut_reg[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(0),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(8),
      O => \WriteDataOut_reg[24]_i_2_n_0\
    );
\WriteDataOut_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(25),
      I3 => \WriteDataOut_reg[25]_i_2_n_0\,
      I4 => \writeDataM[31]\(25),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(25)
    );
\WriteDataOut_reg[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(1),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(9),
      O => \WriteDataOut_reg[25]_i_2_n_0\
    );
\WriteDataOut_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(26),
      I3 => \WriteDataOut_reg[26]_i_2_n_0\,
      I4 => \writeDataM[31]\(26),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(26)
    );
\WriteDataOut_reg[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(2),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(10),
      O => \WriteDataOut_reg[26]_i_2_n_0\
    );
\WriteDataOut_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(27),
      I3 => \WriteDataOut_reg[27]_i_2_n_0\,
      I4 => \writeDataM[31]\(27),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(27)
    );
\WriteDataOut_reg[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(3),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(11),
      O => \WriteDataOut_reg[27]_i_2_n_0\
    );
\WriteDataOut_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(28),
      I3 => \WriteDataOut_reg[28]_i_2_n_0\,
      I4 => \writeDataM[31]\(28),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(28)
    );
\WriteDataOut_reg[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(4),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(12),
      O => \WriteDataOut_reg[28]_i_2_n_0\
    );
\WriteDataOut_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(29),
      I3 => \WriteDataOut_reg[29]_i_2_n_0\,
      I4 => \writeDataM[31]\(29),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(29)
    );
\WriteDataOut_reg[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(5),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(13),
      O => \WriteDataOut_reg[29]_i_2_n_0\
    );
\WriteDataOut_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(2),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(2),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(2)
    );
\WriteDataOut_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(30),
      I3 => \WriteDataOut_reg[30]_i_2_n_0\,
      I4 => \writeDataM[31]\(30),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(30)
    );
\WriteDataOut_reg[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F08000000080"
    )
        port map (
      I0 => WriteDataM_0(6),
      I1 => \^q\(72),
      I2 => \^q\(73),
      I3 => funct3M(0),
      I4 => \^q\(2),
      I5 => WriteDataM_0(14),
      O => \WriteDataOut_reg[30]_i_2_n_0\
    );
\WriteDataOut_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3E0F3E0F3E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \WriteDataOut_reg[31]_i_3_n_0\,
      I2 => WriteDataM_0(31),
      I3 => \WriteDataOut_reg[31]_i_4_n_0\,
      I4 => \writeDataM[31]\(31),
      I5 => \WriteDataOut_reg[31]_i_5_n_0\,
      O => D(31)
    );
\WriteDataOut_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \^q\(2),
      I3 => funct3M(0),
      I4 => \^q\(72),
      O => \q_reg[4]_0\(0)
    );
\WriteDataOut_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      O => \WriteDataOut_reg[31]_i_3_n_0\
    );
\WriteDataOut_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0008800"
    )
        port map (
      I0 => WriteDataM_0(7),
      I1 => \^q\(72),
      I2 => WriteDataM_0(15),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[31]_i_4_n_0\
    );
\WriteDataOut_reg[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0133"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(2),
      I2 => funct3M(0),
      I3 => \^q\(73),
      O => \WriteDataOut_reg[31]_i_5_n_0\
    );
\WriteDataOut_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(3),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(3),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(3)
    );
\WriteDataOut_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(4),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(4),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(4)
    );
\WriteDataOut_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(5),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(5),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(5)
    );
\WriteDataOut_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(6),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(6),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(6)
    );
\WriteDataOut_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FBBB4000"
    )
        port map (
      I0 => funct3M(2),
      I1 => jalrTarget_carry_i_9(0),
      I2 => \writeDataM[31]\(7),
      I3 => \WriteDataOut_reg[7]_i_2_n_0\,
      I4 => WriteDataM_0(7),
      I5 => \WriteDataOut_reg[7]_i_3_n_0\,
      O => D(7)
    );
\WriteDataOut_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3302"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(2),
      I2 => funct3M(0),
      I3 => \^q\(73),
      O => \WriteDataOut_reg[7]_i_2_n_0\
    );
\WriteDataOut_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCFD"
    )
        port map (
      I0 => \^q\(72),
      I1 => \^q\(2),
      I2 => funct3M(0),
      I3 => \^q\(73),
      O => \WriteDataOut_reg[7]_i_3_n_0\
    );
\WriteDataOut_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(8),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[8]_i_2_n_0\,
      I4 => \writeDataM[31]\(8),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(8)
    );
\WriteDataOut_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(0),
      I1 => \^q\(72),
      I2 => WriteDataM_0(8),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[8]_i_2_n_0\
    );
\WriteDataOut_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8ABA8ABA8A"
    )
        port map (
      I0 => WriteDataM_0(9),
      I1 => funct3M(2),
      I2 => jalrTarget_carry_i_9(0),
      I3 => \WriteDataOut_reg[9]_i_2_n_0\,
      I4 => \writeDataM[31]\(9),
      I5 => \WriteDataOut_reg[15]_i_3_n_0\,
      O => D(9)
    );
\WriteDataOut_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000F00088"
    )
        port map (
      I0 => WriteDataM_0(1),
      I1 => \^q\(72),
      I2 => WriteDataM_0(9),
      I3 => \^q\(73),
      I4 => funct3M(0),
      I5 => \^q\(2),
      O => \WriteDataOut_reg[9]_i_2_n_0\
    );
jalrTarget_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => jalrTarget_carry_i_9(1),
      I1 => \^q\(68),
      I2 => \q_reg[38]_0\(70),
      I3 => \^q_reg[71]_0\,
      I4 => jalrTarget_carry_i_9_0,
      O => ForwardAE11_out
    );
jalrTarget_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(69),
      I1 => \q_reg[38]_0\(71),
      I2 => \^q\(70),
      I3 => \q_reg[38]_0\(72),
      O => \^q_reg[71]_0\
    );
\q[105]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(67),
      I1 => \q_reg[38]_0\(68),
      I2 => \q_reg[38]_0\(69),
      I3 => \^q\(71),
      O => \q_reg[69]_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(0),
      Q => \^q\(0)
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(30),
      Q => WriteDataM_0(26)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(31),
      Q => WriteDataM_0(27)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(32),
      Q => WriteDataM_0(28)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(33),
      Q => WriteDataM_0(29)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(34),
      Q => WriteDataM_0(30)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(35),
      Q => WriteDataM_0(31)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(36),
      Q => \^q\(72)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(37),
      Q => \^q\(73)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(38),
      Q => \^q\(74)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(39),
      Q => \^q\(75)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(36),
      Q => \^q\(8)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(40),
      Q => \^q\(76)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(41),
      Q => \^q\(77)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(42),
      Q => \^q\(78)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(43),
      Q => \^q\(79)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(44),
      Q => \^q\(80)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(45),
      Q => \^q\(81)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(46),
      Q => \^q\(82)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(47),
      Q => \^q\(83)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(48),
      Q => \^q\(84)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(49),
      Q => \^q\(85)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(37),
      Q => \^q\(9)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(50),
      Q => \^q\(86)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(51),
      Q => \^q\(87)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(52),
      Q => \^q\(88)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(53),
      Q => \^q\(89)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(54),
      Q => \^q\(90)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(55),
      Q => \^q\(91)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(56),
      Q => \^q\(92)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(57),
      Q => \^q\(93)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(58),
      Q => \^q\(94)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(59),
      Q => \^q\(95)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(38),
      Q => \^q\(10)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(60),
      Q => \^q\(96)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(61),
      Q => \^q\(97)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(62),
      Q => \^q\(98)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(63),
      Q => \^q\(99)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(64),
      Q => \^q\(100)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(65),
      Q => \^q\(101)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(66),
      Q => \^q\(102)
    );
\q_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(67),
      Q => \^q\(103)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(39),
      Q => \^q\(11)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(40),
      Q => \^q\(12)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(41),
      Q => \^q\(13)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(42),
      Q => \^q\(14)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(43),
      Q => \^q\(15)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(44),
      Q => \^q\(16)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(45),
      Q => \^q\(17)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(0),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(46),
      Q => \^q\(18)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(47),
      Q => \^q\(19)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(48),
      Q => \^q\(20)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(49),
      Q => \^q\(21)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(50),
      Q => \^q\(22)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(51),
      Q => \^q\(23)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(52),
      Q => \^q\(24)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(53),
      Q => \^q\(25)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(54),
      Q => \^q\(26)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(55),
      Q => \^q\(27)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(1),
      Q => funct3M(0)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(56),
      Q => \^q\(28)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(57),
      Q => \^q\(29)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(58),
      Q => \^q\(30)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(59),
      Q => \^q\(31)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(60),
      Q => \^q\(32)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(61),
      Q => \^q\(33)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(62),
      Q => \^q\(34)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(73),
      Q => \^q\(35)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(74),
      Q => \^q\(36)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(1),
      Q => \^q\(37)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(2),
      Q => \^q\(2)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(2),
      Q => \^q\(38)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(3),
      Q => \^q\(39)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(4),
      Q => \^q\(40)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(5),
      Q => \^q\(41)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(6),
      Q => \^q\(42)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(7),
      Q => \^q\(43)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(8),
      Q => \^q\(44)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(9),
      Q => \^q\(45)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(10),
      Q => \^q\(46)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(11),
      Q => \^q\(47)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(3),
      Q => funct3M(2)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(12),
      Q => \^q\(48)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(13),
      Q => \^q\(49)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(14),
      Q => \^q\(50)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(15),
      Q => \^q\(51)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(16),
      Q => \^q\(52)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(17),
      Q => \^q\(53)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(18),
      Q => \^q\(54)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(19),
      Q => \^q\(55)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(20),
      Q => \^q\(56)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(21),
      Q => \^q\(57)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(31),
      Q => \^q\(3)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(22),
      Q => \^q\(58)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(23),
      Q => \^q\(59)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(24),
      Q => \^q\(60)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(25),
      Q => \^q\(61)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(26),
      Q => \^q\(62)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(27),
      Q => \^q\(63)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(28),
      Q => \^q\(64)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(29),
      Q => \^q\(65)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(30),
      Q => \^q\(66)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(63),
      Q => \^q\(67)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(32),
      Q => \^q\(4)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(64),
      Q => \^q\(68)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(65),
      Q => \^q\(69)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(66),
      Q => \^q\(70)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(67),
      Q => \^q\(71)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(4),
      Q => WriteDataM_0(0)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(5),
      Q => WriteDataM_0(1)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(6),
      Q => WriteDataM_0(2)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(7),
      Q => WriteDataM_0(3)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(8),
      Q => WriteDataM_0(4)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(9),
      Q => WriteDataM_0(5)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(33),
      Q => \^q\(5)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(10),
      Q => WriteDataM_0(6)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(11),
      Q => WriteDataM_0(7)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(12),
      Q => WriteDataM_0(8)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(13),
      Q => WriteDataM_0(9)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(14),
      Q => WriteDataM_0(10)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(15),
      Q => WriteDataM_0(11)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(16),
      Q => WriteDataM_0(12)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(17),
      Q => WriteDataM_0(13)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(18),
      Q => WriteDataM_0(14)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(19),
      Q => WriteDataM_0(15)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(34),
      Q => \^q\(6)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(20),
      Q => WriteDataM_0(16)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(21),
      Q => WriteDataM_0(17)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(22),
      Q => WriteDataM_0(18)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(23),
      Q => WriteDataM_0(19)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(24),
      Q => WriteDataM_0(20)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(25),
      Q => WriteDataM_0(21)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(26),
      Q => WriteDataM_0(22)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(27),
      Q => WriteDataM_0(23)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(28),
      Q => WriteDataM_0(24)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[137]_0\(29),
      Q => WriteDataM_0(25)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[38]_0\(35),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_flopr__parameterized2\ is
  port (
    ResultW : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[74]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[72]_0\ : out STD_LOGIC;
    \q_reg[70]_0\ : out STD_LOGIC;
    jalrTarget_carry_i_9 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 134 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_flopr__parameterized2\ : entity is "flopr";
end \design_1_top_0_0_flopr__parameterized2\;

architecture STRUCTURE of \design_1_top_0_0_flopr__parameterized2\ is
  signal ALUResultW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DataW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ImmExtW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4W : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q_reg[72]_0\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \q_reg[72]_0\ <= \^q_reg[72]_0\;
jalrTarget_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q\(4),
      I1 => jalrTarget_carry_i_9(5),
      I2 => \^q\(0),
      I3 => jalrTarget_carry_i_9(2),
      I4 => \^q_reg[72]_0\,
      O => \q_reg[74]_0\
    );
jalrTarget_carry_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => jalrTarget_carry_i_9(3),
      I2 => \^q\(3),
      I3 => jalrTarget_carry_i_9(4),
      O => \^q_reg[72]_0\
    );
\q[78]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => jalrTarget_carry_i_9(0),
      I2 => jalrTarget_carry_i_9(1),
      I3 => \^q\(4),
      O => \q_reg[70]_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(96),
      Q => DataW(25)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(97),
      Q => DataW(26)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(98),
      Q => DataW(27)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(99),
      Q => DataW(28)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(100),
      Q => DataW(29)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(101),
      Q => DataW(30)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(102),
      Q => DataW(31)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(103),
      Q => ALUResultW(0)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(104),
      Q => ALUResultW(1)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(105),
      Q => ALUResultW(2)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => ImmExtW(4)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(106),
      Q => ALUResultW(3)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(107),
      Q => ALUResultW(4)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(108),
      Q => ALUResultW(5)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(109),
      Q => ALUResultW(6)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(110),
      Q => ALUResultW(7)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(111),
      Q => ALUResultW(8)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(112),
      Q => ALUResultW(9)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(113),
      Q => ALUResultW(10)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(114),
      Q => ALUResultW(11)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(115),
      Q => ALUResultW(12)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => ImmExtW(5)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(116),
      Q => ALUResultW(13)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(117),
      Q => ALUResultW(14)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(118),
      Q => ALUResultW(15)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(119),
      Q => ALUResultW(16)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(120),
      Q => ALUResultW(17)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(121),
      Q => ALUResultW(18)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(122),
      Q => ALUResultW(19)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(123),
      Q => ALUResultW(20)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(124),
      Q => ALUResultW(21)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(125),
      Q => ALUResultW(22)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => ImmExtW(6)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(126),
      Q => ALUResultW(23)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(127),
      Q => ALUResultW(24)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(128),
      Q => ALUResultW(25)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(129),
      Q => ALUResultW(26)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(130),
      Q => ALUResultW(27)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(131),
      Q => ALUResultW(28)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(132),
      Q => ALUResultW(29)
    );
\q_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(133),
      Q => ALUResultW(30)
    );
\q_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(134),
      Q => ALUResultW(31)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => ImmExtW(7)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => ImmExtW(8)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => ImmExtW(9)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => ImmExtW(10)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => ImmExtW(11)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => ImmExtW(12)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => ImmExtW(13)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => ImmExtW(14)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => ImmExtW(15)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => ImmExtW(16)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => ImmExtW(17)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => ImmExtW(18)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => ImmExtW(19)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => ImmExtW(20)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => ImmExtW(21)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => ImmExtW(22)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => ImmExtW(23)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => ImmExtW(24)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => ImmExtW(25)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => ImmExtW(26)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => ImmExtW(27)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => ImmExtW(28)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => ImmExtW(29)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => ImmExtW(30)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => ImmExtW(31)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => PCPlus4W(0)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => PCPlus4W(1)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => PCPlus4W(2)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => PCPlus4W(3)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => PCPlus4W(4)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => PCPlus4W(5)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => PCPlus4W(6)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => PCPlus4W(7)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => PCPlus4W(8)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => PCPlus4W(9)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => PCPlus4W(10)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => PCPlus4W(11)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => PCPlus4W(12)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => PCPlus4W(13)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => PCPlus4W(14)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => PCPlus4W(15)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => PCPlus4W(16)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => PCPlus4W(17)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => PCPlus4W(18)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => PCPlus4W(19)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => PCPlus4W(20)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => PCPlus4W(21)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => PCPlus4W(22)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => PCPlus4W(23)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => PCPlus4W(24)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => PCPlus4W(25)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => PCPlus4W(26)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => PCPlus4W(27)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => PCPlus4W(28)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => PCPlus4W(29)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(64),
      Q => PCPlus4W(30)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(65),
      Q => PCPlus4W(31)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => ImmExtW(0)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(66),
      Q => \^q\(0)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(67),
      Q => \^q\(1)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(68),
      Q => \^q\(2)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(69),
      Q => \^q\(3)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(70),
      Q => \^q\(4)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(71),
      Q => DataW(0)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(72),
      Q => DataW(1)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(73),
      Q => DataW(2)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(74),
      Q => DataW(3)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(75),
      Q => DataW(4)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => ImmExtW(1)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(76),
      Q => DataW(5)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(77),
      Q => DataW(6)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(78),
      Q => DataW(7)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(79),
      Q => DataW(8)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(80),
      Q => DataW(9)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(81),
      Q => DataW(10)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(82),
      Q => DataW(11)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(83),
      Q => DataW(12)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(84),
      Q => DataW(13)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(85),
      Q => DataW(14)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => ImmExtW(2)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(86),
      Q => DataW(15)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(87),
      Q => DataW(16)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(88),
      Q => DataW(17)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(89),
      Q => DataW(18)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(90),
      Q => DataW(19)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(91),
      Q => DataW(20)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(92),
      Q => DataW(21)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(93),
      Q => DataW(22)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(94),
      Q => DataW(23)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(95),
      Q => DataW(24)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => ImmExtW(3)
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(1),
      I1 => ALUResultW(1),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(1),
      I5 => DataW(1),
      O => ResultW(1)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(0),
      I1 => ALUResultW(0),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(0),
      I5 => DataW(0),
      O => ResultW(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(3),
      I1 => ALUResultW(3),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(3),
      I5 => DataW(3),
      O => ResultW(3)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(2),
      I1 => ALUResultW(2),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(2),
      I5 => DataW(2),
      O => ResultW(2)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(5),
      I1 => ALUResultW(5),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(5),
      I5 => DataW(5),
      O => ResultW(5)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(4),
      I1 => ALUResultW(4),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(4),
      I5 => DataW(4),
      O => ResultW(4)
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(13),
      I1 => ALUResultW(13),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(13),
      I5 => DataW(13),
      O => ResultW(13)
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(12),
      I1 => ALUResultW(12),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(12),
      I5 => DataW(12),
      O => ResultW(12)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(15),
      I1 => ALUResultW(15),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(15),
      I5 => DataW(15),
      O => ResultW(15)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(14),
      I1 => ALUResultW(14),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(14),
      I5 => DataW(14),
      O => ResultW(14)
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(17),
      I1 => ALUResultW(17),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(17),
      I5 => DataW(17),
      O => ResultW(17)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(16),
      I1 => ALUResultW(16),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(16),
      I5 => DataW(16),
      O => ResultW(16)
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(19),
      I1 => ALUResultW(19),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(19),
      I5 => DataW(19),
      O => ResultW(19)
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(18),
      I1 => ALUResultW(18),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(18),
      I5 => DataW(18),
      O => ResultW(18)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(21),
      I1 => ALUResultW(21),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(21),
      I5 => DataW(21),
      O => ResultW(21)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(20),
      I1 => ALUResultW(20),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(20),
      I5 => DataW(20),
      O => ResultW(20)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(23),
      I1 => ALUResultW(23),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(23),
      I5 => DataW(23),
      O => ResultW(23)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(22),
      I1 => ALUResultW(22),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(22),
      I5 => DataW(22),
      O => ResultW(22)
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(25),
      I1 => ALUResultW(25),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(25),
      I5 => DataW(25),
      O => ResultW(25)
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(24),
      I1 => ALUResultW(24),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(24),
      I5 => DataW(24),
      O => ResultW(24)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(27),
      I1 => ALUResultW(27),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(27),
      I5 => DataW(27),
      O => ResultW(27)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(26),
      I1 => ALUResultW(26),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(26),
      I5 => DataW(26),
      O => ResultW(26)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(29),
      I1 => ALUResultW(29),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(29),
      I5 => DataW(29),
      O => ResultW(29)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(28),
      I1 => ALUResultW(28),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(28),
      I5 => DataW(28),
      O => ResultW(28)
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(30),
      I1 => ALUResultW(30),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(30),
      I5 => DataW(30),
      O => ResultW(30)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(31),
      I1 => ALUResultW(31),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(31),
      I5 => DataW(31),
      O => ResultW(31)
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(7),
      I1 => ALUResultW(7),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(7),
      I5 => DataW(7),
      O => ResultW(7)
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(6),
      I1 => ALUResultW(6),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(6),
      I5 => DataW(6),
      O => ResultW(6)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(9),
      I1 => ALUResultW(9),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(9),
      I5 => DataW(9),
      O => ResultW(9)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(8),
      I1 => ALUResultW(8),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(8),
      I5 => DataW(8),
      O => ResultW(8)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(11),
      I1 => ALUResultW(11),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(11),
      I5 => DataW(11),
      O => ResultW(11)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => PCPlus4W(10),
      I1 => ALUResultW(10),
      I2 => \q_reg_n_0_[0]\,
      I3 => \q_reg_n_0_[1]\,
      I4 => ImmExtW(10),
      I5 => DataW(10),
      O => ResultW(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_floprc is
  port (
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[9]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \q_reg[15]_0\ : out STD_LOGIC;
    FlushE : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ovfE : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[11]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[11]_2\ : out STD_LOGIC;
    \q_reg[12]_1\ : out STD_LOGIC;
    \PCSrc1__6\ : out STD_LOGIC;
    \q_reg[16]_0\ : out STD_LOGIC;
    \q_reg[11]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 20 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[104]\ : in STD_LOGIC;
    \q_reg[136]\ : in STD_LOGIC;
    \q_reg[136]_0\ : in STD_LOGIC;
    \q_reg[137]\ : in STD_LOGIC;
    \q_reg[137]_0\ : in STD_LOGIC;
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
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[120]\ : in STD_LOGIC;
    \q_reg[120]_0\ : in STD_LOGIC;
    \q_reg[120]_1\ : in STD_LOGIC;
    \q_reg[121]\ : in STD_LOGIC;
    \q_reg[121]_0\ : in STD_LOGIC;
    \q_reg[121]_1\ : in STD_LOGIC;
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
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    \q_reg[108]\ : in STD_LOGIC;
    \q_reg[108]_0\ : in STD_LOGIC;
    \q_reg[108]_1\ : in STD_LOGIC;
    \q_reg[109]\ : in STD_LOGIC;
    \q_reg[109]_0\ : in STD_LOGIC;
    \q_reg[109]_1\ : in STD_LOGIC;
    \q_reg[110]\ : in STD_LOGIC;
    \q_reg[110]_0\ : in STD_LOGIC;
    \q_reg[111]\ : in STD_LOGIC;
    \q_reg[110]_1\ : in STD_LOGIC;
    \q_reg[111]_0\ : in STD_LOGIC;
    \q_reg[111]_1\ : in STD_LOGIC;
    \q_reg[112]\ : in STD_LOGIC;
    \q_reg[112]_0\ : in STD_LOGIC;
    \q_reg[112]_1\ : in STD_LOGIC;
    \q_reg[113]\ : in STD_LOGIC;
    \q_reg[113]_0\ : in STD_LOGIC;
    \q_reg[113]_1\ : in STD_LOGIC;
    \q_reg[114]\ : in STD_LOGIC;
    \q_reg[114]_0\ : in STD_LOGIC;
    \q_reg[114]_1\ : in STD_LOGIC;
    \q_reg[115]\ : in STD_LOGIC;
    \q_reg[115]_0\ : in STD_LOGIC;
    \q_reg[115]_1\ : in STD_LOGIC;
    \q_reg[116]\ : in STD_LOGIC;
    \q_reg[116]_0\ : in STD_LOGIC;
    \q_reg[116]_1\ : in STD_LOGIC;
    \q_reg[117]\ : in STD_LOGIC;
    \q_reg[117]_0\ : in STD_LOGIC;
    \q_reg[117]_1\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[118]_0\ : in STD_LOGIC;
    \q_reg[118]_1\ : in STD_LOGIC;
    \q_reg[119]\ : in STD_LOGIC;
    \q_reg[119]_0\ : in STD_LOGIC;
    \q_reg[119]_1\ : in STD_LOGIC;
    \q_reg[113]_2\ : in STD_LOGIC;
    SrcAE : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \SrcBE__0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[135]_1\ : in STD_LOGIC;
    \q_reg[123]_1\ : in STD_LOGIC;
    \q_reg[122]_1\ : in STD_LOGIC;
    \q_reg[124]_1\ : in STD_LOGIC;
    \q_reg[125]_1\ : in STD_LOGIC;
    \q_reg[126]_1\ : in STD_LOGIC;
    \q_reg[127]_1\ : in STD_LOGIC;
    \q_reg[128]_1\ : in STD_LOGIC;
    \q_reg[129]_1\ : in STD_LOGIC;
    \q_reg[130]_1\ : in STD_LOGIC;
    \q_reg[131]_1\ : in STD_LOGIC;
    \q_reg[132]_1\ : in STD_LOGIC;
    \q_reg[133]_1\ : in STD_LOGIC;
    \q_reg[134]_1\ : in STD_LOGIC;
    \q_reg[135]_2\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \condinvb__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    WriteDataE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[107]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[31]_i_12_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SrcBE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC
  );
end design_1_top_0_0_floprc;

architecture STRUCTURE of design_1_top_0_0_floprc is
  signal \BranchCondition__9\ : STD_LOGIC;
  signal JumpE : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ZeroE : STD_LOGIC;
  signal \^ovfe\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \q[106]_i_5_n_0\ : STD_LOGIC;
  signal \q[107]_i_4_n_0\ : STD_LOGIC;
  signal \q[108]_i_4_n_0\ : STD_LOGIC;
  signal \q[109]_i_4_n_0\ : STD_LOGIC;
  signal \q[110]_i_2_n_0\ : STD_LOGIC;
  signal \q[110]_i_5_n_0\ : STD_LOGIC;
  signal \q[110]_i_7_n_0\ : STD_LOGIC;
  signal \q[111]_i_2_n_0\ : STD_LOGIC;
  signal \q[111]_i_5_n_0\ : STD_LOGIC;
  signal \q[111]_i_7_n_0\ : STD_LOGIC;
  signal \q[112]_i_2_n_0\ : STD_LOGIC;
  signal \q[112]_i_5_n_0\ : STD_LOGIC;
  signal \q[112]_i_7_n_0\ : STD_LOGIC;
  signal \q[113]_i_2_n_0\ : STD_LOGIC;
  signal \q[113]_i_5_n_0\ : STD_LOGIC;
  signal \q[113]_i_7_n_0\ : STD_LOGIC;
  signal \q[114]_i_4_n_0\ : STD_LOGIC;
  signal \q[115]_i_4_n_0\ : STD_LOGIC;
  signal \q[116]_i_4_n_0\ : STD_LOGIC;
  signal \q[117]_i_4_n_0\ : STD_LOGIC;
  signal \q[118]_i_4_n_0\ : STD_LOGIC;
  signal \q[119]_i_4_n_0\ : STD_LOGIC;
  signal \q[120]_i_4_n_0\ : STD_LOGIC;
  signal \q[121]_i_4_n_0\ : STD_LOGIC;
  signal \q[122]_i_2_n_0\ : STD_LOGIC;
  signal \q[122]_i_5_n_0\ : STD_LOGIC;
  signal \q[122]_i_7_n_0\ : STD_LOGIC;
  signal \q[123]_i_2_n_0\ : STD_LOGIC;
  signal \q[123]_i_5_n_0\ : STD_LOGIC;
  signal \q[123]_i_7_n_0\ : STD_LOGIC;
  signal \q[124]_i_2_n_0\ : STD_LOGIC;
  signal \q[124]_i_5_n_0\ : STD_LOGIC;
  signal \q[124]_i_7_n_0\ : STD_LOGIC;
  signal \q[125]_i_2_n_0\ : STD_LOGIC;
  signal \q[125]_i_5_n_0\ : STD_LOGIC;
  signal \q[125]_i_7_n_0\ : STD_LOGIC;
  signal \q[126]_i_2_n_0\ : STD_LOGIC;
  signal \q[126]_i_5_n_0\ : STD_LOGIC;
  signal \q[126]_i_7_n_0\ : STD_LOGIC;
  signal \q[127]_i_2_n_0\ : STD_LOGIC;
  signal \q[127]_i_5_n_0\ : STD_LOGIC;
  signal \q[127]_i_7_n_0\ : STD_LOGIC;
  signal \q[128]_i_2_n_0\ : STD_LOGIC;
  signal \q[128]_i_5_n_0\ : STD_LOGIC;
  signal \q[128]_i_7_n_0\ : STD_LOGIC;
  signal \q[129]_i_2_n_0\ : STD_LOGIC;
  signal \q[129]_i_5_n_0\ : STD_LOGIC;
  signal \q[129]_i_7_n_0\ : STD_LOGIC;
  signal \q[130]_i_2_n_0\ : STD_LOGIC;
  signal \q[130]_i_5_n_0\ : STD_LOGIC;
  signal \q[130]_i_7_n_0\ : STD_LOGIC;
  signal \q[131]_i_2_n_0\ : STD_LOGIC;
  signal \q[131]_i_5_n_0\ : STD_LOGIC;
  signal \q[131]_i_7_n_0\ : STD_LOGIC;
  signal \q[132]_i_2_n_0\ : STD_LOGIC;
  signal \q[132]_i_5_n_0\ : STD_LOGIC;
  signal \q[132]_i_7_n_0\ : STD_LOGIC;
  signal \q[133]_i_2_n_0\ : STD_LOGIC;
  signal \q[133]_i_5_n_0\ : STD_LOGIC;
  signal \q[133]_i_7_n_0\ : STD_LOGIC;
  signal \q[134]_i_2_n_0\ : STD_LOGIC;
  signal \q[134]_i_5_n_0\ : STD_LOGIC;
  signal \q[134]_i_7_n_0\ : STD_LOGIC;
  signal \q[135]_i_2_n_0\ : STD_LOGIC;
  signal \q[135]_i_5_n_0\ : STD_LOGIC;
  signal \q[135]_i_7_n_0\ : STD_LOGIC;
  signal \q[136]_i_2_n_0\ : STD_LOGIC;
  signal \q[136]_i_5_n_0\ : STD_LOGIC;
  signal \q[136]_i_9_n_0\ : STD_LOGIC;
  signal \q[137]_i_2_n_0\ : STD_LOGIC;
  signal \q[137]_i_3_n_0\ : STD_LOGIC;
  signal \q[137]_i_6_n_0\ : STD_LOGIC;
  signal \q[137]_i_7_n_0\ : STD_LOGIC;
  signal \q[178]_i_5_n_0\ : STD_LOGIC;
  signal \q[178]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_12_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_15_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_19_n_0\ : STD_LOGIC;
  signal \q[31]_i_20_n_0\ : STD_LOGIC;
  signal \q[31]_i_21_n_0\ : STD_LOGIC;
  signal \q[31]_i_22_n_0\ : STD_LOGIC;
  signal \q[31]_i_9_n_0\ : STD_LOGIC;
  signal \^q_reg[11]_0\ : STD_LOGIC;
  signal \^q_reg[11]_1\ : STD_LOGIC;
  signal \^q_reg[12]_0\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^q_reg[15]_0\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC;
  signal \^q_reg[8]_0\ : STD_LOGIC;
  signal \^q_reg[9]_0\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[106]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[107]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[136]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[136]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[178]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[31]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[31]_i_17\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[31]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[64]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[65]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[66]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[67]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[68]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[69]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[70]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[71]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[72]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[73]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[74]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[75]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[76]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[77]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[78]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[79]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[80]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[81]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[82]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[83]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[84]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[85]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[86]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[87]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[88]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[89]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[90]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[91]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[92]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[93]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q[94]_i_1\ : label is "soft_lutpair19";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  ovfE <= \^ovfe\;
  \q_reg[11]_0\ <= \^q_reg[11]_0\;
  \q_reg[11]_1\ <= \^q_reg[11]_1\;
  \q_reg[12]_0\(32 downto 0) <= \^q_reg[12]_0\(32 downto 0);
  \q_reg[15]_0\ <= \^q_reg[15]_0\;
  \q_reg[7]_0\ <= \^q_reg[7]_0\;
  \q_reg[8]_0\ <= \^q_reg[8]_0\;
  \q_reg[9]_0\ <= \^q_reg[9]_0\;
\q[106]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00F8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg[106]\,
      I2 => \q_reg[106]_0\,
      I3 => \^q\(3),
      I4 => \q_reg[106]_1\,
      I5 => \q[106]_i_5_n_0\,
      O => \^q_reg[12]_0\(1)
    );
\q[106]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => CO(0),
      I2 => \^q\(3),
      O => \q[106]_i_5_n_0\
    );
\q[106]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \q_reg[12]_1\
    );
\q[107]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[107]\,
      I3 => \q_reg[107]_0\,
      I4 => \q[107]_i_4_n_0\,
      I5 => \q_reg[107]_1\,
      O => \^q_reg[12]_0\(2)
    );
\q[107]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(0),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(0),
      O => \q[107]_i_4_n_0\
    );
\q[107]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \^q\(0),
      I1 => WriteDataE(0),
      I2 => \^q_reg[12]_0\(0),
      I3 => \q[107]_i_2\(0),
      O => \q_reg[11]_2\
    );
\q[108]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[108]\,
      I3 => \q_reg[108]_0\,
      I4 => \q[108]_i_4_n_0\,
      I5 => \q_reg[108]_1\,
      O => \^q_reg[12]_0\(3)
    );
\q[108]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(1),
      O => \q[108]_i_4_n_0\
    );
\q[109]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => SrcBE(0),
      O => \q_reg[11]_3\(0)
    );
\q[109]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[109]\,
      I3 => \q_reg[109]_0\,
      I4 => \q[109]_i_4_n_0\,
      I5 => \q_reg[109]_1\,
      O => \^q_reg[12]_0\(4)
    );
\q[109]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(2),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(2),
      O => \q[109]_i_4_n_0\
    );
\q[110]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[110]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[110]\,
      I3 => \q_reg[110]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[110]_i_5_n_0\,
      O => \^q_reg[12]_0\(5)
    );
\q[110]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[111]\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[110]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[110]_i_7_n_0\,
      O => \q[110]_i_2_n_0\
    );
\q[110]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \SrcBE__0\(3),
      I5 => SrcAE(3),
      O => \q[110]_i_5_n_0\
    );
\q[110]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(3),
      I4 => SrcAE(3),
      O => \q[110]_i_7_n_0\
    );
\q[111]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[111]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[111]_0\,
      I3 => \q_reg[111]_1\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[111]_i_5_n_0\,
      O => \^q_reg[12]_0\(6)
    );
\q[111]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[112]\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[111]\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[111]_i_7_n_0\,
      O => \q[111]_i_2_n_0\
    );
\q[111]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(4),
      I5 => \SrcBE__0\(4),
      O => \q[111]_i_5_n_0\
    );
\q[111]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(4),
      I4 => SrcAE(4),
      O => \q[111]_i_7_n_0\
    );
\q[112]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[112]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[112]_0\,
      I3 => \q_reg[112]_1\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[112]_i_5_n_0\,
      O => \^q_reg[12]_0\(7)
    );
\q[112]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[113]\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[112]\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[112]_i_7_n_0\,
      O => \q[112]_i_2_n_0\
    );
\q[112]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(5),
      I5 => \SrcBE__0\(5),
      O => \q[112]_i_5_n_0\
    );
\q[112]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(5),
      I4 => SrcAE(5),
      O => \q[112]_i_7_n_0\
    );
\q[113]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[113]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[113]_0\,
      I3 => \q_reg[113]_1\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[113]_i_5_n_0\,
      O => \^q_reg[12]_0\(8)
    );
\q[113]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[113]_2\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[113]\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[113]_i_7_n_0\,
      O => \q[113]_i_2_n_0\
    );
\q[113]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(6),
      I5 => \SrcBE__0\(6),
      O => \q[113]_i_5_n_0\
    );
\q[113]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(6),
      I4 => SrcAE(6),
      O => \q[113]_i_7_n_0\
    );
\q[114]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[114]\,
      I3 => \q_reg[114]_0\,
      I4 => \q[114]_i_4_n_0\,
      I5 => \q_reg[114]_1\,
      O => \^q_reg[12]_0\(9)
    );
\q[114]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(7),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(7),
      O => \q[114]_i_4_n_0\
    );
\q[115]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[115]\,
      I3 => \q_reg[115]_0\,
      I4 => \q[115]_i_4_n_0\,
      I5 => \q_reg[115]_1\,
      O => \^q_reg[12]_0\(10)
    );
\q[115]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(8),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(8),
      O => \q[115]_i_4_n_0\
    );
\q[116]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[116]\,
      I3 => \q_reg[116]_0\,
      I4 => \q[116]_i_4_n_0\,
      I5 => \q_reg[116]_1\,
      O => \^q_reg[12]_0\(11)
    );
\q[116]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(9),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(9),
      O => \q[116]_i_4_n_0\
    );
\q[117]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[117]\,
      I3 => \q_reg[117]_0\,
      I4 => \q[117]_i_4_n_0\,
      I5 => \q_reg[117]_1\,
      O => \^q_reg[12]_0\(12)
    );
\q[117]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(10),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(10),
      O => \q[117]_i_4_n_0\
    );
\q[118]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[118]\,
      I3 => \q_reg[118]_0\,
      I4 => \q[118]_i_4_n_0\,
      I5 => \q_reg[118]_1\,
      O => \^q_reg[12]_0\(13)
    );
\q[118]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(11),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(11),
      O => \q[118]_i_4_n_0\
    );
\q[119]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[119]\,
      I3 => \q_reg[119]_0\,
      I4 => \q[119]_i_4_n_0\,
      I5 => \q_reg[119]_1\,
      O => \^q_reg[12]_0\(14)
    );
\q[119]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(12),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(12),
      O => \q[119]_i_4_n_0\
    );
\q[120]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[120]\,
      I3 => \q_reg[120]_0\,
      I4 => \q[120]_i_4_n_0\,
      I5 => \q_reg[120]_1\,
      O => \^q_reg[12]_0\(15)
    );
\q[120]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(13),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(13),
      O => \q[120]_i_4_n_0\
    );
\q[121]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[121]\,
      I3 => \q_reg[121]_0\,
      I4 => \q[121]_i_4_n_0\,
      I5 => \q_reg[121]_1\,
      O => \^q_reg[12]_0\(16)
    );
\q[121]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504000004000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => SrcAE(14),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \SrcBE__0\(14),
      O => \q[121]_i_4_n_0\
    );
\q[122]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[122]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[122]\,
      I3 => \q_reg[122]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[122]_i_5_n_0\,
      O => \^q_reg[12]_0\(17)
    );
\q[122]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[123]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[122]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[122]_i_7_n_0\,
      O => \q[122]_i_2_n_0\
    );
\q[122]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(15),
      I5 => \SrcBE__0\(15),
      O => \q[122]_i_5_n_0\
    );
\q[122]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(15),
      I4 => SrcAE(15),
      O => \q[122]_i_7_n_0\
    );
\q[123]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[123]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[123]\,
      I3 => \q_reg[123]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[123]_i_5_n_0\,
      O => \^q_reg[12]_0\(18)
    );
\q[123]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[124]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[123]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[123]_i_7_n_0\,
      O => \q[123]_i_2_n_0\
    );
\q[123]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(16),
      I5 => \SrcBE__0\(16),
      O => \q[123]_i_5_n_0\
    );
\q[123]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(16),
      I4 => SrcAE(16),
      O => \q[123]_i_7_n_0\
    );
\q[124]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[124]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[124]\,
      I3 => \q_reg[124]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[124]_i_5_n_0\,
      O => \^q_reg[12]_0\(19)
    );
\q[124]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[125]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[124]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[124]_i_7_n_0\,
      O => \q[124]_i_2_n_0\
    );
\q[124]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(17),
      I5 => \SrcBE__0\(17),
      O => \q[124]_i_5_n_0\
    );
\q[124]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(17),
      I4 => SrcAE(17),
      O => \q[124]_i_7_n_0\
    );
\q[125]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[125]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[125]\,
      I3 => \q_reg[125]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[125]_i_5_n_0\,
      O => \^q_reg[12]_0\(20)
    );
\q[125]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[126]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[125]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[125]_i_7_n_0\,
      O => \q[125]_i_2_n_0\
    );
\q[125]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(18),
      I5 => \SrcBE__0\(18),
      O => \q[125]_i_5_n_0\
    );
\q[125]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(18),
      I4 => SrcAE(18),
      O => \q[125]_i_7_n_0\
    );
\q[126]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[126]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[126]\,
      I3 => \q_reg[126]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[126]_i_5_n_0\,
      O => \^q_reg[12]_0\(21)
    );
\q[126]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[127]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[126]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[126]_i_7_n_0\,
      O => \q[126]_i_2_n_0\
    );
\q[126]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(19),
      I5 => \SrcBE__0\(19),
      O => \q[126]_i_5_n_0\
    );
\q[126]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(19),
      I4 => SrcAE(19),
      O => \q[126]_i_7_n_0\
    );
\q[127]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[127]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[127]\,
      I3 => \q_reg[127]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[127]_i_5_n_0\,
      O => \^q_reg[12]_0\(22)
    );
\q[127]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[128]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[127]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[127]_i_7_n_0\,
      O => \q[127]_i_2_n_0\
    );
\q[127]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(20),
      I5 => \SrcBE__0\(20),
      O => \q[127]_i_5_n_0\
    );
\q[127]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(20),
      I4 => SrcAE(20),
      O => \q[127]_i_7_n_0\
    );
\q[128]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[128]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[128]\,
      I3 => \q_reg[128]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[128]_i_5_n_0\,
      O => \^q_reg[12]_0\(23)
    );
\q[128]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[129]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[128]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[128]_i_7_n_0\,
      O => \q[128]_i_2_n_0\
    );
\q[128]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(21),
      I5 => \SrcBE__0\(21),
      O => \q[128]_i_5_n_0\
    );
\q[128]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(21),
      I4 => SrcAE(21),
      O => \q[128]_i_7_n_0\
    );
\q[129]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[129]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[129]\,
      I3 => \q_reg[129]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[129]_i_5_n_0\,
      O => \^q_reg[12]_0\(24)
    );
\q[129]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[130]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[129]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[129]_i_7_n_0\,
      O => \q[129]_i_2_n_0\
    );
\q[129]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(22),
      I5 => \SrcBE__0\(22),
      O => \q[129]_i_5_n_0\
    );
\q[129]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(22),
      I4 => SrcAE(22),
      O => \q[129]_i_7_n_0\
    );
\q[130]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[130]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[130]\,
      I3 => \q_reg[130]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[130]_i_5_n_0\,
      O => \^q_reg[12]_0\(25)
    );
\q[130]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[131]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[130]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[130]_i_7_n_0\,
      O => \q[130]_i_2_n_0\
    );
\q[130]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(23),
      I5 => \SrcBE__0\(23),
      O => \q[130]_i_5_n_0\
    );
\q[130]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(23),
      I4 => SrcAE(23),
      O => \q[130]_i_7_n_0\
    );
\q[131]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[131]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[131]\,
      I3 => \q_reg[131]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[131]_i_5_n_0\,
      O => \^q_reg[12]_0\(26)
    );
\q[131]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[132]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[131]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[131]_i_7_n_0\,
      O => \q[131]_i_2_n_0\
    );
\q[131]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(24),
      I5 => \SrcBE__0\(24),
      O => \q[131]_i_5_n_0\
    );
\q[131]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(24),
      I4 => SrcAE(24),
      O => \q[131]_i_7_n_0\
    );
\q[132]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[132]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[132]\,
      I3 => \q_reg[132]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[132]_i_5_n_0\,
      O => \^q_reg[12]_0\(27)
    );
\q[132]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[133]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[132]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[132]_i_7_n_0\,
      O => \q[132]_i_2_n_0\
    );
\q[132]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(25),
      I5 => \SrcBE__0\(25),
      O => \q[132]_i_5_n_0\
    );
\q[132]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(25),
      I4 => SrcAE(25),
      O => \q[132]_i_7_n_0\
    );
\q[133]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[133]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[133]\,
      I3 => \q_reg[133]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[133]_i_5_n_0\,
      O => \^q_reg[12]_0\(28)
    );
\q[133]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[134]_1\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[133]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[133]_i_7_n_0\,
      O => \q[133]_i_2_n_0\
    );
\q[133]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(26),
      I5 => \SrcBE__0\(26),
      O => \q[133]_i_5_n_0\
    );
\q[133]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(26),
      I4 => SrcAE(26),
      O => \q[133]_i_7_n_0\
    );
\q[134]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[134]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[134]\,
      I3 => \q_reg[134]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[134]_i_5_n_0\,
      O => \^q_reg[12]_0\(29)
    );
\q[134]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \q_reg[135]_2\,
      I1 => \^q_reg[11]_0\,
      I2 => \q_reg[134]_1\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[134]_i_7_n_0\,
      O => \q[134]_i_2_n_0\
    );
\q[134]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(27),
      I5 => \SrcBE__0\(27),
      O => \q[134]_i_5_n_0\
    );
\q[134]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(27),
      I4 => SrcAE(27),
      O => \q[134]_i_7_n_0\
    );
\q[135]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[135]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[135]\,
      I3 => \q_reg[135]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[135]_i_5_n_0\,
      O => \^q_reg[12]_0\(30)
    );
\q[135]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q_reg[11]_0\,
      I1 => \q_reg[135]_1\,
      I2 => \q_reg[135]_2\,
      I3 => \^q_reg[11]_1\,
      I4 => \q[135]_i_7_n_0\,
      O => \q[135]_i_2_n_0\
    );
\q[135]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(28),
      I5 => \SrcBE__0\(28),
      O => \q[135]_i_5_n_0\
    );
\q[135]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(28),
      I4 => SrcAE(28),
      O => \q[135]_i_7_n_0\
    );
\q[136]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAAAAA"
    )
        port map (
      I0 => \q[136]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[136]\,
      I3 => \q_reg[136]_0\,
      I4 => \q[137]_i_2_n_0\,
      I5 => \q[136]_i_5_n_0\,
      O => \^q_reg[12]_0\(31)
    );
\q[136]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q_reg[11]_1\,
      I1 => \q_reg[135]_1\,
      I2 => \^q_reg[11]_0\,
      I3 => SrcAE(30),
      I4 => \q[136]_i_9_n_0\,
      O => \q[136]_i_2_n_0\
    );
\q[136]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000800080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => SrcAE(29),
      I5 => \SrcBE__0\(29),
      O => \q[136]_i_5_n_0\
    );
\q[136]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044404"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => WriteDataE(0),
      I3 => \^q_reg[12]_0\(0),
      I4 => \q[107]_i_2\(0),
      O => \^q_reg[11]_1\
    );
\q[136]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => WriteDataE(0),
      I3 => \^q_reg[12]_0\(0),
      I4 => \q[107]_i_2\(0),
      O => \^q_reg[11]_0\
    );
\q[136]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(29),
      I4 => SrcAE(29),
      O => \q[136]_i_9_n_0\
    );
\q[137]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q[137]_i_2_n_0\,
      I1 => \q[137]_i_3_n_0\,
      I2 => \q_reg[137]\,
      I3 => \q_reg[137]_0\,
      I4 => \q[137]_i_6_n_0\,
      I5 => \q[137]_i_7_n_0\,
      O => \^q_reg[12]_0\(32)
    );
\q[137]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \q[137]_i_2_n_0\
    );
\q[137]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \q[137]_i_3_n_0\
    );
\q[137]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \SrcBE__0\(30),
      I4 => SrcAE(30),
      O => \q[137]_i_6_n_0\
    );
\q[137]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003020FF000000"
    )
        port map (
      I0 => \SrcBE__0\(30),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => SrcAE(30),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => \q[137]_i_7_n_0\
    );
\q[153]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => JumpE,
      I2 => \q_reg_n_0_[15]\,
      I3 => \BranchCondition__9\,
      O => FlushE
    );
\q[178]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \q_reg[104]\,
      I1 => JumpE,
      I2 => \q_reg_n_0_[15]\,
      I3 => \BranchCondition__9\,
      O => \q_reg[16]_0\
    );
\q[178]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01101010"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \^q_reg[9]_0\,
      I2 => \^q_reg[7]_0\,
      I3 => \q[178]_i_5_n_0\,
      I4 => \q[31]_i_15_n_0\,
      I5 => \q[31]_i_12_n_0\,
      O => \BranchCondition__9\
    );
\q[178]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \q[178]_i_6_n_0\,
      I1 => \q[31]_i_22_n_0\,
      I2 => \^q_reg[12]_0\(1),
      I3 => \^q_reg[12]_0\(2),
      I4 => \q[31]_i_16_n_0\,
      O => \q[178]_i_5_n_0\
    );
\q[178]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[12]_0\(4),
      I1 => \^q_reg[12]_0\(3),
      I2 => \^q_reg[12]_0\(6),
      I3 => \^q_reg[12]_0\(5),
      O => \q[178]_i_6_n_0\
    );
\q[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[15]_0\,
      I1 => \q_reg[2]_0\(0),
      O => D(0)
    );
\q[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[9]_0\,
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \q[31]_i_15_n_0\,
      I1 => \q[31]_i_16_n_0\,
      I2 => \^q_reg[12]_0\(2),
      I3 => \^q_reg[12]_0\(1),
      I4 => \q[31]_i_17_n_0\,
      O => ZeroE
    );
\q[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222288828288"
    )
        port map (
      I0 => \^q_reg[9]_0\,
      I1 => \^q_reg[7]_0\,
      I2 => \^q_reg[8]_0\,
      I3 => \^ovfe\,
      I4 => \^q_reg[12]_0\(32),
      I5 => \q[31]_i_19_n_0\,
      O => \q[31]_i_12_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in_0(6),
      I1 => p_0_in_0(5),
      I2 => p_0_in_0(4),
      I3 => p_0_in_0(3),
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[31]_i_20_n_0\,
      I1 => \^q_reg[12]_0\(18),
      I2 => \^q_reg[12]_0\(17),
      I3 => \^q_reg[12]_0\(20),
      I4 => \^q_reg[12]_0\(19),
      I5 => \q[31]_i_21_n_0\,
      O => \q[31]_i_15_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[12]_0\(11),
      I1 => \^q_reg[12]_0\(12),
      I2 => \^q_reg[12]_0\(13),
      I3 => \^q_reg[12]_0\(14),
      I4 => \^q_reg[12]_0\(16),
      I5 => \^q_reg[12]_0\(15),
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q_reg[12]_0\(5),
      I1 => \^q_reg[12]_0\(6),
      I2 => \^q_reg[12]_0\(3),
      I3 => \^q_reg[12]_0\(4),
      I4 => \q[31]_i_22_n_0\,
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000010000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => SrcAE(30),
      I4 => O(0),
      I5 => \condinvb__0\(0),
      O => \^ovfe\
    );
\q[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q[31]_i_12_0\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q_reg[8]_0\,
      O => \q[31]_i_19_n_0\
    );
\q[31]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[12]_0\(32),
      I1 => \^q_reg[12]_0\(26),
      I2 => \^q_reg[12]_0\(25),
      I3 => \^q_reg[12]_0\(28),
      I4 => \^q_reg[12]_0\(27),
      I5 => \^q_reg[12]_0\(31),
      O => \q[31]_i_20_n_0\
    );
\q[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[12]_0\(21),
      I1 => \^q_reg[12]_0\(22),
      I2 => \^q_reg[12]_0\(23),
      I3 => \^q_reg[12]_0\(24),
      I4 => \^q_reg[12]_0\(30),
      I5 => \^q_reg[12]_0\(29),
      O => \q[31]_i_21_n_0\
    );
\q[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[12]_0\(10),
      I1 => \^q_reg[12]_0\(9),
      I2 => \^q_reg[12]_0\(8),
      I3 => \^q_reg[12]_0\(7),
      O => \q[31]_i_22_n_0\
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
      I4 => \q_reg_n_0_[15]\,
      I5 => JumpE,
      O => \^q_reg[15]_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \q[31]_i_13_n_0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      O => \PCSrc1__6\
    );
\q[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \^q_reg[9]_0\,
      O => \q[31]_i_9_n_0\
    );
\q[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(0),
      I1 => \^q_reg[15]_0\,
      O => D(1)
    );
\q[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(1),
      I1 => \^q_reg[15]_0\,
      O => D(2)
    );
\q[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(2),
      I1 => \^q_reg[15]_0\,
      O => D(3)
    );
\q[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(3),
      I1 => \^q_reg[15]_0\,
      O => D(4)
    );
\q[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(4),
      I1 => \^q_reg[15]_0\,
      O => D(5)
    );
\q[69]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(5),
      I1 => \^q_reg[15]_0\,
      O => D(6)
    );
\q[70]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(6),
      I1 => \^q_reg[15]_0\,
      O => D(7)
    );
\q[71]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(7),
      I1 => \^q_reg[15]_0\,
      O => D(8)
    );
\q[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(8),
      I1 => \^q_reg[15]_0\,
      O => D(9)
    );
\q[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(9),
      I1 => \^q_reg[15]_0\,
      O => D(10)
    );
\q[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(10),
      I1 => \^q_reg[15]_0\,
      O => D(11)
    );
\q[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(11),
      I1 => \^q_reg[15]_0\,
      O => D(12)
    );
\q[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(12),
      I1 => \^q_reg[15]_0\,
      O => D(13)
    );
\q[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(13),
      I1 => \^q_reg[15]_0\,
      O => D(14)
    );
\q[78]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(14),
      I1 => \^q_reg[15]_0\,
      O => D(15)
    );
\q[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(15),
      I1 => \^q_reg[15]_0\,
      O => D(16)
    );
\q[80]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(16),
      I1 => \^q_reg[15]_0\,
      O => D(17)
    );
\q[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(17),
      I1 => \^q_reg[15]_0\,
      O => D(18)
    );
\q[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(18),
      I1 => \^q_reg[15]_0\,
      O => D(19)
    );
\q[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(19),
      I1 => \^q_reg[15]_0\,
      O => D(20)
    );
\q[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(20),
      I1 => \^q_reg[15]_0\,
      O => D(21)
    );
\q[85]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(21),
      I1 => \^q_reg[15]_0\,
      O => D(22)
    );
\q[86]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(22),
      I1 => \^q_reg[15]_0\,
      O => D(23)
    );
\q[87]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(23),
      I1 => \^q_reg[15]_0\,
      O => D(24)
    );
\q[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(24),
      I1 => \^q_reg[15]_0\,
      O => D(25)
    );
\q[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(25),
      I1 => \^q_reg[15]_0\,
      O => D(26)
    );
\q[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(26),
      I1 => \^q_reg[15]_0\,
      O => D(27)
    );
\q[91]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(27),
      I1 => \^q_reg[15]_0\,
      O => D(28)
    );
\q[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(28),
      I1 => \^q_reg[15]_0\,
      O => D(29)
    );
\q[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(29),
      I1 => \^q_reg[15]_0\,
      O => D(30)
    );
\q[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(30),
      I1 => \^q_reg[15]_0\,
      O => D(31)
    );
\q[95]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(31),
      I1 => \^q_reg[15]_0\,
      O => D(32)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(0),
      Q => p_0_in_0(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(10),
      Q => \^q_reg[12]_0\(0)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(11),
      Q => \^q\(0)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(12),
      Q => \^q\(1)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(13),
      Q => \^q\(2)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(14),
      Q => \^q\(3)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(16),
      Q => JumpE
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(17),
      Q => \^q\(4)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(18),
      Q => \^q\(5)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(19),
      Q => \^q\(6)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(1),
      Q => p_0_in_0(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(20),
      Q => \^q\(7)
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
      Q => \^q_reg[7]_0\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(8),
      Q => \^q_reg[8]_0\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(9),
      Q => \^q_reg[9]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_floprc__parameterized0\ is
  port (
    \q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[10]_0\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[36]_0\ : out STD_LOGIC;
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[38]_0\ : out STD_LOGIC;
    \q_reg[178]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[162]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[39]_0\ : out STD_LOGIC;
    \q_reg[154]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[40]_0\ : out STD_LOGIC;
    \q_reg[170]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[11]_2\ : out STD_LOGIC;
    \q_reg[11]_3\ : out STD_LOGIC;
    \q_reg[11]_4\ : out STD_LOGIC;
    \q_reg[11]_5\ : out STD_LOGIC;
    \q_reg[11]_6\ : out STD_LOGIC;
    \q_reg[11]_7\ : out STD_LOGIC;
    \q_reg[11]_8\ : out STD_LOGIC;
    \q_reg[11]_9\ : out STD_LOGIC;
    \q_reg[11]_10\ : out STD_LOGIC;
    \q_reg[11]_11\ : out STD_LOGIC;
    \q_reg[11]_12\ : out STD_LOGIC;
    \q_reg[158]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]_13\ : out STD_LOGIC;
    \q_reg[11]_14\ : out STD_LOGIC;
    \q_reg[11]_15\ : out STD_LOGIC;
    \q_reg[11]_16\ : out STD_LOGIC;
    \q_reg[11]_17\ : out STD_LOGIC;
    \q_reg[11]_18\ : out STD_LOGIC;
    \q_reg[11]_19\ : out STD_LOGIC;
    \q_reg[11]_20\ : out STD_LOGIC;
    \q_reg[37]_1\ : out STD_LOGIC;
    \q_reg[37]_2\ : out STD_LOGIC;
    \q_reg[37]_3\ : out STD_LOGIC;
    \q_reg[37]_4\ : out STD_LOGIC;
    \q_reg[11]_21\ : out STD_LOGIC;
    \q_reg[11]_22\ : out STD_LOGIC;
    \q_reg[11]_23\ : out STD_LOGIC;
    \q_reg[11]_24\ : out STD_LOGIC;
    \q_reg[11]_25\ : out STD_LOGIC;
    \q_reg[11]_26\ : out STD_LOGIC;
    \q_reg[11]_27\ : out STD_LOGIC;
    \q_reg[11]_28\ : out STD_LOGIC;
    \q_reg[11]_29\ : out STD_LOGIC;
    \q_reg[11]_30\ : out STD_LOGIC;
    \q_reg[11]_31\ : out STD_LOGIC;
    \q_reg[11]_32\ : out STD_LOGIC;
    \q_reg[37]_5\ : out STD_LOGIC;
    \q_reg[11]_33\ : out STD_LOGIC;
    \q_reg[11]_34\ : out STD_LOGIC;
    \q_reg[11]_35\ : out STD_LOGIC;
    \q_reg[11]_36\ : out STD_LOGIC;
    \q_reg[11]_37\ : out STD_LOGIC;
    \q_reg[11]_38\ : out STD_LOGIC;
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[50]_0\ : out STD_LOGIC;
    \q_reg[50]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[51]_0\ : out STD_LOGIC;
    \q_reg[174]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[66]_0\ : out STD_LOGIC;
    \q_reg[11]_39\ : out STD_LOGIC;
    \q_reg[37]_6\ : out STD_LOGIC;
    \q_reg[37]_7\ : out STD_LOGIC;
    \q_reg[37]_8\ : out STD_LOGIC;
    \q_reg[37]_9\ : out STD_LOGIC;
    \q_reg[37]_10\ : out STD_LOGIC;
    \q_reg[37]_11\ : out STD_LOGIC;
    \q_reg[37]_12\ : out STD_LOGIC;
    \q_reg[66]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[67]_0\ : out STD_LOGIC;
    \q_reg[13]_2\ : out STD_LOGIC;
    \q_reg[42]_0\ : out STD_LOGIC;
    \q_reg[42]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[43]_0\ : out STD_LOGIC;
    \q_reg[58]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[58]_1\ : out STD_LOGIC;
    \q_reg[59]_0\ : out STD_LOGIC;
    \q_reg[13]_3\ : out STD_LOGIC;
    \q_reg[58]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[166]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[13]_4\ : out STD_LOGIC;
    \q_reg[46]_0\ : out STD_LOGIC;
    \q_reg[47]_0\ : out STD_LOGIC;
    \q_reg[13]_5\ : out STD_LOGIC;
    \q_reg[62]_0\ : out STD_LOGIC;
    \q_reg[63]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[13]_6\ : out STD_LOGIC;
    \q_reg[54]_0\ : out STD_LOGIC;
    \q_reg[55]_0\ : out STD_LOGIC;
    \q_reg[13]_7\ : out STD_LOGIC;
    \q_reg[13]_8\ : out STD_LOGIC;
    \q_reg[44]_0\ : out STD_LOGIC;
    \q_reg[45]_0\ : out STD_LOGIC;
    \q_reg[13]_9\ : out STD_LOGIC;
    \q_reg[60]_0\ : out STD_LOGIC;
    \q_reg[61]_0\ : out STD_LOGIC;
    \q_reg[178]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[13]_10\ : out STD_LOGIC;
    \q_reg[52]_0\ : out STD_LOGIC;
    \q_reg[53]_0\ : out STD_LOGIC;
    \q_reg[13]_11\ : out STD_LOGIC;
    \q_reg[13]_12\ : out STD_LOGIC;
    \q_reg[48]_0\ : out STD_LOGIC;
    \q_reg[49]_0\ : out STD_LOGIC;
    \q_reg[13]_13\ : out STD_LOGIC;
    \q_reg[64]_0\ : out STD_LOGIC;
    \q_reg[65]_0\ : out STD_LOGIC;
    \q_reg[13]_14\ : out STD_LOGIC;
    \q_reg[41]_0\ : out STD_LOGIC;
    \q_reg[56]_0\ : out STD_LOGIC;
    \q_reg[57]_0\ : out STD_LOGIC;
    \q_reg[13]_15\ : out STD_LOGIC;
    \q_reg[37]_13\ : out STD_LOGIC;
    \q_reg[37]_14\ : out STD_LOGIC;
    \q_reg[13]_16\ : out STD_LOGIC;
    \q_reg[37]_15\ : out STD_LOGIC;
    \q_reg[37]_16\ : out STD_LOGIC;
    \q_reg[37]_17\ : out STD_LOGIC;
    \q_reg[37]_18\ : out STD_LOGIC;
    \q_reg[37]_19\ : out STD_LOGIC;
    \q_reg[13]_17\ : out STD_LOGIC;
    \q_reg[13]_18\ : out STD_LOGIC;
    \q_reg[13]_19\ : out STD_LOGIC;
    \q_reg[13]_20\ : out STD_LOGIC;
    \q_reg[37]_20\ : out STD_LOGIC;
    \q_reg[13]_21\ : out STD_LOGIC;
    WriteDataE : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[84]_0\ : out STD_LOGIC_VECTOR ( 76 downto 0 );
    \q_reg[67]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[78]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \condinvb__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[67]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[18]_0\ : out STD_LOGIC;
    \q_reg[137]_i_12_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[39]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[43]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[47]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[51]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[55]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[59]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[63]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[39]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[43]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[47]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[51]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[55]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[59]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[63]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[37]_21\ : out STD_LOGIC;
    \q_reg[38]_1\ : out STD_LOGIC;
    \q_reg[13]_22\ : out STD_LOGIC;
    \q_reg[51]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[13]_23\ : out STD_LOGIC;
    \q_reg[13]_24\ : out STD_LOGIC;
    \q_reg[13]_25\ : out STD_LOGIC;
    \q_reg[67]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[13]_26\ : out STD_LOGIC;
    \q_reg[13]_27\ : out STD_LOGIC;
    \q_reg[38]_2\ : out STD_LOGIC;
    \q_reg[13]_28\ : out STD_LOGIC;
    \q_reg[13]_29\ : out STD_LOGIC;
    \q_reg[13]_30\ : out STD_LOGIC;
    \q_reg[13]_31\ : out STD_LOGIC;
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCPlus4F : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \PCSrc1__6\ : in STD_LOGIC;
    \q_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[95]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    \q_reg[107]_2\ : in STD_LOGIC;
    ResultW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 36 downto 0 );
    ovfE : in STD_LOGIC;
    \q[120]_i_11_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ForwardAE11_out : in STD_LOGIC;
    \q[105]_i_3_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RegWriteW : in STD_LOGIC;
    \jalrTarget_carry__2_i_2_0\ : in STD_LOGIC;
    \jalrTarget_carry__2_i_2_1\ : in STD_LOGIC;
    \q_reg[78]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \jalrTarget_carry__6_i_8_0\ : in STD_LOGIC;
    \q_reg[105]_0\ : in STD_LOGIC;
    \q_reg[78]_2\ : in STD_LOGIC;
    \q[31]_i_6_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \q[106]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[106]_i_3_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[110]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[114]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[118]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[122]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[126]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[130]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q[134]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCReady : in STD_LOGIC;
    \q_reg[178]_2\ : in STD_LOGIC_VECTOR ( 173 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_floprc__parameterized0\ : entity is "floprc";
end \design_1_top_0_0_floprc__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_floprc__parameterized0\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ForwardAE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ForwardBE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal PCE : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal RD1E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RD2E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs2E : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^writedatae\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \hu/ForwardBE10_out\ : STD_LOGIC;
  signal \jalrTarget_carry__6_i_10_n_0\ : STD_LOGIC;
  signal \jalrTarget_carry__6_i_9_n_0\ : STD_LOGIC;
  signal jalrTarget_carry_i_10_n_0 : STD_LOGIC;
  signal jalrTarget_carry_i_14_n_0 : STD_LOGIC;
  signal jalrTarget_carry_i_9_n_0 : STD_LOGIC;
  signal \q[105]_i_2_n_0\ : STD_LOGIC;
  signal \q[105]_i_3_n_0\ : STD_LOGIC;
  signal \q[105]_i_5_n_0\ : STD_LOGIC;
  signal \q[105]_i_6_n_0\ : STD_LOGIC;
  signal \q[105]_i_8_n_0\ : STD_LOGIC;
  signal \q[106]_i_10_n_0\ : STD_LOGIC;
  signal \q[106]_i_6_n_0\ : STD_LOGIC;
  signal \q[106]_i_8_n_0\ : STD_LOGIC;
  signal \q[106]_i_9_n_0\ : STD_LOGIC;
  signal \q[107]_i_10_n_0\ : STD_LOGIC;
  signal \q[107]_i_11_n_0\ : STD_LOGIC;
  signal \q[107]_i_7_n_0\ : STD_LOGIC;
  signal \q[107]_i_8_n_0\ : STD_LOGIC;
  signal \q[107]_i_9_n_0\ : STD_LOGIC;
  signal \q[108]_i_10_n_0\ : STD_LOGIC;
  signal \q[108]_i_11_n_0\ : STD_LOGIC;
  signal \q[108]_i_6_n_0\ : STD_LOGIC;
  signal \q[108]_i_7_n_0\ : STD_LOGIC;
  signal \q[108]_i_8_n_0\ : STD_LOGIC;
  signal \q[108]_i_9_n_0\ : STD_LOGIC;
  signal \q[109]_i_10_n_0\ : STD_LOGIC;
  signal \q[109]_i_11_n_0\ : STD_LOGIC;
  signal \q[109]_i_6_n_0\ : STD_LOGIC;
  signal \q[109]_i_7_n_0\ : STD_LOGIC;
  signal \q[109]_i_9_n_0\ : STD_LOGIC;
  signal \q[110]_i_10_n_0\ : STD_LOGIC;
  signal \q[110]_i_8_n_0\ : STD_LOGIC;
  signal \q[110]_i_9_n_0\ : STD_LOGIC;
  signal \q[111]_i_10_n_0\ : STD_LOGIC;
  signal \q[111]_i_8_n_0\ : STD_LOGIC;
  signal \q[111]_i_9_n_0\ : STD_LOGIC;
  signal \q[112]_i_10_n_0\ : STD_LOGIC;
  signal \q[112]_i_8_n_0\ : STD_LOGIC;
  signal \q[112]_i_9_n_0\ : STD_LOGIC;
  signal \q[113]_i_11_n_0\ : STD_LOGIC;
  signal \q[113]_i_12_n_0\ : STD_LOGIC;
  signal \q[113]_i_8_n_0\ : STD_LOGIC;
  signal \q[113]_i_9_n_0\ : STD_LOGIC;
  signal \q[114]_i_10_n_0\ : STD_LOGIC;
  signal \q[114]_i_11_n_0\ : STD_LOGIC;
  signal \q[114]_i_6_n_0\ : STD_LOGIC;
  signal \q[114]_i_7_n_0\ : STD_LOGIC;
  signal \q[114]_i_9_n_0\ : STD_LOGIC;
  signal \q[115]_i_10_n_0\ : STD_LOGIC;
  signal \q[115]_i_6_n_0\ : STD_LOGIC;
  signal \q[115]_i_7_n_0\ : STD_LOGIC;
  signal \q[115]_i_8_n_0\ : STD_LOGIC;
  signal \q[115]_i_9_n_0\ : STD_LOGIC;
  signal \q[116]_i_10_n_0\ : STD_LOGIC;
  signal \q[116]_i_6_n_0\ : STD_LOGIC;
  signal \q[116]_i_7_n_0\ : STD_LOGIC;
  signal \q[116]_i_8_n_0\ : STD_LOGIC;
  signal \q[116]_i_9_n_0\ : STD_LOGIC;
  signal \q[117]_i_10_n_0\ : STD_LOGIC;
  signal \q[117]_i_11_n_0\ : STD_LOGIC;
  signal \q[117]_i_16_n_0\ : STD_LOGIC;
  signal \q[117]_i_6_n_0\ : STD_LOGIC;
  signal \q[117]_i_7_n_0\ : STD_LOGIC;
  signal \q[117]_i_9_n_0\ : STD_LOGIC;
  signal \q[118]_i_10_n_0\ : STD_LOGIC;
  signal \q[118]_i_11_n_0\ : STD_LOGIC;
  signal \q[118]_i_6_n_0\ : STD_LOGIC;
  signal \q[118]_i_7_n_0\ : STD_LOGIC;
  signal \q[118]_i_8_n_0\ : STD_LOGIC;
  signal \q[118]_i_9_n_0\ : STD_LOGIC;
  signal \q[119]_i_10_n_0\ : STD_LOGIC;
  signal \q[119]_i_11_n_0\ : STD_LOGIC;
  signal \q[119]_i_6_n_0\ : STD_LOGIC;
  signal \q[119]_i_7_n_0\ : STD_LOGIC;
  signal \q[119]_i_8_n_0\ : STD_LOGIC;
  signal \q[119]_i_9_n_0\ : STD_LOGIC;
  signal \q[120]_i_10_n_0\ : STD_LOGIC;
  signal \q[120]_i_11_n_0\ : STD_LOGIC;
  signal \q[120]_i_6_n_0\ : STD_LOGIC;
  signal \q[120]_i_7_n_0\ : STD_LOGIC;
  signal \q[120]_i_8_n_0\ : STD_LOGIC;
  signal \q[120]_i_9_n_0\ : STD_LOGIC;
  signal \q[121]_i_10_n_0\ : STD_LOGIC;
  signal \q[121]_i_11_n_0\ : STD_LOGIC;
  signal \q[121]_i_12_n_0\ : STD_LOGIC;
  signal \q[121]_i_13_n_0\ : STD_LOGIC;
  signal \q[121]_i_14_n_0\ : STD_LOGIC;
  signal \q[121]_i_15_n_0\ : STD_LOGIC;
  signal \q[121]_i_16_n_0\ : STD_LOGIC;
  signal \q[121]_i_21_n_0\ : STD_LOGIC;
  signal \q[121]_i_22_n_0\ : STD_LOGIC;
  signal \q[121]_i_6_n_0\ : STD_LOGIC;
  signal \q[121]_i_7_n_0\ : STD_LOGIC;
  signal \q[121]_i_9_n_0\ : STD_LOGIC;
  signal \q[122]_i_10_n_0\ : STD_LOGIC;
  signal \q[122]_i_11_n_0\ : STD_LOGIC;
  signal \q[122]_i_12_n_0\ : STD_LOGIC;
  signal \q[122]_i_13_n_0\ : STD_LOGIC;
  signal \q[122]_i_14_n_0\ : STD_LOGIC;
  signal \q[122]_i_15_n_0\ : STD_LOGIC;
  signal \q[122]_i_16_n_0\ : STD_LOGIC;
  signal \q[122]_i_8_n_0\ : STD_LOGIC;
  signal \q[122]_i_9_n_0\ : STD_LOGIC;
  signal \q[123]_i_10_n_0\ : STD_LOGIC;
  signal \q[123]_i_11_n_0\ : STD_LOGIC;
  signal \q[123]_i_12_n_0\ : STD_LOGIC;
  signal \q[123]_i_8_n_0\ : STD_LOGIC;
  signal \q[123]_i_9_n_0\ : STD_LOGIC;
  signal \q[124]_i_10_n_0\ : STD_LOGIC;
  signal \q[124]_i_11_n_0\ : STD_LOGIC;
  signal \q[124]_i_12_n_0\ : STD_LOGIC;
  signal \q[124]_i_13_n_0\ : STD_LOGIC;
  signal \q[124]_i_14_n_0\ : STD_LOGIC;
  signal \q[124]_i_8_n_0\ : STD_LOGIC;
  signal \q[124]_i_9_n_0\ : STD_LOGIC;
  signal \q[125]_i_11_n_0\ : STD_LOGIC;
  signal \q[125]_i_12_n_0\ : STD_LOGIC;
  signal \q[125]_i_13_n_0\ : STD_LOGIC;
  signal \q[125]_i_14_n_0\ : STD_LOGIC;
  signal \q[125]_i_15_n_0\ : STD_LOGIC;
  signal \q[125]_i_20_n_0\ : STD_LOGIC;
  signal \q[125]_i_8_n_0\ : STD_LOGIC;
  signal \q[125]_i_9_n_0\ : STD_LOGIC;
  signal \q[126]_i_10_n_0\ : STD_LOGIC;
  signal \q[126]_i_11_n_0\ : STD_LOGIC;
  signal \q[126]_i_12_n_0\ : STD_LOGIC;
  signal \q[126]_i_13_n_0\ : STD_LOGIC;
  signal \q[126]_i_8_n_0\ : STD_LOGIC;
  signal \q[126]_i_9_n_0\ : STD_LOGIC;
  signal \q[127]_i_10_n_0\ : STD_LOGIC;
  signal \q[127]_i_11_n_0\ : STD_LOGIC;
  signal \q[127]_i_12_n_0\ : STD_LOGIC;
  signal \q[127]_i_13_n_0\ : STD_LOGIC;
  signal \q[127]_i_8_n_0\ : STD_LOGIC;
  signal \q[127]_i_9_n_0\ : STD_LOGIC;
  signal \q[128]_i_10_n_0\ : STD_LOGIC;
  signal \q[128]_i_11_n_0\ : STD_LOGIC;
  signal \q[128]_i_12_n_0\ : STD_LOGIC;
  signal \q[128]_i_13_n_0\ : STD_LOGIC;
  signal \q[128]_i_14_n_0\ : STD_LOGIC;
  signal \q[128]_i_8_n_0\ : STD_LOGIC;
  signal \q[128]_i_9_n_0\ : STD_LOGIC;
  signal \q[129]_i_11_n_0\ : STD_LOGIC;
  signal \q[129]_i_12_n_0\ : STD_LOGIC;
  signal \q[129]_i_13_n_0\ : STD_LOGIC;
  signal \q[129]_i_8_n_0\ : STD_LOGIC;
  signal \q[129]_i_9_n_0\ : STD_LOGIC;
  signal \q[130]_i_10_n_0\ : STD_LOGIC;
  signal \q[130]_i_11_n_0\ : STD_LOGIC;
  signal \q[130]_i_12_n_0\ : STD_LOGIC;
  signal \q[130]_i_8_n_0\ : STD_LOGIC;
  signal \q[130]_i_9_n_0\ : STD_LOGIC;
  signal \q[131]_i_10_n_0\ : STD_LOGIC;
  signal \q[131]_i_11_n_0\ : STD_LOGIC;
  signal \q[131]_i_12_n_0\ : STD_LOGIC;
  signal \q[131]_i_8_n_0\ : STD_LOGIC;
  signal \q[131]_i_9_n_0\ : STD_LOGIC;
  signal \q[132]_i_10_n_0\ : STD_LOGIC;
  signal \q[132]_i_11_n_0\ : STD_LOGIC;
  signal \q[132]_i_8_n_0\ : STD_LOGIC;
  signal \q[132]_i_9_n_0\ : STD_LOGIC;
  signal \q[133]_i_11_n_0\ : STD_LOGIC;
  signal \q[133]_i_12_n_0\ : STD_LOGIC;
  signal \q[133]_i_13_n_0\ : STD_LOGIC;
  signal \q[133]_i_14_n_0\ : STD_LOGIC;
  signal \q[133]_i_8_n_0\ : STD_LOGIC;
  signal \q[133]_i_9_n_0\ : STD_LOGIC;
  signal \q[134]_i_10_n_0\ : STD_LOGIC;
  signal \q[134]_i_11_n_0\ : STD_LOGIC;
  signal \q[134]_i_12_n_0\ : STD_LOGIC;
  signal \q[134]_i_8_n_0\ : STD_LOGIC;
  signal \q[134]_i_9_n_0\ : STD_LOGIC;
  signal \q[135]_i_10_n_0\ : STD_LOGIC;
  signal \q[135]_i_11_n_0\ : STD_LOGIC;
  signal \q[135]_i_8_n_0\ : STD_LOGIC;
  signal \q[135]_i_9_n_0\ : STD_LOGIC;
  signal \q[136]_i_10_n_0\ : STD_LOGIC;
  signal \q[136]_i_11_n_0\ : STD_LOGIC;
  signal \q[136]_i_12_n_0\ : STD_LOGIC;
  signal \q[136]_i_13_n_0\ : STD_LOGIC;
  signal \q[136]_i_14_n_0\ : STD_LOGIC;
  signal \q[136]_i_15_n_0\ : STD_LOGIC;
  signal \q[136]_i_16_n_0\ : STD_LOGIC;
  signal \q[137]_i_10_n_0\ : STD_LOGIC;
  signal \q[137]_i_11_n_0\ : STD_LOGIC;
  signal \q[137]_i_13_n_0\ : STD_LOGIC;
  signal \q[137]_i_14_n_0\ : STD_LOGIC;
  signal \q[137]_i_15_n_0\ : STD_LOGIC;
  signal \q[137]_i_16_n_0\ : STD_LOGIC;
  signal \q[137]_i_17_n_0\ : STD_LOGIC;
  signal \q[137]_i_18_n_0\ : STD_LOGIC;
  signal \q[137]_i_19_n_0\ : STD_LOGIC;
  signal \q[137]_i_20_n_0\ : STD_LOGIC;
  signal \q[137]_i_8_n_0\ : STD_LOGIC;
  signal \q[137]_i_9_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_6_n_0\ : STD_LOGIC;
  signal \q[31]_i_7_n_0\ : STD_LOGIC;
  signal \q[31]_i_8_n_0\ : STD_LOGIC;
  signal \q[78]_i_2_n_0\ : STD_LOGIC;
  signal \q[78]_i_4_n_0\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_4\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_5\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_6\ : STD_LOGIC;
  signal \q_reg[109]_i_8_n_7\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_4\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_5\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_6\ : STD_LOGIC;
  signal \q_reg[113]_i_10_n_7\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_4\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_5\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_6\ : STD_LOGIC;
  signal \q_reg[117]_i_8_n_7\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_4\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_5\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_6\ : STD_LOGIC;
  signal \q_reg[121]_i_8_n_7\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_4\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_5\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_6\ : STD_LOGIC;
  signal \q_reg[125]_i_10_n_7\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_4\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_5\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_6\ : STD_LOGIC;
  signal \q_reg[129]_i_10_n_7\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_0\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_1\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_2\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_3\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_4\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_5\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_6\ : STD_LOGIC;
  signal \q_reg[133]_i_10_n_7\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_0\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_1\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_2\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_3\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_5\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_6\ : STD_LOGIC;
  signal \q_reg[137]_i_12_n_7\ : STD_LOGIC;
  signal \^q_reg[154]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[158]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[162]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[166]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[170]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[174]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[178]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_reg[178]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[18]_0\ : STD_LOGIC;
  signal \^q_reg[36]_0\ : STD_LOGIC;
  signal \^q_reg[37]_0\ : STD_LOGIC;
  signal \^q_reg[37]_3\ : STD_LOGIC;
  signal \^q_reg[37]_5\ : STD_LOGIC;
  signal \^q_reg[37]_6\ : STD_LOGIC;
  signal \^q_reg[38]_0\ : STD_LOGIC;
  signal \^q_reg[39]_0\ : STD_LOGIC;
  signal \^q_reg[40]_0\ : STD_LOGIC;
  signal \^q_reg[41]_0\ : STD_LOGIC;
  signal \^q_reg[42]_0\ : STD_LOGIC;
  signal \^q_reg[43]_0\ : STD_LOGIC;
  signal \^q_reg[44]_0\ : STD_LOGIC;
  signal \^q_reg[45]_0\ : STD_LOGIC;
  signal \^q_reg[46]_0\ : STD_LOGIC;
  signal \^q_reg[47]_0\ : STD_LOGIC;
  signal \^q_reg[48]_0\ : STD_LOGIC;
  signal \^q_reg[49]_0\ : STD_LOGIC;
  signal \^q_reg[50]_0\ : STD_LOGIC;
  signal \^q_reg[51]_0\ : STD_LOGIC;
  signal \^q_reg[52]_0\ : STD_LOGIC;
  signal \^q_reg[53]_0\ : STD_LOGIC;
  signal \^q_reg[54]_0\ : STD_LOGIC;
  signal \^q_reg[55]_0\ : STD_LOGIC;
  signal \^q_reg[56]_0\ : STD_LOGIC;
  signal \^q_reg[57]_0\ : STD_LOGIC;
  signal \^q_reg[58]_1\ : STD_LOGIC;
  signal \^q_reg[59]_0\ : STD_LOGIC;
  signal \^q_reg[60]_0\ : STD_LOGIC;
  signal \^q_reg[61]_0\ : STD_LOGIC;
  signal \^q_reg[62]_0\ : STD_LOGIC;
  signal \^q_reg[63]_0\ : STD_LOGIC;
  signal \^q_reg[64]_0\ : STD_LOGIC;
  signal \^q_reg[65]_0\ : STD_LOGIC;
  signal \^q_reg[66]_0\ : STD_LOGIC;
  signal \^q_reg[67]_0\ : STD_LOGIC;
  signal \^q_reg[78]_0\ : STD_LOGIC;
  signal \^q_reg[84]_0\ : STD_LOGIC_VECTOR ( 76 downto 0 );
  signal \NLW_q_reg[31]_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[31]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i__carry__0_i_10\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \i__carry__0_i_11\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \i__carry__0_i_12\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \i__carry__0_i_13\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \i__carry__0_i_14\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \i__carry__0_i_15\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \i__carry__0_i_16\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \i__carry__0_i_9\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \i__carry__1_i_10\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \i__carry__1_i_11\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \i__carry__1_i_12\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \i__carry__1_i_13\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \i__carry__1_i_14\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \i__carry__1_i_15\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \i__carry__1_i_16\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \i__carry__1_i_9\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \i__carry__2_i_10\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \i__carry__2_i_11\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \i__carry__2_i_12\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \i__carry__2_i_13\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \i__carry__2_i_14\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \i__carry__2_i_15\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \i__carry__2_i_16\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \i__carry__2_i_9\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \i__carry_i_12\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \i__carry_i_9\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \q[106]_i_8\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \q[107]_i_11\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \q[107]_i_8\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \q[108]_i_6\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \q[108]_i_8\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \q[108]_i_9\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \q[109]_i_10\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \q[109]_i_9\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \q[114]_i_5\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \q[114]_i_9\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \q[115]_i_5\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \q[115]_i_9\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \q[116]_i_5\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \q[116]_i_9\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \q[117]_i_10\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \q[117]_i_5\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \q[117]_i_7\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \q[118]_i_5\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \q[118]_i_7\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \q[118]_i_9\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \q[119]_i_5\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \q[119]_i_9\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \q[120]_i_5\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \q[120]_i_9\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \q[121]_i_10\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \q[121]_i_11\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \q[121]_i_12\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \q[121]_i_13\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \q[121]_i_14\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \q[121]_i_15\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \q[121]_i_16\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \q[121]_i_22\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \q[121]_i_5\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \q[122]_i_11\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \q[122]_i_12\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \q[122]_i_13\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \q[122]_i_14\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \q[122]_i_15\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \q[122]_i_16\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \q[123]_i_8\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \q[123]_i_9\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \q[124]_i_8\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \q[124]_i_9\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \q[125]_i_20\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \q[125]_i_6\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \q[125]_i_8\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \q[125]_i_9\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \q[126]_i_10\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \q[126]_i_13\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \q[126]_i_8\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \q[127]_i_10\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \q[127]_i_13\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \q[127]_i_8\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \q[128]_i_10\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \q[128]_i_13\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \q[129]_i_13\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \q[129]_i_6\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \q[130]_i_12\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \q[130]_i_6\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \q[131]_i_11\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \q[131]_i_12\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \q[131]_i_6\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \q[132]_i_11\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \q[132]_i_6\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \q[133]_i_12\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \q[133]_i_13\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \q[134]_i_10\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \q[134]_i_12\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \q[134]_i_6\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \q[135]_i_11\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \q[136]_i_10\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \q[136]_i_12\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \q[136]_i_14\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \q[136]_i_15\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \q[137]_i_10\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \q[137]_i_11\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \q[31]_i_23\ : label is "soft_lutpair154";
begin
  D(0) <= \^d\(0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  WriteDataE(30 downto 0) <= \^writedatae\(30 downto 0);
  \q_reg[154]_0\(3 downto 0) <= \^q_reg[154]_0\(3 downto 0);
  \q_reg[158]_0\(3 downto 0) <= \^q_reg[158]_0\(3 downto 0);
  \q_reg[162]_0\(3 downto 0) <= \^q_reg[162]_0\(3 downto 0);
  \q_reg[166]_0\(3 downto 0) <= \^q_reg[166]_0\(3 downto 0);
  \q_reg[170]_0\(3 downto 0) <= \^q_reg[170]_0\(3 downto 0);
  \q_reg[174]_0\(3 downto 0) <= \^q_reg[174]_0\(3 downto 0);
  \q_reg[178]_0\(3 downto 0) <= \^q_reg[178]_0\(3 downto 0);
  \q_reg[178]_1\(0) <= \^q_reg[178]_1\(0);
  \q_reg[18]_0\ <= \^q_reg[18]_0\;
  \q_reg[36]_0\ <= \^q_reg[36]_0\;
  \q_reg[37]_0\ <= \^q_reg[37]_0\;
  \q_reg[37]_3\ <= \^q_reg[37]_3\;
  \q_reg[37]_5\ <= \^q_reg[37]_5\;
  \q_reg[37]_6\ <= \^q_reg[37]_6\;
  \q_reg[38]_0\ <= \^q_reg[38]_0\;
  \q_reg[39]_0\ <= \^q_reg[39]_0\;
  \q_reg[40]_0\ <= \^q_reg[40]_0\;
  \q_reg[41]_0\ <= \^q_reg[41]_0\;
  \q_reg[42]_0\ <= \^q_reg[42]_0\;
  \q_reg[43]_0\ <= \^q_reg[43]_0\;
  \q_reg[44]_0\ <= \^q_reg[44]_0\;
  \q_reg[45]_0\ <= \^q_reg[45]_0\;
  \q_reg[46]_0\ <= \^q_reg[46]_0\;
  \q_reg[47]_0\ <= \^q_reg[47]_0\;
  \q_reg[48]_0\ <= \^q_reg[48]_0\;
  \q_reg[49]_0\ <= \^q_reg[49]_0\;
  \q_reg[50]_0\ <= \^q_reg[50]_0\;
  \q_reg[51]_0\ <= \^q_reg[51]_0\;
  \q_reg[52]_0\ <= \^q_reg[52]_0\;
  \q_reg[53]_0\ <= \^q_reg[53]_0\;
  \q_reg[54]_0\ <= \^q_reg[54]_0\;
  \q_reg[55]_0\ <= \^q_reg[55]_0\;
  \q_reg[56]_0\ <= \^q_reg[56]_0\;
  \q_reg[57]_0\ <= \^q_reg[57]_0\;
  \q_reg[58]_1\ <= \^q_reg[58]_1\;
  \q_reg[59]_0\ <= \^q_reg[59]_0\;
  \q_reg[60]_0\ <= \^q_reg[60]_0\;
  \q_reg[61]_0\ <= \^q_reg[61]_0\;
  \q_reg[62]_0\ <= \^q_reg[62]_0\;
  \q_reg[63]_0\ <= \^q_reg[63]_0\;
  \q_reg[64]_0\ <= \^q_reg[64]_0\;
  \q_reg[65]_0\ <= \^q_reg[65]_0\;
  \q_reg[66]_0\ <= \^q_reg[66]_0\;
  \q_reg[67]_0\ <= \^q_reg[67]_0\;
  \q_reg[78]_0\ <= \^q_reg[78]_0\;
  \q_reg[84]_0\(76 downto 0) <= \^q_reg[84]_0\(76 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[50]_0\,
      I1 => \^q_reg[162]_0\(2),
      I2 => \^q_reg[162]_0\(3),
      I3 => \^q_reg[51]_0\,
      O => \q_reg[50]_1\(3)
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(46),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(14),
      O => \^q_reg[51]_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(43),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(11),
      O => \^q_reg[48]_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(44),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(12),
      O => \^q_reg[49]_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(41),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(9),
      O => \^q_reg[46]_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(42),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(10),
      O => \^q_reg[47]_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(39),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(7),
      O => \^q_reg[44]_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(40),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(8),
      O => \^q_reg[45]_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[48]_0\,
      I1 => \^q_reg[162]_0\(0),
      I2 => \^q_reg[162]_0\(1),
      I3 => \^q_reg[49]_0\,
      O => \q_reg[50]_1\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[46]_0\,
      I1 => \^q_reg[158]_0\(2),
      I2 => \^q_reg[158]_0\(3),
      I3 => \^q_reg[47]_0\,
      O => \q_reg[50]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[44]_0\,
      I1 => \^q_reg[158]_0\(0),
      I2 => \^q_reg[158]_0\(1),
      I3 => \^q_reg[45]_0\,
      O => \q_reg[50]_1\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[51]_0\,
      I1 => \^q_reg[162]_0\(3),
      I2 => \^q_reg[162]_0\(2),
      I3 => \^q_reg[50]_0\,
      O => \q_reg[51]_3\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[49]_0\,
      I1 => \^q_reg[162]_0\(1),
      I2 => \^q_reg[162]_0\(0),
      I3 => \^q_reg[48]_0\,
      O => \q_reg[51]_3\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[47]_0\,
      I1 => \^q_reg[158]_0\(3),
      I2 => \^q_reg[158]_0\(2),
      I3 => \^q_reg[46]_0\,
      O => \q_reg[51]_3\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[45]_0\,
      I1 => \^q_reg[158]_0\(1),
      I2 => \^q_reg[158]_0\(0),
      I3 => \^q_reg[44]_0\,
      O => \q_reg[51]_3\(0)
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(45),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(13),
      O => \^q_reg[50]_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[58]_1\,
      I1 => \^q_reg[170]_0\(2),
      I2 => \^q_reg[170]_0\(3),
      I3 => \^q_reg[59]_0\,
      O => \q_reg[58]_2\(3)
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(54),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(22),
      O => \^q_reg[59]_0\
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(51),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(19),
      O => \^q_reg[56]_0\
    );
\i__carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(52),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(20),
      O => \^q_reg[57]_0\
    );
\i__carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(49),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(17),
      O => \^q_reg[54]_0\
    );
\i__carry__1_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(50),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(18),
      O => \^q_reg[55]_0\
    );
\i__carry__1_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(47),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(15),
      O => \^q_reg[52]_0\
    );
\i__carry__1_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(48),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(16),
      O => \^q_reg[53]_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[56]_0\,
      I1 => \^q_reg[170]_0\(0),
      I2 => \^q_reg[170]_0\(1),
      I3 => \^q_reg[57]_0\,
      O => \q_reg[58]_2\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[54]_0\,
      I1 => \^q_reg[166]_0\(2),
      I2 => \^q_reg[166]_0\(3),
      I3 => \^q_reg[55]_0\,
      O => \q_reg[58]_2\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[52]_0\,
      I1 => \^q_reg[166]_0\(0),
      I2 => \^q_reg[166]_0\(1),
      I3 => \^q_reg[53]_0\,
      O => \q_reg[58]_2\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[58]_1\,
      I1 => \^q_reg[170]_0\(2),
      I2 => \^q_reg[59]_0\,
      I3 => \^q_reg[170]_0\(3),
      O => \q_reg[58]_0\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[56]_0\,
      I1 => \^q_reg[170]_0\(0),
      I2 => \^q_reg[57]_0\,
      I3 => \^q_reg[170]_0\(1),
      O => \q_reg[58]_0\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[54]_0\,
      I1 => \^q_reg[166]_0\(2),
      I2 => \^q_reg[55]_0\,
      I3 => \^q_reg[166]_0\(3),
      O => \q_reg[58]_0\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[52]_0\,
      I1 => \^q_reg[166]_0\(0),
      I2 => \^q_reg[53]_0\,
      I3 => \^q_reg[166]_0\(1),
      O => \q_reg[58]_0\(0)
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(53),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(21),
      O => \^q_reg[58]_1\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[66]_0\,
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[67]_0\,
      O => \q_reg[66]_1\(3)
    );
\i__carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(62),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(30),
      O => \^q_reg[67]_0\
    );
\i__carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(59),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(27),
      O => \^q_reg[64]_0\
    );
\i__carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(60),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(28),
      O => \^q_reg[65]_0\
    );
\i__carry__2_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(57),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(25),
      O => \^q_reg[62]_0\
    );
\i__carry__2_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(58),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(26),
      O => \^q_reg[63]_0\
    );
\i__carry__2_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(55),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(23),
      O => \^q_reg[60]_0\
    );
\i__carry__2_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(56),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(24),
      O => \^q_reg[61]_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[64]_0\,
      I1 => \^q_reg[178]_0\(0),
      I2 => \^q_reg[178]_0\(1),
      I3 => \^q_reg[65]_0\,
      O => \q_reg[66]_1\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[62]_0\,
      I1 => \^q_reg[174]_0\(2),
      I2 => \^q_reg[174]_0\(3),
      I3 => \^q_reg[63]_0\,
      O => \q_reg[66]_1\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[60]_0\,
      I1 => \^q_reg[174]_0\(0),
      I2 => \^q_reg[174]_0\(1),
      I3 => \^q_reg[61]_0\,
      O => \q_reg[66]_1\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[67]_0\,
      I1 => \^q_reg[178]_0\(3),
      I2 => \^q_reg[66]_0\,
      I3 => \^q_reg[178]_0\(2),
      O => \q_reg[67]_3\(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[65]_0\,
      I2 => \^q_reg[64]_0\,
      I3 => \^q_reg[178]_0\(0),
      O => \q_reg[67]_3\(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[63]_0\,
      I2 => \^q_reg[62]_0\,
      I3 => \^q_reg[174]_0\(2),
      O => \q_reg[67]_3\(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[61]_0\,
      I2 => \^q_reg[60]_0\,
      I3 => \^q_reg[174]_0\(0),
      O => \q_reg[67]_3\(0)
    );
\i__carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(61),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(29),
      O => \^q_reg[66]_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[42]_0\,
      I1 => \^q_reg[154]_0\(2),
      I2 => \^q_reg[154]_0\(3),
      I3 => \^q_reg[43]_0\,
      O => \q_reg[42]_1\(3)
    );
\i__carry_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(38),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(6),
      O => \^q_reg[43]_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(35),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(3),
      O => \^q_reg[40]_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(36),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(4),
      O => \^q_reg[41]_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(33),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(1),
      O => \^q_reg[38]_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(34),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(2),
      O => \^q_reg[39]_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(31),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^d\(0),
      O => \^q_reg[36]_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(32),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(0),
      O => \^q_reg[37]_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[154]_0\(0),
      I2 => \^q_reg[154]_0\(1),
      I3 => \^q_reg[41]_0\,
      O => \q_reg[42]_1\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[38]_0\,
      I1 => \^di\(2),
      I2 => \^di\(3),
      I3 => \^q_reg[39]_0\,
      O => \q_reg[42]_1\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q_reg[36]_0\,
      I1 => \^di\(0),
      I2 => \^di\(1),
      I3 => \^q_reg[37]_0\,
      O => \q_reg[42]_1\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[43]_0\,
      I2 => \^q_reg[42]_0\,
      I3 => \^q_reg[154]_0\(2),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[41]_0\,
      I2 => \^q_reg[154]_0\(0),
      I3 => \^q_reg[40]_0\,
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[39]_0\,
      I2 => \^di\(2),
      I3 => \^q_reg[38]_0\,
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[37]_0\,
      I2 => \^di\(0),
      I3 => \^q_reg[36]_0\,
      O => S(0)
    );
\i__carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q_reg[84]_0\(37),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^writedatae\(5),
      O => \^q_reg[42]_0\
    );
\jalrTarget_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(7),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(7),
      I4 => ForwardAE(1),
      I5 => Q(12),
      O => \^q_reg[154]_0\(3)
    );
\jalrTarget_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(6),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(6),
      I4 => ForwardAE(1),
      I5 => Q(11),
      O => \^q_reg[154]_0\(2)
    );
\jalrTarget_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(5),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(5),
      I4 => ForwardAE(1),
      I5 => Q(10),
      O => \^q_reg[154]_0\(1)
    );
\jalrTarget_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(4),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(4),
      I4 => ForwardAE(1),
      I5 => Q(9),
      O => \^q_reg[154]_0\(0)
    );
\jalrTarget_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[84]_0\(38),
      O => \q_reg[43]_2\(3)
    );
\jalrTarget_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[154]_0\(2),
      I1 => \^q_reg[84]_0\(37),
      O => \q_reg[43]_2\(2)
    );
\jalrTarget_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[84]_0\(36),
      O => \q_reg[43]_2\(1)
    );
\jalrTarget_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[154]_0\(0),
      I1 => \^q_reg[84]_0\(35),
      O => \q_reg[43]_2\(0)
    );
\jalrTarget_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(11),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(11),
      I4 => ForwardAE(1),
      I5 => Q(16),
      O => \^q_reg[158]_0\(3)
    );
\jalrTarget_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(10),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(10),
      I4 => ForwardAE(1),
      I5 => Q(15),
      O => \^q_reg[158]_0\(2)
    );
\jalrTarget_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(9),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(9),
      I4 => ForwardAE(1),
      I5 => Q(14),
      O => \^q_reg[158]_0\(1)
    );
\jalrTarget_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(8),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(8),
      I4 => ForwardAE(1),
      I5 => Q(13),
      O => \^q_reg[158]_0\(0)
    );
\jalrTarget_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[158]_0\(3),
      I1 => \^q_reg[84]_0\(42),
      O => \q_reg[47]_2\(3)
    );
\jalrTarget_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[158]_0\(2),
      I1 => \^q_reg[84]_0\(41),
      O => \q_reg[47]_2\(2)
    );
\jalrTarget_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[158]_0\(1),
      I1 => \^q_reg[84]_0\(40),
      O => \q_reg[47]_2\(1)
    );
\jalrTarget_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[158]_0\(0),
      I1 => \^q_reg[84]_0\(39),
      O => \q_reg[47]_2\(0)
    );
\jalrTarget_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(15),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(15),
      I4 => ForwardAE(1),
      I5 => Q(20),
      O => \^q_reg[162]_0\(3)
    );
\jalrTarget_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(14),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(14),
      I4 => ForwardAE(1),
      I5 => Q(19),
      O => \^q_reg[162]_0\(2)
    );
\jalrTarget_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(13),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(13),
      I4 => ForwardAE(1),
      I5 => Q(18),
      O => \^q_reg[162]_0\(1)
    );
\jalrTarget_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(12),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(12),
      I4 => ForwardAE(1),
      I5 => Q(17),
      O => \^q_reg[162]_0\(0)
    );
\jalrTarget_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[162]_0\(3),
      I1 => \^q_reg[84]_0\(46),
      O => \q_reg[51]_2\(3)
    );
\jalrTarget_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[162]_0\(2),
      I1 => \^q_reg[84]_0\(45),
      O => \q_reg[51]_2\(2)
    );
\jalrTarget_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[162]_0\(1),
      I1 => \^q_reg[84]_0\(44),
      O => \q_reg[51]_2\(1)
    );
\jalrTarget_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[162]_0\(0),
      I1 => \^q_reg[84]_0\(43),
      O => \q_reg[51]_2\(0)
    );
\jalrTarget_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(19),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(19),
      I4 => ForwardAE(1),
      I5 => Q(24),
      O => \^q_reg[166]_0\(3)
    );
\jalrTarget_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(18),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(18),
      I4 => ForwardAE(1),
      I5 => Q(23),
      O => \^q_reg[166]_0\(2)
    );
\jalrTarget_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(17),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(17),
      I4 => ForwardAE(1),
      I5 => Q(22),
      O => \^q_reg[166]_0\(1)
    );
\jalrTarget_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(16),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(16),
      I4 => ForwardAE(1),
      I5 => Q(21),
      O => \^q_reg[166]_0\(0)
    );
\jalrTarget_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[166]_0\(3),
      I1 => \^q_reg[84]_0\(50),
      O => \q_reg[55]_2\(3)
    );
\jalrTarget_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[166]_0\(2),
      I1 => \^q_reg[84]_0\(49),
      O => \q_reg[55]_2\(2)
    );
\jalrTarget_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[166]_0\(1),
      I1 => \^q_reg[84]_0\(48),
      O => \q_reg[55]_2\(1)
    );
\jalrTarget_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[166]_0\(0),
      I1 => \^q_reg[84]_0\(47),
      O => \q_reg[55]_2\(0)
    );
\jalrTarget_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(23),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(23),
      I4 => ForwardAE(1),
      I5 => Q(28),
      O => \^q_reg[170]_0\(3)
    );
\jalrTarget_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(22),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(22),
      I4 => ForwardAE(1),
      I5 => Q(27),
      O => \^q_reg[170]_0\(2)
    );
\jalrTarget_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(21),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(21),
      I4 => ForwardAE(1),
      I5 => Q(26),
      O => \^q_reg[170]_0\(1)
    );
\jalrTarget_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(20),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(20),
      I4 => ForwardAE(1),
      I5 => Q(25),
      O => \^q_reg[170]_0\(0)
    );
\jalrTarget_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[170]_0\(3),
      I1 => \^q_reg[84]_0\(54),
      O => \q_reg[59]_2\(3)
    );
\jalrTarget_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[170]_0\(2),
      I1 => \^q_reg[84]_0\(53),
      O => \q_reg[59]_2\(2)
    );
\jalrTarget_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[170]_0\(1),
      I1 => \^q_reg[84]_0\(52),
      O => \q_reg[59]_2\(1)
    );
\jalrTarget_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[170]_0\(0),
      I1 => \^q_reg[84]_0\(51),
      O => \q_reg[59]_2\(0)
    );
\jalrTarget_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(27),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(27),
      I4 => ForwardAE(1),
      I5 => Q(32),
      O => \^q_reg[174]_0\(3)
    );
\jalrTarget_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(26),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(26),
      I4 => ForwardAE(1),
      I5 => Q(31),
      O => \^q_reg[174]_0\(2)
    );
\jalrTarget_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(25),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(25),
      I4 => ForwardAE(1),
      I5 => Q(30),
      O => \^q_reg[174]_0\(1)
    );
\jalrTarget_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(24),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(24),
      I4 => ForwardAE(1),
      I5 => Q(29),
      O => \^q_reg[174]_0\(0)
    );
\jalrTarget_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[84]_0\(58),
      O => \q_reg[63]_2\(3)
    );
\jalrTarget_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[84]_0\(57),
      O => \q_reg[63]_2\(2)
    );
\jalrTarget_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[84]_0\(56),
      O => \q_reg[63]_2\(1)
    );
\jalrTarget_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[84]_0\(55),
      O => \q_reg[63]_2\(0)
    );
\jalrTarget_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(30),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(30),
      I4 => ForwardAE(1),
      I5 => Q(35),
      O => \^q_reg[178]_0\(2)
    );
\jalrTarget_carry__6_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[84]_0\(70),
      I1 => \q[105]_i_3_0\(0),
      I2 => \^q_reg[84]_0\(74),
      I3 => \q[105]_i_3_0\(4),
      O => \jalrTarget_carry__6_i_10_n_0\
    );
\jalrTarget_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(29),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(29),
      I4 => ForwardAE(1),
      I5 => Q(34),
      O => \^q_reg[178]_0\(1)
    );
\jalrTarget_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(28),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(28),
      I4 => ForwardAE(1),
      I5 => Q(33),
      O => \^q_reg[178]_0\(0)
    );
\jalrTarget_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[178]_0\(3),
      I1 => \^q_reg[84]_0\(62),
      O => \q_reg[67]_1\(3)
    );
\jalrTarget_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[84]_0\(61),
      O => \q_reg[67]_1\(2)
    );
\jalrTarget_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[84]_0\(60),
      O => \q_reg[67]_1\(1)
    );
\jalrTarget_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[84]_0\(59),
      O => \q_reg[67]_1\(0)
    );
\jalrTarget_carry__6_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => \jalrTarget_carry__6_i_9_n_0\,
      I1 => ForwardAE11_out,
      I2 => ResultW(31),
      I3 => RD1E(31),
      I4 => ForwardAE(1),
      I5 => Q(36),
      O => \^q_reg[178]_0\(3)
    );
\jalrTarget_carry__6_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000000000"
    )
        port map (
      I0 => jalrTarget_carry_i_14_n_0,
      I1 => \^q_reg[84]_0\(71),
      I2 => \q[105]_i_3_0\(1),
      I3 => RegWriteW,
      I4 => \jalrTarget_carry__6_i_8_0\,
      I5 => \jalrTarget_carry__6_i_10_n_0\,
      O => \jalrTarget_carry__6_i_9_n_0\
    );
jalrTarget_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(3),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(3),
      I4 => ForwardAE(1),
      I5 => Q(8),
      O => \^di\(3)
    );
jalrTarget_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3773777777777777"
    )
        port map (
      I0 => ForwardAE11_out,
      I1 => jalrTarget_carry_i_14_n_0,
      I2 => \^q_reg[84]_0\(71),
      I3 => \q[105]_i_3_0\(1),
      I4 => RegWriteW,
      I5 => \jalrTarget_carry__2_i_2_0\,
      O => jalrTarget_carry_i_10_n_0
    );
jalrTarget_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000008000000000"
    )
        port map (
      I0 => jalrTarget_carry_i_14_n_0,
      I1 => \^q_reg[78]_0\,
      I2 => \jalrTarget_carry__2_i_2_1\,
      I3 => \^q_reg[84]_0\(71),
      I4 => Q(1),
      I5 => \q_reg[78]_1\(0),
      O => ForwardAE(1)
    );
jalrTarget_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q_reg[84]_0\(73),
      I1 => \^q_reg[84]_0\(70),
      I2 => \^q_reg[84]_0\(71),
      I3 => \^q_reg[84]_0\(74),
      I4 => \^q_reg[84]_0\(72),
      O => jalrTarget_carry_i_14_n_0
    );
jalrTarget_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[84]_0\(70),
      I1 => Q(0),
      I2 => \^q_reg[84]_0\(74),
      I3 => Q(4),
      O => \^q_reg[78]_0\
    );
jalrTarget_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(2),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(2),
      I4 => ForwardAE(1),
      I5 => Q(7),
      O => \^di\(2)
    );
jalrTarget_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(1),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(1),
      I4 => ForwardAE(1),
      I5 => Q(6),
      O => \^di\(1)
    );
jalrTarget_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => jalrTarget_carry_i_9_n_0,
      I1 => ResultW(0),
      I2 => jalrTarget_carry_i_10_n_0,
      I3 => RD1E(0),
      I4 => ForwardAE(1),
      I5 => Q(5),
      O => \^di\(0)
    );
jalrTarget_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[84]_0\(34),
      O => \q_reg[39]_2\(3)
    );
jalrTarget_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[84]_0\(33),
      O => \q_reg[39]_2\(2)
    );
jalrTarget_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[84]_0\(32),
      O => \q_reg[39]_2\(1)
    );
jalrTarget_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[84]_0\(31),
      O => \q_reg[39]_2\(0)
    );
jalrTarget_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => \^q_reg[84]_0\(71),
      I1 => \q[105]_i_3_0\(1),
      I2 => RegWriteW,
      I3 => \jalrTarget_carry__2_i_2_0\,
      I4 => ForwardAE11_out,
      I5 => jalrTarget_carry_i_14_n_0,
      O => jalrTarget_carry_i_9_n_0
    );
\q[100]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(26),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(26),
      I4 => ForwardBE(1),
      I5 => Q(31),
      O => \^writedatae\(25)
    );
\q[101]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(27),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(27),
      I4 => ForwardBE(1),
      I5 => Q(32),
      O => \^writedatae\(26)
    );
\q[102]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(28),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(28),
      I4 => ForwardBE(1),
      I5 => Q(33),
      O => \^writedatae\(27)
    );
\q[103]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(29),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(29),
      I4 => ForwardBE(1),
      I5 => Q(34),
      O => \^writedatae\(28)
    );
\q[104]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(30),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(30),
      I4 => ForwardBE(1),
      I5 => Q(35),
      O => \^writedatae\(29)
    );
\q[105]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(31),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(31),
      I4 => Q(36),
      I5 => ForwardBE(1),
      O => \^writedatae\(30)
    );
\q[105]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => \q[105]_i_3_0\(1),
      I1 => Rs2E(1),
      I2 => RegWriteW,
      I3 => \q[105]_i_5_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q[105]_i_6_n_0\,
      O => \q[105]_i_2_n_0\
    );
\q[105]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3773777777777777"
    )
        port map (
      I0 => \hu/ForwardBE10_out\,
      I1 => \q[105]_i_6_n_0\,
      I2 => \q[105]_i_3_0\(1),
      I3 => Rs2E(1),
      I4 => RegWriteW,
      I5 => \q[105]_i_5_n_0\,
      O => \q[105]_i_3_n_0\
    );
\q[105]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000008000000000"
    )
        port map (
      I0 => \q[105]_i_6_n_0\,
      I1 => \q_reg[105]_0\,
      I2 => \q[105]_i_8_n_0\,
      I3 => Q(1),
      I4 => Rs2E(1),
      I5 => \q_reg[78]_1\(0),
      O => ForwardBE(1)
    );
\q[105]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \q[105]_i_3_0\(4),
      I1 => \^q_reg[84]_0\(69),
      I2 => \^q_reg[84]_0\(68),
      I3 => \q[105]_i_3_0\(0),
      I4 => \q[78]_i_4_n_0\,
      O => \q[105]_i_5_n_0\
    );
\q[105]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Rs2E(3),
      I1 => \^q_reg[84]_0\(68),
      I2 => Rs2E(1),
      I3 => \^q_reg[84]_0\(69),
      I4 => Rs2E(2),
      O => \q[105]_i_6_n_0\
    );
\q[105]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Rs2E(3),
      O => \q[105]_i_8_n_0\
    );
\q[106]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[166]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(0),
      O => \q[106]_i_10_n_0\
    );
\q[106]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAEA"
    )
        port map (
      I0 => \q[106]_i_6_n_0\,
      I1 => \q_reg[106]_0\,
      I2 => \q[106]_i_8_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[107]_i_7_n_0\,
      I5 => \q[106]_i_9_n_0\,
      O => \q_reg[11]_18\
    );
\q[106]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232320232020202"
    )
        port map (
      I0 => \q_reg[109]_i_8_n_7\,
      I1 => \q_reg[95]_0\(2),
      I2 => \q_reg[95]_0\(1),
      I3 => \^q_reg[36]_0\,
      I4 => \q_reg[95]_0\(0),
      I5 => \^di\(0),
      O => \q_reg[13]_10\
    );
\q[106]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \q_reg[95]_0\(0),
      I1 => \q_reg[95]_0\(3),
      I2 => \q[106]_i_8_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q[107]_i_7_n_0\,
      O => \q_reg[11]_17\
    );
\q[106]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000487B7B48"
    )
        port map (
      I0 => \^q_reg[178]_1\(0),
      I1 => \q_reg[95]_0\(0),
      I2 => ovfE,
      I3 => \^q_reg[36]_0\,
      I4 => \^di\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q[106]_i_6_n_0\
    );
\q[106]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^q_reg[38]_0\,
      I1 => \q[110]_i_10_n_0\,
      I2 => \q[106]_i_10_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => \q[108]_i_9_n_0\,
      O => \q[106]_i_8_n_0\
    );
\q[106]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \q[136]_i_10_n_0\,
      I1 => \q[137]_i_11_n_0\,
      I2 => \q_reg[95]_0\(1),
      I3 => \q[107]_i_11_n_0\,
      O => \q[106]_i_9_n_0\
    );
\q[107]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[166]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(1),
      O => \q[107]_i_10_n_0\
    );
\q[107]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[39]_0\,
      I2 => \^di\(0),
      O => \q[107]_i_11_n_0\
    );
\q[107]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8888888"
    )
        port map (
      I0 => \q_reg[107]_0\,
      I1 => \q[107]_i_7_n_0\,
      I2 => \q[136]_i_10_n_0\,
      I3 => \q[137]_i_11_n_0\,
      I4 => \q[107]_i_8_n_0\,
      I5 => \q[107]_i_9_n_0\,
      O => \q_reg[11]_19\
    );
\q[107]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[109]_i_8_n_6\,
      I1 => \^q_reg[37]_0\,
      I2 => \^di\(1),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_19\
    );
\q[107]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \q[108]_i_8_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[108]_i_9_n_0\,
      I3 => \q_reg[107]_2\,
      I4 => \q[107]_i_7_n_0\,
      I5 => \q_reg[107]_1\,
      O => \q_reg[37]_21\
    );
\q[107]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => \^q_reg[38]_0\,
      I1 => \q[111]_i_10_n_0\,
      I2 => \q[107]_i_10_n_0\,
      I3 => \^q_reg[37]_0\,
      I4 => \q[109]_i_10_n_0\,
      O => \q[107]_i_7_n_0\
    );
\q[107]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[39]_0\,
      I2 => \^di\(1),
      O => \q[107]_i_8_n_0\
    );
\q[107]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \q[107]_i_11_n_0\,
      I1 => \q[137]_i_11_n_0\,
      I2 => \q[136]_i_12_n_0\,
      I3 => \q[108]_i_7_n_0\,
      I4 => \q[136]_i_16_n_0\,
      O => \q[107]_i_9_n_0\
    );
\q[108]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[115]_i_10_n_0\,
      I1 => \q[111]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[113]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[109]_i_11_n_0\,
      O => \q[108]_i_10_n_0\
    );
\q[108]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[166]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(2),
      O => \q[108]_i_11_n_0\
    );
\q[108]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFECCFEFCCECCCE"
    )
        port map (
      I0 => \q[109]_i_6_n_0\,
      I1 => \q[108]_i_6_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[109]_i_7_n_0\,
      I5 => \q[108]_i_7_n_0\,
      O => \q_reg[11]_20\
    );
\q[108]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[109]_i_8_n_5\,
      I1 => \^q_reg[38]_0\,
      I2 => \^di\(2),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_6\
    );
\q[108]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \q[108]_i_8_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[108]_i_9_n_0\,
      I3 => \q_reg[107]_1\,
      I4 => \q[108]_i_10_n_0\,
      I5 => \q_reg[107]_2\,
      O => \q_reg[37]_1\
    );
\q[108]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q[137]_i_11_n_0\,
      I1 => \q[136]_i_12_n_0\,
      I2 => \q[107]_i_8_n_0\,
      O => \q[108]_i_6_n_0\
    );
\q[108]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[114]_i_9_n_0\,
      I1 => \q[110]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[112]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[108]_i_11_n_0\,
      O => \q[108]_i_7_n_0\
    );
\q[108]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[114]_i_11_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[110]_i_10_n_0\,
      O => \q[108]_i_8_n_0\
    );
\q[108]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[112]_i_10_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[108]_i_11_n_0\,
      O => \q[108]_i_9_n_0\
    );
\q[109]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[113]_i_11_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[109]_i_11_n_0\,
      O => \q[109]_i_10_n_0\
    );
\q[109]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[166]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(3),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(3),
      O => \q[109]_i_11_n_0\
    );
\q[109]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[109]_i_6_n_0\,
      I1 => \q[110]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[110]_i_8_n_0\,
      I5 => \q[109]_i_7_n_0\,
      O => \q_reg[11]_21\
    );
\q[109]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[109]_i_8_n_4\,
      I1 => \^q_reg[39]_0\,
      I2 => \^di\(3),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_17\
    );
\q[109]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \q[109]_i_9_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[109]_i_10_n_0\,
      I3 => \q_reg[107]_1\,
      I4 => \^q_reg[37]_3\,
      I5 => \q_reg[107]_2\,
      O => \q_reg[37]_2\
    );
\q[109]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003000202"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(0),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[109]_i_6_n_0\
    );
\q[109]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[115]_i_9_n_0\,
      I1 => \q[111]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[113]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[109]_i_11_n_0\,
      O => \q[109]_i_7_n_0\
    );
\q[109]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[115]_i_10_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[111]_i_10_n_0\,
      O => \q[109]_i_9_n_0\
    );
\q[110]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[154]_0\(0),
      I1 => \^q_reg[170]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(0),
      O => \q[110]_i_10_n_0\
    );
\q[110]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[110]_i_8_n_0\,
      I1 => \q[111]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[111]_i_8_n_0\,
      I5 => \q[110]_i_9_n_0\,
      O => \q_reg[11]_22\
    );
\q[110]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[113]_i_10_n_7\,
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[154]_0\(0),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_14\
    );
\q[110]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[116]_i_10_n_0\,
      I1 => \q[112]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[114]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[110]_i_10_n_0\,
      O => \^q_reg[37]_3\
    );
\q[110]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[116]_i_9_n_0\,
      I1 => \q[112]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[114]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[110]_i_10_n_0\,
      O => \q[110]_i_8_n_0\
    );
\q[110]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003000202"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(1),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[110]_i_9_n_0\
    );
\q[111]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[170]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(1),
      O => \q[111]_i_10_n_0\
    );
\q[111]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[111]_i_8_n_0\,
      I1 => \q[112]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[112]_i_8_n_0\,
      I5 => \q[111]_i_9_n_0\,
      O => \q_reg[11]_23\
    );
\q[111]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[41]_0\,
      I2 => \q_reg[113]_i_10_n_6\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_30\
    );
\q[111]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[117]_i_16_n_0\,
      I1 => \q[113]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[115]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[111]_i_10_n_0\,
      O => \q_reg[37]_13\
    );
\q[111]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[117]_i_10_n_0\,
      I1 => \q[113]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[115]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[111]_i_10_n_0\,
      O => \q[111]_i_8_n_0\
    );
\q[111]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[154]_0\(0),
      I2 => \q[133]_i_14_n_0\,
      I3 => \^di\(2),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[111]_i_9_n_0\
    );
\q[112]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[154]_0\(2),
      I1 => \^q_reg[170]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(2),
      O => \q[112]_i_10_n_0\
    );
\q[112]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[112]_i_8_n_0\,
      I1 => \q[113]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[113]_i_8_n_0\,
      I5 => \q[112]_i_9_n_0\,
      O => \q_reg[11]_24\
    );
\q[112]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[113]_i_10_n_5\,
      I1 => \^q_reg[154]_0\(2),
      I2 => \^q_reg[42]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_2\
    );
\q[112]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[118]_i_11_n_0\,
      I1 => \q[114]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[116]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[112]_i_10_n_0\,
      O => \q_reg[37]_4\
    );
\q[112]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[118]_i_9_n_0\,
      I1 => \q[114]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[116]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[112]_i_10_n_0\,
      O => \q[112]_i_8_n_0\
    );
\q[112]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[154]_0\(1),
      I2 => \q[133]_i_14_n_0\,
      I3 => \^di\(3),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[112]_i_9_n_0\
    );
\q[113]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFAFCFA0CFA0C0A"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[170]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[162]_0\(3),
      I5 => \q[128]_i_14_n_0\,
      O => \q[113]_i_11_n_0\
    );
\q[113]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[154]_0\(2),
      O => \q[113]_i_12_n_0\
    );
\q[113]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[113]_i_8_n_0\,
      I1 => \q[114]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[114]_i_6_n_0\,
      I5 => \q[113]_i_9_n_0\,
      O => \q_reg[11]_25\
    );
\q[113]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[43]_0\,
      I2 => \q_reg[113]_i_10_n_4\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_23\
    );
\q[113]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[119]_i_11_n_0\,
      I1 => \q[115]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[117]_i_16_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[113]_i_11_n_0\,
      O => \q_reg[37]_14\
    );
\q[113]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[119]_i_9_n_0\,
      I1 => \q[115]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[117]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[113]_i_11_n_0\,
      O => \q[113]_i_8_n_0\
    );
\q[113]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[154]_0\(0),
      I4 => \^q_reg[37]_0\,
      I5 => \q[113]_i_12_n_0\,
      O => \q[113]_i_9_n_0\
    );
\q[114]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[154]_0\(3),
      O => \q[114]_i_10_n_0\
    );
\q[114]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[166]_0\(0),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(0),
      O => \q[114]_i_11_n_0\
    );
\q[114]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[114]_i_6_n_0\,
      I1 => \q[115]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[115]_i_6_n_0\,
      I5 => \q[114]_i_7_n_0\,
      O => \q_reg[11]_26\
    );
\q[114]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[117]_i_8_n_7\,
      I1 => \^q_reg[44]_0\,
      I2 => \^q_reg[158]_0\(0),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_8\
    );
\q[114]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q_reg[37]_5\,
      I1 => \q_reg[107]_1\,
      I2 => \q[115]_i_8_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_32\
    );
\q[114]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_9_n_0\,
      I1 => \q[116]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[118]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[114]_i_9_n_0\,
      O => \q[114]_i_6_n_0\
    );
\q[114]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[154]_0\(1),
      I4 => \^q_reg[37]_0\,
      I5 => \q[114]_i_10_n_0\,
      O => \q[114]_i_7_n_0\
    );
\q[114]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[120]_i_11_n_0\,
      I1 => \q[116]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[118]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[114]_i_11_n_0\,
      O => \^q_reg[37]_5\
    );
\q[114]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[158]_0\(0),
      I2 => \^q_reg[166]_0\(0),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[114]_i_9_n_0\
    );
\q[115]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[166]_0\(1),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(1),
      O => \q[115]_i_10_n_0\
    );
\q[115]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[115]_i_6_n_0\,
      I1 => \q[116]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[116]_i_6_n_0\,
      I5 => \q[115]_i_7_n_0\,
      O => \q_reg[11]_27\
    );
\q[115]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[45]_0\,
      I1 => \^q_reg[158]_0\(1),
      I2 => \q_reg[117]_i_8_n_6\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_26\
    );
\q[115]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[115]_i_8_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[116]_i_8_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_33\
    );
\q[115]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_13_n_0\,
      I1 => \q[117]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[119]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[115]_i_9_n_0\,
      O => \q[115]_i_6_n_0\
    );
\q[115]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[154]_0\(2),
      I4 => \^q_reg[37]_0\,
      I5 => \q[117]_i_11_n_0\,
      O => \q[115]_i_7_n_0\
    );
\q[115]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_22_n_0\,
      I1 => \q[117]_i_16_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[119]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[115]_i_10_n_0\,
      O => \q[115]_i_8_n_0\
    );
\q[115]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[158]_0\(1),
      I2 => \^q_reg[166]_0\(1),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[115]_i_9_n_0\
    );
\q[116]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[166]_0\(2),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(2),
      O => \q[116]_i_10_n_0\
    );
\q[116]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[116]_i_6_n_0\,
      I1 => \q[117]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[117]_i_6_n_0\,
      I5 => \q[116]_i_7_n_0\,
      O => \q_reg[11]_28\
    );
\q[116]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[117]_i_8_n_5\,
      I1 => \^q_reg[46]_0\,
      I2 => \^q_reg[158]_0\(2),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_4\
    );
\q[116]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[116]_i_8_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[117]_i_9_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_34\
    );
\q[116]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_14_n_0\,
      I1 => \q[118]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[120]_i_9_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[116]_i_9_n_0\,
      O => \q[116]_i_6_n_0\
    );
\q[116]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[154]_0\(3),
      I4 => \^q_reg[37]_0\,
      I5 => \q[118]_i_10_n_0\,
      O => \q[116]_i_7_n_0\
    );
\q[116]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_10_n_0\,
      I1 => \q[118]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[120]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[116]_i_10_n_0\,
      O => \q[116]_i_8_n_0\
    );
\q[116]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[158]_0\(2),
      I2 => \^q_reg[166]_0\(2),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[116]_i_9_n_0\
    );
\q[117]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[158]_0\(3),
      I2 => \^q_reg[166]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[117]_i_10_n_0\
    );
\q[117]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[154]_0\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[158]_0\(0),
      I3 => \^di\(0),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[117]_i_11_n_0\
    );
\q[117]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[166]_0\(3),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[174]_0\(3),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[158]_0\(3),
      O => \q[117]_i_16_n_0\
    );
\q[117]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[117]_i_6_n_0\,
      I1 => \q[118]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[118]_i_6_n_0\,
      I5 => \q[117]_i_7_n_0\,
      O => \q_reg[11]_29\
    );
\q[117]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[47]_0\,
      I1 => \^q_reg[158]_0\(3),
      I2 => \q_reg[117]_i_8_n_4\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_24\
    );
\q[117]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[117]_i_9_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[118]_i_8_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_35\
    );
\q[117]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_11_n_0\,
      I1 => \q[119]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_13_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[117]_i_10_n_0\,
      O => \q[117]_i_6_n_0\
    );
\q[117]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[117]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[119]_i_10_n_0\,
      O => \q[117]_i_7_n_0\
    );
\q[117]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[123]_i_10_n_0\,
      I1 => \q[119]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_22_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[117]_i_16_n_0\,
      O => \q[117]_i_9_n_0\
    );
\q[118]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[158]_0\(1),
      I3 => \^di\(1),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[118]_i_10_n_0\
    );
\q[118]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[170]_0\(0),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(0),
      O => \q[118]_i_11_n_0\
    );
\q[118]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[118]_i_6_n_0\,
      I1 => \q[119]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[119]_i_6_n_0\,
      I5 => \q[118]_i_7_n_0\,
      O => \q_reg[11]_30\
    );
\q[118]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[121]_i_8_n_7\,
      I1 => \^q_reg[48]_0\,
      I2 => \^q_reg[162]_0\(0),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_12\
    );
\q[118]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[118]_i_8_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[119]_i_8_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_36\
    );
\q[118]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_12_n_0\,
      I1 => \q[120]_i_9_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[122]_i_14_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[118]_i_9_n_0\,
      O => \q[118]_i_6_n_0\
    );
\q[118]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[118]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[120]_i_10_n_0\,
      O => \q[118]_i_7_n_0\
    );
\q[118]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[124]_i_10_n_0\,
      I1 => \q[120]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[122]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[118]_i_11_n_0\,
      O => \q[118]_i_8_n_0\
    );
\q[118]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[162]_0\(0),
      I2 => \^q_reg[170]_0\(0),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[118]_i_9_n_0\
    );
\q[119]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[154]_0\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[158]_0\(2),
      I3 => \^di\(2),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[119]_i_10_n_0\
    );
\q[119]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[170]_0\(1),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(1),
      O => \q[119]_i_11_n_0\
    );
\q[119]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[119]_i_6_n_0\,
      I1 => \q[120]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[120]_i_6_n_0\,
      I5 => \q[119]_i_7_n_0\,
      O => \q_reg[11]_31\
    );
\q[119]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[49]_0\,
      I1 => \^q_reg[162]_0\(1),
      I2 => \q_reg[121]_i_8_n_6\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_28\
    );
\q[119]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[119]_i_8_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[120]_i_8_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_37\
    );
\q[119]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_12_n_0\,
      I1 => \q[121]_i_13_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[119]_i_9_n_0\,
      O => \q[119]_i_6_n_0\
    );
\q[119]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[119]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[121]_i_14_n_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \q[121]_i_15_n_0\,
      O => \q[119]_i_7_n_0\
    );
\q[119]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_21_n_0\,
      I1 => \q[121]_i_22_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[123]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[119]_i_11_n_0\,
      O => \q[119]_i_8_n_0\
    );
\q[119]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[162]_0\(1),
      I2 => \^q_reg[170]_0\(1),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[119]_i_9_n_0\
    );
\q[120]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[158]_0\(3),
      I3 => \^di\(3),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[120]_i_10_n_0\
    );
\q[120]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0EFEFCFC0E0E0"
    )
        port map (
      I0 => \^q_reg[170]_0\(2),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[162]_0\(2),
      O => \q[120]_i_11_n_0\
    );
\q[120]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[120]_i_6_n_0\,
      I1 => \q[121]_i_7_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[121]_i_6_n_0\,
      I5 => \q[120]_i_7_n_0\,
      O => \q_reg[11]_9\
    );
\q[120]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[121]_i_8_n_5\,
      I1 => \^q_reg[50]_0\,
      I2 => \^q_reg[162]_0\(2),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_0\
    );
\q[120]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[120]_i_8_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \q[121]_i_9_n_0\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_38\
    );
\q[120]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_13_n_0\,
      I1 => \q[122]_i_14_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[122]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[120]_i_9_n_0\,
      O => \q[120]_i_6_n_0\
    );
\q[120]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[120]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[122]_i_15_n_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \q[126]_i_13_n_0\,
      O => \q[120]_i_7_n_0\
    );
\q[120]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_11_n_0\,
      I1 => \q[122]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[124]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[120]_i_11_n_0\,
      O => \q[120]_i_8_n_0\
    );
\q[120]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[162]_0\(2),
      I2 => \^q_reg[170]_0\(2),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[120]_i_9_n_0\
    );
\q[121]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[170]_0\(1),
      I1 => \^q_reg[178]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_10_n_0\
    );
\q[121]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[166]_0\(1),
      I1 => \^q_reg[174]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_11_n_0\
    );
\q[121]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[166]_0\(3),
      I1 => \^q_reg[174]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_12_n_0\
    );
\q[121]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0EE"
    )
        port map (
      I0 => \^q_reg[162]_0\(3),
      I1 => \q[128]_i_14_n_0\,
      I2 => \^q_reg[170]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[121]_i_13_n_0\
    );
\q[121]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[158]_0\(0),
      I1 => \^di\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_14_n_0\
    );
\q[121]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[162]_0\(0),
      I1 => \^q_reg[154]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_15_n_0\
    );
\q[121]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[158]_0\(2),
      I1 => \^di\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[121]_i_16_n_0\
    );
\q[121]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[121]_i_6_n_0\,
      I1 => \q[122]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[122]_i_8_n_0\,
      I5 => \q[121]_i_7_n_0\,
      O => \q_reg[11]_10\
    );
\q[121]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[166]_0\(3),
      I4 => \q[128]_i_14_n_0\,
      O => \q[121]_i_21_n_0\
    );
\q[121]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[170]_0\(3),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[162]_0\(3),
      I4 => \q[128]_i_14_n_0\,
      O => \q[121]_i_22_n_0\
    );
\q[121]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[51]_0\,
      I1 => \^q_reg[162]_0\(3),
      I2 => \q_reg[121]_i_8_n_4\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_22\
    );
\q[121]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \q[121]_i_9_n_0\,
      I1 => \q_reg[107]_1\,
      I2 => \^q_reg[37]_6\,
      I3 => \q_reg[107]_2\,
      O => \q_reg[11]_39\
    );
\q[121]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_10_n_0\,
      I1 => \q[121]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[121]_i_13_n_0\,
      O => \q[121]_i_6_n_0\
    );
\q[121]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[121]_i_14_n_0\,
      I1 => \q[121]_i_15_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_16_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[127]_i_13_n_0\,
      O => \q[121]_i_7_n_0\
    );
\q[121]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_11_n_0\,
      I1 => \q[123]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[121]_i_21_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[121]_i_22_n_0\,
      O => \q[121]_i_9_n_0\
    );
\q[122]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[166]_0\(0),
      I4 => \q[128]_i_14_n_0\,
      O => \q[122]_i_10_n_0\
    );
\q[122]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[170]_0\(2),
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_11_n_0\
    );
\q[122]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[166]_0\(2),
      I1 => \^q_reg[174]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_12_n_0\
    );
\q[122]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[170]_0\(0),
      I1 => \^q_reg[178]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_13_n_0\
    );
\q[122]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[166]_0\(0),
      I1 => \^q_reg[174]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_14_n_0\
    );
\q[122]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[158]_0\(1),
      I1 => \^di\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_15_n_0\
    );
\q[122]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[158]_0\(3),
      I1 => \^di\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[122]_i_16_n_0\
    );
\q[122]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[122]_i_8_n_0\,
      I1 => \q[123]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[123]_i_8_n_0\,
      I5 => \q[122]_i_9_n_0\,
      O => \q_reg[11]_11\
    );
\q[122]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[125]_i_10_n_7\,
      I1 => \^q_reg[166]_0\(0),
      I2 => \^q_reg[52]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_11\
    );
\q[122]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_11_n_0\,
      I1 => \q[124]_i_10_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[126]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[122]_i_10_n_0\,
      O => \^q_reg[37]_6\
    );
\q[122]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_11_n_0\,
      I1 => \q[122]_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[122]_i_13_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[122]_i_14_n_0\,
      O => \q[122]_i_8_n_0\
    );
\q[122]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[122]_i_15_n_0\,
      I1 => \q[126]_i_13_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[122]_i_16_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[128]_i_13_n_0\,
      O => \q[122]_i_9_n_0\
    );
\q[123]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[166]_0\(1),
      I4 => \q[128]_i_14_n_0\,
      O => \q[123]_i_10_n_0\
    );
\q[123]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[170]_0\(1),
      I1 => \^q_reg[178]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[121]_i_11_n_0\,
      O => \q[123]_i_11_n_0\
    );
\q[123]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[158]_0\(2),
      I1 => \^di\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[127]_i_13_n_0\,
      O => \q[123]_i_12_n_0\
    );
\q[123]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[123]_i_8_n_0\,
      I1 => \q[124]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[124]_i_8_n_0\,
      I5 => \q[123]_i_9_n_0\,
      O => \q_reg[11]_12\
    );
\q[123]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[125]_i_10_n_6\,
      I1 => \^q_reg[166]_0\(1),
      I2 => \^q_reg[53]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_20\
    );
\q[123]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \q[127]_i_11_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[123]_i_10_n_0\,
      I3 => \q[125]_i_12_n_0\,
      I4 => \^q_reg[37]_0\,
      O => \q_reg[38]_2\
    );
\q[123]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[125]_i_13_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[123]_i_11_n_0\,
      O => \q[123]_i_8_n_0\
    );
\q[123]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[123]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[125]_i_14_n_0\,
      O => \q[123]_i_9_n_0\
    );
\q[124]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[166]_0\(2),
      I4 => \q[128]_i_14_n_0\,
      O => \q[124]_i_10_n_0\
    );
\q[124]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E2FFFFF0E20000"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[126]_i_11_n_0\,
      O => \q[124]_i_11_n_0\
    );
\q[124]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[170]_0\(2),
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[122]_i_12_n_0\,
      O => \q[124]_i_12_n_0\
    );
\q[124]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[158]_0\(3),
      I1 => \^di\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[128]_i_13_n_0\,
      O => \q[124]_i_13_n_0\
    );
\q[124]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[162]_0\(1),
      I1 => \^q_reg[154]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[130]_i_12_n_0\,
      O => \q[124]_i_14_n_0\
    );
\q[124]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[124]_i_8_n_0\,
      I1 => \q[125]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[125]_i_8_n_0\,
      I5 => \q[124]_i_9_n_0\,
      O => \q_reg[11]_13\
    );
\q[124]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[125]_i_10_n_5\,
      I1 => \^q_reg[166]_0\(2),
      I2 => \^q_reg[54]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_7\
    );
\q[124]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \q[128]_i_11_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \q[124]_i_10_n_0\,
      I3 => \q[124]_i_11_n_0\,
      I4 => \^q_reg[37]_0\,
      O => \q_reg[38]_1\
    );
\q[124]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[126]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[124]_i_12_n_0\,
      O => \q[124]_i_8_n_0\
    );
\q[124]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[124]_i_13_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[124]_i_14_n_0\,
      O => \q[124]_i_9_n_0\
    );
\q[125]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E2FFFFF0E20000"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[127]_i_11_n_0\,
      O => \q[125]_i_11_n_0\
    );
\q[125]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E2FFFFF0E20000"
    )
        port map (
      I0 => \^q_reg[170]_0\(3),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[121]_i_21_n_0\,
      O => \q[125]_i_12_n_0\
    );
\q[125]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BB88B8B8"
    )
        port map (
      I0 => \q[125]_i_20_n_0\,
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[166]_0\(3),
      I3 => \^q_reg[174]_0\(3),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[125]_i_13_n_0\
    );
\q[125]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[162]_0\(0),
      I1 => \^q_reg[154]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[129]_i_13_n_0\,
      O => \q[125]_i_14_n_0\
    );
\q[125]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CAFFFF00CA0000"
    )
        port map (
      I0 => \^q_reg[162]_0\(2),
      I1 => \^q_reg[154]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[131]_i_12_n_0\,
      O => \q[125]_i_15_n_0\
    );
\q[125]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[170]_0\(3),
      I1 => \^q_reg[178]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[125]_i_20_n_0\
    );
\q[125]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[125]_i_8_n_0\,
      I1 => \q[126]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[126]_i_8_n_0\,
      I5 => \q[125]_i_9_n_0\,
      O => \q_reg[11]_14\
    );
\q[125]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[125]_i_10_n_4\,
      I1 => \^q_reg[166]_0\(3),
      I2 => \^q_reg[55]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_18\
    );
\q[125]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[125]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[125]_i_12_n_0\,
      O => \q_reg[37]_15\
    );
\q[125]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[127]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[125]_i_13_n_0\,
      O => \q[125]_i_8_n_0\
    );
\q[125]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[125]_i_14_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[125]_i_15_n_0\,
      O => \q[125]_i_9_n_0\
    );
\q[126]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      O => \q[126]_i_10_n_0\
    );
\q[126]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[170]_0\(0),
      I4 => \q[128]_i_14_n_0\,
      O => \q[126]_i_11_n_0\
    );
\q[126]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[170]_0\(0),
      I3 => \^q_reg[178]_0\(0),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[126]_i_12_n_0\
    );
\q[126]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[162]_0\(1),
      I1 => \^q_reg[154]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[126]_i_13_n_0\
    );
\q[126]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[126]_i_8_n_0\,
      I1 => \q[127]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[127]_i_8_n_0\,
      I5 => \q[126]_i_9_n_0\,
      O => \q_reg[11]_15\
    );
\q[126]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[129]_i_10_n_7\,
      I1 => \^q_reg[170]_0\(0),
      I2 => \^q_reg[56]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_15\
    );
\q[126]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_10_n_0\,
      I1 => \q[128]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[126]_i_10_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[126]_i_11_n_0\,
      O => \q_reg[37]_7\
    );
\q[126]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[128]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[126]_i_12_n_0\,
      O => \q[126]_i_8_n_0\
    );
\q[126]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[126]_i_13_n_0\,
      I1 => \q[130]_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[128]_i_13_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[132]_i_11_n_0\,
      O => \q[126]_i_9_n_0\
    );
\q[127]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      O => \q[127]_i_10_n_0\
    );
\q[127]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[170]_0\(1),
      I4 => \q[128]_i_14_n_0\,
      O => \q[127]_i_11_n_0\
    );
\q[127]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[170]_0\(1),
      I3 => \^q_reg[178]_0\(1),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[127]_i_12_n_0\
    );
\q[127]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[162]_0\(2),
      I1 => \^q_reg[154]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[127]_i_13_n_0\
    );
\q[127]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[127]_i_8_n_0\,
      I1 => \q[128]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[128]_i_8_n_0\,
      I5 => \q[127]_i_9_n_0\,
      O => \q_reg[11]_16\
    );
\q[127]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[129]_i_10_n_6\,
      I1 => \^q_reg[170]_0\(1),
      I2 => \^q_reg[57]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_21\
    );
\q[127]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[129]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[127]_i_10_n_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \q[127]_i_11_n_0\,
      O => \q_reg[37]_16\
    );
\q[127]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[129]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[127]_i_12_n_0\,
      O => \q[127]_i_8_n_0\
    );
\q[127]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[127]_i_13_n_0\,
      I1 => \q[131]_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[129]_i_13_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[133]_i_13_n_0\,
      O => \q[127]_i_9_n_0\
    );
\q[128]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[178]_0\(3),
      I3 => \^q_reg[39]_0\,
      O => \q[128]_i_10_n_0\
    );
\q[128]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0B08"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[170]_0\(2),
      I4 => \q[128]_i_14_n_0\,
      O => \q[128]_i_11_n_0\
    );
\q[128]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[170]_0\(2),
      I3 => \^q_reg[178]_0\(2),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[128]_i_12_n_0\
    );
\q[128]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^q_reg[162]_0\(3),
      I1 => \^q_reg[154]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[40]_0\,
      O => \q[128]_i_13_n_0\
    );
\q[128]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^writedatae\(3),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^q_reg[84]_0\(35),
      I3 => \^q_reg[178]_0\(3),
      O => \q[128]_i_14_n_0\
    );
\q[128]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[128]_i_8_n_0\,
      I1 => \q[129]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[129]_i_8_n_0\,
      I5 => \q[128]_i_9_n_0\,
      O => \q_reg[11]_1\
    );
\q[128]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[129]_i_10_n_5\,
      I1 => \^q_reg[170]_0\(2),
      I2 => \^q_reg[58]_1\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_3\
    );
\q[128]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[130]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[128]_i_10_n_0\,
      I3 => \^q_reg[38]_0\,
      I4 => \q[128]_i_11_n_0\,
      O => \q_reg[37]_8\
    );
\q[128]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[174]_0\(0),
      I4 => \^q_reg[37]_0\,
      I5 => \q[128]_i_12_n_0\,
      O => \q[128]_i_8_n_0\
    );
\q[128]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[128]_i_13_n_0\,
      I1 => \q[132]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[130]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[134]_i_12_n_0\,
      O => \q[128]_i_9_n_0\
    );
\q[129]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[170]_0\(3),
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[39]_0\,
      O => \q[129]_i_11_n_0\
    );
\q[129]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003300B8B8"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[170]_0\(3),
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[39]_0\,
      I5 => \^q_reg[40]_0\,
      O => \q[129]_i_12_n_0\
    );
\q[129]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q_reg[166]_0\(0),
      I2 => \^q_reg[158]_0\(0),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[129]_i_13_n_0\
    );
\q[129]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[129]_i_8_n_0\,
      I1 => \q[130]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[130]_i_8_n_0\,
      I5 => \q[129]_i_9_n_0\,
      O => \q_reg[11]_2\
    );
\q[129]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[129]_i_10_n_4\,
      I1 => \^q_reg[170]_0\(3),
      I2 => \^q_reg[59]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_16\
    );
\q[129]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[131]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[129]_i_11_n_0\,
      O => \q_reg[37]_17\
    );
\q[129]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[174]_0\(1),
      I4 => \^q_reg[37]_0\,
      I5 => \q[129]_i_12_n_0\,
      O => \q[129]_i_8_n_0\
    );
\q[129]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[129]_i_13_n_0\,
      I1 => \q[133]_i_13_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[131]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[135]_i_11_n_0\,
      O => \q[129]_i_9_n_0\
    );
\q[130]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[174]_0\(0),
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[39]_0\,
      O => \q[130]_i_10_n_0\
    );
\q[130]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[174]_0\(0),
      O => \q[130]_i_11_n_0\
    );
\q[130]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^q_reg[166]_0\(1),
      I2 => \^q_reg[158]_0\(1),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[130]_i_12_n_0\
    );
\q[130]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[130]_i_8_n_0\,
      I1 => \q[131]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[131]_i_8_n_0\,
      I5 => \q[130]_i_9_n_0\,
      O => \q_reg[11]_3\
    );
\q[130]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[133]_i_10_n_7\,
      I1 => \^q_reg[174]_0\(0),
      I2 => \^q_reg[60]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_9\
    );
\q[130]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[132]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[130]_i_10_n_0\,
      O => \q_reg[37]_9\
    );
\q[130]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[174]_0\(2),
      I4 => \^q_reg[37]_0\,
      I5 => \q[130]_i_11_n_0\,
      O => \q[130]_i_8_n_0\
    );
\q[130]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[130]_i_12_n_0\,
      I1 => \q[134]_i_12_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[132]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[136]_i_15_n_0\,
      O => \q[130]_i_9_n_0\
    );
\q[131]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[174]_0\(1),
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[39]_0\,
      O => \q[131]_i_10_n_0\
    );
\q[131]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => \^q_reg[178]_0\(3),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[174]_0\(3),
      O => \q[131]_i_11_n_0\
    );
\q[131]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^q_reg[166]_0\(2),
      I2 => \^q_reg[158]_0\(2),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[131]_i_12_n_0\
    );
\q[131]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \q[131]_i_8_n_0\,
      I1 => \q[132]_i_8_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[132]_i_9_n_0\,
      I5 => \q[131]_i_9_n_0\,
      O => \q_reg[11]_4\
    );
\q[131]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[61]_0\,
      I2 => \q_reg[133]_i_10_n_6\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_27\
    );
\q[131]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[133]_i_12_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[131]_i_10_n_0\,
      O => \q_reg[37]_18\
    );
\q[131]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \q[131]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \^q_reg[178]_0\(1),
      I3 => \^q_reg[38]_0\,
      I4 => \q[133]_i_14_n_0\,
      I5 => \^q_reg[174]_0\(1),
      O => \q[131]_i_8_n_0\
    );
\q[131]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[131]_i_12_n_0\,
      I1 => \q[135]_i_11_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[133]_i_13_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_19_n_0\,
      O => \q[131]_i_9_n_0\
    );
\q[132]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[38]_0\,
      I2 => \^q_reg[174]_0\(2),
      I3 => \^q_reg[40]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[39]_0\,
      O => \q[132]_i_10_n_0\
    );
\q[132]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^di\(3),
      I1 => \^q_reg[166]_0\(3),
      I2 => \^q_reg[158]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[132]_i_11_n_0\
    );
\q[132]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[132]_i_8_n_0\,
      I1 => \q[133]_i_8_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[133]_i_9_n_0\,
      I5 => \q[132]_i_9_n_0\,
      O => \q_reg[11]_5\
    );
\q[132]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[133]_i_10_n_5\,
      I1 => \^q_reg[174]_0\(2),
      I2 => \^q_reg[62]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_5\
    );
\q[132]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[134]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[132]_i_10_n_0\,
      O => \q_reg[37]_10\
    );
\q[132]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[132]_i_11_n_0\,
      I1 => \q[136]_i_15_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[134]_i_12_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_15_n_0\,
      O => \q[132]_i_8_n_0\
    );
\q[132]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[174]_0\(2),
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[178]_0\(0),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[132]_i_9_n_0\
    );
\q[133]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[38]_0\,
      O => \q[133]_i_11_n_0\
    );
\q[133]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[38]_0\,
      O => \q[133]_i_12_n_0\
    );
\q[133]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[154]_0\(0),
      I1 => \^q_reg[170]_0\(0),
      I2 => \^q_reg[162]_0\(0),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[133]_i_13_n_0\
    );
\q[133]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^writedatae\(2),
      I1 => \^q_reg[84]_0\(34),
      I2 => \^writedatae\(3),
      I3 => \q[120]_i_11_0\(0),
      I4 => \^q_reg[84]_0\(35),
      O => \q[133]_i_14_n_0\
    );
\q[133]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[133]_i_8_n_0\,
      I1 => \q[134]_i_8_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[134]_i_9_n_0\,
      I5 => \q[133]_i_9_n_0\,
      O => \q_reg[11]_6\
    );
\q[133]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[63]_0\,
      I2 => \q_reg[133]_i_10_n_4\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_25\
    );
\q[133]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[133]_i_11_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[133]_i_12_n_0\,
      O => \q_reg[37]_19\
    );
\q[133]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[133]_i_13_n_0\,
      I1 => \q[137]_i_19_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[135]_i_11_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_17_n_0\,
      O => \q[133]_i_8_n_0\
    );
\q[133]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A0F000C0C0"
    )
        port map (
      I0 => \^q_reg[178]_0\(3),
      I1 => \^q_reg[174]_0\(3),
      I2 => \q[133]_i_14_n_0\,
      I3 => \^q_reg[178]_0\(1),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[133]_i_9_n_0\
    );
\q[134]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[38]_0\,
      O => \q[134]_i_10_n_0\
    );
\q[134]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[38]_0\,
      O => \q[134]_i_11_n_0\
    );
\q[134]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[154]_0\(1),
      I1 => \^q_reg[170]_0\(1),
      I2 => \^q_reg[162]_0\(1),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[134]_i_12_n_0\
    );
\q[134]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => \q[134]_i_8_n_0\,
      I1 => \q[135]_i_9_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[135]_i_10_n_0\,
      I5 => \q[134]_i_9_n_0\,
      O => \q_reg[11]_7\
    );
\q[134]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[137]_i_12_n_7\,
      I1 => \^q_reg[178]_0\(0),
      I2 => \^q_reg[64]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_13\
    );
\q[134]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[134]_i_10_n_0\,
      I1 => \^q_reg[37]_0\,
      I2 => \q[134]_i_11_n_0\,
      O => \q_reg[37]_11\
    );
\q[134]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[134]_i_12_n_0\,
      I1 => \q[137]_i_15_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[136]_i_15_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_13_n_0\,
      O => \q[134]_i_8_n_0\
    );
\q[134]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003000202"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(2),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[134]_i_9_n_0\
    );
\q[135]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003000202"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[40]_0\,
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[178]_0\(3),
      I4 => \^q_reg[37]_0\,
      I5 => \^q_reg[38]_0\,
      O => \q[135]_i_10_n_0\
    );
\q[135]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[154]_0\(2),
      I1 => \^q_reg[170]_0\(2),
      I2 => \^q_reg[162]_0\(2),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[135]_i_11_n_0\
    );
\q[135]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFECCFECFCECCCE"
    )
        port map (
      I0 => \q[136]_i_13_n_0\,
      I1 => \q[135]_i_8_n_0\,
      I2 => \q_reg[95]_0\(0),
      I3 => \^q_reg[36]_0\,
      I4 => \q[135]_i_9_n_0\,
      I5 => \q[135]_i_10_n_0\,
      O => \q_reg[11]_8\
    );
\q[135]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[65]_0\,
      I2 => \q_reg[137]_i_12_n_6\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_29\
    );
\q[135]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => \^q_reg[178]_0\(1),
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[38]_0\,
      O => \q_reg[37]_20\
    );
\q[135]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[178]_0\(2),
      I3 => \q[137]_i_11_n_0\,
      I4 => \q[136]_i_16_n_0\,
      O => \q[135]_i_8_n_0\
    );
\q[135]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[135]_i_11_n_0\,
      I1 => \q[137]_i_17_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[137]_i_19_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_20_n_0\,
      O => \q[135]_i_9_n_0\
    );
\q[136]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^q_reg[84]_0\(31),
      I3 => \q_reg[95]_0\(0),
      O => \q[136]_i_10_n_0\
    );
\q[136]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[178]_0\(2),
      I3 => \q_reg[107]_0\,
      I4 => \q[137]_i_11_n_0\,
      O => \q[136]_i_11_n_0\
    );
\q[136]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^q_reg[84]_0\(31),
      I3 => \q_reg[95]_0\(0),
      O => \q[136]_i_12_n_0\
    );
\q[136]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[136]_i_15_n_0\,
      I1 => \q[137]_i_13_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[137]_i_15_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_16_n_0\,
      O => \q[136]_i_13_n_0\
    );
\q[136]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \q[136]_i_16_n_0\,
      I1 => \q[137]_i_11_n_0\,
      I2 => \q[137]_i_10_n_0\,
      O => \q[136]_i_14_n_0\
    );
\q[136]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => \^q_reg[154]_0\(3),
      I1 => \^q_reg[170]_0\(3),
      I2 => \^q_reg[162]_0\(3),
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[40]_0\,
      O => \q[136]_i_15_n_0\
    );
\q[136]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^d\(0),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^q_reg[84]_0\(31),
      I3 => \q_reg[95]_0\(0),
      O => \q[136]_i_16_n_0\
    );
\q[136]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \q[136]_i_10_n_0\,
      I1 => \q[137]_i_9_n_0\,
      I2 => \q[136]_i_11_n_0\,
      I3 => \q[136]_i_12_n_0\,
      I4 => \q[136]_i_13_n_0\,
      I5 => \q[136]_i_14_n_0\,
      O => \q_reg[10]_0\
    );
\q[136]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AA00AA3CAA"
    )
        port map (
      I0 => \q_reg[137]_i_12_n_5\,
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[66]_0\,
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_1\
    );
\q[136]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => \^q_reg[178]_0\(2),
      I2 => \^q_reg[40]_0\,
      I3 => \^q_reg[39]_0\,
      I4 => \^q_reg[178]_0\(3),
      I5 => \^q_reg[38]_0\,
      O => \q_reg[37]_12\
    );
\q[137]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q_reg[40]_0\,
      I1 => \^q_reg[39]_0\,
      I2 => \^q_reg[178]_0\(3),
      O => \q[137]_i_10_n_0\
    );
\q[137]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[37]_0\,
      I1 => \^q_reg[38]_0\,
      O => \q[137]_i_11_n_0\
    );
\q[137]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[174]_0\(3),
      I1 => \^q_reg[158]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(3),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[166]_0\(3),
      O => \q[137]_i_13_n_0\
    );
\q[137]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(3),
      I1 => \^q_reg[162]_0\(3),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[154]_0\(3),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[170]_0\(3),
      O => \q[137]_i_14_n_0\
    );
\q[137]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[174]_0\(1),
      I1 => \^q_reg[158]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[166]_0\(1),
      O => \q[137]_i_15_n_0\
    );
\q[137]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(1),
      I1 => \^q_reg[162]_0\(1),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[154]_0\(1),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[170]_0\(1),
      O => \q[137]_i_16_n_0\
    );
\q[137]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[174]_0\(2),
      I1 => \^q_reg[158]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[166]_0\(2),
      O => \q[137]_i_17_n_0\
    );
\q[137]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(2),
      I1 => \^q_reg[162]_0\(2),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[154]_0\(2),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[170]_0\(2),
      O => \q[137]_i_18_n_0\
    );
\q[137]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[174]_0\(0),
      I1 => \^q_reg[158]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^di\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[166]_0\(0),
      O => \q[137]_i_19_n_0\
    );
\q[137]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q_reg[178]_0\(0),
      I1 => \^q_reg[162]_0\(0),
      I2 => \^q_reg[39]_0\,
      I3 => \^q_reg[154]_0\(0),
      I4 => \^q_reg[40]_0\,
      I5 => \^q_reg[170]_0\(0),
      O => \q[137]_i_20_n_0\
    );
\q[137]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CCAA0000CCAA"
    )
        port map (
      I0 => \q[137]_i_8_n_0\,
      I1 => \q[137]_i_9_n_0\,
      I2 => \q[137]_i_10_n_0\,
      I3 => \^q_reg[36]_0\,
      I4 => \q_reg[95]_0\(0),
      I5 => \q[137]_i_11_n_0\,
      O => \q_reg[11]_0\
    );
\q[137]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000F066F0"
    )
        port map (
      I0 => \^q_reg[67]_0\,
      I1 => \^q_reg[178]_0\(3),
      I2 => \^q_reg[178]_1\(0),
      I3 => \q_reg[95]_0\(2),
      I4 => \q_reg[95]_0\(0),
      I5 => \q_reg[95]_0\(1),
      O => \q_reg[13]_31\
    );
\q[137]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \q[137]_i_13_n_0\,
      I1 => \q[137]_i_14_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[137]_i_15_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_16_n_0\,
      O => \q[137]_i_8_n_0\
    );
\q[137]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \q[137]_i_17_n_0\,
      I1 => \q[137]_i_18_n_0\,
      I2 => \^q_reg[37]_0\,
      I3 => \q[137]_i_19_n_0\,
      I4 => \^q_reg[38]_0\,
      I5 => \q[137]_i_20_n_0\,
      O => \q[137]_i_9_n_0\
    );
\q[28]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(0),
      I2 => PCPlus4F(0),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]_0\(0),
      O => \q_reg[15]_0\(0)
    );
\q[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(1),
      I2 => PCPlus4F(1),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]_0\(1),
      O => \q_reg[15]_0\(1)
    );
\q[30]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD800D8"
    )
        port map (
      I0 => PCSrcE(0),
      I1 => O(2),
      I2 => PCPlus4F(2),
      I3 => \PCSrc1__6\,
      I4 => \q_reg[31]_0\(2),
      O => \q_reg[15]_0\(2)
    );
\q[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q_reg[84]_0\(66),
      I1 => \q[31]_i_6_0\(8),
      I2 => \q[31]_i_6_0\(9),
      I3 => \^q_reg[84]_0\(67),
      I4 => \q[31]_i_6_0\(7),
      I5 => \^q_reg[84]_0\(65),
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => PCReady,
      I1 => \^q_reg[18]_0\,
      O => E(0)
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
      I4 => \q_reg[31]_0\(3),
      O => \q_reg[15]_0\(3)
    );
\q[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \^writedatae\(30),
      I1 => \q[120]_i_11_0\(0),
      I2 => \^q_reg[84]_0\(62),
      I3 => \q_reg[95]_0\(0),
      O => \condinvb__0\(0)
    );
\q[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88888A888888888"
    )
        port map (
      I0 => \q_reg[95]_0\(4),
      I1 => \q[31]_i_6_n_0\,
      I2 => \q[31]_i_7_n_0\,
      I3 => \^q_reg[84]_0\(65),
      I4 => \q[31]_i_6_0\(2),
      I5 => \q[31]_i_8_n_0\,
      O => \^q_reg[18]_0\
    );
\q[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q_reg[84]_0\(63),
      I1 => \q[31]_i_6_0\(5),
      I2 => \^q_reg[84]_0\(64),
      I3 => \q[31]_i_6_0\(6),
      I4 => \q[31]_i_14_n_0\,
      O => \q[31]_i_6_n_0\
    );
\q[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[84]_0\(64),
      I1 => \q[31]_i_6_0\(1),
      I2 => \q[31]_i_6_0\(0),
      I3 => \^q_reg[84]_0\(63),
      O => \q[31]_i_7_n_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q_reg[84]_0\(66),
      I1 => \q[31]_i_6_0\(3),
      I2 => \q[31]_i_6_0\(4),
      I3 => \^q_reg[84]_0\(67),
      O => \q[31]_i_8_n_0\
    );
\q[74]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(0),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(0),
      I4 => ForwardBE(1),
      I5 => Q(5),
      O => \^d\(0)
    );
\q[75]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => \q[78]_i_2_n_0\,
      I1 => \hu/ForwardBE10_out\,
      I2 => ResultW(1),
      I3 => RD2E(1),
      I4 => ForwardBE(1),
      I5 => Q(6),
      O => \^writedatae\(0)
    );
\q[76]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => \q[78]_i_2_n_0\,
      I1 => \hu/ForwardBE10_out\,
      I2 => ResultW(2),
      I3 => RD2E(2),
      I4 => ForwardBE(1),
      I5 => Q(7),
      O => \^writedatae\(1)
    );
\q[77]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => \q[78]_i_2_n_0\,
      I1 => \hu/ForwardBE10_out\,
      I2 => ResultW(3),
      I3 => RD2E(3),
      I4 => ForwardBE(1),
      I5 => Q(8),
      O => \^writedatae\(2)
    );
\q[78]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => \q[78]_i_2_n_0\,
      I1 => \hu/ForwardBE10_out\,
      I2 => ResultW(4),
      I3 => RD2E(4),
      I4 => ForwardBE(1),
      I5 => Q(9),
      O => \^writedatae\(3)
    );
\q[78]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000000000"
    )
        port map (
      I0 => \q[105]_i_6_n_0\,
      I1 => \q[105]_i_3_0\(1),
      I2 => Rs2E(1),
      I3 => RegWriteW,
      I4 => \q[78]_i_4_n_0\,
      I5 => \q_reg[78]_2\,
      O => \q[78]_i_2_n_0\
    );
\q[78]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => \q_reg[78]_1\(0),
      I1 => Rs2E(1),
      I2 => Q(1),
      I3 => \q[105]_i_8_n_0\,
      I4 => \q_reg[105]_0\,
      O => \hu/ForwardBE10_out\
    );
\q[78]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(2),
      I1 => \q[105]_i_3_0\(2),
      I2 => \q[105]_i_3_0\(3),
      I3 => Rs2E(3),
      O => \q[78]_i_4_n_0\
    );
\q[79]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(5),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(5),
      I4 => ForwardBE(1),
      I5 => Q(10),
      O => \^writedatae\(4)
    );
\q[80]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(6),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(6),
      I4 => ForwardBE(1),
      I5 => Q(11),
      O => \^writedatae\(5)
    );
\q[81]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(7),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(7),
      I4 => ForwardBE(1),
      I5 => Q(12),
      O => \^writedatae\(6)
    );
\q[82]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(8),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(8),
      I4 => ForwardBE(1),
      I5 => Q(13),
      O => \^writedatae\(7)
    );
\q[83]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(9),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(9),
      I4 => ForwardBE(1),
      I5 => Q(14),
      O => \^writedatae\(8)
    );
\q[84]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(10),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(10),
      I4 => ForwardBE(1),
      I5 => Q(15),
      O => \^writedatae\(9)
    );
\q[85]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(11),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(11),
      I4 => ForwardBE(1),
      I5 => Q(16),
      O => \^writedatae\(10)
    );
\q[86]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(12),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(12),
      I4 => ForwardBE(1),
      I5 => Q(17),
      O => \^writedatae\(11)
    );
\q[87]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(13),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(13),
      I4 => ForwardBE(1),
      I5 => Q(18),
      O => \^writedatae\(12)
    );
\q[88]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(14),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(14),
      I4 => ForwardBE(1),
      I5 => Q(19),
      O => \^writedatae\(13)
    );
\q[89]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(15),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(15),
      I4 => ForwardBE(1),
      I5 => Q(20),
      O => \^writedatae\(14)
    );
\q[90]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(16),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(16),
      I4 => ForwardBE(1),
      I5 => Q(21),
      O => \^writedatae\(15)
    );
\q[91]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(17),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(17),
      I4 => ForwardBE(1),
      I5 => Q(22),
      O => \^writedatae\(16)
    );
\q[92]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(18),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(18),
      I4 => ForwardBE(1),
      I5 => Q(23),
      O => \^writedatae\(17)
    );
\q[93]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(19),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(19),
      I4 => ForwardBE(1),
      I5 => Q(24),
      O => \^writedatae\(18)
    );
\q[94]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(20),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(20),
      I4 => ForwardBE(1),
      I5 => Q(25),
      O => \^writedatae\(19)
    );
\q[95]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(21),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(21),
      I4 => ForwardBE(1),
      I5 => Q(26),
      O => \^writedatae\(20)
    );
\q[96]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(22),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(22),
      I4 => ForwardBE(1),
      I5 => Q(27),
      O => \^writedatae\(21)
    );
\q[97]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(23),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(23),
      I4 => ForwardBE(1),
      I5 => Q(28),
      O => \^writedatae\(22)
    );
\q[98]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(24),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(24),
      I4 => ForwardBE(1),
      I5 => Q(29),
      O => \^writedatae\(23)
    );
\q[99]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[105]_i_2_n_0\,
      I1 => ResultW(25),
      I2 => \q[105]_i_3_n_0\,
      I3 => RD2E(25),
      I4 => ForwardBE(1),
      I5 => Q(30),
      O => \^writedatae\(24)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(0),
      Q => \^q_reg[84]_0\(0)
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(95),
      Q => PCE(17)
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(96),
      Q => PCE(18)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(97),
      Q => PCE(19)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(98),
      Q => PCE(20)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(99),
      Q => PCE(21)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(100),
      Q => PCE(22)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(101),
      Q => PCE(23)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(102),
      Q => PCE(24)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(103),
      Q => PCE(25)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(104),
      Q => PCE(26)
    );
\q_reg[109]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[109]_i_8_n_0\,
      CO(2) => \q_reg[109]_i_8_n_1\,
      CO(1) => \q_reg[109]_i_8_n_2\,
      CO(0) => \q_reg[109]_i_8_n_3\,
      CYINIT => \q[106]_i_3_0\(0),
      DI(3 downto 0) => \^di\(3 downto 0),
      O(3) => \q_reg[109]_i_8_n_4\,
      O(2) => \q_reg[109]_i_8_n_5\,
      O(1) => \q_reg[109]_i_8_n_6\,
      O(0) => \q_reg[109]_i_8_n_7\,
      S(3 downto 0) => \q[106]_i_3_1\(3 downto 0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(5),
      Q => \^q_reg[84]_0\(5)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(105),
      Q => PCE(27)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(106),
      Q => PCE(28)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(107),
      Q => PCE(29)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(108),
      Q => PCE(30)
    );
\q_reg[113]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[109]_i_8_n_0\,
      CO(3) => \q_reg[113]_i_10_n_0\,
      CO(2) => \q_reg[113]_i_10_n_1\,
      CO(1) => \q_reg[113]_i_10_n_2\,
      CO(0) => \q_reg[113]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[154]_0\(3 downto 0),
      O(3) => \q_reg[113]_i_10_n_4\,
      O(2) => \q_reg[113]_i_10_n_5\,
      O(1) => \q_reg[113]_i_10_n_6\,
      O(0) => \q_reg[113]_i_10_n_7\,
      S(3 downto 0) => \q[110]_i_4_0\(3 downto 0)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(109),
      Q => PCE(31)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(110),
      Q => RD2E(0)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(111),
      Q => RD2E(1)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(112),
      Q => RD2E(2)
    );
\q_reg[117]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[113]_i_10_n_0\,
      CO(3) => \q_reg[117]_i_8_n_0\,
      CO(2) => \q_reg[117]_i_8_n_1\,
      CO(1) => \q_reg[117]_i_8_n_2\,
      CO(0) => \q_reg[117]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[158]_0\(3 downto 0),
      O(3) => \q_reg[117]_i_8_n_4\,
      O(2) => \q_reg[117]_i_8_n_5\,
      O(1) => \q_reg[117]_i_8_n_6\,
      O(0) => \q_reg[117]_i_8_n_7\,
      S(3 downto 0) => \q[114]_i_3_0\(3 downto 0)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(113),
      Q => RD2E(3)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(114),
      Q => RD2E(4)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(6),
      Q => \^q_reg[84]_0\(6)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(115),
      Q => RD2E(5)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(116),
      Q => RD2E(6)
    );
\q_reg[121]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[117]_i_8_n_0\,
      CO(3) => \q_reg[121]_i_8_n_0\,
      CO(2) => \q_reg[121]_i_8_n_1\,
      CO(1) => \q_reg[121]_i_8_n_2\,
      CO(0) => \q_reg[121]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[162]_0\(3 downto 0),
      O(3) => \q_reg[121]_i_8_n_4\,
      O(2) => \q_reg[121]_i_8_n_5\,
      O(1) => \q_reg[121]_i_8_n_6\,
      O(0) => \q_reg[121]_i_8_n_7\,
      S(3 downto 0) => \q[118]_i_3_0\(3 downto 0)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(117),
      Q => RD2E(7)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(118),
      Q => RD2E(8)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(119),
      Q => RD2E(9)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(120),
      Q => RD2E(10)
    );
\q_reg[125]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[121]_i_8_n_0\,
      CO(3) => \q_reg[125]_i_10_n_0\,
      CO(2) => \q_reg[125]_i_10_n_1\,
      CO(1) => \q_reg[125]_i_10_n_2\,
      CO(0) => \q_reg[125]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[166]_0\(3 downto 0),
      O(3) => \q_reg[125]_i_10_n_4\,
      O(2) => \q_reg[125]_i_10_n_5\,
      O(1) => \q_reg[125]_i_10_n_6\,
      O(0) => \q_reg[125]_i_10_n_7\,
      S(3 downto 0) => \q[122]_i_4_0\(3 downto 0)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(121),
      Q => RD2E(11)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(122),
      Q => RD2E(12)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(123),
      Q => RD2E(13)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(124),
      Q => RD2E(14)
    );
\q_reg[129]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[125]_i_10_n_0\,
      CO(3) => \q_reg[129]_i_10_n_0\,
      CO(2) => \q_reg[129]_i_10_n_1\,
      CO(1) => \q_reg[129]_i_10_n_2\,
      CO(0) => \q_reg[129]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[170]_0\(3 downto 0),
      O(3) => \q_reg[129]_i_10_n_4\,
      O(2) => \q_reg[129]_i_10_n_5\,
      O(1) => \q_reg[129]_i_10_n_6\,
      O(0) => \q_reg[129]_i_10_n_7\,
      S(3 downto 0) => \q[126]_i_4_0\(3 downto 0)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(7),
      Q => \^q_reg[84]_0\(7)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(125),
      Q => RD2E(15)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(126),
      Q => RD2E(16)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(127),
      Q => RD2E(17)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(128),
      Q => RD2E(18)
    );
\q_reg[133]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[129]_i_10_n_0\,
      CO(3) => \q_reg[133]_i_10_n_0\,
      CO(2) => \q_reg[133]_i_10_n_1\,
      CO(1) => \q_reg[133]_i_10_n_2\,
      CO(0) => \q_reg[133]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[174]_0\(3 downto 0),
      O(3) => \q_reg[133]_i_10_n_4\,
      O(2) => \q_reg[133]_i_10_n_5\,
      O(1) => \q_reg[133]_i_10_n_6\,
      O(0) => \q_reg[133]_i_10_n_7\,
      S(3 downto 0) => \q[130]_i_4_0\(3 downto 0)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(129),
      Q => RD2E(19)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(130),
      Q => RD2E(20)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(131),
      Q => RD2E(21)
    );
\q_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(132),
      Q => RD2E(22)
    );
\q_reg[137]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[133]_i_10_n_0\,
      CO(3) => \q_reg[137]_i_12_n_0\,
      CO(2) => \q_reg[137]_i_12_n_1\,
      CO(1) => \q_reg[137]_i_12_n_2\,
      CO(0) => \q_reg[137]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]_0\(3 downto 0),
      O(3) => \^q_reg[178]_1\(0),
      O(2) => \q_reg[137]_i_12_n_5\,
      O(1) => \q_reg[137]_i_12_n_6\,
      O(0) => \q_reg[137]_i_12_n_7\,
      S(3 downto 0) => \q[134]_i_4_0\(3 downto 0)
    );
\q_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(133),
      Q => RD2E(23)
    );
\q_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(134),
      Q => RD2E(24)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(8),
      Q => \^q_reg[84]_0\(8)
    );
\q_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(135),
      Q => RD2E(25)
    );
\q_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(136),
      Q => RD2E(26)
    );
\q_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(137),
      Q => RD2E(27)
    );
\q_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(138),
      Q => RD2E(28)
    );
\q_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(139),
      Q => RD2E(29)
    );
\q_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(140),
      Q => RD2E(30)
    );
\q_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(141),
      Q => RD2E(31)
    );
\q_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(142),
      Q => RD1E(0)
    );
\q_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(143),
      Q => RD1E(1)
    );
\q_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(144),
      Q => RD1E(2)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(9),
      Q => \^q_reg[84]_0\(9)
    );
\q_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(145),
      Q => RD1E(3)
    );
\q_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(146),
      Q => RD1E(4)
    );
\q_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(147),
      Q => RD1E(5)
    );
\q_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(148),
      Q => RD1E(6)
    );
\q_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(149),
      Q => RD1E(7)
    );
\q_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(150),
      Q => RD1E(8)
    );
\q_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(151),
      Q => RD1E(9)
    );
\q_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(152),
      Q => RD1E(10)
    );
\q_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(153),
      Q => RD1E(11)
    );
\q_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(154),
      Q => RD1E(12)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(10),
      Q => \^q_reg[84]_0\(10)
    );
\q_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(155),
      Q => RD1E(13)
    );
\q_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(156),
      Q => RD1E(14)
    );
\q_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(157),
      Q => RD1E(15)
    );
\q_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(158),
      Q => RD1E(16)
    );
\q_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(159),
      Q => RD1E(17)
    );
\q_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(160),
      Q => RD1E(18)
    );
\q_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(161),
      Q => RD1E(19)
    );
\q_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(162),
      Q => RD1E(20)
    );
\q_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(163),
      Q => RD1E(21)
    );
\q_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(164),
      Q => RD1E(22)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(11),
      Q => \^q_reg[84]_0\(11)
    );
\q_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(165),
      Q => RD1E(23)
    );
\q_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(166),
      Q => RD1E(24)
    );
\q_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(167),
      Q => RD1E(25)
    );
\q_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(168),
      Q => RD1E(26)
    );
\q_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(169),
      Q => RD1E(27)
    );
\q_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(170),
      Q => RD1E(28)
    );
\q_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(171),
      Q => RD1E(29)
    );
\q_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(172),
      Q => RD1E(30)
    );
\q_reg[178]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(173),
      Q => RD1E(31)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(12),
      Q => \^q_reg[84]_0\(12)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(13),
      Q => \^q_reg[84]_0\(13)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(14),
      Q => \^q_reg[84]_0\(14)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(15),
      Q => \^q_reg[84]_0\(15)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(16),
      Q => \^q_reg[84]_0\(16)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(17),
      Q => \^q_reg[84]_0\(17)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(18),
      Q => \^q_reg[84]_0\(18)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(19),
      Q => \^q_reg[84]_0\(19)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(20),
      Q => \^q_reg[84]_0\(20)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(21),
      Q => \^q_reg[84]_0\(21)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(22),
      Q => \^q_reg[84]_0\(22)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(23),
      Q => \^q_reg[84]_0\(23)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(24),
      Q => \^q_reg[84]_0\(24)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(25),
      Q => \^q_reg[84]_0\(25)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(26),
      Q => \^q_reg[84]_0\(26)
    );
\q_reg[31]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[137]_i_12_n_0\,
      CO(3 downto 1) => \NLW_q_reg[31]_i_24_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \q_reg[137]_i_12_0\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_q_reg[31]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(27),
      Q => \^q_reg[84]_0\(27)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(28),
      Q => \^q_reg[84]_0\(28)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(29),
      Q => \^q_reg[84]_0\(29)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(30),
      Q => \^q_reg[84]_0\(30)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(31),
      Q => \^q_reg[84]_0\(31)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(32),
      Q => \^q_reg[84]_0\(32)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(33),
      Q => \^q_reg[84]_0\(33)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(34),
      Q => \^q_reg[84]_0\(34)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(35),
      Q => \^q_reg[84]_0\(35)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(36),
      Q => \^q_reg[84]_0\(36)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(37),
      Q => \^q_reg[84]_0\(37)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(38),
      Q => \^q_reg[84]_0\(38)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(39),
      Q => \^q_reg[84]_0\(39)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(40),
      Q => \^q_reg[84]_0\(40)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(41),
      Q => \^q_reg[84]_0\(41)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(42),
      Q => \^q_reg[84]_0\(42)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(43),
      Q => \^q_reg[84]_0\(43)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(44),
      Q => \^q_reg[84]_0\(44)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(45),
      Q => \^q_reg[84]_0\(45)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(46),
      Q => \^q_reg[84]_0\(46)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(47),
      Q => \^q_reg[84]_0\(47)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(48),
      Q => \^q_reg[84]_0\(48)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(49),
      Q => \^q_reg[84]_0\(49)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(50),
      Q => \^q_reg[84]_0\(50)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(51),
      Q => \^q_reg[84]_0\(51)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(52),
      Q => \^q_reg[84]_0\(52)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(53),
      Q => \^q_reg[84]_0\(53)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(54),
      Q => \^q_reg[84]_0\(54)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(55),
      Q => \^q_reg[84]_0\(55)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(56),
      Q => \^q_reg[84]_0\(56)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(57),
      Q => \^q_reg[84]_0\(57)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(58),
      Q => \^q_reg[84]_0\(58)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(59),
      Q => \^q_reg[84]_0\(59)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(60),
      Q => \^q_reg[84]_0\(60)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(61),
      Q => \^q_reg[84]_0\(61)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(62),
      Q => \^q_reg[84]_0\(62)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(63),
      Q => \^q_reg[84]_0\(63)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(64),
      Q => \^q_reg[84]_0\(64)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(1),
      Q => \^q_reg[84]_0\(1)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(65),
      Q => \^q_reg[84]_0\(65)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(66),
      Q => \^q_reg[84]_0\(66)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(67),
      Q => \^q_reg[84]_0\(67)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(68),
      Q => \^q_reg[84]_0\(68)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(69),
      Q => Rs2E(1)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(70),
      Q => Rs2E(2)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(71),
      Q => Rs2E(3)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(72),
      Q => \^q_reg[84]_0\(69)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(73),
      Q => \^q_reg[84]_0\(70)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(74),
      Q => \^q_reg[84]_0\(71)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(2),
      Q => \^q_reg[84]_0\(2)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(75),
      Q => \^q_reg[84]_0\(72)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(76),
      Q => \^q_reg[84]_0\(73)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(77),
      Q => \^q_reg[84]_0\(74)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(78),
      Q => \^q_reg[84]_0\(75)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(79),
      Q => \^q_reg[84]_0\(76)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(80),
      Q => PCE(2)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(81),
      Q => PCE(3)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(82),
      Q => PCE(4)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(83),
      Q => PCE(5)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(84),
      Q => PCE(6)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(3),
      Q => \^q_reg[84]_0\(3)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(85),
      Q => PCE(7)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(86),
      Q => PCE(8)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(87),
      Q => PCE(9)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(88),
      Q => PCE(10)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(89),
      Q => PCE(11)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(90),
      Q => PCE(12)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(91),
      Q => PCE(13)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(92),
      Q => PCE(14)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(93),
      Q => PCE(15)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(94),
      Q => PCE(16)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[178]_2\(4),
      Q => \^q_reg[84]_0\(4)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(38),
      I1 => PCE(7),
      O => \q_reg[43]_1\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(37),
      I1 => PCE(6),
      O => \q_reg[43]_1\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(36),
      I1 => PCE(5),
      O => \q_reg[43]_1\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(35),
      I1 => PCE(4),
      O => \q_reg[43]_1\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(42),
      I1 => PCE(11),
      O => \q_reg[47]_1\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(41),
      I1 => PCE(10),
      O => \q_reg[47]_1\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(40),
      I1 => PCE(9),
      O => \q_reg[47]_1\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(39),
      I1 => PCE(8),
      O => \q_reg[47]_1\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(46),
      I1 => PCE(15),
      O => \q_reg[51]_1\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(45),
      I1 => PCE(14),
      O => \q_reg[51]_1\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(44),
      I1 => PCE(13),
      O => \q_reg[51]_1\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(43),
      I1 => PCE(12),
      O => \q_reg[51]_1\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(50),
      I1 => PCE(19),
      O => \q_reg[55]_1\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(49),
      I1 => PCE(18),
      O => \q_reg[55]_1\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(48),
      I1 => PCE(17),
      O => \q_reg[55]_1\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(47),
      I1 => PCE(16),
      O => \q_reg[55]_1\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(54),
      I1 => PCE(23),
      O => \q_reg[59]_1\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(53),
      I1 => PCE(22),
      O => \q_reg[59]_1\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(52),
      I1 => PCE(21),
      O => \q_reg[59]_1\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(51),
      I1 => PCE(20),
      O => \q_reg[59]_1\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(58),
      I1 => PCE(27),
      O => \q_reg[63]_1\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(57),
      I1 => PCE(26),
      O => \q_reg[63]_1\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(56),
      I1 => PCE(25),
      O => \q_reg[63]_1\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(55),
      I1 => PCE(24),
      O => \q_reg[63]_1\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(62),
      I1 => PCE(31),
      O => \q_reg[67]_2\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(61),
      I1 => PCE(30),
      O => \q_reg[67]_2\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(60),
      I1 => PCE(29),
      O => \q_reg[67]_2\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(59),
      I1 => PCE(28),
      O => \q_reg[67]_2\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(34),
      I1 => PCE(3),
      O => \q_reg[39]_1\(3)
    );
y_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(33),
      I1 => PCE(2),
      O => \q_reg[39]_1\(2)
    );
y_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(32),
      I1 => \^q_reg[84]_0\(76),
      O => \q_reg[39]_1\(1)
    );
y_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[84]_0\(31),
      I1 => \^q_reg[84]_0\(75),
      O => \q_reg[39]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_load is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_top_0_0_load;

architecture STRUCTURE of design_1_top_0_0_load is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Data_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[18]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[18]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[24]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[24]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[25]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[25]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[26]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[26]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[27]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[27]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[28]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[28]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[29]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[29]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[30]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[30]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[31]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \Data_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \Data_reg[9]\ : label is "VCC:GE GND:CLR";
begin
\Data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\Data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => E(0),
      GE => '1',
      Q => Q(10)
    );
\Data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => Q(11)
    );
\Data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => Q(12)
    );
\Data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => Q(13)
    );
\Data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => Q(14)
    );
\Data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => E(0),
      GE => '1',
      Q => Q(15)
    );
\Data_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(16),
      G => E(0),
      GE => '1',
      Q => Q(16)
    );
\Data_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(17),
      G => E(0),
      GE => '1',
      Q => Q(17)
    );
\Data_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(18),
      G => E(0),
      GE => '1',
      Q => Q(18)
    );
\Data_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(19),
      G => E(0),
      GE => '1',
      Q => Q(19)
    );
\Data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => Q(1)
    );
\Data_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(20),
      G => E(0),
      GE => '1',
      Q => Q(20)
    );
\Data_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(21),
      G => E(0),
      GE => '1',
      Q => Q(21)
    );
\Data_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(22),
      G => E(0),
      GE => '1',
      Q => Q(22)
    );
\Data_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(23),
      G => E(0),
      GE => '1',
      Q => Q(23)
    );
\Data_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(24),
      G => E(0),
      GE => '1',
      Q => Q(24)
    );
\Data_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(25),
      G => E(0),
      GE => '1',
      Q => Q(25)
    );
\Data_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(26),
      G => E(0),
      GE => '1',
      Q => Q(26)
    );
\Data_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(27),
      G => E(0),
      GE => '1',
      Q => Q(27)
    );
\Data_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(28),
      G => E(0),
      GE => '1',
      Q => Q(28)
    );
\Data_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(29),
      G => E(0),
      GE => '1',
      Q => Q(29)
    );
\Data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => Q(2)
    );
\Data_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(30),
      G => E(0),
      GE => '1',
      Q => Q(30)
    );
\Data_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(31),
      G => E(0),
      GE => '1',
      Q => Q(31)
    );
\Data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => Q(3)
    );
\Data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => Q(4)
    );
\Data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => Q(5)
    );
\Data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => Q(6)
    );
\Data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => Q(7)
    );
\Data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => Q(8)
    );
\Data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_regfile is
  port (
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ResultW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWriteW : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[140]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC
  );
end design_1_top_0_0_regfile;

architecture STRUCTURE of design_1_top_0_0_regfile is
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of rf_reg_r1_0_31_0_5 : label is "MLO";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r1_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_0_5 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r2_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(1 downto 0),
      DIB(1 downto 0) => ResultW(3 downto 2),
      DIC(1 downto 0) => ResultW(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(13 downto 12),
      DIB(1 downto 0) => ResultW(15 downto 14),
      DIC(1 downto 0) => ResultW(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(19 downto 18),
      DIB(1 downto 0) => ResultW(21 downto 20),
      DIC(1 downto 0) => ResultW(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(25 downto 24),
      DIB(1 downto 0) => ResultW(27 downto 26),
      DIC(1 downto 0) => ResultW(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(30),
      DPO => rd10(30),
      DPRA0 => \q_reg[140]\(0),
      DPRA1 => \q_reg[140]\(1),
      DPRA2 => \q_reg[140]\(2),
      DPRA3 => \q_reg[140]\(3),
      DPRA4 => \q_reg[140]\(4),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWriteW
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(31),
      DPO => rd10(31),
      DPRA0 => \q_reg[140]\(0),
      DPRA1 => \q_reg[140]\(1),
      DPRA2 => \q_reg[140]\(2),
      DPRA3 => \q_reg[140]\(3),
      DPRA4 => \q_reg[140]\(4),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[140]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(7 downto 6),
      DIB(1 downto 0) => ResultW(9 downto 8),
      DIC(1 downto 0) => ResultW(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(1 downto 0),
      DIB(1 downto 0) => ResultW(3 downto 2),
      DIC(1 downto 0) => ResultW(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(13 downto 12),
      DIB(1 downto 0) => ResultW(15 downto 14),
      DIC(1 downto 0) => ResultW(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(19 downto 18),
      DIB(1 downto 0) => ResultW(21 downto 20),
      DIC(1 downto 0) => ResultW(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(25 downto 24),
      DIB(1 downto 0) => ResultW(27 downto 26),
      DIC(1 downto 0) => ResultW(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(30),
      DPO => rd20(30),
      DPRA0 => \q_reg[140]\(5),
      DPRA1 => \q_reg[140]\(6),
      DPRA2 => \q_reg[140]\(7),
      DPRA3 => \q_reg[140]\(8),
      DPRA4 => \q_reg[140]\(9),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => RegWriteW
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => ResultW(31),
      DPO => rd20(31),
      DPRA0 => \q_reg[140]\(5),
      DPRA1 => \q_reg[140]\(6),
      DPRA2 => \q_reg[140]\(7),
      DPRA3 => \q_reg[140]\(8),
      DPRA4 => \q_reg[140]\(9),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => RegWriteW
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[140]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => ResultW(7 downto 6),
      DIB(1 downto 0) => ResultW(9 downto 8),
      DIC(1 downto 0) => ResultW(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWriteW
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
    RegWriteW : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    funct3E : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    PCSrcE : out STD_LOGIC_VECTOR ( 0 to 0 );
    FlushE : out STD_LOGIC;
    \q_reg[12]\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ovfE : out STD_LOGIC;
    \q_reg[11]\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[18]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[12]_0\ : out STD_LOGIC;
    \PCSrc1__6\ : out STD_LOGIC;
    \readDataM[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[3]\ : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \q_reg[16]\ : out STD_LOGIC;
    \q_reg[11]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[104]\ : in STD_LOGIC;
    \q_reg[136]\ : in STD_LOGIC;
    \q_reg[136]_0\ : in STD_LOGIC;
    \q_reg[137]\ : in STD_LOGIC;
    \q_reg[137]_0\ : in STD_LOGIC;
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
    \q_reg[134]_0\ : in STD_LOGIC;
    \q_reg[135]\ : in STD_LOGIC;
    \q_reg[135]_0\ : in STD_LOGIC;
    \q_reg[120]\ : in STD_LOGIC;
    \q_reg[120]_0\ : in STD_LOGIC;
    \q_reg[120]_1\ : in STD_LOGIC;
    \q_reg[121]\ : in STD_LOGIC;
    \q_reg[121]_0\ : in STD_LOGIC;
    \q_reg[121]_1\ : in STD_LOGIC;
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
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    \q_reg[108]\ : in STD_LOGIC;
    \q_reg[108]_0\ : in STD_LOGIC;
    \q_reg[108]_1\ : in STD_LOGIC;
    \q_reg[109]\ : in STD_LOGIC;
    \q_reg[109]_0\ : in STD_LOGIC;
    \q_reg[109]_1\ : in STD_LOGIC;
    \q_reg[110]\ : in STD_LOGIC;
    \q_reg[110]_0\ : in STD_LOGIC;
    \q_reg[111]\ : in STD_LOGIC;
    \q_reg[110]_1\ : in STD_LOGIC;
    \q_reg[111]_0\ : in STD_LOGIC;
    \q_reg[111]_1\ : in STD_LOGIC;
    \q_reg[112]\ : in STD_LOGIC;
    \q_reg[112]_0\ : in STD_LOGIC;
    \q_reg[112]_1\ : in STD_LOGIC;
    \q_reg[113]\ : in STD_LOGIC;
    \q_reg[113]_0\ : in STD_LOGIC;
    \q_reg[113]_1\ : in STD_LOGIC;
    \q_reg[114]\ : in STD_LOGIC;
    \q_reg[114]_0\ : in STD_LOGIC;
    \q_reg[114]_1\ : in STD_LOGIC;
    \q_reg[115]\ : in STD_LOGIC;
    \q_reg[115]_0\ : in STD_LOGIC;
    \q_reg[115]_1\ : in STD_LOGIC;
    \q_reg[116]\ : in STD_LOGIC;
    \q_reg[116]_0\ : in STD_LOGIC;
    \q_reg[116]_1\ : in STD_LOGIC;
    \q_reg[117]\ : in STD_LOGIC;
    \q_reg[117]_0\ : in STD_LOGIC;
    \q_reg[117]_1\ : in STD_LOGIC;
    \q_reg[118]\ : in STD_LOGIC;
    \q_reg[118]_0\ : in STD_LOGIC;
    \q_reg[118]_1\ : in STD_LOGIC;
    \q_reg[119]\ : in STD_LOGIC;
    \q_reg[119]_0\ : in STD_LOGIC;
    \q_reg[119]_1\ : in STD_LOGIC;
    \q_reg[113]_2\ : in STD_LOGIC;
    SrcAE : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \SrcBE__0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[135]_1\ : in STD_LOGIC;
    \q_reg[123]_1\ : in STD_LOGIC;
    \q_reg[122]_1\ : in STD_LOGIC;
    \q_reg[124]_1\ : in STD_LOGIC;
    \q_reg[125]_1\ : in STD_LOGIC;
    \q_reg[126]_1\ : in STD_LOGIC;
    \q_reg[127]_1\ : in STD_LOGIC;
    \q_reg[128]_1\ : in STD_LOGIC;
    \q_reg[129]_1\ : in STD_LOGIC;
    \q_reg[130]_1\ : in STD_LOGIC;
    \q_reg[131]_1\ : in STD_LOGIC;
    \q_reg[132]_1\ : in STD_LOGIC;
    \q_reg[133]_1\ : in STD_LOGIC;
    \q_reg[134]_1\ : in STD_LOGIC;
    \q_reg[135]_2\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \condinvb__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    WriteDataE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[107]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[31]_i_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[83]\ : in STD_LOGIC;
    \q_reg[84]\ : in STD_LOGIC;
    \q_reg[85]\ : in STD_LOGIC;
    \q_reg[86]\ : in STD_LOGIC;
    \q_reg[87]\ : in STD_LOGIC;
    \q_reg[88]\ : in STD_LOGIC;
    \q_reg[89]\ : in STD_LOGIC;
    \q_reg[90]\ : in STD_LOGIC;
    \Data_reg[31]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SrcBE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[106]_0\ : in STD_LOGIC;
    \q_reg[106]_1\ : in STD_LOGIC
  );
end design_1_top_0_0_controller;

architecture STRUCTURE of design_1_top_0_0_controller is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal controlregE_n_74 : STD_LOGIC;
  signal controlregE_n_75 : STD_LOGIC;
  signal controlregE_n_77 : STD_LOGIC;
  signal \^q_reg[18]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \q_reg[18]\(4 downto 0) <= \^q_reg[18]\(4 downto 0);
controlregE: entity work.design_1_top_0_0_floprc
     port map (
      CO(0) => CO(0),
      D(32 downto 0) => D(32 downto 0),
      FlushE => FlushE,
      InstrF(31 downto 0) => InstrF(31 downto 0),
      O(0) => O(0),
      \PCSrc1__6\ => \PCSrc1__6\,
      Q(7) => controlregE_n_74,
      Q(6) => controlregE_n_75,
      Q(5) => \^q_reg[18]\(4),
      Q(4) => controlregE_n_77,
      Q(3 downto 0) => \^q_reg[18]\(3 downto 0),
      SrcAE(30 downto 0) => SrcAE(30 downto 0),
      SrcBE(0) => SrcBE(0),
      \SrcBE__0\(30 downto 0) => \SrcBE__0\(30 downto 0),
      WriteDataE(0) => WriteDataE(0),
      clk => clk,
      \condinvb__0\(0) => \condinvb__0\(0),
      ovfE => ovfE,
      p_0_in(20 downto 0) => p_0_in(20 downto 0),
      \q[107]_i_2\(0) => \q[107]_i_2\(0),
      \q[31]_i_12_0\(0) => \q[31]_i_12\(0),
      \q_reg[104]\ => \q_reg[104]\,
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
      \q_reg[110]\ => \q_reg[110]\,
      \q_reg[110]_0\ => \q_reg[110]_0\,
      \q_reg[110]_1\ => \q_reg[110]_1\,
      \q_reg[111]\ => \q_reg[111]\,
      \q_reg[111]_0\ => \q_reg[111]_0\,
      \q_reg[111]_1\ => \q_reg[111]_1\,
      \q_reg[112]\ => \q_reg[112]\,
      \q_reg[112]_0\ => \q_reg[112]_0\,
      \q_reg[112]_1\ => \q_reg[112]_1\,
      \q_reg[113]\ => \q_reg[113]\,
      \q_reg[113]_0\ => \q_reg[113]_0\,
      \q_reg[113]_1\ => \q_reg[113]_1\,
      \q_reg[113]_2\ => \q_reg[113]_2\,
      \q_reg[114]\ => \q_reg[114]\,
      \q_reg[114]_0\ => \q_reg[114]_0\,
      \q_reg[114]_1\ => \q_reg[114]_1\,
      \q_reg[115]\ => \q_reg[115]\,
      \q_reg[115]_0\ => \q_reg[115]_0\,
      \q_reg[115]_1\ => \q_reg[115]_1\,
      \q_reg[116]\ => \q_reg[116]\,
      \q_reg[116]_0\ => \q_reg[116]_0\,
      \q_reg[116]_1\ => \q_reg[116]_1\,
      \q_reg[117]\ => \q_reg[117]\,
      \q_reg[117]_0\ => \q_reg[117]_0\,
      \q_reg[117]_1\ => \q_reg[117]_1\,
      \q_reg[118]\ => \q_reg[118]\,
      \q_reg[118]_0\ => \q_reg[118]_0\,
      \q_reg[118]_1\ => \q_reg[118]_1\,
      \q_reg[119]\ => \q_reg[119]\,
      \q_reg[119]_0\ => \q_reg[119]_0\,
      \q_reg[119]_1\ => \q_reg[119]_1\,
      \q_reg[11]_0\ => \q_reg[11]\,
      \q_reg[11]_1\ => \q_reg[11]_0\,
      \q_reg[11]_2\ => \q_reg[11]_1\,
      \q_reg[11]_3\(0) => \q_reg[11]_2\(0),
      \q_reg[120]\ => \q_reg[120]\,
      \q_reg[120]_0\ => \q_reg[120]_0\,
      \q_reg[120]_1\ => \q_reg[120]_1\,
      \q_reg[121]\ => \q_reg[121]\,
      \q_reg[121]_0\ => \q_reg[121]_0\,
      \q_reg[121]_1\ => \q_reg[121]_1\,
      \q_reg[122]\ => \q_reg[122]\,
      \q_reg[122]_0\ => \q_reg[122]_0\,
      \q_reg[122]_1\ => \q_reg[122]_1\,
      \q_reg[123]\ => \q_reg[123]\,
      \q_reg[123]_0\ => \q_reg[123]_0\,
      \q_reg[123]_1\ => \q_reg[123]_1\,
      \q_reg[124]\ => \q_reg[124]\,
      \q_reg[124]_0\ => \q_reg[124]_0\,
      \q_reg[124]_1\ => \q_reg[124]_1\,
      \q_reg[125]\ => \q_reg[125]\,
      \q_reg[125]_0\ => \q_reg[125]_0\,
      \q_reg[125]_1\ => \q_reg[125]_1\,
      \q_reg[126]\ => \q_reg[126]\,
      \q_reg[126]_0\ => \q_reg[126]_0\,
      \q_reg[126]_1\ => \q_reg[126]_1\,
      \q_reg[127]\ => \q_reg[127]\,
      \q_reg[127]_0\ => \q_reg[127]_0\,
      \q_reg[127]_1\ => \q_reg[127]_1\,
      \q_reg[128]\ => \q_reg[128]\,
      \q_reg[128]_0\ => \q_reg[128]_0\,
      \q_reg[128]_1\ => \q_reg[128]_1\,
      \q_reg[129]\ => \q_reg[129]\,
      \q_reg[129]_0\ => \q_reg[129]_0\,
      \q_reg[129]_1\ => \q_reg[129]_1\,
      \q_reg[12]_0\(32 downto 0) => \q_reg[12]\(32 downto 0),
      \q_reg[12]_1\ => \q_reg[12]_0\,
      \q_reg[130]\ => \q_reg[130]\,
      \q_reg[130]_0\ => \q_reg[130]_0\,
      \q_reg[130]_1\ => \q_reg[130]_1\,
      \q_reg[131]\ => \q_reg[131]\,
      \q_reg[131]_0\ => \q_reg[131]_0\,
      \q_reg[131]_1\ => \q_reg[131]_1\,
      \q_reg[132]\ => \q_reg[132]\,
      \q_reg[132]_0\ => \q_reg[132]_0\,
      \q_reg[132]_1\ => \q_reg[132]_1\,
      \q_reg[133]\ => \q_reg[133]\,
      \q_reg[133]_0\ => \q_reg[133]_0\,
      \q_reg[133]_1\ => \q_reg[133]_1\,
      \q_reg[134]\ => \q_reg[134]\,
      \q_reg[134]_0\ => \q_reg[134]_0\,
      \q_reg[134]_1\ => \q_reg[134]_1\,
      \q_reg[135]\ => \q_reg[135]\,
      \q_reg[135]_0\ => \q_reg[135]_0\,
      \q_reg[135]_1\ => \q_reg[135]_1\,
      \q_reg[135]_2\ => \q_reg[135]_2\,
      \q_reg[136]\ => \q_reg[136]\,
      \q_reg[136]_0\ => \q_reg[136]_0\,
      \q_reg[137]\ => \q_reg[137]\,
      \q_reg[137]_0\ => \q_reg[137]_0\,
      \q_reg[15]_0\ => PCSrcE(0),
      \q_reg[16]_0\ => \q_reg[16]\,
      \q_reg[2]_0\(0) => \q_reg[2]_0\(0),
      \q_reg[7]_0\ => funct3E(0),
      \q_reg[8]_0\ => funct3E(1),
      \q_reg[9]_0\ => funct3E(2),
      reset => reset
    );
controlregM: entity work.design_1_top_0_0_flopr
     port map (
      D(3) => controlregE_n_74,
      D(2) => controlregE_n_75,
      D(1) => \^q_reg[18]\(4),
      D(0) => controlregE_n_77,
      \Data_reg[31]_i_2\(1 downto 0) => \Data_reg[31]_i_2\(1 downto 0),
      Q(3 downto 0) => \^q\(3 downto 0),
      ReadDataM(7 downto 0) => ReadDataM(7 downto 0),
      clk => clk,
      \q_reg[2]_0\ => \q_reg[2]\,
      \q_reg[3]_0\ => \q_reg[3]\,
      \q_reg[83]\ => \q_reg[83]\,
      \q_reg[84]\ => \q_reg[84]\,
      \q_reg[85]\ => \q_reg[85]\,
      \q_reg[86]\ => \q_reg[86]\,
      \q_reg[87]\ => \q_reg[87]\,
      \q_reg[88]\ => \q_reg[88]\,
      \q_reg[89]\ => \q_reg[89]\,
      \q_reg[90]\ => \q_reg[90]\,
      \readDataM[15]\(7 downto 0) => \readDataM[15]\(7 downto 0),
      reset => reset
    );
controlregW: entity work.\design_1_top_0_0_flopr__parameterized0\
     port map (
      Q(0) => \^q\(3),
      RegWriteW => RegWriteW,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_datapath is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[36]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[178]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 20 downto 0 );
    \q_reg[10]\ : out STD_LOGIC;
    \q_reg[11]\ : out STD_LOGIC;
    SrcBE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SrcBE__0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[11]_1\ : out STD_LOGIC;
    \q_reg[11]_2\ : out STD_LOGIC;
    \q_reg[11]_3\ : out STD_LOGIC;
    \q_reg[11]_4\ : out STD_LOGIC;
    \q_reg[11]_5\ : out STD_LOGIC;
    \q_reg[11]_6\ : out STD_LOGIC;
    \q_reg[11]_7\ : out STD_LOGIC;
    \q_reg[11]_8\ : out STD_LOGIC;
    \q_reg[11]_9\ : out STD_LOGIC;
    \q_reg[11]_10\ : out STD_LOGIC;
    \q_reg[11]_11\ : out STD_LOGIC;
    \q_reg[11]_12\ : out STD_LOGIC;
    \q_reg[11]_13\ : out STD_LOGIC;
    \q_reg[11]_14\ : out STD_LOGIC;
    \q_reg[11]_15\ : out STD_LOGIC;
    \q_reg[11]_16\ : out STD_LOGIC;
    \q_reg[11]_17\ : out STD_LOGIC;
    \q_reg[11]_18\ : out STD_LOGIC;
    \q_reg[11]_19\ : out STD_LOGIC;
    \q_reg[37]\ : out STD_LOGIC;
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[37]_1\ : out STD_LOGIC;
    \q_reg[37]_2\ : out STD_LOGIC;
    \q_reg[11]_20\ : out STD_LOGIC;
    \q_reg[11]_21\ : out STD_LOGIC;
    \q_reg[11]_22\ : out STD_LOGIC;
    \q_reg[11]_23\ : out STD_LOGIC;
    \q_reg[11]_24\ : out STD_LOGIC;
    \q_reg[11]_25\ : out STD_LOGIC;
    \q_reg[11]_26\ : out STD_LOGIC;
    \q_reg[11]_27\ : out STD_LOGIC;
    \q_reg[11]_28\ : out STD_LOGIC;
    \q_reg[11]_29\ : out STD_LOGIC;
    \q_reg[11]_30\ : out STD_LOGIC;
    \q_reg[11]_31\ : out STD_LOGIC;
    \q_reg[37]_3\ : out STD_LOGIC;
    \q_reg[11]_32\ : out STD_LOGIC;
    \q_reg[11]_33\ : out STD_LOGIC;
    \q_reg[11]_34\ : out STD_LOGIC;
    \q_reg[11]_35\ : out STD_LOGIC;
    \q_reg[11]_36\ : out STD_LOGIC;
    \q_reg[11]_37\ : out STD_LOGIC;
    \q_reg[13]\ : out STD_LOGIC;
    \q_reg[137]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[11]_38\ : out STD_LOGIC;
    \q_reg[37]_4\ : out STD_LOGIC;
    \q_reg[37]_5\ : out STD_LOGIC;
    \q_reg[37]_6\ : out STD_LOGIC;
    \q_reg[37]_7\ : out STD_LOGIC;
    \q_reg[37]_8\ : out STD_LOGIC;
    \q_reg[37]_9\ : out STD_LOGIC;
    \q_reg[37]_10\ : out STD_LOGIC;
    \q_reg[13]_1\ : out STD_LOGIC;
    \q_reg[13]_2\ : out STD_LOGIC;
    \q_reg[13]_3\ : out STD_LOGIC;
    \q_reg[13]_4\ : out STD_LOGIC;
    \q_reg[13]_5\ : out STD_LOGIC;
    \q_reg[13]_6\ : out STD_LOGIC;
    \q_reg[13]_7\ : out STD_LOGIC;
    \q_reg[13]_8\ : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[13]_9\ : out STD_LOGIC;
    \q_reg[13]_10\ : out STD_LOGIC;
    \q_reg[13]_11\ : out STD_LOGIC;
    \q_reg[13]_12\ : out STD_LOGIC;
    \q_reg[13]_13\ : out STD_LOGIC;
    \q_reg[13]_14\ : out STD_LOGIC;
    \q_reg[37]_11\ : out STD_LOGIC;
    \q_reg[37]_12\ : out STD_LOGIC;
    \q_reg[13]_15\ : out STD_LOGIC;
    \q_reg[37]_13\ : out STD_LOGIC;
    \q_reg[37]_14\ : out STD_LOGIC;
    \q_reg[37]_15\ : out STD_LOGIC;
    \q_reg[37]_16\ : out STD_LOGIC;
    \q_reg[37]_17\ : out STD_LOGIC;
    \q_reg[13]_16\ : out STD_LOGIC;
    \q_reg[13]_17\ : out STD_LOGIC;
    \q_reg[13]_18\ : out STD_LOGIC;
    \q_reg[13]_19\ : out STD_LOGIC;
    \q_reg[37]_18\ : out STD_LOGIC;
    \q_reg[13]_20\ : out STD_LOGIC;
    \q_reg[115]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \condinvb__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[18]\ : out STD_LOGIC;
    \q_reg[137]_i_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[37]_19\ : out STD_LOGIC;
    \q_reg[38]\ : out STD_LOGIC;
    \q_reg[13]_21\ : out STD_LOGIC;
    \q_reg[13]_22\ : out STD_LOGIC;
    \q_reg[13]_23\ : out STD_LOGIC;
    \q_reg[13]_24\ : out STD_LOGIC;
    \q_reg[13]_25\ : out STD_LOGIC;
    \q_reg[13]_26\ : out STD_LOGIC;
    \q_reg[38]_0\ : out STD_LOGIC;
    \q_reg[13]_27\ : out STD_LOGIC;
    \q_reg[13]_28\ : out STD_LOGIC;
    \q_reg[13]_29\ : out STD_LOGIC;
    \q_reg[13]_30\ : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[2]_1\ : out STD_LOGIC;
    \q_reg[2]_2\ : out STD_LOGIC;
    \q_reg[2]_3\ : out STD_LOGIC;
    \q_reg[2]_4\ : out STD_LOGIC;
    \q_reg[2]_5\ : out STD_LOGIC;
    \q_reg[2]_6\ : out STD_LOGIC;
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWriteW : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 32 downto 0 );
    PCSrcE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PCSrc1__6\ : in STD_LOGIC;
    FlushE : in STD_LOGIC;
    \q_reg[104]\ : in STD_LOGIC;
    \q_reg[95]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[106]\ : in STD_LOGIC;
    \q_reg[107]\ : in STD_LOGIC;
    \q_reg[107]_0\ : in STD_LOGIC;
    \q_reg[107]_1\ : in STD_LOGIC;
    ovfE : in STD_LOGIC;
    \q_reg[137]_0\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    \q_reg[78]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[91]\ : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[75]\ : in STD_LOGIC;
    \q[106]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCReady : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[90]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end design_1_top_0_0_datapath;

architecture STRUCTURE of design_1_top_0_0_datapath is
  signal DataM : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ImmExtE : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal PCE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PCNextF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCPlus4E : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal PCPlus4F : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCTargetE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RdE : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdM : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdW : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ResultW : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs1D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs1E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SrcAE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^srcbe__0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal WriteDataE : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  signal alu_n_32 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal \hu/ForwardAE11_out\ : STD_LOGIC;
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
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 63 downto 3 );
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 178 downto 0 );
  signal \^q_reg[115]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[137]\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal \^q_reg[178]\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^q_reg[36]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regE_n_100 : STD_LOGIC;
  signal regE_n_101 : STD_LOGIC;
  signal regE_n_102 : STD_LOGIC;
  signal regE_n_106 : STD_LOGIC;
  signal regE_n_107 : STD_LOGIC;
  signal regE_n_108 : STD_LOGIC;
  signal regE_n_109 : STD_LOGIC;
  signal regE_n_111 : STD_LOGIC;
  signal regE_n_112 : STD_LOGIC;
  signal regE_n_113 : STD_LOGIC;
  signal regE_n_114 : STD_LOGIC;
  signal regE_n_118 : STD_LOGIC;
  signal regE_n_119 : STD_LOGIC;
  signal regE_n_120 : STD_LOGIC;
  signal regE_n_121 : STD_LOGIC;
  signal regE_n_132 : STD_LOGIC;
  signal regE_n_133 : STD_LOGIC;
  signal regE_n_134 : STD_LOGIC;
  signal regE_n_135 : STD_LOGIC;
  signal regE_n_283 : STD_LOGIC;
  signal regE_n_284 : STD_LOGIC;
  signal regE_n_285 : STD_LOGIC;
  signal regE_n_286 : STD_LOGIC;
  signal regE_n_287 : STD_LOGIC;
  signal regE_n_288 : STD_LOGIC;
  signal regE_n_291 : STD_LOGIC;
  signal regE_n_292 : STD_LOGIC;
  signal regE_n_293 : STD_LOGIC;
  signal regE_n_294 : STD_LOGIC;
  signal regE_n_297 : STD_LOGIC;
  signal regE_n_298 : STD_LOGIC;
  signal regE_n_299 : STD_LOGIC;
  signal regE_n_300 : STD_LOGIC;
  signal regE_n_301 : STD_LOGIC;
  signal regE_n_302 : STD_LOGIC;
  signal regE_n_303 : STD_LOGIC;
  signal regE_n_304 : STD_LOGIC;
  signal regE_n_305 : STD_LOGIC;
  signal regE_n_306 : STD_LOGIC;
  signal regE_n_307 : STD_LOGIC;
  signal regE_n_308 : STD_LOGIC;
  signal regE_n_309 : STD_LOGIC;
  signal regE_n_310 : STD_LOGIC;
  signal regE_n_311 : STD_LOGIC;
  signal regE_n_312 : STD_LOGIC;
  signal regE_n_313 : STD_LOGIC;
  signal regE_n_314 : STD_LOGIC;
  signal regE_n_315 : STD_LOGIC;
  signal regE_n_316 : STD_LOGIC;
  signal regE_n_317 : STD_LOGIC;
  signal regE_n_318 : STD_LOGIC;
  signal regE_n_319 : STD_LOGIC;
  signal regE_n_320 : STD_LOGIC;
  signal regE_n_321 : STD_LOGIC;
  signal regE_n_322 : STD_LOGIC;
  signal regE_n_323 : STD_LOGIC;
  signal regE_n_324 : STD_LOGIC;
  signal regE_n_325 : STD_LOGIC;
  signal regE_n_326 : STD_LOGIC;
  signal regE_n_327 : STD_LOGIC;
  signal regE_n_328 : STD_LOGIC;
  signal regE_n_329 : STD_LOGIC;
  signal regE_n_330 : STD_LOGIC;
  signal regE_n_331 : STD_LOGIC;
  signal regE_n_332 : STD_LOGIC;
  signal regE_n_333 : STD_LOGIC;
  signal regE_n_334 : STD_LOGIC;
  signal regE_n_335 : STD_LOGIC;
  signal regE_n_336 : STD_LOGIC;
  signal regE_n_337 : STD_LOGIC;
  signal regE_n_338 : STD_LOGIC;
  signal regE_n_339 : STD_LOGIC;
  signal regE_n_340 : STD_LOGIC;
  signal regE_n_341 : STD_LOGIC;
  signal regE_n_342 : STD_LOGIC;
  signal regE_n_343 : STD_LOGIC;
  signal regE_n_344 : STD_LOGIC;
  signal regE_n_345 : STD_LOGIC;
  signal regE_n_346 : STD_LOGIC;
  signal regE_n_347 : STD_LOGIC;
  signal regE_n_348 : STD_LOGIC;
  signal regE_n_349 : STD_LOGIC;
  signal regE_n_350 : STD_LOGIC;
  signal regE_n_351 : STD_LOGIC;
  signal regE_n_352 : STD_LOGIC;
  signal regE_n_353 : STD_LOGIC;
  signal regE_n_357 : STD_LOGIC;
  signal regE_n_358 : STD_LOGIC;
  signal regE_n_359 : STD_LOGIC;
  signal regE_n_360 : STD_LOGIC;
  signal regE_n_364 : STD_LOGIC;
  signal regE_n_365 : STD_LOGIC;
  signal regE_n_366 : STD_LOGIC;
  signal regE_n_367 : STD_LOGIC;
  signal regE_n_80 : STD_LOGIC;
  signal regE_n_81 : STD_LOGIC;
  signal regE_n_82 : STD_LOGIC;
  signal regE_n_83 : STD_LOGIC;
  signal regE_n_99 : STD_LOGIC;
  signal regM_n_100 : STD_LOGIC;
  signal regM_n_101 : STD_LOGIC;
  signal regM_n_105 : STD_LOGIC;
  signal regM_n_106 : STD_LOGIC;
  signal regM_n_107 : STD_LOGIC;
  signal regM_n_108 : STD_LOGIC;
  signal regM_n_109 : STD_LOGIC;
  signal regM_n_110 : STD_LOGIC;
  signal regM_n_111 : STD_LOGIC;
  signal regM_n_112 : STD_LOGIC;
  signal regM_n_113 : STD_LOGIC;
  signal regM_n_114 : STD_LOGIC;
  signal regM_n_115 : STD_LOGIC;
  signal regM_n_116 : STD_LOGIC;
  signal regM_n_117 : STD_LOGIC;
  signal regM_n_118 : STD_LOGIC;
  signal regM_n_119 : STD_LOGIC;
  signal regM_n_120 : STD_LOGIC;
  signal regM_n_121 : STD_LOGIC;
  signal regM_n_122 : STD_LOGIC;
  signal regM_n_123 : STD_LOGIC;
  signal regM_n_124 : STD_LOGIC;
  signal regM_n_125 : STD_LOGIC;
  signal regM_n_126 : STD_LOGIC;
  signal regM_n_127 : STD_LOGIC;
  signal regM_n_128 : STD_LOGIC;
  signal regM_n_129 : STD_LOGIC;
  signal regM_n_130 : STD_LOGIC;
  signal regM_n_131 : STD_LOGIC;
  signal regM_n_132 : STD_LOGIC;
  signal regM_n_133 : STD_LOGIC;
  signal regM_n_134 : STD_LOGIC;
  signal regM_n_135 : STD_LOGIC;
  signal regM_n_136 : STD_LOGIC;
  signal regM_n_137 : STD_LOGIC;
  signal regM_n_138 : STD_LOGIC;
  signal regM_n_139 : STD_LOGIC;
  signal regM_n_140 : STD_LOGIC;
  signal regM_n_141 : STD_LOGIC;
  signal regM_n_142 : STD_LOGIC;
  signal regM_n_143 : STD_LOGIC;
  signal regM_n_144 : STD_LOGIC;
  signal regM_n_145 : STD_LOGIC;
  signal regM_n_146 : STD_LOGIC;
  signal regM_n_147 : STD_LOGIC;
  signal regM_n_148 : STD_LOGIC;
  signal regM_n_149 : STD_LOGIC;
  signal regM_n_150 : STD_LOGIC;
  signal regM_n_151 : STD_LOGIC;
  signal regM_n_152 : STD_LOGIC;
  signal regM_n_153 : STD_LOGIC;
  signal regM_n_154 : STD_LOGIC;
  signal regM_n_155 : STD_LOGIC;
  signal regM_n_156 : STD_LOGIC;
  signal regM_n_157 : STD_LOGIC;
  signal regM_n_158 : STD_LOGIC;
  signal regM_n_159 : STD_LOGIC;
  signal regM_n_160 : STD_LOGIC;
  signal regM_n_161 : STD_LOGIC;
  signal regM_n_162 : STD_LOGIC;
  signal regM_n_163 : STD_LOGIC;
  signal regM_n_164 : STD_LOGIC;
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
  signal regM_n_65 : STD_LOGIC;
  signal regM_n_66 : STD_LOGIC;
  signal regM_n_67 : STD_LOGIC;
  signal regM_n_68 : STD_LOGIC;
  signal regM_n_69 : STD_LOGIC;
  signal regM_n_70 : STD_LOGIC;
  signal regM_n_71 : STD_LOGIC;
  signal regM_n_72 : STD_LOGIC;
  signal regM_n_73 : STD_LOGIC;
  signal regM_n_74 : STD_LOGIC;
  signal regM_n_75 : STD_LOGIC;
  signal regM_n_76 : STD_LOGIC;
  signal regM_n_77 : STD_LOGIC;
  signal regM_n_78 : STD_LOGIC;
  signal regM_n_79 : STD_LOGIC;
  signal regM_n_80 : STD_LOGIC;
  signal regM_n_81 : STD_LOGIC;
  signal regM_n_82 : STD_LOGIC;
  signal regM_n_83 : STD_LOGIC;
  signal regM_n_84 : STD_LOGIC;
  signal regM_n_85 : STD_LOGIC;
  signal regM_n_86 : STD_LOGIC;
  signal regM_n_87 : STD_LOGIC;
  signal regM_n_88 : STD_LOGIC;
  signal regM_n_89 : STD_LOGIC;
  signal regM_n_90 : STD_LOGIC;
  signal regM_n_91 : STD_LOGIC;
  signal regM_n_92 : STD_LOGIC;
  signal regM_n_93 : STD_LOGIC;
  signal regM_n_94 : STD_LOGIC;
  signal regM_n_95 : STD_LOGIC;
  signal regM_n_96 : STD_LOGIC;
  signal regM_n_97 : STD_LOGIC;
  signal regM_n_98 : STD_LOGIC;
  signal regM_n_99 : STD_LOGIC;
  signal regW_n_32 : STD_LOGIC;
  signal regW_n_38 : STD_LOGIC;
  signal regW_n_39 : STD_LOGIC;
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
  Q(31 downto 0) <= \^q\(31 downto 0);
  \SrcBE__0\(30 downto 0) <= \^srcbe__0\(30 downto 0);
  \q_reg[115]\(0) <= \^q_reg[115]\(0);
  \q_reg[137]\(34 downto 0) <= \^q_reg[137]\(34 downto 0);
  \q_reg[178]\(30 downto 0) <= \^q_reg[178]\(30 downto 0);
  \q_reg[36]\(0) <= \^q_reg[36]\(0);
alu: entity work.design_1_top_0_0_alu
     port map (
      CO(0) => CO(0),
      DI(3) => regE_n_106,
      DI(2) => regE_n_107,
      DI(1) => regE_n_108,
      DI(0) => regE_n_109,
      S(3) => regE_n_132,
      S(2) => regE_n_133,
      S(1) => regE_n_134,
      S(0) => regE_n_135,
      SrcAE(0) => SrcAE(0),
      \q[106]_i_5\(3) => regE_n_99,
      \q[106]_i_5\(2) => regE_n_100,
      \q[106]_i_5\(1) => regE_n_101,
      \q[106]_i_5\(0) => regE_n_102,
      \q[106]_i_5_0\(3) => regE_n_364,
      \q[106]_i_5_0\(2) => regE_n_365,
      \q[106]_i_5_0\(1) => regE_n_366,
      \q[106]_i_5_0\(0) => regE_n_367,
      \q_reg[109]_i_8\(0) => \q_reg[95]\(0),
      \q_reg[109]_i_8_0\(2 downto 0) => \^q_reg[178]\(2 downto 0),
      \q_reg[109]_i_8_1\ => \^srcbe__0\(0),
      \q_reg[109]_i_8_2\ => \^srcbe__0\(1),
      \q_reg[109]_i_8_3\ => \^srcbe__0\(2),
      \q_reg[113]_i_10\(3 downto 0) => \^q_reg[178]\(6 downto 3),
      \q_reg[113]_i_10_0\ => \^srcbe__0\(3),
      \q_reg[113]_i_10_1\ => \^srcbe__0\(4),
      \q_reg[113]_i_10_2\ => \^srcbe__0\(5),
      \q_reg[113]_i_10_3\ => \^srcbe__0\(6),
      \q_reg[117]_i_8\(3 downto 0) => \^q_reg[178]\(10 downto 7),
      \q_reg[117]_i_8_0\ => \^srcbe__0\(7),
      \q_reg[117]_i_8_1\ => \^srcbe__0\(8),
      \q_reg[117]_i_8_2\ => \^srcbe__0\(9),
      \q_reg[117]_i_8_3\ => \^srcbe__0\(10),
      \q_reg[11]\(3) => alu_n_1,
      \q_reg[11]\(2) => alu_n_2,
      \q_reg[11]\(1) => alu_n_3,
      \q_reg[11]\(0) => alu_n_4,
      \q_reg[11]_0\(3) => alu_n_5,
      \q_reg[11]_0\(2) => alu_n_6,
      \q_reg[11]_0\(1) => alu_n_7,
      \q_reg[11]_0\(0) => alu_n_8,
      \q_reg[11]_1\(3) => alu_n_9,
      \q_reg[11]_1\(2) => alu_n_10,
      \q_reg[11]_1\(1) => alu_n_11,
      \q_reg[11]_1\(0) => alu_n_12,
      \q_reg[11]_2\(3) => alu_n_13,
      \q_reg[11]_2\(2) => alu_n_14,
      \q_reg[11]_2\(1) => alu_n_15,
      \q_reg[11]_2\(0) => alu_n_16,
      \q_reg[11]_3\(3) => alu_n_17,
      \q_reg[11]_3\(2) => alu_n_18,
      \q_reg[11]_3\(1) => alu_n_19,
      \q_reg[11]_3\(0) => alu_n_20,
      \q_reg[11]_4\(3) => alu_n_21,
      \q_reg[11]_4\(2) => alu_n_22,
      \q_reg[11]_4\(1) => alu_n_23,
      \q_reg[11]_4\(0) => alu_n_24,
      \q_reg[11]_5\(3) => alu_n_25,
      \q_reg[11]_5\(2) => alu_n_26,
      \q_reg[11]_5\(1) => alu_n_27,
      \q_reg[11]_5\(0) => alu_n_28,
      \q_reg[11]_6\(3) => alu_n_29,
      \q_reg[11]_6\(2) => alu_n_30,
      \q_reg[11]_6\(1) => alu_n_31,
      \q_reg[11]_6\(0) => alu_n_32,
      \q_reg[121]_i_8\(3 downto 0) => \^q_reg[178]\(14 downto 11),
      \q_reg[121]_i_8_0\ => \^srcbe__0\(11),
      \q_reg[121]_i_8_1\ => \^srcbe__0\(12),
      \q_reg[121]_i_8_2\ => \^srcbe__0\(13),
      \q_reg[121]_i_8_3\ => \^srcbe__0\(14),
      \q_reg[125]_i_10\(3 downto 0) => \^q_reg[178]\(18 downto 15),
      \q_reg[125]_i_10_0\ => \^srcbe__0\(15),
      \q_reg[125]_i_10_1\ => \^srcbe__0\(16),
      \q_reg[125]_i_10_2\ => \^srcbe__0\(17),
      \q_reg[125]_i_10_3\ => \^srcbe__0\(18),
      \q_reg[129]_i_10\(3 downto 0) => \^q_reg[178]\(22 downto 19),
      \q_reg[129]_i_10_0\ => \^srcbe__0\(19),
      \q_reg[129]_i_10_1\ => \^srcbe__0\(20),
      \q_reg[129]_i_10_2\ => \^srcbe__0\(21),
      \q_reg[129]_i_10_3\ => \^srcbe__0\(22),
      \q_reg[133]_i_10\(3 downto 0) => \^q_reg[178]\(26 downto 23),
      \q_reg[133]_i_10_0\ => \^srcbe__0\(23),
      \q_reg[133]_i_10_1\ => \^srcbe__0\(24),
      \q_reg[133]_i_10_2\ => \^srcbe__0\(25),
      \q_reg[133]_i_10_3\ => \^srcbe__0\(26),
      \q_reg[137]_i_12\(3 downto 0) => \^q_reg[178]\(30 downto 27),
      \q_reg[137]_i_12_0\ => \^srcbe__0\(27),
      \q_reg[137]_i_12_1\ => \^srcbe__0\(28),
      \q_reg[137]_i_12_2\ => \^srcbe__0\(29),
      \q_reg[137]_i_12_3\ => \^srcbe__0\(30),
      \result0_inferred__6/i__carry__1_0\(3) => regE_n_80,
      \result0_inferred__6/i__carry__1_0\(2) => regE_n_81,
      \result0_inferred__6/i__carry__1_0\(1) => regE_n_82,
      \result0_inferred__6/i__carry__1_0\(0) => regE_n_83,
      \result0_inferred__6/i__carry__1_1\(3) => regE_n_357,
      \result0_inferred__6/i__carry__1_1\(2) => regE_n_358,
      \result0_inferred__6/i__carry__1_1\(1) => regE_n_359,
      \result0_inferred__6/i__carry__1_1\(0) => regE_n_360,
      \result0_inferred__6/i__carry__2_0\(3) => regE_n_118,
      \result0_inferred__6/i__carry__2_0\(2) => regE_n_119,
      \result0_inferred__6/i__carry__2_0\(1) => regE_n_120,
      \result0_inferred__6/i__carry__2_0\(0) => regE_n_121,
      \result0_inferred__6/i__carry__2_1\(3) => regE_n_111,
      \result0_inferred__6/i__carry__2_1\(2) => regE_n_112,
      \result0_inferred__6/i__carry__2_1\(1) => regE_n_113,
      \result0_inferred__6/i__carry__2_1\(0) => regE_n_114
    );
branchadd: entity work.design_1_top_0_0_adder
     port map (
      D(27 downto 0) => PCNextF(27 downto 0),
      O(3 downto 0) => PCTargetE(31 downto 28),
      PCPlus4F(24 downto 0) => PCPlus4F(27 downto 3),
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(30 downto 1) => ImmExtE(30 downto 1),
      Q(0) => \^q_reg[36]\(0),
      S(3) => regE_n_297,
      S(2) => regE_n_298,
      S(1) => regE_n_299,
      S(0) => regE_n_300,
      jalrTarget(27 downto 0) => jalrTarget(27 downto 0),
      \q_reg[11]\(3) => regE_n_305,
      \q_reg[11]\(2) => regE_n_306,
      \q_reg[11]\(1) => regE_n_307,
      \q_reg[11]\(0) => regE_n_308,
      \q_reg[15]\(3) => regE_n_309,
      \q_reg[15]\(2) => regE_n_310,
      \q_reg[15]\(1) => regE_n_311,
      \q_reg[15]\(0) => regE_n_312,
      \q_reg[19]\(3) => regE_n_313,
      \q_reg[19]\(2) => regE_n_314,
      \q_reg[19]\(1) => regE_n_315,
      \q_reg[19]\(0) => regE_n_316,
      \q_reg[23]\(3) => regE_n_317,
      \q_reg[23]\(2) => regE_n_318,
      \q_reg[23]\(1) => regE_n_319,
      \q_reg[23]\(0) => regE_n_320,
      \q_reg[27]\(3) => regE_n_321,
      \q_reg[27]\(2) => regE_n_322,
      \q_reg[27]\(1) => regE_n_323,
      \q_reg[27]\(0) => regE_n_324,
      \q_reg[2]\(2 downto 0) => \^q\(2 downto 0),
      \q_reg[31]\(3) => regE_n_291,
      \q_reg[31]\(2) => regE_n_292,
      \q_reg[31]\(1) => regE_n_293,
      \q_reg[31]\(0) => regE_n_294,
      \q_reg[7]\(3) => regE_n_301,
      \q_reg[7]\(2) => regE_n_302,
      \q_reg[7]\(1) => regE_n_303,
      \q_reg[7]\(0) => regE_n_304
    );
jalrTarget_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => jalrTarget_carry_n_0,
      CO(2) => jalrTarget_carry_n_1,
      CO(1) => jalrTarget_carry_n_2,
      CO(0) => jalrTarget_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \^q_reg[178]\(2 downto 0),
      DI(0) => SrcAE(0),
      O(3 downto 0) => jalrTarget(3 downto 0),
      S(3) => regE_n_325,
      S(2) => regE_n_326,
      S(1) => regE_n_327,
      S(0) => regE_n_328
    );
\jalrTarget_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => jalrTarget_carry_n_0,
      CO(3) => \jalrTarget_carry__0_n_0\,
      CO(2) => \jalrTarget_carry__0_n_1\,
      CO(1) => \jalrTarget_carry__0_n_2\,
      CO(0) => \jalrTarget_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(6 downto 3),
      O(3 downto 0) => jalrTarget(7 downto 4),
      S(3) => regE_n_329,
      S(2) => regE_n_330,
      S(1) => regE_n_331,
      S(0) => regE_n_332
    );
\jalrTarget_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__0_n_0\,
      CO(3) => \jalrTarget_carry__1_n_0\,
      CO(2) => \jalrTarget_carry__1_n_1\,
      CO(1) => \jalrTarget_carry__1_n_2\,
      CO(0) => \jalrTarget_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(10 downto 7),
      O(3 downto 0) => jalrTarget(11 downto 8),
      S(3) => regE_n_333,
      S(2) => regE_n_334,
      S(1) => regE_n_335,
      S(0) => regE_n_336
    );
\jalrTarget_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__1_n_0\,
      CO(3) => \jalrTarget_carry__2_n_0\,
      CO(2) => \jalrTarget_carry__2_n_1\,
      CO(1) => \jalrTarget_carry__2_n_2\,
      CO(0) => \jalrTarget_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(14 downto 11),
      O(3 downto 0) => jalrTarget(15 downto 12),
      S(3) => regE_n_337,
      S(2) => regE_n_338,
      S(1) => regE_n_339,
      S(0) => regE_n_340
    );
\jalrTarget_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__2_n_0\,
      CO(3) => \jalrTarget_carry__3_n_0\,
      CO(2) => \jalrTarget_carry__3_n_1\,
      CO(1) => \jalrTarget_carry__3_n_2\,
      CO(0) => \jalrTarget_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(18 downto 15),
      O(3 downto 0) => jalrTarget(19 downto 16),
      S(3) => regE_n_341,
      S(2) => regE_n_342,
      S(1) => regE_n_343,
      S(0) => regE_n_344
    );
\jalrTarget_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__3_n_0\,
      CO(3) => \jalrTarget_carry__4_n_0\,
      CO(2) => \jalrTarget_carry__4_n_1\,
      CO(1) => \jalrTarget_carry__4_n_2\,
      CO(0) => \jalrTarget_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(22 downto 19),
      O(3 downto 0) => jalrTarget(23 downto 20),
      S(3) => regE_n_345,
      S(2) => regE_n_346,
      S(1) => regE_n_347,
      S(0) => regE_n_348
    );
\jalrTarget_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \jalrTarget_carry__4_n_0\,
      CO(3) => \jalrTarget_carry__5_n_0\,
      CO(2) => \jalrTarget_carry__5_n_1\,
      CO(1) => \jalrTarget_carry__5_n_2\,
      CO(0) => \jalrTarget_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q_reg[178]\(26 downto 23),
      O(3 downto 0) => jalrTarget(27 downto 24),
      S(3) => regE_n_349,
      S(2) => regE_n_350,
      S(1) => regE_n_351,
      S(0) => regE_n_352
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
      DI(2 downto 0) => \^q_reg[178]\(29 downto 27),
      O(3 downto 0) => jalrTarget(31 downto 28),
      S(3) => regE_n_284,
      S(2) => regE_n_285,
      S(1) => regE_n_286,
      S(0) => regE_n_287
    );
load: entity work.design_1_top_0_0_load
     port map (
      D(31) => regM_n_141,
      D(30) => regM_n_142,
      D(29) => regM_n_143,
      D(28) => regM_n_144,
      D(27) => regM_n_145,
      D(26) => regM_n_146,
      D(25) => regM_n_147,
      D(24) => regM_n_148,
      D(23) => regM_n_149,
      D(22) => regM_n_150,
      D(21) => regM_n_151,
      D(20) => regM_n_152,
      D(19) => regM_n_153,
      D(18) => regM_n_154,
      D(17) => regM_n_155,
      D(16) => regM_n_156,
      D(15 downto 8) => \q_reg[90]\(7 downto 0),
      D(7) => regM_n_157,
      D(6) => regM_n_158,
      D(5) => regM_n_159,
      D(4) => regM_n_160,
      D(3) => regM_n_161,
      D(2) => regM_n_162,
      D(1) => regM_n_163,
      D(0) => regM_n_164,
      E(0) => regM_n_107,
      Q(31 downto 0) => DataM(31 downto 0)
    );
pcadd: entity work.design_1_top_0_0_adder_0
     port map (
      D(28 downto 0) => p_0_in_0(31 downto 3),
      PCPlus4F(28 downto 0) => PCPlus4F(31 downto 3),
      PCSrcE(0) => PCSrcE(0),
      Q(29 downto 0) => \^q\(31 downto 2)
    );
pcreg: entity work.design_1_top_0_0_flopenr
     port map (
      D(31 downto 0) => p_0_in_0(63 downto 32),
      E(0) => regE_n_353,
      PCSrcE(0) => PCSrcE(0),
      Q(31 downto 0) => \^q\(31 downto 0),
      clk => clk,
      \q_reg[31]_0\(31 downto 0) => PCNextF(31 downto 0),
      reset => reset
    );
regD: entity work.design_1_top_0_0_flopenrc
     port map (
      D(173 downto 1) => p_0_in_1(178 downto 6),
      D(0) => p_0_in_1(0),
      E(0) => regE_n_353,
      FlushE => FlushE,
      Q(9 downto 5) => Rs2D(4 downto 0),
      Q(4 downto 0) => Rs1D(4 downto 0),
      clk => clk,
      p_0_in(20 downto 0) => p_0_in(20 downto 0),
      \q_reg[104]\ => \q_reg[104]\,
      \q_reg[95]_0\(93 downto 62) => D(32 downto 1),
      \q_reg[95]_0\(61 downto 1) => p_0_in_0(63 downto 3),
      \q_reg[95]_0\(0) => D(0),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      reset => reset
    );
regE: entity work.\design_1_top_0_0_floprc__parameterized0\
     port map (
      D(0) => \^q_reg[115]\(0),
      DI(3 downto 1) => \^q_reg[178]\(2 downto 0),
      DI(0) => SrcAE(0),
      E(0) => regE_n_353,
      ForwardAE11_out => \hu/ForwardAE11_out\,
      O(3 downto 0) => PCTargetE(31 downto 28),
      PCPlus4F(3 downto 0) => PCPlus4F(31 downto 28),
      PCReady => PCReady,
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(36 downto 5) => \^q_reg[137]\(34 downto 3),
      Q(4 downto 0) => RdM(4 downto 0),
      RegWriteW => RegWriteW,
      ResultW(31 downto 0) => ResultW(31 downto 0),
      S(3) => regE_n_132,
      S(2) => regE_n_133,
      S(1) => regE_n_134,
      S(0) => regE_n_135,
      WriteDataE(30 downto 0) => WriteDataE(31 downto 1),
      clk => clk,
      \condinvb__0\(0) => \condinvb__0\(0),
      \jalrTarget_carry__2_i_2_0\ => regW_n_32,
      \jalrTarget_carry__2_i_2_1\ => regM_n_105,
      \jalrTarget_carry__6_i_8_0\ => regW_n_38,
      ovfE => ovfE,
      \q[105]_i_3_0\(4 downto 0) => RdW(4 downto 0),
      \q[106]_i_3_0\(0) => \q[106]_i_3\(0),
      \q[106]_i_3_1\(3) => alu_n_1,
      \q[106]_i_3_1\(2) => alu_n_2,
      \q[106]_i_3_1\(1) => alu_n_3,
      \q[106]_i_3_1\(0) => alu_n_4,
      \q[110]_i_4_0\(3) => alu_n_5,
      \q[110]_i_4_0\(2) => alu_n_6,
      \q[110]_i_4_0\(1) => alu_n_7,
      \q[110]_i_4_0\(0) => alu_n_8,
      \q[114]_i_3_0\(3) => alu_n_9,
      \q[114]_i_3_0\(2) => alu_n_10,
      \q[114]_i_3_0\(1) => alu_n_11,
      \q[114]_i_3_0\(0) => alu_n_12,
      \q[118]_i_3_0\(3) => alu_n_13,
      \q[118]_i_3_0\(2) => alu_n_14,
      \q[118]_i_3_0\(1) => alu_n_15,
      \q[118]_i_3_0\(0) => alu_n_16,
      \q[120]_i_11_0\(0) => \q_reg[137]_0\(0),
      \q[122]_i_4_0\(3) => alu_n_17,
      \q[122]_i_4_0\(2) => alu_n_18,
      \q[122]_i_4_0\(1) => alu_n_19,
      \q[122]_i_4_0\(0) => alu_n_20,
      \q[126]_i_4_0\(3) => alu_n_21,
      \q[126]_i_4_0\(2) => alu_n_22,
      \q[126]_i_4_0\(1) => alu_n_23,
      \q[126]_i_4_0\(0) => alu_n_24,
      \q[130]_i_4_0\(3) => alu_n_25,
      \q[130]_i_4_0\(2) => alu_n_26,
      \q[130]_i_4_0\(1) => alu_n_27,
      \q[130]_i_4_0\(0) => alu_n_28,
      \q[134]_i_4_0\(3) => alu_n_29,
      \q[134]_i_4_0\(2) => alu_n_30,
      \q[134]_i_4_0\(1) => alu_n_31,
      \q[134]_i_4_0\(0) => alu_n_32,
      \q[31]_i_6_0\(9 downto 5) => Rs2D(4 downto 0),
      \q[31]_i_6_0\(4 downto 0) => Rs1D(4 downto 0),
      \q_reg[105]_0\ => regM_n_106,
      \q_reg[106]_0\ => \q_reg[106]\,
      \q_reg[107]_0\ => \q_reg[107]\,
      \q_reg[107]_1\ => \q_reg[107]_0\,
      \q_reg[107]_2\ => \q_reg[107]_1\,
      \q_reg[10]_0\ => \q_reg[10]\,
      \q_reg[11]_0\ => \q_reg[11]\,
      \q_reg[11]_1\ => \q_reg[11]_0\,
      \q_reg[11]_10\ => \q_reg[11]_9\,
      \q_reg[11]_11\ => \q_reg[11]_10\,
      \q_reg[11]_12\ => \q_reg[11]_11\,
      \q_reg[11]_13\ => \q_reg[11]_12\,
      \q_reg[11]_14\ => \q_reg[11]_13\,
      \q_reg[11]_15\ => \q_reg[11]_14\,
      \q_reg[11]_16\ => \q_reg[11]_15\,
      \q_reg[11]_17\ => \q_reg[11]_16\,
      \q_reg[11]_18\ => \q_reg[11]_17\,
      \q_reg[11]_19\ => \q_reg[11]_18\,
      \q_reg[11]_2\ => \q_reg[11]_1\,
      \q_reg[11]_20\ => \q_reg[11]_19\,
      \q_reg[11]_21\ => \q_reg[11]_20\,
      \q_reg[11]_22\ => \q_reg[11]_21\,
      \q_reg[11]_23\ => \q_reg[11]_22\,
      \q_reg[11]_24\ => \q_reg[11]_23\,
      \q_reg[11]_25\ => \q_reg[11]_24\,
      \q_reg[11]_26\ => \q_reg[11]_25\,
      \q_reg[11]_27\ => \q_reg[11]_26\,
      \q_reg[11]_28\ => \q_reg[11]_27\,
      \q_reg[11]_29\ => \q_reg[11]_28\,
      \q_reg[11]_3\ => \q_reg[11]_2\,
      \q_reg[11]_30\ => \q_reg[11]_29\,
      \q_reg[11]_31\ => \q_reg[11]_30\,
      \q_reg[11]_32\ => \q_reg[11]_31\,
      \q_reg[11]_33\ => \q_reg[11]_32\,
      \q_reg[11]_34\ => \q_reg[11]_33\,
      \q_reg[11]_35\ => \q_reg[11]_34\,
      \q_reg[11]_36\ => \q_reg[11]_35\,
      \q_reg[11]_37\ => \q_reg[11]_36\,
      \q_reg[11]_38\ => \q_reg[11]_37\,
      \q_reg[11]_39\ => \q_reg[11]_38\,
      \q_reg[11]_4\ => \q_reg[11]_3\,
      \q_reg[11]_5\ => \q_reg[11]_4\,
      \q_reg[11]_6\ => \q_reg[11]_5\,
      \q_reg[11]_7\ => \q_reg[11]_6\,
      \q_reg[11]_8\ => \q_reg[11]_7\,
      \q_reg[11]_9\ => \q_reg[11]_8\,
      \q_reg[137]_i_12_0\(0) => \q_reg[137]_i_12\(0),
      \q_reg[13]_0\ => \q_reg[13]\,
      \q_reg[13]_1\ => \q_reg[13]_0\,
      \q_reg[13]_10\ => \q_reg[13]_9\,
      \q_reg[13]_11\ => \q_reg[13]_10\,
      \q_reg[13]_12\ => \q_reg[13]_11\,
      \q_reg[13]_13\ => \q_reg[13]_12\,
      \q_reg[13]_14\ => \q_reg[13]_13\,
      \q_reg[13]_15\ => \q_reg[13]_14\,
      \q_reg[13]_16\ => \q_reg[13]_15\,
      \q_reg[13]_17\ => \q_reg[13]_16\,
      \q_reg[13]_18\ => \q_reg[13]_17\,
      \q_reg[13]_19\ => \q_reg[13]_18\,
      \q_reg[13]_2\ => \q_reg[13]_1\,
      \q_reg[13]_20\ => \q_reg[13]_19\,
      \q_reg[13]_21\ => \q_reg[13]_20\,
      \q_reg[13]_22\ => \q_reg[13]_21\,
      \q_reg[13]_23\ => \q_reg[13]_22\,
      \q_reg[13]_24\ => \q_reg[13]_23\,
      \q_reg[13]_25\ => \q_reg[13]_24\,
      \q_reg[13]_26\ => \q_reg[13]_25\,
      \q_reg[13]_27\ => \q_reg[13]_26\,
      \q_reg[13]_28\ => \q_reg[13]_27\,
      \q_reg[13]_29\ => \q_reg[13]_28\,
      \q_reg[13]_3\ => \q_reg[13]_2\,
      \q_reg[13]_30\ => \q_reg[13]_29\,
      \q_reg[13]_31\ => \q_reg[13]_30\,
      \q_reg[13]_4\ => \q_reg[13]_3\,
      \q_reg[13]_5\ => \q_reg[13]_4\,
      \q_reg[13]_6\ => \q_reg[13]_5\,
      \q_reg[13]_7\ => \q_reg[13]_6\,
      \q_reg[13]_8\ => \q_reg[13]_7\,
      \q_reg[13]_9\ => \q_reg[13]_8\,
      \q_reg[154]_0\(3 downto 0) => \^q_reg[178]\(6 downto 3),
      \q_reg[158]_0\(3 downto 0) => \^q_reg[178]\(10 downto 7),
      \q_reg[15]_0\(3 downto 0) => PCNextF(31 downto 28),
      \q_reg[162]_0\(3 downto 0) => \^q_reg[178]\(14 downto 11),
      \q_reg[166]_0\(3 downto 0) => \^q_reg[178]\(18 downto 15),
      \q_reg[170]_0\(3 downto 0) => \^q_reg[178]\(22 downto 19),
      \q_reg[174]_0\(3 downto 0) => \^q_reg[178]\(26 downto 23),
      \q_reg[178]_0\(3 downto 0) => \^q_reg[178]\(30 downto 27),
      \q_reg[178]_1\(0) => O(0),
      \q_reg[178]_2\(173 downto 1) => p_0_in_1(178 downto 6),
      \q_reg[178]_2\(0) => p_0_in_1(0),
      \q_reg[18]_0\ => \q_reg[18]\,
      \q_reg[31]_0\(3 downto 0) => jalrTarget(31 downto 28),
      \q_reg[36]_0\ => SrcBE(0),
      \q_reg[37]_0\ => \^srcbe__0\(0),
      \q_reg[37]_1\ => \q_reg[37]\,
      \q_reg[37]_10\ => \q_reg[37]_8\,
      \q_reg[37]_11\ => \q_reg[37]_9\,
      \q_reg[37]_12\ => \q_reg[37]_10\,
      \q_reg[37]_13\ => \q_reg[37]_11\,
      \q_reg[37]_14\ => \q_reg[37]_12\,
      \q_reg[37]_15\ => \q_reg[37]_13\,
      \q_reg[37]_16\ => \q_reg[37]_14\,
      \q_reg[37]_17\ => \q_reg[37]_15\,
      \q_reg[37]_18\ => \q_reg[37]_16\,
      \q_reg[37]_19\ => \q_reg[37]_17\,
      \q_reg[37]_2\ => \q_reg[37]_0\,
      \q_reg[37]_20\ => \q_reg[37]_18\,
      \q_reg[37]_21\ => \q_reg[37]_19\,
      \q_reg[37]_3\ => \q_reg[37]_1\,
      \q_reg[37]_4\ => \q_reg[37]_2\,
      \q_reg[37]_5\ => \q_reg[37]_3\,
      \q_reg[37]_6\ => \q_reg[37]_4\,
      \q_reg[37]_7\ => \q_reg[37]_5\,
      \q_reg[37]_8\ => \q_reg[37]_6\,
      \q_reg[37]_9\ => \q_reg[37]_7\,
      \q_reg[38]_0\ => \^srcbe__0\(1),
      \q_reg[38]_1\ => \q_reg[38]\,
      \q_reg[38]_2\ => \q_reg[38]_0\,
      \q_reg[39]_0\ => \^srcbe__0\(2),
      \q_reg[39]_1\(3) => regE_n_297,
      \q_reg[39]_1\(2) => regE_n_298,
      \q_reg[39]_1\(1) => regE_n_299,
      \q_reg[39]_1\(0) => regE_n_300,
      \q_reg[39]_2\(3) => regE_n_325,
      \q_reg[39]_2\(2) => regE_n_326,
      \q_reg[39]_2\(1) => regE_n_327,
      \q_reg[39]_2\(0) => regE_n_328,
      \q_reg[40]_0\ => \^srcbe__0\(3),
      \q_reg[41]_0\ => \^srcbe__0\(4),
      \q_reg[42]_0\ => \^srcbe__0\(5),
      \q_reg[42]_1\(3) => regE_n_106,
      \q_reg[42]_1\(2) => regE_n_107,
      \q_reg[42]_1\(1) => regE_n_108,
      \q_reg[42]_1\(0) => regE_n_109,
      \q_reg[43]_0\ => \^srcbe__0\(6),
      \q_reg[43]_1\(3) => regE_n_301,
      \q_reg[43]_1\(2) => regE_n_302,
      \q_reg[43]_1\(1) => regE_n_303,
      \q_reg[43]_1\(0) => regE_n_304,
      \q_reg[43]_2\(3) => regE_n_329,
      \q_reg[43]_2\(2) => regE_n_330,
      \q_reg[43]_2\(1) => regE_n_331,
      \q_reg[43]_2\(0) => regE_n_332,
      \q_reg[44]_0\ => \^srcbe__0\(7),
      \q_reg[45]_0\ => \^srcbe__0\(8),
      \q_reg[46]_0\ => \^srcbe__0\(9),
      \q_reg[47]_0\ => \^srcbe__0\(10),
      \q_reg[47]_1\(3) => regE_n_305,
      \q_reg[47]_1\(2) => regE_n_306,
      \q_reg[47]_1\(1) => regE_n_307,
      \q_reg[47]_1\(0) => regE_n_308,
      \q_reg[47]_2\(3) => regE_n_333,
      \q_reg[47]_2\(2) => regE_n_334,
      \q_reg[47]_2\(1) => regE_n_335,
      \q_reg[47]_2\(0) => regE_n_336,
      \q_reg[48]_0\ => \^srcbe__0\(11),
      \q_reg[49]_0\ => \^srcbe__0\(12),
      \q_reg[50]_0\ => \^srcbe__0\(13),
      \q_reg[50]_1\(3) => regE_n_80,
      \q_reg[50]_1\(2) => regE_n_81,
      \q_reg[50]_1\(1) => regE_n_82,
      \q_reg[50]_1\(0) => regE_n_83,
      \q_reg[51]_0\ => \^srcbe__0\(14),
      \q_reg[51]_1\(3) => regE_n_309,
      \q_reg[51]_1\(2) => regE_n_310,
      \q_reg[51]_1\(1) => regE_n_311,
      \q_reg[51]_1\(0) => regE_n_312,
      \q_reg[51]_2\(3) => regE_n_337,
      \q_reg[51]_2\(2) => regE_n_338,
      \q_reg[51]_2\(1) => regE_n_339,
      \q_reg[51]_2\(0) => regE_n_340,
      \q_reg[51]_3\(3) => regE_n_357,
      \q_reg[51]_3\(2) => regE_n_358,
      \q_reg[51]_3\(1) => regE_n_359,
      \q_reg[51]_3\(0) => regE_n_360,
      \q_reg[52]_0\ => \^srcbe__0\(15),
      \q_reg[53]_0\ => \^srcbe__0\(16),
      \q_reg[54]_0\ => \^srcbe__0\(17),
      \q_reg[55]_0\ => \^srcbe__0\(18),
      \q_reg[55]_1\(3) => regE_n_313,
      \q_reg[55]_1\(2) => regE_n_314,
      \q_reg[55]_1\(1) => regE_n_315,
      \q_reg[55]_1\(0) => regE_n_316,
      \q_reg[55]_2\(3) => regE_n_341,
      \q_reg[55]_2\(2) => regE_n_342,
      \q_reg[55]_2\(1) => regE_n_343,
      \q_reg[55]_2\(0) => regE_n_344,
      \q_reg[56]_0\ => \^srcbe__0\(19),
      \q_reg[57]_0\ => \^srcbe__0\(20),
      \q_reg[58]_0\(3) => regE_n_111,
      \q_reg[58]_0\(2) => regE_n_112,
      \q_reg[58]_0\(1) => regE_n_113,
      \q_reg[58]_0\(0) => regE_n_114,
      \q_reg[58]_1\ => \^srcbe__0\(21),
      \q_reg[58]_2\(3) => regE_n_118,
      \q_reg[58]_2\(2) => regE_n_119,
      \q_reg[58]_2\(1) => regE_n_120,
      \q_reg[58]_2\(0) => regE_n_121,
      \q_reg[59]_0\ => \^srcbe__0\(22),
      \q_reg[59]_1\(3) => regE_n_317,
      \q_reg[59]_1\(2) => regE_n_318,
      \q_reg[59]_1\(1) => regE_n_319,
      \q_reg[59]_1\(0) => regE_n_320,
      \q_reg[59]_2\(3) => regE_n_345,
      \q_reg[59]_2\(2) => regE_n_346,
      \q_reg[59]_2\(1) => regE_n_347,
      \q_reg[59]_2\(0) => regE_n_348,
      \q_reg[60]_0\ => \^srcbe__0\(23),
      \q_reg[61]_0\ => \^srcbe__0\(24),
      \q_reg[62]_0\ => \^srcbe__0\(25),
      \q_reg[63]_0\ => \^srcbe__0\(26),
      \q_reg[63]_1\(3) => regE_n_321,
      \q_reg[63]_1\(2) => regE_n_322,
      \q_reg[63]_1\(1) => regE_n_323,
      \q_reg[63]_1\(0) => regE_n_324,
      \q_reg[63]_2\(3) => regE_n_349,
      \q_reg[63]_2\(2) => regE_n_350,
      \q_reg[63]_2\(1) => regE_n_351,
      \q_reg[63]_2\(0) => regE_n_352,
      \q_reg[64]_0\ => \^srcbe__0\(27),
      \q_reg[65]_0\ => \^srcbe__0\(28),
      \q_reg[66]_0\ => \^srcbe__0\(29),
      \q_reg[66]_1\(3) => regE_n_99,
      \q_reg[66]_1\(2) => regE_n_100,
      \q_reg[66]_1\(1) => regE_n_101,
      \q_reg[66]_1\(0) => regE_n_102,
      \q_reg[67]_0\ => \^srcbe__0\(30),
      \q_reg[67]_1\(3) => regE_n_284,
      \q_reg[67]_1\(2) => regE_n_285,
      \q_reg[67]_1\(1) => regE_n_286,
      \q_reg[67]_1\(0) => regE_n_287,
      \q_reg[67]_2\(3) => regE_n_291,
      \q_reg[67]_2\(2) => regE_n_292,
      \q_reg[67]_2\(1) => regE_n_293,
      \q_reg[67]_2\(0) => regE_n_294,
      \q_reg[67]_3\(3) => regE_n_364,
      \q_reg[67]_3\(2) => regE_n_365,
      \q_reg[67]_3\(1) => regE_n_366,
      \q_reg[67]_3\(0) => regE_n_367,
      \q_reg[78]_0\ => regE_n_288,
      \q_reg[78]_1\(0) => \q_reg[78]\(3),
      \q_reg[78]_2\ => regW_n_39,
      \q_reg[84]_0\(76 downto 75) => PCE(1 downto 0),
      \q_reg[84]_0\(74 downto 70) => Rs1E(4 downto 0),
      \q_reg[84]_0\(69) => Rs2E(4),
      \q_reg[84]_0\(68) => Rs2E(0),
      \q_reg[84]_0\(67 downto 63) => RdE(4 downto 0),
      \q_reg[84]_0\(62 downto 32) => ImmExtE(31 downto 1),
      \q_reg[84]_0\(31) => \^q_reg[36]\(0),
      \q_reg[84]_0\(30 downto 1) => PCPlus4E(31 downto 2),
      \q_reg[84]_0\(0) => regE_n_283,
      \q_reg[95]_0\(4 downto 0) => \q_reg[95]\(4 downto 0),
      reset => reset
    );
regM: entity work.\design_1_top_0_0_flopr__parameterized1\
     port map (
      D(31) => regM_n_108,
      D(30) => regM_n_109,
      D(29) => regM_n_110,
      D(28) => regM_n_111,
      D(27) => regM_n_112,
      D(26) => regM_n_113,
      D(25) => regM_n_114,
      D(24) => regM_n_115,
      D(23) => regM_n_116,
      D(22) => regM_n_117,
      D(21) => regM_n_118,
      D(20) => regM_n_119,
      D(19) => regM_n_120,
      D(18) => regM_n_121,
      D(17) => regM_n_122,
      D(16) => regM_n_123,
      D(15) => regM_n_124,
      D(14) => regM_n_125,
      D(13) => regM_n_126,
      D(12) => regM_n_127,
      D(11) => regM_n_128,
      D(10) => regM_n_129,
      D(9) => regM_n_130,
      D(8) => regM_n_131,
      D(7) => regM_n_132,
      D(6) => regM_n_133,
      D(5) => regM_n_134,
      D(4) => regM_n_135,
      D(3) => regM_n_136,
      D(2) => regM_n_137,
      D(1) => regM_n_138,
      D(0) => regM_n_139,
      E(0) => regM_n_107,
      ForwardAE11_out => \hu/ForwardAE11_out\,
      Q(103 downto 72) => \^q_reg[137]\(34 downto 3),
      Q(71 downto 67) => RdM(4 downto 0),
      Q(66) => regM_n_38,
      Q(65) => regM_n_39,
      Q(64) => regM_n_40,
      Q(63) => regM_n_41,
      Q(62) => regM_n_42,
      Q(61) => regM_n_43,
      Q(60) => regM_n_44,
      Q(59) => regM_n_45,
      Q(58) => regM_n_46,
      Q(57) => regM_n_47,
      Q(56) => regM_n_48,
      Q(55) => regM_n_49,
      Q(54) => regM_n_50,
      Q(53) => regM_n_51,
      Q(52) => regM_n_52,
      Q(51) => regM_n_53,
      Q(50) => regM_n_54,
      Q(49) => regM_n_55,
      Q(48) => regM_n_56,
      Q(47) => regM_n_57,
      Q(46) => regM_n_58,
      Q(45) => regM_n_59,
      Q(44) => regM_n_60,
      Q(43) => regM_n_61,
      Q(42) => regM_n_62,
      Q(41) => regM_n_63,
      Q(40) => regM_n_64,
      Q(39) => regM_n_65,
      Q(38) => regM_n_66,
      Q(37) => regM_n_67,
      Q(36) => regM_n_68,
      Q(35) => regM_n_69,
      Q(34) => regM_n_70,
      Q(33) => regM_n_71,
      Q(32) => regM_n_72,
      Q(31) => regM_n_73,
      Q(30) => regM_n_74,
      Q(29) => regM_n_75,
      Q(28) => regM_n_76,
      Q(27) => regM_n_77,
      Q(26) => regM_n_78,
      Q(25) => regM_n_79,
      Q(24) => regM_n_80,
      Q(23) => regM_n_81,
      Q(22) => regM_n_82,
      Q(21) => regM_n_83,
      Q(20) => regM_n_84,
      Q(19) => regM_n_85,
      Q(18) => regM_n_86,
      Q(17) => regM_n_87,
      Q(16) => regM_n_88,
      Q(15) => regM_n_89,
      Q(14) => regM_n_90,
      Q(13) => regM_n_91,
      Q(12) => regM_n_92,
      Q(11) => regM_n_93,
      Q(10) => regM_n_94,
      Q(9) => regM_n_95,
      Q(8) => regM_n_96,
      Q(7) => regM_n_97,
      Q(6) => regM_n_98,
      Q(5) => regM_n_99,
      Q(4) => regM_n_100,
      Q(3) => regM_n_101,
      Q(2 downto 0) => \^q_reg[137]\(2 downto 0),
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      clk => clk,
      jalrTarget_carry_i_9(1) => \q_reg[78]\(3),
      jalrTarget_carry_i_9(0) => \q_reg[78]\(0),
      jalrTarget_carry_i_9_0 => regE_n_288,
      \q_reg[137]_0\(67 downto 36) => \q_reg[137]_0\(32 downto 1),
      \q_reg[137]_0\(35 downto 5) => WriteDataE(31 downto 1),
      \q_reg[137]_0\(4) => \^q_reg[115]\(0),
      \q_reg[137]_0\(3 downto 1) => \q_reg[4]\(2 downto 0),
      \q_reg[137]_0\(0) => \q_reg[137]_0\(0),
      \q_reg[2]_0\ => \q_reg[2]\,
      \q_reg[2]_1\ => \q_reg[2]_0\,
      \q_reg[2]_2\ => \q_reg[2]_1\,
      \q_reg[2]_3\ => \q_reg[2]_2\,
      \q_reg[2]_4\ => \q_reg[2]_3\,
      \q_reg[2]_5\ => \q_reg[2]_4\,
      \q_reg[2]_6\ => \q_reg[2]_5\,
      \q_reg[2]_7\ => \q_reg[2]_6\,
      \q_reg[38]_0\(74 downto 73) => PCE(1 downto 0),
      \q_reg[38]_0\(72 downto 70) => Rs1E(3 downto 1),
      \q_reg[38]_0\(69) => Rs2E(4),
      \q_reg[38]_0\(68) => Rs2E(0),
      \q_reg[38]_0\(67 downto 63) => RdE(4 downto 0),
      \q_reg[38]_0\(62 downto 32) => ImmExtE(31 downto 1),
      \q_reg[38]_0\(31) => \^q_reg[36]\(0),
      \q_reg[38]_0\(30 downto 1) => PCPlus4E(31 downto 2),
      \q_reg[38]_0\(0) => regE_n_283,
      \q_reg[4]_0\(0) => regM_n_140,
      \q_reg[4]_1\(23) => regM_n_141,
      \q_reg[4]_1\(22) => regM_n_142,
      \q_reg[4]_1\(21) => regM_n_143,
      \q_reg[4]_1\(20) => regM_n_144,
      \q_reg[4]_1\(19) => regM_n_145,
      \q_reg[4]_1\(18) => regM_n_146,
      \q_reg[4]_1\(17) => regM_n_147,
      \q_reg[4]_1\(16) => regM_n_148,
      \q_reg[4]_1\(15) => regM_n_149,
      \q_reg[4]_1\(14) => regM_n_150,
      \q_reg[4]_1\(13) => regM_n_151,
      \q_reg[4]_1\(12) => regM_n_152,
      \q_reg[4]_1\(11) => regM_n_153,
      \q_reg[4]_1\(10) => regM_n_154,
      \q_reg[4]_1\(9) => regM_n_155,
      \q_reg[4]_1\(8) => regM_n_156,
      \q_reg[4]_1\(7) => regM_n_157,
      \q_reg[4]_1\(6) => regM_n_158,
      \q_reg[4]_1\(5) => regM_n_159,
      \q_reg[4]_1\(4) => regM_n_160,
      \q_reg[4]_1\(3) => regM_n_161,
      \q_reg[4]_1\(2) => regM_n_162,
      \q_reg[4]_1\(1) => regM_n_163,
      \q_reg[4]_1\(0) => regM_n_164,
      \q_reg[69]_0\ => regM_n_106,
      \q_reg[71]_0\ => regM_n_105,
      \q_reg[75]_0\ => \q_reg[75]\,
      \q_reg[91]_0\ => \q_reg[91]\,
      reset => reset,
      \writeDataM[31]\(31 downto 0) => DataM(31 downto 0)
    );
regW: entity work.\design_1_top_0_0_flopr__parameterized2\
     port map (
      D(134 downto 103) => \^q_reg[137]\(34 downto 3),
      D(102 downto 71) => DataM(31 downto 0),
      D(70 downto 66) => RdM(4 downto 0),
      D(65) => regM_n_38,
      D(64) => regM_n_39,
      D(63) => regM_n_40,
      D(62) => regM_n_41,
      D(61) => regM_n_42,
      D(60) => regM_n_43,
      D(59) => regM_n_44,
      D(58) => regM_n_45,
      D(57) => regM_n_46,
      D(56) => regM_n_47,
      D(55) => regM_n_48,
      D(54) => regM_n_49,
      D(53) => regM_n_50,
      D(52) => regM_n_51,
      D(51) => regM_n_52,
      D(50) => regM_n_53,
      D(49) => regM_n_54,
      D(48) => regM_n_55,
      D(47) => regM_n_56,
      D(46) => regM_n_57,
      D(45) => regM_n_58,
      D(44) => regM_n_59,
      D(43) => regM_n_60,
      D(42) => regM_n_61,
      D(41) => regM_n_62,
      D(40) => regM_n_63,
      D(39) => regM_n_64,
      D(38) => regM_n_65,
      D(37) => regM_n_66,
      D(36) => regM_n_67,
      D(35) => regM_n_68,
      D(34) => regM_n_69,
      D(33) => regM_n_70,
      D(32) => regM_n_71,
      D(31) => regM_n_72,
      D(30) => regM_n_73,
      D(29) => regM_n_74,
      D(28) => regM_n_75,
      D(27) => regM_n_76,
      D(26) => regM_n_77,
      D(25) => regM_n_78,
      D(24) => regM_n_79,
      D(23) => regM_n_80,
      D(22) => regM_n_81,
      D(21) => regM_n_82,
      D(20) => regM_n_83,
      D(19) => regM_n_84,
      D(18) => regM_n_85,
      D(17) => regM_n_86,
      D(16) => regM_n_87,
      D(15) => regM_n_88,
      D(14) => regM_n_89,
      D(13) => regM_n_90,
      D(12) => regM_n_91,
      D(11) => regM_n_92,
      D(10) => regM_n_93,
      D(9) => regM_n_94,
      D(8) => regM_n_95,
      D(7) => regM_n_96,
      D(6) => regM_n_97,
      D(5) => regM_n_98,
      D(4) => regM_n_99,
      D(3) => regM_n_100,
      D(2) => regM_n_101,
      D(1 downto 0) => \q_reg[78]\(2 downto 1),
      Q(4 downto 0) => RdW(4 downto 0),
      ResultW(31 downto 0) => ResultW(31 downto 0),
      clk => clk,
      jalrTarget_carry_i_9(5 downto 3) => Rs1E(4 downto 2),
      jalrTarget_carry_i_9(2) => Rs1E(0),
      jalrTarget_carry_i_9(1) => Rs2E(4),
      jalrTarget_carry_i_9(0) => Rs2E(0),
      \q_reg[70]_0\ => regW_n_39,
      \q_reg[72]_0\ => regW_n_38,
      \q_reg[74]_0\ => regW_n_32,
      reset => reset
    );
rf: entity work.design_1_top_0_0_regfile
     port map (
      Q(4 downto 0) => RdW(4 downto 0),
      RegWriteW => RegWriteW,
      ResultW(31 downto 0) => ResultW(31 downto 0),
      clk => clk,
      \q_reg[140]\(9 downto 5) => Rs2D(4 downto 0),
      \q_reg[140]\(4 downto 0) => Rs1D(4 downto 0),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0)
    );
store: entity work.design_1_top_0_0_store
     port map (
      D(31) => regM_n_108,
      D(30) => regM_n_109,
      D(29) => regM_n_110,
      D(28) => regM_n_111,
      D(27) => regM_n_112,
      D(26) => regM_n_113,
      D(25) => regM_n_114,
      D(24) => regM_n_115,
      D(23) => regM_n_116,
      D(22) => regM_n_117,
      D(21) => regM_n_118,
      D(20) => regM_n_119,
      D(19) => regM_n_120,
      D(18) => regM_n_121,
      D(17) => regM_n_122,
      D(16) => regM_n_123,
      D(15) => regM_n_124,
      D(14) => regM_n_125,
      D(13) => regM_n_126,
      D(12) => regM_n_127,
      D(11) => regM_n_128,
      D(10) => regM_n_129,
      D(9) => regM_n_130,
      D(8) => regM_n_131,
      D(7) => regM_n_132,
      D(6) => regM_n_133,
      D(5) => regM_n_134,
      D(4) => regM_n_135,
      D(3) => regM_n_136,
      D(2) => regM_n_137,
      D(1) => regM_n_138,
      D(0) => regM_n_139,
      E(0) => regM_n_140,
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
    MemStrobe : out STD_LOGIC;
    PCReady : in STD_LOGIC
  );
end design_1_top_0_0_riscv;

architecture STRUCTURE of design_1_top_0_0_riscv is
  signal ALUControlE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALUResultE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal ALUSrcE : STD_LOGIC;
  signal ALUSrcM : STD_LOGIC;
  signal FlushE : STD_LOGIC;
  signal ImmExtE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^memwritem\ : STD_LOGIC;
  signal \^pcf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \PCSrc1__6\ : STD_LOGIC;
  signal PCSrcE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RegWriteM : STD_LOGIC;
  signal RegWriteW : STD_LOGIC;
  signal ResultSrcEb0 : STD_LOGIC;
  signal ResultSrcM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SrcAE : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal SrcBE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SrcBE__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal WriteDataE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu/condinvb__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \alu/data8\ : STD_LOGIC;
  signal \alu/p_1_in\ : STD_LOGIC;
  signal \alu/p_2_in\ : STD_LOGIC;
  signal c_n_77 : STD_LOGIC;
  signal c_n_78 : STD_LOGIC;
  signal c_n_84 : STD_LOGIC;
  signal c_n_85 : STD_LOGIC;
  signal c_n_87 : STD_LOGIC;
  signal c_n_88 : STD_LOGIC;
  signal c_n_89 : STD_LOGIC;
  signal c_n_90 : STD_LOGIC;
  signal c_n_91 : STD_LOGIC;
  signal c_n_92 : STD_LOGIC;
  signal c_n_93 : STD_LOGIC;
  signal c_n_94 : STD_LOGIC;
  signal c_n_95 : STD_LOGIC;
  signal c_n_96 : STD_LOGIC;
  signal c_n_97 : STD_LOGIC;
  signal dp_n_120 : STD_LOGIC;
  signal dp_n_121 : STD_LOGIC;
  signal dp_n_122 : STD_LOGIC;
  signal dp_n_123 : STD_LOGIC;
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
  signal dp_n_159 : STD_LOGIC;
  signal dp_n_160 : STD_LOGIC;
  signal dp_n_161 : STD_LOGIC;
  signal dp_n_162 : STD_LOGIC;
  signal dp_n_163 : STD_LOGIC;
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
  signal dp_n_232 : STD_LOGIC;
  signal dp_n_233 : STD_LOGIC;
  signal dp_n_234 : STD_LOGIC;
  signal dp_n_235 : STD_LOGIC;
  signal dp_n_236 : STD_LOGIC;
  signal dp_n_239 : STD_LOGIC;
  signal dp_n_241 : STD_LOGIC;
  signal dp_n_242 : STD_LOGIC;
  signal dp_n_243 : STD_LOGIC;
  signal dp_n_244 : STD_LOGIC;
  signal dp_n_245 : STD_LOGIC;
  signal dp_n_246 : STD_LOGIC;
  signal dp_n_247 : STD_LOGIC;
  signal dp_n_248 : STD_LOGIC;
  signal dp_n_249 : STD_LOGIC;
  signal dp_n_250 : STD_LOGIC;
  signal dp_n_251 : STD_LOGIC;
  signal dp_n_252 : STD_LOGIC;
  signal dp_n_253 : STD_LOGIC;
  signal dp_n_254 : STD_LOGIC;
  signal dp_n_255 : STD_LOGIC;
  signal dp_n_256 : STD_LOGIC;
  signal dp_n_257 : STD_LOGIC;
  signal dp_n_258 : STD_LOGIC;
  signal dp_n_259 : STD_LOGIC;
  signal dp_n_260 : STD_LOGIC;
  signal dp_n_261 : STD_LOGIC;
  signal dp_n_86 : STD_LOGIC;
  signal dp_n_87 : STD_LOGIC;
  signal funct3E : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal funct3M : STD_LOGIC_VECTOR ( 1 to 1 );
  signal negE : STD_LOGIC;
  signal ovfE : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \regD/p_0_in\ : STD_LOGIC_VECTOR ( 95 downto 2 );
begin
  MemWriteM <= \^memwritem\;
  PCF(31 downto 0) <= \^pcf\(31 downto 0);
c: entity work.design_1_top_0_0_controller
     port map (
      CO(0) => \alu/data8\,
      D(32 downto 1) => \regD/p_0_in\(95 downto 64),
      D(0) => \regD/p_0_in\(2),
      \Data_reg[31]_i_2\(1) => funct3M(1),
      \Data_reg[31]_i_2\(0) => ALUSrcM,
      FlushE => FlushE,
      InstrF(31 downto 0) => InstrF(31 downto 0),
      O(0) => \alu/p_2_in\,
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(3) => RegWriteM,
      Q(2 downto 1) => ResultSrcM(1 downto 0),
      Q(0) => \^memwritem\,
      ReadDataM(7 downto 0) => ReadDataM(15 downto 8),
      RegWriteW => RegWriteW,
      SrcAE(30 downto 0) => SrcAE(31 downto 1),
      SrcBE(0) => SrcBE(0),
      \SrcBE__0\(30 downto 0) => \SrcBE__0\(31 downto 1),
      WriteDataE(0) => WriteDataE(0),
      clk => clk,
      \condinvb__0\(0) => \alu/condinvb__0\(31),
      funct3E(2 downto 0) => funct3E(2 downto 0),
      ovfE => ovfE,
      p_0_in(20 downto 0) => p_0_in(20 downto 0),
      \q[107]_i_2\(0) => ImmExtE(0),
      \q[31]_i_12\(0) => \alu/p_1_in\,
      \q_reg[104]\ => dp_n_239,
      \q_reg[106]\ => dp_n_137,
      \q_reg[106]_0\ => dp_n_217,
      \q_reg[106]_1\ => dp_n_136,
      \q_reg[107]\ => dp_n_138,
      \q_reg[107]_0\ => dp_n_233,
      \q_reg[107]_1\ => dp_n_241,
      \q_reg[108]\ => dp_n_139,
      \q_reg[108]_0\ => dp_n_212,
      \q_reg[108]_1\ => dp_n_140,
      \q_reg[109]\ => dp_n_144,
      \q_reg[109]_0\ => dp_n_231,
      \q_reg[109]_1\ => dp_n_141,
      \q_reg[110]\ => dp_n_145,
      \q_reg[110]_0\ => dp_n_221,
      \q_reg[110]_1\ => dp_n_142,
      \q_reg[111]\ => dp_n_223,
      \q_reg[111]_0\ => dp_n_146,
      \q_reg[111]_1\ => dp_n_252,
      \q_reg[112]\ => dp_n_143,
      \q_reg[112]_0\ => dp_n_147,
      \q_reg[112]_1\ => dp_n_208,
      \q_reg[113]\ => dp_n_224,
      \q_reg[113]_0\ => dp_n_148,
      \q_reg[113]_1\ => dp_n_244,
      \q_reg[113]_2\ => dp_n_156,
      \q_reg[114]\ => dp_n_149,
      \q_reg[114]_0\ => dp_n_214,
      \q_reg[114]_1\ => dp_n_155,
      \q_reg[115]\ => dp_n_150,
      \q_reg[115]_0\ => dp_n_247,
      \q_reg[115]_1\ => dp_n_157,
      \q_reg[116]\ => dp_n_151,
      \q_reg[116]_0\ => dp_n_210,
      \q_reg[116]_1\ => dp_n_158,
      \q_reg[117]\ => dp_n_152,
      \q_reg[117]_0\ => dp_n_245,
      \q_reg[117]_1\ => dp_n_159,
      \q_reg[118]\ => dp_n_153,
      \q_reg[118]_0\ => dp_n_219,
      \q_reg[118]_1\ => dp_n_160,
      \q_reg[119]\ => dp_n_154,
      \q_reg[119]_0\ => dp_n_250,
      \q_reg[119]_1\ => dp_n_161,
      \q_reg[11]\ => c_n_77,
      \q_reg[11]_0\ => c_n_78,
      \q_reg[11]_1\ => c_n_84,
      \q_reg[11]_2\(0) => \alu/condinvb__0\(0),
      \q_reg[120]\ => dp_n_128,
      \q_reg[120]_0\ => dp_n_163,
      \q_reg[120]_1\ => dp_n_162,
      \q_reg[121]\ => dp_n_129,
      \q_reg[121]_0\ => dp_n_243,
      \q_reg[121]_1\ => dp_n_200,
      \q_reg[122]\ => dp_n_130,
      \q_reg[122]_0\ => dp_n_218,
      \q_reg[122]_1\ => dp_n_201,
      \q_reg[123]\ => dp_n_131,
      \q_reg[123]_0\ => dp_n_234,
      \q_reg[123]_1\ => dp_n_249,
      \q_reg[124]\ => dp_n_132,
      \q_reg[124]_0\ => dp_n_213,
      \q_reg[124]_1\ => dp_n_242,
      \q_reg[125]\ => dp_n_133,
      \q_reg[125]_0\ => dp_n_232,
      \q_reg[125]_1\ => dp_n_226,
      \q_reg[126]\ => dp_n_134,
      \q_reg[126]_0\ => dp_n_222,
      \q_reg[126]_1\ => dp_n_202,
      \q_reg[127]\ => dp_n_135,
      \q_reg[127]_0\ => dp_n_236,
      \q_reg[127]_1\ => dp_n_227,
      \q_reg[128]\ => dp_n_120,
      \q_reg[128]_0\ => dp_n_209,
      \q_reg[128]_1\ => dp_n_203,
      \q_reg[129]\ => dp_n_121,
      \q_reg[129]_0\ => dp_n_225,
      \q_reg[129]_1\ => dp_n_228,
      \q_reg[12]\(32) => negE,
      \q_reg[12]\(31 downto 1) => ALUResultE(30 downto 0),
      \q_reg[12]\(0) => ALUSrcE,
      \q_reg[12]_0\ => c_n_85,
      \q_reg[130]\ => dp_n_122,
      \q_reg[130]_0\ => dp_n_215,
      \q_reg[130]_1\ => dp_n_204,
      \q_reg[131]\ => dp_n_123,
      \q_reg[131]_0\ => dp_n_248,
      \q_reg[131]_1\ => dp_n_229,
      \q_reg[132]\ => dp_n_124,
      \q_reg[132]_0\ => dp_n_211,
      \q_reg[132]_1\ => dp_n_205,
      \q_reg[133]\ => dp_n_125,
      \q_reg[133]_0\ => dp_n_246,
      \q_reg[133]_1\ => dp_n_230,
      \q_reg[134]\ => dp_n_126,
      \q_reg[134]_0\ => dp_n_220,
      \q_reg[134]_1\ => dp_n_206,
      \q_reg[135]\ => dp_n_127,
      \q_reg[135]_0\ => dp_n_251,
      \q_reg[135]_1\ => dp_n_207,
      \q_reg[135]_2\ => dp_n_235,
      \q_reg[136]\ => dp_n_86,
      \q_reg[136]_0\ => dp_n_199,
      \q_reg[137]\ => dp_n_87,
      \q_reg[137]_0\ => dp_n_253,
      \q_reg[16]\ => c_n_97,
      \q_reg[18]\(4) => ResultSrcEb0,
      \q_reg[18]\(3 downto 0) => ALUControlE(3 downto 0),
      \q_reg[2]\ => c_n_96,
      \q_reg[2]_0\(0) => \^pcf\(2),
      \q_reg[3]\ => c_n_95,
      \q_reg[83]\ => dp_n_261,
      \q_reg[84]\ => dp_n_260,
      \q_reg[85]\ => dp_n_259,
      \q_reg[86]\ => dp_n_258,
      \q_reg[87]\ => dp_n_257,
      \q_reg[88]\ => dp_n_256,
      \q_reg[89]\ => dp_n_255,
      \q_reg[90]\ => dp_n_254,
      \readDataM[15]\(7) => c_n_87,
      \readDataM[15]\(6) => c_n_88,
      \readDataM[15]\(5) => c_n_89,
      \readDataM[15]\(4) => c_n_90,
      \readDataM[15]\(3) => c_n_91,
      \readDataM[15]\(2) => c_n_92,
      \readDataM[15]\(1) => c_n_93,
      \readDataM[15]\(0) => c_n_94,
      reset => reset
    );
dp: entity work.design_1_top_0_0_datapath
     port map (
      CO(0) => \alu/data8\,
      D(32 downto 1) => \regD/p_0_in\(95 downto 64),
      D(0) => \regD/p_0_in\(2),
      FlushE => FlushE,
      O(0) => \alu/p_2_in\,
      PCReady => PCReady,
      \PCSrc1__6\ => \PCSrc1__6\,
      PCSrcE(0) => PCSrcE(0),
      Q(31 downto 0) => \^pcf\(31 downto 0),
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      RegWriteW => RegWriteW,
      SrcBE(0) => SrcBE(0),
      \SrcBE__0\(30 downto 0) => \SrcBE__0\(31 downto 1),
      WriteDataM(31 downto 0) => WriteDataM(31 downto 0),
      clk => clk,
      \condinvb__0\(0) => \alu/condinvb__0\(31),
      ovfE => ovfE,
      p_0_in(20 downto 0) => p_0_in(20 downto 0),
      \q[106]_i_3\(0) => \alu/condinvb__0\(0),
      \q_reg[104]\ => c_n_97,
      \q_reg[106]\ => c_n_85,
      \q_reg[107]\ => c_n_84,
      \q_reg[107]_0\ => c_n_78,
      \q_reg[107]_1\ => c_n_77,
      \q_reg[10]\ => dp_n_86,
      \q_reg[115]\(0) => WriteDataE(0),
      \q_reg[11]\ => dp_n_87,
      \q_reg[11]_0\ => dp_n_120,
      \q_reg[11]_1\ => dp_n_121,
      \q_reg[11]_10\ => dp_n_130,
      \q_reg[11]_11\ => dp_n_131,
      \q_reg[11]_12\ => dp_n_132,
      \q_reg[11]_13\ => dp_n_133,
      \q_reg[11]_14\ => dp_n_134,
      \q_reg[11]_15\ => dp_n_135,
      \q_reg[11]_16\ => dp_n_136,
      \q_reg[11]_17\ => dp_n_137,
      \q_reg[11]_18\ => dp_n_138,
      \q_reg[11]_19\ => dp_n_139,
      \q_reg[11]_2\ => dp_n_122,
      \q_reg[11]_20\ => dp_n_144,
      \q_reg[11]_21\ => dp_n_145,
      \q_reg[11]_22\ => dp_n_146,
      \q_reg[11]_23\ => dp_n_147,
      \q_reg[11]_24\ => dp_n_148,
      \q_reg[11]_25\ => dp_n_149,
      \q_reg[11]_26\ => dp_n_150,
      \q_reg[11]_27\ => dp_n_151,
      \q_reg[11]_28\ => dp_n_152,
      \q_reg[11]_29\ => dp_n_153,
      \q_reg[11]_3\ => dp_n_123,
      \q_reg[11]_30\ => dp_n_154,
      \q_reg[11]_31\ => dp_n_155,
      \q_reg[11]_32\ => dp_n_157,
      \q_reg[11]_33\ => dp_n_158,
      \q_reg[11]_34\ => dp_n_159,
      \q_reg[11]_35\ => dp_n_160,
      \q_reg[11]_36\ => dp_n_161,
      \q_reg[11]_37\ => dp_n_162,
      \q_reg[11]_38\ => dp_n_200,
      \q_reg[11]_4\ => dp_n_124,
      \q_reg[11]_5\ => dp_n_125,
      \q_reg[11]_6\ => dp_n_126,
      \q_reg[11]_7\ => dp_n_127,
      \q_reg[11]_8\ => dp_n_128,
      \q_reg[11]_9\ => dp_n_129,
      \q_reg[137]\(34 downto 3) => ALUResultM(31 downto 0),
      \q_reg[137]\(2) => funct3M(1),
      \q_reg[137]\(1) => ALUSrcM,
      \q_reg[137]\(0) => MemStrobe,
      \q_reg[137]_0\(32) => negE,
      \q_reg[137]_0\(31 downto 1) => ALUResultE(30 downto 0),
      \q_reg[137]_0\(0) => ALUSrcE,
      \q_reg[137]_i_12\(0) => \alu/p_1_in\,
      \q_reg[13]\ => dp_n_163,
      \q_reg[13]_0\ => dp_n_199,
      \q_reg[13]_1\ => dp_n_208,
      \q_reg[13]_10\ => dp_n_218,
      \q_reg[13]_11\ => dp_n_219,
      \q_reg[13]_12\ => dp_n_220,
      \q_reg[13]_13\ => dp_n_221,
      \q_reg[13]_14\ => dp_n_222,
      \q_reg[13]_15\ => dp_n_225,
      \q_reg[13]_16\ => dp_n_231,
      \q_reg[13]_17\ => dp_n_232,
      \q_reg[13]_18\ => dp_n_233,
      \q_reg[13]_19\ => dp_n_234,
      \q_reg[13]_2\ => dp_n_209,
      \q_reg[13]_20\ => dp_n_236,
      \q_reg[13]_21\ => dp_n_243,
      \q_reg[13]_22\ => dp_n_244,
      \q_reg[13]_23\ => dp_n_245,
      \q_reg[13]_24\ => dp_n_246,
      \q_reg[13]_25\ => dp_n_247,
      \q_reg[13]_26\ => dp_n_248,
      \q_reg[13]_27\ => dp_n_250,
      \q_reg[13]_28\ => dp_n_251,
      \q_reg[13]_29\ => dp_n_252,
      \q_reg[13]_3\ => dp_n_210,
      \q_reg[13]_30\ => dp_n_253,
      \q_reg[13]_4\ => dp_n_211,
      \q_reg[13]_5\ => dp_n_212,
      \q_reg[13]_6\ => dp_n_213,
      \q_reg[13]_7\ => dp_n_214,
      \q_reg[13]_8\ => dp_n_215,
      \q_reg[13]_9\ => dp_n_217,
      \q_reg[178]\(30 downto 0) => SrcAE(31 downto 1),
      \q_reg[18]\ => dp_n_239,
      \q_reg[2]\ => dp_n_254,
      \q_reg[2]_0\ => dp_n_255,
      \q_reg[2]_1\ => dp_n_256,
      \q_reg[2]_2\ => dp_n_257,
      \q_reg[2]_3\ => dp_n_258,
      \q_reg[2]_4\ => dp_n_259,
      \q_reg[2]_5\ => dp_n_260,
      \q_reg[2]_6\ => dp_n_261,
      \q_reg[36]\(0) => ImmExtE(0),
      \q_reg[37]\ => dp_n_140,
      \q_reg[37]_0\ => dp_n_141,
      \q_reg[37]_1\ => dp_n_142,
      \q_reg[37]_10\ => dp_n_207,
      \q_reg[37]_11\ => dp_n_223,
      \q_reg[37]_12\ => dp_n_224,
      \q_reg[37]_13\ => dp_n_226,
      \q_reg[37]_14\ => dp_n_227,
      \q_reg[37]_15\ => dp_n_228,
      \q_reg[37]_16\ => dp_n_229,
      \q_reg[37]_17\ => dp_n_230,
      \q_reg[37]_18\ => dp_n_235,
      \q_reg[37]_19\ => dp_n_241,
      \q_reg[37]_2\ => dp_n_143,
      \q_reg[37]_3\ => dp_n_156,
      \q_reg[37]_4\ => dp_n_201,
      \q_reg[37]_5\ => dp_n_202,
      \q_reg[37]_6\ => dp_n_203,
      \q_reg[37]_7\ => dp_n_204,
      \q_reg[37]_8\ => dp_n_205,
      \q_reg[37]_9\ => dp_n_206,
      \q_reg[38]\ => dp_n_242,
      \q_reg[38]_0\ => dp_n_249,
      \q_reg[4]\(2 downto 0) => funct3E(2 downto 0),
      \q_reg[75]\ => c_n_96,
      \q_reg[78]\(3) => RegWriteM,
      \q_reg[78]\(2 downto 1) => ResultSrcM(1 downto 0),
      \q_reg[78]\(0) => \^memwritem\,
      \q_reg[90]\(7) => c_n_87,
      \q_reg[90]\(6) => c_n_88,
      \q_reg[90]\(5) => c_n_89,
      \q_reg[90]\(4) => c_n_90,
      \q_reg[90]\(3) => c_n_91,
      \q_reg[90]\(2) => c_n_92,
      \q_reg[90]\(1) => c_n_93,
      \q_reg[90]\(0) => c_n_94,
      \q_reg[91]\ => c_n_95,
      \q_reg[95]\(4) => ResultSrcEb0,
      \q_reg[95]\(3 downto 0) => ALUControlE(3 downto 0),
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
  signal PCReady : STD_LOGIC;
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
      Done => PCReady,
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
      MemStrobe => MStrobe,
      MemWriteM => MemWrite,
      PCF(31 downto 0) => PC(31 downto 0),
      PCReady => PCReady,
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
