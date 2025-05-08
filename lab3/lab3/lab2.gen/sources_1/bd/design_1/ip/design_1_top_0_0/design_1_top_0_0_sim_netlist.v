// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Apr 15 18:45:20 2025
// Host        : CEAT-ENDV350-12L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_top_0_0 -prefix
//               design_1_top_0_0_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_top_0_0_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire Done;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

module design_1_top_0_0_adder
   (O,
    D,
    Q,
    S,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[31] ,
    PCSrcE,
    \q_reg[2] ,
    PCSrc1__6,
    jalrTarget,
    PCPlus4F);
  output [3:0]O;
  output [27:0]D;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[7] ;
  input [3:0]\q_reg[11] ;
  input [3:0]\q_reg[15] ;
  input [3:0]\q_reg[19] ;
  input [3:0]\q_reg[23] ;
  input [3:0]\q_reg[27] ;
  input [3:0]\q_reg[31] ;
  input [0:0]PCSrcE;
  input [2:0]\q_reg[2] ;
  input PCSrc1__6;
  input [27:0]jalrTarget;
  input [24:0]PCPlus4F;

  wire [27:0]D;
  wire [3:0]O;
  wire [24:0]PCPlus4F;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [27:0]PCTargetE;
  wire [30:0]Q;
  wire [3:0]S;
  wire [27:0]jalrTarget;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[27] ;
  wire [2:0]\q_reg[2] ;
  wire [3:0]\q_reg[31] ;
  wire [3:0]\q_reg[7] ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[0]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[0]),
        .I2(\q_reg[2] [0]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[10]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[10]),
        .I2(PCPlus4F[7]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[11]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[11]),
        .I2(PCPlus4F[8]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[12]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[12]),
        .I2(PCPlus4F[9]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[13]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[13]),
        .I2(PCPlus4F[10]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[14]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[14]),
        .I2(PCPlus4F[11]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[15]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[15]),
        .I2(PCPlus4F[12]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[16]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[16]),
        .I2(PCPlus4F[13]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[17]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[17]),
        .I2(PCPlus4F[14]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[18]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[18]),
        .I2(PCPlus4F[15]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[19]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[19]),
        .I2(PCPlus4F[16]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[1]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[1]),
        .I2(\q_reg[2] [1]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[20]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[20]),
        .I2(PCPlus4F[17]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[21]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[21]),
        .I2(PCPlus4F[18]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[22]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[22]),
        .I2(PCPlus4F[19]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[23]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[23]),
        .I2(PCPlus4F[20]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[24]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[24]),
        .I2(PCPlus4F[21]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[25]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[25]),
        .I2(PCPlus4F[22]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[26]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[26]),
        .I2(PCPlus4F[23]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[27]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[27]),
        .I2(PCPlus4F[24]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hFF8D008D)) 
    \q[2]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[2]),
        .I2(\q_reg[2] [2]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[3]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[3]),
        .I2(PCPlus4F[0]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[4]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[4]),
        .I2(PCPlus4F[1]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[5]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[5]),
        .I2(PCPlus4F[2]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[6]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[6]),
        .I2(PCPlus4F[3]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[7]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[7]),
        .I2(PCPlus4F[4]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[8]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[8]),
        .I2(PCPlus4F[5]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[9]_i_1__0 
       (.I0(PCSrcE),
        .I1(PCTargetE[9]),
        .I2(PCPlus4F[6]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[9]),
        .O(D[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(PCTargetE[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(PCTargetE[7:4]),
        .S(\q_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(PCTargetE[11:8]),
        .S(\q_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(PCTargetE[15:12]),
        .S(\q_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(PCTargetE[19:16]),
        .S(\q_reg[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(PCTargetE[23:20]),
        .S(\q_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(PCTargetE[27:24]),
        .S(\q_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(O),
        .S(\q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (PCPlus4F,
    D,
    Q,
    PCSrcE);
  output [28:0]PCPlus4F;
  output [28:0]D;
  input [29:0]Q;
  input [0:0]PCSrcE;

  wire [28:0]D;
  wire [28:0]PCPlus4F;
  wire [0:0]PCSrcE;
  wire [29:0]Q;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_y_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1 
       (.I0(PCPlus4F[7]),
        .I1(PCSrcE),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1 
       (.I0(PCPlus4F[8]),
        .I1(PCSrcE),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1 
       (.I0(PCPlus4F[9]),
        .I1(PCSrcE),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1 
       (.I0(PCPlus4F[10]),
        .I1(PCSrcE),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1 
       (.I0(PCPlus4F[11]),
        .I1(PCSrcE),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1 
       (.I0(PCPlus4F[12]),
        .I1(PCSrcE),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1 
       (.I0(PCPlus4F[13]),
        .I1(PCSrcE),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1 
       (.I0(PCPlus4F[14]),
        .I1(PCSrcE),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1 
       (.I0(PCPlus4F[15]),
        .I1(PCSrcE),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1 
       (.I0(PCPlus4F[16]),
        .I1(PCSrcE),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1 
       (.I0(PCPlus4F[17]),
        .I1(PCSrcE),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1 
       (.I0(PCPlus4F[18]),
        .I1(PCSrcE),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1 
       (.I0(PCPlus4F[19]),
        .I1(PCSrcE),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1 
       (.I0(PCPlus4F[20]),
        .I1(PCSrcE),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1 
       (.I0(PCPlus4F[21]),
        .I1(PCSrcE),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1 
       (.I0(PCPlus4F[22]),
        .I1(PCSrcE),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1 
       (.I0(PCPlus4F[23]),
        .I1(PCSrcE),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1 
       (.I0(PCPlus4F[24]),
        .I1(PCSrcE),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1 
       (.I0(PCPlus4F[25]),
        .I1(PCSrcE),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1 
       (.I0(PCPlus4F[26]),
        .I1(PCSrcE),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1 
       (.I0(PCPlus4F[27]),
        .I1(PCSrcE),
        .O(D[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1 
       (.I0(PCPlus4F[28]),
        .I1(PCSrcE),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1 
       (.I0(PCPlus4F[0]),
        .I1(PCSrcE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1 
       (.I0(PCPlus4F[1]),
        .I1(PCSrcE),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1 
       (.I0(PCPlus4F[2]),
        .I1(PCSrcE),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1 
       (.I0(PCPlus4F[3]),
        .I1(PCSrcE),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1 
       (.I0(PCPlus4F[4]),
        .I1(PCSrcE),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1 
       (.I0(PCPlus4F[5]),
        .I1(PCSrcE),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1 
       (.I0(PCPlus4F[6]),
        .I1(PCSrcE),
        .O(D[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(PCPlus4F[3:0]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(PCPlus4F[7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(PCPlus4F[11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(PCPlus4F[15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(PCPlus4F[19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(PCPlus4F[23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(PCPlus4F[27:24]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3:1],PCPlus4F[28]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

module design_1_top_0_0_alu
   (CO,
    \q_reg[11] ,
    \q_reg[11]_0 ,
    \q_reg[11]_1 ,
    \q_reg[11]_2 ,
    \q_reg[11]_3 ,
    \q_reg[11]_4 ,
    \q_reg[11]_5 ,
    \q_reg[11]_6 ,
    DI,
    S,
    \result0_inferred__6/i__carry__1_0 ,
    \result0_inferred__6/i__carry__1_1 ,
    \result0_inferred__6/i__carry__2_0 ,
    \result0_inferred__6/i__carry__2_1 ,
    \q[106]_i_5 ,
    \q[106]_i_5_0 ,
    SrcAE,
    \q_reg[109]_i_8 ,
    \q_reg[109]_i_8_0 ,
    \q_reg[109]_i_8_1 ,
    \q_reg[109]_i_8_2 ,
    \q_reg[109]_i_8_3 ,
    \q_reg[113]_i_10 ,
    \q_reg[113]_i_10_0 ,
    \q_reg[113]_i_10_1 ,
    \q_reg[113]_i_10_2 ,
    \q_reg[113]_i_10_3 ,
    \q_reg[117]_i_8 ,
    \q_reg[117]_i_8_0 ,
    \q_reg[117]_i_8_1 ,
    \q_reg[117]_i_8_2 ,
    \q_reg[117]_i_8_3 ,
    \q_reg[121]_i_8 ,
    \q_reg[121]_i_8_0 ,
    \q_reg[121]_i_8_1 ,
    \q_reg[121]_i_8_2 ,
    \q_reg[121]_i_8_3 ,
    \q_reg[125]_i_10 ,
    \q_reg[125]_i_10_0 ,
    \q_reg[125]_i_10_1 ,
    \q_reg[125]_i_10_2 ,
    \q_reg[125]_i_10_3 ,
    \q_reg[129]_i_10 ,
    \q_reg[129]_i_10_0 ,
    \q_reg[129]_i_10_1 ,
    \q_reg[129]_i_10_2 ,
    \q_reg[129]_i_10_3 ,
    \q_reg[133]_i_10 ,
    \q_reg[133]_i_10_0 ,
    \q_reg[133]_i_10_1 ,
    \q_reg[133]_i_10_2 ,
    \q_reg[133]_i_10_3 ,
    \q_reg[137]_i_12 ,
    \q_reg[137]_i_12_0 ,
    \q_reg[137]_i_12_1 ,
    \q_reg[137]_i_12_2 ,
    \q_reg[137]_i_12_3 );
  output [0:0]CO;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[11]_1 ;
  output [3:0]\q_reg[11]_2 ;
  output [3:0]\q_reg[11]_3 ;
  output [3:0]\q_reg[11]_4 ;
  output [3:0]\q_reg[11]_5 ;
  output [3:0]\q_reg[11]_6 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\result0_inferred__6/i__carry__1_0 ;
  input [3:0]\result0_inferred__6/i__carry__1_1 ;
  input [3:0]\result0_inferred__6/i__carry__2_0 ;
  input [3:0]\result0_inferred__6/i__carry__2_1 ;
  input [3:0]\q[106]_i_5 ;
  input [3:0]\q[106]_i_5_0 ;
  input [0:0]SrcAE;
  input [0:0]\q_reg[109]_i_8 ;
  input [2:0]\q_reg[109]_i_8_0 ;
  input \q_reg[109]_i_8_1 ;
  input \q_reg[109]_i_8_2 ;
  input \q_reg[109]_i_8_3 ;
  input [3:0]\q_reg[113]_i_10 ;
  input \q_reg[113]_i_10_0 ;
  input \q_reg[113]_i_10_1 ;
  input \q_reg[113]_i_10_2 ;
  input \q_reg[113]_i_10_3 ;
  input [3:0]\q_reg[117]_i_8 ;
  input \q_reg[117]_i_8_0 ;
  input \q_reg[117]_i_8_1 ;
  input \q_reg[117]_i_8_2 ;
  input \q_reg[117]_i_8_3 ;
  input [3:0]\q_reg[121]_i_8 ;
  input \q_reg[121]_i_8_0 ;
  input \q_reg[121]_i_8_1 ;
  input \q_reg[121]_i_8_2 ;
  input \q_reg[121]_i_8_3 ;
  input [3:0]\q_reg[125]_i_10 ;
  input \q_reg[125]_i_10_0 ;
  input \q_reg[125]_i_10_1 ;
  input \q_reg[125]_i_10_2 ;
  input \q_reg[125]_i_10_3 ;
  input [3:0]\q_reg[129]_i_10 ;
  input \q_reg[129]_i_10_0 ;
  input \q_reg[129]_i_10_1 ;
  input \q_reg[129]_i_10_2 ;
  input \q_reg[129]_i_10_3 ;
  input [3:0]\q_reg[133]_i_10 ;
  input \q_reg[133]_i_10_0 ;
  input \q_reg[133]_i_10_1 ;
  input \q_reg[133]_i_10_2 ;
  input \q_reg[133]_i_10_3 ;
  input [3:0]\q_reg[137]_i_12 ;
  input \q_reg[137]_i_12_0 ;
  input \q_reg[137]_i_12_1 ;
  input \q_reg[137]_i_12_2 ;
  input \q_reg[137]_i_12_3 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire [0:0]SrcAE;
  wire [3:0]\q[106]_i_5 ;
  wire [3:0]\q[106]_i_5_0 ;
  wire [0:0]\q_reg[109]_i_8 ;
  wire [2:0]\q_reg[109]_i_8_0 ;
  wire \q_reg[109]_i_8_1 ;
  wire \q_reg[109]_i_8_2 ;
  wire \q_reg[109]_i_8_3 ;
  wire [3:0]\q_reg[113]_i_10 ;
  wire \q_reg[113]_i_10_0 ;
  wire \q_reg[113]_i_10_1 ;
  wire \q_reg[113]_i_10_2 ;
  wire \q_reg[113]_i_10_3 ;
  wire [3:0]\q_reg[117]_i_8 ;
  wire \q_reg[117]_i_8_0 ;
  wire \q_reg[117]_i_8_1 ;
  wire \q_reg[117]_i_8_2 ;
  wire \q_reg[117]_i_8_3 ;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[11]_1 ;
  wire [3:0]\q_reg[11]_2 ;
  wire [3:0]\q_reg[11]_3 ;
  wire [3:0]\q_reg[11]_4 ;
  wire [3:0]\q_reg[11]_5 ;
  wire [3:0]\q_reg[11]_6 ;
  wire [3:0]\q_reg[121]_i_8 ;
  wire \q_reg[121]_i_8_0 ;
  wire \q_reg[121]_i_8_1 ;
  wire \q_reg[121]_i_8_2 ;
  wire \q_reg[121]_i_8_3 ;
  wire [3:0]\q_reg[125]_i_10 ;
  wire \q_reg[125]_i_10_0 ;
  wire \q_reg[125]_i_10_1 ;
  wire \q_reg[125]_i_10_2 ;
  wire \q_reg[125]_i_10_3 ;
  wire [3:0]\q_reg[129]_i_10 ;
  wire \q_reg[129]_i_10_0 ;
  wire \q_reg[129]_i_10_1 ;
  wire \q_reg[129]_i_10_2 ;
  wire \q_reg[129]_i_10_3 ;
  wire [3:0]\q_reg[133]_i_10 ;
  wire \q_reg[133]_i_10_0 ;
  wire \q_reg[133]_i_10_1 ;
  wire \q_reg[133]_i_10_2 ;
  wire \q_reg[133]_i_10_3 ;
  wire [3:0]\q_reg[137]_i_12 ;
  wire \q_reg[137]_i_12_0 ;
  wire \q_reg[137]_i_12_1 ;
  wire \q_reg[137]_i_12_2 ;
  wire \q_reg[137]_i_12_3 ;
  wire \result0_inferred__6/i__carry__0_n_0 ;
  wire \result0_inferred__6/i__carry__0_n_1 ;
  wire \result0_inferred__6/i__carry__0_n_2 ;
  wire \result0_inferred__6/i__carry__0_n_3 ;
  wire [3:0]\result0_inferred__6/i__carry__1_0 ;
  wire [3:0]\result0_inferred__6/i__carry__1_1 ;
  wire \result0_inferred__6/i__carry__1_n_0 ;
  wire \result0_inferred__6/i__carry__1_n_1 ;
  wire \result0_inferred__6/i__carry__1_n_2 ;
  wire \result0_inferred__6/i__carry__1_n_3 ;
  wire [3:0]\result0_inferred__6/i__carry__2_0 ;
  wire [3:0]\result0_inferred__6/i__carry__2_1 ;
  wire \result0_inferred__6/i__carry__2_n_1 ;
  wire \result0_inferred__6/i__carry__2_n_2 ;
  wire \result0_inferred__6/i__carry__2_n_3 ;
  wire \result0_inferred__6/i__carry_n_0 ;
  wire \result0_inferred__6/i__carry_n_1 ;
  wire \result0_inferred__6/i__carry_n_2 ;
  wire \result0_inferred__6/i__carry_n_3 ;
  wire [3:0]\NLW_result0_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h96)) 
    \q[109]_i_13 
       (.I0(\q_reg[109]_i_8_0 [2]),
        .I1(\q_reg[109]_i_8_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11] [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[109]_i_14 
       (.I0(\q_reg[109]_i_8_0 [1]),
        .I1(\q_reg[109]_i_8_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11] [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[109]_i_15 
       (.I0(\q_reg[109]_i_8_0 [0]),
        .I1(\q_reg[109]_i_8_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[109]_i_16 
       (.I0(SrcAE),
        .I1(\q_reg[109]_i_8 ),
        .O(\q_reg[11] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[113]_i_13 
       (.I0(\q_reg[113]_i_10 [3]),
        .I1(\q_reg[113]_i_10_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[113]_i_14 
       (.I0(\q_reg[113]_i_10 [2]),
        .I1(\q_reg[113]_i_10_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[113]_i_15 
       (.I0(\q_reg[113]_i_10 [1]),
        .I1(\q_reg[113]_i_10_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[113]_i_16 
       (.I0(\q_reg[113]_i_10 [0]),
        .I1(\q_reg[113]_i_10_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[117]_i_12 
       (.I0(\q_reg[117]_i_8 [3]),
        .I1(\q_reg[117]_i_8_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_1 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[117]_i_13 
       (.I0(\q_reg[117]_i_8 [2]),
        .I1(\q_reg[117]_i_8_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_1 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[117]_i_14 
       (.I0(\q_reg[117]_i_8 [1]),
        .I1(\q_reg[117]_i_8_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_1 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[117]_i_15 
       (.I0(\q_reg[117]_i_8 [0]),
        .I1(\q_reg[117]_i_8_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_1 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[121]_i_17 
       (.I0(\q_reg[121]_i_8 [3]),
        .I1(\q_reg[121]_i_8_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_2 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[121]_i_18 
       (.I0(\q_reg[121]_i_8 [2]),
        .I1(\q_reg[121]_i_8_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_2 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[121]_i_19 
       (.I0(\q_reg[121]_i_8 [1]),
        .I1(\q_reg[121]_i_8_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_2 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[121]_i_20 
       (.I0(\q_reg[121]_i_8 [0]),
        .I1(\q_reg[121]_i_8_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_2 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[125]_i_16 
       (.I0(\q_reg[125]_i_10 [3]),
        .I1(\q_reg[125]_i_10_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_3 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[125]_i_17 
       (.I0(\q_reg[125]_i_10 [2]),
        .I1(\q_reg[125]_i_10_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_3 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[125]_i_18 
       (.I0(\q_reg[125]_i_10 [1]),
        .I1(\q_reg[125]_i_10_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_3 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[125]_i_19 
       (.I0(\q_reg[125]_i_10 [0]),
        .I1(\q_reg[125]_i_10_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_3 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[129]_i_14 
       (.I0(\q_reg[129]_i_10 [3]),
        .I1(\q_reg[129]_i_10_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_4 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[129]_i_15 
       (.I0(\q_reg[129]_i_10 [2]),
        .I1(\q_reg[129]_i_10_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_4 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[129]_i_16 
       (.I0(\q_reg[129]_i_10 [1]),
        .I1(\q_reg[129]_i_10_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_4 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[129]_i_17 
       (.I0(\q_reg[129]_i_10 [0]),
        .I1(\q_reg[129]_i_10_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_4 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[133]_i_15 
       (.I0(\q_reg[133]_i_10 [3]),
        .I1(\q_reg[133]_i_10_3 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_5 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[133]_i_16 
       (.I0(\q_reg[133]_i_10 [2]),
        .I1(\q_reg[133]_i_10_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_5 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[133]_i_17 
       (.I0(\q_reg[133]_i_10 [1]),
        .I1(\q_reg[133]_i_10_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_5 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[133]_i_18 
       (.I0(\q_reg[133]_i_10 [0]),
        .I1(\q_reg[133]_i_10_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_5 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[137]_i_21 
       (.I0(\q_reg[137]_i_12 [3]),
        .I1(\q_reg[109]_i_8 ),
        .I2(\q_reg[137]_i_12_3 ),
        .O(\q_reg[11]_6 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[137]_i_22 
       (.I0(\q_reg[137]_i_12 [2]),
        .I1(\q_reg[137]_i_12_2 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_6 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[137]_i_23 
       (.I0(\q_reg[137]_i_12 [1]),
        .I1(\q_reg[137]_i_12_1 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_6 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[137]_i_24 
       (.I0(\q_reg[137]_i_12 [0]),
        .I1(\q_reg[137]_i_12_0 ),
        .I2(\q_reg[109]_i_8 ),
        .O(\q_reg[11]_6 [0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\result0_inferred__6/i__carry_n_0 ,\result0_inferred__6/i__carry_n_1 ,\result0_inferred__6/i__carry_n_2 ,\result0_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O(\NLW_result0_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__0 
       (.CI(\result0_inferred__6/i__carry_n_0 ),
        .CO({\result0_inferred__6/i__carry__0_n_0 ,\result0_inferred__6/i__carry__0_n_1 ,\result0_inferred__6/i__carry__0_n_2 ,\result0_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\result0_inferred__6/i__carry__1_0 ),
        .O(\NLW_result0_inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\result0_inferred__6/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__1 
       (.CI(\result0_inferred__6/i__carry__0_n_0 ),
        .CO({\result0_inferred__6/i__carry__1_n_0 ,\result0_inferred__6/i__carry__1_n_1 ,\result0_inferred__6/i__carry__1_n_2 ,\result0_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\result0_inferred__6/i__carry__2_0 ),
        .O(\NLW_result0_inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\result0_inferred__6/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result0_inferred__6/i__carry__2 
       (.CI(\result0_inferred__6/i__carry__1_n_0 ),
        .CO({CO,\result0_inferred__6/i__carry__2_n_1 ,\result0_inferred__6/i__carry__2_n_2 ,\result0_inferred__6/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(\q[106]_i_5 ),
        .O(\NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\q[106]_i_5_0 ));
endmodule

module design_1_top_0_0_controller
   (RegWriteW,
    Q,
    funct3E,
    D,
    PCSrcE,
    FlushE,
    \q_reg[12] ,
    ovfE,
    \q_reg[11] ,
    \q_reg[11]_0 ,
    \q_reg[18] ,
    \q_reg[11]_1 ,
    \q_reg[12]_0 ,
    PCSrc1__6,
    \readDataM[15] ,
    \q_reg[3] ,
    \q_reg[2] ,
    \q_reg[16] ,
    \q_reg[11]_2 ,
    clk,
    reset,
    p_0_in,
    \q_reg[2]_0 ,
    InstrF,
    \q_reg[104] ,
    \q_reg[136] ,
    \q_reg[136]_0 ,
    \q_reg[137] ,
    \q_reg[137]_0 ,
    \q_reg[128] ,
    \q_reg[128]_0 ,
    \q_reg[129] ,
    \q_reg[129]_0 ,
    \q_reg[130] ,
    \q_reg[130]_0 ,
    \q_reg[131] ,
    \q_reg[131]_0 ,
    \q_reg[132] ,
    \q_reg[132]_0 ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    \q_reg[134] ,
    \q_reg[134]_0 ,
    \q_reg[135] ,
    \q_reg[135]_0 ,
    \q_reg[120] ,
    \q_reg[120]_0 ,
    \q_reg[120]_1 ,
    \q_reg[121] ,
    \q_reg[121]_0 ,
    \q_reg[121]_1 ,
    \q_reg[122] ,
    \q_reg[122]_0 ,
    \q_reg[123] ,
    \q_reg[123]_0 ,
    \q_reg[124] ,
    \q_reg[124]_0 ,
    \q_reg[125] ,
    \q_reg[125]_0 ,
    \q_reg[126] ,
    \q_reg[126]_0 ,
    \q_reg[127] ,
    \q_reg[127]_0 ,
    \q_reg[107] ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    \q_reg[108] ,
    \q_reg[108]_0 ,
    \q_reg[108]_1 ,
    \q_reg[109] ,
    \q_reg[109]_0 ,
    \q_reg[109]_1 ,
    \q_reg[110] ,
    \q_reg[110]_0 ,
    \q_reg[111] ,
    \q_reg[110]_1 ,
    \q_reg[111]_0 ,
    \q_reg[111]_1 ,
    \q_reg[112] ,
    \q_reg[112]_0 ,
    \q_reg[112]_1 ,
    \q_reg[113] ,
    \q_reg[113]_0 ,
    \q_reg[113]_1 ,
    \q_reg[114] ,
    \q_reg[114]_0 ,
    \q_reg[114]_1 ,
    \q_reg[115] ,
    \q_reg[115]_0 ,
    \q_reg[115]_1 ,
    \q_reg[116] ,
    \q_reg[116]_0 ,
    \q_reg[116]_1 ,
    \q_reg[117] ,
    \q_reg[117]_0 ,
    \q_reg[117]_1 ,
    \q_reg[118] ,
    \q_reg[118]_0 ,
    \q_reg[118]_1 ,
    \q_reg[119] ,
    \q_reg[119]_0 ,
    \q_reg[119]_1 ,
    \q_reg[113]_2 ,
    SrcAE,
    SrcBE__0,
    \q_reg[135]_1 ,
    \q_reg[123]_1 ,
    \q_reg[122]_1 ,
    \q_reg[124]_1 ,
    \q_reg[125]_1 ,
    \q_reg[126]_1 ,
    \q_reg[127]_1 ,
    \q_reg[128]_1 ,
    \q_reg[129]_1 ,
    \q_reg[130]_1 ,
    \q_reg[131]_1 ,
    \q_reg[132]_1 ,
    \q_reg[133]_1 ,
    \q_reg[134]_1 ,
    \q_reg[135]_2 ,
    O,
    condinvb__0,
    WriteDataE,
    \q[107]_i_2 ,
    CO,
    \q[31]_i_12 ,
    ReadDataM,
    \q_reg[83] ,
    \q_reg[84] ,
    \q_reg[85] ,
    \q_reg[86] ,
    \q_reg[87] ,
    \q_reg[88] ,
    \q_reg[89] ,
    \q_reg[90] ,
    \Data_reg[31]_i_2 ,
    SrcBE,
    \q_reg[106] ,
    \q_reg[106]_0 ,
    \q_reg[106]_1 );
  output RegWriteW;
  output [3:0]Q;
  output [2:0]funct3E;
  output [32:0]D;
  output [0:0]PCSrcE;
  output FlushE;
  output [32:0]\q_reg[12] ;
  output ovfE;
  output \q_reg[11] ;
  output \q_reg[11]_0 ;
  output [4:0]\q_reg[18] ;
  output \q_reg[11]_1 ;
  output \q_reg[12]_0 ;
  output PCSrc1__6;
  output [7:0]\readDataM[15] ;
  output \q_reg[3] ;
  output \q_reg[2] ;
  output \q_reg[16] ;
  output [0:0]\q_reg[11]_2 ;
  input clk;
  input reset;
  input [20:0]p_0_in;
  input [0:0]\q_reg[2]_0 ;
  input [31:0]InstrF;
  input \q_reg[104] ;
  input \q_reg[136] ;
  input \q_reg[136]_0 ;
  input \q_reg[137] ;
  input \q_reg[137]_0 ;
  input \q_reg[128] ;
  input \q_reg[128]_0 ;
  input \q_reg[129] ;
  input \q_reg[129]_0 ;
  input \q_reg[130] ;
  input \q_reg[130]_0 ;
  input \q_reg[131] ;
  input \q_reg[131]_0 ;
  input \q_reg[132] ;
  input \q_reg[132]_0 ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input \q_reg[134] ;
  input \q_reg[134]_0 ;
  input \q_reg[135] ;
  input \q_reg[135]_0 ;
  input \q_reg[120] ;
  input \q_reg[120]_0 ;
  input \q_reg[120]_1 ;
  input \q_reg[121] ;
  input \q_reg[121]_0 ;
  input \q_reg[121]_1 ;
  input \q_reg[122] ;
  input \q_reg[122]_0 ;
  input \q_reg[123] ;
  input \q_reg[123]_0 ;
  input \q_reg[124] ;
  input \q_reg[124]_0 ;
  input \q_reg[125] ;
  input \q_reg[125]_0 ;
  input \q_reg[126] ;
  input \q_reg[126]_0 ;
  input \q_reg[127] ;
  input \q_reg[127]_0 ;
  input \q_reg[107] ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input \q_reg[108] ;
  input \q_reg[108]_0 ;
  input \q_reg[108]_1 ;
  input \q_reg[109] ;
  input \q_reg[109]_0 ;
  input \q_reg[109]_1 ;
  input \q_reg[110] ;
  input \q_reg[110]_0 ;
  input \q_reg[111] ;
  input \q_reg[110]_1 ;
  input \q_reg[111]_0 ;
  input \q_reg[111]_1 ;
  input \q_reg[112] ;
  input \q_reg[112]_0 ;
  input \q_reg[112]_1 ;
  input \q_reg[113] ;
  input \q_reg[113]_0 ;
  input \q_reg[113]_1 ;
  input \q_reg[114] ;
  input \q_reg[114]_0 ;
  input \q_reg[114]_1 ;
  input \q_reg[115] ;
  input \q_reg[115]_0 ;
  input \q_reg[115]_1 ;
  input \q_reg[116] ;
  input \q_reg[116]_0 ;
  input \q_reg[116]_1 ;
  input \q_reg[117] ;
  input \q_reg[117]_0 ;
  input \q_reg[117]_1 ;
  input \q_reg[118] ;
  input \q_reg[118]_0 ;
  input \q_reg[118]_1 ;
  input \q_reg[119] ;
  input \q_reg[119]_0 ;
  input \q_reg[119]_1 ;
  input \q_reg[113]_2 ;
  input [30:0]SrcAE;
  input [30:0]SrcBE__0;
  input \q_reg[135]_1 ;
  input \q_reg[123]_1 ;
  input \q_reg[122]_1 ;
  input \q_reg[124]_1 ;
  input \q_reg[125]_1 ;
  input \q_reg[126]_1 ;
  input \q_reg[127]_1 ;
  input \q_reg[128]_1 ;
  input \q_reg[129]_1 ;
  input \q_reg[130]_1 ;
  input \q_reg[131]_1 ;
  input \q_reg[132]_1 ;
  input \q_reg[133]_1 ;
  input \q_reg[134]_1 ;
  input \q_reg[135]_2 ;
  input [0:0]O;
  input [0:0]condinvb__0;
  input [0:0]WriteDataE;
  input [0:0]\q[107]_i_2 ;
  input [0:0]CO;
  input [0:0]\q[31]_i_12 ;
  input [7:0]ReadDataM;
  input \q_reg[83] ;
  input \q_reg[84] ;
  input \q_reg[85] ;
  input \q_reg[86] ;
  input \q_reg[87] ;
  input \q_reg[88] ;
  input \q_reg[89] ;
  input \q_reg[90] ;
  input [1:0]\Data_reg[31]_i_2 ;
  input [0:0]SrcBE;
  input \q_reg[106] ;
  input \q_reg[106]_0 ;
  input \q_reg[106]_1 ;

  wire [0:0]CO;
  wire [32:0]D;
  wire [1:0]\Data_reg[31]_i_2 ;
  wire FlushE;
  wire [31:0]InstrF;
  wire [0:0]O;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [3:0]Q;
  wire [7:0]ReadDataM;
  wire RegWriteW;
  wire [30:0]SrcAE;
  wire [0:0]SrcBE;
  wire [30:0]SrcBE__0;
  wire [0:0]WriteDataE;
  wire clk;
  wire [0:0]condinvb__0;
  wire controlregE_n_74;
  wire controlregE_n_75;
  wire controlregE_n_77;
  wire [2:0]funct3E;
  wire ovfE;
  wire [20:0]p_0_in;
  wire [0:0]\q[107]_i_2 ;
  wire [0:0]\q[31]_i_12 ;
  wire \q_reg[104] ;
  wire \q_reg[106] ;
  wire \q_reg[106]_0 ;
  wire \q_reg[106]_1 ;
  wire \q_reg[107] ;
  wire \q_reg[107]_0 ;
  wire \q_reg[107]_1 ;
  wire \q_reg[108] ;
  wire \q_reg[108]_0 ;
  wire \q_reg[108]_1 ;
  wire \q_reg[109] ;
  wire \q_reg[109]_0 ;
  wire \q_reg[109]_1 ;
  wire \q_reg[110] ;
  wire \q_reg[110]_0 ;
  wire \q_reg[110]_1 ;
  wire \q_reg[111] ;
  wire \q_reg[111]_0 ;
  wire \q_reg[111]_1 ;
  wire \q_reg[112] ;
  wire \q_reg[112]_0 ;
  wire \q_reg[112]_1 ;
  wire \q_reg[113] ;
  wire \q_reg[113]_0 ;
  wire \q_reg[113]_1 ;
  wire \q_reg[113]_2 ;
  wire \q_reg[114] ;
  wire \q_reg[114]_0 ;
  wire \q_reg[114]_1 ;
  wire \q_reg[115] ;
  wire \q_reg[115]_0 ;
  wire \q_reg[115]_1 ;
  wire \q_reg[116] ;
  wire \q_reg[116]_0 ;
  wire \q_reg[116]_1 ;
  wire \q_reg[117] ;
  wire \q_reg[117]_0 ;
  wire \q_reg[117]_1 ;
  wire \q_reg[118] ;
  wire \q_reg[118]_0 ;
  wire \q_reg[118]_1 ;
  wire \q_reg[119] ;
  wire \q_reg[119]_0 ;
  wire \q_reg[119]_1 ;
  wire \q_reg[11] ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [0:0]\q_reg[11]_2 ;
  wire \q_reg[120] ;
  wire \q_reg[120]_0 ;
  wire \q_reg[120]_1 ;
  wire \q_reg[121] ;
  wire \q_reg[121]_0 ;
  wire \q_reg[121]_1 ;
  wire \q_reg[122] ;
  wire \q_reg[122]_0 ;
  wire \q_reg[122]_1 ;
  wire \q_reg[123] ;
  wire \q_reg[123]_0 ;
  wire \q_reg[123]_1 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire \q_reg[124]_1 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[125]_1 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[126]_1 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[127]_1 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire \q_reg[128]_1 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[129]_1 ;
  wire [32:0]\q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[130]_1 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[131]_1 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire \q_reg[132]_1 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[133]_1 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire \q_reg[134]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire \q_reg[135]_2 ;
  wire \q_reg[136] ;
  wire \q_reg[136]_0 ;
  wire \q_reg[137] ;
  wire \q_reg[137]_0 ;
  wire \q_reg[16] ;
  wire [4:0]\q_reg[18] ;
  wire \q_reg[2] ;
  wire [0:0]\q_reg[2]_0 ;
  wire \q_reg[3] ;
  wire \q_reg[83] ;
  wire \q_reg[84] ;
  wire \q_reg[85] ;
  wire \q_reg[86] ;
  wire \q_reg[87] ;
  wire \q_reg[88] ;
  wire \q_reg[89] ;
  wire \q_reg[90] ;
  wire [7:0]\readDataM[15] ;
  wire reset;

  design_1_top_0_0_floprc controlregE
       (.CO(CO),
        .D(D),
        .FlushE(FlushE),
        .InstrF(InstrF),
        .O(O),
        .PCSrc1__6(PCSrc1__6),
        .Q({controlregE_n_74,controlregE_n_75,\q_reg[18] [4],controlregE_n_77,\q_reg[18] [3:0]}),
        .SrcAE(SrcAE),
        .SrcBE(SrcBE),
        .SrcBE__0(SrcBE__0),
        .WriteDataE(WriteDataE),
        .clk(clk),
        .condinvb__0(condinvb__0),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .\q[107]_i_2 (\q[107]_i_2 ),
        .\q[31]_i_12_0 (\q[31]_i_12 ),
        .\q_reg[104] (\q_reg[104] ),
        .\q_reg[106] (\q_reg[106] ),
        .\q_reg[106]_0 (\q_reg[106]_0 ),
        .\q_reg[106]_1 (\q_reg[106]_1 ),
        .\q_reg[107] (\q_reg[107] ),
        .\q_reg[107]_0 (\q_reg[107]_0 ),
        .\q_reg[107]_1 (\q_reg[107]_1 ),
        .\q_reg[108] (\q_reg[108] ),
        .\q_reg[108]_0 (\q_reg[108]_0 ),
        .\q_reg[108]_1 (\q_reg[108]_1 ),
        .\q_reg[109] (\q_reg[109] ),
        .\q_reg[109]_0 (\q_reg[109]_0 ),
        .\q_reg[109]_1 (\q_reg[109]_1 ),
        .\q_reg[110] (\q_reg[110] ),
        .\q_reg[110]_0 (\q_reg[110]_0 ),
        .\q_reg[110]_1 (\q_reg[110]_1 ),
        .\q_reg[111] (\q_reg[111] ),
        .\q_reg[111]_0 (\q_reg[111]_0 ),
        .\q_reg[111]_1 (\q_reg[111]_1 ),
        .\q_reg[112] (\q_reg[112] ),
        .\q_reg[112]_0 (\q_reg[112]_0 ),
        .\q_reg[112]_1 (\q_reg[112]_1 ),
        .\q_reg[113] (\q_reg[113] ),
        .\q_reg[113]_0 (\q_reg[113]_0 ),
        .\q_reg[113]_1 (\q_reg[113]_1 ),
        .\q_reg[113]_2 (\q_reg[113]_2 ),
        .\q_reg[114] (\q_reg[114] ),
        .\q_reg[114]_0 (\q_reg[114]_0 ),
        .\q_reg[114]_1 (\q_reg[114]_1 ),
        .\q_reg[115] (\q_reg[115] ),
        .\q_reg[115]_0 (\q_reg[115]_0 ),
        .\q_reg[115]_1 (\q_reg[115]_1 ),
        .\q_reg[116] (\q_reg[116] ),
        .\q_reg[116]_0 (\q_reg[116]_0 ),
        .\q_reg[116]_1 (\q_reg[116]_1 ),
        .\q_reg[117] (\q_reg[117] ),
        .\q_reg[117]_0 (\q_reg[117]_0 ),
        .\q_reg[117]_1 (\q_reg[117]_1 ),
        .\q_reg[118] (\q_reg[118] ),
        .\q_reg[118]_0 (\q_reg[118]_0 ),
        .\q_reg[118]_1 (\q_reg[118]_1 ),
        .\q_reg[119] (\q_reg[119] ),
        .\q_reg[119]_0 (\q_reg[119]_0 ),
        .\q_reg[119]_1 (\q_reg[119]_1 ),
        .\q_reg[11]_0 (\q_reg[11] ),
        .\q_reg[11]_1 (\q_reg[11]_0 ),
        .\q_reg[11]_2 (\q_reg[11]_1 ),
        .\q_reg[11]_3 (\q_reg[11]_2 ),
        .\q_reg[120] (\q_reg[120] ),
        .\q_reg[120]_0 (\q_reg[120]_0 ),
        .\q_reg[120]_1 (\q_reg[120]_1 ),
        .\q_reg[121] (\q_reg[121] ),
        .\q_reg[121]_0 (\q_reg[121]_0 ),
        .\q_reg[121]_1 (\q_reg[121]_1 ),
        .\q_reg[122] (\q_reg[122] ),
        .\q_reg[122]_0 (\q_reg[122]_0 ),
        .\q_reg[122]_1 (\q_reg[122]_1 ),
        .\q_reg[123] (\q_reg[123] ),
        .\q_reg[123]_0 (\q_reg[123]_0 ),
        .\q_reg[123]_1 (\q_reg[123]_1 ),
        .\q_reg[124] (\q_reg[124] ),
        .\q_reg[124]_0 (\q_reg[124]_0 ),
        .\q_reg[124]_1 (\q_reg[124]_1 ),
        .\q_reg[125] (\q_reg[125] ),
        .\q_reg[125]_0 (\q_reg[125]_0 ),
        .\q_reg[125]_1 (\q_reg[125]_1 ),
        .\q_reg[126] (\q_reg[126] ),
        .\q_reg[126]_0 (\q_reg[126]_0 ),
        .\q_reg[126]_1 (\q_reg[126]_1 ),
        .\q_reg[127] (\q_reg[127] ),
        .\q_reg[127]_0 (\q_reg[127]_0 ),
        .\q_reg[127]_1 (\q_reg[127]_1 ),
        .\q_reg[128] (\q_reg[128] ),
        .\q_reg[128]_0 (\q_reg[128]_0 ),
        .\q_reg[128]_1 (\q_reg[128]_1 ),
        .\q_reg[129] (\q_reg[129] ),
        .\q_reg[129]_0 (\q_reg[129]_0 ),
        .\q_reg[129]_1 (\q_reg[129]_1 ),
        .\q_reg[12]_0 (\q_reg[12] ),
        .\q_reg[12]_1 (\q_reg[12]_0 ),
        .\q_reg[130] (\q_reg[130] ),
        .\q_reg[130]_0 (\q_reg[130]_0 ),
        .\q_reg[130]_1 (\q_reg[130]_1 ),
        .\q_reg[131] (\q_reg[131] ),
        .\q_reg[131]_0 (\q_reg[131]_0 ),
        .\q_reg[131]_1 (\q_reg[131]_1 ),
        .\q_reg[132] (\q_reg[132] ),
        .\q_reg[132]_0 (\q_reg[132]_0 ),
        .\q_reg[132]_1 (\q_reg[132]_1 ),
        .\q_reg[133] (\q_reg[133] ),
        .\q_reg[133]_0 (\q_reg[133]_0 ),
        .\q_reg[133]_1 (\q_reg[133]_1 ),
        .\q_reg[134] (\q_reg[134] ),
        .\q_reg[134]_0 (\q_reg[134]_0 ),
        .\q_reg[134]_1 (\q_reg[134]_1 ),
        .\q_reg[135] (\q_reg[135] ),
        .\q_reg[135]_0 (\q_reg[135]_0 ),
        .\q_reg[135]_1 (\q_reg[135]_1 ),
        .\q_reg[135]_2 (\q_reg[135]_2 ),
        .\q_reg[136] (\q_reg[136] ),
        .\q_reg[136]_0 (\q_reg[136]_0 ),
        .\q_reg[137] (\q_reg[137] ),
        .\q_reg[137]_0 (\q_reg[137]_0 ),
        .\q_reg[15]_0 (PCSrcE),
        .\q_reg[16]_0 (\q_reg[16] ),
        .\q_reg[2]_0 (\q_reg[2]_0 ),
        .\q_reg[7]_0 (funct3E[0]),
        .\q_reg[8]_0 (funct3E[1]),
        .\q_reg[9]_0 (funct3E[2]),
        .reset(reset));
  design_1_top_0_0_flopr controlregM
       (.D({controlregE_n_74,controlregE_n_75,\q_reg[18] [4],controlregE_n_77}),
        .\Data_reg[31]_i_2 (\Data_reg[31]_i_2 ),
        .Q(Q),
        .ReadDataM(ReadDataM),
        .clk(clk),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[3]_0 (\q_reg[3] ),
        .\q_reg[83] (\q_reg[83] ),
        .\q_reg[84] (\q_reg[84] ),
        .\q_reg[85] (\q_reg[85] ),
        .\q_reg[86] (\q_reg[86] ),
        .\q_reg[87] (\q_reg[87] ),
        .\q_reg[88] (\q_reg[88] ),
        .\q_reg[89] (\q_reg[89] ),
        .\q_reg[90] (\q_reg[90] ),
        .\readDataM[15] (\readDataM[15] ),
        .reset(reset));
  design_1_top_0_0_flopr__parameterized0 controlregW
       (.Q(Q[3]),
        .RegWriteW(RegWriteW),
        .clk(clk),
        .reset(reset));
endmodule

module design_1_top_0_0_datapath
   (Q,
    \q_reg[36] ,
    \q_reg[178] ,
    CO,
    p_0_in,
    \q_reg[10] ,
    \q_reg[11] ,
    SrcBE,
    SrcBE__0,
    \q_reg[11]_0 ,
    \q_reg[11]_1 ,
    \q_reg[11]_2 ,
    \q_reg[11]_3 ,
    \q_reg[11]_4 ,
    \q_reg[11]_5 ,
    \q_reg[11]_6 ,
    \q_reg[11]_7 ,
    \q_reg[11]_8 ,
    \q_reg[11]_9 ,
    \q_reg[11]_10 ,
    \q_reg[11]_11 ,
    \q_reg[11]_12 ,
    \q_reg[11]_13 ,
    \q_reg[11]_14 ,
    \q_reg[11]_15 ,
    \q_reg[11]_16 ,
    \q_reg[11]_17 ,
    \q_reg[11]_18 ,
    \q_reg[11]_19 ,
    \q_reg[37] ,
    \q_reg[37]_0 ,
    \q_reg[37]_1 ,
    \q_reg[37]_2 ,
    \q_reg[11]_20 ,
    \q_reg[11]_21 ,
    \q_reg[11]_22 ,
    \q_reg[11]_23 ,
    \q_reg[11]_24 ,
    \q_reg[11]_25 ,
    \q_reg[11]_26 ,
    \q_reg[11]_27 ,
    \q_reg[11]_28 ,
    \q_reg[11]_29 ,
    \q_reg[11]_30 ,
    \q_reg[11]_31 ,
    \q_reg[37]_3 ,
    \q_reg[11]_32 ,
    \q_reg[11]_33 ,
    \q_reg[11]_34 ,
    \q_reg[11]_35 ,
    \q_reg[11]_36 ,
    \q_reg[11]_37 ,
    \q_reg[13] ,
    \q_reg[137] ,
    \q_reg[13]_0 ,
    \q_reg[11]_38 ,
    \q_reg[37]_4 ,
    \q_reg[37]_5 ,
    \q_reg[37]_6 ,
    \q_reg[37]_7 ,
    \q_reg[37]_8 ,
    \q_reg[37]_9 ,
    \q_reg[37]_10 ,
    \q_reg[13]_1 ,
    \q_reg[13]_2 ,
    \q_reg[13]_3 ,
    \q_reg[13]_4 ,
    \q_reg[13]_5 ,
    \q_reg[13]_6 ,
    \q_reg[13]_7 ,
    \q_reg[13]_8 ,
    O,
    \q_reg[13]_9 ,
    \q_reg[13]_10 ,
    \q_reg[13]_11 ,
    \q_reg[13]_12 ,
    \q_reg[13]_13 ,
    \q_reg[13]_14 ,
    \q_reg[37]_11 ,
    \q_reg[37]_12 ,
    \q_reg[13]_15 ,
    \q_reg[37]_13 ,
    \q_reg[37]_14 ,
    \q_reg[37]_15 ,
    \q_reg[37]_16 ,
    \q_reg[37]_17 ,
    \q_reg[13]_16 ,
    \q_reg[13]_17 ,
    \q_reg[13]_18 ,
    \q_reg[13]_19 ,
    \q_reg[37]_18 ,
    \q_reg[13]_20 ,
    \q_reg[115] ,
    condinvb__0,
    \q_reg[18] ,
    \q_reg[137]_i_12 ,
    \q_reg[37]_19 ,
    \q_reg[38] ,
    \q_reg[13]_21 ,
    \q_reg[13]_22 ,
    \q_reg[13]_23 ,
    \q_reg[13]_24 ,
    \q_reg[13]_25 ,
    \q_reg[13]_26 ,
    \q_reg[38]_0 ,
    \q_reg[13]_27 ,
    \q_reg[13]_28 ,
    \q_reg[13]_29 ,
    \q_reg[13]_30 ,
    \q_reg[2] ,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    \q_reg[2]_5 ,
    \q_reg[2]_6 ,
    WriteDataM,
    RegWriteW,
    D,
    PCSrcE,
    PCSrc1__6,
    FlushE,
    \q_reg[104] ,
    \q_reg[95] ,
    \q_reg[106] ,
    \q_reg[107] ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    ovfE,
    \q_reg[137]_0 ,
    \q_reg[78] ,
    \q_reg[91] ,
    ReadDataM,
    \q_reg[75] ,
    \q[106]_i_3 ,
    PCReady,
    clk,
    reset,
    \q_reg[90] ,
    \q_reg[4] );
  output [31:0]Q;
  output [0:0]\q_reg[36] ;
  output [30:0]\q_reg[178] ;
  output [0:0]CO;
  output [20:0]p_0_in;
  output \q_reg[10] ;
  output \q_reg[11] ;
  output [0:0]SrcBE;
  output [30:0]SrcBE__0;
  output \q_reg[11]_0 ;
  output \q_reg[11]_1 ;
  output \q_reg[11]_2 ;
  output \q_reg[11]_3 ;
  output \q_reg[11]_4 ;
  output \q_reg[11]_5 ;
  output \q_reg[11]_6 ;
  output \q_reg[11]_7 ;
  output \q_reg[11]_8 ;
  output \q_reg[11]_9 ;
  output \q_reg[11]_10 ;
  output \q_reg[11]_11 ;
  output \q_reg[11]_12 ;
  output \q_reg[11]_13 ;
  output \q_reg[11]_14 ;
  output \q_reg[11]_15 ;
  output \q_reg[11]_16 ;
  output \q_reg[11]_17 ;
  output \q_reg[11]_18 ;
  output \q_reg[11]_19 ;
  output \q_reg[37] ;
  output \q_reg[37]_0 ;
  output \q_reg[37]_1 ;
  output \q_reg[37]_2 ;
  output \q_reg[11]_20 ;
  output \q_reg[11]_21 ;
  output \q_reg[11]_22 ;
  output \q_reg[11]_23 ;
  output \q_reg[11]_24 ;
  output \q_reg[11]_25 ;
  output \q_reg[11]_26 ;
  output \q_reg[11]_27 ;
  output \q_reg[11]_28 ;
  output \q_reg[11]_29 ;
  output \q_reg[11]_30 ;
  output \q_reg[11]_31 ;
  output \q_reg[37]_3 ;
  output \q_reg[11]_32 ;
  output \q_reg[11]_33 ;
  output \q_reg[11]_34 ;
  output \q_reg[11]_35 ;
  output \q_reg[11]_36 ;
  output \q_reg[11]_37 ;
  output \q_reg[13] ;
  output [34:0]\q_reg[137] ;
  output \q_reg[13]_0 ;
  output \q_reg[11]_38 ;
  output \q_reg[37]_4 ;
  output \q_reg[37]_5 ;
  output \q_reg[37]_6 ;
  output \q_reg[37]_7 ;
  output \q_reg[37]_8 ;
  output \q_reg[37]_9 ;
  output \q_reg[37]_10 ;
  output \q_reg[13]_1 ;
  output \q_reg[13]_2 ;
  output \q_reg[13]_3 ;
  output \q_reg[13]_4 ;
  output \q_reg[13]_5 ;
  output \q_reg[13]_6 ;
  output \q_reg[13]_7 ;
  output \q_reg[13]_8 ;
  output [0:0]O;
  output \q_reg[13]_9 ;
  output \q_reg[13]_10 ;
  output \q_reg[13]_11 ;
  output \q_reg[13]_12 ;
  output \q_reg[13]_13 ;
  output \q_reg[13]_14 ;
  output \q_reg[37]_11 ;
  output \q_reg[37]_12 ;
  output \q_reg[13]_15 ;
  output \q_reg[37]_13 ;
  output \q_reg[37]_14 ;
  output \q_reg[37]_15 ;
  output \q_reg[37]_16 ;
  output \q_reg[37]_17 ;
  output \q_reg[13]_16 ;
  output \q_reg[13]_17 ;
  output \q_reg[13]_18 ;
  output \q_reg[13]_19 ;
  output \q_reg[37]_18 ;
  output \q_reg[13]_20 ;
  output [0:0]\q_reg[115] ;
  output [0:0]condinvb__0;
  output \q_reg[18] ;
  output [0:0]\q_reg[137]_i_12 ;
  output \q_reg[37]_19 ;
  output \q_reg[38] ;
  output \q_reg[13]_21 ;
  output \q_reg[13]_22 ;
  output \q_reg[13]_23 ;
  output \q_reg[13]_24 ;
  output \q_reg[13]_25 ;
  output \q_reg[13]_26 ;
  output \q_reg[38]_0 ;
  output \q_reg[13]_27 ;
  output \q_reg[13]_28 ;
  output \q_reg[13]_29 ;
  output \q_reg[13]_30 ;
  output \q_reg[2] ;
  output \q_reg[2]_0 ;
  output \q_reg[2]_1 ;
  output \q_reg[2]_2 ;
  output \q_reg[2]_3 ;
  output \q_reg[2]_4 ;
  output \q_reg[2]_5 ;
  output \q_reg[2]_6 ;
  output [31:0]WriteDataM;
  input RegWriteW;
  input [32:0]D;
  input [0:0]PCSrcE;
  input PCSrc1__6;
  input FlushE;
  input \q_reg[104] ;
  input [4:0]\q_reg[95] ;
  input \q_reg[106] ;
  input \q_reg[107] ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input ovfE;
  input [32:0]\q_reg[137]_0 ;
  input [3:0]\q_reg[78] ;
  input \q_reg[91] ;
  input [31:0]ReadDataM;
  input \q_reg[75] ;
  input [0:0]\q[106]_i_3 ;
  input PCReady;
  input clk;
  input reset;
  input [7:0]\q_reg[90] ;
  input [2:0]\q_reg[4] ;

  wire [0:0]CO;
  wire [32:0]D;
  wire [31:0]DataM;
  wire FlushE;
  wire [31:1]ImmExtE;
  wire [0:0]O;
  wire [1:0]PCE;
  wire [31:0]PCNextF;
  wire [31:2]PCPlus4E;
  wire [31:3]PCPlus4F;
  wire PCReady;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [31:28]PCTargetE;
  wire [31:0]Q;
  wire [4:0]RdE;
  wire [4:0]RdM;
  wire [4:0]RdW;
  wire [31:0]ReadDataM;
  wire RegWriteW;
  wire [31:0]ResultW;
  wire [4:0]Rs1D;
  wire [4:0]Rs1E;
  wire [4:0]Rs2D;
  wire [4:0]Rs2E;
  wire [0:0]SrcAE;
  wire [0:0]SrcBE;
  wire [30:0]SrcBE__0;
  wire [31:1]WriteDataE;
  wire [31:0]WriteDataM;
  wire alu_n_1;
  wire alu_n_10;
  wire alu_n_11;
  wire alu_n_12;
  wire alu_n_13;
  wire alu_n_14;
  wire alu_n_15;
  wire alu_n_16;
  wire alu_n_17;
  wire alu_n_18;
  wire alu_n_19;
  wire alu_n_2;
  wire alu_n_20;
  wire alu_n_21;
  wire alu_n_22;
  wire alu_n_23;
  wire alu_n_24;
  wire alu_n_25;
  wire alu_n_26;
  wire alu_n_27;
  wire alu_n_28;
  wire alu_n_29;
  wire alu_n_3;
  wire alu_n_30;
  wire alu_n_31;
  wire alu_n_32;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire clk;
  wire [0:0]condinvb__0;
  wire \hu/ForwardAE11_out ;
  wire [31:0]jalrTarget;
  wire jalrTarget_carry__0_n_0;
  wire jalrTarget_carry__0_n_1;
  wire jalrTarget_carry__0_n_2;
  wire jalrTarget_carry__0_n_3;
  wire jalrTarget_carry__1_n_0;
  wire jalrTarget_carry__1_n_1;
  wire jalrTarget_carry__1_n_2;
  wire jalrTarget_carry__1_n_3;
  wire jalrTarget_carry__2_n_0;
  wire jalrTarget_carry__2_n_1;
  wire jalrTarget_carry__2_n_2;
  wire jalrTarget_carry__2_n_3;
  wire jalrTarget_carry__3_n_0;
  wire jalrTarget_carry__3_n_1;
  wire jalrTarget_carry__3_n_2;
  wire jalrTarget_carry__3_n_3;
  wire jalrTarget_carry__4_n_0;
  wire jalrTarget_carry__4_n_1;
  wire jalrTarget_carry__4_n_2;
  wire jalrTarget_carry__4_n_3;
  wire jalrTarget_carry__5_n_0;
  wire jalrTarget_carry__5_n_1;
  wire jalrTarget_carry__5_n_2;
  wire jalrTarget_carry__5_n_3;
  wire jalrTarget_carry__6_n_1;
  wire jalrTarget_carry__6_n_2;
  wire jalrTarget_carry__6_n_3;
  wire jalrTarget_carry_n_0;
  wire jalrTarget_carry_n_1;
  wire jalrTarget_carry_n_2;
  wire jalrTarget_carry_n_3;
  wire ovfE;
  wire [20:0]p_0_in;
  wire [63:3]p_0_in_0;
  wire [178:0]p_0_in_1;
  wire [0:0]\q[106]_i_3 ;
  wire \q_reg[104] ;
  wire \q_reg[106] ;
  wire \q_reg[107] ;
  wire \q_reg[107]_0 ;
  wire \q_reg[107]_1 ;
  wire \q_reg[10] ;
  wire [0:0]\q_reg[115] ;
  wire \q_reg[11] ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire \q_reg[11]_10 ;
  wire \q_reg[11]_11 ;
  wire \q_reg[11]_12 ;
  wire \q_reg[11]_13 ;
  wire \q_reg[11]_14 ;
  wire \q_reg[11]_15 ;
  wire \q_reg[11]_16 ;
  wire \q_reg[11]_17 ;
  wire \q_reg[11]_18 ;
  wire \q_reg[11]_19 ;
  wire \q_reg[11]_2 ;
  wire \q_reg[11]_20 ;
  wire \q_reg[11]_21 ;
  wire \q_reg[11]_22 ;
  wire \q_reg[11]_23 ;
  wire \q_reg[11]_24 ;
  wire \q_reg[11]_25 ;
  wire \q_reg[11]_26 ;
  wire \q_reg[11]_27 ;
  wire \q_reg[11]_28 ;
  wire \q_reg[11]_29 ;
  wire \q_reg[11]_3 ;
  wire \q_reg[11]_30 ;
  wire \q_reg[11]_31 ;
  wire \q_reg[11]_32 ;
  wire \q_reg[11]_33 ;
  wire \q_reg[11]_34 ;
  wire \q_reg[11]_35 ;
  wire \q_reg[11]_36 ;
  wire \q_reg[11]_37 ;
  wire \q_reg[11]_38 ;
  wire \q_reg[11]_4 ;
  wire \q_reg[11]_5 ;
  wire \q_reg[11]_6 ;
  wire \q_reg[11]_7 ;
  wire \q_reg[11]_8 ;
  wire \q_reg[11]_9 ;
  wire [34:0]\q_reg[137] ;
  wire [32:0]\q_reg[137]_0 ;
  wire [0:0]\q_reg[137]_i_12 ;
  wire \q_reg[13] ;
  wire \q_reg[13]_0 ;
  wire \q_reg[13]_1 ;
  wire \q_reg[13]_10 ;
  wire \q_reg[13]_11 ;
  wire \q_reg[13]_12 ;
  wire \q_reg[13]_13 ;
  wire \q_reg[13]_14 ;
  wire \q_reg[13]_15 ;
  wire \q_reg[13]_16 ;
  wire \q_reg[13]_17 ;
  wire \q_reg[13]_18 ;
  wire \q_reg[13]_19 ;
  wire \q_reg[13]_2 ;
  wire \q_reg[13]_20 ;
  wire \q_reg[13]_21 ;
  wire \q_reg[13]_22 ;
  wire \q_reg[13]_23 ;
  wire \q_reg[13]_24 ;
  wire \q_reg[13]_25 ;
  wire \q_reg[13]_26 ;
  wire \q_reg[13]_27 ;
  wire \q_reg[13]_28 ;
  wire \q_reg[13]_29 ;
  wire \q_reg[13]_3 ;
  wire \q_reg[13]_30 ;
  wire \q_reg[13]_4 ;
  wire \q_reg[13]_5 ;
  wire \q_reg[13]_6 ;
  wire \q_reg[13]_7 ;
  wire \q_reg[13]_8 ;
  wire \q_reg[13]_9 ;
  wire [30:0]\q_reg[178] ;
  wire \q_reg[18] ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire [0:0]\q_reg[36] ;
  wire \q_reg[37] ;
  wire \q_reg[37]_0 ;
  wire \q_reg[37]_1 ;
  wire \q_reg[37]_10 ;
  wire \q_reg[37]_11 ;
  wire \q_reg[37]_12 ;
  wire \q_reg[37]_13 ;
  wire \q_reg[37]_14 ;
  wire \q_reg[37]_15 ;
  wire \q_reg[37]_16 ;
  wire \q_reg[37]_17 ;
  wire \q_reg[37]_18 ;
  wire \q_reg[37]_19 ;
  wire \q_reg[37]_2 ;
  wire \q_reg[37]_3 ;
  wire \q_reg[37]_4 ;
  wire \q_reg[37]_5 ;
  wire \q_reg[37]_6 ;
  wire \q_reg[37]_7 ;
  wire \q_reg[37]_8 ;
  wire \q_reg[37]_9 ;
  wire \q_reg[38] ;
  wire \q_reg[38]_0 ;
  wire [2:0]\q_reg[4] ;
  wire \q_reg[75] ;
  wire [3:0]\q_reg[78] ;
  wire [7:0]\q_reg[90] ;
  wire \q_reg[91] ;
  wire [4:0]\q_reg[95] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire regE_n_100;
  wire regE_n_101;
  wire regE_n_102;
  wire regE_n_106;
  wire regE_n_107;
  wire regE_n_108;
  wire regE_n_109;
  wire regE_n_111;
  wire regE_n_112;
  wire regE_n_113;
  wire regE_n_114;
  wire regE_n_118;
  wire regE_n_119;
  wire regE_n_120;
  wire regE_n_121;
  wire regE_n_132;
  wire regE_n_133;
  wire regE_n_134;
  wire regE_n_135;
  wire regE_n_283;
  wire regE_n_284;
  wire regE_n_285;
  wire regE_n_286;
  wire regE_n_287;
  wire regE_n_288;
  wire regE_n_291;
  wire regE_n_292;
  wire regE_n_293;
  wire regE_n_294;
  wire regE_n_297;
  wire regE_n_298;
  wire regE_n_299;
  wire regE_n_300;
  wire regE_n_301;
  wire regE_n_302;
  wire regE_n_303;
  wire regE_n_304;
  wire regE_n_305;
  wire regE_n_306;
  wire regE_n_307;
  wire regE_n_308;
  wire regE_n_309;
  wire regE_n_310;
  wire regE_n_311;
  wire regE_n_312;
  wire regE_n_313;
  wire regE_n_314;
  wire regE_n_315;
  wire regE_n_316;
  wire regE_n_317;
  wire regE_n_318;
  wire regE_n_319;
  wire regE_n_320;
  wire regE_n_321;
  wire regE_n_322;
  wire regE_n_323;
  wire regE_n_324;
  wire regE_n_325;
  wire regE_n_326;
  wire regE_n_327;
  wire regE_n_328;
  wire regE_n_329;
  wire regE_n_330;
  wire regE_n_331;
  wire regE_n_332;
  wire regE_n_333;
  wire regE_n_334;
  wire regE_n_335;
  wire regE_n_336;
  wire regE_n_337;
  wire regE_n_338;
  wire regE_n_339;
  wire regE_n_340;
  wire regE_n_341;
  wire regE_n_342;
  wire regE_n_343;
  wire regE_n_344;
  wire regE_n_345;
  wire regE_n_346;
  wire regE_n_347;
  wire regE_n_348;
  wire regE_n_349;
  wire regE_n_350;
  wire regE_n_351;
  wire regE_n_352;
  wire regE_n_353;
  wire regE_n_357;
  wire regE_n_358;
  wire regE_n_359;
  wire regE_n_360;
  wire regE_n_364;
  wire regE_n_365;
  wire regE_n_366;
  wire regE_n_367;
  wire regE_n_80;
  wire regE_n_81;
  wire regE_n_82;
  wire regE_n_83;
  wire regE_n_99;
  wire regM_n_100;
  wire regM_n_101;
  wire regM_n_105;
  wire regM_n_106;
  wire regM_n_107;
  wire regM_n_108;
  wire regM_n_109;
  wire regM_n_110;
  wire regM_n_111;
  wire regM_n_112;
  wire regM_n_113;
  wire regM_n_114;
  wire regM_n_115;
  wire regM_n_116;
  wire regM_n_117;
  wire regM_n_118;
  wire regM_n_119;
  wire regM_n_120;
  wire regM_n_121;
  wire regM_n_122;
  wire regM_n_123;
  wire regM_n_124;
  wire regM_n_125;
  wire regM_n_126;
  wire regM_n_127;
  wire regM_n_128;
  wire regM_n_129;
  wire regM_n_130;
  wire regM_n_131;
  wire regM_n_132;
  wire regM_n_133;
  wire regM_n_134;
  wire regM_n_135;
  wire regM_n_136;
  wire regM_n_137;
  wire regM_n_138;
  wire regM_n_139;
  wire regM_n_140;
  wire regM_n_141;
  wire regM_n_142;
  wire regM_n_143;
  wire regM_n_144;
  wire regM_n_145;
  wire regM_n_146;
  wire regM_n_147;
  wire regM_n_148;
  wire regM_n_149;
  wire regM_n_150;
  wire regM_n_151;
  wire regM_n_152;
  wire regM_n_153;
  wire regM_n_154;
  wire regM_n_155;
  wire regM_n_156;
  wire regM_n_157;
  wire regM_n_158;
  wire regM_n_159;
  wire regM_n_160;
  wire regM_n_161;
  wire regM_n_162;
  wire regM_n_163;
  wire regM_n_164;
  wire regM_n_38;
  wire regM_n_39;
  wire regM_n_40;
  wire regM_n_41;
  wire regM_n_42;
  wire regM_n_43;
  wire regM_n_44;
  wire regM_n_45;
  wire regM_n_46;
  wire regM_n_47;
  wire regM_n_48;
  wire regM_n_49;
  wire regM_n_50;
  wire regM_n_51;
  wire regM_n_52;
  wire regM_n_53;
  wire regM_n_54;
  wire regM_n_55;
  wire regM_n_56;
  wire regM_n_57;
  wire regM_n_58;
  wire regM_n_59;
  wire regM_n_60;
  wire regM_n_61;
  wire regM_n_62;
  wire regM_n_63;
  wire regM_n_64;
  wire regM_n_65;
  wire regM_n_66;
  wire regM_n_67;
  wire regM_n_68;
  wire regM_n_69;
  wire regM_n_70;
  wire regM_n_71;
  wire regM_n_72;
  wire regM_n_73;
  wire regM_n_74;
  wire regM_n_75;
  wire regM_n_76;
  wire regM_n_77;
  wire regM_n_78;
  wire regM_n_79;
  wire regM_n_80;
  wire regM_n_81;
  wire regM_n_82;
  wire regM_n_83;
  wire regM_n_84;
  wire regM_n_85;
  wire regM_n_86;
  wire regM_n_87;
  wire regM_n_88;
  wire regM_n_89;
  wire regM_n_90;
  wire regM_n_91;
  wire regM_n_92;
  wire regM_n_93;
  wire regM_n_94;
  wire regM_n_95;
  wire regM_n_96;
  wire regM_n_97;
  wire regM_n_98;
  wire regM_n_99;
  wire regW_n_32;
  wire regW_n_38;
  wire regW_n_39;
  wire reset;
  wire [3:3]NLW_jalrTarget_carry__6_CO_UNCONNECTED;

  design_1_top_0_0_alu alu
       (.CO(CO),
        .DI({regE_n_106,regE_n_107,regE_n_108,regE_n_109}),
        .S({regE_n_132,regE_n_133,regE_n_134,regE_n_135}),
        .SrcAE(SrcAE),
        .\q[106]_i_5 ({regE_n_99,regE_n_100,regE_n_101,regE_n_102}),
        .\q[106]_i_5_0 ({regE_n_364,regE_n_365,regE_n_366,regE_n_367}),
        .\q_reg[109]_i_8 (\q_reg[95] [0]),
        .\q_reg[109]_i_8_0 (\q_reg[178] [2:0]),
        .\q_reg[109]_i_8_1 (SrcBE__0[0]),
        .\q_reg[109]_i_8_2 (SrcBE__0[1]),
        .\q_reg[109]_i_8_3 (SrcBE__0[2]),
        .\q_reg[113]_i_10 (\q_reg[178] [6:3]),
        .\q_reg[113]_i_10_0 (SrcBE__0[3]),
        .\q_reg[113]_i_10_1 (SrcBE__0[4]),
        .\q_reg[113]_i_10_2 (SrcBE__0[5]),
        .\q_reg[113]_i_10_3 (SrcBE__0[6]),
        .\q_reg[117]_i_8 (\q_reg[178] [10:7]),
        .\q_reg[117]_i_8_0 (SrcBE__0[7]),
        .\q_reg[117]_i_8_1 (SrcBE__0[8]),
        .\q_reg[117]_i_8_2 (SrcBE__0[9]),
        .\q_reg[117]_i_8_3 (SrcBE__0[10]),
        .\q_reg[11] ({alu_n_1,alu_n_2,alu_n_3,alu_n_4}),
        .\q_reg[11]_0 ({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\q_reg[11]_1 ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\q_reg[11]_2 ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .\q_reg[11]_3 ({alu_n_17,alu_n_18,alu_n_19,alu_n_20}),
        .\q_reg[11]_4 ({alu_n_21,alu_n_22,alu_n_23,alu_n_24}),
        .\q_reg[11]_5 ({alu_n_25,alu_n_26,alu_n_27,alu_n_28}),
        .\q_reg[11]_6 ({alu_n_29,alu_n_30,alu_n_31,alu_n_32}),
        .\q_reg[121]_i_8 (\q_reg[178] [14:11]),
        .\q_reg[121]_i_8_0 (SrcBE__0[11]),
        .\q_reg[121]_i_8_1 (SrcBE__0[12]),
        .\q_reg[121]_i_8_2 (SrcBE__0[13]),
        .\q_reg[121]_i_8_3 (SrcBE__0[14]),
        .\q_reg[125]_i_10 (\q_reg[178] [18:15]),
        .\q_reg[125]_i_10_0 (SrcBE__0[15]),
        .\q_reg[125]_i_10_1 (SrcBE__0[16]),
        .\q_reg[125]_i_10_2 (SrcBE__0[17]),
        .\q_reg[125]_i_10_3 (SrcBE__0[18]),
        .\q_reg[129]_i_10 (\q_reg[178] [22:19]),
        .\q_reg[129]_i_10_0 (SrcBE__0[19]),
        .\q_reg[129]_i_10_1 (SrcBE__0[20]),
        .\q_reg[129]_i_10_2 (SrcBE__0[21]),
        .\q_reg[129]_i_10_3 (SrcBE__0[22]),
        .\q_reg[133]_i_10 (\q_reg[178] [26:23]),
        .\q_reg[133]_i_10_0 (SrcBE__0[23]),
        .\q_reg[133]_i_10_1 (SrcBE__0[24]),
        .\q_reg[133]_i_10_2 (SrcBE__0[25]),
        .\q_reg[133]_i_10_3 (SrcBE__0[26]),
        .\q_reg[137]_i_12 (\q_reg[178] [30:27]),
        .\q_reg[137]_i_12_0 (SrcBE__0[27]),
        .\q_reg[137]_i_12_1 (SrcBE__0[28]),
        .\q_reg[137]_i_12_2 (SrcBE__0[29]),
        .\q_reg[137]_i_12_3 (SrcBE__0[30]),
        .\result0_inferred__6/i__carry__1_0 ({regE_n_80,regE_n_81,regE_n_82,regE_n_83}),
        .\result0_inferred__6/i__carry__1_1 ({regE_n_357,regE_n_358,regE_n_359,regE_n_360}),
        .\result0_inferred__6/i__carry__2_0 ({regE_n_118,regE_n_119,regE_n_120,regE_n_121}),
        .\result0_inferred__6/i__carry__2_1 ({regE_n_111,regE_n_112,regE_n_113,regE_n_114}));
  design_1_top_0_0_adder branchadd
       (.D(PCNextF[27:0]),
        .O(PCTargetE),
        .PCPlus4F(PCPlus4F[27:3]),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({ImmExtE[30:1],\q_reg[36] }),
        .S({regE_n_297,regE_n_298,regE_n_299,regE_n_300}),
        .jalrTarget(jalrTarget[27:0]),
        .\q_reg[11] ({regE_n_305,regE_n_306,regE_n_307,regE_n_308}),
        .\q_reg[15] ({regE_n_309,regE_n_310,regE_n_311,regE_n_312}),
        .\q_reg[19] ({regE_n_313,regE_n_314,regE_n_315,regE_n_316}),
        .\q_reg[23] ({regE_n_317,regE_n_318,regE_n_319,regE_n_320}),
        .\q_reg[27] ({regE_n_321,regE_n_322,regE_n_323,regE_n_324}),
        .\q_reg[2] (Q[2:0]),
        .\q_reg[31] ({regE_n_291,regE_n_292,regE_n_293,regE_n_294}),
        .\q_reg[7] ({regE_n_301,regE_n_302,regE_n_303,regE_n_304}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry
       (.CI(1'b0),
        .CO({jalrTarget_carry_n_0,jalrTarget_carry_n_1,jalrTarget_carry_n_2,jalrTarget_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\q_reg[178] [2:0],SrcAE}),
        .O(jalrTarget[3:0]),
        .S({regE_n_325,regE_n_326,regE_n_327,regE_n_328}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__0
       (.CI(jalrTarget_carry_n_0),
        .CO({jalrTarget_carry__0_n_0,jalrTarget_carry__0_n_1,jalrTarget_carry__0_n_2,jalrTarget_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [6:3]),
        .O(jalrTarget[7:4]),
        .S({regE_n_329,regE_n_330,regE_n_331,regE_n_332}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__1
       (.CI(jalrTarget_carry__0_n_0),
        .CO({jalrTarget_carry__1_n_0,jalrTarget_carry__1_n_1,jalrTarget_carry__1_n_2,jalrTarget_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [10:7]),
        .O(jalrTarget[11:8]),
        .S({regE_n_333,regE_n_334,regE_n_335,regE_n_336}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__2
       (.CI(jalrTarget_carry__1_n_0),
        .CO({jalrTarget_carry__2_n_0,jalrTarget_carry__2_n_1,jalrTarget_carry__2_n_2,jalrTarget_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [14:11]),
        .O(jalrTarget[15:12]),
        .S({regE_n_337,regE_n_338,regE_n_339,regE_n_340}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__3
       (.CI(jalrTarget_carry__2_n_0),
        .CO({jalrTarget_carry__3_n_0,jalrTarget_carry__3_n_1,jalrTarget_carry__3_n_2,jalrTarget_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [18:15]),
        .O(jalrTarget[19:16]),
        .S({regE_n_341,regE_n_342,regE_n_343,regE_n_344}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__4
       (.CI(jalrTarget_carry__3_n_0),
        .CO({jalrTarget_carry__4_n_0,jalrTarget_carry__4_n_1,jalrTarget_carry__4_n_2,jalrTarget_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [22:19]),
        .O(jalrTarget[23:20]),
        .S({regE_n_345,regE_n_346,regE_n_347,regE_n_348}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__5
       (.CI(jalrTarget_carry__4_n_0),
        .CO({jalrTarget_carry__5_n_0,jalrTarget_carry__5_n_1,jalrTarget_carry__5_n_2,jalrTarget_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[178] [26:23]),
        .O(jalrTarget[27:24]),
        .S({regE_n_349,regE_n_350,regE_n_351,regE_n_352}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__6
       (.CI(jalrTarget_carry__5_n_0),
        .CO({NLW_jalrTarget_carry__6_CO_UNCONNECTED[3],jalrTarget_carry__6_n_1,jalrTarget_carry__6_n_2,jalrTarget_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q_reg[178] [29:27]}),
        .O(jalrTarget[31:28]),
        .S({regE_n_284,regE_n_285,regE_n_286,regE_n_287}));
  design_1_top_0_0_load load
       (.D({regM_n_141,regM_n_142,regM_n_143,regM_n_144,regM_n_145,regM_n_146,regM_n_147,regM_n_148,regM_n_149,regM_n_150,regM_n_151,regM_n_152,regM_n_153,regM_n_154,regM_n_155,regM_n_156,\q_reg[90] ,regM_n_157,regM_n_158,regM_n_159,regM_n_160,regM_n_161,regM_n_162,regM_n_163,regM_n_164}),
        .E(regM_n_107),
        .Q(DataM));
  design_1_top_0_0_adder_0 pcadd
       (.D(p_0_in_0[31:3]),
        .PCPlus4F(PCPlus4F),
        .PCSrcE(PCSrcE),
        .Q(Q[31:2]));
  design_1_top_0_0_flopenr pcreg
       (.D(p_0_in_0[63:32]),
        .E(regE_n_353),
        .PCSrcE(PCSrcE),
        .Q(Q),
        .clk(clk),
        .\q_reg[31]_0 (PCNextF),
        .reset(reset));
  design_1_top_0_0_flopenrc regD
       (.D({p_0_in_1[178:6],p_0_in_1[0]}),
        .E(regE_n_353),
        .FlushE(FlushE),
        .Q({Rs2D,Rs1D}),
        .clk(clk),
        .p_0_in(p_0_in),
        .\q_reg[104] (\q_reg[104] ),
        .\q_reg[95]_0 ({D[32:1],p_0_in_0,D[0]}),
        .rd10(rd10),
        .rd20(rd20),
        .reset(reset));
  design_1_top_0_0_floprc__parameterized0 regE
       (.D(\q_reg[115] ),
        .DI({\q_reg[178] [2:0],SrcAE}),
        .E(regE_n_353),
        .ForwardAE11_out(\hu/ForwardAE11_out ),
        .O(PCTargetE),
        .PCPlus4F(PCPlus4F[31:28]),
        .PCReady(PCReady),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({\q_reg[137] [34:3],RdM}),
        .RegWriteW(RegWriteW),
        .ResultW(ResultW),
        .S({regE_n_132,regE_n_133,regE_n_134,regE_n_135}),
        .WriteDataE(WriteDataE),
        .clk(clk),
        .condinvb__0(condinvb__0),
        .jalrTarget_carry__2_i_2_0(regW_n_32),
        .jalrTarget_carry__2_i_2_1(regM_n_105),
        .jalrTarget_carry__6_i_8_0(regW_n_38),
        .ovfE(ovfE),
        .\q[105]_i_3_0 (RdW),
        .\q[106]_i_3_0 (\q[106]_i_3 ),
        .\q[106]_i_3_1 ({alu_n_1,alu_n_2,alu_n_3,alu_n_4}),
        .\q[110]_i_4_0 ({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\q[114]_i_3_0 ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\q[118]_i_3_0 ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .\q[120]_i_11_0 (\q_reg[137]_0 [0]),
        .\q[122]_i_4_0 ({alu_n_17,alu_n_18,alu_n_19,alu_n_20}),
        .\q[126]_i_4_0 ({alu_n_21,alu_n_22,alu_n_23,alu_n_24}),
        .\q[130]_i_4_0 ({alu_n_25,alu_n_26,alu_n_27,alu_n_28}),
        .\q[134]_i_4_0 ({alu_n_29,alu_n_30,alu_n_31,alu_n_32}),
        .\q[31]_i_6_0 ({Rs2D,Rs1D}),
        .\q_reg[105]_0 (regM_n_106),
        .\q_reg[106]_0 (\q_reg[106] ),
        .\q_reg[107]_0 (\q_reg[107] ),
        .\q_reg[107]_1 (\q_reg[107]_0 ),
        .\q_reg[107]_2 (\q_reg[107]_1 ),
        .\q_reg[10]_0 (\q_reg[10] ),
        .\q_reg[11]_0 (\q_reg[11] ),
        .\q_reg[11]_1 (\q_reg[11]_0 ),
        .\q_reg[11]_10 (\q_reg[11]_9 ),
        .\q_reg[11]_11 (\q_reg[11]_10 ),
        .\q_reg[11]_12 (\q_reg[11]_11 ),
        .\q_reg[11]_13 (\q_reg[11]_12 ),
        .\q_reg[11]_14 (\q_reg[11]_13 ),
        .\q_reg[11]_15 (\q_reg[11]_14 ),
        .\q_reg[11]_16 (\q_reg[11]_15 ),
        .\q_reg[11]_17 (\q_reg[11]_16 ),
        .\q_reg[11]_18 (\q_reg[11]_17 ),
        .\q_reg[11]_19 (\q_reg[11]_18 ),
        .\q_reg[11]_2 (\q_reg[11]_1 ),
        .\q_reg[11]_20 (\q_reg[11]_19 ),
        .\q_reg[11]_21 (\q_reg[11]_20 ),
        .\q_reg[11]_22 (\q_reg[11]_21 ),
        .\q_reg[11]_23 (\q_reg[11]_22 ),
        .\q_reg[11]_24 (\q_reg[11]_23 ),
        .\q_reg[11]_25 (\q_reg[11]_24 ),
        .\q_reg[11]_26 (\q_reg[11]_25 ),
        .\q_reg[11]_27 (\q_reg[11]_26 ),
        .\q_reg[11]_28 (\q_reg[11]_27 ),
        .\q_reg[11]_29 (\q_reg[11]_28 ),
        .\q_reg[11]_3 (\q_reg[11]_2 ),
        .\q_reg[11]_30 (\q_reg[11]_29 ),
        .\q_reg[11]_31 (\q_reg[11]_30 ),
        .\q_reg[11]_32 (\q_reg[11]_31 ),
        .\q_reg[11]_33 (\q_reg[11]_32 ),
        .\q_reg[11]_34 (\q_reg[11]_33 ),
        .\q_reg[11]_35 (\q_reg[11]_34 ),
        .\q_reg[11]_36 (\q_reg[11]_35 ),
        .\q_reg[11]_37 (\q_reg[11]_36 ),
        .\q_reg[11]_38 (\q_reg[11]_37 ),
        .\q_reg[11]_39 (\q_reg[11]_38 ),
        .\q_reg[11]_4 (\q_reg[11]_3 ),
        .\q_reg[11]_5 (\q_reg[11]_4 ),
        .\q_reg[11]_6 (\q_reg[11]_5 ),
        .\q_reg[11]_7 (\q_reg[11]_6 ),
        .\q_reg[11]_8 (\q_reg[11]_7 ),
        .\q_reg[11]_9 (\q_reg[11]_8 ),
        .\q_reg[137]_i_12_0 (\q_reg[137]_i_12 ),
        .\q_reg[13]_0 (\q_reg[13] ),
        .\q_reg[13]_1 (\q_reg[13]_0 ),
        .\q_reg[13]_10 (\q_reg[13]_9 ),
        .\q_reg[13]_11 (\q_reg[13]_10 ),
        .\q_reg[13]_12 (\q_reg[13]_11 ),
        .\q_reg[13]_13 (\q_reg[13]_12 ),
        .\q_reg[13]_14 (\q_reg[13]_13 ),
        .\q_reg[13]_15 (\q_reg[13]_14 ),
        .\q_reg[13]_16 (\q_reg[13]_15 ),
        .\q_reg[13]_17 (\q_reg[13]_16 ),
        .\q_reg[13]_18 (\q_reg[13]_17 ),
        .\q_reg[13]_19 (\q_reg[13]_18 ),
        .\q_reg[13]_2 (\q_reg[13]_1 ),
        .\q_reg[13]_20 (\q_reg[13]_19 ),
        .\q_reg[13]_21 (\q_reg[13]_20 ),
        .\q_reg[13]_22 (\q_reg[13]_21 ),
        .\q_reg[13]_23 (\q_reg[13]_22 ),
        .\q_reg[13]_24 (\q_reg[13]_23 ),
        .\q_reg[13]_25 (\q_reg[13]_24 ),
        .\q_reg[13]_26 (\q_reg[13]_25 ),
        .\q_reg[13]_27 (\q_reg[13]_26 ),
        .\q_reg[13]_28 (\q_reg[13]_27 ),
        .\q_reg[13]_29 (\q_reg[13]_28 ),
        .\q_reg[13]_3 (\q_reg[13]_2 ),
        .\q_reg[13]_30 (\q_reg[13]_29 ),
        .\q_reg[13]_31 (\q_reg[13]_30 ),
        .\q_reg[13]_4 (\q_reg[13]_3 ),
        .\q_reg[13]_5 (\q_reg[13]_4 ),
        .\q_reg[13]_6 (\q_reg[13]_5 ),
        .\q_reg[13]_7 (\q_reg[13]_6 ),
        .\q_reg[13]_8 (\q_reg[13]_7 ),
        .\q_reg[13]_9 (\q_reg[13]_8 ),
        .\q_reg[154]_0 (\q_reg[178] [6:3]),
        .\q_reg[158]_0 (\q_reg[178] [10:7]),
        .\q_reg[15]_0 (PCNextF[31:28]),
        .\q_reg[162]_0 (\q_reg[178] [14:11]),
        .\q_reg[166]_0 (\q_reg[178] [18:15]),
        .\q_reg[170]_0 (\q_reg[178] [22:19]),
        .\q_reg[174]_0 (\q_reg[178] [26:23]),
        .\q_reg[178]_0 (\q_reg[178] [30:27]),
        .\q_reg[178]_1 (O),
        .\q_reg[178]_2 ({p_0_in_1[178:6],p_0_in_1[0]}),
        .\q_reg[18]_0 (\q_reg[18] ),
        .\q_reg[31]_0 (jalrTarget[31:28]),
        .\q_reg[36]_0 (SrcBE),
        .\q_reg[37]_0 (SrcBE__0[0]),
        .\q_reg[37]_1 (\q_reg[37] ),
        .\q_reg[37]_10 (\q_reg[37]_8 ),
        .\q_reg[37]_11 (\q_reg[37]_9 ),
        .\q_reg[37]_12 (\q_reg[37]_10 ),
        .\q_reg[37]_13 (\q_reg[37]_11 ),
        .\q_reg[37]_14 (\q_reg[37]_12 ),
        .\q_reg[37]_15 (\q_reg[37]_13 ),
        .\q_reg[37]_16 (\q_reg[37]_14 ),
        .\q_reg[37]_17 (\q_reg[37]_15 ),
        .\q_reg[37]_18 (\q_reg[37]_16 ),
        .\q_reg[37]_19 (\q_reg[37]_17 ),
        .\q_reg[37]_2 (\q_reg[37]_0 ),
        .\q_reg[37]_20 (\q_reg[37]_18 ),
        .\q_reg[37]_21 (\q_reg[37]_19 ),
        .\q_reg[37]_3 (\q_reg[37]_1 ),
        .\q_reg[37]_4 (\q_reg[37]_2 ),
        .\q_reg[37]_5 (\q_reg[37]_3 ),
        .\q_reg[37]_6 (\q_reg[37]_4 ),
        .\q_reg[37]_7 (\q_reg[37]_5 ),
        .\q_reg[37]_8 (\q_reg[37]_6 ),
        .\q_reg[37]_9 (\q_reg[37]_7 ),
        .\q_reg[38]_0 (SrcBE__0[1]),
        .\q_reg[38]_1 (\q_reg[38] ),
        .\q_reg[38]_2 (\q_reg[38]_0 ),
        .\q_reg[39]_0 (SrcBE__0[2]),
        .\q_reg[39]_1 ({regE_n_297,regE_n_298,regE_n_299,regE_n_300}),
        .\q_reg[39]_2 ({regE_n_325,regE_n_326,regE_n_327,regE_n_328}),
        .\q_reg[40]_0 (SrcBE__0[3]),
        .\q_reg[41]_0 (SrcBE__0[4]),
        .\q_reg[42]_0 (SrcBE__0[5]),
        .\q_reg[42]_1 ({regE_n_106,regE_n_107,regE_n_108,regE_n_109}),
        .\q_reg[43]_0 (SrcBE__0[6]),
        .\q_reg[43]_1 ({regE_n_301,regE_n_302,regE_n_303,regE_n_304}),
        .\q_reg[43]_2 ({regE_n_329,regE_n_330,regE_n_331,regE_n_332}),
        .\q_reg[44]_0 (SrcBE__0[7]),
        .\q_reg[45]_0 (SrcBE__0[8]),
        .\q_reg[46]_0 (SrcBE__0[9]),
        .\q_reg[47]_0 (SrcBE__0[10]),
        .\q_reg[47]_1 ({regE_n_305,regE_n_306,regE_n_307,regE_n_308}),
        .\q_reg[47]_2 ({regE_n_333,regE_n_334,regE_n_335,regE_n_336}),
        .\q_reg[48]_0 (SrcBE__0[11]),
        .\q_reg[49]_0 (SrcBE__0[12]),
        .\q_reg[50]_0 (SrcBE__0[13]),
        .\q_reg[50]_1 ({regE_n_80,regE_n_81,regE_n_82,regE_n_83}),
        .\q_reg[51]_0 (SrcBE__0[14]),
        .\q_reg[51]_1 ({regE_n_309,regE_n_310,regE_n_311,regE_n_312}),
        .\q_reg[51]_2 ({regE_n_337,regE_n_338,regE_n_339,regE_n_340}),
        .\q_reg[51]_3 ({regE_n_357,regE_n_358,regE_n_359,regE_n_360}),
        .\q_reg[52]_0 (SrcBE__0[15]),
        .\q_reg[53]_0 (SrcBE__0[16]),
        .\q_reg[54]_0 (SrcBE__0[17]),
        .\q_reg[55]_0 (SrcBE__0[18]),
        .\q_reg[55]_1 ({regE_n_313,regE_n_314,regE_n_315,regE_n_316}),
        .\q_reg[55]_2 ({regE_n_341,regE_n_342,regE_n_343,regE_n_344}),
        .\q_reg[56]_0 (SrcBE__0[19]),
        .\q_reg[57]_0 (SrcBE__0[20]),
        .\q_reg[58]_0 ({regE_n_111,regE_n_112,regE_n_113,regE_n_114}),
        .\q_reg[58]_1 (SrcBE__0[21]),
        .\q_reg[58]_2 ({regE_n_118,regE_n_119,regE_n_120,regE_n_121}),
        .\q_reg[59]_0 (SrcBE__0[22]),
        .\q_reg[59]_1 ({regE_n_317,regE_n_318,regE_n_319,regE_n_320}),
        .\q_reg[59]_2 ({regE_n_345,regE_n_346,regE_n_347,regE_n_348}),
        .\q_reg[60]_0 (SrcBE__0[23]),
        .\q_reg[61]_0 (SrcBE__0[24]),
        .\q_reg[62]_0 (SrcBE__0[25]),
        .\q_reg[63]_0 (SrcBE__0[26]),
        .\q_reg[63]_1 ({regE_n_321,regE_n_322,regE_n_323,regE_n_324}),
        .\q_reg[63]_2 ({regE_n_349,regE_n_350,regE_n_351,regE_n_352}),
        .\q_reg[64]_0 (SrcBE__0[27]),
        .\q_reg[65]_0 (SrcBE__0[28]),
        .\q_reg[66]_0 (SrcBE__0[29]),
        .\q_reg[66]_1 ({regE_n_99,regE_n_100,regE_n_101,regE_n_102}),
        .\q_reg[67]_0 (SrcBE__0[30]),
        .\q_reg[67]_1 ({regE_n_284,regE_n_285,regE_n_286,regE_n_287}),
        .\q_reg[67]_2 ({regE_n_291,regE_n_292,regE_n_293,regE_n_294}),
        .\q_reg[67]_3 ({regE_n_364,regE_n_365,regE_n_366,regE_n_367}),
        .\q_reg[78]_0 (regE_n_288),
        .\q_reg[78]_1 (\q_reg[78] [3]),
        .\q_reg[78]_2 (regW_n_39),
        .\q_reg[84]_0 ({PCE,Rs1E,Rs2E[4],Rs2E[0],RdE,ImmExtE,\q_reg[36] ,PCPlus4E,regE_n_283}),
        .\q_reg[95]_0 (\q_reg[95] ),
        .reset(reset));
  design_1_top_0_0_flopr__parameterized1 regM
       (.D({regM_n_108,regM_n_109,regM_n_110,regM_n_111,regM_n_112,regM_n_113,regM_n_114,regM_n_115,regM_n_116,regM_n_117,regM_n_118,regM_n_119,regM_n_120,regM_n_121,regM_n_122,regM_n_123,regM_n_124,regM_n_125,regM_n_126,regM_n_127,regM_n_128,regM_n_129,regM_n_130,regM_n_131,regM_n_132,regM_n_133,regM_n_134,regM_n_135,regM_n_136,regM_n_137,regM_n_138,regM_n_139}),
        .E(regM_n_107),
        .ForwardAE11_out(\hu/ForwardAE11_out ),
        .Q({\q_reg[137] [34:3],RdM,regM_n_38,regM_n_39,regM_n_40,regM_n_41,regM_n_42,regM_n_43,regM_n_44,regM_n_45,regM_n_46,regM_n_47,regM_n_48,regM_n_49,regM_n_50,regM_n_51,regM_n_52,regM_n_53,regM_n_54,regM_n_55,regM_n_56,regM_n_57,regM_n_58,regM_n_59,regM_n_60,regM_n_61,regM_n_62,regM_n_63,regM_n_64,regM_n_65,regM_n_66,regM_n_67,regM_n_68,regM_n_69,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93,regM_n_94,regM_n_95,regM_n_96,regM_n_97,regM_n_98,regM_n_99,regM_n_100,regM_n_101,\q_reg[137] [2:0]}),
        .ReadDataM(ReadDataM),
        .clk(clk),
        .jalrTarget_carry_i_9({\q_reg[78] [3],\q_reg[78] [0]}),
        .jalrTarget_carry_i_9_0(regE_n_288),
        .\q_reg[137]_0 ({\q_reg[137]_0 [32:1],WriteDataE,\q_reg[115] ,\q_reg[4] ,\q_reg[137]_0 [0]}),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[2]_1 (\q_reg[2]_0 ),
        .\q_reg[2]_2 (\q_reg[2]_1 ),
        .\q_reg[2]_3 (\q_reg[2]_2 ),
        .\q_reg[2]_4 (\q_reg[2]_3 ),
        .\q_reg[2]_5 (\q_reg[2]_4 ),
        .\q_reg[2]_6 (\q_reg[2]_5 ),
        .\q_reg[2]_7 (\q_reg[2]_6 ),
        .\q_reg[38]_0 ({PCE,Rs1E[3:1],Rs2E[4],Rs2E[0],RdE,ImmExtE,\q_reg[36] ,PCPlus4E,regE_n_283}),
        .\q_reg[4]_0 (regM_n_140),
        .\q_reg[4]_1 ({regM_n_141,regM_n_142,regM_n_143,regM_n_144,regM_n_145,regM_n_146,regM_n_147,regM_n_148,regM_n_149,regM_n_150,regM_n_151,regM_n_152,regM_n_153,regM_n_154,regM_n_155,regM_n_156,regM_n_157,regM_n_158,regM_n_159,regM_n_160,regM_n_161,regM_n_162,regM_n_163,regM_n_164}),
        .\q_reg[69]_0 (regM_n_106),
        .\q_reg[71]_0 (regM_n_105),
        .\q_reg[75]_0 (\q_reg[75] ),
        .\q_reg[91]_0 (\q_reg[91] ),
        .reset(reset),
        .\writeDataM[31] (DataM));
  design_1_top_0_0_flopr__parameterized2 regW
       (.D({\q_reg[137] [34:3],DataM,RdM,regM_n_38,regM_n_39,regM_n_40,regM_n_41,regM_n_42,regM_n_43,regM_n_44,regM_n_45,regM_n_46,regM_n_47,regM_n_48,regM_n_49,regM_n_50,regM_n_51,regM_n_52,regM_n_53,regM_n_54,regM_n_55,regM_n_56,regM_n_57,regM_n_58,regM_n_59,regM_n_60,regM_n_61,regM_n_62,regM_n_63,regM_n_64,regM_n_65,regM_n_66,regM_n_67,regM_n_68,regM_n_69,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93,regM_n_94,regM_n_95,regM_n_96,regM_n_97,regM_n_98,regM_n_99,regM_n_100,regM_n_101,\q_reg[78] [2:1]}),
        .Q(RdW),
        .ResultW(ResultW),
        .clk(clk),
        .jalrTarget_carry_i_9({Rs1E[4:2],Rs1E[0],Rs2E[4],Rs2E[0]}),
        .\q_reg[70]_0 (regW_n_39),
        .\q_reg[72]_0 (regW_n_38),
        .\q_reg[74]_0 (regW_n_32),
        .reset(reset));
  design_1_top_0_0_regfile rf
       (.Q(RdW),
        .RegWriteW(RegWriteW),
        .ResultW(ResultW),
        .clk(clk),
        .\q_reg[140] ({Rs2D,Rs1D}),
        .rd10(rd10),
        .rd20(rd20));
  design_1_top_0_0_store store
       (.D({regM_n_108,regM_n_109,regM_n_110,regM_n_111,regM_n_112,regM_n_113,regM_n_114,regM_n_115,regM_n_116,regM_n_117,regM_n_118,regM_n_119,regM_n_120,regM_n_121,regM_n_122,regM_n_123,regM_n_124,regM_n_125,regM_n_126,regM_n_127,regM_n_128,regM_n_129,regM_n_130,regM_n_131,regM_n_132,regM_n_133,regM_n_134,regM_n_135,regM_n_136,regM_n_137,regM_n_138,regM_n_139}),
        .E(regM_n_140),
        .WriteDataM(WriteDataM));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

module design_1_top_0_0_flopenr
   (D,
    Q,
    PCSrcE,
    E,
    \q_reg[31]_0 ,
    clk,
    reset);
  output [31:0]D;
  output [31:0]Q;
  input [0:0]PCSrcE;
  input [0:0]E;
  input [31:0]\q_reg[31]_0 ;
  input clk;
  input reset;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]PCSrcE;
  wire [31:0]Q;
  wire clk;
  wire [31:0]\q_reg[31]_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[32]_i_1 
       (.I0(Q[0]),
        .I1(PCSrcE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[33]_i_1 
       (.I0(Q[1]),
        .I1(PCSrcE),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[34]_i_1 
       (.I0(Q[2]),
        .I1(PCSrcE),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[35]_i_1 
       (.I0(Q[3]),
        .I1(PCSrcE),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[36]_i_1 
       (.I0(Q[4]),
        .I1(PCSrcE),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[37]_i_1 
       (.I0(Q[5]),
        .I1(PCSrcE),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[38]_i_1 
       (.I0(Q[6]),
        .I1(PCSrcE),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[39]_i_1 
       (.I0(Q[7]),
        .I1(PCSrcE),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[40]_i_1 
       (.I0(Q[8]),
        .I1(PCSrcE),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[41]_i_1 
       (.I0(Q[9]),
        .I1(PCSrcE),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[42]_i_1 
       (.I0(Q[10]),
        .I1(PCSrcE),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[43]_i_1 
       (.I0(Q[11]),
        .I1(PCSrcE),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[44]_i_1 
       (.I0(Q[12]),
        .I1(PCSrcE),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[45]_i_1 
       (.I0(Q[13]),
        .I1(PCSrcE),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[46]_i_1 
       (.I0(Q[14]),
        .I1(PCSrcE),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[47]_i_1 
       (.I0(Q[15]),
        .I1(PCSrcE),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[48]_i_1 
       (.I0(Q[16]),
        .I1(PCSrcE),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[49]_i_1 
       (.I0(Q[17]),
        .I1(PCSrcE),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[50]_i_1 
       (.I0(Q[18]),
        .I1(PCSrcE),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[51]_i_1 
       (.I0(Q[19]),
        .I1(PCSrcE),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[52]_i_1 
       (.I0(Q[20]),
        .I1(PCSrcE),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[53]_i_1 
       (.I0(Q[21]),
        .I1(PCSrcE),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[54]_i_1 
       (.I0(Q[22]),
        .I1(PCSrcE),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[55]_i_1 
       (.I0(Q[23]),
        .I1(PCSrcE),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[56]_i_1 
       (.I0(Q[24]),
        .I1(PCSrcE),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[57]_i_1 
       (.I0(Q[25]),
        .I1(PCSrcE),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[58]_i_1 
       (.I0(Q[26]),
        .I1(PCSrcE),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[59]_i_1 
       (.I0(Q[27]),
        .I1(PCSrcE),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[60]_i_1 
       (.I0(Q[28]),
        .I1(PCSrcE),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[61]_i_1 
       (.I0(Q[29]),
        .I1(PCSrcE),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[62]_i_1 
       (.I0(Q[30]),
        .I1(PCSrcE),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[63]_i_1 
       (.I0(Q[31]),
        .I1(PCSrcE),
        .O(D[31]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [10]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [11]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [12]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [13]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [14]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [15]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [16]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [17]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [18]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [19]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [20]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [21]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [22]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [23]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [24]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [25]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [26]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [27]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [28]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [29]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [30]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [31]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [7]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [8]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [9]),
        .Q(Q[9]));
endmodule

module design_1_top_0_0_flopenrc
   (D,
    Q,
    p_0_in,
    FlushE,
    \q_reg[104] ,
    rd20,
    rd10,
    E,
    \q_reg[95]_0 ,
    clk,
    reset);
  output [173:0]D;
  output [9:0]Q;
  output [20:0]p_0_in;
  input FlushE;
  input \q_reg[104] ;
  input [31:0]rd20;
  input [31:0]rd10;
  input [0:0]E;
  input [93:0]\q_reg[95]_0 ;
  input clk;
  input reset;

  wire [173:0]D;
  wire [0:0]E;
  wire FlushE;
  wire [2:0]ImmSrcD;
  wire [31:0]PCD;
  wire [9:0]Q;
  wire [4:0]RdD;
  wire [1:1]\c/ALUOpD ;
  wire clk;
  wire [2:0]funct3D;
  wire funct7b5D;
  wire [6:0]opD;
  wire [20:0]p_0_in;
  wire \q[11]_i_2_n_0 ;
  wire \q[40]_i_2_n_0 ;
  wire \q[47]_i_2_n_0 ;
  wire \q_reg[104] ;
  wire [93:0]\q_reg[95]_0 ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[11] ;
  wire \q_reg_n_0_[12] ;
  wire \q_reg_n_0_[13] ;
  wire \q_reg_n_0_[14] ;
  wire \q_reg_n_0_[15] ;
  wire \q_reg_n_0_[16] ;
  wire \q_reg_n_0_[17] ;
  wire \q_reg_n_0_[18] ;
  wire \q_reg_n_0_[19] ;
  wire \q_reg_n_0_[20] ;
  wire \q_reg_n_0_[21] ;
  wire \q_reg_n_0_[22] ;
  wire \q_reg_n_0_[23] ;
  wire \q_reg_n_0_[24] ;
  wire \q_reg_n_0_[25] ;
  wire \q_reg_n_0_[26] ;
  wire \q_reg_n_0_[27] ;
  wire \q_reg_n_0_[28] ;
  wire \q_reg_n_0_[29] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[30] ;
  wire \q_reg_n_0_[31] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[89] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[90] ;
  wire \q_reg_n_0_[91] ;
  wire \q_reg_n_0_[92] ;
  wire \q_reg_n_0_[93] ;
  wire \q_reg_n_0_[95] ;
  wire \q_reg_n_0_[9] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire reset;
  wire \rf/rd11__3 ;
  wire \rf/rd21__3 ;

  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1__0 
       (.I0(opD[0]),
        .I1(FlushE),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \q[0]_i_1__1 
       (.I0(opD[6]),
        .I1(opD[4]),
        .I2(FlushE),
        .I3(opD[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[100]_i_1 
       (.I0(PCD[17]),
        .I1(\q_reg[104] ),
        .O(D[95]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[101]_i_1 
       (.I0(PCD[18]),
        .I1(\q_reg[104] ),
        .O(D[96]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[102]_i_1 
       (.I0(PCD[19]),
        .I1(\q_reg[104] ),
        .O(D[97]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[103]_i_1 
       (.I0(PCD[20]),
        .I1(FlushE),
        .O(D[98]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[104]_i_1 
       (.I0(PCD[21]),
        .I1(\q_reg[104] ),
        .O(D[99]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[105]_i_1 
       (.I0(PCD[22]),
        .I1(\q_reg[104] ),
        .O(D[100]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[106]_i_1 
       (.I0(PCD[23]),
        .I1(\q_reg[104] ),
        .O(D[101]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[107]_i_1 
       (.I0(PCD[24]),
        .I1(\q_reg[104] ),
        .O(D[102]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[108]_i_1 
       (.I0(PCD[25]),
        .I1(\q_reg[104] ),
        .O(D[103]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[109]_i_1 
       (.I0(PCD[26]),
        .I1(\q_reg[104] ),
        .O(D[104]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[10]_i_1__1 
       (.I0(\q_reg_n_0_[6] ),
        .I1(FlushE),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000045550000)) 
    \q[10]_i_1__2 
       (.I0(opD[6]),
        .I1(opD[2]),
        .I2(opD[4]),
        .I3(opD[5]),
        .I4(opD[1]),
        .I5(\q_reg[104] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[110]_i_1 
       (.I0(PCD[27]),
        .I1(\q_reg[104] ),
        .O(D[105]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[111]_i_1 
       (.I0(PCD[28]),
        .I1(\q_reg[104] ),
        .O(D[106]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[112]_i_1 
       (.I0(PCD[29]),
        .I1(\q_reg[104] ),
        .O(D[107]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[113]_i_1 
       (.I0(PCD[30]),
        .I1(\q_reg[104] ),
        .O(D[108]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[114]_i_1 
       (.I0(PCD[31]),
        .I1(\q_reg[104] ),
        .O(D[109]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[115]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[0]),
        .O(D[110]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[116]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[1]),
        .O(D[111]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[117]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[2]),
        .O(D[112]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[118]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[3]),
        .O(D[113]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[119]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[4]),
        .O(D[114]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[11]_i_1__1 
       (.I0(\q_reg_n_0_[7] ),
        .I1(FlushE),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000C000CACA)) 
    \q[11]_i_1__2 
       (.I0(opD[6]),
        .I1(\q[11]_i_2_n_0 ),
        .I2(opD[4]),
        .I3(opD[5]),
        .I4(opD[2]),
        .I5(\q_reg[104] ),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h05F0F0F8)) 
    \q[11]_i_2 
       (.I0(funct7b5D),
        .I1(opD[5]),
        .I2(funct3D[1]),
        .I3(funct3D[2]),
        .I4(funct3D[0]),
        .O(\q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[120]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[5]),
        .O(D[115]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[121]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[6]),
        .O(D[116]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[122]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[7]),
        .O(D[117]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[123]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[8]),
        .O(D[118]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[124]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[9]),
        .O(D[119]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[125]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[10]),
        .O(D[120]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[126]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[11]),
        .O(D[121]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[127]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[12]),
        .O(D[122]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[128]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[13]),
        .O(D[123]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[129]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[14]),
        .O(D[124]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[12]_i_1__1 
       (.I0(\q_reg_n_0_[8] ),
        .I1(FlushE),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00F00020000000A0)) 
    \q[12]_i_1__2 
       (.I0(funct3D[0]),
        .I1(funct7b5D),
        .I2(\c/ALUOpD ),
        .I3(\q_reg[104] ),
        .I4(funct3D[1]),
        .I5(funct3D[2]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[130]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[15]),
        .O(D[125]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[131]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[16]),
        .O(D[126]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[132]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[17]),
        .O(D[127]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[133]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[18]),
        .O(D[128]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[134]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[19]),
        .O(D[129]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[135]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[20]),
        .O(D[130]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[136]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[21]),
        .O(D[131]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[137]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[22]),
        .O(D[132]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[138]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[23]),
        .O(D[133]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[139]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[24]),
        .O(D[134]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[13]_i_1__1 
       (.I0(\q_reg_n_0_[9] ),
        .I1(FlushE),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0004044004040440)) 
    \q[13]_i_1__2 
       (.I0(\q_reg[104] ),
        .I1(\c/ALUOpD ),
        .I2(funct3D[1]),
        .I3(funct3D[2]),
        .I4(funct3D[0]),
        .I5(funct7b5D),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[140]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[25]),
        .O(D[135]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[141]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[26]),
        .O(D[136]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[142]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[27]),
        .O(D[137]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[143]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[28]),
        .O(D[138]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[144]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[29]),
        .O(D[139]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[145]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[30]),
        .O(D[140]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[146]_i_1 
       (.I0(FlushE),
        .I1(\rf/rd21__3 ),
        .I2(rd20[31]),
        .O(D[141]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[146]_i_2 
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(Q[7]),
        .O(\rf/rd21__3 ));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[147]_i_1 
       (.I0(rd10[0]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[0]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[142]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[148]_i_1 
       (.I0(rd10[1]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[1]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[143]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[149]_i_1 
       (.I0(rd10[2]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[2]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[144]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[14]_i_1__1 
       (.I0(\q_reg_n_0_[10] ),
        .I1(FlushE),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h000C080000000000)) 
    \q[14]_i_1__2 
       (.I0(funct7b5D),
        .I1(\c/ALUOpD ),
        .I2(\q_reg[104] ),
        .I3(funct3D[2]),
        .I4(funct3D[1]),
        .I5(funct3D[0]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \q[14]_i_2 
       (.I0(opD[2]),
        .I1(opD[5]),
        .I2(opD[4]),
        .O(\c/ALUOpD ));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[150]_i_1 
       (.I0(rd10[3]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[3]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[145]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[151]_i_1 
       (.I0(rd10[4]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[4]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[146]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[152]_i_1 
       (.I0(rd10[5]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[5]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[147]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[153]_i_1 
       (.I0(rd10[6]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[6]),
        .I3(FlushE),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[148]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[154]_i_1 
       (.I0(rd10[7]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[7]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[149]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[155]_i_1 
       (.I0(rd10[8]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[8]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[150]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[156]_i_1 
       (.I0(rd10[9]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[9]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[151]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[157]_i_1 
       (.I0(rd10[10]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[10]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[152]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[158]_i_1 
       (.I0(rd10[11]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[11]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[153]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[159]_i_1 
       (.I0(rd10[12]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[12]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[154]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[15]_i_1__1 
       (.I0(\q_reg_n_0_[11] ),
        .I1(FlushE),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q[15]_i_1__2 
       (.I0(FlushE),
        .I1(opD[6]),
        .I2(opD[2]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[160]_i_1 
       (.I0(rd10[13]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[13]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[155]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[161]_i_1 
       (.I0(rd10[14]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[14]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[156]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[162]_i_1 
       (.I0(rd10[15]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[15]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[157]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[163]_i_1 
       (.I0(rd10[16]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[16]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[158]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[164]_i_1 
       (.I0(rd10[17]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[17]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[159]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[165]_i_1 
       (.I0(rd10[18]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[18]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[160]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[166]_i_1 
       (.I0(rd10[19]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[19]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[161]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[167]_i_1 
       (.I0(rd10[20]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[20]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[162]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[168]_i_1 
       (.I0(rd10[21]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[21]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[163]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[169]_i_1 
       (.I0(rd10[22]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[22]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[164]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[16]_i_1__1 
       (.I0(\q_reg_n_0_[12] ),
        .I1(FlushE),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[16]_i_1__2 
       (.I0(FlushE),
        .I1(opD[6]),
        .I2(opD[2]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[170]_i_1 
       (.I0(rd10[23]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[23]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[165]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[171]_i_1 
       (.I0(rd10[24]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[24]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[166]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[172]_i_1 
       (.I0(rd10[25]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[25]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[167]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[173]_i_1 
       (.I0(rd10[26]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[26]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[168]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[174]_i_1 
       (.I0(rd10[27]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[27]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[169]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[175]_i_1 
       (.I0(rd10[28]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[28]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[170]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[176]_i_1 
       (.I0(rd10[29]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[29]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[171]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[177]_i_1 
       (.I0(rd10[30]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[30]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[172]));
  LUT6 #(
    .INIT(64'h0088008800F00088)) 
    \q[178]_i_1 
       (.I0(rd10[31]),
        .I1(\rf/rd11__3 ),
        .I2(PCD[31]),
        .I3(\q_reg[104] ),
        .I4(opD[2]),
        .I5(opD[5]),
        .O(D[173]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[178]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(\rf/rd11__3 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[17]_i_1__1 
       (.I0(\q_reg_n_0_[13] ),
        .I1(FlushE),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \q[17]_i_1__2 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[6]),
        .I3(FlushE),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[18]_i_1__1 
       (.I0(\q_reg_n_0_[14] ),
        .I1(FlushE),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00910000)) 
    \q[18]_i_1__2 
       (.I0(opD[5]),
        .I1(opD[4]),
        .I2(opD[2]),
        .I3(FlushE),
        .I4(opD[1]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[19]_i_1__1 
       (.I0(\q_reg_n_0_[15] ),
        .I1(FlushE),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \q[19]_i_1__2 
       (.I0(opD[2]),
        .I1(opD[5]),
        .I2(opD[4]),
        .I3(FlushE),
        .O(p_0_in[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[1]_i_1__0 
       (.I0(opD[1]),
        .I1(FlushE),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[20]_i_1__1 
       (.I0(\q_reg_n_0_[16] ),
        .I1(FlushE),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h44444404)) 
    \q[20]_i_1__2 
       (.I0(FlushE),
        .I1(opD[1]),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[2]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[21]_i_1__1 
       (.I0(\q_reg_n_0_[17] ),
        .I1(FlushE),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[22]_i_1__1 
       (.I0(\q_reg_n_0_[18] ),
        .I1(FlushE),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[23]_i_1__1 
       (.I0(\q_reg_n_0_[19] ),
        .I1(FlushE),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[24]_i_1__1 
       (.I0(\q_reg_n_0_[20] ),
        .I1(FlushE),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[25]_i_1__1 
       (.I0(\q_reg_n_0_[21] ),
        .I1(FlushE),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[26]_i_1__1 
       (.I0(\q_reg_n_0_[22] ),
        .I1(FlushE),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[27]_i_1__1 
       (.I0(\q_reg_n_0_[23] ),
        .I1(FlushE),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[28]_i_1__1 
       (.I0(\q_reg_n_0_[24] ),
        .I1(FlushE),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[29]_i_1__1 
       (.I0(\q_reg_n_0_[25] ),
        .I1(FlushE),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[2]_i_1__1 
       (.I0(opD[2]),
        .I1(FlushE),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[30]_i_1__1 
       (.I0(\q_reg_n_0_[26] ),
        .I1(FlushE),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[31]_i_1__0 
       (.I0(\q_reg_n_0_[27] ),
        .I1(FlushE),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[32]_i_1__0 
       (.I0(\q_reg_n_0_[28] ),
        .I1(FlushE),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[33]_i_1__0 
       (.I0(\q_reg_n_0_[29] ),
        .I1(FlushE),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[34]_i_1__0 
       (.I0(\q_reg_n_0_[30] ),
        .I1(FlushE),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[35]_i_1__0 
       (.I0(\q_reg_n_0_[31] ),
        .I1(FlushE),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \q[36]_i_1__0 
       (.I0(ImmSrcD[1]),
        .I1(RdD[0]),
        .I2(ImmSrcD[0]),
        .I3(Q[5]),
        .I4(\q_reg[104] ),
        .I5(ImmSrcD[2]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[36]_i_2 
       (.I0(opD[3]),
        .I1(opD[2]),
        .I2(opD[6]),
        .O(ImmSrcD[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \q[36]_i_3 
       (.I0(opD[3]),
        .I1(opD[4]),
        .I2(opD[5]),
        .I3(opD[6]),
        .O(ImmSrcD[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[36]_i_4 
       (.I0(opD[2]),
        .I1(opD[6]),
        .O(ImmSrcD[2]));
  LUT6 #(
    .INIT(64'h0A0A000A0C0C000C)) 
    \q[37]_i_1__0 
       (.I0(Q[6]),
        .I1(RdD[1]),
        .I2(\q_reg[104] ),
        .I3(opD[2]),
        .I4(opD[6]),
        .I5(\q[40]_i_2_n_0 ),
        .O(D[32]));
  LUT6 #(
    .INIT(64'h0A0A000A0C0C000C)) 
    \q[38]_i_1__0 
       (.I0(Q[7]),
        .I1(RdD[2]),
        .I2(\q_reg[104] ),
        .I3(opD[2]),
        .I4(opD[6]),
        .I5(\q[40]_i_2_n_0 ),
        .O(D[33]));
  LUT6 #(
    .INIT(64'h0A0A000A0C0C000C)) 
    \q[39]_i_1__0 
       (.I0(Q[8]),
        .I1(RdD[3]),
        .I2(\q_reg[104] ),
        .I3(opD[2]),
        .I4(opD[6]),
        .I5(\q[40]_i_2_n_0 ),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[3]_i_1__1 
       (.I0(opD[3]),
        .I1(FlushE),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0A0A000A0C0C000C)) 
    \q[40]_i_1__0 
       (.I0(Q[9]),
        .I1(RdD[4]),
        .I2(\q_reg[104] ),
        .I3(opD[2]),
        .I4(opD[6]),
        .I5(\q[40]_i_2_n_0 ),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hEEEEBB8B)) 
    \q[40]_i_2 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[3]),
        .O(\q[40]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[41]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q_reg_n_0_[89] ),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[42]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q_reg_n_0_[90] ),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[43]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q_reg_n_0_[91] ),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[44]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q_reg_n_0_[92] ),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[45]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q_reg_n_0_[93] ),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[46]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(funct7b5D),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h5100)) 
    \q[47]_i_1__0 
       (.I0(\q_reg[104] ),
        .I1(opD[2]),
        .I2(opD[6]),
        .I3(\q[47]_i_2_n_0 ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \q[47]_i_2 
       (.I0(\q_reg_n_0_[95] ),
        .I1(RdD[0]),
        .I2(ImmSrcD[1]),
        .I3(ImmSrcD[0]),
        .I4(Q[5]),
        .O(\q[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[48]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(funct3D[0]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[43]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[49]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(funct3D[1]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[4]_i_1__1 
       (.I0(opD[4]),
        .I1(FlushE),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[50]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(funct3D[2]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[45]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[51]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[0]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[46]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[52]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[1]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[47]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[53]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[2]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[48]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[54]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[3]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[49]));
  LUT6 #(
    .INIT(64'h0000FF1D0000E200)) 
    \q[55]_i_1__0 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[4]),
        .I4(\q_reg[104] ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[56]_i_1__0 
       (.I0(Q[5]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[57]_i_1__0 
       (.I0(Q[6]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[52]));
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[58]_i_1__0 
       (.I0(Q[7]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[53]));
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[59]_i_1__0 
       (.I0(Q[8]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[54]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[5]_i_1__1 
       (.I0(opD[5]),
        .I1(FlushE),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[60]_i_1__0 
       (.I0(Q[9]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[55]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[61]_i_1__0 
       (.I0(\q_reg_n_0_[89] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[56]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[62]_i_1__0 
       (.I0(\q_reg_n_0_[90] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[63]_i_1__0 
       (.I0(\q_reg_n_0_[91] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[58]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[64]_i_1__0 
       (.I0(\q_reg_n_0_[92] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[65]_i_1__0 
       (.I0(\q_reg_n_0_[93] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[60]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0000CACC)) 
    \q[66]_i_1__0 
       (.I0(funct7b5D),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(\q_reg[104] ),
        .O(D[61]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[67]_i_1__0 
       (.I0(\q_reg_n_0_[95] ),
        .I1(\q_reg[104] ),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[68]_i_1__0 
       (.I0(RdD[0]),
        .I1(FlushE),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[69]_i_1__0 
       (.I0(RdD[1]),
        .I1(FlushE),
        .O(D[64]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(FlushE),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_1__2 
       (.I0(opD[6]),
        .I1(FlushE),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[70]_i_1__0 
       (.I0(RdD[2]),
        .I1(FlushE),
        .O(D[65]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[71]_i_1__0 
       (.I0(RdD[3]),
        .I1(FlushE),
        .O(D[66]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[72]_i_1__0 
       (.I0(RdD[4]),
        .I1(FlushE),
        .O(D[67]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[73]_i_1__0 
       (.I0(Q[5]),
        .I1(FlushE),
        .O(D[68]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[74]_i_1__0 
       (.I0(Q[6]),
        .I1(FlushE),
        .O(D[69]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[75]_i_1__0 
       (.I0(Q[7]),
        .I1(FlushE),
        .O(D[70]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[76]_i_1__0 
       (.I0(Q[8]),
        .I1(FlushE),
        .O(D[71]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[77]_i_1__0 
       (.I0(Q[9]),
        .I1(FlushE),
        .O(D[72]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[78]_i_1__0 
       (.I0(Q[0]),
        .I1(FlushE),
        .O(D[73]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[79]_i_1__0 
       (.I0(Q[1]),
        .I1(FlushE),
        .O(D[74]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__1 
       (.I0(\q_reg_n_0_[3] ),
        .I1(FlushE),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_1__2 
       (.I0(funct3D[0]),
        .I1(\q_reg[104] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[80]_i_1__0 
       (.I0(Q[2]),
        .I1(FlushE),
        .O(D[75]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[81]_i_1__0 
       (.I0(Q[3]),
        .I1(FlushE),
        .O(D[76]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[82]_i_1__0 
       (.I0(Q[4]),
        .I1(FlushE),
        .O(D[77]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[83]_i_1__0 
       (.I0(PCD[0]),
        .I1(\q_reg[104] ),
        .O(D[78]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[84]_i_1__0 
       (.I0(PCD[1]),
        .I1(\q_reg[104] ),
        .O(D[79]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[85]_i_1__0 
       (.I0(PCD[2]),
        .I1(\q_reg[104] ),
        .O(D[80]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[86]_i_1__0 
       (.I0(PCD[3]),
        .I1(\q_reg[104] ),
        .O(D[81]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[87]_i_1__0 
       (.I0(PCD[4]),
        .I1(\q_reg[104] ),
        .O(D[82]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[88]_i_1__0 
       (.I0(PCD[5]),
        .I1(\q_reg[104] ),
        .O(D[83]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[89]_i_1__0 
       (.I0(PCD[6]),
        .I1(\q_reg[104] ),
        .O(D[84]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__1 
       (.I0(\q_reg_n_0_[4] ),
        .I1(FlushE),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_1__2 
       (.I0(funct3D[1]),
        .I1(\q_reg[104] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[90]_i_1__0 
       (.I0(PCD[7]),
        .I1(\q_reg[104] ),
        .O(D[85]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[91]_i_1__0 
       (.I0(PCD[8]),
        .I1(\q_reg[104] ),
        .O(D[86]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[92]_i_1__0 
       (.I0(PCD[9]),
        .I1(\q_reg[104] ),
        .O(D[87]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[93]_i_1__0 
       (.I0(PCD[10]),
        .I1(\q_reg[104] ),
        .O(D[88]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[94]_i_1__0 
       (.I0(PCD[11]),
        .I1(\q_reg[104] ),
        .O(D[89]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[95]_i_1__0 
       (.I0(PCD[12]),
        .I1(\q_reg[104] ),
        .O(D[90]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[96]_i_1 
       (.I0(PCD[13]),
        .I1(\q_reg[104] ),
        .O(D[91]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[97]_i_1 
       (.I0(PCD[14]),
        .I1(\q_reg[104] ),
        .O(D[92]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[98]_i_1 
       (.I0(PCD[15]),
        .I1(\q_reg[104] ),
        .O(D[93]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[99]_i_1 
       (.I0(PCD[16]),
        .I1(\q_reg[104] ),
        .O(D[94]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__1 
       (.I0(\q_reg_n_0_[5] ),
        .I1(FlushE),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_1__2 
       (.I0(funct3D[2]),
        .I1(\q_reg[104] ),
        .O(p_0_in[9]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [8]),
        .Q(\q_reg_n_0_[10] ));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [9]),
        .Q(\q_reg_n_0_[11] ));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [10]),
        .Q(\q_reg_n_0_[12] ));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [11]),
        .Q(\q_reg_n_0_[13] ));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [12]),
        .Q(\q_reg_n_0_[14] ));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [13]),
        .Q(\q_reg_n_0_[15] ));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [14]),
        .Q(\q_reg_n_0_[16] ));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [15]),
        .Q(\q_reg_n_0_[17] ));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [16]),
        .Q(\q_reg_n_0_[18] ));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [17]),
        .Q(\q_reg_n_0_[19] ));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [18]),
        .Q(\q_reg_n_0_[20] ));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [19]),
        .Q(\q_reg_n_0_[21] ));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [20]),
        .Q(\q_reg_n_0_[22] ));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [21]),
        .Q(\q_reg_n_0_[23] ));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [22]),
        .Q(\q_reg_n_0_[24] ));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [23]),
        .Q(\q_reg_n_0_[25] ));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [24]),
        .Q(\q_reg_n_0_[26] ));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [25]),
        .Q(\q_reg_n_0_[27] ));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [26]),
        .Q(\q_reg_n_0_[28] ));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [27]),
        .Q(\q_reg_n_0_[29] ));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [0]),
        .Q(\q_reg_n_0_[2] ));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [28]),
        .Q(\q_reg_n_0_[30] ));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [29]),
        .Q(\q_reg_n_0_[31] ));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [30]),
        .Q(PCD[0]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [31]),
        .Q(PCD[1]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [32]),
        .Q(PCD[2]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [33]),
        .Q(PCD[3]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [34]),
        .Q(PCD[4]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [35]),
        .Q(PCD[5]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [36]),
        .Q(PCD[6]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [37]),
        .Q(PCD[7]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [1]),
        .Q(\q_reg_n_0_[3] ));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [38]),
        .Q(PCD[8]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [39]),
        .Q(PCD[9]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [40]),
        .Q(PCD[10]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [41]),
        .Q(PCD[11]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [42]),
        .Q(PCD[12]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [43]),
        .Q(PCD[13]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [44]),
        .Q(PCD[14]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [45]),
        .Q(PCD[15]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [46]),
        .Q(PCD[16]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [47]),
        .Q(PCD[17]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [2]),
        .Q(\q_reg_n_0_[4] ));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [48]),
        .Q(PCD[18]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [49]),
        .Q(PCD[19]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [50]),
        .Q(PCD[20]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [51]),
        .Q(PCD[21]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [52]),
        .Q(PCD[22]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [53]),
        .Q(PCD[23]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [54]),
        .Q(PCD[24]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [55]),
        .Q(PCD[25]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [56]),
        .Q(PCD[26]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [57]),
        .Q(PCD[27]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [3]),
        .Q(\q_reg_n_0_[5] ));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [58]),
        .Q(PCD[28]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [59]),
        .Q(PCD[29]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [60]),
        .Q(PCD[30]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [61]),
        .Q(PCD[31]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [62]),
        .Q(opD[0]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [63]),
        .Q(opD[1]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [64]),
        .Q(opD[2]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [65]),
        .Q(opD[3]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [66]),
        .Q(opD[4]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [67]),
        .Q(opD[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [4]),
        .Q(\q_reg_n_0_[6] ));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [68]),
        .Q(opD[6]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [69]),
        .Q(RdD[0]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [70]),
        .Q(RdD[1]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [71]),
        .Q(RdD[2]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [72]),
        .Q(RdD[3]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [73]),
        .Q(RdD[4]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [74]),
        .Q(funct3D[0]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [75]),
        .Q(funct3D[1]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [76]),
        .Q(funct3D[2]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [77]),
        .Q(Q[0]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [5]),
        .Q(\q_reg_n_0_[7] ));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [78]),
        .Q(Q[1]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [79]),
        .Q(Q[2]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [80]),
        .Q(Q[3]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [81]),
        .Q(Q[4]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [82]),
        .Q(Q[5]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [83]),
        .Q(Q[6]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [84]),
        .Q(Q[7]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [85]),
        .Q(Q[8]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [86]),
        .Q(Q[9]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [87]),
        .Q(\q_reg_n_0_[89] ));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [6]),
        .Q(\q_reg_n_0_[8] ));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [88]),
        .Q(\q_reg_n_0_[90] ));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [89]),
        .Q(\q_reg_n_0_[91] ));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [90]),
        .Q(\q_reg_n_0_[92] ));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [91]),
        .Q(\q_reg_n_0_[93] ));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [92]),
        .Q(funct7b5D));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [93]),
        .Q(\q_reg_n_0_[95] ));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [7]),
        .Q(\q_reg_n_0_[9] ));
endmodule

module design_1_top_0_0_flopr
   (\readDataM[15] ,
    \q_reg[3]_0 ,
    Q,
    \q_reg[2]_0 ,
    ReadDataM,
    \q_reg[83] ,
    \q_reg[84] ,
    \q_reg[85] ,
    \q_reg[86] ,
    \q_reg[87] ,
    \q_reg[88] ,
    \q_reg[89] ,
    \q_reg[90] ,
    \Data_reg[31]_i_2 ,
    D,
    clk,
    reset);
  output [7:0]\readDataM[15] ;
  output \q_reg[3]_0 ;
  output [3:0]Q;
  output \q_reg[2]_0 ;
  input [7:0]ReadDataM;
  input \q_reg[83] ;
  input \q_reg[84] ;
  input \q_reg[85] ;
  input \q_reg[86] ;
  input \q_reg[87] ;
  input \q_reg[88] ;
  input \q_reg[89] ;
  input \q_reg[90] ;
  input [1:0]\Data_reg[31]_i_2 ;
  input [3:0]D;
  input clk;
  input reset;

  wire [3:0]D;
  wire [1:0]\Data_reg[31]_i_2 ;
  wire [3:0]Q;
  wire [7:0]ReadDataM;
  wire clk;
  wire \q_reg[2]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[83] ;
  wire \q_reg[84] ;
  wire \q_reg[85] ;
  wire \q_reg[86] ;
  wire \q_reg[87] ;
  wire \q_reg[88] ;
  wire \q_reg[89] ;
  wire \q_reg[90] ;
  wire [7:0]\readDataM[15] ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[10]_i_1 
       (.I0(ReadDataM[2]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[85] ),
        .O(\readDataM[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[11]_i_1 
       (.I0(ReadDataM[3]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[86] ),
        .O(\readDataM[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[12]_i_1 
       (.I0(ReadDataM[4]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[87] ),
        .O(\readDataM[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[13]_i_1 
       (.I0(ReadDataM[5]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[88] ),
        .O(\readDataM[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[14]_i_1 
       (.I0(ReadDataM[6]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[89] ),
        .O(\readDataM[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[15]_i_1 
       (.I0(ReadDataM[7]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[90] ),
        .O(\readDataM[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \Data_reg[31]_i_3 
       (.I0(\Data_reg[31]_i_2 [1]),
        .I1(Q[3]),
        .I2(\Data_reg[31]_i_2 [0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \Data_reg[7]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\Data_reg[31]_i_2 [0]),
        .I3(Q[3]),
        .O(\q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[8]_i_1 
       (.I0(ReadDataM[0]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[83] ),
        .O(\readDataM[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_reg[9]_i_1 
       (.I0(ReadDataM[1]),
        .I1(\q_reg[3]_0 ),
        .I2(\q_reg[84] ),
        .O(\readDataM[15] [1]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized0
   (RegWriteW,
    Q,
    clk,
    reset);
  output RegWriteW;
  input [0:0]Q;
  input clk;
  input reset;

  wire [0:0]Q;
  wire RegWriteW;
  wire clk;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q),
        .Q(RegWriteW));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized1
   (ForwardAE11_out,
    Q,
    \q_reg[71]_0 ,
    \q_reg[69]_0 ,
    E,
    D,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[2]_2 ,
    \q_reg[2]_3 ,
    \q_reg[2]_4 ,
    \q_reg[2]_5 ,
    \q_reg[2]_6 ,
    \q_reg[2]_7 ,
    jalrTarget_carry_i_9,
    \q_reg[38]_0 ,
    jalrTarget_carry_i_9_0,
    \q_reg[91]_0 ,
    \writeDataM[31] ,
    ReadDataM,
    \q_reg[75]_0 ,
    \q_reg[137]_0 ,
    clk,
    reset);
  output ForwardAE11_out;
  output [103:0]Q;
  output \q_reg[71]_0 ;
  output \q_reg[69]_0 ;
  output [0:0]E;
  output [31:0]D;
  output [0:0]\q_reg[4]_0 ;
  output [23:0]\q_reg[4]_1 ;
  output \q_reg[2]_0 ;
  output \q_reg[2]_1 ;
  output \q_reg[2]_2 ;
  output \q_reg[2]_3 ;
  output \q_reg[2]_4 ;
  output \q_reg[2]_5 ;
  output \q_reg[2]_6 ;
  output \q_reg[2]_7 ;
  input [1:0]jalrTarget_carry_i_9;
  input [74:0]\q_reg[38]_0 ;
  input jalrTarget_carry_i_9_0;
  input \q_reg[91]_0 ;
  input [31:0]\writeDataM[31] ;
  input [31:0]ReadDataM;
  input \q_reg[75]_0 ;
  input [67:0]\q_reg[137]_0 ;
  input clk;
  input reset;

  wire [31:0]D;
  wire \Data_reg[0]_i_2_n_0 ;
  wire \Data_reg[1]_i_2_n_0 ;
  wire \Data_reg[2]_i_2_n_0 ;
  wire \Data_reg[31]_i_4_n_0 ;
  wire \Data_reg[3]_i_2_n_0 ;
  wire \Data_reg[4]_i_2_n_0 ;
  wire \Data_reg[5]_i_2_n_0 ;
  wire \Data_reg[6]_i_2_n_0 ;
  wire \Data_reg[7]_i_2_n_0 ;
  wire [0:0]E;
  wire ForwardAE11_out;
  wire [103:0]Q;
  wire [31:0]ReadDataM;
  wire [31:0]WriteDataM_0;
  wire \WriteDataOut_reg[10]_i_2_n_0 ;
  wire \WriteDataOut_reg[11]_i_2_n_0 ;
  wire \WriteDataOut_reg[12]_i_2_n_0 ;
  wire \WriteDataOut_reg[13]_i_2_n_0 ;
  wire \WriteDataOut_reg[14]_i_2_n_0 ;
  wire \WriteDataOut_reg[15]_i_2_n_0 ;
  wire \WriteDataOut_reg[15]_i_3_n_0 ;
  wire \WriteDataOut_reg[16]_i_2_n_0 ;
  wire \WriteDataOut_reg[17]_i_2_n_0 ;
  wire \WriteDataOut_reg[18]_i_2_n_0 ;
  wire \WriteDataOut_reg[19]_i_2_n_0 ;
  wire \WriteDataOut_reg[20]_i_2_n_0 ;
  wire \WriteDataOut_reg[21]_i_2_n_0 ;
  wire \WriteDataOut_reg[22]_i_2_n_0 ;
  wire \WriteDataOut_reg[23]_i_2_n_0 ;
  wire \WriteDataOut_reg[23]_i_3_n_0 ;
  wire \WriteDataOut_reg[24]_i_2_n_0 ;
  wire \WriteDataOut_reg[25]_i_2_n_0 ;
  wire \WriteDataOut_reg[26]_i_2_n_0 ;
  wire \WriteDataOut_reg[27]_i_2_n_0 ;
  wire \WriteDataOut_reg[28]_i_2_n_0 ;
  wire \WriteDataOut_reg[29]_i_2_n_0 ;
  wire \WriteDataOut_reg[30]_i_2_n_0 ;
  wire \WriteDataOut_reg[31]_i_3_n_0 ;
  wire \WriteDataOut_reg[31]_i_4_n_0 ;
  wire \WriteDataOut_reg[31]_i_5_n_0 ;
  wire \WriteDataOut_reg[7]_i_2_n_0 ;
  wire \WriteDataOut_reg[7]_i_3_n_0 ;
  wire \WriteDataOut_reg[8]_i_2_n_0 ;
  wire \WriteDataOut_reg[9]_i_2_n_0 ;
  wire clk;
  wire [2:0]funct3M;
  wire [1:0]jalrTarget_carry_i_9;
  wire jalrTarget_carry_i_9_0;
  wire [31:0]\load/data0 ;
  wire [67:0]\q_reg[137]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[2]_4 ;
  wire \q_reg[2]_5 ;
  wire \q_reg[2]_6 ;
  wire \q_reg[2]_7 ;
  wire [74:0]\q_reg[38]_0 ;
  wire [0:0]\q_reg[4]_0 ;
  wire [23:0]\q_reg[4]_1 ;
  wire \q_reg[69]_0 ;
  wire \q_reg[71]_0 ;
  wire \q_reg[75]_0 ;
  wire \q_reg[91]_0 ;
  wire reset;
  wire [31:0]\writeDataM[31] ;

  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[0]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[0]_i_2_n_0 ),
        .I2(ReadDataM[0]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [0]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[0]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[0]),
        .I2(ReadDataM[16]),
        .I3(funct3M[0]),
        .I4(\load/data0 [0]),
        .O(\Data_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[0]_i_3 
       (.I0(ReadDataM[8]),
        .I1(ReadDataM[0]),
        .I2(ReadDataM[24]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[16]),
        .O(\load/data0 [0]));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[10]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[10]),
        .I4(ReadDataM[26]),
        .I5(Q[73]),
        .O(\q_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[11]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[11]),
        .I4(ReadDataM[27]),
        .I5(Q[73]),
        .O(\q_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[12]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[12]),
        .I4(ReadDataM[28]),
        .I5(Q[73]),
        .O(\q_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[13]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[13]),
        .I4(ReadDataM[29]),
        .I5(Q[73]),
        .O(\q_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[14]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[14]),
        .I4(ReadDataM[30]),
        .I5(Q[73]),
        .O(\q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[15]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[15]),
        .I4(ReadDataM[31]),
        .I5(Q[73]),
        .O(\q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[16]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[16]),
        .O(\q_reg[4]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[17]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[17]),
        .O(\q_reg[4]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[18]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[18]),
        .O(\q_reg[4]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[19]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[19]),
        .O(\q_reg[4]_1 [11]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[1]_i_2_n_0 ),
        .I2(ReadDataM[1]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [1]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[1]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[1]),
        .I2(ReadDataM[17]),
        .I3(funct3M[0]),
        .I4(\load/data0 [1]),
        .O(\Data_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[1]_i_3 
       (.I0(ReadDataM[9]),
        .I1(ReadDataM[1]),
        .I2(ReadDataM[25]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[17]),
        .O(\load/data0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[20]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[20]),
        .O(\q_reg[4]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[21]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[21]),
        .O(\q_reg[4]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[22]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[22]),
        .O(\q_reg[4]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[23]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[23]),
        .O(\q_reg[4]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[24]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[24]),
        .O(\q_reg[4]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[25]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[25]),
        .O(\q_reg[4]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[26]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[26]),
        .O(\q_reg[4]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[27]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[27]),
        .O(\q_reg[4]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[28]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[28]),
        .O(\q_reg[4]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[29]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[29]),
        .O(\q_reg[4]_1 [21]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[2]_i_2_n_0 ),
        .I2(ReadDataM[2]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [2]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[2]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[2]),
        .I2(ReadDataM[18]),
        .I3(funct3M[0]),
        .I4(\load/data0 [2]),
        .O(\Data_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[2]_i_3 
       (.I0(ReadDataM[10]),
        .I1(ReadDataM[2]),
        .I2(ReadDataM[26]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[18]),
        .O(\load/data0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[30]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[30]),
        .O(\q_reg[4]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hDC10)) 
    \Data_reg[31]_i_1 
       (.I0(funct3M[2]),
        .I1(\q_reg[91]_0 ),
        .I2(\Data_reg[31]_i_4_n_0 ),
        .I3(ReadDataM[31]),
        .O(\q_reg[4]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \Data_reg[31]_i_2 
       (.I0(Q[72]),
        .I1(funct3M[0]),
        .I2(\q_reg[91]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hEE22E2E2)) 
    \Data_reg[31]_i_4 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(ReadDataM[15]),
        .I3(ReadDataM[31]),
        .I4(Q[73]),
        .O(\Data_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[31]_i_5 
       (.I0(ReadDataM[15]),
        .I1(ReadDataM[7]),
        .I2(ReadDataM[31]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[23]),
        .O(\load/data0 [31]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[3]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[3]_i_2_n_0 ),
        .I2(ReadDataM[3]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [3]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[3]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[3]),
        .I2(ReadDataM[19]),
        .I3(funct3M[0]),
        .I4(\load/data0 [3]),
        .O(\Data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[3]_i_3 
       (.I0(ReadDataM[11]),
        .I1(ReadDataM[3]),
        .I2(ReadDataM[27]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[19]),
        .O(\load/data0 [3]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[4]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[4]_i_2_n_0 ),
        .I2(ReadDataM[4]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [4]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[4]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[4]),
        .I2(ReadDataM[20]),
        .I3(funct3M[0]),
        .I4(\load/data0 [4]),
        .O(\Data_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[4]_i_3 
       (.I0(ReadDataM[12]),
        .I1(ReadDataM[4]),
        .I2(ReadDataM[28]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[20]),
        .O(\load/data0 [4]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[5]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[5]_i_2_n_0 ),
        .I2(ReadDataM[5]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [5]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[5]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[5]),
        .I2(ReadDataM[21]),
        .I3(funct3M[0]),
        .I4(\load/data0 [5]),
        .O(\Data_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[5]_i_3 
       (.I0(ReadDataM[13]),
        .I1(ReadDataM[5]),
        .I2(ReadDataM[29]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[21]),
        .O(\load/data0 [5]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[6]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[6]_i_2_n_0 ),
        .I2(ReadDataM[6]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [6]));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \Data_reg[6]_i_2 
       (.I0(Q[73]),
        .I1(ReadDataM[6]),
        .I2(ReadDataM[22]),
        .I3(funct3M[0]),
        .I4(\load/data0 [6]),
        .O(\Data_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \Data_reg[6]_i_3 
       (.I0(ReadDataM[14]),
        .I1(ReadDataM[6]),
        .I2(ReadDataM[30]),
        .I3(Q[73]),
        .I4(Q[72]),
        .I5(ReadDataM[22]),
        .O(\load/data0 [6]));
  LUT4 #(
    .INIT(16'hE4F0)) 
    \Data_reg[7]_i_1 
       (.I0(Q[2]),
        .I1(\Data_reg[7]_i_2_n_0 ),
        .I2(ReadDataM[7]),
        .I3(\q_reg[75]_0 ),
        .O(\q_reg[4]_1 [7]));
  LUT5 #(
    .INIT(32'hE2E2EE22)) 
    \Data_reg[7]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(ReadDataM[23]),
        .I3(ReadDataM[7]),
        .I4(Q[73]),
        .O(\Data_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[8]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[8]),
        .I4(ReadDataM[24]),
        .I5(Q[73]),
        .O(\q_reg[2]_7 ));
  LUT6 #(
    .INIT(64'hCECE0202CE02CE02)) 
    \Data_reg[9]_i_2 
       (.I0(\load/data0 [31]),
        .I1(funct3M[0]),
        .I2(funct3M[2]),
        .I3(ReadDataM[9]),
        .I4(ReadDataM[25]),
        .I5(Q[73]),
        .O(\q_reg[2]_6 ));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[0]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [0]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[0]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[10]_i_1 
       (.I0(WriteDataM_0[10]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[10]_i_2_n_0 ),
        .I4(\writeDataM[31] [10]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[10]_i_2 
       (.I0(WriteDataM_0[2]),
        .I1(Q[72]),
        .I2(WriteDataM_0[10]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[11]_i_1 
       (.I0(WriteDataM_0[11]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[11]_i_2_n_0 ),
        .I4(\writeDataM[31] [11]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[11]_i_2 
       (.I0(WriteDataM_0[3]),
        .I1(Q[72]),
        .I2(WriteDataM_0[11]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[12]_i_1 
       (.I0(WriteDataM_0[12]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[12]_i_2_n_0 ),
        .I4(\writeDataM[31] [12]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[12]_i_2 
       (.I0(WriteDataM_0[4]),
        .I1(Q[72]),
        .I2(WriteDataM_0[12]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[13]_i_1 
       (.I0(WriteDataM_0[13]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[13]_i_2_n_0 ),
        .I4(\writeDataM[31] [13]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[13]_i_2 
       (.I0(WriteDataM_0[5]),
        .I1(Q[72]),
        .I2(WriteDataM_0[13]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[14]_i_1 
       (.I0(WriteDataM_0[14]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[14]_i_2_n_0 ),
        .I4(\writeDataM[31] [14]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[14]_i_2 
       (.I0(WriteDataM_0[6]),
        .I1(Q[72]),
        .I2(WriteDataM_0[14]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[15]_i_1 
       (.I0(WriteDataM_0[15]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[15]_i_2_n_0 ),
        .I4(\writeDataM[31] [15]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[15]_i_2 
       (.I0(WriteDataM_0[7]),
        .I1(Q[72]),
        .I2(WriteDataM_0[15]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h3301)) 
    \WriteDataOut_reg[15]_i_3 
       (.I0(Q[72]),
        .I1(Q[2]),
        .I2(funct3M[0]),
        .I3(Q[73]),
        .O(\WriteDataOut_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[16]_i_1 
       (.I0(WriteDataM_0[16]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[16]_i_2_n_0 ),
        .I4(\writeDataM[31] [16]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[16]_i_2 
       (.I0(WriteDataM_0[16]),
        .I1(WriteDataM_0[0]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[17]_i_1 
       (.I0(WriteDataM_0[17]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[17]_i_2_n_0 ),
        .I4(\writeDataM[31] [17]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[17]_i_2 
       (.I0(WriteDataM_0[17]),
        .I1(WriteDataM_0[1]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[18]_i_1 
       (.I0(WriteDataM_0[18]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[18]_i_2_n_0 ),
        .I4(\writeDataM[31] [18]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[18]_i_2 
       (.I0(WriteDataM_0[18]),
        .I1(WriteDataM_0[2]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[19]_i_1 
       (.I0(WriteDataM_0[19]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[19]_i_2_n_0 ),
        .I4(\writeDataM[31] [19]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[19]_i_2 
       (.I0(WriteDataM_0[19]),
        .I1(WriteDataM_0[3]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[1]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [1]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[1]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[20]_i_1 
       (.I0(WriteDataM_0[20]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[20]_i_2_n_0 ),
        .I4(\writeDataM[31] [20]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[20]_i_2 
       (.I0(WriteDataM_0[20]),
        .I1(WriteDataM_0[4]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[21]_i_1 
       (.I0(WriteDataM_0[21]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[21]_i_2_n_0 ),
        .I4(\writeDataM[31] [21]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[21]_i_2 
       (.I0(WriteDataM_0[21]),
        .I1(WriteDataM_0[5]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[22]_i_1 
       (.I0(WriteDataM_0[22]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[22]_i_2_n_0 ),
        .I4(\writeDataM[31] [22]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[22]_i_2 
       (.I0(WriteDataM_0[22]),
        .I1(WriteDataM_0[6]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[23]_i_1 
       (.I0(WriteDataM_0[23]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[23]_i_2_n_0 ),
        .I4(\writeDataM[31] [23]),
        .I5(\WriteDataOut_reg[23]_i_3_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAACCAA0CAA00AA00)) 
    \WriteDataOut_reg[23]_i_2 
       (.I0(WriteDataM_0[23]),
        .I1(WriteDataM_0[7]),
        .I2(Q[72]),
        .I3(Q[2]),
        .I4(funct3M[0]),
        .I5(Q[73]),
        .O(\WriteDataOut_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h0233)) 
    \WriteDataOut_reg[23]_i_3 
       (.I0(Q[72]),
        .I1(Q[2]),
        .I2(funct3M[0]),
        .I3(Q[73]),
        .O(\WriteDataOut_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[24]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[24]),
        .I3(\WriteDataOut_reg[24]_i_2_n_0 ),
        .I4(\writeDataM[31] [24]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[24]_i_2 
       (.I0(WriteDataM_0[0]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[8]),
        .O(\WriteDataOut_reg[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[25]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[25]),
        .I3(\WriteDataOut_reg[25]_i_2_n_0 ),
        .I4(\writeDataM[31] [25]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[25]_i_2 
       (.I0(WriteDataM_0[1]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[9]),
        .O(\WriteDataOut_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[26]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[26]),
        .I3(\WriteDataOut_reg[26]_i_2_n_0 ),
        .I4(\writeDataM[31] [26]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[26]_i_2 
       (.I0(WriteDataM_0[2]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[10]),
        .O(\WriteDataOut_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[27]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[27]),
        .I3(\WriteDataOut_reg[27]_i_2_n_0 ),
        .I4(\writeDataM[31] [27]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[27]_i_2 
       (.I0(WriteDataM_0[3]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[11]),
        .O(\WriteDataOut_reg[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[28]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[28]),
        .I3(\WriteDataOut_reg[28]_i_2_n_0 ),
        .I4(\writeDataM[31] [28]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[28]_i_2 
       (.I0(WriteDataM_0[4]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[12]),
        .O(\WriteDataOut_reg[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[29]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[29]),
        .I3(\WriteDataOut_reg[29]_i_2_n_0 ),
        .I4(\writeDataM[31] [29]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[29]_i_2 
       (.I0(WriteDataM_0[5]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[13]),
        .O(\WriteDataOut_reg[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[2]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [2]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[2]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[30]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[30]),
        .I3(\WriteDataOut_reg[30]_i_2_n_0 ),
        .I4(\writeDataM[31] [30]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000F08000000080)) 
    \WriteDataOut_reg[30]_i_2 
       (.I0(WriteDataM_0[6]),
        .I1(Q[72]),
        .I2(Q[73]),
        .I3(funct3M[0]),
        .I4(Q[2]),
        .I5(WriteDataM_0[14]),
        .O(\WriteDataOut_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3E0F3E0F3E0)) 
    \WriteDataOut_reg[31]_i_1 
       (.I0(Q[2]),
        .I1(\WriteDataOut_reg[31]_i_3_n_0 ),
        .I2(WriteDataM_0[31]),
        .I3(\WriteDataOut_reg[31]_i_4_n_0 ),
        .I4(\writeDataM[31] [31]),
        .I5(\WriteDataOut_reg[31]_i_5_n_0 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \WriteDataOut_reg[31]_i_2 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(Q[2]),
        .I3(funct3M[0]),
        .I4(Q[72]),
        .O(\q_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \WriteDataOut_reg[31]_i_3 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .O(\WriteDataOut_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0008800)) 
    \WriteDataOut_reg[31]_i_4 
       (.I0(WriteDataM_0[7]),
        .I1(Q[72]),
        .I2(WriteDataM_0[15]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h0133)) 
    \WriteDataOut_reg[31]_i_5 
       (.I0(Q[72]),
        .I1(Q[2]),
        .I2(funct3M[0]),
        .I3(Q[73]),
        .O(\WriteDataOut_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[3]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [3]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[3]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[4]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [4]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[4]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[5]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [5]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[5]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[6]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [6]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[6]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF4000FBBB4000)) 
    \WriteDataOut_reg[7]_i_1 
       (.I0(funct3M[2]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(\writeDataM[31] [7]),
        .I3(\WriteDataOut_reg[7]_i_2_n_0 ),
        .I4(WriteDataM_0[7]),
        .I5(\WriteDataOut_reg[7]_i_3_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h3302)) 
    \WriteDataOut_reg[7]_i_2 
       (.I0(Q[72]),
        .I1(Q[2]),
        .I2(funct3M[0]),
        .I3(Q[73]),
        .O(\WriteDataOut_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hCCFD)) 
    \WriteDataOut_reg[7]_i_3 
       (.I0(Q[72]),
        .I1(Q[2]),
        .I2(funct3M[0]),
        .I3(Q[73]),
        .O(\WriteDataOut_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[8]_i_1 
       (.I0(WriteDataM_0[8]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[8]_i_2_n_0 ),
        .I4(\writeDataM[31] [8]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[8]_i_2 
       (.I0(WriteDataM_0[0]),
        .I1(Q[72]),
        .I2(WriteDataM_0[8]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABA8ABA8ABA8A)) 
    \WriteDataOut_reg[9]_i_1 
       (.I0(WriteDataM_0[9]),
        .I1(funct3M[2]),
        .I2(jalrTarget_carry_i_9[0]),
        .I3(\WriteDataOut_reg[9]_i_2_n_0 ),
        .I4(\writeDataM[31] [9]),
        .I5(\WriteDataOut_reg[15]_i_3_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00088)) 
    \WriteDataOut_reg[9]_i_2 
       (.I0(WriteDataM_0[1]),
        .I1(Q[72]),
        .I2(WriteDataM_0[9]),
        .I3(Q[73]),
        .I4(funct3M[0]),
        .I5(Q[2]),
        .O(\WriteDataOut_reg[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    jalrTarget_carry_i_13
       (.I0(jalrTarget_carry_i_9[1]),
        .I1(Q[68]),
        .I2(\q_reg[38]_0 [70]),
        .I3(\q_reg[71]_0 ),
        .I4(jalrTarget_carry_i_9_0),
        .O(ForwardAE11_out));
  LUT4 #(
    .INIT(16'h9009)) 
    jalrTarget_carry_i_16
       (.I0(Q[69]),
        .I1(\q_reg[38]_0 [71]),
        .I2(Q[70]),
        .I3(\q_reg[38]_0 [72]),
        .O(\q_reg[71]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[105]_i_7 
       (.I0(Q[67]),
        .I1(\q_reg[38]_0 [68]),
        .I2(\q_reg[38]_0 [69]),
        .I3(Q[71]),
        .O(\q_reg[69]_0 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [0]),
        .Q(Q[0]));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [30]),
        .Q(WriteDataM_0[26]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [31]),
        .Q(WriteDataM_0[27]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [32]),
        .Q(WriteDataM_0[28]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [33]),
        .Q(WriteDataM_0[29]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [34]),
        .Q(WriteDataM_0[30]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [35]),
        .Q(WriteDataM_0[31]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [36]),
        .Q(Q[72]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [37]),
        .Q(Q[73]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [38]),
        .Q(Q[74]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [39]),
        .Q(Q[75]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [36]),
        .Q(Q[8]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [40]),
        .Q(Q[76]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [41]),
        .Q(Q[77]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [42]),
        .Q(Q[78]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [43]),
        .Q(Q[79]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [44]),
        .Q(Q[80]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [45]),
        .Q(Q[81]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [46]),
        .Q(Q[82]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [47]),
        .Q(Q[83]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [48]),
        .Q(Q[84]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [49]),
        .Q(Q[85]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [37]),
        .Q(Q[9]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [50]),
        .Q(Q[86]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [51]),
        .Q(Q[87]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [52]),
        .Q(Q[88]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [53]),
        .Q(Q[89]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [54]),
        .Q(Q[90]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [55]),
        .Q(Q[91]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [56]),
        .Q(Q[92]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [57]),
        .Q(Q[93]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [58]),
        .Q(Q[94]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [59]),
        .Q(Q[95]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [38]),
        .Q(Q[10]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [60]),
        .Q(Q[96]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [61]),
        .Q(Q[97]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [62]),
        .Q(Q[98]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [63]),
        .Q(Q[99]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [64]),
        .Q(Q[100]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [65]),
        .Q(Q[101]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [66]),
        .Q(Q[102]));
  FDCE \q_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [67]),
        .Q(Q[103]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [39]),
        .Q(Q[11]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [40]),
        .Q(Q[12]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [41]),
        .Q(Q[13]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [42]),
        .Q(Q[14]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [43]),
        .Q(Q[15]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [44]),
        .Q(Q[16]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [45]),
        .Q(Q[17]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [0]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [46]),
        .Q(Q[18]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [47]),
        .Q(Q[19]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [48]),
        .Q(Q[20]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [49]),
        .Q(Q[21]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [50]),
        .Q(Q[22]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [51]),
        .Q(Q[23]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [52]),
        .Q(Q[24]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [53]),
        .Q(Q[25]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [54]),
        .Q(Q[26]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [55]),
        .Q(Q[27]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [1]),
        .Q(funct3M[0]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [56]),
        .Q(Q[28]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [57]),
        .Q(Q[29]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [58]),
        .Q(Q[30]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [59]),
        .Q(Q[31]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [60]),
        .Q(Q[32]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [61]),
        .Q(Q[33]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [62]),
        .Q(Q[34]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [73]),
        .Q(Q[35]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [74]),
        .Q(Q[36]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [1]),
        .Q(Q[37]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [2]),
        .Q(Q[2]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [2]),
        .Q(Q[38]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [3]),
        .Q(Q[39]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [4]),
        .Q(Q[40]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [5]),
        .Q(Q[41]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [6]),
        .Q(Q[42]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [7]),
        .Q(Q[43]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [8]),
        .Q(Q[44]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [9]),
        .Q(Q[45]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [10]),
        .Q(Q[46]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [11]),
        .Q(Q[47]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [3]),
        .Q(funct3M[2]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [12]),
        .Q(Q[48]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [13]),
        .Q(Q[49]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [14]),
        .Q(Q[50]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [15]),
        .Q(Q[51]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [16]),
        .Q(Q[52]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [17]),
        .Q(Q[53]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [18]),
        .Q(Q[54]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [19]),
        .Q(Q[55]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [20]),
        .Q(Q[56]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [21]),
        .Q(Q[57]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [31]),
        .Q(Q[3]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [22]),
        .Q(Q[58]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [23]),
        .Q(Q[59]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [24]),
        .Q(Q[60]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [25]),
        .Q(Q[61]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [26]),
        .Q(Q[62]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [27]),
        .Q(Q[63]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [28]),
        .Q(Q[64]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [29]),
        .Q(Q[65]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [30]),
        .Q(Q[66]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [63]),
        .Q(Q[67]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [32]),
        .Q(Q[4]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [64]),
        .Q(Q[68]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [65]),
        .Q(Q[69]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [66]),
        .Q(Q[70]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [67]),
        .Q(Q[71]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [4]),
        .Q(WriteDataM_0[0]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [5]),
        .Q(WriteDataM_0[1]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [6]),
        .Q(WriteDataM_0[2]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [7]),
        .Q(WriteDataM_0[3]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [8]),
        .Q(WriteDataM_0[4]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [9]),
        .Q(WriteDataM_0[5]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [33]),
        .Q(Q[5]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [10]),
        .Q(WriteDataM_0[6]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [11]),
        .Q(WriteDataM_0[7]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [12]),
        .Q(WriteDataM_0[8]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [13]),
        .Q(WriteDataM_0[9]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [14]),
        .Q(WriteDataM_0[10]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [15]),
        .Q(WriteDataM_0[11]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [16]),
        .Q(WriteDataM_0[12]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [17]),
        .Q(WriteDataM_0[13]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [18]),
        .Q(WriteDataM_0[14]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [19]),
        .Q(WriteDataM_0[15]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [34]),
        .Q(Q[6]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [20]),
        .Q(WriteDataM_0[16]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [21]),
        .Q(WriteDataM_0[17]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [22]),
        .Q(WriteDataM_0[18]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [23]),
        .Q(WriteDataM_0[19]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [24]),
        .Q(WriteDataM_0[20]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [25]),
        .Q(WriteDataM_0[21]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [26]),
        .Q(WriteDataM_0[22]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [27]),
        .Q(WriteDataM_0[23]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [28]),
        .Q(WriteDataM_0[24]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[137]_0 [29]),
        .Q(WriteDataM_0[25]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[38]_0 [35]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized2
   (ResultW,
    \q_reg[74]_0 ,
    Q,
    \q_reg[72]_0 ,
    \q_reg[70]_0 ,
    jalrTarget_carry_i_9,
    D,
    clk,
    reset);
  output [31:0]ResultW;
  output \q_reg[74]_0 ;
  output [4:0]Q;
  output \q_reg[72]_0 ;
  output \q_reg[70]_0 ;
  input [5:0]jalrTarget_carry_i_9;
  input [134:0]D;
  input clk;
  input reset;

  wire [31:0]ALUResultW;
  wire [134:0]D;
  wire [31:0]DataW;
  wire [31:0]ImmExtW;
  wire [31:0]PCPlus4W;
  wire [4:0]Q;
  wire [31:0]ResultW;
  wire clk;
  wire [5:0]jalrTarget_carry_i_9;
  wire \q_reg[70]_0 ;
  wire \q_reg[72]_0 ;
  wire \q_reg[74]_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire reset;

  LUT5 #(
    .INIT(32'h90090000)) 
    jalrTarget_carry_i_12
       (.I0(Q[4]),
        .I1(jalrTarget_carry_i_9[5]),
        .I2(Q[0]),
        .I3(jalrTarget_carry_i_9[2]),
        .I4(\q_reg[72]_0 ),
        .O(\q_reg[74]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    jalrTarget_carry_i_17
       (.I0(Q[2]),
        .I1(jalrTarget_carry_i_9[3]),
        .I2(Q[3]),
        .I3(jalrTarget_carry_i_9[4]),
        .O(\q_reg[72]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[78]_i_5 
       (.I0(Q[0]),
        .I1(jalrTarget_carry_i_9[0]),
        .I2(jalrTarget_carry_i_9[1]),
        .I3(Q[4]),
        .O(\q_reg[70]_0 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(\q_reg_n_0_[0] ));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[96]),
        .Q(DataW[25]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[97]),
        .Q(DataW[26]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[98]),
        .Q(DataW[27]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[99]),
        .Q(DataW[28]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[100]),
        .Q(DataW[29]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[101]),
        .Q(DataW[30]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[102]),
        .Q(DataW[31]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[103]),
        .Q(ALUResultW[0]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[104]),
        .Q(ALUResultW[1]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[105]),
        .Q(ALUResultW[2]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(ImmExtW[4]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[106]),
        .Q(ALUResultW[3]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[107]),
        .Q(ALUResultW[4]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[108]),
        .Q(ALUResultW[5]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[109]),
        .Q(ALUResultW[6]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[110]),
        .Q(ALUResultW[7]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[111]),
        .Q(ALUResultW[8]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[112]),
        .Q(ALUResultW[9]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[113]),
        .Q(ALUResultW[10]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[114]),
        .Q(ALUResultW[11]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[115]),
        .Q(ALUResultW[12]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(ImmExtW[5]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[116]),
        .Q(ALUResultW[13]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[117]),
        .Q(ALUResultW[14]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[118]),
        .Q(ALUResultW[15]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[119]),
        .Q(ALUResultW[16]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[120]),
        .Q(ALUResultW[17]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[121]),
        .Q(ALUResultW[18]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[122]),
        .Q(ALUResultW[19]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[123]),
        .Q(ALUResultW[20]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[124]),
        .Q(ALUResultW[21]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[125]),
        .Q(ALUResultW[22]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(ImmExtW[6]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[126]),
        .Q(ALUResultW[23]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[127]),
        .Q(ALUResultW[24]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[128]),
        .Q(ALUResultW[25]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[129]),
        .Q(ALUResultW[26]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[130]),
        .Q(ALUResultW[27]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[131]),
        .Q(ALUResultW[28]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[132]),
        .Q(ALUResultW[29]));
  FDCE \q_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[133]),
        .Q(ALUResultW[30]));
  FDCE \q_reg[138] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[134]),
        .Q(ALUResultW[31]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(ImmExtW[7]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(ImmExtW[8]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(ImmExtW[9]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(ImmExtW[10]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(ImmExtW[11]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(ImmExtW[12]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(ImmExtW[13]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(\q_reg_n_0_[1] ));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(ImmExtW[14]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(ImmExtW[15]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(ImmExtW[16]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(ImmExtW[17]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(ImmExtW[18]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(ImmExtW[19]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(ImmExtW[20]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(ImmExtW[21]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(ImmExtW[22]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(ImmExtW[23]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(ImmExtW[24]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(ImmExtW[25]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(ImmExtW[26]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(ImmExtW[27]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(ImmExtW[28]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(ImmExtW[29]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(ImmExtW[30]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(ImmExtW[31]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(PCPlus4W[0]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(PCPlus4W[1]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(PCPlus4W[2]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(PCPlus4W[3]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(PCPlus4W[4]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(PCPlus4W[5]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(PCPlus4W[6]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(PCPlus4W[7]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(PCPlus4W[8]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(PCPlus4W[9]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(PCPlus4W[10]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(PCPlus4W[11]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(PCPlus4W[12]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(PCPlus4W[13]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(PCPlus4W[14]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(PCPlus4W[15]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(PCPlus4W[16]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(PCPlus4W[17]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(PCPlus4W[18]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(PCPlus4W[19]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(PCPlus4W[20]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(PCPlus4W[21]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(PCPlus4W[22]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(PCPlus4W[23]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(PCPlus4W[24]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(PCPlus4W[25]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(PCPlus4W[26]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(PCPlus4W[27]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(PCPlus4W[28]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(PCPlus4W[29]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[64]),
        .Q(PCPlus4W[30]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[65]),
        .Q(PCPlus4W[31]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(ImmExtW[0]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[66]),
        .Q(Q[0]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[67]),
        .Q(Q[1]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[68]),
        .Q(Q[2]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[69]),
        .Q(Q[3]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[70]),
        .Q(Q[4]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[71]),
        .Q(DataW[0]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[72]),
        .Q(DataW[1]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[73]),
        .Q(DataW[2]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[74]),
        .Q(DataW[3]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[75]),
        .Q(DataW[4]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(ImmExtW[1]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[76]),
        .Q(DataW[5]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[77]),
        .Q(DataW[6]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[78]),
        .Q(DataW[7]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[79]),
        .Q(DataW[8]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[80]),
        .Q(DataW[9]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[81]),
        .Q(DataW[10]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[82]),
        .Q(DataW[11]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[83]),
        .Q(DataW[12]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[84]),
        .Q(DataW[13]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[85]),
        .Q(DataW[14]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(ImmExtW[2]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[86]),
        .Q(DataW[15]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[87]),
        .Q(DataW[16]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[88]),
        .Q(DataW[17]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[89]),
        .Q(DataW[18]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[90]),
        .Q(DataW[19]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[91]),
        .Q(DataW[20]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[92]),
        .Q(DataW[21]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[93]),
        .Q(DataW[22]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[94]),
        .Q(DataW[23]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[95]),
        .Q(DataW[24]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(ImmExtW[3]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(PCPlus4W[1]),
        .I1(ALUResultW[1]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[1]),
        .I5(DataW[1]),
        .O(ResultW[1]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(PCPlus4W[0]),
        .I1(ALUResultW[0]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[0]),
        .I5(DataW[0]),
        .O(ResultW[0]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(PCPlus4W[3]),
        .I1(ALUResultW[3]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[3]),
        .I5(DataW[3]),
        .O(ResultW[3]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(PCPlus4W[2]),
        .I1(ALUResultW[2]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[2]),
        .I5(DataW[2]),
        .O(ResultW[2]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(PCPlus4W[5]),
        .I1(ALUResultW[5]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[5]),
        .I5(DataW[5]),
        .O(ResultW[5]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(PCPlus4W[4]),
        .I1(ALUResultW[4]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[4]),
        .I5(DataW[4]),
        .O(ResultW[4]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(PCPlus4W[13]),
        .I1(ALUResultW[13]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[13]),
        .I5(DataW[13]),
        .O(ResultW[13]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(PCPlus4W[12]),
        .I1(ALUResultW[12]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[12]),
        .I5(DataW[12]),
        .O(ResultW[12]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(PCPlus4W[15]),
        .I1(ALUResultW[15]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[15]),
        .I5(DataW[15]),
        .O(ResultW[15]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(PCPlus4W[14]),
        .I1(ALUResultW[14]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[14]),
        .I5(DataW[14]),
        .O(ResultW[14]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(PCPlus4W[17]),
        .I1(ALUResultW[17]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[17]),
        .I5(DataW[17]),
        .O(ResultW[17]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(PCPlus4W[16]),
        .I1(ALUResultW[16]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[16]),
        .I5(DataW[16]),
        .O(ResultW[16]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(PCPlus4W[19]),
        .I1(ALUResultW[19]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[19]),
        .I5(DataW[19]),
        .O(ResultW[19]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(PCPlus4W[18]),
        .I1(ALUResultW[18]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[18]),
        .I5(DataW[18]),
        .O(ResultW[18]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(PCPlus4W[21]),
        .I1(ALUResultW[21]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[21]),
        .I5(DataW[21]),
        .O(ResultW[21]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(PCPlus4W[20]),
        .I1(ALUResultW[20]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[20]),
        .I5(DataW[20]),
        .O(ResultW[20]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(PCPlus4W[23]),
        .I1(ALUResultW[23]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[23]),
        .I5(DataW[23]),
        .O(ResultW[23]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(PCPlus4W[22]),
        .I1(ALUResultW[22]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[22]),
        .I5(DataW[22]),
        .O(ResultW[22]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(PCPlus4W[25]),
        .I1(ALUResultW[25]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[25]),
        .I5(DataW[25]),
        .O(ResultW[25]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(PCPlus4W[24]),
        .I1(ALUResultW[24]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[24]),
        .I5(DataW[24]),
        .O(ResultW[24]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(PCPlus4W[27]),
        .I1(ALUResultW[27]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[27]),
        .I5(DataW[27]),
        .O(ResultW[27]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(PCPlus4W[26]),
        .I1(ALUResultW[26]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[26]),
        .I5(DataW[26]),
        .O(ResultW[26]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(PCPlus4W[29]),
        .I1(ALUResultW[29]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[29]),
        .I5(DataW[29]),
        .O(ResultW[29]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(PCPlus4W[28]),
        .I1(ALUResultW[28]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[28]),
        .I5(DataW[28]),
        .O(ResultW[28]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(PCPlus4W[30]),
        .I1(ALUResultW[30]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[30]),
        .I5(DataW[30]),
        .O(ResultW[30]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(PCPlus4W[31]),
        .I1(ALUResultW[31]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[31]),
        .I5(DataW[31]),
        .O(ResultW[31]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(PCPlus4W[7]),
        .I1(ALUResultW[7]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[7]),
        .I5(DataW[7]),
        .O(ResultW[7]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(PCPlus4W[6]),
        .I1(ALUResultW[6]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[6]),
        .I5(DataW[6]),
        .O(ResultW[6]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(PCPlus4W[9]),
        .I1(ALUResultW[9]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[9]),
        .I5(DataW[9]),
        .O(ResultW[9]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(PCPlus4W[8]),
        .I1(ALUResultW[8]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[8]),
        .I5(DataW[8]),
        .O(ResultW[8]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(PCPlus4W[11]),
        .I1(ALUResultW[11]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[11]),
        .I5(DataW[11]),
        .O(ResultW[11]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(PCPlus4W[10]),
        .I1(ALUResultW[10]),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(ImmExtW[10]),
        .I5(DataW[10]),
        .O(ResultW[10]));
endmodule

module design_1_top_0_0_floprc
   (\q_reg[7]_0 ,
    \q_reg[8]_0 ,
    \q_reg[9]_0 ,
    D,
    \q_reg[15]_0 ,
    FlushE,
    \q_reg[12]_0 ,
    ovfE,
    \q_reg[11]_0 ,
    \q_reg[11]_1 ,
    Q,
    \q_reg[11]_2 ,
    \q_reg[12]_1 ,
    PCSrc1__6,
    \q_reg[16]_0 ,
    \q_reg[11]_3 ,
    p_0_in,
    clk,
    reset,
    \q_reg[2]_0 ,
    InstrF,
    \q_reg[104] ,
    \q_reg[136] ,
    \q_reg[136]_0 ,
    \q_reg[137] ,
    \q_reg[137]_0 ,
    \q_reg[128] ,
    \q_reg[128]_0 ,
    \q_reg[129] ,
    \q_reg[129]_0 ,
    \q_reg[130] ,
    \q_reg[130]_0 ,
    \q_reg[131] ,
    \q_reg[131]_0 ,
    \q_reg[132] ,
    \q_reg[132]_0 ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    \q_reg[134] ,
    \q_reg[134]_0 ,
    \q_reg[135] ,
    \q_reg[135]_0 ,
    \q_reg[120] ,
    \q_reg[120]_0 ,
    \q_reg[120]_1 ,
    \q_reg[121] ,
    \q_reg[121]_0 ,
    \q_reg[121]_1 ,
    \q_reg[122] ,
    \q_reg[122]_0 ,
    \q_reg[123] ,
    \q_reg[123]_0 ,
    \q_reg[124] ,
    \q_reg[124]_0 ,
    \q_reg[125] ,
    \q_reg[125]_0 ,
    \q_reg[126] ,
    \q_reg[126]_0 ,
    \q_reg[127] ,
    \q_reg[127]_0 ,
    \q_reg[107] ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    \q_reg[108] ,
    \q_reg[108]_0 ,
    \q_reg[108]_1 ,
    \q_reg[109] ,
    \q_reg[109]_0 ,
    \q_reg[109]_1 ,
    \q_reg[110] ,
    \q_reg[110]_0 ,
    \q_reg[111] ,
    \q_reg[110]_1 ,
    \q_reg[111]_0 ,
    \q_reg[111]_1 ,
    \q_reg[112] ,
    \q_reg[112]_0 ,
    \q_reg[112]_1 ,
    \q_reg[113] ,
    \q_reg[113]_0 ,
    \q_reg[113]_1 ,
    \q_reg[114] ,
    \q_reg[114]_0 ,
    \q_reg[114]_1 ,
    \q_reg[115] ,
    \q_reg[115]_0 ,
    \q_reg[115]_1 ,
    \q_reg[116] ,
    \q_reg[116]_0 ,
    \q_reg[116]_1 ,
    \q_reg[117] ,
    \q_reg[117]_0 ,
    \q_reg[117]_1 ,
    \q_reg[118] ,
    \q_reg[118]_0 ,
    \q_reg[118]_1 ,
    \q_reg[119] ,
    \q_reg[119]_0 ,
    \q_reg[119]_1 ,
    \q_reg[113]_2 ,
    SrcAE,
    SrcBE__0,
    \q_reg[135]_1 ,
    \q_reg[123]_1 ,
    \q_reg[122]_1 ,
    \q_reg[124]_1 ,
    \q_reg[125]_1 ,
    \q_reg[126]_1 ,
    \q_reg[127]_1 ,
    \q_reg[128]_1 ,
    \q_reg[129]_1 ,
    \q_reg[130]_1 ,
    \q_reg[131]_1 ,
    \q_reg[132]_1 ,
    \q_reg[133]_1 ,
    \q_reg[134]_1 ,
    \q_reg[135]_2 ,
    O,
    condinvb__0,
    WriteDataE,
    \q[107]_i_2 ,
    CO,
    \q[31]_i_12_0 ,
    SrcBE,
    \q_reg[106] ,
    \q_reg[106]_0 ,
    \q_reg[106]_1 );
  output \q_reg[7]_0 ;
  output \q_reg[8]_0 ;
  output \q_reg[9]_0 ;
  output [32:0]D;
  output \q_reg[15]_0 ;
  output FlushE;
  output [32:0]\q_reg[12]_0 ;
  output ovfE;
  output \q_reg[11]_0 ;
  output \q_reg[11]_1 ;
  output [7:0]Q;
  output \q_reg[11]_2 ;
  output \q_reg[12]_1 ;
  output PCSrc1__6;
  output \q_reg[16]_0 ;
  output [0:0]\q_reg[11]_3 ;
  input [20:0]p_0_in;
  input clk;
  input reset;
  input [0:0]\q_reg[2]_0 ;
  input [31:0]InstrF;
  input \q_reg[104] ;
  input \q_reg[136] ;
  input \q_reg[136]_0 ;
  input \q_reg[137] ;
  input \q_reg[137]_0 ;
  input \q_reg[128] ;
  input \q_reg[128]_0 ;
  input \q_reg[129] ;
  input \q_reg[129]_0 ;
  input \q_reg[130] ;
  input \q_reg[130]_0 ;
  input \q_reg[131] ;
  input \q_reg[131]_0 ;
  input \q_reg[132] ;
  input \q_reg[132]_0 ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input \q_reg[134] ;
  input \q_reg[134]_0 ;
  input \q_reg[135] ;
  input \q_reg[135]_0 ;
  input \q_reg[120] ;
  input \q_reg[120]_0 ;
  input \q_reg[120]_1 ;
  input \q_reg[121] ;
  input \q_reg[121]_0 ;
  input \q_reg[121]_1 ;
  input \q_reg[122] ;
  input \q_reg[122]_0 ;
  input \q_reg[123] ;
  input \q_reg[123]_0 ;
  input \q_reg[124] ;
  input \q_reg[124]_0 ;
  input \q_reg[125] ;
  input \q_reg[125]_0 ;
  input \q_reg[126] ;
  input \q_reg[126]_0 ;
  input \q_reg[127] ;
  input \q_reg[127]_0 ;
  input \q_reg[107] ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input \q_reg[108] ;
  input \q_reg[108]_0 ;
  input \q_reg[108]_1 ;
  input \q_reg[109] ;
  input \q_reg[109]_0 ;
  input \q_reg[109]_1 ;
  input \q_reg[110] ;
  input \q_reg[110]_0 ;
  input \q_reg[111] ;
  input \q_reg[110]_1 ;
  input \q_reg[111]_0 ;
  input \q_reg[111]_1 ;
  input \q_reg[112] ;
  input \q_reg[112]_0 ;
  input \q_reg[112]_1 ;
  input \q_reg[113] ;
  input \q_reg[113]_0 ;
  input \q_reg[113]_1 ;
  input \q_reg[114] ;
  input \q_reg[114]_0 ;
  input \q_reg[114]_1 ;
  input \q_reg[115] ;
  input \q_reg[115]_0 ;
  input \q_reg[115]_1 ;
  input \q_reg[116] ;
  input \q_reg[116]_0 ;
  input \q_reg[116]_1 ;
  input \q_reg[117] ;
  input \q_reg[117]_0 ;
  input \q_reg[117]_1 ;
  input \q_reg[118] ;
  input \q_reg[118]_0 ;
  input \q_reg[118]_1 ;
  input \q_reg[119] ;
  input \q_reg[119]_0 ;
  input \q_reg[119]_1 ;
  input \q_reg[113]_2 ;
  input [30:0]SrcAE;
  input [30:0]SrcBE__0;
  input \q_reg[135]_1 ;
  input \q_reg[123]_1 ;
  input \q_reg[122]_1 ;
  input \q_reg[124]_1 ;
  input \q_reg[125]_1 ;
  input \q_reg[126]_1 ;
  input \q_reg[127]_1 ;
  input \q_reg[128]_1 ;
  input \q_reg[129]_1 ;
  input \q_reg[130]_1 ;
  input \q_reg[131]_1 ;
  input \q_reg[132]_1 ;
  input \q_reg[133]_1 ;
  input \q_reg[134]_1 ;
  input \q_reg[135]_2 ;
  input [0:0]O;
  input [0:0]condinvb__0;
  input [0:0]WriteDataE;
  input [0:0]\q[107]_i_2 ;
  input [0:0]CO;
  input [0:0]\q[31]_i_12_0 ;
  input [0:0]SrcBE;
  input \q_reg[106] ;
  input \q_reg[106]_0 ;
  input \q_reg[106]_1 ;

  wire BranchCondition__9;
  wire [0:0]CO;
  wire [32:0]D;
  wire FlushE;
  wire [31:0]InstrF;
  wire JumpE;
  wire [0:0]O;
  wire PCSrc1__6;
  wire [7:0]Q;
  wire [30:0]SrcAE;
  wire [0:0]SrcBE;
  wire [30:0]SrcBE__0;
  wire [0:0]WriteDataE;
  wire ZeroE;
  wire clk;
  wire [0:0]condinvb__0;
  wire ovfE;
  wire [20:0]p_0_in;
  wire [6:0]p_0_in_0;
  wire \q[106]_i_5_n_0 ;
  wire [0:0]\q[107]_i_2 ;
  wire \q[107]_i_4_n_0 ;
  wire \q[108]_i_4_n_0 ;
  wire \q[109]_i_4_n_0 ;
  wire \q[110]_i_2_n_0 ;
  wire \q[110]_i_5_n_0 ;
  wire \q[110]_i_7_n_0 ;
  wire \q[111]_i_2_n_0 ;
  wire \q[111]_i_5_n_0 ;
  wire \q[111]_i_7_n_0 ;
  wire \q[112]_i_2_n_0 ;
  wire \q[112]_i_5_n_0 ;
  wire \q[112]_i_7_n_0 ;
  wire \q[113]_i_2_n_0 ;
  wire \q[113]_i_5_n_0 ;
  wire \q[113]_i_7_n_0 ;
  wire \q[114]_i_4_n_0 ;
  wire \q[115]_i_4_n_0 ;
  wire \q[116]_i_4_n_0 ;
  wire \q[117]_i_4_n_0 ;
  wire \q[118]_i_4_n_0 ;
  wire \q[119]_i_4_n_0 ;
  wire \q[120]_i_4_n_0 ;
  wire \q[121]_i_4_n_0 ;
  wire \q[122]_i_2_n_0 ;
  wire \q[122]_i_5_n_0 ;
  wire \q[122]_i_7_n_0 ;
  wire \q[123]_i_2_n_0 ;
  wire \q[123]_i_5_n_0 ;
  wire \q[123]_i_7_n_0 ;
  wire \q[124]_i_2_n_0 ;
  wire \q[124]_i_5_n_0 ;
  wire \q[124]_i_7_n_0 ;
  wire \q[125]_i_2_n_0 ;
  wire \q[125]_i_5_n_0 ;
  wire \q[125]_i_7_n_0 ;
  wire \q[126]_i_2_n_0 ;
  wire \q[126]_i_5_n_0 ;
  wire \q[126]_i_7_n_0 ;
  wire \q[127]_i_2_n_0 ;
  wire \q[127]_i_5_n_0 ;
  wire \q[127]_i_7_n_0 ;
  wire \q[128]_i_2_n_0 ;
  wire \q[128]_i_5_n_0 ;
  wire \q[128]_i_7_n_0 ;
  wire \q[129]_i_2_n_0 ;
  wire \q[129]_i_5_n_0 ;
  wire \q[129]_i_7_n_0 ;
  wire \q[130]_i_2_n_0 ;
  wire \q[130]_i_5_n_0 ;
  wire \q[130]_i_7_n_0 ;
  wire \q[131]_i_2_n_0 ;
  wire \q[131]_i_5_n_0 ;
  wire \q[131]_i_7_n_0 ;
  wire \q[132]_i_2_n_0 ;
  wire \q[132]_i_5_n_0 ;
  wire \q[132]_i_7_n_0 ;
  wire \q[133]_i_2_n_0 ;
  wire \q[133]_i_5_n_0 ;
  wire \q[133]_i_7_n_0 ;
  wire \q[134]_i_2_n_0 ;
  wire \q[134]_i_5_n_0 ;
  wire \q[134]_i_7_n_0 ;
  wire \q[135]_i_2_n_0 ;
  wire \q[135]_i_5_n_0 ;
  wire \q[135]_i_7_n_0 ;
  wire \q[136]_i_2_n_0 ;
  wire \q[136]_i_5_n_0 ;
  wire \q[136]_i_9_n_0 ;
  wire \q[137]_i_2_n_0 ;
  wire \q[137]_i_3_n_0 ;
  wire \q[137]_i_6_n_0 ;
  wire \q[137]_i_7_n_0 ;
  wire \q[178]_i_5_n_0 ;
  wire \q[178]_i_6_n_0 ;
  wire \q[31]_i_10_n_0 ;
  wire [0:0]\q[31]_i_12_0 ;
  wire \q[31]_i_12_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_19_n_0 ;
  wire \q[31]_i_20_n_0 ;
  wire \q[31]_i_21_n_0 ;
  wire \q[31]_i_22_n_0 ;
  wire \q[31]_i_9_n_0 ;
  wire \q_reg[104] ;
  wire \q_reg[106] ;
  wire \q_reg[106]_0 ;
  wire \q_reg[106]_1 ;
  wire \q_reg[107] ;
  wire \q_reg[107]_0 ;
  wire \q_reg[107]_1 ;
  wire \q_reg[108] ;
  wire \q_reg[108]_0 ;
  wire \q_reg[108]_1 ;
  wire \q_reg[109] ;
  wire \q_reg[109]_0 ;
  wire \q_reg[109]_1 ;
  wire \q_reg[110] ;
  wire \q_reg[110]_0 ;
  wire \q_reg[110]_1 ;
  wire \q_reg[111] ;
  wire \q_reg[111]_0 ;
  wire \q_reg[111]_1 ;
  wire \q_reg[112] ;
  wire \q_reg[112]_0 ;
  wire \q_reg[112]_1 ;
  wire \q_reg[113] ;
  wire \q_reg[113]_0 ;
  wire \q_reg[113]_1 ;
  wire \q_reg[113]_2 ;
  wire \q_reg[114] ;
  wire \q_reg[114]_0 ;
  wire \q_reg[114]_1 ;
  wire \q_reg[115] ;
  wire \q_reg[115]_0 ;
  wire \q_reg[115]_1 ;
  wire \q_reg[116] ;
  wire \q_reg[116]_0 ;
  wire \q_reg[116]_1 ;
  wire \q_reg[117] ;
  wire \q_reg[117]_0 ;
  wire \q_reg[117]_1 ;
  wire \q_reg[118] ;
  wire \q_reg[118]_0 ;
  wire \q_reg[118]_1 ;
  wire \q_reg[119] ;
  wire \q_reg[119]_0 ;
  wire \q_reg[119]_1 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire \q_reg[11]_2 ;
  wire [0:0]\q_reg[11]_3 ;
  wire \q_reg[120] ;
  wire \q_reg[120]_0 ;
  wire \q_reg[120]_1 ;
  wire \q_reg[121] ;
  wire \q_reg[121]_0 ;
  wire \q_reg[121]_1 ;
  wire \q_reg[122] ;
  wire \q_reg[122]_0 ;
  wire \q_reg[122]_1 ;
  wire \q_reg[123] ;
  wire \q_reg[123]_0 ;
  wire \q_reg[123]_1 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire \q_reg[124]_1 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[125]_1 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[126]_1 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[127]_1 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire \q_reg[128]_1 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[129]_1 ;
  wire [32:0]\q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[130]_1 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[131]_1 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire \q_reg[132]_1 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[133]_1 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire \q_reg[134]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire \q_reg[135]_2 ;
  wire \q_reg[136] ;
  wire \q_reg[136]_0 ;
  wire \q_reg[137] ;
  wire \q_reg[137]_0 ;
  wire \q_reg[15]_0 ;
  wire \q_reg[16]_0 ;
  wire [0:0]\q_reg[2]_0 ;
  wire \q_reg[7]_0 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[9]_0 ;
  wire \q_reg_n_0_[15] ;
  wire reset;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F8)) 
    \q[106]_i_1__0 
       (.I0(Q[2]),
        .I1(\q_reg[106] ),
        .I2(\q_reg[106]_0 ),
        .I3(Q[3]),
        .I4(\q_reg[106]_1 ),
        .I5(\q[106]_i_5_n_0 ),
        .O(\q_reg[12]_0 [1]));
  LUT3 #(
    .INIT(8'h80)) 
    \q[106]_i_5 
       (.I0(Q[0]),
        .I1(CO),
        .I2(Q[3]),
        .O(\q[106]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[106]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\q_reg[12]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[107]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[107] ),
        .I3(\q_reg[107]_0 ),
        .I4(\q[107]_i_4_n_0 ),
        .I5(\q_reg[107]_1 ),
        .O(\q_reg[12]_0 [2]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[107]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[0]),
        .O(\q[107]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \q[107]_i_6 
       (.I0(Q[0]),
        .I1(WriteDataE),
        .I2(\q_reg[12]_0 [0]),
        .I3(\q[107]_i_2 ),
        .O(\q_reg[11]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[108]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[108] ),
        .I3(\q_reg[108]_0 ),
        .I4(\q[108]_i_4_n_0 ),
        .I5(\q_reg[108]_1 ),
        .O(\q_reg[12]_0 [3]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[108]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[1]),
        .O(\q[108]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[109]_i_12 
       (.I0(Q[0]),
        .I1(SrcBE),
        .O(\q_reg[11]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[109]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[109] ),
        .I3(\q_reg[109]_0 ),
        .I4(\q[109]_i_4_n_0 ),
        .I5(\q_reg[109]_1 ),
        .O(\q_reg[12]_0 [4]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[109]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[2]),
        .O(\q[109]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[110]_i_1__0 
       (.I0(\q[110]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[110] ),
        .I3(\q_reg[110]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[110]_i_5_n_0 ),
        .O(\q_reg[12]_0 [5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[110]_i_2 
       (.I0(\q_reg[111] ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[110]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[110]_i_7_n_0 ),
        .O(\q[110]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[110]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcBE__0[3]),
        .I5(SrcAE[3]),
        .O(\q[110]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[110]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[3]),
        .I4(SrcAE[3]),
        .O(\q[110]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[111]_i_1__0 
       (.I0(\q[111]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[111]_0 ),
        .I3(\q_reg[111]_1 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[111]_i_5_n_0 ),
        .O(\q_reg[12]_0 [6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[111]_i_2 
       (.I0(\q_reg[112] ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[111] ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[111]_i_7_n_0 ),
        .O(\q[111]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[111]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[4]),
        .I5(SrcBE__0[4]),
        .O(\q[111]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[111]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[4]),
        .I4(SrcAE[4]),
        .O(\q[111]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[112]_i_1__0 
       (.I0(\q[112]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[112]_0 ),
        .I3(\q_reg[112]_1 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[112]_i_5_n_0 ),
        .O(\q_reg[12]_0 [7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[112]_i_2 
       (.I0(\q_reg[113] ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[112] ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[112]_i_7_n_0 ),
        .O(\q[112]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[112]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[5]),
        .I5(SrcBE__0[5]),
        .O(\q[112]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[112]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[5]),
        .I4(SrcAE[5]),
        .O(\q[112]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[113]_i_1__0 
       (.I0(\q[113]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[113]_0 ),
        .I3(\q_reg[113]_1 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[113]_i_5_n_0 ),
        .O(\q_reg[12]_0 [8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[113]_i_2 
       (.I0(\q_reg[113]_2 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[113] ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[113]_i_7_n_0 ),
        .O(\q[113]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[113]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[6]),
        .I5(SrcBE__0[6]),
        .O(\q[113]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[113]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[6]),
        .I4(SrcAE[6]),
        .O(\q[113]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[114]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[114] ),
        .I3(\q_reg[114]_0 ),
        .I4(\q[114]_i_4_n_0 ),
        .I5(\q_reg[114]_1 ),
        .O(\q_reg[12]_0 [9]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[114]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[7]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[7]),
        .O(\q[114]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[115]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[115] ),
        .I3(\q_reg[115]_0 ),
        .I4(\q[115]_i_4_n_0 ),
        .I5(\q_reg[115]_1 ),
        .O(\q_reg[12]_0 [10]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[115]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[8]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[8]),
        .O(\q[115]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[116]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[116] ),
        .I3(\q_reg[116]_0 ),
        .I4(\q[116]_i_4_n_0 ),
        .I5(\q_reg[116]_1 ),
        .O(\q_reg[12]_0 [11]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[116]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[9]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[9]),
        .O(\q[116]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[117]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[117] ),
        .I3(\q_reg[117]_0 ),
        .I4(\q[117]_i_4_n_0 ),
        .I5(\q_reg[117]_1 ),
        .O(\q_reg[12]_0 [12]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[117]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[10]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[10]),
        .O(\q[117]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[118]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[118] ),
        .I3(\q_reg[118]_0 ),
        .I4(\q[118]_i_4_n_0 ),
        .I5(\q_reg[118]_1 ),
        .O(\q_reg[12]_0 [13]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[118]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[11]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[11]),
        .O(\q[118]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[119]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[119] ),
        .I3(\q_reg[119]_0 ),
        .I4(\q[119]_i_4_n_0 ),
        .I5(\q_reg[119]_1 ),
        .O(\q_reg[12]_0 [14]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[119]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[12]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[12]),
        .O(\q[119]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[120]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[120] ),
        .I3(\q_reg[120]_0 ),
        .I4(\q[120]_i_4_n_0 ),
        .I5(\q_reg[120]_1 ),
        .O(\q_reg[12]_0 [15]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[120]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[13]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[13]),
        .O(\q[120]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[121]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[121] ),
        .I3(\q_reg[121]_0 ),
        .I4(\q[121]_i_4_n_0 ),
        .I5(\q_reg[121]_1 ),
        .O(\q_reg[12]_0 [16]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[121]_i_4 
       (.I0(Q[3]),
        .I1(SrcAE[14]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(SrcBE__0[14]),
        .O(\q[121]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[122]_i_1__0 
       (.I0(\q[122]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[122] ),
        .I3(\q_reg[122]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[122]_i_5_n_0 ),
        .O(\q_reg[12]_0 [17]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[122]_i_2 
       (.I0(\q_reg[123]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[122]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[122]_i_7_n_0 ),
        .O(\q[122]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[122]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[15]),
        .I5(SrcBE__0[15]),
        .O(\q[122]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[122]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[15]),
        .I4(SrcAE[15]),
        .O(\q[122]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[123]_i_1__0 
       (.I0(\q[123]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[123] ),
        .I3(\q_reg[123]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[123]_i_5_n_0 ),
        .O(\q_reg[12]_0 [18]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[123]_i_2 
       (.I0(\q_reg[124]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[123]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[123]_i_7_n_0 ),
        .O(\q[123]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[123]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[16]),
        .I5(SrcBE__0[16]),
        .O(\q[123]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[123]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[16]),
        .I4(SrcAE[16]),
        .O(\q[123]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[124]_i_1__0 
       (.I0(\q[124]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[124] ),
        .I3(\q_reg[124]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[124]_i_5_n_0 ),
        .O(\q_reg[12]_0 [19]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[124]_i_2 
       (.I0(\q_reg[125]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[124]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[124]_i_7_n_0 ),
        .O(\q[124]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[124]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[17]),
        .I5(SrcBE__0[17]),
        .O(\q[124]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[124]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[17]),
        .I4(SrcAE[17]),
        .O(\q[124]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[125]_i_1__0 
       (.I0(\q[125]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[125] ),
        .I3(\q_reg[125]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[125]_i_5_n_0 ),
        .O(\q_reg[12]_0 [20]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[125]_i_2 
       (.I0(\q_reg[126]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[125]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[125]_i_7_n_0 ),
        .O(\q[125]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[125]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[18]),
        .I5(SrcBE__0[18]),
        .O(\q[125]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[125]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[18]),
        .I4(SrcAE[18]),
        .O(\q[125]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[126]_i_1__0 
       (.I0(\q[126]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[126] ),
        .I3(\q_reg[126]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[126]_i_5_n_0 ),
        .O(\q_reg[12]_0 [21]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[126]_i_2 
       (.I0(\q_reg[127]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[126]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[126]_i_7_n_0 ),
        .O(\q[126]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[126]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[19]),
        .I5(SrcBE__0[19]),
        .O(\q[126]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[126]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[19]),
        .I4(SrcAE[19]),
        .O(\q[126]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[127]_i_1__0 
       (.I0(\q[127]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[127] ),
        .I3(\q_reg[127]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[127]_i_5_n_0 ),
        .O(\q_reg[12]_0 [22]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[127]_i_2 
       (.I0(\q_reg[128]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[127]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[127]_i_7_n_0 ),
        .O(\q[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[127]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[20]),
        .I5(SrcBE__0[20]),
        .O(\q[127]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[127]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[20]),
        .I4(SrcAE[20]),
        .O(\q[127]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[128]_i_1__0 
       (.I0(\q[128]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[128] ),
        .I3(\q_reg[128]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[128]_i_5_n_0 ),
        .O(\q_reg[12]_0 [23]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[128]_i_2 
       (.I0(\q_reg[129]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[128]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[128]_i_7_n_0 ),
        .O(\q[128]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[128]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[21]),
        .I5(SrcBE__0[21]),
        .O(\q[128]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[128]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[21]),
        .I4(SrcAE[21]),
        .O(\q[128]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[129]_i_1__0 
       (.I0(\q[129]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[129] ),
        .I3(\q_reg[129]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[129]_i_5_n_0 ),
        .O(\q_reg[12]_0 [24]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[129]_i_2 
       (.I0(\q_reg[130]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[129]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[129]_i_7_n_0 ),
        .O(\q[129]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[129]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[22]),
        .I5(SrcBE__0[22]),
        .O(\q[129]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[129]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[22]),
        .I4(SrcAE[22]),
        .O(\q[129]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[130]_i_1__0 
       (.I0(\q[130]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[130] ),
        .I3(\q_reg[130]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[130]_i_5_n_0 ),
        .O(\q_reg[12]_0 [25]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[130]_i_2 
       (.I0(\q_reg[131]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[130]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[130]_i_7_n_0 ),
        .O(\q[130]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[130]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[23]),
        .I5(SrcBE__0[23]),
        .O(\q[130]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[130]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[23]),
        .I4(SrcAE[23]),
        .O(\q[130]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[131]_i_1__0 
       (.I0(\q[131]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[131] ),
        .I3(\q_reg[131]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[131]_i_5_n_0 ),
        .O(\q_reg[12]_0 [26]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[131]_i_2 
       (.I0(\q_reg[132]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[131]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[131]_i_7_n_0 ),
        .O(\q[131]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[131]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[24]),
        .I5(SrcBE__0[24]),
        .O(\q[131]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[131]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[24]),
        .I4(SrcAE[24]),
        .O(\q[131]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[132]_i_1__0 
       (.I0(\q[132]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[132] ),
        .I3(\q_reg[132]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[132]_i_5_n_0 ),
        .O(\q_reg[12]_0 [27]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[132]_i_2 
       (.I0(\q_reg[133]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[132]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[132]_i_7_n_0 ),
        .O(\q[132]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[132]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[25]),
        .I5(SrcBE__0[25]),
        .O(\q[132]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[132]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[25]),
        .I4(SrcAE[25]),
        .O(\q[132]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[133]_i_1__0 
       (.I0(\q[133]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[133] ),
        .I3(\q_reg[133]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[133]_i_5_n_0 ),
        .O(\q_reg[12]_0 [28]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[133]_i_2 
       (.I0(\q_reg[134]_1 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[133]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[133]_i_7_n_0 ),
        .O(\q[133]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[133]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[26]),
        .I5(SrcBE__0[26]),
        .O(\q[133]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[133]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[26]),
        .I4(SrcAE[26]),
        .O(\q[133]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[134]_i_1__0 
       (.I0(\q[134]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[134] ),
        .I3(\q_reg[134]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[134]_i_5_n_0 ),
        .O(\q_reg[12]_0 [29]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[134]_i_2 
       (.I0(\q_reg[135]_2 ),
        .I1(\q_reg[11]_0 ),
        .I2(\q_reg[134]_1 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[134]_i_7_n_0 ),
        .O(\q[134]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[134]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[27]),
        .I5(SrcBE__0[27]),
        .O(\q[134]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[134]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[27]),
        .I4(SrcAE[27]),
        .O(\q[134]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[135]_i_1__0 
       (.I0(\q[135]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[135] ),
        .I3(\q_reg[135]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[135]_i_5_n_0 ),
        .O(\q_reg[12]_0 [30]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[135]_i_2 
       (.I0(\q_reg[11]_0 ),
        .I1(\q_reg[135]_1 ),
        .I2(\q_reg[135]_2 ),
        .I3(\q_reg[11]_1 ),
        .I4(\q[135]_i_7_n_0 ),
        .O(\q[135]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[135]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[28]),
        .I5(SrcBE__0[28]),
        .O(\q[135]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[135]_i_7 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[28]),
        .I4(SrcAE[28]),
        .O(\q[135]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[136]_i_1__0 
       (.I0(\q[136]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[136] ),
        .I3(\q_reg[136]_0 ),
        .I4(\q[137]_i_2_n_0 ),
        .I5(\q[136]_i_5_n_0 ),
        .O(\q_reg[12]_0 [31]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[136]_i_2 
       (.I0(\q_reg[11]_1 ),
        .I1(\q_reg[135]_1 ),
        .I2(\q_reg[11]_0 ),
        .I3(SrcAE[30]),
        .I4(\q[136]_i_9_n_0 ),
        .O(\q[136]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[136]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(SrcAE[29]),
        .I5(SrcBE__0[29]),
        .O(\q[136]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00044404)) 
    \q[136]_i_6 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(WriteDataE),
        .I3(\q_reg[12]_0 [0]),
        .I4(\q[107]_i_2 ),
        .O(\q_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \q[136]_i_8 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(WriteDataE),
        .I3(\q_reg[12]_0 [0]),
        .I4(\q[107]_i_2 ),
        .O(\q_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[136]_i_9 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[29]),
        .I4(SrcAE[29]),
        .O(\q[136]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[137]_i_1__0 
       (.I0(\q[137]_i_2_n_0 ),
        .I1(\q[137]_i_3_n_0 ),
        .I2(\q_reg[137] ),
        .I3(\q_reg[137]_0 ),
        .I4(\q[137]_i_6_n_0 ),
        .I5(\q[137]_i_7_n_0 ),
        .O(\q_reg[12]_0 [32]));
  LUT3 #(
    .INIT(8'h0D)) 
    \q[137]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\q[137]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \q[137]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\q[137]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \q[137]_i_6 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(SrcBE__0[30]),
        .I4(SrcAE[30]),
        .O(\q[137]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00003020FF000000)) 
    \q[137]_i_7 
       (.I0(SrcBE__0[30]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(SrcAE[30]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\q[137]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \q[153]_i_2 
       (.I0(\q_reg[104] ),
        .I1(JumpE),
        .I2(\q_reg_n_0_[15] ),
        .I3(BranchCondition__9),
        .O(FlushE));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \q[178]_i_3 
       (.I0(\q_reg[104] ),
        .I1(JumpE),
        .I2(\q_reg_n_0_[15] ),
        .I3(BranchCondition__9),
        .O(\q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01101010)) 
    \q[178]_i_4 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[9]_0 ),
        .I2(\q_reg[7]_0 ),
        .I3(\q[178]_i_5_n_0 ),
        .I4(\q[31]_i_15_n_0 ),
        .I5(\q[31]_i_12_n_0 ),
        .O(BranchCondition__9));
  LUT5 #(
    .INIT(32'h00080000)) 
    \q[178]_i_5 
       (.I0(\q[178]_i_6_n_0 ),
        .I1(\q[31]_i_22_n_0 ),
        .I2(\q_reg[12]_0 [1]),
        .I3(\q_reg[12]_0 [2]),
        .I4(\q[31]_i_16_n_0 ),
        .O(\q[178]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \q[178]_i_6 
       (.I0(\q_reg[12]_0 [4]),
        .I1(\q_reg[12]_0 [3]),
        .I2(\q_reg[12]_0 [6]),
        .I3(\q_reg[12]_0 [5]),
        .O(\q[178]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[2]_i_1 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[2]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \q[31]_i_10 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[9]_0 ),
        .O(\q[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \q[31]_i_11 
       (.I0(\q[31]_i_15_n_0 ),
        .I1(\q[31]_i_16_n_0 ),
        .I2(\q_reg[12]_0 [2]),
        .I3(\q_reg[12]_0 [1]),
        .I4(\q[31]_i_17_n_0 ),
        .O(ZeroE));
  LUT6 #(
    .INIT(64'h2222222288828288)) 
    \q[31]_i_12 
       (.I0(\q_reg[9]_0 ),
        .I1(\q_reg[7]_0 ),
        .I2(\q_reg[8]_0 ),
        .I3(ovfE),
        .I4(\q_reg[12]_0 [32]),
        .I5(\q[31]_i_19_n_0 ),
        .O(\q[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \q[31]_i_13 
       (.I0(p_0_in_0[6]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .O(\q[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[31]_i_15 
       (.I0(\q[31]_i_20_n_0 ),
        .I1(\q_reg[12]_0 [18]),
        .I2(\q_reg[12]_0 [17]),
        .I3(\q_reg[12]_0 [20]),
        .I4(\q_reg[12]_0 [19]),
        .I5(\q[31]_i_21_n_0 ),
        .O(\q[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_16 
       (.I0(\q_reg[12]_0 [11]),
        .I1(\q_reg[12]_0 [12]),
        .I2(\q_reg[12]_0 [13]),
        .I3(\q_reg[12]_0 [14]),
        .I4(\q_reg[12]_0 [16]),
        .I5(\q_reg[12]_0 [15]),
        .O(\q[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[31]_i_17 
       (.I0(\q_reg[12]_0 [5]),
        .I1(\q_reg[12]_0 [6]),
        .I2(\q_reg[12]_0 [3]),
        .I3(\q_reg[12]_0 [4]),
        .I4(\q[31]_i_22_n_0 ),
        .O(\q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000010000)) 
    \q[31]_i_18 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(SrcAE[30]),
        .I4(O),
        .I5(condinvb__0),
        .O(ovfE));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \q[31]_i_19 
       (.I0(Q[2]),
        .I1(\q[31]_i_12_0 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\q_reg[8]_0 ),
        .O(\q[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_20 
       (.I0(\q_reg[12]_0 [32]),
        .I1(\q_reg[12]_0 [26]),
        .I2(\q_reg[12]_0 [25]),
        .I3(\q_reg[12]_0 [28]),
        .I4(\q_reg[12]_0 [27]),
        .I5(\q_reg[12]_0 [31]),
        .O(\q[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_21 
       (.I0(\q_reg[12]_0 [21]),
        .I1(\q_reg[12]_0 [22]),
        .I2(\q_reg[12]_0 [23]),
        .I3(\q_reg[12]_0 [24]),
        .I4(\q_reg[12]_0 [30]),
        .I5(\q_reg[12]_0 [29]),
        .O(\q[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_22 
       (.I0(\q_reg[12]_0 [10]),
        .I1(\q_reg[12]_0 [9]),
        .I2(\q_reg[12]_0 [8]),
        .I3(\q_reg[12]_0 [7]),
        .O(\q[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF140000)) 
    \q[31]_i_4 
       (.I0(\q[31]_i_9_n_0 ),
        .I1(\q[31]_i_10_n_0 ),
        .I2(ZeroE),
        .I3(\q[31]_i_12_n_0 ),
        .I4(\q_reg_n_0_[15] ),
        .I5(JumpE),
        .O(\q_reg[15]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_13_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .O(PCSrc1__6));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[31]_i_9 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[9]_0 ),
        .O(\q[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[64]_i_1 
       (.I0(InstrF[0]),
        .I1(\q_reg[15]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[65]_i_1 
       (.I0(InstrF[1]),
        .I1(\q_reg[15]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[66]_i_1 
       (.I0(InstrF[2]),
        .I1(\q_reg[15]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[67]_i_1 
       (.I0(InstrF[3]),
        .I1(\q_reg[15]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[68]_i_1 
       (.I0(InstrF[4]),
        .I1(\q_reg[15]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[69]_i_1 
       (.I0(InstrF[5]),
        .I1(\q_reg[15]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[70]_i_1 
       (.I0(InstrF[6]),
        .I1(\q_reg[15]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[71]_i_1 
       (.I0(InstrF[7]),
        .I1(\q_reg[15]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[72]_i_1 
       (.I0(InstrF[8]),
        .I1(\q_reg[15]_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[73]_i_1 
       (.I0(InstrF[9]),
        .I1(\q_reg[15]_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[74]_i_1 
       (.I0(InstrF[10]),
        .I1(\q_reg[15]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[75]_i_1 
       (.I0(InstrF[11]),
        .I1(\q_reg[15]_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[76]_i_1 
       (.I0(InstrF[12]),
        .I1(\q_reg[15]_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[77]_i_1 
       (.I0(InstrF[13]),
        .I1(\q_reg[15]_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[78]_i_1 
       (.I0(InstrF[14]),
        .I1(\q_reg[15]_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[79]_i_1 
       (.I0(InstrF[15]),
        .I1(\q_reg[15]_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[80]_i_1 
       (.I0(InstrF[16]),
        .I1(\q_reg[15]_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[81]_i_1 
       (.I0(InstrF[17]),
        .I1(\q_reg[15]_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[82]_i_1 
       (.I0(InstrF[18]),
        .I1(\q_reg[15]_0 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[83]_i_1 
       (.I0(InstrF[19]),
        .I1(\q_reg[15]_0 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[84]_i_1 
       (.I0(InstrF[20]),
        .I1(\q_reg[15]_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[85]_i_1 
       (.I0(InstrF[21]),
        .I1(\q_reg[15]_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[86]_i_1 
       (.I0(InstrF[22]),
        .I1(\q_reg[15]_0 ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[87]_i_1 
       (.I0(InstrF[23]),
        .I1(\q_reg[15]_0 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[88]_i_1 
       (.I0(InstrF[24]),
        .I1(\q_reg[15]_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[89]_i_1 
       (.I0(InstrF[25]),
        .I1(\q_reg[15]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[90]_i_1 
       (.I0(InstrF[26]),
        .I1(\q_reg[15]_0 ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[91]_i_1 
       (.I0(InstrF[27]),
        .I1(\q_reg[15]_0 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[92]_i_1 
       (.I0(InstrF[28]),
        .I1(\q_reg[15]_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[93]_i_1 
       (.I0(InstrF[29]),
        .I1(\q_reg[15]_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[94]_i_1 
       (.I0(InstrF[30]),
        .I1(\q_reg[15]_0 ),
        .O(D[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \q[95]_i_1 
       (.I0(InstrF[31]),
        .I1(\q_reg[15]_0 ),
        .O(D[32]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(p_0_in_0[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(\q_reg[12]_0 [0]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(Q[0]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(Q[1]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(Q[2]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(Q[3]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(\q_reg_n_0_[15] ));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[16]),
        .Q(JumpE));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[17]),
        .Q(Q[4]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[18]),
        .Q(Q[5]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[19]),
        .Q(Q[6]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(p_0_in_0[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[20]),
        .Q(Q[7]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(p_0_in_0[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(p_0_in_0[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(p_0_in_0[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(p_0_in_0[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(p_0_in_0[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(\q_reg[7]_0 ));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(\q_reg[8]_0 ));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(\q_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module design_1_top_0_0_floprc__parameterized0
   (\q_reg[15]_0 ,
    \q_reg[10]_0 ,
    \q_reg[11]_0 ,
    \q_reg[36]_0 ,
    \q_reg[37]_0 ,
    \q_reg[38]_0 ,
    \q_reg[178]_0 ,
    \q_reg[162]_0 ,
    \q_reg[39]_0 ,
    \q_reg[154]_0 ,
    \q_reg[40]_0 ,
    \q_reg[170]_0 ,
    \q_reg[11]_1 ,
    \q_reg[11]_2 ,
    \q_reg[11]_3 ,
    \q_reg[11]_4 ,
    \q_reg[11]_5 ,
    \q_reg[11]_6 ,
    \q_reg[11]_7 ,
    \q_reg[11]_8 ,
    \q_reg[11]_9 ,
    \q_reg[11]_10 ,
    \q_reg[11]_11 ,
    \q_reg[11]_12 ,
    \q_reg[158]_0 ,
    DI,
    \q_reg[11]_13 ,
    \q_reg[11]_14 ,
    \q_reg[11]_15 ,
    \q_reg[11]_16 ,
    \q_reg[11]_17 ,
    \q_reg[11]_18 ,
    \q_reg[11]_19 ,
    \q_reg[11]_20 ,
    \q_reg[37]_1 ,
    \q_reg[37]_2 ,
    \q_reg[37]_3 ,
    \q_reg[37]_4 ,
    \q_reg[11]_21 ,
    \q_reg[11]_22 ,
    \q_reg[11]_23 ,
    \q_reg[11]_24 ,
    \q_reg[11]_25 ,
    \q_reg[11]_26 ,
    \q_reg[11]_27 ,
    \q_reg[11]_28 ,
    \q_reg[11]_29 ,
    \q_reg[11]_30 ,
    \q_reg[11]_31 ,
    \q_reg[11]_32 ,
    \q_reg[37]_5 ,
    \q_reg[11]_33 ,
    \q_reg[11]_34 ,
    \q_reg[11]_35 ,
    \q_reg[11]_36 ,
    \q_reg[11]_37 ,
    \q_reg[11]_38 ,
    \q_reg[13]_0 ,
    \q_reg[50]_0 ,
    \q_reg[50]_1 ,
    \q_reg[51]_0 ,
    \q_reg[174]_0 ,
    \q_reg[13]_1 ,
    \q_reg[66]_0 ,
    \q_reg[11]_39 ,
    \q_reg[37]_6 ,
    \q_reg[37]_7 ,
    \q_reg[37]_8 ,
    \q_reg[37]_9 ,
    \q_reg[37]_10 ,
    \q_reg[37]_11 ,
    \q_reg[37]_12 ,
    \q_reg[66]_1 ,
    \q_reg[67]_0 ,
    \q_reg[13]_2 ,
    \q_reg[42]_0 ,
    \q_reg[42]_1 ,
    \q_reg[43]_0 ,
    \q_reg[58]_0 ,
    \q_reg[58]_1 ,
    \q_reg[59]_0 ,
    \q_reg[13]_3 ,
    \q_reg[58]_2 ,
    \q_reg[166]_0 ,
    \q_reg[13]_4 ,
    \q_reg[46]_0 ,
    \q_reg[47]_0 ,
    \q_reg[13]_5 ,
    \q_reg[62]_0 ,
    \q_reg[63]_0 ,
    S,
    \q_reg[13]_6 ,
    \q_reg[54]_0 ,
    \q_reg[55]_0 ,
    \q_reg[13]_7 ,
    \q_reg[13]_8 ,
    \q_reg[44]_0 ,
    \q_reg[45]_0 ,
    \q_reg[13]_9 ,
    \q_reg[60]_0 ,
    \q_reg[61]_0 ,
    \q_reg[178]_1 ,
    \q_reg[13]_10 ,
    \q_reg[52]_0 ,
    \q_reg[53]_0 ,
    \q_reg[13]_11 ,
    \q_reg[13]_12 ,
    \q_reg[48]_0 ,
    \q_reg[49]_0 ,
    \q_reg[13]_13 ,
    \q_reg[64]_0 ,
    \q_reg[65]_0 ,
    \q_reg[13]_14 ,
    \q_reg[41]_0 ,
    \q_reg[56]_0 ,
    \q_reg[57]_0 ,
    \q_reg[13]_15 ,
    \q_reg[37]_13 ,
    \q_reg[37]_14 ,
    \q_reg[13]_16 ,
    \q_reg[37]_15 ,
    \q_reg[37]_16 ,
    \q_reg[37]_17 ,
    \q_reg[37]_18 ,
    \q_reg[37]_19 ,
    \q_reg[13]_17 ,
    \q_reg[13]_18 ,
    \q_reg[13]_19 ,
    \q_reg[13]_20 ,
    \q_reg[37]_20 ,
    \q_reg[13]_21 ,
    WriteDataE,
    \q_reg[84]_0 ,
    \q_reg[67]_1 ,
    \q_reg[78]_0 ,
    D,
    condinvb__0,
    \q_reg[67]_2 ,
    \q_reg[18]_0 ,
    \q_reg[137]_i_12_0 ,
    \q_reg[39]_1 ,
    \q_reg[43]_1 ,
    \q_reg[47]_1 ,
    \q_reg[51]_1 ,
    \q_reg[55]_1 ,
    \q_reg[59]_1 ,
    \q_reg[63]_1 ,
    \q_reg[39]_2 ,
    \q_reg[43]_2 ,
    \q_reg[47]_2 ,
    \q_reg[51]_2 ,
    \q_reg[55]_2 ,
    \q_reg[59]_2 ,
    \q_reg[63]_2 ,
    E,
    \q_reg[37]_21 ,
    \q_reg[38]_1 ,
    \q_reg[13]_22 ,
    \q_reg[51]_3 ,
    \q_reg[13]_23 ,
    \q_reg[13]_24 ,
    \q_reg[13]_25 ,
    \q_reg[67]_3 ,
    \q_reg[13]_26 ,
    \q_reg[13]_27 ,
    \q_reg[38]_2 ,
    \q_reg[13]_28 ,
    \q_reg[13]_29 ,
    \q_reg[13]_30 ,
    \q_reg[13]_31 ,
    PCSrcE,
    O,
    PCPlus4F,
    PCSrc1__6,
    \q_reg[31]_0 ,
    \q_reg[95]_0 ,
    \q_reg[106]_0 ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    \q_reg[107]_2 ,
    ResultW,
    Q,
    ovfE,
    \q[120]_i_11_0 ,
    ForwardAE11_out,
    \q[105]_i_3_0 ,
    RegWriteW,
    jalrTarget_carry__2_i_2_0,
    jalrTarget_carry__2_i_2_1,
    \q_reg[78]_1 ,
    jalrTarget_carry__6_i_8_0,
    \q_reg[105]_0 ,
    \q_reg[78]_2 ,
    \q[31]_i_6_0 ,
    \q[106]_i_3_0 ,
    \q[106]_i_3_1 ,
    \q[110]_i_4_0 ,
    \q[114]_i_3_0 ,
    \q[118]_i_3_0 ,
    \q[122]_i_4_0 ,
    \q[126]_i_4_0 ,
    \q[130]_i_4_0 ,
    \q[134]_i_4_0 ,
    PCReady,
    \q_reg[178]_2 ,
    clk,
    reset);
  output [3:0]\q_reg[15]_0 ;
  output \q_reg[10]_0 ;
  output \q_reg[11]_0 ;
  output \q_reg[36]_0 ;
  output \q_reg[37]_0 ;
  output \q_reg[38]_0 ;
  output [3:0]\q_reg[178]_0 ;
  output [3:0]\q_reg[162]_0 ;
  output \q_reg[39]_0 ;
  output [3:0]\q_reg[154]_0 ;
  output \q_reg[40]_0 ;
  output [3:0]\q_reg[170]_0 ;
  output \q_reg[11]_1 ;
  output \q_reg[11]_2 ;
  output \q_reg[11]_3 ;
  output \q_reg[11]_4 ;
  output \q_reg[11]_5 ;
  output \q_reg[11]_6 ;
  output \q_reg[11]_7 ;
  output \q_reg[11]_8 ;
  output \q_reg[11]_9 ;
  output \q_reg[11]_10 ;
  output \q_reg[11]_11 ;
  output \q_reg[11]_12 ;
  output [3:0]\q_reg[158]_0 ;
  output [3:0]DI;
  output \q_reg[11]_13 ;
  output \q_reg[11]_14 ;
  output \q_reg[11]_15 ;
  output \q_reg[11]_16 ;
  output \q_reg[11]_17 ;
  output \q_reg[11]_18 ;
  output \q_reg[11]_19 ;
  output \q_reg[11]_20 ;
  output \q_reg[37]_1 ;
  output \q_reg[37]_2 ;
  output \q_reg[37]_3 ;
  output \q_reg[37]_4 ;
  output \q_reg[11]_21 ;
  output \q_reg[11]_22 ;
  output \q_reg[11]_23 ;
  output \q_reg[11]_24 ;
  output \q_reg[11]_25 ;
  output \q_reg[11]_26 ;
  output \q_reg[11]_27 ;
  output \q_reg[11]_28 ;
  output \q_reg[11]_29 ;
  output \q_reg[11]_30 ;
  output \q_reg[11]_31 ;
  output \q_reg[11]_32 ;
  output \q_reg[37]_5 ;
  output \q_reg[11]_33 ;
  output \q_reg[11]_34 ;
  output \q_reg[11]_35 ;
  output \q_reg[11]_36 ;
  output \q_reg[11]_37 ;
  output \q_reg[11]_38 ;
  output \q_reg[13]_0 ;
  output \q_reg[50]_0 ;
  output [3:0]\q_reg[50]_1 ;
  output \q_reg[51]_0 ;
  output [3:0]\q_reg[174]_0 ;
  output \q_reg[13]_1 ;
  output \q_reg[66]_0 ;
  output \q_reg[11]_39 ;
  output \q_reg[37]_6 ;
  output \q_reg[37]_7 ;
  output \q_reg[37]_8 ;
  output \q_reg[37]_9 ;
  output \q_reg[37]_10 ;
  output \q_reg[37]_11 ;
  output \q_reg[37]_12 ;
  output [3:0]\q_reg[66]_1 ;
  output \q_reg[67]_0 ;
  output \q_reg[13]_2 ;
  output \q_reg[42]_0 ;
  output [3:0]\q_reg[42]_1 ;
  output \q_reg[43]_0 ;
  output [3:0]\q_reg[58]_0 ;
  output \q_reg[58]_1 ;
  output \q_reg[59]_0 ;
  output \q_reg[13]_3 ;
  output [3:0]\q_reg[58]_2 ;
  output [3:0]\q_reg[166]_0 ;
  output \q_reg[13]_4 ;
  output \q_reg[46]_0 ;
  output \q_reg[47]_0 ;
  output \q_reg[13]_5 ;
  output \q_reg[62]_0 ;
  output \q_reg[63]_0 ;
  output [3:0]S;
  output \q_reg[13]_6 ;
  output \q_reg[54]_0 ;
  output \q_reg[55]_0 ;
  output \q_reg[13]_7 ;
  output \q_reg[13]_8 ;
  output \q_reg[44]_0 ;
  output \q_reg[45]_0 ;
  output \q_reg[13]_9 ;
  output \q_reg[60]_0 ;
  output \q_reg[61]_0 ;
  output [0:0]\q_reg[178]_1 ;
  output \q_reg[13]_10 ;
  output \q_reg[52]_0 ;
  output \q_reg[53]_0 ;
  output \q_reg[13]_11 ;
  output \q_reg[13]_12 ;
  output \q_reg[48]_0 ;
  output \q_reg[49]_0 ;
  output \q_reg[13]_13 ;
  output \q_reg[64]_0 ;
  output \q_reg[65]_0 ;
  output \q_reg[13]_14 ;
  output \q_reg[41]_0 ;
  output \q_reg[56]_0 ;
  output \q_reg[57]_0 ;
  output \q_reg[13]_15 ;
  output \q_reg[37]_13 ;
  output \q_reg[37]_14 ;
  output \q_reg[13]_16 ;
  output \q_reg[37]_15 ;
  output \q_reg[37]_16 ;
  output \q_reg[37]_17 ;
  output \q_reg[37]_18 ;
  output \q_reg[37]_19 ;
  output \q_reg[13]_17 ;
  output \q_reg[13]_18 ;
  output \q_reg[13]_19 ;
  output \q_reg[13]_20 ;
  output \q_reg[37]_20 ;
  output \q_reg[13]_21 ;
  output [30:0]WriteDataE;
  output [76:0]\q_reg[84]_0 ;
  output [3:0]\q_reg[67]_1 ;
  output \q_reg[78]_0 ;
  output [0:0]D;
  output [0:0]condinvb__0;
  output [3:0]\q_reg[67]_2 ;
  output \q_reg[18]_0 ;
  output [0:0]\q_reg[137]_i_12_0 ;
  output [3:0]\q_reg[39]_1 ;
  output [3:0]\q_reg[43]_1 ;
  output [3:0]\q_reg[47]_1 ;
  output [3:0]\q_reg[51]_1 ;
  output [3:0]\q_reg[55]_1 ;
  output [3:0]\q_reg[59]_1 ;
  output [3:0]\q_reg[63]_1 ;
  output [3:0]\q_reg[39]_2 ;
  output [3:0]\q_reg[43]_2 ;
  output [3:0]\q_reg[47]_2 ;
  output [3:0]\q_reg[51]_2 ;
  output [3:0]\q_reg[55]_2 ;
  output [3:0]\q_reg[59]_2 ;
  output [3:0]\q_reg[63]_2 ;
  output [0:0]E;
  output \q_reg[37]_21 ;
  output \q_reg[38]_1 ;
  output \q_reg[13]_22 ;
  output [3:0]\q_reg[51]_3 ;
  output \q_reg[13]_23 ;
  output \q_reg[13]_24 ;
  output \q_reg[13]_25 ;
  output [3:0]\q_reg[67]_3 ;
  output \q_reg[13]_26 ;
  output \q_reg[13]_27 ;
  output \q_reg[38]_2 ;
  output \q_reg[13]_28 ;
  output \q_reg[13]_29 ;
  output \q_reg[13]_30 ;
  output \q_reg[13]_31 ;
  input [0:0]PCSrcE;
  input [3:0]O;
  input [3:0]PCPlus4F;
  input PCSrc1__6;
  input [3:0]\q_reg[31]_0 ;
  input [4:0]\q_reg[95]_0 ;
  input \q_reg[106]_0 ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input \q_reg[107]_2 ;
  input [31:0]ResultW;
  input [36:0]Q;
  input ovfE;
  input [0:0]\q[120]_i_11_0 ;
  input ForwardAE11_out;
  input [4:0]\q[105]_i_3_0 ;
  input RegWriteW;
  input jalrTarget_carry__2_i_2_0;
  input jalrTarget_carry__2_i_2_1;
  input [0:0]\q_reg[78]_1 ;
  input jalrTarget_carry__6_i_8_0;
  input \q_reg[105]_0 ;
  input \q_reg[78]_2 ;
  input [9:0]\q[31]_i_6_0 ;
  input [0:0]\q[106]_i_3_0 ;
  input [3:0]\q[106]_i_3_1 ;
  input [3:0]\q[110]_i_4_0 ;
  input [3:0]\q[114]_i_3_0 ;
  input [3:0]\q[118]_i_3_0 ;
  input [3:0]\q[122]_i_4_0 ;
  input [3:0]\q[126]_i_4_0 ;
  input [3:0]\q[130]_i_4_0 ;
  input [3:0]\q[134]_i_4_0 ;
  input PCReady;
  input [173:0]\q_reg[178]_2 ;
  input clk;
  input reset;

  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [1:1]ForwardAE;
  wire ForwardAE11_out;
  wire [1:1]ForwardBE;
  wire [3:0]O;
  wire [31:2]PCE;
  wire [3:0]PCPlus4F;
  wire PCReady;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [36:0]Q;
  wire [31:0]RD1E;
  wire [31:0]RD2E;
  wire RegWriteW;
  wire [31:0]ResultW;
  wire [3:1]Rs2E;
  wire [3:0]S;
  wire [30:0]WriteDataE;
  wire clk;
  wire [0:0]condinvb__0;
  wire \hu/ForwardBE10_out ;
  wire jalrTarget_carry__2_i_2_0;
  wire jalrTarget_carry__2_i_2_1;
  wire jalrTarget_carry__6_i_10_n_0;
  wire jalrTarget_carry__6_i_8_0;
  wire jalrTarget_carry__6_i_9_n_0;
  wire jalrTarget_carry_i_10_n_0;
  wire jalrTarget_carry_i_14_n_0;
  wire jalrTarget_carry_i_9_n_0;
  wire ovfE;
  wire \q[105]_i_2_n_0 ;
  wire [4:0]\q[105]_i_3_0 ;
  wire \q[105]_i_3_n_0 ;
  wire \q[105]_i_5_n_0 ;
  wire \q[105]_i_6_n_0 ;
  wire \q[105]_i_8_n_0 ;
  wire \q[106]_i_10_n_0 ;
  wire [0:0]\q[106]_i_3_0 ;
  wire [3:0]\q[106]_i_3_1 ;
  wire \q[106]_i_6_n_0 ;
  wire \q[106]_i_8_n_0 ;
  wire \q[106]_i_9_n_0 ;
  wire \q[107]_i_10_n_0 ;
  wire \q[107]_i_11_n_0 ;
  wire \q[107]_i_7_n_0 ;
  wire \q[107]_i_8_n_0 ;
  wire \q[107]_i_9_n_0 ;
  wire \q[108]_i_10_n_0 ;
  wire \q[108]_i_11_n_0 ;
  wire \q[108]_i_6_n_0 ;
  wire \q[108]_i_7_n_0 ;
  wire \q[108]_i_8_n_0 ;
  wire \q[108]_i_9_n_0 ;
  wire \q[109]_i_10_n_0 ;
  wire \q[109]_i_11_n_0 ;
  wire \q[109]_i_6_n_0 ;
  wire \q[109]_i_7_n_0 ;
  wire \q[109]_i_9_n_0 ;
  wire \q[110]_i_10_n_0 ;
  wire [3:0]\q[110]_i_4_0 ;
  wire \q[110]_i_8_n_0 ;
  wire \q[110]_i_9_n_0 ;
  wire \q[111]_i_10_n_0 ;
  wire \q[111]_i_8_n_0 ;
  wire \q[111]_i_9_n_0 ;
  wire \q[112]_i_10_n_0 ;
  wire \q[112]_i_8_n_0 ;
  wire \q[112]_i_9_n_0 ;
  wire \q[113]_i_11_n_0 ;
  wire \q[113]_i_12_n_0 ;
  wire \q[113]_i_8_n_0 ;
  wire \q[113]_i_9_n_0 ;
  wire \q[114]_i_10_n_0 ;
  wire \q[114]_i_11_n_0 ;
  wire [3:0]\q[114]_i_3_0 ;
  wire \q[114]_i_6_n_0 ;
  wire \q[114]_i_7_n_0 ;
  wire \q[114]_i_9_n_0 ;
  wire \q[115]_i_10_n_0 ;
  wire \q[115]_i_6_n_0 ;
  wire \q[115]_i_7_n_0 ;
  wire \q[115]_i_8_n_0 ;
  wire \q[115]_i_9_n_0 ;
  wire \q[116]_i_10_n_0 ;
  wire \q[116]_i_6_n_0 ;
  wire \q[116]_i_7_n_0 ;
  wire \q[116]_i_8_n_0 ;
  wire \q[116]_i_9_n_0 ;
  wire \q[117]_i_10_n_0 ;
  wire \q[117]_i_11_n_0 ;
  wire \q[117]_i_16_n_0 ;
  wire \q[117]_i_6_n_0 ;
  wire \q[117]_i_7_n_0 ;
  wire \q[117]_i_9_n_0 ;
  wire \q[118]_i_10_n_0 ;
  wire \q[118]_i_11_n_0 ;
  wire [3:0]\q[118]_i_3_0 ;
  wire \q[118]_i_6_n_0 ;
  wire \q[118]_i_7_n_0 ;
  wire \q[118]_i_8_n_0 ;
  wire \q[118]_i_9_n_0 ;
  wire \q[119]_i_10_n_0 ;
  wire \q[119]_i_11_n_0 ;
  wire \q[119]_i_6_n_0 ;
  wire \q[119]_i_7_n_0 ;
  wire \q[119]_i_8_n_0 ;
  wire \q[119]_i_9_n_0 ;
  wire \q[120]_i_10_n_0 ;
  wire [0:0]\q[120]_i_11_0 ;
  wire \q[120]_i_11_n_0 ;
  wire \q[120]_i_6_n_0 ;
  wire \q[120]_i_7_n_0 ;
  wire \q[120]_i_8_n_0 ;
  wire \q[120]_i_9_n_0 ;
  wire \q[121]_i_10_n_0 ;
  wire \q[121]_i_11_n_0 ;
  wire \q[121]_i_12_n_0 ;
  wire \q[121]_i_13_n_0 ;
  wire \q[121]_i_14_n_0 ;
  wire \q[121]_i_15_n_0 ;
  wire \q[121]_i_16_n_0 ;
  wire \q[121]_i_21_n_0 ;
  wire \q[121]_i_22_n_0 ;
  wire \q[121]_i_6_n_0 ;
  wire \q[121]_i_7_n_0 ;
  wire \q[121]_i_9_n_0 ;
  wire \q[122]_i_10_n_0 ;
  wire \q[122]_i_11_n_0 ;
  wire \q[122]_i_12_n_0 ;
  wire \q[122]_i_13_n_0 ;
  wire \q[122]_i_14_n_0 ;
  wire \q[122]_i_15_n_0 ;
  wire \q[122]_i_16_n_0 ;
  wire [3:0]\q[122]_i_4_0 ;
  wire \q[122]_i_8_n_0 ;
  wire \q[122]_i_9_n_0 ;
  wire \q[123]_i_10_n_0 ;
  wire \q[123]_i_11_n_0 ;
  wire \q[123]_i_12_n_0 ;
  wire \q[123]_i_8_n_0 ;
  wire \q[123]_i_9_n_0 ;
  wire \q[124]_i_10_n_0 ;
  wire \q[124]_i_11_n_0 ;
  wire \q[124]_i_12_n_0 ;
  wire \q[124]_i_13_n_0 ;
  wire \q[124]_i_14_n_0 ;
  wire \q[124]_i_8_n_0 ;
  wire \q[124]_i_9_n_0 ;
  wire \q[125]_i_11_n_0 ;
  wire \q[125]_i_12_n_0 ;
  wire \q[125]_i_13_n_0 ;
  wire \q[125]_i_14_n_0 ;
  wire \q[125]_i_15_n_0 ;
  wire \q[125]_i_20_n_0 ;
  wire \q[125]_i_8_n_0 ;
  wire \q[125]_i_9_n_0 ;
  wire \q[126]_i_10_n_0 ;
  wire \q[126]_i_11_n_0 ;
  wire \q[126]_i_12_n_0 ;
  wire \q[126]_i_13_n_0 ;
  wire [3:0]\q[126]_i_4_0 ;
  wire \q[126]_i_8_n_0 ;
  wire \q[126]_i_9_n_0 ;
  wire \q[127]_i_10_n_0 ;
  wire \q[127]_i_11_n_0 ;
  wire \q[127]_i_12_n_0 ;
  wire \q[127]_i_13_n_0 ;
  wire \q[127]_i_8_n_0 ;
  wire \q[127]_i_9_n_0 ;
  wire \q[128]_i_10_n_0 ;
  wire \q[128]_i_11_n_0 ;
  wire \q[128]_i_12_n_0 ;
  wire \q[128]_i_13_n_0 ;
  wire \q[128]_i_14_n_0 ;
  wire \q[128]_i_8_n_0 ;
  wire \q[128]_i_9_n_0 ;
  wire \q[129]_i_11_n_0 ;
  wire \q[129]_i_12_n_0 ;
  wire \q[129]_i_13_n_0 ;
  wire \q[129]_i_8_n_0 ;
  wire \q[129]_i_9_n_0 ;
  wire \q[130]_i_10_n_0 ;
  wire \q[130]_i_11_n_0 ;
  wire \q[130]_i_12_n_0 ;
  wire [3:0]\q[130]_i_4_0 ;
  wire \q[130]_i_8_n_0 ;
  wire \q[130]_i_9_n_0 ;
  wire \q[131]_i_10_n_0 ;
  wire \q[131]_i_11_n_0 ;
  wire \q[131]_i_12_n_0 ;
  wire \q[131]_i_8_n_0 ;
  wire \q[131]_i_9_n_0 ;
  wire \q[132]_i_10_n_0 ;
  wire \q[132]_i_11_n_0 ;
  wire \q[132]_i_8_n_0 ;
  wire \q[132]_i_9_n_0 ;
  wire \q[133]_i_11_n_0 ;
  wire \q[133]_i_12_n_0 ;
  wire \q[133]_i_13_n_0 ;
  wire \q[133]_i_14_n_0 ;
  wire \q[133]_i_8_n_0 ;
  wire \q[133]_i_9_n_0 ;
  wire \q[134]_i_10_n_0 ;
  wire \q[134]_i_11_n_0 ;
  wire \q[134]_i_12_n_0 ;
  wire [3:0]\q[134]_i_4_0 ;
  wire \q[134]_i_8_n_0 ;
  wire \q[134]_i_9_n_0 ;
  wire \q[135]_i_10_n_0 ;
  wire \q[135]_i_11_n_0 ;
  wire \q[135]_i_8_n_0 ;
  wire \q[135]_i_9_n_0 ;
  wire \q[136]_i_10_n_0 ;
  wire \q[136]_i_11_n_0 ;
  wire \q[136]_i_12_n_0 ;
  wire \q[136]_i_13_n_0 ;
  wire \q[136]_i_14_n_0 ;
  wire \q[136]_i_15_n_0 ;
  wire \q[136]_i_16_n_0 ;
  wire \q[137]_i_10_n_0 ;
  wire \q[137]_i_11_n_0 ;
  wire \q[137]_i_13_n_0 ;
  wire \q[137]_i_14_n_0 ;
  wire \q[137]_i_15_n_0 ;
  wire \q[137]_i_16_n_0 ;
  wire \q[137]_i_17_n_0 ;
  wire \q[137]_i_18_n_0 ;
  wire \q[137]_i_19_n_0 ;
  wire \q[137]_i_20_n_0 ;
  wire \q[137]_i_8_n_0 ;
  wire \q[137]_i_9_n_0 ;
  wire \q[31]_i_14_n_0 ;
  wire [9:0]\q[31]_i_6_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[31]_i_7_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q[78]_i_2_n_0 ;
  wire \q[78]_i_4_n_0 ;
  wire \q_reg[105]_0 ;
  wire \q_reg[106]_0 ;
  wire \q_reg[107]_0 ;
  wire \q_reg[107]_1 ;
  wire \q_reg[107]_2 ;
  wire \q_reg[109]_i_8_n_0 ;
  wire \q_reg[109]_i_8_n_1 ;
  wire \q_reg[109]_i_8_n_2 ;
  wire \q_reg[109]_i_8_n_3 ;
  wire \q_reg[109]_i_8_n_4 ;
  wire \q_reg[109]_i_8_n_5 ;
  wire \q_reg[109]_i_8_n_6 ;
  wire \q_reg[109]_i_8_n_7 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[113]_i_10_n_0 ;
  wire \q_reg[113]_i_10_n_1 ;
  wire \q_reg[113]_i_10_n_2 ;
  wire \q_reg[113]_i_10_n_3 ;
  wire \q_reg[113]_i_10_n_4 ;
  wire \q_reg[113]_i_10_n_5 ;
  wire \q_reg[113]_i_10_n_6 ;
  wire \q_reg[113]_i_10_n_7 ;
  wire \q_reg[117]_i_8_n_0 ;
  wire \q_reg[117]_i_8_n_1 ;
  wire \q_reg[117]_i_8_n_2 ;
  wire \q_reg[117]_i_8_n_3 ;
  wire \q_reg[117]_i_8_n_4 ;
  wire \q_reg[117]_i_8_n_5 ;
  wire \q_reg[117]_i_8_n_6 ;
  wire \q_reg[117]_i_8_n_7 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire \q_reg[11]_10 ;
  wire \q_reg[11]_11 ;
  wire \q_reg[11]_12 ;
  wire \q_reg[11]_13 ;
  wire \q_reg[11]_14 ;
  wire \q_reg[11]_15 ;
  wire \q_reg[11]_16 ;
  wire \q_reg[11]_17 ;
  wire \q_reg[11]_18 ;
  wire \q_reg[11]_19 ;
  wire \q_reg[11]_2 ;
  wire \q_reg[11]_20 ;
  wire \q_reg[11]_21 ;
  wire \q_reg[11]_22 ;
  wire \q_reg[11]_23 ;
  wire \q_reg[11]_24 ;
  wire \q_reg[11]_25 ;
  wire \q_reg[11]_26 ;
  wire \q_reg[11]_27 ;
  wire \q_reg[11]_28 ;
  wire \q_reg[11]_29 ;
  wire \q_reg[11]_3 ;
  wire \q_reg[11]_30 ;
  wire \q_reg[11]_31 ;
  wire \q_reg[11]_32 ;
  wire \q_reg[11]_33 ;
  wire \q_reg[11]_34 ;
  wire \q_reg[11]_35 ;
  wire \q_reg[11]_36 ;
  wire \q_reg[11]_37 ;
  wire \q_reg[11]_38 ;
  wire \q_reg[11]_39 ;
  wire \q_reg[11]_4 ;
  wire \q_reg[11]_5 ;
  wire \q_reg[11]_6 ;
  wire \q_reg[11]_7 ;
  wire \q_reg[11]_8 ;
  wire \q_reg[11]_9 ;
  wire \q_reg[121]_i_8_n_0 ;
  wire \q_reg[121]_i_8_n_1 ;
  wire \q_reg[121]_i_8_n_2 ;
  wire \q_reg[121]_i_8_n_3 ;
  wire \q_reg[121]_i_8_n_4 ;
  wire \q_reg[121]_i_8_n_5 ;
  wire \q_reg[121]_i_8_n_6 ;
  wire \q_reg[121]_i_8_n_7 ;
  wire \q_reg[125]_i_10_n_0 ;
  wire \q_reg[125]_i_10_n_1 ;
  wire \q_reg[125]_i_10_n_2 ;
  wire \q_reg[125]_i_10_n_3 ;
  wire \q_reg[125]_i_10_n_4 ;
  wire \q_reg[125]_i_10_n_5 ;
  wire \q_reg[125]_i_10_n_6 ;
  wire \q_reg[125]_i_10_n_7 ;
  wire \q_reg[129]_i_10_n_0 ;
  wire \q_reg[129]_i_10_n_1 ;
  wire \q_reg[129]_i_10_n_2 ;
  wire \q_reg[129]_i_10_n_3 ;
  wire \q_reg[129]_i_10_n_4 ;
  wire \q_reg[129]_i_10_n_5 ;
  wire \q_reg[129]_i_10_n_6 ;
  wire \q_reg[129]_i_10_n_7 ;
  wire \q_reg[133]_i_10_n_0 ;
  wire \q_reg[133]_i_10_n_1 ;
  wire \q_reg[133]_i_10_n_2 ;
  wire \q_reg[133]_i_10_n_3 ;
  wire \q_reg[133]_i_10_n_4 ;
  wire \q_reg[133]_i_10_n_5 ;
  wire \q_reg[133]_i_10_n_6 ;
  wire \q_reg[133]_i_10_n_7 ;
  wire [0:0]\q_reg[137]_i_12_0 ;
  wire \q_reg[137]_i_12_n_0 ;
  wire \q_reg[137]_i_12_n_1 ;
  wire \q_reg[137]_i_12_n_2 ;
  wire \q_reg[137]_i_12_n_3 ;
  wire \q_reg[137]_i_12_n_5 ;
  wire \q_reg[137]_i_12_n_6 ;
  wire \q_reg[137]_i_12_n_7 ;
  wire \q_reg[13]_0 ;
  wire \q_reg[13]_1 ;
  wire \q_reg[13]_10 ;
  wire \q_reg[13]_11 ;
  wire \q_reg[13]_12 ;
  wire \q_reg[13]_13 ;
  wire \q_reg[13]_14 ;
  wire \q_reg[13]_15 ;
  wire \q_reg[13]_16 ;
  wire \q_reg[13]_17 ;
  wire \q_reg[13]_18 ;
  wire \q_reg[13]_19 ;
  wire \q_reg[13]_2 ;
  wire \q_reg[13]_20 ;
  wire \q_reg[13]_21 ;
  wire \q_reg[13]_22 ;
  wire \q_reg[13]_23 ;
  wire \q_reg[13]_24 ;
  wire \q_reg[13]_25 ;
  wire \q_reg[13]_26 ;
  wire \q_reg[13]_27 ;
  wire \q_reg[13]_28 ;
  wire \q_reg[13]_29 ;
  wire \q_reg[13]_3 ;
  wire \q_reg[13]_30 ;
  wire \q_reg[13]_31 ;
  wire \q_reg[13]_4 ;
  wire \q_reg[13]_5 ;
  wire \q_reg[13]_6 ;
  wire \q_reg[13]_7 ;
  wire \q_reg[13]_8 ;
  wire \q_reg[13]_9 ;
  wire [3:0]\q_reg[154]_0 ;
  wire [3:0]\q_reg[158]_0 ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[162]_0 ;
  wire [3:0]\q_reg[166]_0 ;
  wire [3:0]\q_reg[170]_0 ;
  wire [3:0]\q_reg[174]_0 ;
  wire [3:0]\q_reg[178]_0 ;
  wire [0:0]\q_reg[178]_1 ;
  wire [173:0]\q_reg[178]_2 ;
  wire \q_reg[18]_0 ;
  wire [3:0]\q_reg[31]_0 ;
  wire \q_reg[36]_0 ;
  wire \q_reg[37]_0 ;
  wire \q_reg[37]_1 ;
  wire \q_reg[37]_10 ;
  wire \q_reg[37]_11 ;
  wire \q_reg[37]_12 ;
  wire \q_reg[37]_13 ;
  wire \q_reg[37]_14 ;
  wire \q_reg[37]_15 ;
  wire \q_reg[37]_16 ;
  wire \q_reg[37]_17 ;
  wire \q_reg[37]_18 ;
  wire \q_reg[37]_19 ;
  wire \q_reg[37]_2 ;
  wire \q_reg[37]_20 ;
  wire \q_reg[37]_21 ;
  wire \q_reg[37]_3 ;
  wire \q_reg[37]_4 ;
  wire \q_reg[37]_5 ;
  wire \q_reg[37]_6 ;
  wire \q_reg[37]_7 ;
  wire \q_reg[37]_8 ;
  wire \q_reg[37]_9 ;
  wire \q_reg[38]_0 ;
  wire \q_reg[38]_1 ;
  wire \q_reg[38]_2 ;
  wire \q_reg[39]_0 ;
  wire [3:0]\q_reg[39]_1 ;
  wire [3:0]\q_reg[39]_2 ;
  wire \q_reg[40]_0 ;
  wire \q_reg[41]_0 ;
  wire \q_reg[42]_0 ;
  wire [3:0]\q_reg[42]_1 ;
  wire \q_reg[43]_0 ;
  wire [3:0]\q_reg[43]_1 ;
  wire [3:0]\q_reg[43]_2 ;
  wire \q_reg[44]_0 ;
  wire \q_reg[45]_0 ;
  wire \q_reg[46]_0 ;
  wire \q_reg[47]_0 ;
  wire [3:0]\q_reg[47]_1 ;
  wire [3:0]\q_reg[47]_2 ;
  wire \q_reg[48]_0 ;
  wire \q_reg[49]_0 ;
  wire \q_reg[50]_0 ;
  wire [3:0]\q_reg[50]_1 ;
  wire \q_reg[51]_0 ;
  wire [3:0]\q_reg[51]_1 ;
  wire [3:0]\q_reg[51]_2 ;
  wire [3:0]\q_reg[51]_3 ;
  wire \q_reg[52]_0 ;
  wire \q_reg[53]_0 ;
  wire \q_reg[54]_0 ;
  wire \q_reg[55]_0 ;
  wire [3:0]\q_reg[55]_1 ;
  wire [3:0]\q_reg[55]_2 ;
  wire \q_reg[56]_0 ;
  wire \q_reg[57]_0 ;
  wire [3:0]\q_reg[58]_0 ;
  wire \q_reg[58]_1 ;
  wire [3:0]\q_reg[58]_2 ;
  wire \q_reg[59]_0 ;
  wire [3:0]\q_reg[59]_1 ;
  wire [3:0]\q_reg[59]_2 ;
  wire \q_reg[60]_0 ;
  wire \q_reg[61]_0 ;
  wire \q_reg[62]_0 ;
  wire \q_reg[63]_0 ;
  wire [3:0]\q_reg[63]_1 ;
  wire [3:0]\q_reg[63]_2 ;
  wire \q_reg[64]_0 ;
  wire \q_reg[65]_0 ;
  wire \q_reg[66]_0 ;
  wire [3:0]\q_reg[66]_1 ;
  wire \q_reg[67]_0 ;
  wire [3:0]\q_reg[67]_1 ;
  wire [3:0]\q_reg[67]_2 ;
  wire [3:0]\q_reg[67]_3 ;
  wire \q_reg[78]_0 ;
  wire [0:0]\q_reg[78]_1 ;
  wire \q_reg[78]_2 ;
  wire [76:0]\q_reg[84]_0 ;
  wire [4:0]\q_reg[95]_0 ;
  wire reset;
  wire [3:1]\NLW_q_reg[31]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_24_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(\q_reg[50]_0 ),
        .I1(\q_reg[162]_0 [2]),
        .I2(\q_reg[162]_0 [3]),
        .I3(\q_reg[51]_0 ),
        .O(\q_reg[50]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_10
       (.I0(\q_reg[84]_0 [46]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[14]),
        .O(\q_reg[51]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_11
       (.I0(\q_reg[84]_0 [43]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[11]),
        .O(\q_reg[48]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_12
       (.I0(\q_reg[84]_0 [44]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[12]),
        .O(\q_reg[49]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_13
       (.I0(\q_reg[84]_0 [41]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[9]),
        .O(\q_reg[46]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_14
       (.I0(\q_reg[84]_0 [42]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[10]),
        .O(\q_reg[47]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_15
       (.I0(\q_reg[84]_0 [39]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[7]),
        .O(\q_reg[44]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_16
       (.I0(\q_reg[84]_0 [40]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[8]),
        .O(\q_reg[45]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(\q_reg[48]_0 ),
        .I1(\q_reg[162]_0 [0]),
        .I2(\q_reg[162]_0 [1]),
        .I3(\q_reg[49]_0 ),
        .O(\q_reg[50]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(\q_reg[46]_0 ),
        .I1(\q_reg[158]_0 [2]),
        .I2(\q_reg[158]_0 [3]),
        .I3(\q_reg[47]_0 ),
        .O(\q_reg[50]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(\q_reg[44]_0 ),
        .I1(\q_reg[158]_0 [0]),
        .I2(\q_reg[158]_0 [1]),
        .I3(\q_reg[45]_0 ),
        .O(\q_reg[50]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\q_reg[51]_0 ),
        .I1(\q_reg[162]_0 [3]),
        .I2(\q_reg[162]_0 [2]),
        .I3(\q_reg[50]_0 ),
        .O(\q_reg[51]_3 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\q_reg[49]_0 ),
        .I1(\q_reg[162]_0 [1]),
        .I2(\q_reg[162]_0 [0]),
        .I3(\q_reg[48]_0 ),
        .O(\q_reg[51]_3 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\q_reg[47]_0 ),
        .I1(\q_reg[158]_0 [3]),
        .I2(\q_reg[158]_0 [2]),
        .I3(\q_reg[46]_0 ),
        .O(\q_reg[51]_3 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\q_reg[45]_0 ),
        .I1(\q_reg[158]_0 [1]),
        .I2(\q_reg[158]_0 [0]),
        .I3(\q_reg[44]_0 ),
        .O(\q_reg[51]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_9
       (.I0(\q_reg[84]_0 [45]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[13]),
        .O(\q_reg[50]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(\q_reg[58]_1 ),
        .I1(\q_reg[170]_0 [2]),
        .I2(\q_reg[170]_0 [3]),
        .I3(\q_reg[59]_0 ),
        .O(\q_reg[58]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_10
       (.I0(\q_reg[84]_0 [54]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[22]),
        .O(\q_reg[59]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_11
       (.I0(\q_reg[84]_0 [51]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[19]),
        .O(\q_reg[56]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_12
       (.I0(\q_reg[84]_0 [52]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[20]),
        .O(\q_reg[57]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_13
       (.I0(\q_reg[84]_0 [49]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[17]),
        .O(\q_reg[54]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_14
       (.I0(\q_reg[84]_0 [50]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[18]),
        .O(\q_reg[55]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_15
       (.I0(\q_reg[84]_0 [47]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[15]),
        .O(\q_reg[52]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_16
       (.I0(\q_reg[84]_0 [48]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[16]),
        .O(\q_reg[53]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(\q_reg[56]_0 ),
        .I1(\q_reg[170]_0 [0]),
        .I2(\q_reg[170]_0 [1]),
        .I3(\q_reg[57]_0 ),
        .O(\q_reg[58]_2 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(\q_reg[54]_0 ),
        .I1(\q_reg[166]_0 [2]),
        .I2(\q_reg[166]_0 [3]),
        .I3(\q_reg[55]_0 ),
        .O(\q_reg[58]_2 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(\q_reg[52]_0 ),
        .I1(\q_reg[166]_0 [0]),
        .I2(\q_reg[166]_0 [1]),
        .I3(\q_reg[53]_0 ),
        .O(\q_reg[58]_2 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\q_reg[58]_1 ),
        .I1(\q_reg[170]_0 [2]),
        .I2(\q_reg[59]_0 ),
        .I3(\q_reg[170]_0 [3]),
        .O(\q_reg[58]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\q_reg[56]_0 ),
        .I1(\q_reg[170]_0 [0]),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[170]_0 [1]),
        .O(\q_reg[58]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\q_reg[54]_0 ),
        .I1(\q_reg[166]_0 [2]),
        .I2(\q_reg[55]_0 ),
        .I3(\q_reg[166]_0 [3]),
        .O(\q_reg[58]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\q_reg[52]_0 ),
        .I1(\q_reg[166]_0 [0]),
        .I2(\q_reg[53]_0 ),
        .I3(\q_reg[166]_0 [1]),
        .O(\q_reg[58]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_9
       (.I0(\q_reg[84]_0 [53]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[21]),
        .O(\q_reg[58]_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(\q_reg[66]_0 ),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[67]_0 ),
        .O(\q_reg[66]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_10
       (.I0(\q_reg[84]_0 [62]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[30]),
        .O(\q_reg[67]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_11
       (.I0(\q_reg[84]_0 [59]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[27]),
        .O(\q_reg[64]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_12
       (.I0(\q_reg[84]_0 [60]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[28]),
        .O(\q_reg[65]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_13
       (.I0(\q_reg[84]_0 [57]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[25]),
        .O(\q_reg[62]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_14
       (.I0(\q_reg[84]_0 [58]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[26]),
        .O(\q_reg[63]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_15
       (.I0(\q_reg[84]_0 [55]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[23]),
        .O(\q_reg[60]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_16
       (.I0(\q_reg[84]_0 [56]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[24]),
        .O(\q_reg[61]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(\q_reg[64]_0 ),
        .I1(\q_reg[178]_0 [0]),
        .I2(\q_reg[178]_0 [1]),
        .I3(\q_reg[65]_0 ),
        .O(\q_reg[66]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(\q_reg[62]_0 ),
        .I1(\q_reg[174]_0 [2]),
        .I2(\q_reg[174]_0 [3]),
        .I3(\q_reg[63]_0 ),
        .O(\q_reg[66]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(\q_reg[60]_0 ),
        .I1(\q_reg[174]_0 [0]),
        .I2(\q_reg[174]_0 [1]),
        .I3(\q_reg[61]_0 ),
        .O(\q_reg[66]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[178]_0 [3]),
        .I2(\q_reg[66]_0 ),
        .I3(\q_reg[178]_0 [2]),
        .O(\q_reg[67]_3 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[65]_0 ),
        .I2(\q_reg[64]_0 ),
        .I3(\q_reg[178]_0 [0]),
        .O(\q_reg[67]_3 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[63]_0 ),
        .I2(\q_reg[62]_0 ),
        .I3(\q_reg[174]_0 [2]),
        .O(\q_reg[67]_3 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[61]_0 ),
        .I2(\q_reg[60]_0 ),
        .I3(\q_reg[174]_0 [0]),
        .O(\q_reg[67]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_9
       (.I0(\q_reg[84]_0 [61]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[29]),
        .O(\q_reg[66]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(\q_reg[42]_0 ),
        .I1(\q_reg[154]_0 [2]),
        .I2(\q_reg[154]_0 [3]),
        .I3(\q_reg[43]_0 ),
        .O(\q_reg[42]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_10
       (.I0(\q_reg[84]_0 [38]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[6]),
        .O(\q_reg[43]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_11
       (.I0(\q_reg[84]_0 [35]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[3]),
        .O(\q_reg[40]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_12
       (.I0(\q_reg[84]_0 [36]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[4]),
        .O(\q_reg[41]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_13
       (.I0(\q_reg[84]_0 [33]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[1]),
        .O(\q_reg[38]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_14
       (.I0(\q_reg[84]_0 [34]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[2]),
        .O(\q_reg[39]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_15
       (.I0(\q_reg[84]_0 [31]),
        .I1(\q[120]_i_11_0 ),
        .I2(D),
        .O(\q_reg[36]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_16
       (.I0(\q_reg[84]_0 [32]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[0]),
        .O(\q_reg[37]_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[154]_0 [0]),
        .I2(\q_reg[154]_0 [1]),
        .I3(\q_reg[41]_0 ),
        .O(\q_reg[42]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(\q_reg[38]_0 ),
        .I1(DI[2]),
        .I2(DI[3]),
        .I3(\q_reg[39]_0 ),
        .O(\q_reg[42]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(\q_reg[36]_0 ),
        .I1(DI[0]),
        .I2(DI[1]),
        .I3(\q_reg[37]_0 ),
        .O(\q_reg[42]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[43]_0 ),
        .I2(\q_reg[42]_0 ),
        .I3(\q_reg[154]_0 [2]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[41]_0 ),
        .I2(\q_reg[154]_0 [0]),
        .I3(\q_reg[40]_0 ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(DI[3]),
        .I1(\q_reg[39]_0 ),
        .I2(DI[2]),
        .I3(\q_reg[38]_0 ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(DI[1]),
        .I1(\q_reg[37]_0 ),
        .I2(DI[0]),
        .I3(\q_reg[36]_0 ),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_9
       (.I0(\q_reg[84]_0 [37]),
        .I1(\q[120]_i_11_0 ),
        .I2(WriteDataE[5]),
        .O(\q_reg[42]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__0_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[7]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[7]),
        .I4(ForwardAE),
        .I5(Q[12]),
        .O(\q_reg[154]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__0_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[6]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[6]),
        .I4(ForwardAE),
        .I5(Q[11]),
        .O(\q_reg[154]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__0_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[5]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[5]),
        .I4(ForwardAE),
        .I5(Q[10]),
        .O(\q_reg[154]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__0_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[4]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[4]),
        .I4(ForwardAE),
        .I5(Q[9]),
        .O(\q_reg[154]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_5
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[84]_0 [38]),
        .O(\q_reg[43]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_6
       (.I0(\q_reg[154]_0 [2]),
        .I1(\q_reg[84]_0 [37]),
        .O(\q_reg[43]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_7
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[84]_0 [36]),
        .O(\q_reg[43]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_8
       (.I0(\q_reg[154]_0 [0]),
        .I1(\q_reg[84]_0 [35]),
        .O(\q_reg[43]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__1_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[11]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[11]),
        .I4(ForwardAE),
        .I5(Q[16]),
        .O(\q_reg[158]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__1_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[10]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[10]),
        .I4(ForwardAE),
        .I5(Q[15]),
        .O(\q_reg[158]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__1_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[9]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[9]),
        .I4(ForwardAE),
        .I5(Q[14]),
        .O(\q_reg[158]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__1_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[8]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[8]),
        .I4(ForwardAE),
        .I5(Q[13]),
        .O(\q_reg[158]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_5
       (.I0(\q_reg[158]_0 [3]),
        .I1(\q_reg[84]_0 [42]),
        .O(\q_reg[47]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_6
       (.I0(\q_reg[158]_0 [2]),
        .I1(\q_reg[84]_0 [41]),
        .O(\q_reg[47]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_7
       (.I0(\q_reg[158]_0 [1]),
        .I1(\q_reg[84]_0 [40]),
        .O(\q_reg[47]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_8
       (.I0(\q_reg[158]_0 [0]),
        .I1(\q_reg[84]_0 [39]),
        .O(\q_reg[47]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__2_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[15]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[15]),
        .I4(ForwardAE),
        .I5(Q[20]),
        .O(\q_reg[162]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__2_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[14]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[14]),
        .I4(ForwardAE),
        .I5(Q[19]),
        .O(\q_reg[162]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__2_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[13]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[13]),
        .I4(ForwardAE),
        .I5(Q[18]),
        .O(\q_reg[162]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__2_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[12]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[12]),
        .I4(ForwardAE),
        .I5(Q[17]),
        .O(\q_reg[162]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_5
       (.I0(\q_reg[162]_0 [3]),
        .I1(\q_reg[84]_0 [46]),
        .O(\q_reg[51]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_6
       (.I0(\q_reg[162]_0 [2]),
        .I1(\q_reg[84]_0 [45]),
        .O(\q_reg[51]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_7
       (.I0(\q_reg[162]_0 [1]),
        .I1(\q_reg[84]_0 [44]),
        .O(\q_reg[51]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_8
       (.I0(\q_reg[162]_0 [0]),
        .I1(\q_reg[84]_0 [43]),
        .O(\q_reg[51]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__3_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[19]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[19]),
        .I4(ForwardAE),
        .I5(Q[24]),
        .O(\q_reg[166]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__3_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[18]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[18]),
        .I4(ForwardAE),
        .I5(Q[23]),
        .O(\q_reg[166]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__3_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[17]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[17]),
        .I4(ForwardAE),
        .I5(Q[22]),
        .O(\q_reg[166]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__3_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[16]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[16]),
        .I4(ForwardAE),
        .I5(Q[21]),
        .O(\q_reg[166]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_5
       (.I0(\q_reg[166]_0 [3]),
        .I1(\q_reg[84]_0 [50]),
        .O(\q_reg[55]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_6
       (.I0(\q_reg[166]_0 [2]),
        .I1(\q_reg[84]_0 [49]),
        .O(\q_reg[55]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_7
       (.I0(\q_reg[166]_0 [1]),
        .I1(\q_reg[84]_0 [48]),
        .O(\q_reg[55]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_8
       (.I0(\q_reg[166]_0 [0]),
        .I1(\q_reg[84]_0 [47]),
        .O(\q_reg[55]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__4_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[23]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[23]),
        .I4(ForwardAE),
        .I5(Q[28]),
        .O(\q_reg[170]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__4_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[22]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[22]),
        .I4(ForwardAE),
        .I5(Q[27]),
        .O(\q_reg[170]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__4_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[21]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[21]),
        .I4(ForwardAE),
        .I5(Q[26]),
        .O(\q_reg[170]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__4_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[20]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[20]),
        .I4(ForwardAE),
        .I5(Q[25]),
        .O(\q_reg[170]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_5
       (.I0(\q_reg[170]_0 [3]),
        .I1(\q_reg[84]_0 [54]),
        .O(\q_reg[59]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_6
       (.I0(\q_reg[170]_0 [2]),
        .I1(\q_reg[84]_0 [53]),
        .O(\q_reg[59]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_7
       (.I0(\q_reg[170]_0 [1]),
        .I1(\q_reg[84]_0 [52]),
        .O(\q_reg[59]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_8
       (.I0(\q_reg[170]_0 [0]),
        .I1(\q_reg[84]_0 [51]),
        .O(\q_reg[59]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__5_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[27]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[27]),
        .I4(ForwardAE),
        .I5(Q[32]),
        .O(\q_reg[174]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__5_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[26]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[26]),
        .I4(ForwardAE),
        .I5(Q[31]),
        .O(\q_reg[174]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__5_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[25]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[25]),
        .I4(ForwardAE),
        .I5(Q[30]),
        .O(\q_reg[174]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__5_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[24]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[24]),
        .I4(ForwardAE),
        .I5(Q[29]),
        .O(\q_reg[174]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_5
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[84]_0 [58]),
        .O(\q_reg[63]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_6
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[84]_0 [57]),
        .O(\q_reg[63]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_7
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[84]_0 [56]),
        .O(\q_reg[63]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_8
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[84]_0 [55]),
        .O(\q_reg[63]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__6_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[30]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[30]),
        .I4(ForwardAE),
        .I5(Q[35]),
        .O(\q_reg[178]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    jalrTarget_carry__6_i_10
       (.I0(\q_reg[84]_0 [70]),
        .I1(\q[105]_i_3_0 [0]),
        .I2(\q_reg[84]_0 [74]),
        .I3(\q[105]_i_3_0 [4]),
        .O(jalrTarget_carry__6_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__6_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[29]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[29]),
        .I4(ForwardAE),
        .I5(Q[34]),
        .O(\q_reg[178]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry__6_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[28]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[28]),
        .I4(ForwardAE),
        .I5(Q[33]),
        .O(\q_reg[178]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_4
       (.I0(\q_reg[178]_0 [3]),
        .I1(\q_reg[84]_0 [62]),
        .O(\q_reg[67]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_5
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[84]_0 [61]),
        .O(\q_reg[67]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_6
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[84]_0 [60]),
        .O(\q_reg[67]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_7
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[84]_0 [59]),
        .O(\q_reg[67]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    jalrTarget_carry__6_i_8
       (.I0(jalrTarget_carry__6_i_9_n_0),
        .I1(ForwardAE11_out),
        .I2(ResultW[31]),
        .I3(RD1E[31]),
        .I4(ForwardAE),
        .I5(Q[36]),
        .O(\q_reg[178]_0 [3]));
  LUT6 #(
    .INIT(64'h8200000000000000)) 
    jalrTarget_carry__6_i_9
       (.I0(jalrTarget_carry_i_14_n_0),
        .I1(\q_reg[84]_0 [71]),
        .I2(\q[105]_i_3_0 [1]),
        .I3(RegWriteW),
        .I4(jalrTarget_carry__6_i_8_0),
        .I5(jalrTarget_carry__6_i_10_n_0),
        .O(jalrTarget_carry__6_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry_i_1
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[3]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[3]),
        .I4(ForwardAE),
        .I5(Q[8]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h3773777777777777)) 
    jalrTarget_carry_i_10
       (.I0(ForwardAE11_out),
        .I1(jalrTarget_carry_i_14_n_0),
        .I2(\q_reg[84]_0 [71]),
        .I3(\q[105]_i_3_0 [1]),
        .I4(RegWriteW),
        .I5(jalrTarget_carry__2_i_2_0),
        .O(jalrTarget_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000008000000000)) 
    jalrTarget_carry_i_11
       (.I0(jalrTarget_carry_i_14_n_0),
        .I1(\q_reg[78]_0 ),
        .I2(jalrTarget_carry__2_i_2_1),
        .I3(\q_reg[84]_0 [71]),
        .I4(Q[1]),
        .I5(\q_reg[78]_1 ),
        .O(ForwardAE));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    jalrTarget_carry_i_14
       (.I0(\q_reg[84]_0 [73]),
        .I1(\q_reg[84]_0 [70]),
        .I2(\q_reg[84]_0 [71]),
        .I3(\q_reg[84]_0 [74]),
        .I4(\q_reg[84]_0 [72]),
        .O(jalrTarget_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    jalrTarget_carry_i_15
       (.I0(\q_reg[84]_0 [70]),
        .I1(Q[0]),
        .I2(\q_reg[84]_0 [74]),
        .I3(Q[4]),
        .O(\q_reg[78]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry_i_2
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[2]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[2]),
        .I4(ForwardAE),
        .I5(Q[7]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry_i_3
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[1]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[1]),
        .I4(ForwardAE),
        .I5(Q[6]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    jalrTarget_carry_i_4
       (.I0(jalrTarget_carry_i_9_n_0),
        .I1(ResultW[0]),
        .I2(jalrTarget_carry_i_10_n_0),
        .I3(RD1E[0]),
        .I4(ForwardAE),
        .I5(Q[5]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_5
       (.I0(DI[3]),
        .I1(\q_reg[84]_0 [34]),
        .O(\q_reg[39]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_6
       (.I0(DI[2]),
        .I1(\q_reg[84]_0 [33]),
        .O(\q_reg[39]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_7
       (.I0(DI[1]),
        .I1(\q_reg[84]_0 [32]),
        .O(\q_reg[39]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_8
       (.I0(DI[0]),
        .I1(\q_reg[84]_0 [31]),
        .O(\q_reg[39]_2 [0]));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    jalrTarget_carry_i_9
       (.I0(\q_reg[84]_0 [71]),
        .I1(\q[105]_i_3_0 [1]),
        .I2(RegWriteW),
        .I3(jalrTarget_carry__2_i_2_0),
        .I4(ForwardAE11_out),
        .I5(jalrTarget_carry_i_14_n_0),
        .O(jalrTarget_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[100]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[26]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[26]),
        .I4(ForwardBE),
        .I5(Q[31]),
        .O(WriteDataE[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[101]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[27]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[27]),
        .I4(ForwardBE),
        .I5(Q[32]),
        .O(WriteDataE[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[102]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[28]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[28]),
        .I4(ForwardBE),
        .I5(Q[33]),
        .O(WriteDataE[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[103]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[29]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[29]),
        .I4(ForwardBE),
        .I5(Q[34]),
        .O(WriteDataE[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[104]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[30]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[30]),
        .I4(ForwardBE),
        .I5(Q[35]),
        .O(WriteDataE[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[105]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[31]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[31]),
        .I4(Q[36]),
        .I5(ForwardBE),
        .O(WriteDataE[30]));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    \q[105]_i_2 
       (.I0(\q[105]_i_3_0 [1]),
        .I1(Rs2E[1]),
        .I2(RegWriteW),
        .I3(\q[105]_i_5_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q[105]_i_6_n_0 ),
        .O(\q[105]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3773777777777777)) 
    \q[105]_i_3 
       (.I0(\hu/ForwardBE10_out ),
        .I1(\q[105]_i_6_n_0 ),
        .I2(\q[105]_i_3_0 [1]),
        .I3(Rs2E[1]),
        .I4(RegWriteW),
        .I5(\q[105]_i_5_n_0 ),
        .O(\q[105]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000008000000000)) 
    \q[105]_i_4 
       (.I0(\q[105]_i_6_n_0 ),
        .I1(\q_reg[105]_0 ),
        .I2(\q[105]_i_8_n_0 ),
        .I3(Q[1]),
        .I4(Rs2E[1]),
        .I5(\q_reg[78]_1 ),
        .O(ForwardBE));
  LUT5 #(
    .INIT(32'h90090000)) 
    \q[105]_i_5 
       (.I0(\q[105]_i_3_0 [4]),
        .I1(\q_reg[84]_0 [69]),
        .I2(\q_reg[84]_0 [68]),
        .I3(\q[105]_i_3_0 [0]),
        .I4(\q[78]_i_4_n_0 ),
        .O(\q[105]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[105]_i_6 
       (.I0(Rs2E[3]),
        .I1(\q_reg[84]_0 [68]),
        .I2(Rs2E[1]),
        .I3(\q_reg[84]_0 [69]),
        .I4(Rs2E[2]),
        .O(\q[105]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[105]_i_8 
       (.I0(Rs2E[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Rs2E[3]),
        .O(\q[105]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[106]_i_10 
       (.I0(DI[0]),
        .I1(\q_reg[166]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [0]),
        .O(\q[106]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \q[106]_i_2 
       (.I0(\q[106]_i_6_n_0 ),
        .I1(\q_reg[106]_0 ),
        .I2(\q[106]_i_8_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[107]_i_7_n_0 ),
        .I5(\q[106]_i_9_n_0 ),
        .O(\q_reg[11]_18 ));
  LUT6 #(
    .INIT(64'h3232320232020202)) 
    \q[106]_i_3 
       (.I0(\q_reg[109]_i_8_n_7 ),
        .I1(\q_reg[95]_0 [2]),
        .I2(\q_reg[95]_0 [1]),
        .I3(\q_reg[36]_0 ),
        .I4(\q_reg[95]_0 [0]),
        .I5(DI[0]),
        .O(\q_reg[13]_10 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \q[106]_i_4 
       (.I0(\q_reg[95]_0 [0]),
        .I1(\q_reg[95]_0 [3]),
        .I2(\q[106]_i_8_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[107]_i_7_n_0 ),
        .O(\q_reg[11]_17 ));
  LUT6 #(
    .INIT(64'h00000000487B7B48)) 
    \q[106]_i_6 
       (.I0(\q_reg[178]_1 ),
        .I1(\q_reg[95]_0 [0]),
        .I2(ovfE),
        .I3(\q_reg[36]_0 ),
        .I4(DI[0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q[106]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[106]_i_8 
       (.I0(\q_reg[38]_0 ),
        .I1(\q[110]_i_10_n_0 ),
        .I2(\q[106]_i_10_n_0 ),
        .I3(\q_reg[37]_0 ),
        .I4(\q[108]_i_9_n_0 ),
        .O(\q[106]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \q[106]_i_9 
       (.I0(\q[136]_i_10_n_0 ),
        .I1(\q[137]_i_11_n_0 ),
        .I2(\q_reg[95]_0 [1]),
        .I3(\q[107]_i_11_n_0 ),
        .O(\q[106]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[107]_i_10 
       (.I0(DI[1]),
        .I1(\q_reg[166]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [1]),
        .O(\q[107]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[107]_i_11 
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[39]_0 ),
        .I2(DI[0]),
        .O(\q[107]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    \q[107]_i_2 
       (.I0(\q_reg[107]_0 ),
        .I1(\q[107]_i_7_n_0 ),
        .I2(\q[136]_i_10_n_0 ),
        .I3(\q[137]_i_11_n_0 ),
        .I4(\q[107]_i_8_n_0 ),
        .I5(\q[107]_i_9_n_0 ),
        .O(\q_reg[11]_19 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[107]_i_3 
       (.I0(\q_reg[109]_i_8_n_6 ),
        .I1(\q_reg[37]_0 ),
        .I2(DI[1]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_19 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \q[107]_i_5 
       (.I0(\q[108]_i_8_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[108]_i_9_n_0 ),
        .I3(\q_reg[107]_2 ),
        .I4(\q[107]_i_7_n_0 ),
        .I5(\q_reg[107]_1 ),
        .O(\q_reg[37]_21 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[107]_i_7 
       (.I0(\q_reg[38]_0 ),
        .I1(\q[111]_i_10_n_0 ),
        .I2(\q[107]_i_10_n_0 ),
        .I3(\q_reg[37]_0 ),
        .I4(\q[109]_i_10_n_0 ),
        .O(\q[107]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[107]_i_8 
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[39]_0 ),
        .I2(DI[1]),
        .O(\q[107]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \q[107]_i_9 
       (.I0(\q[107]_i_11_n_0 ),
        .I1(\q[137]_i_11_n_0 ),
        .I2(\q[136]_i_12_n_0 ),
        .I3(\q[108]_i_7_n_0 ),
        .I4(\q[136]_i_16_n_0 ),
        .O(\q[107]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[108]_i_10 
       (.I0(\q[115]_i_10_n_0 ),
        .I1(\q[111]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[113]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[109]_i_11_n_0 ),
        .O(\q[108]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[108]_i_11 
       (.I0(DI[2]),
        .I1(\q_reg[166]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [2]),
        .O(\q[108]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCFECCFEFCCECCCE)) 
    \q[108]_i_2 
       (.I0(\q[109]_i_6_n_0 ),
        .I1(\q[108]_i_6_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[109]_i_7_n_0 ),
        .I5(\q[108]_i_7_n_0 ),
        .O(\q_reg[11]_20 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[108]_i_3 
       (.I0(\q_reg[109]_i_8_n_5 ),
        .I1(\q_reg[38]_0 ),
        .I2(DI[2]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_6 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \q[108]_i_5 
       (.I0(\q[108]_i_8_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[108]_i_9_n_0 ),
        .I3(\q_reg[107]_1 ),
        .I4(\q[108]_i_10_n_0 ),
        .I5(\q_reg[107]_2 ),
        .O(\q_reg[37]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[108]_i_6 
       (.I0(\q[137]_i_11_n_0 ),
        .I1(\q[136]_i_12_n_0 ),
        .I2(\q[107]_i_8_n_0 ),
        .O(\q[108]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[108]_i_7 
       (.I0(\q[114]_i_9_n_0 ),
        .I1(\q[110]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[112]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[108]_i_11_n_0 ),
        .O(\q[108]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[108]_i_8 
       (.I0(\q[114]_i_11_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[110]_i_10_n_0 ),
        .O(\q[108]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[108]_i_9 
       (.I0(\q[112]_i_10_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[108]_i_11_n_0 ),
        .O(\q[108]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[109]_i_10 
       (.I0(\q[113]_i_11_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[109]_i_11_n_0 ),
        .O(\q[109]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[109]_i_11 
       (.I0(DI[3]),
        .I1(\q_reg[166]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [3]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [3]),
        .O(\q[109]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[109]_i_2 
       (.I0(\q[109]_i_6_n_0 ),
        .I1(\q[110]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[110]_i_8_n_0 ),
        .I5(\q[109]_i_7_n_0 ),
        .O(\q_reg[11]_21 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[109]_i_3 
       (.I0(\q_reg[109]_i_8_n_4 ),
        .I1(\q_reg[39]_0 ),
        .I2(DI[3]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_17 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \q[109]_i_5 
       (.I0(\q[109]_i_9_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[109]_i_10_n_0 ),
        .I3(\q_reg[107]_1 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q_reg[107]_2 ),
        .O(\q_reg[37]_2 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \q[109]_i_6 
       (.I0(DI[2]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(DI[0]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[109]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[109]_i_7 
       (.I0(\q[115]_i_9_n_0 ),
        .I1(\q[111]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[113]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[109]_i_11_n_0 ),
        .O(\q[109]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[109]_i_9 
       (.I0(\q[115]_i_10_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[111]_i_10_n_0 ),
        .O(\q[109]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[110]_i_10 
       (.I0(\q_reg[154]_0 [0]),
        .I1(\q_reg[170]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [0]),
        .O(\q[110]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[110]_i_3 
       (.I0(\q[110]_i_8_n_0 ),
        .I1(\q[111]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[111]_i_8_n_0 ),
        .I5(\q[110]_i_9_n_0 ),
        .O(\q_reg[11]_22 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[110]_i_4 
       (.I0(\q_reg[113]_i_10_n_7 ),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[154]_0 [0]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_14 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[110]_i_6 
       (.I0(\q[116]_i_10_n_0 ),
        .I1(\q[112]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[114]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[110]_i_10_n_0 ),
        .O(\q_reg[37]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[110]_i_8 
       (.I0(\q[116]_i_9_n_0 ),
        .I1(\q[112]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[114]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[110]_i_10_n_0 ),
        .O(\q[110]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \q[110]_i_9 
       (.I0(DI[3]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(DI[1]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[110]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[111]_i_10 
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[170]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [1]),
        .O(\q[111]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[111]_i_3 
       (.I0(\q[111]_i_8_n_0 ),
        .I1(\q[112]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[112]_i_8_n_0 ),
        .I5(\q[111]_i_9_n_0 ),
        .O(\q_reg[11]_23 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[111]_i_4 
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[41]_0 ),
        .I2(\q_reg[113]_i_10_n_6 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_30 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[111]_i_6 
       (.I0(\q[117]_i_16_n_0 ),
        .I1(\q[113]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[115]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[111]_i_10_n_0 ),
        .O(\q_reg[37]_13 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[111]_i_8 
       (.I0(\q[117]_i_10_n_0 ),
        .I1(\q[113]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[115]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[111]_i_10_n_0 ),
        .O(\q[111]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[111]_i_9 
       (.I0(DI[0]),
        .I1(\q_reg[154]_0 [0]),
        .I2(\q[133]_i_14_n_0 ),
        .I3(DI[2]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[111]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[112]_i_10 
       (.I0(\q_reg[154]_0 [2]),
        .I1(\q_reg[170]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [2]),
        .O(\q[112]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[112]_i_3 
       (.I0(\q[112]_i_8_n_0 ),
        .I1(\q[113]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[113]_i_8_n_0 ),
        .I5(\q[112]_i_9_n_0 ),
        .O(\q_reg[11]_24 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[112]_i_4 
       (.I0(\q_reg[113]_i_10_n_5 ),
        .I1(\q_reg[154]_0 [2]),
        .I2(\q_reg[42]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[112]_i_6 
       (.I0(\q[118]_i_11_n_0 ),
        .I1(\q[114]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[116]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[112]_i_10_n_0 ),
        .O(\q_reg[37]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[112]_i_8 
       (.I0(\q[118]_i_9_n_0 ),
        .I1(\q[114]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[116]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[112]_i_10_n_0 ),
        .O(\q[112]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[112]_i_9 
       (.I0(DI[1]),
        .I1(\q_reg[154]_0 [1]),
        .I2(\q[133]_i_14_n_0 ),
        .I3(DI[3]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[112]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCFAFCFA0CFA0C0A)) 
    \q[113]_i_11 
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[170]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[162]_0 [3]),
        .I5(\q[128]_i_14_n_0 ),
        .O(\q[113]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \q[113]_i_12 
       (.I0(DI[2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[154]_0 [2]),
        .O(\q[113]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[113]_i_3 
       (.I0(\q[113]_i_8_n_0 ),
        .I1(\q[114]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[114]_i_6_n_0 ),
        .I5(\q[113]_i_9_n_0 ),
        .O(\q_reg[11]_25 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[113]_i_4 
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[43]_0 ),
        .I2(\q_reg[113]_i_10_n_4 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_23 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[113]_i_6 
       (.I0(\q[119]_i_11_n_0 ),
        .I1(\q[115]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[117]_i_16_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[113]_i_11_n_0 ),
        .O(\q_reg[37]_14 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[113]_i_8 
       (.I0(\q[119]_i_9_n_0 ),
        .I1(\q[115]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[117]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[113]_i_11_n_0 ),
        .O(\q[113]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[113]_i_9 
       (.I0(DI[0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[154]_0 [0]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[113]_i_12_n_0 ),
        .O(\q[113]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \q[114]_i_10 
       (.I0(DI[3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[154]_0 [3]),
        .O(\q[114]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[114]_i_11 
       (.I0(\q_reg[166]_0 [0]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [0]),
        .O(\q[114]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[114]_i_2 
       (.I0(\q[114]_i_6_n_0 ),
        .I1(\q[115]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[115]_i_6_n_0 ),
        .I5(\q[114]_i_7_n_0 ),
        .O(\q_reg[11]_26 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[114]_i_3 
       (.I0(\q_reg[117]_i_8_n_7 ),
        .I1(\q_reg[44]_0 ),
        .I2(\q_reg[158]_0 [0]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[114]_i_5 
       (.I0(\q_reg[37]_5 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[115]_i_8_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_32 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[114]_i_6 
       (.I0(\q[120]_i_9_n_0 ),
        .I1(\q[116]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[118]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[114]_i_9_n_0 ),
        .O(\q[114]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[114]_i_7 
       (.I0(DI[1]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[154]_0 [1]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[114]_i_10_n_0 ),
        .O(\q[114]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[114]_i_8 
       (.I0(\q[120]_i_11_n_0 ),
        .I1(\q[116]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[118]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[114]_i_11_n_0 ),
        .O(\q_reg[37]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[114]_i_9 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[158]_0 [0]),
        .I2(\q_reg[166]_0 [0]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[114]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[115]_i_10 
       (.I0(\q_reg[166]_0 [1]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [1]),
        .O(\q[115]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[115]_i_2 
       (.I0(\q[115]_i_6_n_0 ),
        .I1(\q[116]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[116]_i_6_n_0 ),
        .I5(\q[115]_i_7_n_0 ),
        .O(\q_reg[11]_27 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[115]_i_3 
       (.I0(\q_reg[45]_0 ),
        .I1(\q_reg[158]_0 [1]),
        .I2(\q_reg[117]_i_8_n_6 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_26 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[115]_i_5 
       (.I0(\q[115]_i_8_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[116]_i_8_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_33 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[115]_i_6 
       (.I0(\q[121]_i_13_n_0 ),
        .I1(\q[117]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[119]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[115]_i_9_n_0 ),
        .O(\q[115]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[115]_i_7 
       (.I0(DI[2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[154]_0 [2]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[117]_i_11_n_0 ),
        .O(\q[115]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[115]_i_8 
       (.I0(\q[121]_i_22_n_0 ),
        .I1(\q[117]_i_16_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[119]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[115]_i_10_n_0 ),
        .O(\q[115]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[115]_i_9 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[158]_0 [1]),
        .I2(\q_reg[166]_0 [1]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[115]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[116]_i_10 
       (.I0(\q_reg[166]_0 [2]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [2]),
        .O(\q[116]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[116]_i_2 
       (.I0(\q[116]_i_6_n_0 ),
        .I1(\q[117]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[117]_i_6_n_0 ),
        .I5(\q[116]_i_7_n_0 ),
        .O(\q_reg[11]_28 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[116]_i_3 
       (.I0(\q_reg[117]_i_8_n_5 ),
        .I1(\q_reg[46]_0 ),
        .I2(\q_reg[158]_0 [2]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[116]_i_5 
       (.I0(\q[116]_i_8_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[117]_i_9_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_34 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[116]_i_6 
       (.I0(\q[122]_i_14_n_0 ),
        .I1(\q[118]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[120]_i_9_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[116]_i_9_n_0 ),
        .O(\q[116]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[116]_i_7 
       (.I0(DI[3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[154]_0 [3]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[118]_i_10_n_0 ),
        .O(\q[116]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[116]_i_8 
       (.I0(\q[122]_i_10_n_0 ),
        .I1(\q[118]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[120]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[116]_i_10_n_0 ),
        .O(\q[116]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[116]_i_9 
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[158]_0 [2]),
        .I2(\q_reg[166]_0 [2]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[116]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[117]_i_10 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[158]_0 [3]),
        .I2(\q_reg[166]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[117]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[117]_i_11 
       (.I0(\q_reg[154]_0 [0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[158]_0 [0]),
        .I3(DI[0]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[117]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[117]_i_16 
       (.I0(\q_reg[166]_0 [3]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[174]_0 [3]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[158]_0 [3]),
        .O(\q[117]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[117]_i_2 
       (.I0(\q[117]_i_6_n_0 ),
        .I1(\q[118]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[118]_i_6_n_0 ),
        .I5(\q[117]_i_7_n_0 ),
        .O(\q_reg[11]_29 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[117]_i_3 
       (.I0(\q_reg[47]_0 ),
        .I1(\q_reg[158]_0 [3]),
        .I2(\q_reg[117]_i_8_n_4 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_24 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[117]_i_5 
       (.I0(\q[117]_i_9_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[118]_i_8_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_35 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[117]_i_6 
       (.I0(\q[121]_i_11_n_0 ),
        .I1(\q[119]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_13_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[117]_i_10_n_0 ),
        .O(\q[117]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[117]_i_7 
       (.I0(\q[117]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[119]_i_10_n_0 ),
        .O(\q[117]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[117]_i_9 
       (.I0(\q[123]_i_10_n_0 ),
        .I1(\q[119]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_22_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[117]_i_16_n_0 ),
        .O(\q[117]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[118]_i_10 
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[158]_0 [1]),
        .I3(DI[1]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[118]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[118]_i_11 
       (.I0(\q_reg[170]_0 [0]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [0]),
        .O(\q[118]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[118]_i_2 
       (.I0(\q[118]_i_6_n_0 ),
        .I1(\q[119]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[119]_i_6_n_0 ),
        .I5(\q[118]_i_7_n_0 ),
        .O(\q_reg[11]_30 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[118]_i_3 
       (.I0(\q_reg[121]_i_8_n_7 ),
        .I1(\q_reg[48]_0 ),
        .I2(\q_reg[162]_0 [0]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[118]_i_5 
       (.I0(\q[118]_i_8_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[119]_i_8_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_36 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[118]_i_6 
       (.I0(\q[122]_i_12_n_0 ),
        .I1(\q[120]_i_9_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[122]_i_14_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[118]_i_9_n_0 ),
        .O(\q[118]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[118]_i_7 
       (.I0(\q[118]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[120]_i_10_n_0 ),
        .O(\q[118]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[118]_i_8 
       (.I0(\q[124]_i_10_n_0 ),
        .I1(\q[120]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[122]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[118]_i_11_n_0 ),
        .O(\q[118]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[118]_i_9 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[162]_0 [0]),
        .I2(\q_reg[170]_0 [0]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[118]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[119]_i_10 
       (.I0(\q_reg[154]_0 [2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[158]_0 [2]),
        .I3(DI[2]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[119]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[119]_i_11 
       (.I0(\q_reg[170]_0 [1]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [1]),
        .O(\q[119]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[119]_i_2 
       (.I0(\q[119]_i_6_n_0 ),
        .I1(\q[120]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[120]_i_6_n_0 ),
        .I5(\q[119]_i_7_n_0 ),
        .O(\q_reg[11]_31 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[119]_i_3 
       (.I0(\q_reg[49]_0 ),
        .I1(\q_reg[162]_0 [1]),
        .I2(\q_reg[121]_i_8_n_6 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_28 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[119]_i_5 
       (.I0(\q[119]_i_8_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[120]_i_8_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_37 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[119]_i_6 
       (.I0(\q[121]_i_12_n_0 ),
        .I1(\q[121]_i_13_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[119]_i_9_n_0 ),
        .O(\q[119]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[119]_i_7 
       (.I0(\q[119]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[121]_i_14_n_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(\q[121]_i_15_n_0 ),
        .O(\q[119]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[119]_i_8 
       (.I0(\q[121]_i_21_n_0 ),
        .I1(\q[121]_i_22_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[123]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[119]_i_11_n_0 ),
        .O(\q[119]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[119]_i_9 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[162]_0 [1]),
        .I2(\q_reg[170]_0 [1]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[119]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[120]_i_10 
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[158]_0 [3]),
        .I3(DI[3]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[120]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0EFEFCFC0E0E0)) 
    \q[120]_i_11 
       (.I0(\q_reg[170]_0 [2]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[162]_0 [2]),
        .O(\q[120]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[120]_i_2 
       (.I0(\q[120]_i_6_n_0 ),
        .I1(\q[121]_i_7_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[121]_i_6_n_0 ),
        .I5(\q[120]_i_7_n_0 ),
        .O(\q_reg[11]_9 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[120]_i_3 
       (.I0(\q_reg[121]_i_8_n_5 ),
        .I1(\q_reg[50]_0 ),
        .I2(\q_reg[162]_0 [2]),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[120]_i_5 
       (.I0(\q[120]_i_8_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q[121]_i_9_n_0 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_38 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_6 
       (.I0(\q[122]_i_13_n_0 ),
        .I1(\q[122]_i_14_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[122]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[120]_i_9_n_0 ),
        .O(\q[120]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[120]_i_7 
       (.I0(\q[120]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[122]_i_15_n_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(\q[126]_i_13_n_0 ),
        .O(\q[120]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_8 
       (.I0(\q[126]_i_11_n_0 ),
        .I1(\q[122]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[124]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[120]_i_11_n_0 ),
        .O(\q[120]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[120]_i_9 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[162]_0 [2]),
        .I2(\q_reg[170]_0 [2]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[120]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_10 
       (.I0(\q_reg[170]_0 [1]),
        .I1(\q_reg[178]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_11 
       (.I0(\q_reg[166]_0 [1]),
        .I1(\q_reg[174]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_12 
       (.I0(\q_reg[166]_0 [3]),
        .I1(\q_reg[174]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00CCF0EE)) 
    \q[121]_i_13 
       (.I0(\q_reg[162]_0 [3]),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[170]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[121]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_14 
       (.I0(\q_reg[158]_0 [0]),
        .I1(DI[0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_15 
       (.I0(\q_reg[162]_0 [0]),
        .I1(\q_reg[154]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[121]_i_16 
       (.I0(\q_reg[158]_0 [2]),
        .I1(DI[2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[121]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[121]_i_2 
       (.I0(\q[121]_i_6_n_0 ),
        .I1(\q[122]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[122]_i_8_n_0 ),
        .I5(\q[121]_i_7_n_0 ),
        .O(\q_reg[11]_10 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[121]_i_21 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[166]_0 [3]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[121]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[121]_i_22 
       (.I0(\q_reg[170]_0 [3]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[162]_0 [3]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[121]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[121]_i_3 
       (.I0(\q_reg[51]_0 ),
        .I1(\q_reg[162]_0 [3]),
        .I2(\q_reg[121]_i_8_n_4 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[121]_i_5 
       (.I0(\q[121]_i_9_n_0 ),
        .I1(\q_reg[107]_1 ),
        .I2(\q_reg[37]_6 ),
        .I3(\q_reg[107]_2 ),
        .O(\q_reg[11]_39 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_6 
       (.I0(\q[121]_i_10_n_0 ),
        .I1(\q[121]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[121]_i_13_n_0 ),
        .O(\q[121]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_7 
       (.I0(\q[121]_i_14_n_0 ),
        .I1(\q[121]_i_15_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_16_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[127]_i_13_n_0 ),
        .O(\q[121]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_9 
       (.I0(\q[127]_i_11_n_0 ),
        .I1(\q[123]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[121]_i_21_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[121]_i_22_n_0 ),
        .O(\q[121]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[122]_i_10 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[166]_0 [0]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[122]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_11 
       (.I0(\q_reg[170]_0 [2]),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_12 
       (.I0(\q_reg[166]_0 [2]),
        .I1(\q_reg[174]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_13 
       (.I0(\q_reg[170]_0 [0]),
        .I1(\q_reg[178]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_14 
       (.I0(\q_reg[166]_0 [0]),
        .I1(\q_reg[174]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_15 
       (.I0(\q_reg[158]_0 [1]),
        .I1(DI[1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[122]_i_16 
       (.I0(\q_reg[158]_0 [3]),
        .I1(DI[3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[122]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[122]_i_3 
       (.I0(\q[122]_i_8_n_0 ),
        .I1(\q[123]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[123]_i_8_n_0 ),
        .I5(\q[122]_i_9_n_0 ),
        .O(\q_reg[11]_11 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[122]_i_4 
       (.I0(\q_reg[125]_i_10_n_7 ),
        .I1(\q_reg[166]_0 [0]),
        .I2(\q_reg[52]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_6 
       (.I0(\q[128]_i_11_n_0 ),
        .I1(\q[124]_i_10_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[126]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[122]_i_10_n_0 ),
        .O(\q_reg[37]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_8 
       (.I0(\q[122]_i_11_n_0 ),
        .I1(\q[122]_i_12_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[122]_i_13_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[122]_i_14_n_0 ),
        .O(\q[122]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_9 
       (.I0(\q[122]_i_15_n_0 ),
        .I1(\q[126]_i_13_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[122]_i_16_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[128]_i_13_n_0 ),
        .O(\q[122]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[123]_i_10 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[166]_0 [1]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[123]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[123]_i_11 
       (.I0(\q_reg[170]_0 [1]),
        .I1(\q_reg[178]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[121]_i_11_n_0 ),
        .O(\q[123]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[123]_i_12 
       (.I0(\q_reg[158]_0 [2]),
        .I1(DI[2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[127]_i_13_n_0 ),
        .O(\q[123]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[123]_i_3 
       (.I0(\q[123]_i_8_n_0 ),
        .I1(\q[124]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[124]_i_8_n_0 ),
        .I5(\q[123]_i_9_n_0 ),
        .O(\q_reg[11]_12 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[123]_i_4 
       (.I0(\q_reg[125]_i_10_n_6 ),
        .I1(\q_reg[166]_0 [1]),
        .I2(\q_reg[53]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_20 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[123]_i_6 
       (.I0(\q[127]_i_11_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[123]_i_10_n_0 ),
        .I3(\q[125]_i_12_n_0 ),
        .I4(\q_reg[37]_0 ),
        .O(\q_reg[38]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[123]_i_8 
       (.I0(\q[125]_i_13_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[123]_i_11_n_0 ),
        .O(\q[123]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[123]_i_9 
       (.I0(\q[123]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[125]_i_14_n_0 ),
        .O(\q[123]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[124]_i_10 
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[166]_0 [2]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[124]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \q[124]_i_11 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[126]_i_11_n_0 ),
        .O(\q[124]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[124]_i_12 
       (.I0(\q_reg[170]_0 [2]),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[122]_i_12_n_0 ),
        .O(\q[124]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[124]_i_13 
       (.I0(\q_reg[158]_0 [3]),
        .I1(DI[3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[128]_i_13_n_0 ),
        .O(\q[124]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[124]_i_14 
       (.I0(\q_reg[162]_0 [1]),
        .I1(\q_reg[154]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[130]_i_12_n_0 ),
        .O(\q[124]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[124]_i_3 
       (.I0(\q[124]_i_8_n_0 ),
        .I1(\q[125]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[125]_i_8_n_0 ),
        .I5(\q[124]_i_9_n_0 ),
        .O(\q_reg[11]_13 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[124]_i_4 
       (.I0(\q_reg[125]_i_10_n_5 ),
        .I1(\q_reg[166]_0 [2]),
        .I2(\q_reg[54]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_7 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \q[124]_i_6 
       (.I0(\q[128]_i_11_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q[124]_i_10_n_0 ),
        .I3(\q[124]_i_11_n_0 ),
        .I4(\q_reg[37]_0 ),
        .O(\q_reg[38]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[124]_i_8 
       (.I0(\q[126]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[124]_i_12_n_0 ),
        .O(\q[124]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[124]_i_9 
       (.I0(\q[124]_i_13_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[124]_i_14_n_0 ),
        .O(\q[124]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \q[125]_i_11 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[127]_i_11_n_0 ),
        .O(\q[125]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \q[125]_i_12 
       (.I0(\q_reg[170]_0 [3]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[121]_i_21_n_0 ),
        .O(\q[125]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BB88B8B8)) 
    \q[125]_i_13 
       (.I0(\q[125]_i_20_n_0 ),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[166]_0 [3]),
        .I3(\q_reg[174]_0 [3]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[125]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[125]_i_14 
       (.I0(\q_reg[162]_0 [0]),
        .I1(\q_reg[154]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[129]_i_13_n_0 ),
        .O(\q[125]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[125]_i_15 
       (.I0(\q_reg[162]_0 [2]),
        .I1(\q_reg[154]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[131]_i_12_n_0 ),
        .O(\q[125]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[125]_i_20 
       (.I0(\q_reg[170]_0 [3]),
        .I1(\q_reg[178]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[125]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[125]_i_3 
       (.I0(\q[125]_i_8_n_0 ),
        .I1(\q[126]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[126]_i_8_n_0 ),
        .I5(\q[125]_i_9_n_0 ),
        .O(\q_reg[11]_14 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[125]_i_4 
       (.I0(\q_reg[125]_i_10_n_4 ),
        .I1(\q_reg[166]_0 [3]),
        .I2(\q_reg[55]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[125]_i_6 
       (.I0(\q[125]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[125]_i_12_n_0 ),
        .O(\q_reg[37]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[125]_i_8 
       (.I0(\q[127]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[125]_i_13_n_0 ),
        .O(\q[125]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[125]_i_9 
       (.I0(\q[125]_i_14_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[125]_i_15_n_0 ),
        .O(\q[125]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[126]_i_10 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .O(\q[126]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[126]_i_11 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[170]_0 [0]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[126]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[126]_i_12 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[170]_0 [0]),
        .I3(\q_reg[178]_0 [0]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[126]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[126]_i_13 
       (.I0(\q_reg[162]_0 [1]),
        .I1(\q_reg[154]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[126]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[126]_i_3 
       (.I0(\q[126]_i_8_n_0 ),
        .I1(\q[127]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[127]_i_8_n_0 ),
        .I5(\q[126]_i_9_n_0 ),
        .O(\q_reg[11]_15 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[126]_i_4 
       (.I0(\q_reg[129]_i_10_n_7 ),
        .I1(\q_reg[170]_0 [0]),
        .I2(\q_reg[56]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_15 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_6 
       (.I0(\q[128]_i_10_n_0 ),
        .I1(\q[128]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[126]_i_10_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[126]_i_11_n_0 ),
        .O(\q_reg[37]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[126]_i_8 
       (.I0(\q[128]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[126]_i_12_n_0 ),
        .O(\q[126]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_9 
       (.I0(\q[126]_i_13_n_0 ),
        .I1(\q[130]_i_12_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[128]_i_13_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[132]_i_11_n_0 ),
        .O(\q[126]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[127]_i_10 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .O(\q[127]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[127]_i_11 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[170]_0 [1]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[127]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[127]_i_12 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[170]_0 [1]),
        .I3(\q_reg[178]_0 [1]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[127]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[127]_i_13 
       (.I0(\q_reg[162]_0 [2]),
        .I1(\q_reg[154]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[127]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[127]_i_3 
       (.I0(\q[127]_i_8_n_0 ),
        .I1(\q[128]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[128]_i_8_n_0 ),
        .I5(\q[127]_i_9_n_0 ),
        .O(\q_reg[11]_16 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[127]_i_4 
       (.I0(\q_reg[129]_i_10_n_6 ),
        .I1(\q_reg[170]_0 [1]),
        .I2(\q_reg[57]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_21 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[127]_i_6 
       (.I0(\q[129]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[127]_i_10_n_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(\q[127]_i_11_n_0 ),
        .O(\q_reg[37]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[127]_i_8 
       (.I0(\q[129]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[127]_i_12_n_0 ),
        .O(\q[127]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[127]_i_9 
       (.I0(\q[127]_i_13_n_0 ),
        .I1(\q[131]_i_12_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[129]_i_13_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[133]_i_13_n_0 ),
        .O(\q[127]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \q[128]_i_10 
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .O(\q[128]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0B08)) 
    \q[128]_i_11 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[170]_0 [2]),
        .I4(\q[128]_i_14_n_0 ),
        .O(\q[128]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[128]_i_12 
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[170]_0 [2]),
        .I3(\q_reg[178]_0 [2]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[128]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \q[128]_i_13 
       (.I0(\q_reg[162]_0 [3]),
        .I1(\q_reg[154]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[40]_0 ),
        .O(\q[128]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \q[128]_i_14 
       (.I0(WriteDataE[3]),
        .I1(\q[120]_i_11_0 ),
        .I2(\q_reg[84]_0 [35]),
        .I3(\q_reg[178]_0 [3]),
        .O(\q[128]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[128]_i_3 
       (.I0(\q[128]_i_8_n_0 ),
        .I1(\q[129]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[129]_i_8_n_0 ),
        .I5(\q[128]_i_9_n_0 ),
        .O(\q_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[128]_i_4 
       (.I0(\q_reg[129]_i_10_n_5 ),
        .I1(\q_reg[170]_0 [2]),
        .I2(\q_reg[58]_1 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[128]_i_6 
       (.I0(\q[130]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[128]_i_10_n_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(\q[128]_i_11_n_0 ),
        .O(\q_reg[37]_8 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[128]_i_8 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[174]_0 [0]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[128]_i_12_n_0 ),
        .O(\q[128]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[128]_i_9 
       (.I0(\q[128]_i_13_n_0 ),
        .I1(\q[132]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[130]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[134]_i_12_n_0 ),
        .O(\q[128]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[129]_i_11 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[170]_0 [3]),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[39]_0 ),
        .O(\q[129]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[129]_i_12 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[170]_0 [3]),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[39]_0 ),
        .I5(\q_reg[40]_0 ),
        .O(\q[129]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[129]_i_13 
       (.I0(DI[0]),
        .I1(\q_reg[166]_0 [0]),
        .I2(\q_reg[158]_0 [0]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[129]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[129]_i_3 
       (.I0(\q[129]_i_8_n_0 ),
        .I1(\q[130]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[130]_i_8_n_0 ),
        .I5(\q[129]_i_9_n_0 ),
        .O(\q_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[129]_i_4 
       (.I0(\q_reg[129]_i_10_n_4 ),
        .I1(\q_reg[170]_0 [3]),
        .I2(\q_reg[59]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[129]_i_6 
       (.I0(\q[131]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[129]_i_11_n_0 ),
        .O(\q_reg[37]_17 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[129]_i_8 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[174]_0 [1]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[129]_i_12_n_0 ),
        .O(\q[129]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[129]_i_9 
       (.I0(\q[129]_i_13_n_0 ),
        .I1(\q[133]_i_13_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[131]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[135]_i_11_n_0 ),
        .O(\q[129]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[130]_i_10 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[174]_0 [0]),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[39]_0 ),
        .O(\q[130]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \q[130]_i_11 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[174]_0 [0]),
        .O(\q[130]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[130]_i_12 
       (.I0(DI[1]),
        .I1(\q_reg[166]_0 [1]),
        .I2(\q_reg[158]_0 [1]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[130]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[130]_i_3 
       (.I0(\q[130]_i_8_n_0 ),
        .I1(\q[131]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[131]_i_8_n_0 ),
        .I5(\q[130]_i_9_n_0 ),
        .O(\q_reg[11]_3 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[130]_i_4 
       (.I0(\q_reg[133]_i_10_n_7 ),
        .I1(\q_reg[174]_0 [0]),
        .I2(\q_reg[60]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[130]_i_6 
       (.I0(\q[132]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[130]_i_10_n_0 ),
        .O(\q_reg[37]_9 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[130]_i_8 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[174]_0 [2]),
        .I4(\q_reg[37]_0 ),
        .I5(\q[130]_i_11_n_0 ),
        .O(\q[130]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[130]_i_9 
       (.I0(\q[130]_i_12_n_0 ),
        .I1(\q[134]_i_12_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[132]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[130]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[131]_i_10 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[174]_0 [1]),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[39]_0 ),
        .O(\q[131]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h000B0008)) 
    \q[131]_i_11 
       (.I0(\q_reg[178]_0 [3]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[174]_0 [3]),
        .O(\q[131]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[131]_i_12 
       (.I0(DI[2]),
        .I1(\q_reg[166]_0 [2]),
        .I2(\q_reg[158]_0 [2]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[131]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[131]_i_3 
       (.I0(\q[131]_i_8_n_0 ),
        .I1(\q[132]_i_8_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[132]_i_9_n_0 ),
        .I5(\q[131]_i_9_n_0 ),
        .O(\q_reg[11]_4 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[131]_i_4 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[61]_0 ),
        .I2(\q_reg[133]_i_10_n_6 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[131]_i_6 
       (.I0(\q[133]_i_12_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[131]_i_10_n_0 ),
        .O(\q_reg[37]_18 ));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    \q[131]_i_8 
       (.I0(\q[131]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q_reg[178]_0 [1]),
        .I3(\q_reg[38]_0 ),
        .I4(\q[133]_i_14_n_0 ),
        .I5(\q_reg[174]_0 [1]),
        .O(\q[131]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[131]_i_9 
       (.I0(\q[131]_i_12_n_0 ),
        .I1(\q[135]_i_11_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[133]_i_13_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_19_n_0 ),
        .O(\q[131]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[132]_i_10 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[38]_0 ),
        .I2(\q_reg[174]_0 [2]),
        .I3(\q_reg[40]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[39]_0 ),
        .O(\q[132]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[132]_i_11 
       (.I0(DI[3]),
        .I1(\q_reg[166]_0 [3]),
        .I2(\q_reg[158]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[132]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[132]_i_3 
       (.I0(\q[132]_i_8_n_0 ),
        .I1(\q[133]_i_8_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[133]_i_9_n_0 ),
        .I5(\q[132]_i_9_n_0 ),
        .O(\q_reg[11]_5 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[132]_i_4 
       (.I0(\q_reg[133]_i_10_n_5 ),
        .I1(\q_reg[174]_0 [2]),
        .I2(\q_reg[62]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[132]_i_6 
       (.I0(\q[134]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[132]_i_10_n_0 ),
        .O(\q_reg[37]_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[132]_i_8 
       (.I0(\q[132]_i_11_n_0 ),
        .I1(\q[136]_i_15_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[134]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_15_n_0 ),
        .O(\q[132]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[132]_i_9 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[174]_0 [2]),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[178]_0 [0]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[132]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[133]_i_11 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[38]_0 ),
        .O(\q[133]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[133]_i_12 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[38]_0 ),
        .O(\q[133]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[133]_i_13 
       (.I0(\q_reg[154]_0 [0]),
        .I1(\q_reg[170]_0 [0]),
        .I2(\q_reg[162]_0 [0]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[133]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \q[133]_i_14 
       (.I0(WriteDataE[2]),
        .I1(\q_reg[84]_0 [34]),
        .I2(WriteDataE[3]),
        .I3(\q[120]_i_11_0 ),
        .I4(\q_reg[84]_0 [35]),
        .O(\q[133]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[133]_i_3 
       (.I0(\q[133]_i_8_n_0 ),
        .I1(\q[134]_i_8_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[134]_i_9_n_0 ),
        .I5(\q[133]_i_9_n_0 ),
        .O(\q_reg[11]_6 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[133]_i_4 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[63]_0 ),
        .I2(\q_reg[133]_i_10_n_4 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_25 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[133]_i_6 
       (.I0(\q[133]_i_11_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[133]_i_12_n_0 ),
        .O(\q_reg[37]_19 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[133]_i_8 
       (.I0(\q[133]_i_13_n_0 ),
        .I1(\q[137]_i_19_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[135]_i_11_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_17_n_0 ),
        .O(\q[133]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[133]_i_9 
       (.I0(\q_reg[178]_0 [3]),
        .I1(\q_reg[174]_0 [3]),
        .I2(\q[133]_i_14_n_0 ),
        .I3(\q_reg[178]_0 [1]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[133]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[134]_i_10 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[38]_0 ),
        .O(\q[134]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \q[134]_i_11 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[38]_0 ),
        .O(\q[134]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[134]_i_12 
       (.I0(\q_reg[154]_0 [1]),
        .I1(\q_reg[170]_0 [1]),
        .I2(\q_reg[162]_0 [1]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[134]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[134]_i_3 
       (.I0(\q[134]_i_8_n_0 ),
        .I1(\q[135]_i_9_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[135]_i_10_n_0 ),
        .I5(\q[134]_i_9_n_0 ),
        .O(\q_reg[11]_7 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[134]_i_4 
       (.I0(\q_reg[137]_i_12_n_7 ),
        .I1(\q_reg[178]_0 [0]),
        .I2(\q_reg[64]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[134]_i_6 
       (.I0(\q[134]_i_10_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[134]_i_11_n_0 ),
        .O(\q_reg[37]_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[134]_i_8 
       (.I0(\q[134]_i_12_n_0 ),
        .I1(\q[137]_i_15_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[136]_i_15_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_13_n_0 ),
        .O(\q[134]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \q[134]_i_9 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [2]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[134]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \q[135]_i_10 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[40]_0 ),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[178]_0 [3]),
        .I4(\q_reg[37]_0 ),
        .I5(\q_reg[38]_0 ),
        .O(\q[135]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[135]_i_11 
       (.I0(\q_reg[154]_0 [2]),
        .I1(\q_reg[170]_0 [2]),
        .I2(\q_reg[162]_0 [2]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[135]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFFECCFECFCECCCE)) 
    \q[135]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q[135]_i_8_n_0 ),
        .I2(\q_reg[95]_0 [0]),
        .I3(\q_reg[36]_0 ),
        .I4(\q[135]_i_9_n_0 ),
        .I5(\q[135]_i_10_n_0 ),
        .O(\q_reg[11]_8 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[135]_i_4 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[65]_0 ),
        .I2(\q_reg[137]_i_12_n_6 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_29 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[135]_i_6 
       (.I0(\q_reg[37]_0 ),
        .I1(\q_reg[178]_0 [1]),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[38]_0 ),
        .O(\q_reg[37]_20 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \q[135]_i_8 
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[178]_0 [2]),
        .I3(\q[137]_i_11_n_0 ),
        .I4(\q[136]_i_16_n_0 ),
        .O(\q[135]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[135]_i_9 
       (.I0(\q[135]_i_11_n_0 ),
        .I1(\q[137]_i_17_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[137]_i_19_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_20_n_0 ),
        .O(\q[135]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h001D)) 
    \q[136]_i_10 
       (.I0(D),
        .I1(\q[120]_i_11_0 ),
        .I2(\q_reg[84]_0 [31]),
        .I3(\q_reg[95]_0 [0]),
        .O(\q[136]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \q[136]_i_11 
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[178]_0 [2]),
        .I3(\q_reg[107]_0 ),
        .I4(\q[137]_i_11_n_0 ),
        .O(\q[136]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[136]_i_12 
       (.I0(D),
        .I1(\q[120]_i_11_0 ),
        .I2(\q_reg[84]_0 [31]),
        .I3(\q_reg[95]_0 [0]),
        .O(\q[136]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[136]_i_13 
       (.I0(\q[136]_i_15_n_0 ),
        .I1(\q[137]_i_13_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[137]_i_15_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_16_n_0 ),
        .O(\q[136]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[136]_i_14 
       (.I0(\q[136]_i_16_n_0 ),
        .I1(\q[137]_i_11_n_0 ),
        .I2(\q[137]_i_10_n_0 ),
        .O(\q[136]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \q[136]_i_15 
       (.I0(\q_reg[154]_0 [3]),
        .I1(\q_reg[170]_0 [3]),
        .I2(\q_reg[162]_0 [3]),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[40]_0 ),
        .O(\q[136]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \q[136]_i_16 
       (.I0(D),
        .I1(\q[120]_i_11_0 ),
        .I2(\q_reg[84]_0 [31]),
        .I3(\q_reg[95]_0 [0]),
        .O(\q[136]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \q[136]_i_3 
       (.I0(\q[136]_i_10_n_0 ),
        .I1(\q[137]_i_9_n_0 ),
        .I2(\q[136]_i_11_n_0 ),
        .I3(\q[136]_i_12_n_0 ),
        .I4(\q[136]_i_13_n_0 ),
        .I5(\q[136]_i_14_n_0 ),
        .O(\q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[136]_i_4 
       (.I0(\q_reg[137]_i_12_n_5 ),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[66]_0 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_1 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[136]_i_7 
       (.I0(\q_reg[37]_0 ),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[40]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[178]_0 [3]),
        .I5(\q_reg[38]_0 ),
        .O(\q_reg[37]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \q[137]_i_10 
       (.I0(\q_reg[40]_0 ),
        .I1(\q_reg[39]_0 ),
        .I2(\q_reg[178]_0 [3]),
        .O(\q[137]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[137]_i_11 
       (.I0(\q_reg[37]_0 ),
        .I1(\q_reg[38]_0 ),
        .O(\q[137]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_13 
       (.I0(\q_reg[174]_0 [3]),
        .I1(\q_reg[158]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(DI[3]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[166]_0 [3]),
        .O(\q[137]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_14 
       (.I0(\q_reg[178]_0 [3]),
        .I1(\q_reg[162]_0 [3]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[154]_0 [3]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[170]_0 [3]),
        .O(\q[137]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_15 
       (.I0(\q_reg[174]_0 [1]),
        .I1(\q_reg[158]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(DI[1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[166]_0 [1]),
        .O(\q[137]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_16 
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[162]_0 [1]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[154]_0 [1]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[170]_0 [1]),
        .O(\q[137]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_17 
       (.I0(\q_reg[174]_0 [2]),
        .I1(\q_reg[158]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(DI[2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[166]_0 [2]),
        .O(\q[137]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_18 
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[162]_0 [2]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[154]_0 [2]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[170]_0 [2]),
        .O(\q[137]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_19 
       (.I0(\q_reg[174]_0 [0]),
        .I1(\q_reg[158]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(DI[0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[166]_0 [0]),
        .O(\q[137]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[137]_i_20 
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[162]_0 [0]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[154]_0 [0]),
        .I4(\q_reg[40]_0 ),
        .I5(\q_reg[170]_0 [0]),
        .O(\q[137]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA0000CCAA)) 
    \q[137]_i_4 
       (.I0(\q[137]_i_8_n_0 ),
        .I1(\q[137]_i_9_n_0 ),
        .I2(\q[137]_i_10_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q[137]_i_11_n_0 ),
        .O(\q_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h000000F000F066F0)) 
    \q[137]_i_5 
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[178]_0 [3]),
        .I2(\q_reg[178]_1 ),
        .I3(\q_reg[95]_0 [2]),
        .I4(\q_reg[95]_0 [0]),
        .I5(\q_reg[95]_0 [1]),
        .O(\q_reg[13]_31 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \q[137]_i_8 
       (.I0(\q[137]_i_13_n_0 ),
        .I1(\q[137]_i_14_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[137]_i_15_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_16_n_0 ),
        .O(\q[137]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \q[137]_i_9 
       (.I0(\q[137]_i_17_n_0 ),
        .I1(\q[137]_i_18_n_0 ),
        .I2(\q_reg[37]_0 ),
        .I3(\q[137]_i_19_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[137]_i_20_n_0 ),
        .O(\q[137]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[28]_i_1__0 
       (.I0(PCSrcE),
        .I1(O[0]),
        .I2(PCPlus4F[0]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31]_0 [0]),
        .O(\q_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[29]_i_1__0 
       (.I0(PCSrcE),
        .I1(O[1]),
        .I2(PCPlus4F[1]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31]_0 [1]),
        .O(\q_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[30]_i_1__0 
       (.I0(PCSrcE),
        .I1(O[2]),
        .I2(PCPlus4F[2]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31]_0 [2]),
        .O(\q_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_14 
       (.I0(\q_reg[84]_0 [66]),
        .I1(\q[31]_i_6_0 [8]),
        .I2(\q[31]_i_6_0 [9]),
        .I3(\q_reg[84]_0 [67]),
        .I4(\q[31]_i_6_0 [7]),
        .I5(\q_reg[84]_0 [65]),
        .O(\q[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \q[31]_i_1__1 
       (.I0(PCReady),
        .I1(\q_reg[18]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[31]_i_2 
       (.I0(PCSrcE),
        .I1(O[3]),
        .I2(PCPlus4F[3]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31]_0 [3]),
        .O(\q_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h1DE2)) 
    \q[31]_i_23 
       (.I0(WriteDataE[30]),
        .I1(\q[120]_i_11_0 ),
        .I2(\q_reg[84]_0 [62]),
        .I3(\q_reg[95]_0 [0]),
        .O(condinvb__0));
  LUT6 #(
    .INIT(64'hA88888A888888888)) 
    \q[31]_i_3 
       (.I0(\q_reg[95]_0 [4]),
        .I1(\q[31]_i_6_n_0 ),
        .I2(\q[31]_i_7_n_0 ),
        .I3(\q_reg[84]_0 [65]),
        .I4(\q[31]_i_6_0 [2]),
        .I5(\q[31]_i_8_n_0 ),
        .O(\q_reg[18]_0 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    \q[31]_i_6 
       (.I0(\q_reg[84]_0 [63]),
        .I1(\q[31]_i_6_0 [5]),
        .I2(\q_reg[84]_0 [64]),
        .I3(\q[31]_i_6_0 [6]),
        .I4(\q[31]_i_14_n_0 ),
        .O(\q[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_7 
       (.I0(\q_reg[84]_0 [64]),
        .I1(\q[31]_i_6_0 [1]),
        .I2(\q[31]_i_6_0 [0]),
        .I3(\q_reg[84]_0 [63]),
        .O(\q[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_8 
       (.I0(\q_reg[84]_0 [66]),
        .I1(\q[31]_i_6_0 [3]),
        .I2(\q[31]_i_6_0 [4]),
        .I3(\q_reg[84]_0 [67]),
        .O(\q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[74]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[0]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[0]),
        .I4(ForwardBE),
        .I5(Q[5]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \q[75]_i_1__1 
       (.I0(\q[78]_i_2_n_0 ),
        .I1(\hu/ForwardBE10_out ),
        .I2(ResultW[1]),
        .I3(RD2E[1]),
        .I4(ForwardBE),
        .I5(Q[6]),
        .O(WriteDataE[0]));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \q[76]_i_1__1 
       (.I0(\q[78]_i_2_n_0 ),
        .I1(\hu/ForwardBE10_out ),
        .I2(ResultW[2]),
        .I3(RD2E[2]),
        .I4(ForwardBE),
        .I5(Q[7]),
        .O(WriteDataE[1]));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \q[77]_i_1__1 
       (.I0(\q[78]_i_2_n_0 ),
        .I1(\hu/ForwardBE10_out ),
        .I2(ResultW[3]),
        .I3(RD2E[3]),
        .I4(ForwardBE),
        .I5(Q[8]),
        .O(WriteDataE[2]));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \q[78]_i_1__1 
       (.I0(\q[78]_i_2_n_0 ),
        .I1(\hu/ForwardBE10_out ),
        .I2(ResultW[4]),
        .I3(RD2E[4]),
        .I4(ForwardBE),
        .I5(Q[9]),
        .O(WriteDataE[3]));
  LUT6 #(
    .INIT(64'h8200000000000000)) 
    \q[78]_i_2 
       (.I0(\q[105]_i_6_n_0 ),
        .I1(\q[105]_i_3_0 [1]),
        .I2(Rs2E[1]),
        .I3(RegWriteW),
        .I4(\q[78]_i_4_n_0 ),
        .I5(\q_reg[78]_2 ),
        .O(\q[78]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \q[78]_i_3 
       (.I0(\q_reg[78]_1 ),
        .I1(Rs2E[1]),
        .I2(Q[1]),
        .I3(\q[105]_i_8_n_0 ),
        .I4(\q_reg[105]_0 ),
        .O(\hu/ForwardBE10_out ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[78]_i_4 
       (.I0(Rs2E[2]),
        .I1(\q[105]_i_3_0 [2]),
        .I2(\q[105]_i_3_0 [3]),
        .I3(Rs2E[3]),
        .O(\q[78]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[79]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[5]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[5]),
        .I4(ForwardBE),
        .I5(Q[10]),
        .O(WriteDataE[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[80]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[6]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[6]),
        .I4(ForwardBE),
        .I5(Q[11]),
        .O(WriteDataE[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[81]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[7]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[7]),
        .I4(ForwardBE),
        .I5(Q[12]),
        .O(WriteDataE[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[82]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[8]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[8]),
        .I4(ForwardBE),
        .I5(Q[13]),
        .O(WriteDataE[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[83]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[9]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[9]),
        .I4(ForwardBE),
        .I5(Q[14]),
        .O(WriteDataE[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[84]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[10]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[10]),
        .I4(ForwardBE),
        .I5(Q[15]),
        .O(WriteDataE[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[85]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[11]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[11]),
        .I4(ForwardBE),
        .I5(Q[16]),
        .O(WriteDataE[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[86]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[12]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[12]),
        .I4(ForwardBE),
        .I5(Q[17]),
        .O(WriteDataE[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[87]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[13]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[13]),
        .I4(ForwardBE),
        .I5(Q[18]),
        .O(WriteDataE[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[88]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[14]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[14]),
        .I4(ForwardBE),
        .I5(Q[19]),
        .O(WriteDataE[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[89]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[15]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[15]),
        .I4(ForwardBE),
        .I5(Q[20]),
        .O(WriteDataE[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[90]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[16]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[16]),
        .I4(ForwardBE),
        .I5(Q[21]),
        .O(WriteDataE[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[91]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[17]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[17]),
        .I4(ForwardBE),
        .I5(Q[22]),
        .O(WriteDataE[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[92]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[18]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[18]),
        .I4(ForwardBE),
        .I5(Q[23]),
        .O(WriteDataE[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[93]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[19]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[19]),
        .I4(ForwardBE),
        .I5(Q[24]),
        .O(WriteDataE[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[94]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[20]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[20]),
        .I4(ForwardBE),
        .I5(Q[25]),
        .O(WriteDataE[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[95]_i_1__1 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[21]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[21]),
        .I4(ForwardBE),
        .I5(Q[26]),
        .O(WriteDataE[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[96]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[22]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[22]),
        .I4(ForwardBE),
        .I5(Q[27]),
        .O(WriteDataE[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[97]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[23]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[23]),
        .I4(ForwardBE),
        .I5(Q[28]),
        .O(WriteDataE[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[98]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[24]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[24]),
        .I4(ForwardBE),
        .I5(Q[29]),
        .O(WriteDataE[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[99]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(ResultW[25]),
        .I2(\q[105]_i_3_n_0 ),
        .I3(RD2E[25]),
        .I4(ForwardBE),
        .I5(Q[30]),
        .O(WriteDataE[24]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [0]),
        .Q(\q_reg[84]_0 [0]));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [95]),
        .Q(PCE[17]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [96]),
        .Q(PCE[18]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [97]),
        .Q(PCE[19]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [98]),
        .Q(PCE[20]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [99]),
        .Q(PCE[21]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [100]),
        .Q(PCE[22]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [101]),
        .Q(PCE[23]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [102]),
        .Q(PCE[24]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [103]),
        .Q(PCE[25]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [104]),
        .Q(PCE[26]));
  CARRY4 \q_reg[109]_i_8 
       (.CI(1'b0),
        .CO({\q_reg[109]_i_8_n_0 ,\q_reg[109]_i_8_n_1 ,\q_reg[109]_i_8_n_2 ,\q_reg[109]_i_8_n_3 }),
        .CYINIT(\q[106]_i_3_0 ),
        .DI(DI),
        .O({\q_reg[109]_i_8_n_4 ,\q_reg[109]_i_8_n_5 ,\q_reg[109]_i_8_n_6 ,\q_reg[109]_i_8_n_7 }),
        .S(\q[106]_i_3_1 ));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [5]),
        .Q(\q_reg[84]_0 [5]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [105]),
        .Q(PCE[27]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [106]),
        .Q(PCE[28]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [107]),
        .Q(PCE[29]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [108]),
        .Q(PCE[30]));
  CARRY4 \q_reg[113]_i_10 
       (.CI(\q_reg[109]_i_8_n_0 ),
        .CO({\q_reg[113]_i_10_n_0 ,\q_reg[113]_i_10_n_1 ,\q_reg[113]_i_10_n_2 ,\q_reg[113]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[154]_0 ),
        .O({\q_reg[113]_i_10_n_4 ,\q_reg[113]_i_10_n_5 ,\q_reg[113]_i_10_n_6 ,\q_reg[113]_i_10_n_7 }),
        .S(\q[110]_i_4_0 ));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [109]),
        .Q(PCE[31]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [110]),
        .Q(RD2E[0]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [111]),
        .Q(RD2E[1]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [112]),
        .Q(RD2E[2]));
  CARRY4 \q_reg[117]_i_8 
       (.CI(\q_reg[113]_i_10_n_0 ),
        .CO({\q_reg[117]_i_8_n_0 ,\q_reg[117]_i_8_n_1 ,\q_reg[117]_i_8_n_2 ,\q_reg[117]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[158]_0 ),
        .O({\q_reg[117]_i_8_n_4 ,\q_reg[117]_i_8_n_5 ,\q_reg[117]_i_8_n_6 ,\q_reg[117]_i_8_n_7 }),
        .S(\q[114]_i_3_0 ));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [113]),
        .Q(RD2E[3]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [114]),
        .Q(RD2E[4]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [6]),
        .Q(\q_reg[84]_0 [6]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [115]),
        .Q(RD2E[5]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [116]),
        .Q(RD2E[6]));
  CARRY4 \q_reg[121]_i_8 
       (.CI(\q_reg[117]_i_8_n_0 ),
        .CO({\q_reg[121]_i_8_n_0 ,\q_reg[121]_i_8_n_1 ,\q_reg[121]_i_8_n_2 ,\q_reg[121]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[162]_0 ),
        .O({\q_reg[121]_i_8_n_4 ,\q_reg[121]_i_8_n_5 ,\q_reg[121]_i_8_n_6 ,\q_reg[121]_i_8_n_7 }),
        .S(\q[118]_i_3_0 ));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [117]),
        .Q(RD2E[7]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [118]),
        .Q(RD2E[8]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [119]),
        .Q(RD2E[9]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [120]),
        .Q(RD2E[10]));
  CARRY4 \q_reg[125]_i_10 
       (.CI(\q_reg[121]_i_8_n_0 ),
        .CO({\q_reg[125]_i_10_n_0 ,\q_reg[125]_i_10_n_1 ,\q_reg[125]_i_10_n_2 ,\q_reg[125]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[166]_0 ),
        .O({\q_reg[125]_i_10_n_4 ,\q_reg[125]_i_10_n_5 ,\q_reg[125]_i_10_n_6 ,\q_reg[125]_i_10_n_7 }),
        .S(\q[122]_i_4_0 ));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [121]),
        .Q(RD2E[11]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [122]),
        .Q(RD2E[12]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [123]),
        .Q(RD2E[13]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [124]),
        .Q(RD2E[14]));
  CARRY4 \q_reg[129]_i_10 
       (.CI(\q_reg[125]_i_10_n_0 ),
        .CO({\q_reg[129]_i_10_n_0 ,\q_reg[129]_i_10_n_1 ,\q_reg[129]_i_10_n_2 ,\q_reg[129]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[170]_0 ),
        .O({\q_reg[129]_i_10_n_4 ,\q_reg[129]_i_10_n_5 ,\q_reg[129]_i_10_n_6 ,\q_reg[129]_i_10_n_7 }),
        .S(\q[126]_i_4_0 ));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [7]),
        .Q(\q_reg[84]_0 [7]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [125]),
        .Q(RD2E[15]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [126]),
        .Q(RD2E[16]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [127]),
        .Q(RD2E[17]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [128]),
        .Q(RD2E[18]));
  CARRY4 \q_reg[133]_i_10 
       (.CI(\q_reg[129]_i_10_n_0 ),
        .CO({\q_reg[133]_i_10_n_0 ,\q_reg[133]_i_10_n_1 ,\q_reg[133]_i_10_n_2 ,\q_reg[133]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[174]_0 ),
        .O({\q_reg[133]_i_10_n_4 ,\q_reg[133]_i_10_n_5 ,\q_reg[133]_i_10_n_6 ,\q_reg[133]_i_10_n_7 }),
        .S(\q[130]_i_4_0 ));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [129]),
        .Q(RD2E[19]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [130]),
        .Q(RD2E[20]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [131]),
        .Q(RD2E[21]));
  FDCE \q_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [132]),
        .Q(RD2E[22]));
  CARRY4 \q_reg[137]_i_12 
       (.CI(\q_reg[133]_i_10_n_0 ),
        .CO({\q_reg[137]_i_12_n_0 ,\q_reg[137]_i_12_n_1 ,\q_reg[137]_i_12_n_2 ,\q_reg[137]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(\q_reg[178]_0 ),
        .O({\q_reg[178]_1 ,\q_reg[137]_i_12_n_5 ,\q_reg[137]_i_12_n_6 ,\q_reg[137]_i_12_n_7 }),
        .S(\q[134]_i_4_0 ));
  FDCE \q_reg[138] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [133]),
        .Q(RD2E[23]));
  FDCE \q_reg[139] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [134]),
        .Q(RD2E[24]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [8]),
        .Q(\q_reg[84]_0 [8]));
  FDCE \q_reg[140] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [135]),
        .Q(RD2E[25]));
  FDCE \q_reg[141] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [136]),
        .Q(RD2E[26]));
  FDCE \q_reg[142] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [137]),
        .Q(RD2E[27]));
  FDCE \q_reg[143] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [138]),
        .Q(RD2E[28]));
  FDCE \q_reg[144] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [139]),
        .Q(RD2E[29]));
  FDCE \q_reg[145] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [140]),
        .Q(RD2E[30]));
  FDCE \q_reg[146] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [141]),
        .Q(RD2E[31]));
  FDCE \q_reg[147] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [142]),
        .Q(RD1E[0]));
  FDCE \q_reg[148] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [143]),
        .Q(RD1E[1]));
  FDCE \q_reg[149] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [144]),
        .Q(RD1E[2]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [9]),
        .Q(\q_reg[84]_0 [9]));
  FDCE \q_reg[150] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [145]),
        .Q(RD1E[3]));
  FDCE \q_reg[151] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [146]),
        .Q(RD1E[4]));
  FDCE \q_reg[152] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [147]),
        .Q(RD1E[5]));
  FDCE \q_reg[153] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [148]),
        .Q(RD1E[6]));
  FDCE \q_reg[154] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [149]),
        .Q(RD1E[7]));
  FDCE \q_reg[155] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [150]),
        .Q(RD1E[8]));
  FDCE \q_reg[156] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [151]),
        .Q(RD1E[9]));
  FDCE \q_reg[157] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [152]),
        .Q(RD1E[10]));
  FDCE \q_reg[158] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [153]),
        .Q(RD1E[11]));
  FDCE \q_reg[159] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [154]),
        .Q(RD1E[12]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [10]),
        .Q(\q_reg[84]_0 [10]));
  FDCE \q_reg[160] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [155]),
        .Q(RD1E[13]));
  FDCE \q_reg[161] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [156]),
        .Q(RD1E[14]));
  FDCE \q_reg[162] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [157]),
        .Q(RD1E[15]));
  FDCE \q_reg[163] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [158]),
        .Q(RD1E[16]));
  FDCE \q_reg[164] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [159]),
        .Q(RD1E[17]));
  FDCE \q_reg[165] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [160]),
        .Q(RD1E[18]));
  FDCE \q_reg[166] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [161]),
        .Q(RD1E[19]));
  FDCE \q_reg[167] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [162]),
        .Q(RD1E[20]));
  FDCE \q_reg[168] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [163]),
        .Q(RD1E[21]));
  FDCE \q_reg[169] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [164]),
        .Q(RD1E[22]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [11]),
        .Q(\q_reg[84]_0 [11]));
  FDCE \q_reg[170] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [165]),
        .Q(RD1E[23]));
  FDCE \q_reg[171] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [166]),
        .Q(RD1E[24]));
  FDCE \q_reg[172] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [167]),
        .Q(RD1E[25]));
  FDCE \q_reg[173] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [168]),
        .Q(RD1E[26]));
  FDCE \q_reg[174] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [169]),
        .Q(RD1E[27]));
  FDCE \q_reg[175] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [170]),
        .Q(RD1E[28]));
  FDCE \q_reg[176] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [171]),
        .Q(RD1E[29]));
  FDCE \q_reg[177] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [172]),
        .Q(RD1E[30]));
  FDCE \q_reg[178] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [173]),
        .Q(RD1E[31]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [12]),
        .Q(\q_reg[84]_0 [12]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [13]),
        .Q(\q_reg[84]_0 [13]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [14]),
        .Q(\q_reg[84]_0 [14]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [15]),
        .Q(\q_reg[84]_0 [15]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [16]),
        .Q(\q_reg[84]_0 [16]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [17]),
        .Q(\q_reg[84]_0 [17]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [18]),
        .Q(\q_reg[84]_0 [18]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [19]),
        .Q(\q_reg[84]_0 [19]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [20]),
        .Q(\q_reg[84]_0 [20]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [21]),
        .Q(\q_reg[84]_0 [21]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [22]),
        .Q(\q_reg[84]_0 [22]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [23]),
        .Q(\q_reg[84]_0 [23]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [24]),
        .Q(\q_reg[84]_0 [24]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [25]),
        .Q(\q_reg[84]_0 [25]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [26]),
        .Q(\q_reg[84]_0 [26]));
  CARRY4 \q_reg[31]_i_24 
       (.CI(\q_reg[137]_i_12_n_0 ),
        .CO({\NLW_q_reg[31]_i_24_CO_UNCONNECTED [3:1],\q_reg[137]_i_12_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[31]_i_24_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [27]),
        .Q(\q_reg[84]_0 [27]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [28]),
        .Q(\q_reg[84]_0 [28]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [29]),
        .Q(\q_reg[84]_0 [29]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [30]),
        .Q(\q_reg[84]_0 [30]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [31]),
        .Q(\q_reg[84]_0 [31]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [32]),
        .Q(\q_reg[84]_0 [32]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [33]),
        .Q(\q_reg[84]_0 [33]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [34]),
        .Q(\q_reg[84]_0 [34]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [35]),
        .Q(\q_reg[84]_0 [35]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [36]),
        .Q(\q_reg[84]_0 [36]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [37]),
        .Q(\q_reg[84]_0 [37]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [38]),
        .Q(\q_reg[84]_0 [38]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [39]),
        .Q(\q_reg[84]_0 [39]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [40]),
        .Q(\q_reg[84]_0 [40]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [41]),
        .Q(\q_reg[84]_0 [41]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [42]),
        .Q(\q_reg[84]_0 [42]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [43]),
        .Q(\q_reg[84]_0 [43]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [44]),
        .Q(\q_reg[84]_0 [44]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [45]),
        .Q(\q_reg[84]_0 [45]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [46]),
        .Q(\q_reg[84]_0 [46]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [47]),
        .Q(\q_reg[84]_0 [47]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [48]),
        .Q(\q_reg[84]_0 [48]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [49]),
        .Q(\q_reg[84]_0 [49]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [50]),
        .Q(\q_reg[84]_0 [50]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [51]),
        .Q(\q_reg[84]_0 [51]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [52]),
        .Q(\q_reg[84]_0 [52]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [53]),
        .Q(\q_reg[84]_0 [53]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [54]),
        .Q(\q_reg[84]_0 [54]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [55]),
        .Q(\q_reg[84]_0 [55]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [56]),
        .Q(\q_reg[84]_0 [56]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [57]),
        .Q(\q_reg[84]_0 [57]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [58]),
        .Q(\q_reg[84]_0 [58]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [59]),
        .Q(\q_reg[84]_0 [59]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [60]),
        .Q(\q_reg[84]_0 [60]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [61]),
        .Q(\q_reg[84]_0 [61]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [62]),
        .Q(\q_reg[84]_0 [62]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [63]),
        .Q(\q_reg[84]_0 [63]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [64]),
        .Q(\q_reg[84]_0 [64]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [1]),
        .Q(\q_reg[84]_0 [1]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [65]),
        .Q(\q_reg[84]_0 [65]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [66]),
        .Q(\q_reg[84]_0 [66]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [67]),
        .Q(\q_reg[84]_0 [67]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [68]),
        .Q(\q_reg[84]_0 [68]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [69]),
        .Q(Rs2E[1]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [70]),
        .Q(Rs2E[2]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [71]),
        .Q(Rs2E[3]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [72]),
        .Q(\q_reg[84]_0 [69]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [73]),
        .Q(\q_reg[84]_0 [70]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [74]),
        .Q(\q_reg[84]_0 [71]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [2]),
        .Q(\q_reg[84]_0 [2]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [75]),
        .Q(\q_reg[84]_0 [72]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [76]),
        .Q(\q_reg[84]_0 [73]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [77]),
        .Q(\q_reg[84]_0 [74]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [78]),
        .Q(\q_reg[84]_0 [75]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [79]),
        .Q(\q_reg[84]_0 [76]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [80]),
        .Q(PCE[2]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [81]),
        .Q(PCE[3]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [82]),
        .Q(PCE[4]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [83]),
        .Q(PCE[5]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [84]),
        .Q(PCE[6]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [3]),
        .Q(\q_reg[84]_0 [3]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [85]),
        .Q(PCE[7]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [86]),
        .Q(PCE[8]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [87]),
        .Q(PCE[9]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [88]),
        .Q(PCE[10]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [89]),
        .Q(PCE[11]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [90]),
        .Q(PCE[12]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [91]),
        .Q(PCE[13]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [92]),
        .Q(PCE[14]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [93]),
        .Q(PCE[15]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [94]),
        .Q(PCE[16]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[178]_2 [4]),
        .Q(\q_reg[84]_0 [4]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_1
       (.I0(\q_reg[84]_0 [38]),
        .I1(PCE[7]),
        .O(\q_reg[43]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_2
       (.I0(\q_reg[84]_0 [37]),
        .I1(PCE[6]),
        .O(\q_reg[43]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_3
       (.I0(\q_reg[84]_0 [36]),
        .I1(PCE[5]),
        .O(\q_reg[43]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_4
       (.I0(\q_reg[84]_0 [35]),
        .I1(PCE[4]),
        .O(\q_reg[43]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(\q_reg[84]_0 [42]),
        .I1(PCE[11]),
        .O(\q_reg[47]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_2
       (.I0(\q_reg[84]_0 [41]),
        .I1(PCE[10]),
        .O(\q_reg[47]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_3
       (.I0(\q_reg[84]_0 [40]),
        .I1(PCE[9]),
        .O(\q_reg[47]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_4
       (.I0(\q_reg[84]_0 [39]),
        .I1(PCE[8]),
        .O(\q_reg[47]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_1
       (.I0(\q_reg[84]_0 [46]),
        .I1(PCE[15]),
        .O(\q_reg[51]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_2
       (.I0(\q_reg[84]_0 [45]),
        .I1(PCE[14]),
        .O(\q_reg[51]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_3
       (.I0(\q_reg[84]_0 [44]),
        .I1(PCE[13]),
        .O(\q_reg[51]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_4
       (.I0(\q_reg[84]_0 [43]),
        .I1(PCE[12]),
        .O(\q_reg[51]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_1
       (.I0(\q_reg[84]_0 [50]),
        .I1(PCE[19]),
        .O(\q_reg[55]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_2
       (.I0(\q_reg[84]_0 [49]),
        .I1(PCE[18]),
        .O(\q_reg[55]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_3
       (.I0(\q_reg[84]_0 [48]),
        .I1(PCE[17]),
        .O(\q_reg[55]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_4
       (.I0(\q_reg[84]_0 [47]),
        .I1(PCE[16]),
        .O(\q_reg[55]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_1
       (.I0(\q_reg[84]_0 [54]),
        .I1(PCE[23]),
        .O(\q_reg[59]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_2
       (.I0(\q_reg[84]_0 [53]),
        .I1(PCE[22]),
        .O(\q_reg[59]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_3
       (.I0(\q_reg[84]_0 [52]),
        .I1(PCE[21]),
        .O(\q_reg[59]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_4
       (.I0(\q_reg[84]_0 [51]),
        .I1(PCE[20]),
        .O(\q_reg[59]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_1
       (.I0(\q_reg[84]_0 [58]),
        .I1(PCE[27]),
        .O(\q_reg[63]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_2
       (.I0(\q_reg[84]_0 [57]),
        .I1(PCE[26]),
        .O(\q_reg[63]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_3
       (.I0(\q_reg[84]_0 [56]),
        .I1(PCE[25]),
        .O(\q_reg[63]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_4
       (.I0(\q_reg[84]_0 [55]),
        .I1(PCE[24]),
        .O(\q_reg[63]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(\q_reg[84]_0 [62]),
        .I1(PCE[31]),
        .O(\q_reg[67]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_2
       (.I0(\q_reg[84]_0 [61]),
        .I1(PCE[30]),
        .O(\q_reg[67]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_3
       (.I0(\q_reg[84]_0 [60]),
        .I1(PCE[29]),
        .O(\q_reg[67]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_4
       (.I0(\q_reg[84]_0 [59]),
        .I1(PCE[28]),
        .O(\q_reg[67]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_1
       (.I0(\q_reg[84]_0 [34]),
        .I1(PCE[3]),
        .O(\q_reg[39]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_2
       (.I0(\q_reg[84]_0 [33]),
        .I1(PCE[2]),
        .O(\q_reg[39]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_3
       (.I0(\q_reg[84]_0 [32]),
        .I1(\q_reg[84]_0 [76]),
        .O(\q_reg[39]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_4
       (.I0(\q_reg[84]_0 [31]),
        .I1(\q_reg[84]_0 [75]),
        .O(\q_reg[39]_1 [0]));
endmodule

module design_1_top_0_0_load
   (Q,
    D,
    E);
  output [31:0]Q;
  input [31:0]D;
  input [0:0]E;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[10] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(Q[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[11] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(Q[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[12] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(Q[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[13] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(Q[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[14] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(Q[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[15] 
       (.CLR(1'b0),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(Q[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[16] 
       (.CLR(1'b0),
        .D(D[16]),
        .G(E),
        .GE(1'b1),
        .Q(Q[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[17] 
       (.CLR(1'b0),
        .D(D[17]),
        .G(E),
        .GE(1'b1),
        .Q(Q[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[18] 
       (.CLR(1'b0),
        .D(D[18]),
        .G(E),
        .GE(1'b1),
        .Q(Q[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[19] 
       (.CLR(1'b0),
        .D(D[19]),
        .G(E),
        .GE(1'b1),
        .Q(Q[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[20] 
       (.CLR(1'b0),
        .D(D[20]),
        .G(E),
        .GE(1'b1),
        .Q(Q[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[21] 
       (.CLR(1'b0),
        .D(D[21]),
        .G(E),
        .GE(1'b1),
        .Q(Q[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[22] 
       (.CLR(1'b0),
        .D(D[22]),
        .G(E),
        .GE(1'b1),
        .Q(Q[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[23] 
       (.CLR(1'b0),
        .D(D[23]),
        .G(E),
        .GE(1'b1),
        .Q(Q[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[24] 
       (.CLR(1'b0),
        .D(D[24]),
        .G(E),
        .GE(1'b1),
        .Q(Q[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[25] 
       (.CLR(1'b0),
        .D(D[25]),
        .G(E),
        .GE(1'b1),
        .Q(Q[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[26] 
       (.CLR(1'b0),
        .D(D[26]),
        .G(E),
        .GE(1'b1),
        .Q(Q[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[27] 
       (.CLR(1'b0),
        .D(D[27]),
        .G(E),
        .GE(1'b1),
        .Q(Q[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[28] 
       (.CLR(1'b0),
        .D(D[28]),
        .G(E),
        .GE(1'b1),
        .Q(Q[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[29] 
       (.CLR(1'b0),
        .D(D[29]),
        .G(E),
        .GE(1'b1),
        .Q(Q[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[30] 
       (.CLR(1'b0),
        .D(D[30]),
        .G(E),
        .GE(1'b1),
        .Q(Q[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[31] 
       (.CLR(1'b0),
        .D(D[31]),
        .G(E),
        .GE(1'b1),
        .Q(Q[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(Q[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[9] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(Q[9]));
endmodule

module design_1_top_0_0_regfile
   (rd10,
    rd20,
    ResultW,
    RegWriteW,
    Q,
    \q_reg[140] ,
    clk);
  output [31:0]rd10;
  output [31:0]rd20;
  input [31:0]ResultW;
  input RegWriteW;
  input [4:0]Q;
  input [9:0]\q_reg[140] ;
  input clk;

  wire [4:0]Q;
  wire RegWriteW;
  wire [31:0]ResultW;
  wire clk;
  wire [9:0]\q_reg[140] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA(\q_reg[140] [4:0]),
        .ADDRB(\q_reg[140] [4:0]),
        .ADDRC(\q_reg[140] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[1:0]),
        .DIB(ResultW[3:2]),
        .DIC(ResultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA(\q_reg[140] [4:0]),
        .ADDRB(\q_reg[140] [4:0]),
        .ADDRC(\q_reg[140] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[13:12]),
        .DIB(ResultW[15:14]),
        .DIC(ResultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA(\q_reg[140] [4:0]),
        .ADDRB(\q_reg[140] [4:0]),
        .ADDRC(\q_reg[140] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[19:18]),
        .DIB(ResultW[21:20]),
        .DIC(ResultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA(\q_reg[140] [4:0]),
        .ADDRB(\q_reg[140] [4:0]),
        .ADDRC(\q_reg[140] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[25:24]),
        .DIB(ResultW[27:26]),
        .DIC(ResultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[30]),
        .DPO(rd10[30]),
        .DPRA0(\q_reg[140] [0]),
        .DPRA1(\q_reg[140] [1]),
        .DPRA2(\q_reg[140] [2]),
        .DPRA3(\q_reg[140] [3]),
        .DPRA4(\q_reg[140] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[31]),
        .DPO(rd10[31]),
        .DPRA0(\q_reg[140] [0]),
        .DPRA1(\q_reg[140] [1]),
        .DPRA2(\q_reg[140] [2]),
        .DPRA3(\q_reg[140] [3]),
        .DPRA4(\q_reg[140] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA(\q_reg[140] [4:0]),
        .ADDRB(\q_reg[140] [4:0]),
        .ADDRC(\q_reg[140] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[7:6]),
        .DIB(ResultW[9:8]),
        .DIC(ResultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA(\q_reg[140] [9:5]),
        .ADDRB(\q_reg[140] [9:5]),
        .ADDRC(\q_reg[140] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[1:0]),
        .DIB(ResultW[3:2]),
        .DIC(ResultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA(\q_reg[140] [9:5]),
        .ADDRB(\q_reg[140] [9:5]),
        .ADDRC(\q_reg[140] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[13:12]),
        .DIB(ResultW[15:14]),
        .DIC(ResultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA(\q_reg[140] [9:5]),
        .ADDRB(\q_reg[140] [9:5]),
        .ADDRC(\q_reg[140] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[19:18]),
        .DIB(ResultW[21:20]),
        .DIC(ResultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA(\q_reg[140] [9:5]),
        .ADDRB(\q_reg[140] [9:5]),
        .ADDRC(\q_reg[140] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[25:24]),
        .DIB(ResultW[27:26]),
        .DIC(ResultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[30]),
        .DPO(rd20[30]),
        .DPRA0(\q_reg[140] [5]),
        .DPRA1(\q_reg[140] [6]),
        .DPRA2(\q_reg[140] [7]),
        .DPRA3(\q_reg[140] [8]),
        .DPRA4(\q_reg[140] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[31]),
        .DPO(rd20[31]),
        .DPRA0(\q_reg[140] [5]),
        .DPRA1(\q_reg[140] [6]),
        .DPRA2(\q_reg[140] [7]),
        .DPRA3(\q_reg[140] [8]),
        .DPRA4(\q_reg[140] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(RegWriteW));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA(\q_reg[140] [9:5]),
        .ADDRB(\q_reg[140] [9:5]),
        .ADDRC(\q_reg[140] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[7:6]),
        .DIB(ResultW[9:8]),
        .DIC(ResultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWriteW));
endmodule

module design_1_top_0_0_riscv
   (clk,
    reset,
    PCF,
    InstrF,
    MemWriteM,
    ALUResultM,
    WriteDataM,
    ReadDataM,
    MemStrobe,
    PCReady);
  input clk;
  input reset;
  output [31:0]PCF;
  input [31:0]InstrF;
  output MemWriteM;
  output [31:0]ALUResultM;
  output [31:0]WriteDataM;
  input [31:0]ReadDataM;
  output MemStrobe;
  input PCReady;

  wire [3:0]ALUControlE;
  wire [30:0]ALUResultE;
  wire [31:0]ALUResultM;
  wire ALUSrcE;
  wire ALUSrcM;
  wire FlushE;
  wire [0:0]ImmExtE;
  wire [31:0]InstrF;
  wire MemStrobe;
  wire MemWriteM;
  wire [31:0]PCF;
  wire PCReady;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [31:0]ReadDataM;
  wire RegWriteM;
  wire RegWriteW;
  wire ResultSrcEb0;
  wire [1:0]ResultSrcM;
  wire [31:1]SrcAE;
  wire [0:0]SrcBE;
  wire [31:1]SrcBE__0;
  wire [0:0]WriteDataE;
  wire [31:0]WriteDataM;
  wire [31:0]\alu/condinvb__0 ;
  wire \alu/data8 ;
  wire \alu/p_1_in ;
  wire \alu/p_2_in ;
  wire c_n_77;
  wire c_n_78;
  wire c_n_84;
  wire c_n_85;
  wire c_n_87;
  wire c_n_88;
  wire c_n_89;
  wire c_n_90;
  wire c_n_91;
  wire c_n_92;
  wire c_n_93;
  wire c_n_94;
  wire c_n_95;
  wire c_n_96;
  wire c_n_97;
  wire clk;
  wire dp_n_120;
  wire dp_n_121;
  wire dp_n_122;
  wire dp_n_123;
  wire dp_n_124;
  wire dp_n_125;
  wire dp_n_126;
  wire dp_n_127;
  wire dp_n_128;
  wire dp_n_129;
  wire dp_n_130;
  wire dp_n_131;
  wire dp_n_132;
  wire dp_n_133;
  wire dp_n_134;
  wire dp_n_135;
  wire dp_n_136;
  wire dp_n_137;
  wire dp_n_138;
  wire dp_n_139;
  wire dp_n_140;
  wire dp_n_141;
  wire dp_n_142;
  wire dp_n_143;
  wire dp_n_144;
  wire dp_n_145;
  wire dp_n_146;
  wire dp_n_147;
  wire dp_n_148;
  wire dp_n_149;
  wire dp_n_150;
  wire dp_n_151;
  wire dp_n_152;
  wire dp_n_153;
  wire dp_n_154;
  wire dp_n_155;
  wire dp_n_156;
  wire dp_n_157;
  wire dp_n_158;
  wire dp_n_159;
  wire dp_n_160;
  wire dp_n_161;
  wire dp_n_162;
  wire dp_n_163;
  wire dp_n_199;
  wire dp_n_200;
  wire dp_n_201;
  wire dp_n_202;
  wire dp_n_203;
  wire dp_n_204;
  wire dp_n_205;
  wire dp_n_206;
  wire dp_n_207;
  wire dp_n_208;
  wire dp_n_209;
  wire dp_n_210;
  wire dp_n_211;
  wire dp_n_212;
  wire dp_n_213;
  wire dp_n_214;
  wire dp_n_215;
  wire dp_n_217;
  wire dp_n_218;
  wire dp_n_219;
  wire dp_n_220;
  wire dp_n_221;
  wire dp_n_222;
  wire dp_n_223;
  wire dp_n_224;
  wire dp_n_225;
  wire dp_n_226;
  wire dp_n_227;
  wire dp_n_228;
  wire dp_n_229;
  wire dp_n_230;
  wire dp_n_231;
  wire dp_n_232;
  wire dp_n_233;
  wire dp_n_234;
  wire dp_n_235;
  wire dp_n_236;
  wire dp_n_239;
  wire dp_n_241;
  wire dp_n_242;
  wire dp_n_243;
  wire dp_n_244;
  wire dp_n_245;
  wire dp_n_246;
  wire dp_n_247;
  wire dp_n_248;
  wire dp_n_249;
  wire dp_n_250;
  wire dp_n_251;
  wire dp_n_252;
  wire dp_n_253;
  wire dp_n_254;
  wire dp_n_255;
  wire dp_n_256;
  wire dp_n_257;
  wire dp_n_258;
  wire dp_n_259;
  wire dp_n_260;
  wire dp_n_261;
  wire dp_n_86;
  wire dp_n_87;
  wire [2:0]funct3E;
  wire [1:1]funct3M;
  wire negE;
  wire ovfE;
  wire [20:0]p_0_in;
  wire [95:2]\regD/p_0_in ;
  wire reset;

  design_1_top_0_0_controller c
       (.CO(\alu/data8 ),
        .D({\regD/p_0_in [95:64],\regD/p_0_in [2]}),
        .\Data_reg[31]_i_2 ({funct3M,ALUSrcM}),
        .FlushE(FlushE),
        .InstrF(InstrF),
        .O(\alu/p_2_in ),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({RegWriteM,ResultSrcM,MemWriteM}),
        .ReadDataM(ReadDataM[15:8]),
        .RegWriteW(RegWriteW),
        .SrcAE(SrcAE),
        .SrcBE(SrcBE),
        .SrcBE__0(SrcBE__0),
        .WriteDataE(WriteDataE),
        .clk(clk),
        .condinvb__0(\alu/condinvb__0 [31]),
        .funct3E(funct3E),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .\q[107]_i_2 (ImmExtE),
        .\q[31]_i_12 (\alu/p_1_in ),
        .\q_reg[104] (dp_n_239),
        .\q_reg[106] (dp_n_137),
        .\q_reg[106]_0 (dp_n_217),
        .\q_reg[106]_1 (dp_n_136),
        .\q_reg[107] (dp_n_138),
        .\q_reg[107]_0 (dp_n_233),
        .\q_reg[107]_1 (dp_n_241),
        .\q_reg[108] (dp_n_139),
        .\q_reg[108]_0 (dp_n_212),
        .\q_reg[108]_1 (dp_n_140),
        .\q_reg[109] (dp_n_144),
        .\q_reg[109]_0 (dp_n_231),
        .\q_reg[109]_1 (dp_n_141),
        .\q_reg[110] (dp_n_145),
        .\q_reg[110]_0 (dp_n_221),
        .\q_reg[110]_1 (dp_n_142),
        .\q_reg[111] (dp_n_223),
        .\q_reg[111]_0 (dp_n_146),
        .\q_reg[111]_1 (dp_n_252),
        .\q_reg[112] (dp_n_143),
        .\q_reg[112]_0 (dp_n_147),
        .\q_reg[112]_1 (dp_n_208),
        .\q_reg[113] (dp_n_224),
        .\q_reg[113]_0 (dp_n_148),
        .\q_reg[113]_1 (dp_n_244),
        .\q_reg[113]_2 (dp_n_156),
        .\q_reg[114] (dp_n_149),
        .\q_reg[114]_0 (dp_n_214),
        .\q_reg[114]_1 (dp_n_155),
        .\q_reg[115] (dp_n_150),
        .\q_reg[115]_0 (dp_n_247),
        .\q_reg[115]_1 (dp_n_157),
        .\q_reg[116] (dp_n_151),
        .\q_reg[116]_0 (dp_n_210),
        .\q_reg[116]_1 (dp_n_158),
        .\q_reg[117] (dp_n_152),
        .\q_reg[117]_0 (dp_n_245),
        .\q_reg[117]_1 (dp_n_159),
        .\q_reg[118] (dp_n_153),
        .\q_reg[118]_0 (dp_n_219),
        .\q_reg[118]_1 (dp_n_160),
        .\q_reg[119] (dp_n_154),
        .\q_reg[119]_0 (dp_n_250),
        .\q_reg[119]_1 (dp_n_161),
        .\q_reg[11] (c_n_77),
        .\q_reg[11]_0 (c_n_78),
        .\q_reg[11]_1 (c_n_84),
        .\q_reg[11]_2 (\alu/condinvb__0 [0]),
        .\q_reg[120] (dp_n_128),
        .\q_reg[120]_0 (dp_n_163),
        .\q_reg[120]_1 (dp_n_162),
        .\q_reg[121] (dp_n_129),
        .\q_reg[121]_0 (dp_n_243),
        .\q_reg[121]_1 (dp_n_200),
        .\q_reg[122] (dp_n_130),
        .\q_reg[122]_0 (dp_n_218),
        .\q_reg[122]_1 (dp_n_201),
        .\q_reg[123] (dp_n_131),
        .\q_reg[123]_0 (dp_n_234),
        .\q_reg[123]_1 (dp_n_249),
        .\q_reg[124] (dp_n_132),
        .\q_reg[124]_0 (dp_n_213),
        .\q_reg[124]_1 (dp_n_242),
        .\q_reg[125] (dp_n_133),
        .\q_reg[125]_0 (dp_n_232),
        .\q_reg[125]_1 (dp_n_226),
        .\q_reg[126] (dp_n_134),
        .\q_reg[126]_0 (dp_n_222),
        .\q_reg[126]_1 (dp_n_202),
        .\q_reg[127] (dp_n_135),
        .\q_reg[127]_0 (dp_n_236),
        .\q_reg[127]_1 (dp_n_227),
        .\q_reg[128] (dp_n_120),
        .\q_reg[128]_0 (dp_n_209),
        .\q_reg[128]_1 (dp_n_203),
        .\q_reg[129] (dp_n_121),
        .\q_reg[129]_0 (dp_n_225),
        .\q_reg[129]_1 (dp_n_228),
        .\q_reg[12] ({negE,ALUResultE,ALUSrcE}),
        .\q_reg[12]_0 (c_n_85),
        .\q_reg[130] (dp_n_122),
        .\q_reg[130]_0 (dp_n_215),
        .\q_reg[130]_1 (dp_n_204),
        .\q_reg[131] (dp_n_123),
        .\q_reg[131]_0 (dp_n_248),
        .\q_reg[131]_1 (dp_n_229),
        .\q_reg[132] (dp_n_124),
        .\q_reg[132]_0 (dp_n_211),
        .\q_reg[132]_1 (dp_n_205),
        .\q_reg[133] (dp_n_125),
        .\q_reg[133]_0 (dp_n_246),
        .\q_reg[133]_1 (dp_n_230),
        .\q_reg[134] (dp_n_126),
        .\q_reg[134]_0 (dp_n_220),
        .\q_reg[134]_1 (dp_n_206),
        .\q_reg[135] (dp_n_127),
        .\q_reg[135]_0 (dp_n_251),
        .\q_reg[135]_1 (dp_n_207),
        .\q_reg[135]_2 (dp_n_235),
        .\q_reg[136] (dp_n_86),
        .\q_reg[136]_0 (dp_n_199),
        .\q_reg[137] (dp_n_87),
        .\q_reg[137]_0 (dp_n_253),
        .\q_reg[16] (c_n_97),
        .\q_reg[18] ({ResultSrcEb0,ALUControlE}),
        .\q_reg[2] (c_n_96),
        .\q_reg[2]_0 (PCF[2]),
        .\q_reg[3] (c_n_95),
        .\q_reg[83] (dp_n_261),
        .\q_reg[84] (dp_n_260),
        .\q_reg[85] (dp_n_259),
        .\q_reg[86] (dp_n_258),
        .\q_reg[87] (dp_n_257),
        .\q_reg[88] (dp_n_256),
        .\q_reg[89] (dp_n_255),
        .\q_reg[90] (dp_n_254),
        .\readDataM[15] ({c_n_87,c_n_88,c_n_89,c_n_90,c_n_91,c_n_92,c_n_93,c_n_94}),
        .reset(reset));
  design_1_top_0_0_datapath dp
       (.CO(\alu/data8 ),
        .D({\regD/p_0_in [95:64],\regD/p_0_in [2]}),
        .FlushE(FlushE),
        .O(\alu/p_2_in ),
        .PCReady(PCReady),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q(PCF),
        .ReadDataM(ReadDataM),
        .RegWriteW(RegWriteW),
        .SrcBE(SrcBE),
        .SrcBE__0(SrcBE__0),
        .WriteDataM(WriteDataM),
        .clk(clk),
        .condinvb__0(\alu/condinvb__0 [31]),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .\q[106]_i_3 (\alu/condinvb__0 [0]),
        .\q_reg[104] (c_n_97),
        .\q_reg[106] (c_n_85),
        .\q_reg[107] (c_n_84),
        .\q_reg[107]_0 (c_n_78),
        .\q_reg[107]_1 (c_n_77),
        .\q_reg[10] (dp_n_86),
        .\q_reg[115] (WriteDataE),
        .\q_reg[11] (dp_n_87),
        .\q_reg[11]_0 (dp_n_120),
        .\q_reg[11]_1 (dp_n_121),
        .\q_reg[11]_10 (dp_n_130),
        .\q_reg[11]_11 (dp_n_131),
        .\q_reg[11]_12 (dp_n_132),
        .\q_reg[11]_13 (dp_n_133),
        .\q_reg[11]_14 (dp_n_134),
        .\q_reg[11]_15 (dp_n_135),
        .\q_reg[11]_16 (dp_n_136),
        .\q_reg[11]_17 (dp_n_137),
        .\q_reg[11]_18 (dp_n_138),
        .\q_reg[11]_19 (dp_n_139),
        .\q_reg[11]_2 (dp_n_122),
        .\q_reg[11]_20 (dp_n_144),
        .\q_reg[11]_21 (dp_n_145),
        .\q_reg[11]_22 (dp_n_146),
        .\q_reg[11]_23 (dp_n_147),
        .\q_reg[11]_24 (dp_n_148),
        .\q_reg[11]_25 (dp_n_149),
        .\q_reg[11]_26 (dp_n_150),
        .\q_reg[11]_27 (dp_n_151),
        .\q_reg[11]_28 (dp_n_152),
        .\q_reg[11]_29 (dp_n_153),
        .\q_reg[11]_3 (dp_n_123),
        .\q_reg[11]_30 (dp_n_154),
        .\q_reg[11]_31 (dp_n_155),
        .\q_reg[11]_32 (dp_n_157),
        .\q_reg[11]_33 (dp_n_158),
        .\q_reg[11]_34 (dp_n_159),
        .\q_reg[11]_35 (dp_n_160),
        .\q_reg[11]_36 (dp_n_161),
        .\q_reg[11]_37 (dp_n_162),
        .\q_reg[11]_38 (dp_n_200),
        .\q_reg[11]_4 (dp_n_124),
        .\q_reg[11]_5 (dp_n_125),
        .\q_reg[11]_6 (dp_n_126),
        .\q_reg[11]_7 (dp_n_127),
        .\q_reg[11]_8 (dp_n_128),
        .\q_reg[11]_9 (dp_n_129),
        .\q_reg[137] ({ALUResultM,funct3M,ALUSrcM,MemStrobe}),
        .\q_reg[137]_0 ({negE,ALUResultE,ALUSrcE}),
        .\q_reg[137]_i_12 (\alu/p_1_in ),
        .\q_reg[13] (dp_n_163),
        .\q_reg[13]_0 (dp_n_199),
        .\q_reg[13]_1 (dp_n_208),
        .\q_reg[13]_10 (dp_n_218),
        .\q_reg[13]_11 (dp_n_219),
        .\q_reg[13]_12 (dp_n_220),
        .\q_reg[13]_13 (dp_n_221),
        .\q_reg[13]_14 (dp_n_222),
        .\q_reg[13]_15 (dp_n_225),
        .\q_reg[13]_16 (dp_n_231),
        .\q_reg[13]_17 (dp_n_232),
        .\q_reg[13]_18 (dp_n_233),
        .\q_reg[13]_19 (dp_n_234),
        .\q_reg[13]_2 (dp_n_209),
        .\q_reg[13]_20 (dp_n_236),
        .\q_reg[13]_21 (dp_n_243),
        .\q_reg[13]_22 (dp_n_244),
        .\q_reg[13]_23 (dp_n_245),
        .\q_reg[13]_24 (dp_n_246),
        .\q_reg[13]_25 (dp_n_247),
        .\q_reg[13]_26 (dp_n_248),
        .\q_reg[13]_27 (dp_n_250),
        .\q_reg[13]_28 (dp_n_251),
        .\q_reg[13]_29 (dp_n_252),
        .\q_reg[13]_3 (dp_n_210),
        .\q_reg[13]_30 (dp_n_253),
        .\q_reg[13]_4 (dp_n_211),
        .\q_reg[13]_5 (dp_n_212),
        .\q_reg[13]_6 (dp_n_213),
        .\q_reg[13]_7 (dp_n_214),
        .\q_reg[13]_8 (dp_n_215),
        .\q_reg[13]_9 (dp_n_217),
        .\q_reg[178] (SrcAE),
        .\q_reg[18] (dp_n_239),
        .\q_reg[2] (dp_n_254),
        .\q_reg[2]_0 (dp_n_255),
        .\q_reg[2]_1 (dp_n_256),
        .\q_reg[2]_2 (dp_n_257),
        .\q_reg[2]_3 (dp_n_258),
        .\q_reg[2]_4 (dp_n_259),
        .\q_reg[2]_5 (dp_n_260),
        .\q_reg[2]_6 (dp_n_261),
        .\q_reg[36] (ImmExtE),
        .\q_reg[37] (dp_n_140),
        .\q_reg[37]_0 (dp_n_141),
        .\q_reg[37]_1 (dp_n_142),
        .\q_reg[37]_10 (dp_n_207),
        .\q_reg[37]_11 (dp_n_223),
        .\q_reg[37]_12 (dp_n_224),
        .\q_reg[37]_13 (dp_n_226),
        .\q_reg[37]_14 (dp_n_227),
        .\q_reg[37]_15 (dp_n_228),
        .\q_reg[37]_16 (dp_n_229),
        .\q_reg[37]_17 (dp_n_230),
        .\q_reg[37]_18 (dp_n_235),
        .\q_reg[37]_19 (dp_n_241),
        .\q_reg[37]_2 (dp_n_143),
        .\q_reg[37]_3 (dp_n_156),
        .\q_reg[37]_4 (dp_n_201),
        .\q_reg[37]_5 (dp_n_202),
        .\q_reg[37]_6 (dp_n_203),
        .\q_reg[37]_7 (dp_n_204),
        .\q_reg[37]_8 (dp_n_205),
        .\q_reg[37]_9 (dp_n_206),
        .\q_reg[38] (dp_n_242),
        .\q_reg[38]_0 (dp_n_249),
        .\q_reg[4] (funct3E),
        .\q_reg[75] (c_n_96),
        .\q_reg[78] ({RegWriteM,ResultSrcM,MemWriteM}),
        .\q_reg[90] ({c_n_87,c_n_88,c_n_89,c_n_90,c_n_91,c_n_92,c_n_93,c_n_94}),
        .\q_reg[91] (c_n_95),
        .\q_reg[95] ({ResultSrcEb0,ALUControlE}),
        .reset(reset));
endmodule

module design_1_top_0_0_store
   (WriteDataM,
    D,
    E);
  output [31:0]WriteDataM;
  input [31:0]D;
  input [0:0]E;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]WriteDataM;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[10] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[11] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[12] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[13] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[14] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[15] 
       (.CLR(1'b0),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[16] 
       (.CLR(1'b0),
        .D(D[16]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[17] 
       (.CLR(1'b0),
        .D(D[17]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[18] 
       (.CLR(1'b0),
        .D(D[18]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[19] 
       (.CLR(1'b0),
        .D(D[19]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[20] 
       (.CLR(1'b0),
        .D(D[20]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[21] 
       (.CLR(1'b0),
        .D(D[21]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[22] 
       (.CLR(1'b0),
        .D(D[22]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[23] 
       (.CLR(1'b0),
        .D(D[23]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[24] 
       (.CLR(1'b0),
        .D(D[24]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[25] 
       (.CLR(1'b0),
        .D(D[25]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[26] 
       (.CLR(1'b0),
        .D(D[26]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[27] 
       (.CLR(1'b0),
        .D(D[27]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[28] 
       (.CLR(1'b0),
        .D(D[28]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[29] 
       (.CLR(1'b0),
        .D(D[29]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[30] 
       (.CLR(1'b0),
        .D(D[30]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[31] 
       (.CLR(1'b0),
        .D(D[31]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[5] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[6] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[7] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[8] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \WriteDataOut_reg[9] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(WriteDataM[9]));
endmodule

(* keep_hierarchy = "soft" *) 
module design_1_top_0_0_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Instr[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Instr[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(Instr[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(Instr[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(Instr[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(Instr[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(Instr[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(Instr[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(Instr[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(Instr[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(Instr[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(Instr[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(Instr[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(Instr[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(Instr[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(Instr[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(Instr[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(Instr[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(Instr[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(Instr[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(Instr[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(Instr[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(Instr[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(Instr[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(Instr[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(Instr[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(Instr[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(Instr[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(Instr[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(Instr[22]));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscv riscv
       (.ALUResultM(addressM),
        .InstrF(Instr),
        .MemStrobe(MStrobe),
        .MemWriteM(MemWrite),
        .PCF(PC),
        .PCReady(PCReady),
        .ReadDataM(readDataM),
        .WriteDataM(writeDataM),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
