// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Apr 15 19:36:35 2025
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

  wire \<const0> ;
  wire AXIstart;
  wire DRW;
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

  assign Done = \<const0> ;
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
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
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
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
  GND GND
       (.G(\<const0> ));
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
    PCF,
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
  input [2:0]PCF;
  input PCSrc1__6;
  input [27:0]jalrTarget;
  input [24:0]PCPlus4F;

  wire [27:0]D;
  wire [3:0]O;
  wire [2:0]PCF;
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
        .I2(PCF[0]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[10]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[10]),
        .I2(PCPlus4F[7]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[11]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[11]),
        .I2(PCPlus4F[8]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[12]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[12]),
        .I2(PCPlus4F[9]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[13]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[13]),
        .I2(PCPlus4F[10]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[14]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[14]),
        .I2(PCPlus4F[11]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[15]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[15]),
        .I2(PCPlus4F[12]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[16]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[16]),
        .I2(PCPlus4F[13]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[17]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[17]),
        .I2(PCPlus4F[14]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[18]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[18]),
        .I2(PCPlus4F[15]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[19]_i_1 
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
        .I2(PCF[1]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[20]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[20]),
        .I2(PCPlus4F[17]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[21]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[21]),
        .I2(PCPlus4F[18]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[22]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[22]),
        .I2(PCPlus4F[19]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[23]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[23]),
        .I2(PCPlus4F[20]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[24]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[24]),
        .I2(PCPlus4F[21]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[25]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[25]),
        .I2(PCPlus4F[22]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[26]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[26]),
        .I2(PCPlus4F[23]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[27]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[27]),
        .I2(PCPlus4F[24]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hFF8D008D)) 
    \q[2]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[2]),
        .I2(PCF[2]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[3]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[3]),
        .I2(PCPlus4F[0]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[4]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[4]),
        .I2(PCPlus4F[1]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[5]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[5]),
        .I2(PCPlus4F[2]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[6]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[6]),
        .I2(PCPlus4F[3]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[7]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[7]),
        .I2(PCPlus4F[4]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[8]_i_1 
       (.I0(PCSrcE),
        .I1(PCTargetE[8]),
        .I2(PCPlus4F[5]),
        .I3(PCSrc1__6),
        .I4(jalrTarget[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[9]_i_1 
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
    Q);
  output [28:0]PCPlus4F;
  input [29:0]Q;

  wire [28:0]PCPlus4F;
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
    \q_reg[149] ,
    \q_reg[153] ,
    \q_reg[157] ,
    \q_reg[161] ,
    \q_reg[165] ,
    \q_reg[169] ,
    \q_reg[173] ,
    \q_reg[176] ,
    DI,
    S,
    \result0_inferred__6/i__carry__1_0 ,
    \result0_inferred__6/i__carry__1_1 ,
    \result0_inferred__6/i__carry__2_0 ,
    \result0_inferred__6/i__carry__2_1 ,
    \q_reg[105] ,
    \q_reg[105]_0 ,
    Q,
    \q_reg[108]_i_8 ,
    \q_reg[108]_i_8_0 );
  output [0:0]CO;
  output [3:0]\q_reg[149] ;
  output [3:0]\q_reg[153] ;
  output [3:0]\q_reg[157] ;
  output [3:0]\q_reg[161] ;
  output [3:0]\q_reg[165] ;
  output [3:0]\q_reg[169] ;
  output [3:0]\q_reg[173] ;
  output [2:0]\q_reg[176] ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\result0_inferred__6/i__carry__1_0 ;
  input [3:0]\result0_inferred__6/i__carry__1_1 ;
  input [3:0]\result0_inferred__6/i__carry__2_0 ;
  input [3:0]\result0_inferred__6/i__carry__2_1 ;
  input [3:0]\q_reg[105] ;
  input [3:0]\q_reg[105]_0 ;
  input [60:0]Q;
  input [0:0]\q_reg[108]_i_8 ;
  input \q_reg[108]_i_8_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [60:0]Q;
  wire [3:0]S;
  wire [3:0]\q_reg[105] ;
  wire [3:0]\q_reg[105]_0 ;
  wire [0:0]\q_reg[108]_i_8 ;
  wire \q_reg[108]_i_8_0 ;
  wire [3:0]\q_reg[149] ;
  wire [3:0]\q_reg[153] ;
  wire [3:0]\q_reg[157] ;
  wire [3:0]\q_reg[161] ;
  wire [3:0]\q_reg[165] ;
  wire [3:0]\q_reg[169] ;
  wire [3:0]\q_reg[173] ;
  wire [2:0]\q_reg[176] ;
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

  LUT4 #(
    .INIT(16'h956A)) 
    \q[108]_i_13 
       (.I0(Q[33]),
        .I1(Q[2]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[149] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[108]_i_14 
       (.I0(Q[32]),
        .I1(Q[1]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[149] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[108]_i_15 
       (.I0(Q[31]),
        .I1(Q[0]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[149] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[108]_i_16 
       (.I0(Q[30]),
        .I1(\q_reg[108]_i_8 ),
        .O(\q_reg[149] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[112]_i_13 
       (.I0(Q[37]),
        .I1(Q[6]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[153] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[112]_i_14 
       (.I0(Q[36]),
        .I1(Q[5]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[153] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[112]_i_15 
       (.I0(Q[35]),
        .I1(Q[4]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[153] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[112]_i_16 
       (.I0(Q[34]),
        .I1(Q[3]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[153] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[116]_i_12 
       (.I0(Q[41]),
        .I1(Q[10]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[157] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[116]_i_13 
       (.I0(Q[40]),
        .I1(Q[9]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[157] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[116]_i_14 
       (.I0(Q[39]),
        .I1(Q[8]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[157] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[116]_i_15 
       (.I0(Q[38]),
        .I1(Q[7]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[157] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[120]_i_12 
       (.I0(Q[45]),
        .I1(Q[14]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[161] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[120]_i_13 
       (.I0(Q[44]),
        .I1(Q[13]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[161] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[120]_i_14 
       (.I0(Q[43]),
        .I1(Q[12]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[161] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[120]_i_15 
       (.I0(Q[42]),
        .I1(Q[11]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[161] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[124]_i_14 
       (.I0(Q[49]),
        .I1(Q[18]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[165] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[124]_i_15 
       (.I0(Q[48]),
        .I1(Q[17]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[165] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[124]_i_16 
       (.I0(Q[47]),
        .I1(Q[16]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[165] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[124]_i_17 
       (.I0(Q[46]),
        .I1(Q[15]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[165] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[128]_i_18 
       (.I0(Q[53]),
        .I1(Q[22]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[169] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[128]_i_19 
       (.I0(Q[52]),
        .I1(Q[21]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[169] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[128]_i_20 
       (.I0(Q[51]),
        .I1(Q[20]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[169] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[128]_i_21 
       (.I0(Q[50]),
        .I1(Q[19]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[169] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[132]_i_14 
       (.I0(Q[57]),
        .I1(Q[26]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[173] [3]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[132]_i_15 
       (.I0(Q[56]),
        .I1(Q[25]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[173] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[132]_i_16 
       (.I0(Q[55]),
        .I1(Q[24]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[173] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[132]_i_17 
       (.I0(Q[54]),
        .I1(Q[23]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[173] [0]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[136]_i_26 
       (.I0(Q[60]),
        .I1(Q[29]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[176] [2]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[136]_i_27 
       (.I0(Q[59]),
        .I1(Q[28]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[176] [1]));
  LUT4 #(
    .INIT(16'h956A)) 
    \q[136]_i_28 
       (.I0(Q[58]),
        .I1(Q[27]),
        .I2(\q_reg[108]_i_8_0 ),
        .I3(\q_reg[108]_i_8 ),
        .O(\q_reg[176] [0]));
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
        .DI(\q_reg[105] ),
        .O(\NLW_result0_inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\q_reg[105]_0 ));
endmodule

module design_1_top_0_0_controller
   (funct3E,
    D,
    PCSrcE,
    FlushE,
    \q_reg[13] ,
    Q,
    \q_reg[11]_rep__1 ,
    \q_reg[13]_0 ,
    \q_reg[14] ,
    \q_reg[12] ,
    \q_reg[12]_0 ,
    \q_reg[155] ,
    \q_reg[15] ,
    \q_reg[11]_rep__0 ,
    \q_reg[11]_rep ,
    \q_reg[11]_rep__0_0 ,
    \q_reg[11]_rep__1_0 ,
    \q_reg[12]_1 ,
    \q_reg[11]_rep__1_1 ,
    \q_reg[11]_rep__1_2 ,
    p_4_in,
    PCSrc1__6,
    condinvb__0,
    \q_reg[1] ,
    p_0_in,
    clk,
    reset,
    InstrF,
    \q_reg[15]_0 ,
    ovfE,
    \q_reg[105] ,
    CO,
    data6,
    \q_reg[105]_0 ,
    \q_reg[105]_1 ,
    \q_reg[105]_2 ,
    \q_reg[136] ,
    \q_reg[105]_3 ,
    \q_reg[106] ,
    \q_reg[106]_0 ,
    \q_reg[106]_1 ,
    \q_reg[107] ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    \q_reg[108] ,
    \q_reg[108]_0 ,
    \q_reg[108]_1 ,
    \q[15]_i_5 ,
    \q_reg[110] ,
    \q_reg[109] ,
    \q_reg[109]_0 ,
    \q_reg[109]_1 ,
    \q_reg[109]_2 ,
    \q_reg[110]_0 ,
    \q_reg[111] ,
    \q_reg[112] ,
    \q_reg[111]_0 ,
    \q_reg[112]_0 ,
    \q[15]_i_4 ,
    \q_reg[113] ,
    \q_reg[113]_0 ,
    \q_reg[114] ,
    \q_reg[114]_0 ,
    \q_reg[115] ,
    \q_reg[115]_0 ,
    \q_reg[116] ,
    \q_reg[116]_0 ,
    \q_reg[117] ,
    \q_reg[117]_0 ,
    \q_reg[118] ,
    \q_reg[118]_0 ,
    \q_reg[119] ,
    \q_reg[119]_0 ,
    \q_reg[120] ,
    \q_reg[120]_0 ,
    \q_reg[121] ,
    \q_reg[121]_0 ,
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
    \q_reg[135] ,
    \q_reg[134]_0 ,
    \q_reg[134]_1 ,
    \q_reg[135]_0 ,
    \q_reg[135]_1 ,
    \q_reg[136]_0 ,
    \q[15]_i_7 ,
    \q[15]_i_7_0 ,
    \q[15]_i_6 ,
    \q[15]_i_6_0 ,
    SrcBE__0,
    O,
    \q[15]_i_6_1 ,
    \q[15]_i_6_2 ,
    \q[15]_i_8 ,
    \q_reg[112]_1 ,
    \q_reg[116]_1 ,
    \q_reg[120]_1 ,
    \q_reg[124]_1 ,
    \q_reg[128]_1 ,
    \q_reg[132]_1 ,
    \q[31]_i_12 ,
    \q_reg[11]_rep_0 ,
    \q_reg[11]_rep__0_1 ,
    \q_reg[11]_rep__1_3 );
  output [2:0]funct3E;
  output [31:0]D;
  output [0:0]PCSrcE;
  output FlushE;
  output [31:0]\q_reg[13] ;
  output [5:0]Q;
  output \q_reg[11]_rep__1 ;
  output \q_reg[13]_0 ;
  output \q_reg[14] ;
  output \q_reg[12] ;
  output \q_reg[12]_0 ;
  output \q_reg[155] ;
  output \q_reg[15] ;
  output \q_reg[11]_rep__0 ;
  output \q_reg[11]_rep ;
  output \q_reg[11]_rep__0_0 ;
  output \q_reg[11]_rep__1_0 ;
  output \q_reg[12]_1 ;
  output \q_reg[11]_rep__1_1 ;
  output \q_reg[11]_rep__1_2 ;
  output p_4_in;
  output PCSrc1__6;
  output [0:0]condinvb__0;
  output [1:0]\q_reg[1] ;
  input [19:0]p_0_in;
  input clk;
  input reset;
  input [31:0]InstrF;
  input \q_reg[15]_0 ;
  input ovfE;
  input \q_reg[105] ;
  input [0:0]CO;
  input [0:0]data6;
  input \q_reg[105]_0 ;
  input \q_reg[105]_1 ;
  input \q_reg[105]_2 ;
  input [59:0]\q_reg[136] ;
  input \q_reg[105]_3 ;
  input \q_reg[106] ;
  input \q_reg[106]_0 ;
  input \q_reg[106]_1 ;
  input \q_reg[107] ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input \q_reg[108] ;
  input \q_reg[108]_0 ;
  input \q_reg[108]_1 ;
  input \q[15]_i_5 ;
  input \q_reg[110] ;
  input \q_reg[109] ;
  input \q_reg[109]_0 ;
  input \q_reg[109]_1 ;
  input \q_reg[109]_2 ;
  input \q_reg[110]_0 ;
  input \q_reg[111] ;
  input \q_reg[112] ;
  input \q_reg[111]_0 ;
  input \q_reg[112]_0 ;
  input \q[15]_i_4 ;
  input \q_reg[113] ;
  input \q_reg[113]_0 ;
  input \q_reg[114] ;
  input \q_reg[114]_0 ;
  input \q_reg[115] ;
  input \q_reg[115]_0 ;
  input \q_reg[116] ;
  input \q_reg[116]_0 ;
  input \q_reg[117] ;
  input \q_reg[117]_0 ;
  input \q_reg[118] ;
  input \q_reg[118]_0 ;
  input \q_reg[119] ;
  input \q_reg[119]_0 ;
  input \q_reg[120] ;
  input \q_reg[120]_0 ;
  input \q_reg[121] ;
  input \q_reg[121]_0 ;
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
  input \q_reg[135] ;
  input \q_reg[134]_0 ;
  input \q_reg[134]_1 ;
  input \q_reg[135]_0 ;
  input \q_reg[135]_1 ;
  input \q_reg[136]_0 ;
  input \q[15]_i_7 ;
  input \q[15]_i_7_0 ;
  input \q[15]_i_6 ;
  input \q[15]_i_6_0 ;
  input [3:0]SrcBE__0;
  input [3:0]O;
  input \q[15]_i_6_1 ;
  input \q[15]_i_6_2 ;
  input \q[15]_i_8 ;
  input [2:0]\q_reg[112]_1 ;
  input [3:0]\q_reg[116]_1 ;
  input [3:0]\q_reg[120]_1 ;
  input [3:0]\q_reg[124]_1 ;
  input [3:0]\q_reg[128]_1 ;
  input [3:0]\q_reg[132]_1 ;
  input [0:0]\q[31]_i_12 ;
  input \q_reg[11]_rep_0 ;
  input \q_reg[11]_rep__0_1 ;
  input \q_reg[11]_rep__1_3 ;

  wire [0:0]CO;
  wire [31:0]D;
  wire FlushE;
  wire [31:0]InstrF;
  wire [3:0]O;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [5:0]Q;
  wire [3:0]SrcBE__0;
  wire clk;
  wire [0:0]condinvb__0;
  wire controlregE_n_70;
  wire [0:0]data6;
  wire [2:0]funct3E;
  wire ovfE;
  wire [19:0]p_0_in;
  wire [0:0]p_0_in_0;
  wire p_4_in;
  wire \q[15]_i_4 ;
  wire \q[15]_i_5 ;
  wire \q[15]_i_6 ;
  wire \q[15]_i_6_0 ;
  wire \q[15]_i_6_1 ;
  wire \q[15]_i_6_2 ;
  wire \q[15]_i_7 ;
  wire \q[15]_i_7_0 ;
  wire \q[15]_i_8 ;
  wire [0:0]\q[31]_i_12 ;
  wire \q_reg[105] ;
  wire \q_reg[105]_0 ;
  wire \q_reg[105]_1 ;
  wire \q_reg[105]_2 ;
  wire \q_reg[105]_3 ;
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
  wire \q_reg[109]_2 ;
  wire \q_reg[110] ;
  wire \q_reg[110]_0 ;
  wire \q_reg[111] ;
  wire \q_reg[111]_0 ;
  wire \q_reg[112] ;
  wire \q_reg[112]_0 ;
  wire [2:0]\q_reg[112]_1 ;
  wire \q_reg[113] ;
  wire \q_reg[113]_0 ;
  wire \q_reg[114] ;
  wire \q_reg[114]_0 ;
  wire \q_reg[115] ;
  wire \q_reg[115]_0 ;
  wire \q_reg[116] ;
  wire \q_reg[116]_0 ;
  wire [3:0]\q_reg[116]_1 ;
  wire \q_reg[117] ;
  wire \q_reg[117]_0 ;
  wire \q_reg[118] ;
  wire \q_reg[118]_0 ;
  wire \q_reg[119] ;
  wire \q_reg[119]_0 ;
  wire \q_reg[11]_rep ;
  wire \q_reg[11]_rep_0 ;
  wire \q_reg[11]_rep__0 ;
  wire \q_reg[11]_rep__0_0 ;
  wire \q_reg[11]_rep__0_1 ;
  wire \q_reg[11]_rep__1 ;
  wire \q_reg[11]_rep__1_0 ;
  wire \q_reg[11]_rep__1_1 ;
  wire \q_reg[11]_rep__1_2 ;
  wire \q_reg[11]_rep__1_3 ;
  wire \q_reg[120] ;
  wire \q_reg[120]_0 ;
  wire [3:0]\q_reg[120]_1 ;
  wire \q_reg[121] ;
  wire \q_reg[121]_0 ;
  wire \q_reg[122] ;
  wire \q_reg[122]_0 ;
  wire \q_reg[123] ;
  wire \q_reg[123]_0 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire [3:0]\q_reg[124]_1 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire [3:0]\q_reg[128]_1 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire [3:0]\q_reg[132]_1 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire \q_reg[134]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire [59:0]\q_reg[136] ;
  wire \q_reg[136]_0 ;
  wire [31:0]\q_reg[13] ;
  wire \q_reg[13]_0 ;
  wire \q_reg[14] ;
  wire \q_reg[155] ;
  wire \q_reg[15] ;
  wire \q_reg[15]_0 ;
  wire [1:0]\q_reg[1] ;
  wire reset;

  design_1_top_0_0_floprc controlregE
       (.CO(CO),
        .D(D),
        .FlushE(FlushE),
        .InstrF(InstrF),
        .O(O),
        .PCSrc1__6(PCSrc1__6),
        .Q({Q[5],controlregE_n_70,Q[4:0],p_0_in_0}),
        .SrcBE__0(SrcBE__0),
        .clk(clk),
        .condinvb__0(condinvb__0),
        .data6(data6),
        .funct3E(funct3E[1:0]),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .p_4_in(p_4_in),
        .\q[15]_i_4_0 (\q[15]_i_4 ),
        .\q[15]_i_5_0 (\q[15]_i_5 ),
        .\q[15]_i_6_0 (\q[15]_i_6 ),
        .\q[15]_i_6_1 (\q[15]_i_6_0 ),
        .\q[15]_i_6_2 (\q[15]_i_6_1 ),
        .\q[15]_i_6_3 (\q[15]_i_6_2 ),
        .\q[15]_i_7_0 (\q[15]_i_7 ),
        .\q[15]_i_7_1 (\q[15]_i_7_0 ),
        .\q[15]_i_8_0 (\q[15]_i_8 ),
        .\q[31]_i_12_0 (\q[31]_i_12 ),
        .\q_reg[105] (\q_reg[105] ),
        .\q_reg[105]_0 (\q_reg[105]_0 ),
        .\q_reg[105]_1 (\q_reg[105]_1 ),
        .\q_reg[105]_2 (\q_reg[105]_2 ),
        .\q_reg[105]_3 (\q_reg[105]_3 ),
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
        .\q_reg[109]_2 (\q_reg[109]_2 ),
        .\q_reg[10]_0 (funct3E[2]),
        .\q_reg[110] (\q_reg[110] ),
        .\q_reg[110]_0 (\q_reg[110]_0 ),
        .\q_reg[111] (\q_reg[111] ),
        .\q_reg[111]_0 (\q_reg[111]_0 ),
        .\q_reg[112] (\q_reg[112] ),
        .\q_reg[112]_0 (\q_reg[112]_0 ),
        .\q_reg[112]_1 (\q_reg[112]_1 ),
        .\q_reg[113] (\q_reg[113] ),
        .\q_reg[113]_0 (\q_reg[113]_0 ),
        .\q_reg[114] (\q_reg[114] ),
        .\q_reg[114]_0 (\q_reg[114]_0 ),
        .\q_reg[115] (\q_reg[115] ),
        .\q_reg[115]_0 (\q_reg[115]_0 ),
        .\q_reg[116] (\q_reg[116] ),
        .\q_reg[116]_0 (\q_reg[116]_0 ),
        .\q_reg[116]_1 (\q_reg[116]_1 ),
        .\q_reg[117] (\q_reg[117] ),
        .\q_reg[117]_0 (\q_reg[117]_0 ),
        .\q_reg[118] (\q_reg[118] ),
        .\q_reg[118]_0 (\q_reg[118]_0 ),
        .\q_reg[119] (\q_reg[119] ),
        .\q_reg[119]_0 (\q_reg[119]_0 ),
        .\q_reg[11]_rep_0 (\q_reg[11]_rep ),
        .\q_reg[11]_rep_1 (\q_reg[11]_rep_0 ),
        .\q_reg[11]_rep__0_0 (\q_reg[11]_rep__0 ),
        .\q_reg[11]_rep__0_1 (\q_reg[11]_rep__0_0 ),
        .\q_reg[11]_rep__0_2 (\q_reg[11]_rep__0_1 ),
        .\q_reg[11]_rep__1_0 (\q_reg[11]_rep__1 ),
        .\q_reg[11]_rep__1_1 (\q_reg[11]_rep__1_0 ),
        .\q_reg[11]_rep__1_2 (\q_reg[11]_rep__1_1 ),
        .\q_reg[11]_rep__1_3 (\q_reg[11]_rep__1_2 ),
        .\q_reg[11]_rep__1_4 (\q_reg[11]_rep__1_3 ),
        .\q_reg[120] (\q_reg[120] ),
        .\q_reg[120]_0 (\q_reg[120]_0 ),
        .\q_reg[120]_1 (\q_reg[120]_1 ),
        .\q_reg[121] (\q_reg[121] ),
        .\q_reg[121]_0 (\q_reg[121]_0 ),
        .\q_reg[122] (\q_reg[122] ),
        .\q_reg[122]_0 (\q_reg[122]_0 ),
        .\q_reg[123] (\q_reg[123] ),
        .\q_reg[123]_0 (\q_reg[123]_0 ),
        .\q_reg[124] (\q_reg[124] ),
        .\q_reg[124]_0 (\q_reg[124]_0 ),
        .\q_reg[124]_1 (\q_reg[124]_1 ),
        .\q_reg[125] (\q_reg[125] ),
        .\q_reg[125]_0 (\q_reg[125]_0 ),
        .\q_reg[126] (\q_reg[126] ),
        .\q_reg[126]_0 (\q_reg[126]_0 ),
        .\q_reg[127] (\q_reg[127] ),
        .\q_reg[127]_0 (\q_reg[127]_0 ),
        .\q_reg[128] (\q_reg[128] ),
        .\q_reg[128]_0 (\q_reg[128]_0 ),
        .\q_reg[128]_1 (\q_reg[128]_1 ),
        .\q_reg[129] (\q_reg[129] ),
        .\q_reg[129]_0 (\q_reg[129]_0 ),
        .\q_reg[12]_0 (\q_reg[12] ),
        .\q_reg[12]_1 (\q_reg[12]_0 ),
        .\q_reg[12]_2 (\q_reg[12]_1 ),
        .\q_reg[130] (\q_reg[130] ),
        .\q_reg[130]_0 (\q_reg[130]_0 ),
        .\q_reg[131] (\q_reg[131] ),
        .\q_reg[131]_0 (\q_reg[131]_0 ),
        .\q_reg[132] (\q_reg[132] ),
        .\q_reg[132]_0 (\q_reg[132]_0 ),
        .\q_reg[132]_1 (\q_reg[132]_1 ),
        .\q_reg[133] (\q_reg[133] ),
        .\q_reg[133]_0 (\q_reg[133]_0 ),
        .\q_reg[134] (\q_reg[134] ),
        .\q_reg[134]_0 (\q_reg[134]_0 ),
        .\q_reg[134]_1 (\q_reg[134]_1 ),
        .\q_reg[135] (\q_reg[135] ),
        .\q_reg[135]_0 (\q_reg[135]_0 ),
        .\q_reg[135]_1 (\q_reg[135]_1 ),
        .\q_reg[136] (\q_reg[136] ),
        .\q_reg[136]_0 (\q_reg[136]_0 ),
        .\q_reg[13]_0 (\q_reg[13] ),
        .\q_reg[13]_1 (\q_reg[13]_0 ),
        .\q_reg[14]_0 (\q_reg[14] ),
        .\q_reg[155] (\q_reg[155] ),
        .\q_reg[15]_0 (\q_reg[15] ),
        .\q_reg[15]_1 (\q_reg[15]_0 ),
        .\q_reg[16]_0 (PCSrcE),
        .reset(reset));
  design_1_top_0_0_flopr controlregM
       (.D({controlregE_n_70,p_0_in_0}),
        .clk(clk),
        .\q_reg[1]_0 (\q_reg[1] ),
        .reset(reset));
endmodule

module design_1_top_0_0_datapath
   (PCF,
    Q,
    CO,
    \q_reg[19] ,
    p_0_in,
    \q_reg[177] ,
    \q_reg[39] ,
    O,
    ovfE,
    \q_reg[12] ,
    \q_reg[37] ,
    \q_reg[12]_0 ,
    \q_reg[12]_1 ,
    \q_reg[164] ,
    \q_reg[12]_2 ,
    \q_reg[165] ,
    \q_reg[12]_3 ,
    \q_reg[12]_4 ,
    \q_reg[12]_5 ,
    \q_reg[12]_6 ,
    \q_reg[12]_7 ,
    \q_reg[12]_8 ,
    \q_reg[12]_9 ,
    \q_reg[12]_10 ,
    \q_reg[12]_11 ,
    \q_reg[37]_0 ,
    \q_reg[12]_12 ,
    \q_reg[12]_13 ,
    \q_reg[12]_14 ,
    \q_reg[12]_15 ,
    \q_reg[12]_16 ,
    \q_reg[12]_17 ,
    \q_reg[12]_18 ,
    \q_reg[12]_19 ,
    \q_reg[12]_20 ,
    \q_reg[36] ,
    \q_reg[36]_0 ,
    \q_reg[36]_1 ,
    \q_reg[36]_2 ,
    \q_reg[175] ,
    \q_reg[175]_0 ,
    \q_reg[14] ,
    \q_reg[150] ,
    \q_reg[150]_0 ,
    data6,
    \q_reg[37]_1 ,
    \q_reg[12]_21 ,
    \q_reg[12]_22 ,
    \q_reg[12]_23 ,
    \q_reg[12]_24 ,
    \q_reg[12]_25 ,
    \q_reg[147] ,
    \q_reg[146] ,
    \q_reg[12]_26 ,
    \q_reg[36]_3 ,
    \q_reg[146]_0 ,
    \q_reg[12]_27 ,
    \q_reg[11]_rep__0 ,
    \q_reg[12]_28 ,
    \q_reg[147]_0 ,
    \q_reg[147]_1 ,
    \q_reg[157] ,
    \q_reg[12]_29 ,
    \q_reg[12]_30 ,
    \q_reg[12]_31 ,
    \q_reg[12]_32 ,
    \q_reg[12]_33 ,
    \q_reg[12]_34 ,
    \q_reg[12]_35 ,
    \q_reg[176] ,
    \q_reg[12]_36 ,
    \q_reg[12]_37 ,
    \q_reg[12]_38 ,
    \q_reg[12]_39 ,
    \q_reg[12]_40 ,
    \q_reg[12]_41 ,
    \q_reg[12]_42 ,
    \q_reg[12]_43 ,
    \q_reg[12]_44 ,
    \q_reg[12]_45 ,
    \q_reg[12]_46 ,
    \q_reg[12]_47 ,
    \q_reg[12]_48 ,
    \q_reg[12]_49 ,
    \q_reg[11]_rep__1 ,
    \q_reg[12]_50 ,
    \q_reg[13] ,
    \q_reg[149] ,
    \q_reg[148] ,
    \q_reg[147]_2 ,
    \q_reg[11]_rep__0_0 ,
    \q_reg[11]_rep__0_1 ,
    \q_reg[70] ,
    \q_reg[70]_0 ,
    \q_reg[70]_1 ,
    \q_reg[153] ,
    \q_reg[161] ,
    \q_reg[165]_0 ,
    \q_reg[169] ,
    \q_reg[173] ,
    \q_reg[177]_0 ,
    ALUResultM,
    WriteDataM,
    D,
    PCSrcE,
    PCSrc1__6,
    FlushE,
    \q_reg[32] ,
    p_4_in,
    \q_reg[106] ,
    \q_reg[107] ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    \q_reg[133]_1 ,
    \q[31]_i_17 ,
    \q[31]_i_17_0 ,
    \q[31]_i_17_1 ,
    \q_reg[118] ,
    \q_reg[106]_0 ,
    \q[15]_i_7 ,
    \q_reg[106]_1 ,
    \q_reg[135] ,
    \q_reg[135]_0 ,
    condinvb__0,
    clk,
    reset,
    \q_reg[136] ,
    MemWriteM,
    ReadDataM);
  output [31:0]PCF;
  output [59:0]Q;
  output [0:0]CO;
  output \q_reg[19] ;
  output [19:0]p_0_in;
  output \q_reg[177] ;
  output [3:0]\q_reg[39] ;
  output [3:0]O;
  output ovfE;
  output \q_reg[12] ;
  output \q_reg[37] ;
  output \q_reg[12]_0 ;
  output \q_reg[12]_1 ;
  output \q_reg[164] ;
  output \q_reg[12]_2 ;
  output \q_reg[165] ;
  output \q_reg[12]_3 ;
  output \q_reg[12]_4 ;
  output \q_reg[12]_5 ;
  output \q_reg[12]_6 ;
  output \q_reg[12]_7 ;
  output \q_reg[12]_8 ;
  output \q_reg[12]_9 ;
  output \q_reg[12]_10 ;
  output \q_reg[12]_11 ;
  output \q_reg[37]_0 ;
  output \q_reg[12]_12 ;
  output \q_reg[12]_13 ;
  output \q_reg[12]_14 ;
  output \q_reg[12]_15 ;
  output \q_reg[12]_16 ;
  output \q_reg[12]_17 ;
  output \q_reg[12]_18 ;
  output \q_reg[12]_19 ;
  output \q_reg[12]_20 ;
  output \q_reg[36] ;
  output \q_reg[36]_0 ;
  output \q_reg[36]_1 ;
  output \q_reg[36]_2 ;
  output \q_reg[175] ;
  output \q_reg[175]_0 ;
  output \q_reg[14] ;
  output \q_reg[150] ;
  output \q_reg[150]_0 ;
  output [0:0]data6;
  output \q_reg[37]_1 ;
  output \q_reg[12]_21 ;
  output \q_reg[12]_22 ;
  output \q_reg[12]_23 ;
  output \q_reg[12]_24 ;
  output \q_reg[12]_25 ;
  output \q_reg[147] ;
  output \q_reg[146] ;
  output \q_reg[12]_26 ;
  output \q_reg[36]_3 ;
  output \q_reg[146]_0 ;
  output \q_reg[12]_27 ;
  output \q_reg[11]_rep__0 ;
  output \q_reg[12]_28 ;
  output \q_reg[147]_0 ;
  output \q_reg[147]_1 ;
  output [3:0]\q_reg[157] ;
  output \q_reg[12]_29 ;
  output \q_reg[12]_30 ;
  output \q_reg[12]_31 ;
  output \q_reg[12]_32 ;
  output \q_reg[12]_33 ;
  output \q_reg[12]_34 ;
  output \q_reg[12]_35 ;
  output \q_reg[176] ;
  output \q_reg[12]_36 ;
  output \q_reg[12]_37 ;
  output \q_reg[12]_38 ;
  output \q_reg[12]_39 ;
  output \q_reg[12]_40 ;
  output \q_reg[12]_41 ;
  output \q_reg[12]_42 ;
  output \q_reg[12]_43 ;
  output \q_reg[12]_44 ;
  output \q_reg[12]_45 ;
  output \q_reg[12]_46 ;
  output \q_reg[12]_47 ;
  output \q_reg[12]_48 ;
  output \q_reg[12]_49 ;
  output \q_reg[11]_rep__1 ;
  output \q_reg[12]_50 ;
  output \q_reg[13] ;
  output \q_reg[149] ;
  output \q_reg[148] ;
  output \q_reg[147]_2 ;
  output \q_reg[11]_rep__0_0 ;
  output \q_reg[11]_rep__0_1 ;
  output \q_reg[70] ;
  output \q_reg[70]_0 ;
  output \q_reg[70]_1 ;
  output [2:0]\q_reg[153] ;
  output [3:0]\q_reg[161] ;
  output [3:0]\q_reg[165]_0 ;
  output [3:0]\q_reg[169] ;
  output [3:0]\q_reg[173] ;
  output [0:0]\q_reg[177]_0 ;
  output [31:0]ALUResultM;
  output [31:0]WriteDataM;
  input [31:0]D;
  input [0:0]PCSrcE;
  input PCSrc1__6;
  input FlushE;
  input [5:0]\q_reg[32] ;
  input p_4_in;
  input \q_reg[106] ;
  input \q_reg[107] ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input \q_reg[133]_1 ;
  input \q[31]_i_17 ;
  input \q[31]_i_17_0 ;
  input \q[31]_i_17_1 ;
  input \q_reg[118] ;
  input \q_reg[106]_0 ;
  input \q[15]_i_7 ;
  input \q_reg[106]_1 ;
  input \q_reg[135] ;
  input \q_reg[135]_0 ;
  input [0:0]condinvb__0;
  input clk;
  input reset;
  input [34:0]\q_reg[136] ;
  input MemWriteM;
  input [31:0]ReadDataM;

  wire [31:0]ALUResultM;
  wire [0:0]CO;
  wire [31:0]D;
  wire FlushE;
  wire [3:1]ImmExtE;
  wire MemWriteM;
  wire [3:0]O;
  wire [31:0]PCF;
  wire [31:0]PCNextF;
  wire [31:3]PCPlus4F;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [31:28]PCTargetE;
  wire [59:0]Q;
  wire [0:0]RD1E;
  wire [31:0]ReadDataM;
  wire [4:0]Rs1D;
  wire [4:0]Rs2D;
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
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire clk;
  wire [0:0]condinvb__0;
  wire [0:0]data6;
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
  wire [19:0]p_0_in;
  wire [63:32]p_0_in_0;
  wire [177:35]p_0_in_1;
  wire p_4_in;
  wire \q[15]_i_7 ;
  wire \q[31]_i_17 ;
  wire \q[31]_i_17_0 ;
  wire \q[31]_i_17_1 ;
  wire \q_reg[106] ;
  wire \q_reg[106]_0 ;
  wire \q_reg[106]_1 ;
  wire \q_reg[107] ;
  wire \q_reg[118] ;
  wire \q_reg[11]_rep__0 ;
  wire \q_reg[11]_rep__0_0 ;
  wire \q_reg[11]_rep__0_1 ;
  wire \q_reg[11]_rep__1 ;
  wire \q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[12]_10 ;
  wire \q_reg[12]_11 ;
  wire \q_reg[12]_12 ;
  wire \q_reg[12]_13 ;
  wire \q_reg[12]_14 ;
  wire \q_reg[12]_15 ;
  wire \q_reg[12]_16 ;
  wire \q_reg[12]_17 ;
  wire \q_reg[12]_18 ;
  wire \q_reg[12]_19 ;
  wire \q_reg[12]_2 ;
  wire \q_reg[12]_20 ;
  wire \q_reg[12]_21 ;
  wire \q_reg[12]_22 ;
  wire \q_reg[12]_23 ;
  wire \q_reg[12]_24 ;
  wire \q_reg[12]_25 ;
  wire \q_reg[12]_26 ;
  wire \q_reg[12]_27 ;
  wire \q_reg[12]_28 ;
  wire \q_reg[12]_29 ;
  wire \q_reg[12]_3 ;
  wire \q_reg[12]_30 ;
  wire \q_reg[12]_31 ;
  wire \q_reg[12]_32 ;
  wire \q_reg[12]_33 ;
  wire \q_reg[12]_34 ;
  wire \q_reg[12]_35 ;
  wire \q_reg[12]_36 ;
  wire \q_reg[12]_37 ;
  wire \q_reg[12]_38 ;
  wire \q_reg[12]_39 ;
  wire \q_reg[12]_4 ;
  wire \q_reg[12]_40 ;
  wire \q_reg[12]_41 ;
  wire \q_reg[12]_42 ;
  wire \q_reg[12]_43 ;
  wire \q_reg[12]_44 ;
  wire \q_reg[12]_45 ;
  wire \q_reg[12]_46 ;
  wire \q_reg[12]_47 ;
  wire \q_reg[12]_48 ;
  wire \q_reg[12]_49 ;
  wire \q_reg[12]_5 ;
  wire \q_reg[12]_50 ;
  wire \q_reg[12]_6 ;
  wire \q_reg[12]_7 ;
  wire \q_reg[12]_8 ;
  wire \q_reg[12]_9 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[133]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire [34:0]\q_reg[136] ;
  wire \q_reg[13] ;
  wire \q_reg[146] ;
  wire \q_reg[146]_0 ;
  wire \q_reg[147] ;
  wire \q_reg[147]_0 ;
  wire \q_reg[147]_1 ;
  wire \q_reg[147]_2 ;
  wire \q_reg[148] ;
  wire \q_reg[149] ;
  wire \q_reg[14] ;
  wire \q_reg[150] ;
  wire \q_reg[150]_0 ;
  wire [2:0]\q_reg[153] ;
  wire [3:0]\q_reg[157] ;
  wire [3:0]\q_reg[161] ;
  wire \q_reg[164] ;
  wire \q_reg[165] ;
  wire [3:0]\q_reg[165]_0 ;
  wire [3:0]\q_reg[169] ;
  wire [3:0]\q_reg[173] ;
  wire \q_reg[175] ;
  wire \q_reg[175]_0 ;
  wire \q_reg[176] ;
  wire \q_reg[177] ;
  wire [0:0]\q_reg[177]_0 ;
  wire \q_reg[19] ;
  wire [5:0]\q_reg[32] ;
  wire \q_reg[36] ;
  wire \q_reg[36]_0 ;
  wire \q_reg[36]_1 ;
  wire \q_reg[36]_2 ;
  wire \q_reg[36]_3 ;
  wire \q_reg[37] ;
  wire \q_reg[37]_0 ;
  wire \q_reg[37]_1 ;
  wire [3:0]\q_reg[39] ;
  wire \q_reg[70] ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire regE_n_108;
  wire regE_n_109;
  wire regE_n_110;
  wire regE_n_111;
  wire regE_n_112;
  wire regE_n_113;
  wire regE_n_114;
  wire regE_n_115;
  wire regE_n_116;
  wire regE_n_117;
  wire regE_n_118;
  wire regE_n_119;
  wire regE_n_120;
  wire regE_n_121;
  wire regE_n_122;
  wire regE_n_123;
  wire regE_n_180;
  wire regE_n_181;
  wire regE_n_182;
  wire regE_n_183;
  wire regE_n_184;
  wire regE_n_185;
  wire regE_n_186;
  wire regE_n_187;
  wire regE_n_188;
  wire regE_n_189;
  wire regE_n_190;
  wire regE_n_191;
  wire regE_n_192;
  wire regE_n_193;
  wire regE_n_194;
  wire regE_n_195;
  wire regE_n_196;
  wire regE_n_197;
  wire regE_n_198;
  wire regE_n_199;
  wire regE_n_200;
  wire regE_n_201;
  wire regE_n_202;
  wire regE_n_203;
  wire regE_n_204;
  wire regE_n_226;
  wire regE_n_227;
  wire regE_n_228;
  wire regE_n_229;
  wire regE_n_230;
  wire regE_n_231;
  wire regE_n_232;
  wire regE_n_233;
  wire regE_n_234;
  wire regE_n_235;
  wire regE_n_236;
  wire regE_n_237;
  wire regE_n_238;
  wire regE_n_239;
  wire regE_n_240;
  wire regE_n_241;
  wire regE_n_242;
  wire regE_n_243;
  wire regE_n_244;
  wire regE_n_245;
  wire regE_n_246;
  wire regE_n_247;
  wire regE_n_248;
  wire regE_n_249;
  wire regE_n_250;
  wire regE_n_251;
  wire regE_n_252;
  wire regE_n_253;
  wire regE_n_254;
  wire regE_n_255;
  wire regE_n_256;
  wire regE_n_257;
  wire regE_n_258;
  wire regE_n_259;
  wire regE_n_260;
  wire regE_n_261;
  wire regE_n_262;
  wire regE_n_263;
  wire regE_n_264;
  wire regE_n_265;
  wire regE_n_266;
  wire regE_n_267;
  wire regE_n_268;
  wire regE_n_269;
  wire regE_n_270;
  wire regE_n_271;
  wire regE_n_272;
  wire regE_n_273;
  wire regE_n_274;
  wire regE_n_275;
  wire regE_n_276;
  wire regE_n_277;
  wire regE_n_278;
  wire regE_n_279;
  wire regE_n_280;
  wire regE_n_281;
  wire regM_n_32;
  wire regM_n_33;
  wire regM_n_34;
  wire regM_n_35;
  wire regM_n_36;
  wire regM_n_37;
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
  wire reset;
  wire [3:3]NLW_jalrTarget_carry__6_CO_UNCONNECTED;

  design_1_top_0_0_alu alu
       (.CO(CO),
        .DI({regE_n_116,regE_n_117,regE_n_118,regE_n_119}),
        .Q({Q[58:29],RD1E,Q[27:1],ImmExtE}),
        .S({regE_n_120,regE_n_121,regE_n_122,regE_n_123}),
        .\q_reg[105] ({regE_n_108,regE_n_109,regE_n_110,regE_n_111}),
        .\q_reg[105]_0 ({regE_n_112,regE_n_113,regE_n_114,regE_n_115}),
        .\q_reg[108]_i_8 (\q_reg[32] [1]),
        .\q_reg[108]_i_8_0 (\q_reg[118] ),
        .\q_reg[149] ({alu_n_1,alu_n_2,alu_n_3,alu_n_4}),
        .\q_reg[153] ({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\q_reg[157] ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\q_reg[161] ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .\q_reg[165] ({alu_n_17,alu_n_18,alu_n_19,alu_n_20}),
        .\q_reg[169] ({alu_n_21,alu_n_22,alu_n_23,alu_n_24}),
        .\q_reg[173] ({alu_n_25,alu_n_26,alu_n_27,alu_n_28}),
        .\q_reg[176] ({alu_n_29,alu_n_30,alu_n_31}),
        .\result0_inferred__6/i__carry__1_0 ({regE_n_188,regE_n_189,regE_n_190,regE_n_191}),
        .\result0_inferred__6/i__carry__1_1 ({regE_n_192,regE_n_193,regE_n_194,regE_n_195}),
        .\result0_inferred__6/i__carry__2_0 ({regE_n_180,regE_n_181,regE_n_182,regE_n_183}),
        .\result0_inferred__6/i__carry__2_1 ({regE_n_184,regE_n_185,regE_n_186,regE_n_187}));
  design_1_top_0_0_adder branchadd
       (.D(PCNextF[27:0]),
        .O(PCTargetE),
        .PCF(PCF[2:0]),
        .PCPlus4F(PCPlus4F[27:3]),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({Q[27:1],ImmExtE,Q[0]}),
        .S({regE_n_226,regE_n_227,regE_n_228,regE_n_229}),
        .jalrTarget(jalrTarget[27:0]),
        .\q_reg[11] ({regE_n_234,regE_n_235,regE_n_236,regE_n_237}),
        .\q_reg[15] ({regE_n_238,regE_n_239,regE_n_240,regE_n_241}),
        .\q_reg[19] ({regE_n_242,regE_n_243,regE_n_244,regE_n_245}),
        .\q_reg[23] ({regE_n_246,regE_n_247,regE_n_248,regE_n_249}),
        .\q_reg[27] ({regE_n_250,regE_n_251,regE_n_252,regE_n_253}),
        .\q_reg[31] ({regE_n_196,regE_n_197,regE_n_198,regE_n_199}),
        .\q_reg[7] ({regE_n_230,regE_n_231,regE_n_232,regE_n_233}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry
       (.CI(1'b0),
        .CO({jalrTarget_carry_n_0,jalrTarget_carry_n_1,jalrTarget_carry_n_2,jalrTarget_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[31:29],RD1E}),
        .O(jalrTarget[3:0]),
        .S({regE_n_254,regE_n_255,regE_n_256,regE_n_257}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__0
       (.CI(jalrTarget_carry_n_0),
        .CO({jalrTarget_carry__0_n_0,jalrTarget_carry__0_n_1,jalrTarget_carry__0_n_2,jalrTarget_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[35:32]),
        .O(jalrTarget[7:4]),
        .S({regE_n_258,regE_n_259,regE_n_260,regE_n_261}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__1
       (.CI(jalrTarget_carry__0_n_0),
        .CO({jalrTarget_carry__1_n_0,jalrTarget_carry__1_n_1,jalrTarget_carry__1_n_2,jalrTarget_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[39:36]),
        .O(jalrTarget[11:8]),
        .S({regE_n_262,regE_n_263,regE_n_264,regE_n_265}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__2
       (.CI(jalrTarget_carry__1_n_0),
        .CO({jalrTarget_carry__2_n_0,jalrTarget_carry__2_n_1,jalrTarget_carry__2_n_2,jalrTarget_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[43:40]),
        .O(jalrTarget[15:12]),
        .S({regE_n_266,regE_n_267,regE_n_268,regE_n_269}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__3
       (.CI(jalrTarget_carry__2_n_0),
        .CO({jalrTarget_carry__3_n_0,jalrTarget_carry__3_n_1,jalrTarget_carry__3_n_2,jalrTarget_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[47:44]),
        .O(jalrTarget[19:16]),
        .S({regE_n_270,regE_n_271,regE_n_272,regE_n_273}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__4
       (.CI(jalrTarget_carry__3_n_0),
        .CO({jalrTarget_carry__4_n_0,jalrTarget_carry__4_n_1,jalrTarget_carry__4_n_2,jalrTarget_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[51:48]),
        .O(jalrTarget[23:20]),
        .S({regE_n_274,regE_n_275,regE_n_276,regE_n_277}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__5
       (.CI(jalrTarget_carry__4_n_0),
        .CO({jalrTarget_carry__5_n_0,jalrTarget_carry__5_n_1,jalrTarget_carry__5_n_2,jalrTarget_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[55:52]),
        .O(jalrTarget[27:24]),
        .S({regE_n_278,regE_n_279,regE_n_280,regE_n_281}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 jalrTarget_carry__6
       (.CI(jalrTarget_carry__5_n_0),
        .CO({NLW_jalrTarget_carry__6_CO_UNCONNECTED[3],jalrTarget_carry__6_n_1,jalrTarget_carry__6_n_2,jalrTarget_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[58:56]}),
        .O(jalrTarget[31:28]),
        .S({regE_n_200,regE_n_201,regE_n_202,regE_n_203}));
  design_1_top_0_0_adder_0 pcadd
       (.PCPlus4F(PCPlus4F),
        .Q(PCF[31:2]));
  design_1_top_0_0_flopenr pcreg
       (.D(p_0_in_0),
        .E(regE_n_204),
        .PCF(PCF),
        .PCSrcE(PCSrcE),
        .clk(clk),
        .\q_reg[31]_0 (PCNextF),
        .reset(reset));
  design_1_top_0_0_flopenrc regD
       (.D({p_0_in_1[177:146],p_0_in_1[113:82],p_0_in_1[71:35]}),
        .E(regE_n_204),
        .FlushE(FlushE),
        .PCSrcE(PCSrcE),
        .Q({Rs2D,Rs1D}),
        .clk(clk),
        .p_0_in(p_0_in),
        .\q_reg[11]_rep__1 (\q_reg[19] ),
        .\q_reg[70]_0 (\q_reg[70] ),
        .\q_reg[70]_1 (\q_reg[70]_0 ),
        .\q_reg[70]_2 (\q_reg[70]_1 ),
        .\q_reg[95]_0 ({D,p_0_in_0}),
        .reset(reset));
  design_1_top_0_0_floprc__parameterized0 regE
       (.D({p_0_in_1[177:146],p_0_in_1[113:82],p_0_in_1[71:35]}),
        .DI({regE_n_116,regE_n_117,regE_n_118,regE_n_119}),
        .E(regE_n_204),
        .O(PCTargetE),
        .PCPlus4F(PCPlus4F[31:28]),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({Q[59:29],RD1E,Q[28:1],ImmExtE,Q[0]}),
        .S({regE_n_120,regE_n_121,regE_n_122,regE_n_123}),
        .clk(clk),
        .condinvb__0(condinvb__0),
        .data6(data6),
        .ovfE(ovfE),
        .p_4_in(p_4_in),
        .\q[105]_i_3_0 ({alu_n_1,alu_n_2,alu_n_3,alu_n_4}),
        .\q[109]_i_4_0 ({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\q[113]_i_3 ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\q[117]_i_3 ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .\q[121]_i_4 ({alu_n_17,alu_n_18,alu_n_19,alu_n_20}),
        .\q[125]_i_4 ({alu_n_21,alu_n_22,alu_n_23,alu_n_24}),
        .\q[129]_i_4 ({alu_n_25,alu_n_26,alu_n_27,alu_n_28}),
        .\q[133]_i_4 ({alu_n_29,alu_n_30,alu_n_31}),
        .\q[15]_i_7 (\q[15]_i_7 ),
        .\q[31]_i_17 (\q[31]_i_17 ),
        .\q[31]_i_17_0 (\q[31]_i_17_0 ),
        .\q[31]_i_17_1 (\q[31]_i_17_1 ),
        .\q[31]_i_6_0 ({Rs2D,Rs1D}),
        .\q_reg[106]_0 (\q_reg[106] ),
        .\q_reg[106]_1 (\q_reg[106]_0 ),
        .\q_reg[106]_2 (\q_reg[106]_1 ),
        .\q_reg[107]_0 (\q_reg[107] ),
        .\q_reg[118] (\q_reg[118] ),
        .\q_reg[11]_rep__0 (\q_reg[11]_rep__0 ),
        .\q_reg[11]_rep__0_0 (\q_reg[11]_rep__0_0 ),
        .\q_reg[11]_rep__0_1 (\q_reg[11]_rep__0_1 ),
        .\q_reg[11]_rep__1 (\q_reg[11]_rep__1 ),
        .\q_reg[12] (\q_reg[12] ),
        .\q_reg[12]_0 (\q_reg[12]_0 ),
        .\q_reg[12]_1 (\q_reg[12]_1 ),
        .\q_reg[12]_10 (\q_reg[12]_10 ),
        .\q_reg[12]_11 (\q_reg[12]_11 ),
        .\q_reg[12]_12 (\q_reg[12]_12 ),
        .\q_reg[12]_13 (\q_reg[12]_13 ),
        .\q_reg[12]_14 (\q_reg[12]_14 ),
        .\q_reg[12]_15 (\q_reg[12]_15 ),
        .\q_reg[12]_16 (\q_reg[12]_16 ),
        .\q_reg[12]_17 (\q_reg[12]_17 ),
        .\q_reg[12]_18 (\q_reg[12]_18 ),
        .\q_reg[12]_19 (\q_reg[12]_19 ),
        .\q_reg[12]_2 (\q_reg[12]_2 ),
        .\q_reg[12]_20 (\q_reg[12]_20 ),
        .\q_reg[12]_21 (\q_reg[12]_21 ),
        .\q_reg[12]_22 (\q_reg[12]_22 ),
        .\q_reg[12]_23 (\q_reg[12]_23 ),
        .\q_reg[12]_24 (\q_reg[12]_24 ),
        .\q_reg[12]_25 (\q_reg[12]_25 ),
        .\q_reg[12]_26 (\q_reg[12]_26 ),
        .\q_reg[12]_27 (\q_reg[12]_27 ),
        .\q_reg[12]_28 (\q_reg[12]_28 ),
        .\q_reg[12]_29 (\q_reg[12]_29 ),
        .\q_reg[12]_3 (\q_reg[12]_3 ),
        .\q_reg[12]_30 (\q_reg[12]_30 ),
        .\q_reg[12]_31 (\q_reg[12]_31 ),
        .\q_reg[12]_32 (\q_reg[12]_32 ),
        .\q_reg[12]_33 (\q_reg[12]_33 ),
        .\q_reg[12]_34 (\q_reg[12]_34 ),
        .\q_reg[12]_35 (\q_reg[12]_35 ),
        .\q_reg[12]_36 (\q_reg[12]_36 ),
        .\q_reg[12]_37 (\q_reg[12]_37 ),
        .\q_reg[12]_38 (\q_reg[12]_38 ),
        .\q_reg[12]_39 (\q_reg[12]_39 ),
        .\q_reg[12]_4 (\q_reg[12]_4 ),
        .\q_reg[12]_40 (\q_reg[12]_40 ),
        .\q_reg[12]_41 (\q_reg[12]_41 ),
        .\q_reg[12]_42 (\q_reg[12]_42 ),
        .\q_reg[12]_43 (\q_reg[12]_43 ),
        .\q_reg[12]_44 (\q_reg[12]_44 ),
        .\q_reg[12]_45 (\q_reg[12]_45 ),
        .\q_reg[12]_46 (\q_reg[12]_46 ),
        .\q_reg[12]_47 (\q_reg[12]_47 ),
        .\q_reg[12]_48 (\q_reg[12]_48 ),
        .\q_reg[12]_49 (\q_reg[12]_49 ),
        .\q_reg[12]_5 (\q_reg[12]_5 ),
        .\q_reg[12]_50 (\q_reg[12]_50 ),
        .\q_reg[12]_6 (\q_reg[12]_6 ),
        .\q_reg[12]_7 (\q_reg[12]_7 ),
        .\q_reg[12]_8 (\q_reg[12]_8 ),
        .\q_reg[12]_9 (\q_reg[12]_9 ),
        .\q_reg[133] (\q_reg[133] ),
        .\q_reg[133]_0 (\q_reg[133]_0 ),
        .\q_reg[133]_1 (\q_reg[133]_1 ),
        .\q_reg[135] (\q_reg[135] ),
        .\q_reg[135]_0 (\q_reg[135]_0 ),
        .\q_reg[13] (\q_reg[13] ),
        .\q_reg[146]_0 (\q_reg[146] ),
        .\q_reg[146]_1 (\q_reg[146]_0 ),
        .\q_reg[147]_0 (\q_reg[147] ),
        .\q_reg[147]_1 (\q_reg[147]_0 ),
        .\q_reg[147]_2 (\q_reg[147]_1 ),
        .\q_reg[147]_3 (\q_reg[147]_2 ),
        .\q_reg[148]_0 (\q_reg[148] ),
        .\q_reg[149]_0 (\q_reg[149] ),
        .\q_reg[149]_1 ({regE_n_254,regE_n_255,regE_n_256,regE_n_257}),
        .\q_reg[14] (\q_reg[14] ),
        .\q_reg[150]_0 (\q_reg[150] ),
        .\q_reg[150]_1 (\q_reg[150]_0 ),
        .\q_reg[153]_0 (\q_reg[153] ),
        .\q_reg[153]_1 ({regE_n_258,regE_n_259,regE_n_260,regE_n_261}),
        .\q_reg[157]_0 (\q_reg[157] ),
        .\q_reg[157]_1 ({regE_n_262,regE_n_263,regE_n_264,regE_n_265}),
        .\q_reg[161]_0 ({regE_n_192,regE_n_193,regE_n_194,regE_n_195}),
        .\q_reg[161]_1 (\q_reg[161] ),
        .\q_reg[161]_2 ({regE_n_266,regE_n_267,regE_n_268,regE_n_269}),
        .\q_reg[164]_0 (\q_reg[164] ),
        .\q_reg[165]_0 (\q_reg[165] ),
        .\q_reg[165]_1 (\q_reg[165]_0 ),
        .\q_reg[165]_2 ({regE_n_270,regE_n_271,regE_n_272,regE_n_273}),
        .\q_reg[169]_0 (\q_reg[169] ),
        .\q_reg[169]_1 ({regE_n_274,regE_n_275,regE_n_276,regE_n_277}),
        .\q_reg[16] (PCNextF[31:28]),
        .\q_reg[173]_0 (\q_reg[173] ),
        .\q_reg[173]_1 ({regE_n_278,regE_n_279,regE_n_280,regE_n_281}),
        .\q_reg[175]_0 (\q_reg[175] ),
        .\q_reg[175]_1 (\q_reg[175]_0 ),
        .\q_reg[176]_0 (\q_reg[176] ),
        .\q_reg[177]_0 (\q_reg[177] ),
        .\q_reg[177]_1 (O),
        .\q_reg[177]_2 ({regE_n_200,regE_n_201,regE_n_202,regE_n_203}),
        .\q_reg[177]_3 (\q_reg[177]_0 ),
        .\q_reg[19] (\q_reg[19] ),
        .\q_reg[31] (jalrTarget[31:28]),
        .\q_reg[32] (\q_reg[32] ),
        .\q_reg[36]_0 (\q_reg[39] [0]),
        .\q_reg[36]_1 (\q_reg[36] ),
        .\q_reg[36]_2 (\q_reg[36]_0 ),
        .\q_reg[36]_3 (\q_reg[36]_1 ),
        .\q_reg[36]_4 (\q_reg[36]_2 ),
        .\q_reg[36]_5 (\q_reg[36]_3 ),
        .\q_reg[37]_0 (\q_reg[37] ),
        .\q_reg[37]_1 (\q_reg[37]_0 ),
        .\q_reg[37]_2 (\q_reg[37]_1 ),
        .\q_reg[37]_3 (\q_reg[39] [1]),
        .\q_reg[38]_0 (\q_reg[39] [2]),
        .\q_reg[38]_1 ({regE_n_226,regE_n_227,regE_n_228,regE_n_229}),
        .\q_reg[39]_0 (\q_reg[39] [3]),
        .\q_reg[42]_0 ({regE_n_230,regE_n_231,regE_n_232,regE_n_233}),
        .\q_reg[46]_0 ({regE_n_234,regE_n_235,regE_n_236,regE_n_237}),
        .\q_reg[49]_0 ({regE_n_188,regE_n_189,regE_n_190,regE_n_191}),
        .\q_reg[50]_0 ({regE_n_238,regE_n_239,regE_n_240,regE_n_241}),
        .\q_reg[54]_0 ({regE_n_242,regE_n_243,regE_n_244,regE_n_245}),
        .\q_reg[57]_0 ({regE_n_180,regE_n_181,regE_n_182,regE_n_183}),
        .\q_reg[57]_1 ({regE_n_184,regE_n_185,regE_n_186,regE_n_187}),
        .\q_reg[58]_0 ({regE_n_246,regE_n_247,regE_n_248,regE_n_249}),
        .\q_reg[62]_0 ({regE_n_250,regE_n_251,regE_n_252,regE_n_253}),
        .\q_reg[65]_0 ({regE_n_108,regE_n_109,regE_n_110,regE_n_111}),
        .\q_reg[65]_1 ({regE_n_112,regE_n_113,regE_n_114,regE_n_115}),
        .\q_reg[66]_0 ({regE_n_196,regE_n_197,regE_n_198,regE_n_199}),
        .reset(reset));
  design_1_top_0_0_flopr__parameterized1 regM
       (.ALUResultM(ALUResultM),
        .D({regM_n_33,regM_n_34,regM_n_35,regM_n_36,regM_n_37,regM_n_38,regM_n_39,regM_n_40,regM_n_41,regM_n_42,regM_n_43,regM_n_44,regM_n_45,regM_n_46,regM_n_47,regM_n_48,regM_n_49,regM_n_50,regM_n_51,regM_n_52,regM_n_53,regM_n_54,regM_n_55,regM_n_56,regM_n_57,regM_n_58,regM_n_59,regM_n_60,regM_n_61,regM_n_62,regM_n_63,regM_n_64}),
        .E(regM_n_32),
        .MemWriteM(MemWriteM),
        .ReadDataM(ReadDataM),
        .clk(clk),
        .\q_reg[136]_0 (\q_reg[136] ),
        .reset(reset));
  design_1_top_0_0_store store
       (.D({regM_n_33,regM_n_34,regM_n_35,regM_n_36,regM_n_37,regM_n_38,regM_n_39,regM_n_40,regM_n_41,regM_n_42,regM_n_43,regM_n_44,regM_n_45,regM_n_46,regM_n_47,regM_n_48,regM_n_49,regM_n_50,regM_n_51,regM_n_52,regM_n_53,regM_n_54,regM_n_55,regM_n_56,regM_n_57,regM_n_58,regM_n_59,regM_n_60,regM_n_61,regM_n_62,regM_n_63,regM_n_64}),
        .E(regM_n_32),
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
    PCF,
    PCSrcE,
    E,
    \q_reg[31]_0 ,
    clk,
    reset);
  output [31:0]D;
  output [31:0]PCF;
  input [0:0]PCSrcE;
  input [0:0]E;
  input [31:0]\q_reg[31]_0 ;
  input clk;
  input reset;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]PCF;
  wire [0:0]PCSrcE;
  wire clk;
  wire [31:0]\q_reg[31]_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[32]_i_1 
       (.I0(PCF[0]),
        .I1(PCSrcE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[33]_i_1 
       (.I0(PCF[1]),
        .I1(PCSrcE),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[34]_i_1 
       (.I0(PCF[2]),
        .I1(PCSrcE),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[35]_i_1 
       (.I0(PCF[3]),
        .I1(PCSrcE),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[36]_i_1 
       (.I0(PCF[4]),
        .I1(PCSrcE),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[37]_i_1 
       (.I0(PCF[5]),
        .I1(PCSrcE),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[38]_i_1 
       (.I0(PCF[6]),
        .I1(PCSrcE),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[39]_i_1 
       (.I0(PCF[7]),
        .I1(PCSrcE),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[40]_i_1 
       (.I0(PCF[8]),
        .I1(PCSrcE),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[41]_i_1 
       (.I0(PCF[9]),
        .I1(PCSrcE),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[42]_i_1 
       (.I0(PCF[10]),
        .I1(PCSrcE),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[43]_i_1 
       (.I0(PCF[11]),
        .I1(PCSrcE),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[44]_i_1 
       (.I0(PCF[12]),
        .I1(PCSrcE),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[45]_i_1 
       (.I0(PCF[13]),
        .I1(PCSrcE),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[46]_i_1 
       (.I0(PCF[14]),
        .I1(PCSrcE),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[47]_i_1 
       (.I0(PCF[15]),
        .I1(PCSrcE),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[48]_i_1 
       (.I0(PCF[16]),
        .I1(PCSrcE),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[49]_i_1 
       (.I0(PCF[17]),
        .I1(PCSrcE),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[50]_i_1 
       (.I0(PCF[18]),
        .I1(PCSrcE),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[51]_i_1 
       (.I0(PCF[19]),
        .I1(PCSrcE),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[52]_i_1 
       (.I0(PCF[20]),
        .I1(PCSrcE),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[53]_i_1 
       (.I0(PCF[21]),
        .I1(PCSrcE),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[54]_i_1 
       (.I0(PCF[22]),
        .I1(PCSrcE),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[55]_i_1 
       (.I0(PCF[23]),
        .I1(PCSrcE),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[56]_i_1 
       (.I0(PCF[24]),
        .I1(PCSrcE),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[57]_i_1 
       (.I0(PCF[25]),
        .I1(PCSrcE),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[58]_i_1 
       (.I0(PCF[26]),
        .I1(PCSrcE),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[59]_i_1 
       (.I0(PCF[27]),
        .I1(PCSrcE),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[60]_i_1 
       (.I0(PCF[28]),
        .I1(PCSrcE),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[61]_i_1 
       (.I0(PCF[29]),
        .I1(PCSrcE),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[62]_i_1 
       (.I0(PCF[30]),
        .I1(PCSrcE),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[63]_i_1 
       (.I0(PCF[31]),
        .I1(PCSrcE),
        .O(D[31]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [0]),
        .Q(PCF[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [10]),
        .Q(PCF[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [11]),
        .Q(PCF[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [12]),
        .Q(PCF[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [13]),
        .Q(PCF[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [14]),
        .Q(PCF[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [15]),
        .Q(PCF[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [16]),
        .Q(PCF[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [17]),
        .Q(PCF[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [18]),
        .Q(PCF[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [19]),
        .Q(PCF[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [1]),
        .Q(PCF[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [20]),
        .Q(PCF[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [21]),
        .Q(PCF[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [22]),
        .Q(PCF[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [23]),
        .Q(PCF[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [24]),
        .Q(PCF[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [25]),
        .Q(PCF[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [26]),
        .Q(PCF[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [27]),
        .Q(PCF[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [28]),
        .Q(PCF[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [29]),
        .Q(PCF[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [2]),
        .Q(PCF[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [30]),
        .Q(PCF[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [31]),
        .Q(PCF[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [3]),
        .Q(PCF[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [4]),
        .Q(PCF[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [5]),
        .Q(PCF[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [6]),
        .Q(PCF[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [7]),
        .Q(PCF[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [8]),
        .Q(PCF[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[31]_0 [9]),
        .Q(PCF[9]));
endmodule

module design_1_top_0_0_flopenrc
   (D,
    Q,
    p_0_in,
    \q_reg[70]_0 ,
    \q_reg[70]_1 ,
    \q_reg[70]_2 ,
    PCSrcE,
    \q_reg[11]_rep__1 ,
    FlushE,
    E,
    \q_reg[95]_0 ,
    clk,
    reset);
  output [100:0]D;
  output [9:0]Q;
  output [19:0]p_0_in;
  output \q_reg[70]_0 ;
  output \q_reg[70]_1 ;
  output \q_reg[70]_2 ;
  input [0:0]PCSrcE;
  input \q_reg[11]_rep__1 ;
  input FlushE;
  input [0:0]E;
  input [63:0]\q_reg[95]_0 ;
  input clk;
  input reset;

  wire [100:0]D;
  wire [0:0]E;
  wire FlushE;
  wire [2:0]ImmSrcD;
  wire [31:0]PCD;
  wire [0:0]PCSrcE;
  wire [9:0]Q;
  wire [4:0]RdD;
  wire [1:1]\c/ALUOpD ;
  wire clk;
  wire [2:0]funct3D;
  wire funct7b5D;
  wire [6:0]opD;
  wire [19:0]p_0_in;
  wire \q[11]_i_2_n_0 ;
  wire \q[12]_i_2_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[14]_i_2_n_0 ;
  wire \q[35]_i_2_n_0 ;
  wire \q[39]_i_2_n_0 ;
  wire \q[46]_i_2_n_0 ;
  wire \q[54]_i_3_n_0 ;
  wire \q_reg[11]_rep__1 ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire \q_reg[70]_2 ;
  wire [63:0]\q_reg[95]_0 ;
  wire \q_reg_n_0_[89] ;
  wire \q_reg_n_0_[90] ;
  wire \q_reg_n_0_[91] ;
  wire \q_reg_n_0_[92] ;
  wire \q_reg_n_0_[93] ;
  wire \q_reg_n_0_[95] ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \q[0]_i_1__0 
       (.I0(opD[1]),
        .I1(opD[4]),
        .I2(opD[6]),
        .I3(PCSrcE),
        .I4(\q_reg[11]_rep__1 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[100]_i_1 
       (.I0(PCD[18]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[55]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[101]_i_1 
       (.I0(PCD[19]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[56]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[102]_i_1 
       (.I0(PCD[20]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[57]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[103]_i_1 
       (.I0(PCD[21]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[58]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[104]_i_1 
       (.I0(PCD[22]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[105]_i_1 
       (.I0(PCD[23]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[60]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[106]_i_1 
       (.I0(PCD[24]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[61]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[107]_i_1 
       (.I0(PCD[25]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[62]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[108]_i_1 
       (.I0(PCD[26]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[63]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[109]_i_1 
       (.I0(PCD[27]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[64]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[10]_i_1__0 
       (.I0(funct3D[2]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[110]_i_1 
       (.I0(PCD[28]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[65]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[111]_i_1 
       (.I0(PCD[29]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[66]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[112]_i_1 
       (.I0(PCD[30]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[67]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[113]_i_1 
       (.I0(PCD[31]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[68]));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \q[11]_i_1__0 
       (.I0(opD[6]),
        .I1(\q[11]_i_2_n_0 ),
        .I2(opD[5]),
        .I3(opD[1]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \q[11]_i_2 
       (.I0(opD[2]),
        .I1(opD[4]),
        .O(\q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \q[11]_rep_i_1 
       (.I0(opD[6]),
        .I1(\q[11]_i_2_n_0 ),
        .I2(opD[5]),
        .I3(opD[1]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(\q_reg[70]_0 ));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \q[11]_rep_i_1__0 
       (.I0(opD[6]),
        .I1(\q[11]_i_2_n_0 ),
        .I2(opD[5]),
        .I3(opD[1]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(\q_reg[70]_1 ));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \q[11]_rep_i_1__1 
       (.I0(opD[6]),
        .I1(\q[11]_i_2_n_0 ),
        .I2(opD[5]),
        .I3(opD[1]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(\q_reg[70]_2 ));
  LUT6 #(
    .INIT(64'h000000000000F022)) 
    \q[12]_i_1__0 
       (.I0(opD[6]),
        .I1(opD[2]),
        .I2(\q[12]_i_2_n_0 ),
        .I3(\c/ALUOpD ),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h05F0F0F8)) 
    \q[12]_i_2 
       (.I0(funct7b5D),
        .I1(opD[5]),
        .I2(funct3D[1]),
        .I3(funct3D[2]),
        .I4(funct3D[0]),
        .O(\q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800080008)) 
    \q[13]_i_1__0 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(\c/ALUOpD ),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(funct3D[1]),
        .I5(funct3D[2]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'h0444)) 
    \q[13]_i_2 
       (.I0(funct3D[1]),
        .I1(funct3D[0]),
        .I2(funct3D[2]),
        .I3(funct7b5D),
        .O(\q[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[146]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[0]),
        .O(D[69]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[147]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[1]),
        .O(D[70]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[148]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[2]),
        .O(D[71]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[149]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[3]),
        .O(D[72]));
  LUT6 #(
    .INIT(64'h1000110000000000)) 
    \q[14]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[2]),
        .I5(\q[14]_i_2_n_0 ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h037C)) 
    \q[14]_i_2 
       (.I0(funct7b5D),
        .I1(funct3D[0]),
        .I2(funct3D[2]),
        .I3(funct3D[1]),
        .O(\q[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[150]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[4]),
        .O(D[73]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[151]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[5]),
        .O(D[74]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[152]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[6]),
        .O(D[75]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[153]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[7]),
        .O(D[76]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[154]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[8]),
        .O(D[77]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[155]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[9]),
        .O(D[78]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[156]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[10]),
        .O(D[79]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[157]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[11]),
        .O(D[80]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[158]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[12]),
        .O(D[81]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[159]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[13]),
        .O(D[82]));
  LUT6 #(
    .INIT(64'h000C080000000000)) 
    \q[15]_i_1__0 
       (.I0(funct7b5D),
        .I1(\c/ALUOpD ),
        .I2(FlushE),
        .I3(funct3D[2]),
        .I4(funct3D[1]),
        .I5(funct3D[0]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \q[15]_i_2 
       (.I0(opD[5]),
        .I1(opD[4]),
        .I2(opD[2]),
        .O(\c/ALUOpD ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[160]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[14]),
        .O(D[83]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[161]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[15]),
        .O(D[84]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[162]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[16]),
        .O(D[85]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[163]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[17]),
        .O(D[86]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[164]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[18]),
        .O(D[87]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[165]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[19]),
        .O(D[88]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[166]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[20]),
        .O(D[89]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[167]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[21]),
        .O(D[90]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[168]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[22]),
        .O(D[91]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[169]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[23]),
        .O(D[92]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \q[16]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[6]),
        .I3(opD[2]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[170]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[24]),
        .O(D[93]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[171]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[25]),
        .O(D[94]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[172]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[26]),
        .O(D[95]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[173]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[27]),
        .O(D[96]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[174]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[28]),
        .O(D[97]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[175]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[29]),
        .O(D[98]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[176]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[30]),
        .O(D[99]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \q[177]_i_1 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[5]),
        .I4(PCD[31]),
        .O(D[100]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[17]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[6]),
        .I3(opD[2]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \q[18]_i_1__0 
       (.I0(opD[4]),
        .I1(opD[5]),
        .I2(opD[6]),
        .I3(PCSrcE),
        .I4(\q_reg[11]_rep__1 ),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h0000000000009100)) 
    \q[19]_i_1__0 
       (.I0(opD[5]),
        .I1(opD[4]),
        .I2(opD[2]),
        .I3(opD[1]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[1]_i_1__0 
       (.I0(opD[0]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[2]_i_1__0 
       (.I0(opD[1]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h000400000000000C)) 
    \q[35]_i_1__0 
       (.I0(opD[3]),
        .I1(\q[35]_i_2_n_0 ),
        .I2(\q_reg[11]_rep__1 ),
        .I3(PCSrcE),
        .I4(opD[2]),
        .I5(opD[6]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \q[35]_i_2 
       (.I0(RdD[0]),
        .I1(opD[3]),
        .I2(opD[4]),
        .I3(opD[5]),
        .I4(opD[6]),
        .I5(Q[5]),
        .O(\q[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \q[36]_i_1__0 
       (.I0(Q[6]),
        .I1(RdD[1]),
        .I2(\q_reg[11]_rep__1 ),
        .I3(PCSrcE),
        .I4(ImmSrcD[2]),
        .I5(\q[39]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \q[37]_i_1__0 
       (.I0(Q[7]),
        .I1(RdD[2]),
        .I2(\q_reg[11]_rep__1 ),
        .I3(PCSrcE),
        .I4(ImmSrcD[2]),
        .I5(\q[39]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \q[38]_i_1__0 
       (.I0(Q[8]),
        .I1(RdD[3]),
        .I2(\q_reg[11]_rep__1 ),
        .I3(PCSrcE),
        .I4(ImmSrcD[2]),
        .I5(\q[39]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \q[39]_i_1__0 
       (.I0(Q[9]),
        .I1(RdD[4]),
        .I2(\q_reg[11]_rep__1 ),
        .I3(PCSrcE),
        .I4(ImmSrcD[2]),
        .I5(\q[39]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hEEEEBB8B)) 
    \q[39]_i_2 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[5]),
        .I3(opD[4]),
        .I4(opD[3]),
        .O(\q[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[3]_i_1__0 
       (.I0(opD[2]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[40]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[89] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[41]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[90] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[42]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[91] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[43]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[92] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[44]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q_reg_n_0_[93] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[45]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(funct7b5D),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h11010000)) 
    \q[46]_i_1__0 
       (.I0(\q_reg[11]_rep__1 ),
        .I1(PCSrcE),
        .I2(opD[2]),
        .I3(opD[6]),
        .I4(\q[46]_i_2_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \q[46]_i_2 
       (.I0(\q_reg_n_0_[95] ),
        .I1(RdD[0]),
        .I2(ImmSrcD[1]),
        .I3(ImmSrcD[0]),
        .I4(Q[5]),
        .O(\q[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[46]_i_3 
       (.I0(opD[3]),
        .I1(opD[2]),
        .I2(opD[6]),
        .O(ImmSrcD[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \q[46]_i_4 
       (.I0(opD[3]),
        .I1(opD[4]),
        .I2(opD[5]),
        .I3(opD[6]),
        .O(ImmSrcD[0]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[47]_i_1__0 
       (.I0(funct3D[0]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[48]_i_1__0 
       (.I0(funct3D[1]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[49]_i_1__0 
       (.I0(funct3D[2]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[4]_i_1__0 
       (.I0(opD[3]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[50]_i_1__0 
       (.I0(Q[0]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[51]_i_1__0 
       (.I0(Q[1]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[52]_i_1__0 
       (.I0(Q[2]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[53]_i_1__0 
       (.I0(Q[3]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h000B000A0008000A)) 
    \q[54]_i_1__0 
       (.I0(Q[4]),
        .I1(ImmSrcD[2]),
        .I2(PCSrcE),
        .I3(\q_reg[11]_rep__1 ),
        .I4(\q[54]_i_3_n_0 ),
        .I5(\q_reg_n_0_[95] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[54]_i_2 
       (.I0(opD[2]),
        .I1(opD[6]),
        .O(ImmSrcD[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \q[54]_i_3 
       (.I0(opD[2]),
        .I1(opD[6]),
        .I2(opD[3]),
        .O(\q[54]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[55]_i_1__0 
       (.I0(Q[5]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[56]_i_1__0 
       (.I0(Q[6]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[57]_i_1__0 
       (.I0(Q[7]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[58]_i_1__0 
       (.I0(Q[8]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[59]_i_1__0 
       (.I0(Q[9]),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[5]_i_1__0 
       (.I0(opD[4]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[60]_i_1__0 
       (.I0(\q_reg_n_0_[89] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[61]_i_1__0 
       (.I0(\q_reg_n_0_[90] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[62]_i_1__0 
       (.I0(\q_reg_n_0_[91] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[63]_i_1__0 
       (.I0(\q_reg_n_0_[92] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[64]_i_1__0 
       (.I0(\q_reg_n_0_[93] ),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h000000000000CACC)) 
    \q[65]_i_1__0 
       (.I0(funct7b5D),
        .I1(\q_reg_n_0_[95] ),
        .I2(opD[6]),
        .I3(opD[2]),
        .I4(PCSrcE),
        .I5(\q_reg[11]_rep__1 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[66]_i_1__0 
       (.I0(\q_reg_n_0_[95] ),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[67]_i_1__0 
       (.I0(RdD[0]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[68]_i_1__0 
       (.I0(RdD[1]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[69]_i_1__0 
       (.I0(RdD[2]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[6]_i_1__0 
       (.I0(opD[5]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[70]_i_1__0 
       (.I0(RdD[3]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[71]_i_1__0 
       (.I0(RdD[4]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[7]_i_1__0 
       (.I0(opD[6]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[82]_i_1__0 
       (.I0(PCD[0]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[83]_i_1__0 
       (.I0(PCD[1]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[84]_i_1__0 
       (.I0(PCD[2]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[85]_i_1__0 
       (.I0(PCD[3]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[86]_i_1__0 
       (.I0(PCD[4]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[87]_i_1__0 
       (.I0(PCD[5]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[88]_i_1__0 
       (.I0(PCD[6]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[89]_i_1__0 
       (.I0(PCD[7]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[8]_i_1__0 
       (.I0(funct3D[0]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[90]_i_1__0 
       (.I0(PCD[8]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[91]_i_1__0 
       (.I0(PCD[9]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[92]_i_1__0 
       (.I0(PCD[10]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[93]_i_1__0 
       (.I0(PCD[11]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[48]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[94]_i_1__0 
       (.I0(PCD[12]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[95]_i_1__0 
       (.I0(PCD[13]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[96]_i_1 
       (.I0(PCD[14]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[97]_i_1 
       (.I0(PCD[15]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[52]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[98]_i_1 
       (.I0(PCD[16]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[53]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[99]_i_1 
       (.I0(PCD[17]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(D[54]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[9]_i_1__0 
       (.I0(funct3D[1]),
        .I1(PCSrcE),
        .I2(\q_reg[11]_rep__1 ),
        .O(p_0_in[9]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [0]),
        .Q(PCD[0]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [1]),
        .Q(PCD[1]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [2]),
        .Q(PCD[2]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [3]),
        .Q(PCD[3]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [4]),
        .Q(PCD[4]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [5]),
        .Q(PCD[5]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [6]),
        .Q(PCD[6]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [7]),
        .Q(PCD[7]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [8]),
        .Q(PCD[8]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [9]),
        .Q(PCD[9]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [10]),
        .Q(PCD[10]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [11]),
        .Q(PCD[11]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [12]),
        .Q(PCD[12]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [13]),
        .Q(PCD[13]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [14]),
        .Q(PCD[14]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [15]),
        .Q(PCD[15]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [16]),
        .Q(PCD[16]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [17]),
        .Q(PCD[17]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [18]),
        .Q(PCD[18]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [19]),
        .Q(PCD[19]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [20]),
        .Q(PCD[20]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [21]),
        .Q(PCD[21]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [22]),
        .Q(PCD[22]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [23]),
        .Q(PCD[23]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [24]),
        .Q(PCD[24]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [25]),
        .Q(PCD[25]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [26]),
        .Q(PCD[26]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [27]),
        .Q(PCD[27]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [28]),
        .Q(PCD[28]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [29]),
        .Q(PCD[29]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [30]),
        .Q(PCD[30]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [31]),
        .Q(PCD[31]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [32]),
        .Q(opD[0]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [33]),
        .Q(opD[1]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [34]),
        .Q(opD[2]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [35]),
        .Q(opD[3]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [36]),
        .Q(opD[4]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [37]),
        .Q(opD[5]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [38]),
        .Q(opD[6]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [39]),
        .Q(RdD[0]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [40]),
        .Q(RdD[1]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [41]),
        .Q(RdD[2]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [42]),
        .Q(RdD[3]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [43]),
        .Q(RdD[4]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [44]),
        .Q(funct3D[0]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [45]),
        .Q(funct3D[1]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [46]),
        .Q(funct3D[2]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [47]),
        .Q(Q[0]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [48]),
        .Q(Q[1]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [49]),
        .Q(Q[2]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [50]),
        .Q(Q[3]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [51]),
        .Q(Q[4]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [52]),
        .Q(Q[5]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [53]),
        .Q(Q[6]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [54]),
        .Q(Q[7]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [55]),
        .Q(Q[8]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [56]),
        .Q(Q[9]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [57]),
        .Q(\q_reg_n_0_[89] ));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [58]),
        .Q(\q_reg_n_0_[90] ));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [59]),
        .Q(\q_reg_n_0_[91] ));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [60]),
        .Q(\q_reg_n_0_[92] ));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [61]),
        .Q(\q_reg_n_0_[93] ));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [62]),
        .Q(funct7b5D));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_0 [63]),
        .Q(\q_reg_n_0_[95] ));
endmodule

module design_1_top_0_0_flopr
   (\q_reg[1]_0 ,
    D,
    clk,
    reset);
  output [1:0]\q_reg[1]_0 ;
  input [1:0]D;
  input clk;
  input reset;

  wire [1:0]D;
  wire clk;
  wire [1:0]\q_reg[1]_0 ;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(\q_reg[1]_0 [0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(\q_reg[1]_0 [1]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module design_1_top_0_0_flopr__parameterized1
   (ALUResultM,
    E,
    D,
    \q_reg[136]_0 ,
    clk,
    reset,
    MemWriteM,
    ReadDataM);
  output [31:0]ALUResultM;
  output [0:0]E;
  output [31:0]D;
  input [34:0]\q_reg[136]_0 ;
  input clk;
  input reset;
  input MemWriteM;
  input [31:0]ReadDataM;

  wire [31:0]ALUResultM;
  wire [31:0]D;
  wire [0:0]E;
  wire MemWriteM;
  wire [31:0]ReadDataM;
  wire \WriteDataOut_reg[31]_i_3_n_0 ;
  wire clk;
  wire [2:0]funct3M;
  wire [34:0]\q_reg[136]_0 ;
  wire reset;

  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[0]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[0]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[10]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[10]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[11]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[11]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[12]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[12]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[13]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[13]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[14]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[14]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[15]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[15]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[16]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[16]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[17]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[17]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[18]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[18]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[19]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[19]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[1]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[1]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[20]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[20]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[21]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[21]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[22]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[22]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0000000000750000)) 
    \WriteDataOut_reg[23]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[23]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[24]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[24]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[25]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[25]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[26]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[26]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[27]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[27]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[28]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[28]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[29]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[29]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[2]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[2]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[30]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[30]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \WriteDataOut_reg[31]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[31]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \WriteDataOut_reg[31]_i_2 
       (.I0(ALUResultM[0]),
        .I1(funct3M[2]),
        .I2(funct3M[0]),
        .I3(funct3M[1]),
        .I4(MemWriteM),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    \WriteDataOut_reg[31]_i_3 
       (.I0(funct3M[2]),
        .I1(MemWriteM),
        .O(\WriteDataOut_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[3]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[3]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[4]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[4]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[5]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[5]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[6]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[6]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000000BA0000)) 
    \WriteDataOut_reg[7]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[7]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[8]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[8]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000AB0000)) 
    \WriteDataOut_reg[9]_i_1 
       (.I0(ALUResultM[1]),
        .I1(funct3M[0]),
        .I2(ALUResultM[0]),
        .I3(funct3M[1]),
        .I4(ReadDataM[9]),
        .I5(\WriteDataOut_reg[31]_i_3_n_0 ),
        .O(D[9]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [3]),
        .Q(ALUResultM[0]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [4]),
        .Q(ALUResultM[1]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [5]),
        .Q(ALUResultM[2]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [6]),
        .Q(ALUResultM[3]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [7]),
        .Q(ALUResultM[4]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [8]),
        .Q(ALUResultM[5]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [9]),
        .Q(ALUResultM[6]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [10]),
        .Q(ALUResultM[7]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [11]),
        .Q(ALUResultM[8]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [12]),
        .Q(ALUResultM[9]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [13]),
        .Q(ALUResultM[10]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [14]),
        .Q(ALUResultM[11]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [15]),
        .Q(ALUResultM[12]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [16]),
        .Q(ALUResultM[13]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [17]),
        .Q(ALUResultM[14]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [18]),
        .Q(ALUResultM[15]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [19]),
        .Q(ALUResultM[16]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [20]),
        .Q(ALUResultM[17]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [21]),
        .Q(ALUResultM[18]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [22]),
        .Q(ALUResultM[19]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [23]),
        .Q(ALUResultM[20]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [24]),
        .Q(ALUResultM[21]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [25]),
        .Q(ALUResultM[22]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [26]),
        .Q(ALUResultM[23]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [27]),
        .Q(ALUResultM[24]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [28]),
        .Q(ALUResultM[25]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [29]),
        .Q(ALUResultM[26]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [30]),
        .Q(ALUResultM[27]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [31]),
        .Q(ALUResultM[28]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [32]),
        .Q(ALUResultM[29]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [33]),
        .Q(ALUResultM[30]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [34]),
        .Q(ALUResultM[31]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [0]),
        .Q(funct3M[0]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [1]),
        .Q(funct3M[1]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[136]_0 [2]),
        .Q(funct3M[2]));
endmodule

module design_1_top_0_0_floprc
   (\q_reg[10]_0 ,
    funct3E,
    D,
    \q_reg[16]_0 ,
    FlushE,
    \q_reg[13]_0 ,
    Q,
    \q_reg[11]_rep__1_0 ,
    \q_reg[13]_1 ,
    \q_reg[14]_0 ,
    \q_reg[12]_0 ,
    \q_reg[12]_1 ,
    \q_reg[155] ,
    \q_reg[15]_0 ,
    \q_reg[11]_rep__0_0 ,
    \q_reg[11]_rep_0 ,
    \q_reg[11]_rep__0_1 ,
    \q_reg[11]_rep__1_1 ,
    \q_reg[12]_2 ,
    \q_reg[11]_rep__1_2 ,
    \q_reg[11]_rep__1_3 ,
    p_4_in,
    PCSrc1__6,
    condinvb__0,
    p_0_in,
    clk,
    reset,
    InstrF,
    \q_reg[15]_1 ,
    ovfE,
    \q_reg[105] ,
    CO,
    data6,
    \q_reg[105]_0 ,
    \q_reg[105]_1 ,
    \q_reg[105]_2 ,
    \q_reg[136] ,
    \q_reg[105]_3 ,
    \q_reg[106] ,
    \q_reg[106]_0 ,
    \q_reg[106]_1 ,
    \q_reg[107] ,
    \q_reg[107]_0 ,
    \q_reg[107]_1 ,
    \q_reg[108] ,
    \q_reg[108]_0 ,
    \q_reg[108]_1 ,
    \q[15]_i_5_0 ,
    \q_reg[110] ,
    \q_reg[109] ,
    \q_reg[109]_0 ,
    \q_reg[109]_1 ,
    \q_reg[109]_2 ,
    \q_reg[110]_0 ,
    \q_reg[111] ,
    \q_reg[112] ,
    \q_reg[111]_0 ,
    \q_reg[112]_0 ,
    \q[15]_i_4_0 ,
    \q_reg[113] ,
    \q_reg[113]_0 ,
    \q_reg[114] ,
    \q_reg[114]_0 ,
    \q_reg[115] ,
    \q_reg[115]_0 ,
    \q_reg[116] ,
    \q_reg[116]_0 ,
    \q_reg[117] ,
    \q_reg[117]_0 ,
    \q_reg[118] ,
    \q_reg[118]_0 ,
    \q_reg[119] ,
    \q_reg[119]_0 ,
    \q_reg[120] ,
    \q_reg[120]_0 ,
    \q_reg[121] ,
    \q_reg[121]_0 ,
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
    \q_reg[135] ,
    \q_reg[134]_0 ,
    \q_reg[134]_1 ,
    \q_reg[135]_0 ,
    \q_reg[135]_1 ,
    \q_reg[136]_0 ,
    \q[15]_i_7_0 ,
    \q[15]_i_7_1 ,
    \q[15]_i_6_0 ,
    \q[15]_i_6_1 ,
    SrcBE__0,
    O,
    \q[15]_i_6_2 ,
    \q[15]_i_6_3 ,
    \q[15]_i_8_0 ,
    \q_reg[112]_1 ,
    \q_reg[116]_1 ,
    \q_reg[120]_1 ,
    \q_reg[124]_1 ,
    \q_reg[128]_1 ,
    \q_reg[132]_1 ,
    \q[31]_i_12_0 ,
    \q_reg[11]_rep_1 ,
    \q_reg[11]_rep__0_2 ,
    \q_reg[11]_rep__1_4 );
  output \q_reg[10]_0 ;
  output [1:0]funct3E;
  output [31:0]D;
  output \q_reg[16]_0 ;
  output FlushE;
  output [31:0]\q_reg[13]_0 ;
  output [7:0]Q;
  output \q_reg[11]_rep__1_0 ;
  output \q_reg[13]_1 ;
  output \q_reg[14]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[12]_1 ;
  output \q_reg[155] ;
  output \q_reg[15]_0 ;
  output \q_reg[11]_rep__0_0 ;
  output \q_reg[11]_rep_0 ;
  output \q_reg[11]_rep__0_1 ;
  output \q_reg[11]_rep__1_1 ;
  output \q_reg[12]_2 ;
  output \q_reg[11]_rep__1_2 ;
  output \q_reg[11]_rep__1_3 ;
  output p_4_in;
  output PCSrc1__6;
  output [0:0]condinvb__0;
  input [19:0]p_0_in;
  input clk;
  input reset;
  input [31:0]InstrF;
  input \q_reg[15]_1 ;
  input ovfE;
  input \q_reg[105] ;
  input [0:0]CO;
  input [0:0]data6;
  input \q_reg[105]_0 ;
  input \q_reg[105]_1 ;
  input \q_reg[105]_2 ;
  input [59:0]\q_reg[136] ;
  input \q_reg[105]_3 ;
  input \q_reg[106] ;
  input \q_reg[106]_0 ;
  input \q_reg[106]_1 ;
  input \q_reg[107] ;
  input \q_reg[107]_0 ;
  input \q_reg[107]_1 ;
  input \q_reg[108] ;
  input \q_reg[108]_0 ;
  input \q_reg[108]_1 ;
  input \q[15]_i_5_0 ;
  input \q_reg[110] ;
  input \q_reg[109] ;
  input \q_reg[109]_0 ;
  input \q_reg[109]_1 ;
  input \q_reg[109]_2 ;
  input \q_reg[110]_0 ;
  input \q_reg[111] ;
  input \q_reg[112] ;
  input \q_reg[111]_0 ;
  input \q_reg[112]_0 ;
  input \q[15]_i_4_0 ;
  input \q_reg[113] ;
  input \q_reg[113]_0 ;
  input \q_reg[114] ;
  input \q_reg[114]_0 ;
  input \q_reg[115] ;
  input \q_reg[115]_0 ;
  input \q_reg[116] ;
  input \q_reg[116]_0 ;
  input \q_reg[117] ;
  input \q_reg[117]_0 ;
  input \q_reg[118] ;
  input \q_reg[118]_0 ;
  input \q_reg[119] ;
  input \q_reg[119]_0 ;
  input \q_reg[120] ;
  input \q_reg[120]_0 ;
  input \q_reg[121] ;
  input \q_reg[121]_0 ;
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
  input \q_reg[135] ;
  input \q_reg[134]_0 ;
  input \q_reg[134]_1 ;
  input \q_reg[135]_0 ;
  input \q_reg[135]_1 ;
  input \q_reg[136]_0 ;
  input \q[15]_i_7_0 ;
  input \q[15]_i_7_1 ;
  input \q[15]_i_6_0 ;
  input \q[15]_i_6_1 ;
  input [3:0]SrcBE__0;
  input [3:0]O;
  input \q[15]_i_6_2 ;
  input \q[15]_i_6_3 ;
  input \q[15]_i_8_0 ;
  input [2:0]\q_reg[112]_1 ;
  input [3:0]\q_reg[116]_1 ;
  input [3:0]\q_reg[120]_1 ;
  input [3:0]\q_reg[124]_1 ;
  input [3:0]\q_reg[128]_1 ;
  input [3:0]\q_reg[132]_1 ;
  input [0:0]\q[31]_i_12_0 ;
  input \q_reg[11]_rep_1 ;
  input \q_reg[11]_rep__0_2 ;
  input \q_reg[11]_rep__1_4 ;

  wire [0:0]CO;
  wire [31:0]D;
  wire FlushE;
  wire [31:0]InstrF;
  wire JumpE;
  wire [3:0]O;
  wire PCSrc1__6;
  wire [7:0]Q;
  wire [3:0]SrcBE__0;
  wire ZeroE;
  wire clk;
  wire [0:0]condinvb__0;
  wire [0:0]data6;
  wire [1:0]funct3E;
  wire ovfE;
  wire [19:0]p_0_in;
  wire [7:1]p_0_in_0;
  wire p_4_in;
  wire \q[105]_i_2_n_0 ;
  wire \q[105]_i_4_n_0 ;
  wire \q[106]_i_4_n_0 ;
  wire \q[107]_i_4_n_0 ;
  wire \q[108]_i_4_n_0 ;
  wire \q[109]_i_2_n_0 ;
  wire \q[109]_i_5_n_0 ;
  wire \q[109]_i_7_n_0 ;
  wire \q[110]_i_4_n_0 ;
  wire \q[110]_i_5_n_0 ;
  wire \q[111]_i_4_n_0 ;
  wire \q[111]_i_5_n_0 ;
  wire \q[112]_i_4_n_0 ;
  wire \q[112]_i_5_n_0 ;
  wire \q[113]_i_3_n_0 ;
  wire \q[113]_i_4_n_0 ;
  wire \q[114]_i_3_n_0 ;
  wire \q[115]_i_3_n_0 ;
  wire \q[115]_i_4_n_0 ;
  wire \q[116]_i_3_n_0 ;
  wire \q[116]_i_4_n_0 ;
  wire \q[117]_i_3_n_0 ;
  wire \q[117]_i_4_n_0 ;
  wire \q[118]_i_3_n_0 ;
  wire \q[118]_i_4_n_0 ;
  wire \q[119]_i_3_n_0 ;
  wire \q[119]_i_4_n_0 ;
  wire \q[120]_i_3_n_0 ;
  wire \q[120]_i_4_n_0 ;
  wire \q[121]_i_4_n_0 ;
  wire \q[121]_i_5_n_0 ;
  wire \q[122]_i_4_n_0 ;
  wire \q[122]_i_5_n_0 ;
  wire \q[123]_i_4_n_0 ;
  wire \q[123]_i_5_n_0 ;
  wire \q[124]_i_4_n_0 ;
  wire \q[124]_i_5_n_0 ;
  wire \q[125]_i_4_n_0 ;
  wire \q[125]_i_5_n_0 ;
  wire \q[126]_i_4_n_0 ;
  wire \q[126]_i_5_n_0 ;
  wire \q[127]_i_4_n_0 ;
  wire \q[127]_i_5_n_0 ;
  wire \q[128]_i_4_n_0 ;
  wire \q[128]_i_5_n_0 ;
  wire \q[129]_i_4_n_0 ;
  wire \q[129]_i_5_n_0 ;
  wire \q[130]_i_4_n_0 ;
  wire \q[130]_i_5_n_0 ;
  wire \q[131]_i_4_n_0 ;
  wire \q[131]_i_5_n_0 ;
  wire \q[132]_i_4_n_0 ;
  wire \q[132]_i_5_n_0 ;
  wire \q[133]_i_4_n_0 ;
  wire \q[133]_i_5_n_0 ;
  wire \q[134]_i_2_n_0 ;
  wire \q[134]_i_4_n_0 ;
  wire \q[134]_i_5_n_0 ;
  wire \q[135]_i_2_n_0 ;
  wire \q[135]_i_4_n_0 ;
  wire \q[135]_i_5_n_0 ;
  wire \q[136]_i_13_n_0 ;
  wire \q[136]_i_15_n_0 ;
  wire \q[136]_i_5_n_0 ;
  wire \q[136]_i_6_n_0 ;
  wire \q[136]_i_7_n_0 ;
  wire \q[15]_i_11_n_0 ;
  wire \q[15]_i_13_n_0 ;
  wire \q[15]_i_4_0 ;
  wire \q[15]_i_4_n_0 ;
  wire \q[15]_i_5_0 ;
  wire \q[15]_i_5_n_0 ;
  wire \q[15]_i_6_0 ;
  wire \q[15]_i_6_1 ;
  wire \q[15]_i_6_2 ;
  wire \q[15]_i_6_3 ;
  wire \q[15]_i_6_n_0 ;
  wire \q[15]_i_7_0 ;
  wire \q[15]_i_7_1 ;
  wire \q[15]_i_7_n_0 ;
  wire \q[15]_i_8_0 ;
  wire \q[15]_i_8_n_0 ;
  wire \q[15]_i_9_n_0 ;
  wire \q[31]_i_10_n_0 ;
  wire [0:0]\q[31]_i_12_0 ;
  wire \q[31]_i_12_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_18_n_0 ;
  wire \q[31]_i_19_n_0 ;
  wire \q[31]_i_21_n_0 ;
  wire \q[31]_i_22_n_0 ;
  wire \q[31]_i_23_n_0 ;
  wire \q[31]_i_24_n_0 ;
  wire \q[31]_i_30_n_0 ;
  wire \q[31]_i_9_n_0 ;
  wire \q_reg[105] ;
  wire \q_reg[105]_0 ;
  wire \q_reg[105]_1 ;
  wire \q_reg[105]_2 ;
  wire \q_reg[105]_3 ;
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
  wire \q_reg[109]_2 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[110] ;
  wire \q_reg[110]_0 ;
  wire \q_reg[111] ;
  wire \q_reg[111]_0 ;
  wire \q_reg[112] ;
  wire \q_reg[112]_0 ;
  wire [2:0]\q_reg[112]_1 ;
  wire \q_reg[113] ;
  wire \q_reg[113]_0 ;
  wire \q_reg[114] ;
  wire \q_reg[114]_0 ;
  wire \q_reg[115] ;
  wire \q_reg[115]_0 ;
  wire \q_reg[116] ;
  wire \q_reg[116]_0 ;
  wire [3:0]\q_reg[116]_1 ;
  wire \q_reg[117] ;
  wire \q_reg[117]_0 ;
  wire \q_reg[118] ;
  wire \q_reg[118]_0 ;
  wire \q_reg[119] ;
  wire \q_reg[119]_0 ;
  wire \q_reg[11]_rep_0 ;
  wire \q_reg[11]_rep_1 ;
  wire \q_reg[11]_rep__0_0 ;
  wire \q_reg[11]_rep__0_1 ;
  wire \q_reg[11]_rep__0_2 ;
  wire \q_reg[11]_rep__1_0 ;
  wire \q_reg[11]_rep__1_1 ;
  wire \q_reg[11]_rep__1_2 ;
  wire \q_reg[11]_rep__1_3 ;
  wire \q_reg[11]_rep__1_4 ;
  wire \q_reg[120] ;
  wire \q_reg[120]_0 ;
  wire [3:0]\q_reg[120]_1 ;
  wire \q_reg[121] ;
  wire \q_reg[121]_0 ;
  wire \q_reg[122] ;
  wire \q_reg[122]_0 ;
  wire \q_reg[123] ;
  wire \q_reg[123]_0 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire [3:0]\q_reg[124]_1 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire [3:0]\q_reg[128]_1 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[12]_2 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire [3:0]\q_reg[132]_1 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire \q_reg[134]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire [59:0]\q_reg[136] ;
  wire \q_reg[136]_0 ;
  wire [31:0]\q_reg[13]_0 ;
  wire \q_reg[13]_1 ;
  wire \q_reg[14]_0 ;
  wire \q_reg[155] ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire \q_reg[16]_0 ;
  wire \q_reg_n_0_[16] ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \q[105]_i_13 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(p_4_in));
  LUT6 #(
    .INIT(64'hFFFEF0FEF0FEF0FE)) 
    \q[105]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(\q_reg[105] ),
        .I2(\q[105]_i_4_n_0 ),
        .I3(Q[5]),
        .I4(CO),
        .I5(Q[2]),
        .O(\q_reg[13]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAA8A0AAAAA8000)) 
    \q[105]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(data6),
        .I4(\q_reg[105]_0 ),
        .I5(\q_reg[105]_1 ),
        .O(\q[105]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4440404000404040)) 
    \q[105]_i_4 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(\q_reg[105]_2 ),
        .I3(\q_reg[11]_rep__1_0 ),
        .I4(\q_reg[136] [0]),
        .I5(\q_reg[105]_3 ),
        .O(\q[105]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[106]_i_1__0 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[106] ),
        .I3(\q_reg[106]_0 ),
        .I4(\q[106]_i_4_n_0 ),
        .I5(\q_reg[106]_1 ),
        .O(\q_reg[13]_0 [1]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[106]_i_4 
       (.I0(Q[5]),
        .I1(\q_reg[136] [29]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(SrcBE__0[0]),
        .O(\q[106]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \q[106]_i_6 
       (.I0(Q[2]),
        .I1(\q_reg[11]_rep__1_0 ),
        .I2(\q_reg[136] [0]),
        .O(\q_reg[12]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[106]_i_9 
       (.I0(\q_reg[11]_rep__1_0 ),
        .I1(\q_reg[136] [0]),
        .I2(Q[2]),
        .O(\q_reg[11]_rep__1_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[107]_i_1__0 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[107] ),
        .I3(\q_reg[107]_0 ),
        .I4(\q[107]_i_4_n_0 ),
        .I5(\q_reg[107]_1 ),
        .O(\q_reg[13]_0 [2]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[107]_i_4 
       (.I0(Q[5]),
        .I1(\q_reg[136] [30]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(SrcBE__0[1]),
        .O(\q[107]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \q[108]_i_12 
       (.I0(Q[2]),
        .I1(\q_reg[11]_rep_0 ),
        .I2(\q_reg[136] [0]),
        .O(condinvb__0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[108]_i_1__0 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[108] ),
        .I3(\q_reg[108]_0 ),
        .I4(\q[108]_i_4_n_0 ),
        .I5(\q_reg[108]_1 ),
        .O(\q_reg[13]_0 [3]));
  LUT6 #(
    .INIT(64'h0504000004000000)) 
    \q[108]_i_4 
       (.I0(Q[5]),
        .I1(\q_reg[136] [31]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(SrcBE__0[2]),
        .O(\q[108]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[109]_i_1__0 
       (.I0(\q[109]_i_2_n_0 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[109] ),
        .I3(\q_reg[109]_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[109]_i_5_n_0 ),
        .O(\q_reg[13]_0 [4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \q[109]_i_2 
       (.I0(\q_reg[109]_1 ),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[109]_2 ),
        .I3(\q_reg[12]_1 ),
        .I4(\q[109]_i_7_n_0 ),
        .O(\q[109]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800080000)) 
    \q[109]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(SrcBE__0[3]),
        .I5(\q_reg[136] [32]),
        .O(\q[109]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \q[109]_i_7 
       (.I0(\q_reg[136] [32]),
        .I1(\q_reg[136] [1]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\q[109]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[110]_i_1__0 
       (.I0(\q_reg[110] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[110]_0 ),
        .I3(\q[110]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[110]_i_5_n_0 ),
        .O(\q_reg[13]_0 [5]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[110]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[112]_1 [0]),
        .I2(\q_reg[136] [33]),
        .I3(\q_reg[136] [2]),
        .I4(\q_reg[11]_rep__0_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[110]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[110]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [33]),
        .I3(\q_reg[136] [2]),
        .I4(\q_reg[11]_rep__0_0 ),
        .O(\q[110]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[111]_i_1__0 
       (.I0(\q_reg[111] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[111]_0 ),
        .I3(\q[111]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[111]_i_5_n_0 ),
        .O(\q_reg[13]_0 [6]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[111]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[112]_1 [1]),
        .I2(\q_reg[136] [34]),
        .I3(\q_reg[136] [3]),
        .I4(\q_reg[11]_rep__1_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[111]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[111]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [34]),
        .I3(\q_reg[136] [3]),
        .I4(\q_reg[11]_rep__0_0 ),
        .O(\q[111]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[112]_i_1__0 
       (.I0(\q_reg[112] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[112]_0 ),
        .I3(\q[112]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[112]_i_5_n_0 ),
        .O(\q_reg[13]_0 [7]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[112]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[112]_1 [2]),
        .I2(\q_reg[136] [35]),
        .I3(\q_reg[136] [4]),
        .I4(\q_reg[11]_rep__0_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[112]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[112]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [35]),
        .I3(\q_reg[136] [4]),
        .I4(\q_reg[11]_rep__0_0 ),
        .O(\q[112]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[113]_i_1__0 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[113] ),
        .I3(\q[113]_i_3_n_0 ),
        .I4(\q[113]_i_4_n_0 ),
        .I5(\q_reg[113]_0 ),
        .O(\q_reg[13]_0 [8]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[113]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[116]_1 [0]),
        .I2(\q_reg[11]_rep__0_0 ),
        .I3(\q_reg[136] [5]),
        .I4(\q_reg[136] [36]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[113]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[113]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [36]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [5]),
        .I4(\q_reg[11]_rep__0_0 ),
        .O(\q[113]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[114]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[114] ),
        .I3(\q[114]_i_3_n_0 ),
        .I4(\q_reg[155] ),
        .I5(\q_reg[114]_0 ),
        .O(\q_reg[13]_0 [9]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[114]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[116]_1 [1]),
        .I2(\q_reg[11]_rep__0_0 ),
        .I3(\q_reg[136] [6]),
        .I4(\q_reg[136] [37]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[114]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[114]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [37]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [6]),
        .I4(\q_reg[11]_rep__0_0 ),
        .O(\q_reg[155] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[115]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[115] ),
        .I3(\q[115]_i_3_n_0 ),
        .I4(\q[115]_i_4_n_0 ),
        .I5(\q_reg[115]_0 ),
        .O(\q_reg[13]_0 [10]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[115]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[116]_1 [2]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [7]),
        .I4(\q_reg[136] [38]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[115]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[115]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [38]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [7]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[115]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[116]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[116] ),
        .I3(\q[116]_i_3_n_0 ),
        .I4(\q[116]_i_4_n_0 ),
        .I5(\q_reg[116]_0 ),
        .O(\q_reg[13]_0 [11]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[116]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[116]_1 [3]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [8]),
        .I4(\q_reg[136] [39]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[116]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[116]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [39]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [8]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[116]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[117]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[117] ),
        .I3(\q[117]_i_3_n_0 ),
        .I4(\q[117]_i_4_n_0 ),
        .I5(\q_reg[117]_0 ),
        .O(\q_reg[13]_0 [12]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[117]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[120]_1 [0]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [9]),
        .I4(\q_reg[136] [40]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[117]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[117]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [40]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [9]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[117]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[118]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[118] ),
        .I3(\q[118]_i_3_n_0 ),
        .I4(\q[118]_i_4_n_0 ),
        .I5(\q_reg[118]_0 ),
        .O(\q_reg[13]_0 [13]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[118]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[120]_1 [1]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [10]),
        .I4(\q_reg[136] [41]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[118]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[118]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [41]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [10]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[118]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[119]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[119] ),
        .I3(\q[119]_i_3_n_0 ),
        .I4(\q[119]_i_4_n_0 ),
        .I5(\q_reg[119]_0 ),
        .O(\q_reg[13]_0 [14]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[119]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[120]_1 [2]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [11]),
        .I4(\q_reg[136] [42]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[119]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[119]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [42]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [11]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[119]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[120]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[120] ),
        .I3(\q[120]_i_3_n_0 ),
        .I4(\q[120]_i_4_n_0 ),
        .I5(\q_reg[120]_0 ),
        .O(\q_reg[13]_0 [15]));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[120]_i_3 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[120]_1 [3]),
        .I2(\q_reg[11]_rep_0 ),
        .I3(\q_reg[136] [12]),
        .I4(\q_reg[136] [43]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[120]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA8808080)) 
    \q[120]_i_4 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[136] [43]),
        .I2(\q[136]_i_13_n_0 ),
        .I3(\q_reg[136] [12]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[120]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[121]_i_1 
       (.I0(\q_reg[121] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[121]_0 ),
        .I3(\q[121]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[121]_i_5_n_0 ),
        .O(\q_reg[13]_0 [16]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[121]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[124]_1 [0]),
        .I2(\q_reg[136] [44]),
        .I3(\q_reg[136] [13]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[121]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[121]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [44]),
        .I3(\q_reg[136] [13]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[121]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[122]_i_1 
       (.I0(\q_reg[122] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[122]_0 ),
        .I3(\q[122]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[122]_i_5_n_0 ),
        .O(\q_reg[13]_0 [17]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[122]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[124]_1 [1]),
        .I2(\q_reg[136] [45]),
        .I3(\q_reg[136] [14]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[122]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[122]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [45]),
        .I3(\q_reg[136] [14]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[122]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[123]_i_1 
       (.I0(\q_reg[123] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[123]_0 ),
        .I3(\q[123]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[123]_i_5_n_0 ),
        .O(\q_reg[13]_0 [18]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[123]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[124]_1 [2]),
        .I2(\q_reg[136] [46]),
        .I3(\q_reg[136] [15]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[123]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[123]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [46]),
        .I3(\q_reg[136] [15]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[123]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[124]_i_1 
       (.I0(\q_reg[124] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[124]_0 ),
        .I3(\q[124]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[124]_i_5_n_0 ),
        .O(\q_reg[13]_0 [19]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[124]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[124]_1 [3]),
        .I2(\q_reg[136] [47]),
        .I3(\q_reg[136] [16]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[124]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[124]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [47]),
        .I3(\q_reg[136] [16]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[124]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[125]_i_1 
       (.I0(\q_reg[125] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[125]_0 ),
        .I3(\q[125]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[125]_i_5_n_0 ),
        .O(\q_reg[13]_0 [20]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[125]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[128]_1 [0]),
        .I2(\q_reg[136] [48]),
        .I3(\q_reg[136] [17]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[125]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[125]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [48]),
        .I3(\q_reg[136] [17]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[125]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[126]_i_1 
       (.I0(\q_reg[126] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[126]_0 ),
        .I3(\q[126]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[126]_i_5_n_0 ),
        .O(\q_reg[13]_0 [21]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[126]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[128]_1 [1]),
        .I2(\q_reg[136] [49]),
        .I3(\q_reg[136] [18]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[126]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[126]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [49]),
        .I3(\q_reg[136] [18]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[126]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[127]_i_1 
       (.I0(\q_reg[127] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[127]_0 ),
        .I3(\q[127]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[127]_i_5_n_0 ),
        .O(\q_reg[13]_0 [22]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[127]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[128]_1 [2]),
        .I2(\q_reg[136] [50]),
        .I3(\q_reg[136] [19]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[127]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[127]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [50]),
        .I3(\q_reg[136] [19]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[127]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[128]_i_1 
       (.I0(\q_reg[128] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[128]_0 ),
        .I3(\q[128]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[128]_i_5_n_0 ),
        .O(\q_reg[13]_0 [23]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[128]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[128]_1 [3]),
        .I2(\q_reg[136] [51]),
        .I3(\q_reg[136] [20]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[128]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[128]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [51]),
        .I3(\q_reg[136] [20]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[128]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[129]_i_1 
       (.I0(\q_reg[129] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[129]_0 ),
        .I3(\q[129]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[129]_i_5_n_0 ),
        .O(\q_reg[13]_0 [24]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[129]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[132]_1 [0]),
        .I2(\q_reg[136] [52]),
        .I3(\q_reg[136] [21]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[129]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[129]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [52]),
        .I3(\q_reg[136] [21]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[129]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[130]_i_1 
       (.I0(\q_reg[130] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[130]_0 ),
        .I3(\q[130]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[130]_i_5_n_0 ),
        .O(\q_reg[13]_0 [25]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[130]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[132]_1 [1]),
        .I2(\q_reg[136] [53]),
        .I3(\q_reg[136] [22]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[130]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[130]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [53]),
        .I3(\q_reg[136] [22]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[130]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[131]_i_1 
       (.I0(\q_reg[131] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[131]_0 ),
        .I3(\q[131]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[131]_i_5_n_0 ),
        .O(\q_reg[13]_0 [26]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[131]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[132]_1 [2]),
        .I2(\q_reg[136] [54]),
        .I3(\q_reg[136] [23]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[131]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[131]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [54]),
        .I3(\q_reg[136] [23]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[131]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[132]_i_1 
       (.I0(\q_reg[132] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[132]_0 ),
        .I3(\q[132]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[132]_i_5_n_0 ),
        .O(\q_reg[13]_0 [27]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[132]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[132]_1 [3]),
        .I2(\q_reg[136] [55]),
        .I3(\q_reg[136] [24]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[132]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[132]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [55]),
        .I3(\q_reg[136] [24]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[132]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[133]_i_1 
       (.I0(\q_reg[133] ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[133]_0 ),
        .I3(\q[133]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[133]_i_5_n_0 ),
        .O(\q_reg[13]_0 [28]));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[133]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(O[0]),
        .I2(\q_reg[136] [56]),
        .I3(\q_reg[136] [25]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[133]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[133]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [56]),
        .I3(\q_reg[136] [25]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[133]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[134]_i_1 
       (.I0(\q[134]_i_2_n_0 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[134] ),
        .I3(\q[134]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[134]_i_5_n_0 ),
        .O(\q_reg[13]_0 [29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[134]_i_2 
       (.I0(\q_reg[12]_0 ),
        .I1(\q_reg[135] ),
        .I2(\q_reg[134]_0 ),
        .I3(\q_reg[12]_1 ),
        .I4(\q_reg[15]_0 ),
        .I5(\q_reg[134]_1 ),
        .O(\q[134]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[134]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(O[1]),
        .I2(\q_reg[136] [57]),
        .I3(\q_reg[136] [26]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[134]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[134]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [57]),
        .I3(\q_reg[136] [26]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[134]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAAAAA)) 
    \q[135]_i_1 
       (.I0(\q[135]_i_2_n_0 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[135]_0 ),
        .I3(\q[135]_i_4_n_0 ),
        .I4(\q_reg[13]_1 ),
        .I5(\q[135]_i_5_n_0 ),
        .O(\q_reg[13]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \q[135]_i_10 
       (.I0(\q_reg[11]_rep__1_0 ),
        .I1(\q_reg[136] [0]),
        .I2(Q[2]),
        .O(\q_reg[11]_rep__1_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[135]_i_12 
       (.I0(\q_reg[11]_rep__1_0 ),
        .I1(\q_reg[136] [0]),
        .I2(Q[2]),
        .O(\q_reg[11]_rep__1_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[135]_i_2 
       (.I0(\q_reg[12]_1 ),
        .I1(\q_reg[135] ),
        .I2(\q_reg[12]_0 ),
        .I3(\q_reg[136] [59]),
        .I4(\q_reg[15]_0 ),
        .I5(\q_reg[135]_1 ),
        .O(\q[135]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4FF4F4F444444444)) 
    \q[135]_i_4 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(O[2]),
        .I2(\q_reg[136] [58]),
        .I3(\q_reg[136] [27]),
        .I4(\q_reg[11]_rep_0 ),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[135]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \q[135]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [58]),
        .I3(\q_reg[136] [27]),
        .I4(\q_reg[11]_rep_0 ),
        .O(\q[135]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \q[135]_i_6 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(\q_reg[11]_rep__0_0 ),
        .I3(\q_reg[136] [0]),
        .O(\q_reg[12]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \q[135]_i_8 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(\q_reg[11]_rep__0_0 ),
        .I3(\q_reg[136] [0]),
        .O(\q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA80)) 
    \q[136]_i_1 
       (.I0(\q_reg[13]_1 ),
        .I1(\q_reg[14]_0 ),
        .I2(\q_reg[136]_0 ),
        .I3(\q[136]_i_5_n_0 ),
        .I4(\q[136]_i_6_n_0 ),
        .I5(\q[136]_i_7_n_0 ),
        .O(\q_reg[13]_0 [31]));
  LUT3 #(
    .INIT(8'hF8)) 
    \q[136]_i_13 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\q[136]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q[136]_i_15 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\q[136]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \q[136]_i_16 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\q_reg[15]_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \q[136]_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\q_reg[13]_1 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \q[136]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\q_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h4FFFF44444444444)) 
    \q[136]_i_5 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(O[3]),
        .I2(\q_reg[136] [28]),
        .I3(\q_reg[11]_rep_0 ),
        .I4(\q_reg[136] [59]),
        .I5(\q[136]_i_15_n_0 ),
        .O(\q[136]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h88888000)) 
    \q[136]_i_6 
       (.I0(\q[136]_i_13_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q_reg[136] [28]),
        .I3(\q_reg[11]_rep_0 ),
        .I4(\q_reg[136] [59]),
        .O(\q[136]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80008000FF008000)) 
    \q[136]_i_7 
       (.I0(\q_reg[15]_0 ),
        .I1(\q_reg[11]_rep_0 ),
        .I2(\q_reg[136] [28]),
        .I3(\q_reg[136] [59]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\q[136]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAEAEAEAEA)) 
    \q[15]_i_11 
       (.I0(\q[110]_i_5_n_0 ),
        .I1(\q_reg[13]_1 ),
        .I2(\q[110]_i_4_n_0 ),
        .I3(\q[15]_i_7_0 ),
        .I4(\q[15]_i_7_1 ),
        .I5(\q_reg[14]_0 ),
        .O(\q[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \q[15]_i_13 
       (.I0(Q[2]),
        .I1(\q_reg[136] [0]),
        .I2(\q_reg[11]_rep__1_0 ),
        .I3(\q[15]_i_8_0 ),
        .O(\q[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \q[15]_i_3 
       (.I0(\q_reg[15]_1 ),
        .I1(JumpE),
        .I2(\q_reg_n_0_[16] ),
        .I3(\q[31]_i_12_n_0 ),
        .I4(\q[15]_i_4_n_0 ),
        .O(FlushE));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \q[15]_i_4 
       (.I0(\q[31]_i_15_n_0 ),
        .I1(\q[31]_i_16_n_0 ),
        .I2(\q[31]_i_17_n_0 ),
        .I3(\q[15]_i_5_n_0 ),
        .I4(\q[31]_i_10_n_0 ),
        .I5(\q[31]_i_9_n_0 ),
        .O(\q[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \q[15]_i_5 
       (.I0(\q[15]_i_6_n_0 ),
        .I1(\q[15]_i_7_n_0 ),
        .I2(\q_reg[13]_0 [3]),
        .I3(\q_reg[13]_0 [2]),
        .I4(\q_reg[13]_0 [0]),
        .I5(\q_reg[13]_0 [1]),
        .O(\q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \q[15]_i_6 
       (.I0(\q[111]_i_5_n_0 ),
        .I1(\q_reg[13]_1 ),
        .I2(\q[15]_i_8_n_0 ),
        .I3(\q_reg[111] ),
        .I4(\q[15]_i_9_n_0 ),
        .I5(\q_reg[112] ),
        .O(\q[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \q[15]_i_7 
       (.I0(\q[109]_i_5_n_0 ),
        .I1(\q_reg[13]_1 ),
        .I2(\q[15]_i_5_0 ),
        .I3(\q[109]_i_2_n_0 ),
        .I4(\q[15]_i_11_n_0 ),
        .I5(\q_reg[110] ),
        .O(\q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \q[15]_i_8 
       (.I0(\q[111]_i_4_n_0 ),
        .I1(\q[15]_i_6_2 ),
        .I2(\q_reg[11]_rep__1_1 ),
        .I3(\q[15]_i_6_3 ),
        .I4(\q[15]_i_13_n_0 ),
        .I5(\q_reg[14]_0 ),
        .O(\q[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAEAEAEAEA)) 
    \q[15]_i_9 
       (.I0(\q[112]_i_5_n_0 ),
        .I1(\q_reg[13]_1 ),
        .I2(\q[112]_i_4_n_0 ),
        .I3(\q[15]_i_6_0 ),
        .I4(\q[15]_i_6_1 ),
        .I5(\q_reg[14]_0 ),
        .O(\q[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \q[31]_i_10 
       (.I0(funct3E[1]),
        .I1(funct3E[0]),
        .I2(\q_reg[10]_0 ),
        .O(\q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \q[31]_i_11 
       (.I0(\q[31]_i_15_n_0 ),
        .I1(\q[31]_i_16_n_0 ),
        .I2(\q[31]_i_17_n_0 ),
        .I3(\q[31]_i_18_n_0 ),
        .I4(\q[31]_i_19_n_0 ),
        .I5(\q_reg[13]_0 [1]),
        .O(ZeroE));
  LUT6 #(
    .INIT(64'h2222222288828288)) 
    \q[31]_i_12 
       (.I0(\q_reg[10]_0 ),
        .I1(funct3E[0]),
        .I2(funct3E[1]),
        .I3(ovfE),
        .I4(\q_reg[13]_0 [31]),
        .I5(\q[31]_i_21_n_0 ),
        .O(\q[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \q[31]_i_13 
       (.I0(p_0_in_0[7]),
        .I1(p_0_in_0[6]),
        .I2(p_0_in_0[5]),
        .I3(p_0_in_0[4]),
        .O(\q[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \q[31]_i_15 
       (.I0(\q_reg[13]_0 [28]),
        .I1(\q_reg[13]_0 [29]),
        .I2(\q[31]_i_22_n_0 ),
        .I3(\q[31]_i_23_n_0 ),
        .O(\q[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_16 
       (.I0(\q_reg[13]_0 [31]),
        .I1(\q_reg[13]_0 [25]),
        .I2(\q_reg[13]_0 [24]),
        .I3(\q_reg[13]_0 [27]),
        .I4(\q_reg[13]_0 [26]),
        .I5(\q_reg[13]_0 [30]),
        .O(\q[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \q[31]_i_17 
       (.I0(\q_reg[13]_0 [12]),
        .I1(\q_reg[13]_0 [13]),
        .I2(\q[31]_i_24_n_0 ),
        .I3(\q[15]_i_4_0 ),
        .I4(\q_reg[13]_0 [10]),
        .I5(\q_reg[13]_0 [11]),
        .O(\q[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_18 
       (.I0(\q_reg[13]_0 [7]),
        .I1(\q_reg[13]_0 [6]),
        .I2(\q_reg[13]_0 [5]),
        .I3(\q_reg[13]_0 [4]),
        .O(\q[31]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q[31]_i_19 
       (.I0(\q_reg[13]_0 [3]),
        .I1(\q_reg[13]_0 [2]),
        .I2(\q_reg[13]_0 [0]),
        .O(\q[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \q[31]_i_21 
       (.I0(Q[4]),
        .I1(\q[31]_i_12_0 ),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(funct3E[1]),
        .O(\q[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_22 
       (.I0(\q_reg[13]_0 [23]),
        .I1(\q_reg[13]_0 [22]),
        .I2(\q_reg[13]_0 [21]),
        .I3(\q_reg[13]_0 [20]),
        .O(\q[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_23 
       (.I0(\q_reg[13]_0 [17]),
        .I1(\q_reg[13]_0 [16]),
        .I2(\q_reg[13]_0 [19]),
        .I3(\q_reg[13]_0 [18]),
        .O(\q[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_24 
       (.I0(\q_reg[13]_0 [14]),
        .I1(\q_reg[13]_0 [15]),
        .O(\q[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \q[31]_i_28 
       (.I0(\q[31]_i_30_n_0 ),
        .I1(\q_reg[15]_0 ),
        .I2(\q[113]_i_3_n_0 ),
        .I3(\q_reg[113] ),
        .I4(\q_reg[14]_0 ),
        .I5(\q_reg[13]_1 ),
        .O(\q_reg[11]_rep__0_1 ));
  LUT6 #(
    .INIT(64'hFFFFF88888888000)) 
    \q[31]_i_30 
       (.I0(\q_reg[11]_rep__0_0 ),
        .I1(\q_reg[136] [5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\q_reg[136] [36]),
        .O(\q[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF140000)) 
    \q[31]_i_4 
       (.I0(\q[31]_i_9_n_0 ),
        .I1(\q[31]_i_10_n_0 ),
        .I2(ZeroE),
        .I3(\q[31]_i_12_n_0 ),
        .I4(\q_reg_n_0_[16] ),
        .I5(JumpE),
        .O(\q_reg[16]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_13_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .O(PCSrc1__6));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[31]_i_9 
       (.I0(funct3E[1]),
        .I1(\q_reg[10]_0 ),
        .O(\q[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[64]_i_1 
       (.I0(InstrF[0]),
        .I1(\q_reg[16]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[65]_i_1 
       (.I0(InstrF[1]),
        .I1(\q_reg[16]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[66]_i_1 
       (.I0(InstrF[2]),
        .I1(\q_reg[16]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[67]_i_1 
       (.I0(InstrF[3]),
        .I1(\q_reg[16]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[68]_i_1 
       (.I0(InstrF[4]),
        .I1(\q_reg[16]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[69]_i_1 
       (.I0(InstrF[5]),
        .I1(\q_reg[16]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[70]_i_1 
       (.I0(InstrF[6]),
        .I1(\q_reg[16]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[71]_i_1 
       (.I0(InstrF[7]),
        .I1(\q_reg[16]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[72]_i_1 
       (.I0(InstrF[8]),
        .I1(\q_reg[16]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[73]_i_1 
       (.I0(InstrF[9]),
        .I1(\q_reg[16]_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[74]_i_1 
       (.I0(InstrF[10]),
        .I1(\q_reg[16]_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[75]_i_1 
       (.I0(InstrF[11]),
        .I1(\q_reg[16]_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[76]_i_1 
       (.I0(InstrF[12]),
        .I1(\q_reg[16]_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[77]_i_1 
       (.I0(InstrF[13]),
        .I1(\q_reg[16]_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[78]_i_1 
       (.I0(InstrF[14]),
        .I1(\q_reg[16]_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[79]_i_1 
       (.I0(InstrF[15]),
        .I1(\q_reg[16]_0 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[80]_i_1 
       (.I0(InstrF[16]),
        .I1(\q_reg[16]_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[81]_i_1 
       (.I0(InstrF[17]),
        .I1(\q_reg[16]_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[82]_i_1 
       (.I0(InstrF[18]),
        .I1(\q_reg[16]_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[83]_i_1 
       (.I0(InstrF[19]),
        .I1(\q_reg[16]_0 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[84]_i_1 
       (.I0(InstrF[20]),
        .I1(\q_reg[16]_0 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[85]_i_1 
       (.I0(InstrF[21]),
        .I1(\q_reg[16]_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[86]_i_1 
       (.I0(InstrF[22]),
        .I1(\q_reg[16]_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[87]_i_1 
       (.I0(InstrF[23]),
        .I1(\q_reg[16]_0 ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[88]_i_1 
       (.I0(InstrF[24]),
        .I1(\q_reg[16]_0 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[89]_i_1 
       (.I0(InstrF[25]),
        .I1(\q_reg[16]_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[90]_i_1 
       (.I0(InstrF[26]),
        .I1(\q_reg[16]_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[91]_i_1 
       (.I0(InstrF[27]),
        .I1(\q_reg[16]_0 ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[92]_i_1 
       (.I0(InstrF[28]),
        .I1(\q_reg[16]_0 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[93]_i_1 
       (.I0(InstrF[29]),
        .I1(\q_reg[16]_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[94]_i_1 
       (.I0(InstrF[30]),
        .I1(\q_reg[16]_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[95]_i_1 
       (.I0(InstrF[31]),
        .I1(\q_reg[16]_0 ),
        .O(D[31]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(\q_reg[10]_0 ));
  (* ORIG_CELL_NAME = "q_reg[11]" *) 
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(Q[1]));
  (* ORIG_CELL_NAME = "q_reg[11]" *) 
  FDCE \q_reg[11]_rep 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[11]_rep_1 ),
        .Q(\q_reg[11]_rep_0 ));
  (* ORIG_CELL_NAME = "q_reg[11]" *) 
  FDCE \q_reg[11]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[11]_rep__0_2 ),
        .Q(\q_reg[11]_rep__0_0 ));
  (* ORIG_CELL_NAME = "q_reg[11]" *) 
  FDCE \q_reg[11]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[11]_rep__1_4 ),
        .Q(\q_reg[11]_rep__1_0 ));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(Q[2]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(Q[3]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(Q[4]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(Q[5]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[16]),
        .Q(\q_reg_n_0_[16] ));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[17]),
        .Q(JumpE));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[18]),
        .Q(Q[6]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[19]),
        .Q(Q[7]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(p_0_in_0[1]));
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
        .Q(p_0_in_0[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(funct3E[0]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(funct3E[1]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module design_1_top_0_0_floprc__parameterized0
   (\q_reg[16] ,
    \q_reg[177]_0 ,
    Q,
    \q_reg[177]_1 ,
    ovfE,
    \q_reg[12] ,
    \q_reg[37]_0 ,
    \q_reg[12]_0 ,
    \q_reg[12]_1 ,
    \q_reg[164]_0 ,
    \q_reg[12]_2 ,
    \q_reg[165]_0 ,
    \q_reg[12]_3 ,
    \q_reg[12]_4 ,
    \q_reg[12]_5 ,
    \q_reg[12]_6 ,
    \q_reg[12]_7 ,
    \q_reg[12]_8 ,
    \q_reg[12]_9 ,
    \q_reg[12]_10 ,
    \q_reg[12]_11 ,
    \q_reg[37]_1 ,
    \q_reg[36]_0 ,
    \q_reg[12]_12 ,
    \q_reg[12]_13 ,
    \q_reg[12]_14 ,
    \q_reg[12]_15 ,
    \q_reg[12]_16 ,
    \q_reg[12]_17 ,
    \q_reg[12]_18 ,
    \q_reg[12]_19 ,
    \q_reg[12]_20 ,
    \q_reg[36]_1 ,
    \q_reg[36]_2 ,
    \q_reg[36]_3 ,
    \q_reg[36]_4 ,
    \q_reg[175]_0 ,
    \q_reg[175]_1 ,
    \q_reg[14] ,
    \q_reg[65]_0 ,
    \q_reg[65]_1 ,
    DI,
    S,
    \q_reg[150]_0 ,
    \q_reg[150]_1 ,
    \q_reg[39]_0 ,
    data6,
    \q_reg[37]_2 ,
    \q_reg[37]_3 ,
    \q_reg[38]_0 ,
    \q_reg[12]_21 ,
    \q_reg[12]_22 ,
    \q_reg[12]_23 ,
    \q_reg[12]_24 ,
    \q_reg[12]_25 ,
    \q_reg[147]_0 ,
    \q_reg[146]_0 ,
    \q_reg[12]_26 ,
    \q_reg[36]_5 ,
    \q_reg[146]_1 ,
    \q_reg[12]_27 ,
    \q_reg[11]_rep__0 ,
    \q_reg[12]_28 ,
    \q_reg[147]_1 ,
    \q_reg[147]_2 ,
    \q_reg[157]_0 ,
    \q_reg[12]_29 ,
    \q_reg[12]_30 ,
    \q_reg[12]_31 ,
    \q_reg[12]_32 ,
    \q_reg[12]_33 ,
    \q_reg[12]_34 ,
    \q_reg[12]_35 ,
    \q_reg[176]_0 ,
    \q_reg[12]_36 ,
    \q_reg[12]_37 ,
    \q_reg[12]_38 ,
    \q_reg[12]_39 ,
    \q_reg[12]_40 ,
    \q_reg[12]_41 ,
    \q_reg[12]_42 ,
    \q_reg[12]_43 ,
    \q_reg[12]_44 ,
    \q_reg[12]_45 ,
    \q_reg[12]_46 ,
    \q_reg[12]_47 ,
    \q_reg[12]_48 ,
    \q_reg[12]_49 ,
    \q_reg[11]_rep__1 ,
    \q_reg[12]_50 ,
    \q_reg[13] ,
    \q_reg[149]_0 ,
    \q_reg[148]_0 ,
    \q_reg[147]_3 ,
    \q_reg[11]_rep__0_0 ,
    \q_reg[11]_rep__0_1 ,
    \q_reg[57]_0 ,
    \q_reg[57]_1 ,
    \q_reg[49]_0 ,
    \q_reg[161]_0 ,
    \q_reg[66]_0 ,
    \q_reg[177]_2 ,
    E,
    \q_reg[19] ,
    \q_reg[153]_0 ,
    \q_reg[161]_1 ,
    \q_reg[165]_1 ,
    \q_reg[169]_0 ,
    \q_reg[173]_0 ,
    \q_reg[177]_3 ,
    \q_reg[38]_1 ,
    \q_reg[42]_0 ,
    \q_reg[46]_0 ,
    \q_reg[50]_0 ,
    \q_reg[54]_0 ,
    \q_reg[58]_0 ,
    \q_reg[62]_0 ,
    \q_reg[149]_1 ,
    \q_reg[153]_1 ,
    \q_reg[157]_1 ,
    \q_reg[161]_2 ,
    \q_reg[165]_2 ,
    \q_reg[169]_1 ,
    \q_reg[173]_1 ,
    PCSrcE,
    O,
    PCPlus4F,
    PCSrc1__6,
    \q_reg[31] ,
    \q_reg[32] ,
    p_4_in,
    \q_reg[106]_0 ,
    \q_reg[107]_0 ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    \q_reg[133]_1 ,
    \q[31]_i_17 ,
    \q[31]_i_17_0 ,
    \q[31]_i_17_1 ,
    \q_reg[118] ,
    \q_reg[106]_1 ,
    \q[15]_i_7 ,
    \q_reg[106]_2 ,
    \q_reg[135] ,
    \q_reg[135]_0 ,
    \q[31]_i_6_0 ,
    condinvb__0,
    \q[105]_i_3_0 ,
    \q[109]_i_4_0 ,
    \q[113]_i_3 ,
    \q[117]_i_3 ,
    \q[121]_i_4 ,
    \q[125]_i_4 ,
    \q[129]_i_4 ,
    \q[133]_i_4 ,
    D,
    clk,
    reset);
  output [3:0]\q_reg[16] ;
  output \q_reg[177]_0 ;
  output [63:0]Q;
  output [3:0]\q_reg[177]_1 ;
  output ovfE;
  output \q_reg[12] ;
  output \q_reg[37]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[12]_1 ;
  output \q_reg[164]_0 ;
  output \q_reg[12]_2 ;
  output \q_reg[165]_0 ;
  output \q_reg[12]_3 ;
  output \q_reg[12]_4 ;
  output \q_reg[12]_5 ;
  output \q_reg[12]_6 ;
  output \q_reg[12]_7 ;
  output \q_reg[12]_8 ;
  output \q_reg[12]_9 ;
  output \q_reg[12]_10 ;
  output \q_reg[12]_11 ;
  output \q_reg[37]_1 ;
  output \q_reg[36]_0 ;
  output \q_reg[12]_12 ;
  output \q_reg[12]_13 ;
  output \q_reg[12]_14 ;
  output \q_reg[12]_15 ;
  output \q_reg[12]_16 ;
  output \q_reg[12]_17 ;
  output \q_reg[12]_18 ;
  output \q_reg[12]_19 ;
  output \q_reg[12]_20 ;
  output \q_reg[36]_1 ;
  output \q_reg[36]_2 ;
  output \q_reg[36]_3 ;
  output \q_reg[36]_4 ;
  output \q_reg[175]_0 ;
  output \q_reg[175]_1 ;
  output \q_reg[14] ;
  output [3:0]\q_reg[65]_0 ;
  output [3:0]\q_reg[65]_1 ;
  output [3:0]DI;
  output [3:0]S;
  output \q_reg[150]_0 ;
  output \q_reg[150]_1 ;
  output \q_reg[39]_0 ;
  output [0:0]data6;
  output \q_reg[37]_2 ;
  output \q_reg[37]_3 ;
  output \q_reg[38]_0 ;
  output \q_reg[12]_21 ;
  output \q_reg[12]_22 ;
  output \q_reg[12]_23 ;
  output \q_reg[12]_24 ;
  output \q_reg[12]_25 ;
  output \q_reg[147]_0 ;
  output \q_reg[146]_0 ;
  output \q_reg[12]_26 ;
  output \q_reg[36]_5 ;
  output \q_reg[146]_1 ;
  output \q_reg[12]_27 ;
  output \q_reg[11]_rep__0 ;
  output \q_reg[12]_28 ;
  output \q_reg[147]_1 ;
  output \q_reg[147]_2 ;
  output [3:0]\q_reg[157]_0 ;
  output \q_reg[12]_29 ;
  output \q_reg[12]_30 ;
  output \q_reg[12]_31 ;
  output \q_reg[12]_32 ;
  output \q_reg[12]_33 ;
  output \q_reg[12]_34 ;
  output \q_reg[12]_35 ;
  output \q_reg[176]_0 ;
  output \q_reg[12]_36 ;
  output \q_reg[12]_37 ;
  output \q_reg[12]_38 ;
  output \q_reg[12]_39 ;
  output \q_reg[12]_40 ;
  output \q_reg[12]_41 ;
  output \q_reg[12]_42 ;
  output \q_reg[12]_43 ;
  output \q_reg[12]_44 ;
  output \q_reg[12]_45 ;
  output \q_reg[12]_46 ;
  output \q_reg[12]_47 ;
  output \q_reg[12]_48 ;
  output \q_reg[12]_49 ;
  output \q_reg[11]_rep__1 ;
  output \q_reg[12]_50 ;
  output \q_reg[13] ;
  output \q_reg[149]_0 ;
  output \q_reg[148]_0 ;
  output \q_reg[147]_3 ;
  output \q_reg[11]_rep__0_0 ;
  output \q_reg[11]_rep__0_1 ;
  output [3:0]\q_reg[57]_0 ;
  output [3:0]\q_reg[57]_1 ;
  output [3:0]\q_reg[49]_0 ;
  output [3:0]\q_reg[161]_0 ;
  output [3:0]\q_reg[66]_0 ;
  output [3:0]\q_reg[177]_2 ;
  output [0:0]E;
  output \q_reg[19] ;
  output [2:0]\q_reg[153]_0 ;
  output [3:0]\q_reg[161]_1 ;
  output [3:0]\q_reg[165]_1 ;
  output [3:0]\q_reg[169]_0 ;
  output [3:0]\q_reg[173]_0 ;
  output [0:0]\q_reg[177]_3 ;
  output [3:0]\q_reg[38]_1 ;
  output [3:0]\q_reg[42]_0 ;
  output [3:0]\q_reg[46]_0 ;
  output [3:0]\q_reg[50]_0 ;
  output [3:0]\q_reg[54]_0 ;
  output [3:0]\q_reg[58]_0 ;
  output [3:0]\q_reg[62]_0 ;
  output [3:0]\q_reg[149]_1 ;
  output [3:0]\q_reg[153]_1 ;
  output [3:0]\q_reg[157]_1 ;
  output [3:0]\q_reg[161]_2 ;
  output [3:0]\q_reg[165]_2 ;
  output [3:0]\q_reg[169]_1 ;
  output [3:0]\q_reg[173]_1 ;
  input [0:0]PCSrcE;
  input [3:0]O;
  input [3:0]PCPlus4F;
  input PCSrc1__6;
  input [3:0]\q_reg[31] ;
  input [5:0]\q_reg[32] ;
  input p_4_in;
  input \q_reg[106]_0 ;
  input \q_reg[107]_0 ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input \q_reg[133]_1 ;
  input \q[31]_i_17 ;
  input \q[31]_i_17_0 ;
  input \q[31]_i_17_1 ;
  input \q_reg[118] ;
  input \q_reg[106]_1 ;
  input \q[15]_i_7 ;
  input \q_reg[106]_2 ;
  input \q_reg[135] ;
  input \q_reg[135]_0 ;
  input [9:0]\q[31]_i_6_0 ;
  input [0:0]condinvb__0;
  input [3:0]\q[105]_i_3_0 ;
  input [3:0]\q[109]_i_4_0 ;
  input [3:0]\q[113]_i_3 ;
  input [3:0]\q[117]_i_3 ;
  input [3:0]\q[121]_i_4 ;
  input [3:0]\q[125]_i_4 ;
  input [3:0]\q[129]_i_4 ;
  input [2:0]\q[133]_i_4 ;
  input [100:0]D;
  input clk;
  input reset;

  wire [100:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [31:0]PCE;
  wire [3:0]PCPlus4F;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [63:0]Q;
  wire [4:0]RdE;
  wire [3:0]S;
  wire [0:0]SrcBE;
  wire [31:31]SrcBE__0;
  wire [9:0]\alu/result00_out ;
  wire clk;
  wire [0:0]condinvb__0;
  wire [0:0]data6;
  wire ovfE;
  wire p_4_in;
  wire \q[105]_i_10_n_0 ;
  wire \q[105]_i_14_n_0 ;
  wire \q[105]_i_15_n_0 ;
  wire \q[105]_i_16_n_0 ;
  wire \q[105]_i_17_n_0 ;
  wire \q[105]_i_18_n_0 ;
  wire \q[105]_i_19_n_0 ;
  wire \q[105]_i_20_n_0 ;
  wire \q[105]_i_21_n_0 ;
  wire \q[105]_i_22_n_0 ;
  wire [3:0]\q[105]_i_3_0 ;
  wire \q[105]_i_9_n_0 ;
  wire \q[106]_i_10_n_0 ;
  wire \q[106]_i_11_n_0 ;
  wire \q[106]_i_8_n_0 ;
  wire \q[107]_i_10_n_0 ;
  wire \q[107]_i_11_n_0 ;
  wire \q[107]_i_12_n_0 ;
  wire \q[107]_i_13_n_0 ;
  wire \q[107]_i_6_n_0 ;
  wire \q[107]_i_7_n_0 ;
  wire \q[107]_i_9_n_0 ;
  wire \q[108]_i_10_n_0 ;
  wire \q[108]_i_11_n_0 ;
  wire \q[108]_i_17_n_0 ;
  wire \q[108]_i_18_n_0 ;
  wire \q[108]_i_19_n_0 ;
  wire \q[108]_i_6_n_0 ;
  wire \q[108]_i_7_n_0 ;
  wire \q[109]_i_11_n_0 ;
  wire [3:0]\q[109]_i_4_0 ;
  wire \q[109]_i_8_n_0 ;
  wire \q[109]_i_9_n_0 ;
  wire \q[110]_i_10_n_0 ;
  wire \q[110]_i_7_n_0 ;
  wire \q[110]_i_8_n_0 ;
  wire \q[110]_i_9_n_0 ;
  wire \q[111]_i_10_n_0 ;
  wire \q[111]_i_11_n_0 ;
  wire \q[111]_i_12_n_0 ;
  wire \q[111]_i_6_n_0 ;
  wire \q[111]_i_7_n_0 ;
  wire \q[111]_i_8_n_0 ;
  wire \q[112]_i_11_n_0 ;
  wire \q[112]_i_12_n_0 ;
  wire \q[112]_i_17_n_0 ;
  wire \q[112]_i_6_n_0 ;
  wire \q[112]_i_7_n_0 ;
  wire \q[112]_i_9_n_0 ;
  wire \q[113]_i_10_n_0 ;
  wire [3:0]\q[113]_i_3 ;
  wire \q[113]_i_6_n_0 ;
  wire \q[113]_i_7_n_0 ;
  wire \q[113]_i_8_n_0 ;
  wire \q[113]_i_9_n_0 ;
  wire \q[114]_i_10_n_0 ;
  wire \q[114]_i_11_n_0 ;
  wire \q[114]_i_12_n_0 ;
  wire \q[114]_i_13_n_0 ;
  wire \q[114]_i_6_n_0 ;
  wire \q[114]_i_7_n_0 ;
  wire \q[114]_i_8_n_0 ;
  wire \q[114]_i_9_n_0 ;
  wire \q[115]_i_10_n_0 ;
  wire \q[115]_i_11_n_0 ;
  wire \q[115]_i_12_n_0 ;
  wire \q[115]_i_6_n_0 ;
  wire \q[115]_i_7_n_0 ;
  wire \q[115]_i_8_n_0 ;
  wire \q[115]_i_9_n_0 ;
  wire \q[116]_i_10_n_0 ;
  wire \q[116]_i_11_n_0 ;
  wire \q[116]_i_16_n_0 ;
  wire \q[116]_i_17_n_0 ;
  wire \q[116]_i_6_n_0 ;
  wire \q[116]_i_7_n_0 ;
  wire \q[116]_i_9_n_0 ;
  wire \q[117]_i_10_n_0 ;
  wire \q[117]_i_11_n_0 ;
  wire \q[117]_i_12_n_0 ;
  wire \q[117]_i_13_n_0 ;
  wire [3:0]\q[117]_i_3 ;
  wire \q[117]_i_6_n_0 ;
  wire \q[117]_i_7_n_0 ;
  wire \q[117]_i_8_n_0 ;
  wire \q[117]_i_9_n_0 ;
  wire \q[118]_i_10_n_0 ;
  wire \q[118]_i_11_n_0 ;
  wire \q[118]_i_12_n_0 ;
  wire \q[118]_i_13_n_0 ;
  wire \q[118]_i_14_n_0 ;
  wire \q[118]_i_15_n_0 ;
  wire \q[118]_i_16_n_0 ;
  wire \q[118]_i_6_n_0 ;
  wire \q[118]_i_7_n_0 ;
  wire \q[118]_i_8_n_0 ;
  wire \q[118]_i_9_n_0 ;
  wire \q[119]_i_10_n_0 ;
  wire \q[119]_i_11_n_0 ;
  wire \q[119]_i_12_n_0 ;
  wire \q[119]_i_13_n_0 ;
  wire \q[119]_i_14_n_0 ;
  wire \q[119]_i_6_n_0 ;
  wire \q[119]_i_7_n_0 ;
  wire \q[119]_i_8_n_0 ;
  wire \q[120]_i_10_n_0 ;
  wire \q[120]_i_11_n_0 ;
  wire \q[120]_i_16_n_0 ;
  wire \q[120]_i_6_n_0 ;
  wire \q[120]_i_7_n_0 ;
  wire \q[120]_i_9_n_0 ;
  wire \q[121]_i_10_n_0 ;
  wire \q[121]_i_11_n_0 ;
  wire \q[121]_i_12_n_0 ;
  wire [3:0]\q[121]_i_4 ;
  wire \q[121]_i_6_n_0 ;
  wire \q[121]_i_7_n_0 ;
  wire \q[121]_i_8_n_0 ;
  wire \q[121]_i_9_n_0 ;
  wire \q[122]_i_10_n_0 ;
  wire \q[122]_i_11_n_0 ;
  wire \q[122]_i_12_n_0 ;
  wire \q[122]_i_6_n_0 ;
  wire \q[122]_i_7_n_0 ;
  wire \q[122]_i_8_n_0 ;
  wire \q[122]_i_9_n_0 ;
  wire \q[123]_i_10_n_0 ;
  wire \q[123]_i_11_n_0 ;
  wire \q[123]_i_12_n_0 ;
  wire \q[123]_i_6_n_0 ;
  wire \q[123]_i_7_n_0 ;
  wire \q[123]_i_8_n_0 ;
  wire \q[123]_i_9_n_0 ;
  wire \q[124]_i_11_n_0 ;
  wire \q[124]_i_12_n_0 ;
  wire \q[124]_i_13_n_0 ;
  wire \q[124]_i_6_n_0 ;
  wire \q[124]_i_7_n_0 ;
  wire \q[124]_i_8_n_0 ;
  wire \q[124]_i_9_n_0 ;
  wire \q[125]_i_10_n_0 ;
  wire \q[125]_i_11_n_0 ;
  wire \q[125]_i_12_n_0 ;
  wire \q[125]_i_13_n_0 ;
  wire \q[125]_i_14_n_0 ;
  wire [3:0]\q[125]_i_4 ;
  wire \q[125]_i_6_n_0 ;
  wire \q[125]_i_7_n_0 ;
  wire \q[125]_i_8_n_0 ;
  wire \q[125]_i_9_n_0 ;
  wire \q[126]_i_10_n_0 ;
  wire \q[126]_i_11_n_0 ;
  wire \q[126]_i_12_n_0 ;
  wire \q[126]_i_13_n_0 ;
  wire \q[126]_i_14_n_0 ;
  wire \q[126]_i_6_n_0 ;
  wire \q[126]_i_7_n_0 ;
  wire \q[126]_i_8_n_0 ;
  wire \q[126]_i_9_n_0 ;
  wire \q[127]_i_10_n_0 ;
  wire \q[127]_i_11_n_0 ;
  wire \q[127]_i_12_n_0 ;
  wire \q[127]_i_6_n_0 ;
  wire \q[127]_i_7_n_0 ;
  wire \q[127]_i_8_n_0 ;
  wire \q[127]_i_9_n_0 ;
  wire \q[128]_i_11_n_0 ;
  wire \q[128]_i_12_n_0 ;
  wire \q[128]_i_13_n_0 ;
  wire \q[128]_i_14_n_0 ;
  wire \q[128]_i_15_n_0 ;
  wire \q[128]_i_16_n_0 ;
  wire \q[128]_i_17_n_0 ;
  wire \q[128]_i_6_n_0 ;
  wire \q[128]_i_7_n_0 ;
  wire \q[128]_i_8_n_0 ;
  wire \q[128]_i_9_n_0 ;
  wire \q[129]_i_10_n_0 ;
  wire \q[129]_i_11_n_0 ;
  wire \q[129]_i_12_n_0 ;
  wire \q[129]_i_13_n_0 ;
  wire \q[129]_i_14_n_0 ;
  wire \q[129]_i_15_n_0 ;
  wire \q[129]_i_16_n_0 ;
  wire [3:0]\q[129]_i_4 ;
  wire \q[129]_i_6_n_0 ;
  wire \q[129]_i_7_n_0 ;
  wire \q[129]_i_8_n_0 ;
  wire \q[129]_i_9_n_0 ;
  wire \q[130]_i_10_n_0 ;
  wire \q[130]_i_11_n_0 ;
  wire \q[130]_i_12_n_0 ;
  wire \q[130]_i_6_n_0 ;
  wire \q[130]_i_7_n_0 ;
  wire \q[130]_i_8_n_0 ;
  wire \q[130]_i_9_n_0 ;
  wire \q[131]_i_10_n_0 ;
  wire \q[131]_i_11_n_0 ;
  wire \q[131]_i_6_n_0 ;
  wire \q[131]_i_7_n_0 ;
  wire \q[131]_i_8_n_0 ;
  wire \q[131]_i_9_n_0 ;
  wire \q[132]_i_11_n_0 ;
  wire \q[132]_i_12_n_0 ;
  wire \q[132]_i_13_n_0 ;
  wire \q[132]_i_6_n_0 ;
  wire \q[132]_i_7_n_0 ;
  wire \q[132]_i_8_n_0 ;
  wire \q[132]_i_9_n_0 ;
  wire \q[133]_i_10_n_0 ;
  wire \q[133]_i_11_n_0 ;
  wire \q[133]_i_12_n_0 ;
  wire [2:0]\q[133]_i_4 ;
  wire \q[133]_i_6_n_0 ;
  wire \q[133]_i_7_n_0 ;
  wire \q[133]_i_8_n_0 ;
  wire \q[133]_i_9_n_0 ;
  wire \q[134]_i_10_n_0 ;
  wire \q[134]_i_11_n_0 ;
  wire \q[134]_i_8_n_0 ;
  wire \q[134]_i_9_n_0 ;
  wire \q[135]_i_11_n_0 ;
  wire \q[135]_i_13_n_0 ;
  wire \q[135]_i_14_n_0 ;
  wire \q[135]_i_15_n_0 ;
  wire \q[135]_i_16_n_0 ;
  wire \q[136]_i_10_n_0 ;
  wire \q[136]_i_12_n_0 ;
  wire \q[136]_i_17_n_0 ;
  wire \q[136]_i_18_n_0 ;
  wire \q[136]_i_19_n_0 ;
  wire \q[136]_i_20_n_0 ;
  wire \q[136]_i_21_n_0 ;
  wire \q[136]_i_22_n_0 ;
  wire \q[136]_i_23_n_0 ;
  wire \q[136]_i_24_n_0 ;
  wire \q[136]_i_25_n_0 ;
  wire \q[136]_i_8_n_0 ;
  wire \q[136]_i_9_n_0 ;
  wire \q[15]_i_16_n_0 ;
  wire \q[15]_i_17_n_0 ;
  wire \q[15]_i_20_n_0 ;
  wire \q[15]_i_21_n_0 ;
  wire \q[15]_i_22_n_0 ;
  wire \q[15]_i_23_n_0 ;
  wire \q[15]_i_7 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_17 ;
  wire \q[31]_i_17_0 ;
  wire \q[31]_i_17_1 ;
  wire \q[31]_i_26_n_0 ;
  wire \q[31]_i_29_n_0 ;
  wire [9:0]\q[31]_i_6_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[31]_i_7_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q_reg[106]_0 ;
  wire \q_reg[106]_1 ;
  wire \q_reg[106]_2 ;
  wire \q_reg[107]_0 ;
  wire \q_reg[108]_i_8_n_0 ;
  wire \q_reg[108]_i_8_n_1 ;
  wire \q_reg[108]_i_8_n_2 ;
  wire \q_reg[108]_i_8_n_3 ;
  wire \q_reg[108]_i_8_n_4 ;
  wire \q_reg[108]_i_8_n_5 ;
  wire \q_reg[108]_i_8_n_6 ;
  wire \q_reg[108]_i_8_n_7 ;
  wire \q_reg[112]_i_10_n_0 ;
  wire \q_reg[112]_i_10_n_1 ;
  wire \q_reg[112]_i_10_n_2 ;
  wire \q_reg[112]_i_10_n_3 ;
  wire \q_reg[112]_i_10_n_7 ;
  wire \q_reg[116]_i_8_n_0 ;
  wire \q_reg[116]_i_8_n_1 ;
  wire \q_reg[116]_i_8_n_2 ;
  wire \q_reg[116]_i_8_n_3 ;
  wire \q_reg[118] ;
  wire \q_reg[11]_rep__0 ;
  wire \q_reg[11]_rep__0_0 ;
  wire \q_reg[11]_rep__0_1 ;
  wire \q_reg[11]_rep__1 ;
  wire \q_reg[120]_i_8_n_0 ;
  wire \q_reg[120]_i_8_n_1 ;
  wire \q_reg[120]_i_8_n_2 ;
  wire \q_reg[120]_i_8_n_3 ;
  wire \q_reg[124]_i_10_n_0 ;
  wire \q_reg[124]_i_10_n_1 ;
  wire \q_reg[124]_i_10_n_2 ;
  wire \q_reg[124]_i_10_n_3 ;
  wire \q_reg[128]_i_10_n_0 ;
  wire \q_reg[128]_i_10_n_1 ;
  wire \q_reg[128]_i_10_n_2 ;
  wire \q_reg[128]_i_10_n_3 ;
  wire \q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[12]_10 ;
  wire \q_reg[12]_11 ;
  wire \q_reg[12]_12 ;
  wire \q_reg[12]_13 ;
  wire \q_reg[12]_14 ;
  wire \q_reg[12]_15 ;
  wire \q_reg[12]_16 ;
  wire \q_reg[12]_17 ;
  wire \q_reg[12]_18 ;
  wire \q_reg[12]_19 ;
  wire \q_reg[12]_2 ;
  wire \q_reg[12]_20 ;
  wire \q_reg[12]_21 ;
  wire \q_reg[12]_22 ;
  wire \q_reg[12]_23 ;
  wire \q_reg[12]_24 ;
  wire \q_reg[12]_25 ;
  wire \q_reg[12]_26 ;
  wire \q_reg[12]_27 ;
  wire \q_reg[12]_28 ;
  wire \q_reg[12]_29 ;
  wire \q_reg[12]_3 ;
  wire \q_reg[12]_30 ;
  wire \q_reg[12]_31 ;
  wire \q_reg[12]_32 ;
  wire \q_reg[12]_33 ;
  wire \q_reg[12]_34 ;
  wire \q_reg[12]_35 ;
  wire \q_reg[12]_36 ;
  wire \q_reg[12]_37 ;
  wire \q_reg[12]_38 ;
  wire \q_reg[12]_39 ;
  wire \q_reg[12]_4 ;
  wire \q_reg[12]_40 ;
  wire \q_reg[12]_41 ;
  wire \q_reg[12]_42 ;
  wire \q_reg[12]_43 ;
  wire \q_reg[12]_44 ;
  wire \q_reg[12]_45 ;
  wire \q_reg[12]_46 ;
  wire \q_reg[12]_47 ;
  wire \q_reg[12]_48 ;
  wire \q_reg[12]_49 ;
  wire \q_reg[12]_5 ;
  wire \q_reg[12]_50 ;
  wire \q_reg[12]_6 ;
  wire \q_reg[12]_7 ;
  wire \q_reg[12]_8 ;
  wire \q_reg[12]_9 ;
  wire \q_reg[132]_i_10_n_0 ;
  wire \q_reg[132]_i_10_n_1 ;
  wire \q_reg[132]_i_10_n_2 ;
  wire \q_reg[132]_i_10_n_3 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[133]_1 ;
  wire \q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[136]_i_14_n_0 ;
  wire \q_reg[136]_i_14_n_1 ;
  wire \q_reg[136]_i_14_n_2 ;
  wire \q_reg[136]_i_14_n_3 ;
  wire \q_reg[13] ;
  wire \q_reg[146]_0 ;
  wire \q_reg[146]_1 ;
  wire \q_reg[147]_0 ;
  wire \q_reg[147]_1 ;
  wire \q_reg[147]_2 ;
  wire \q_reg[147]_3 ;
  wire \q_reg[148]_0 ;
  wire \q_reg[149]_0 ;
  wire [3:0]\q_reg[149]_1 ;
  wire \q_reg[14] ;
  wire \q_reg[150]_0 ;
  wire \q_reg[150]_1 ;
  wire [2:0]\q_reg[153]_0 ;
  wire [3:0]\q_reg[153]_1 ;
  wire [3:0]\q_reg[157]_0 ;
  wire [3:0]\q_reg[157]_1 ;
  wire [3:0]\q_reg[161]_0 ;
  wire [3:0]\q_reg[161]_1 ;
  wire [3:0]\q_reg[161]_2 ;
  wire \q_reg[164]_0 ;
  wire \q_reg[165]_0 ;
  wire [3:0]\q_reg[165]_1 ;
  wire [3:0]\q_reg[165]_2 ;
  wire [3:0]\q_reg[169]_0 ;
  wire [3:0]\q_reg[169]_1 ;
  wire [3:0]\q_reg[16] ;
  wire [3:0]\q_reg[173]_0 ;
  wire [3:0]\q_reg[173]_1 ;
  wire \q_reg[175]_0 ;
  wire \q_reg[175]_1 ;
  wire \q_reg[176]_0 ;
  wire \q_reg[177]_0 ;
  wire [3:0]\q_reg[177]_1 ;
  wire [3:0]\q_reg[177]_2 ;
  wire [0:0]\q_reg[177]_3 ;
  wire \q_reg[19] ;
  wire [3:0]\q_reg[31] ;
  wire [5:0]\q_reg[32] ;
  wire \q_reg[36]_0 ;
  wire \q_reg[36]_1 ;
  wire \q_reg[36]_2 ;
  wire \q_reg[36]_3 ;
  wire \q_reg[36]_4 ;
  wire \q_reg[36]_5 ;
  wire \q_reg[37]_0 ;
  wire \q_reg[37]_1 ;
  wire \q_reg[37]_2 ;
  wire \q_reg[37]_3 ;
  wire \q_reg[38]_0 ;
  wire [3:0]\q_reg[38]_1 ;
  wire \q_reg[39]_0 ;
  wire [3:0]\q_reg[42]_0 ;
  wire [3:0]\q_reg[46]_0 ;
  wire [3:0]\q_reg[49]_0 ;
  wire [3:0]\q_reg[50]_0 ;
  wire [3:0]\q_reg[54]_0 ;
  wire [3:0]\q_reg[57]_0 ;
  wire [3:0]\q_reg[57]_1 ;
  wire [3:0]\q_reg[58]_0 ;
  wire [3:0]\q_reg[62]_0 ;
  wire [3:0]\q_reg[65]_0 ;
  wire [3:0]\q_reg[65]_1 ;
  wire [3:0]\q_reg[66]_0 ;
  wire reset;
  wire [3:1]\NLW_q_reg[31]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[31]_i_27_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__0_i_1
       (.I0(Q[14]),
        .I1(Q[46]),
        .I2(Q[47]),
        .I3(Q[15]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[49]_0 [3]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__0_i_2
       (.I0(Q[12]),
        .I1(Q[44]),
        .I2(Q[45]),
        .I3(Q[13]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[49]_0 [2]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__0_i_3
       (.I0(Q[10]),
        .I1(Q[42]),
        .I2(Q[43]),
        .I3(Q[11]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[49]_0 [1]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__0_i_4
       (.I0(Q[8]),
        .I1(Q[40]),
        .I2(Q[41]),
        .I3(Q[9]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[49]_0 [0]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry__0_i_5
       (.I0(Q[47]),
        .I1(Q[15]),
        .I2(Q[46]),
        .I3(Q[14]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[161]_0 [3]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry__0_i_6
       (.I0(Q[45]),
        .I1(Q[13]),
        .I2(Q[44]),
        .I3(Q[12]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[161]_0 [2]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry__0_i_7
       (.I0(Q[43]),
        .I1(Q[11]),
        .I2(Q[42]),
        .I3(Q[10]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[161]_0 [1]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry__0_i_8
       (.I0(Q[41]),
        .I1(Q[9]),
        .I2(Q[40]),
        .I3(Q[8]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[161]_0 [0]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__1_i_1
       (.I0(Q[22]),
        .I1(Q[54]),
        .I2(Q[55]),
        .I3(Q[23]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[57]_0 [3]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__1_i_2
       (.I0(Q[20]),
        .I1(Q[52]),
        .I2(Q[53]),
        .I3(Q[21]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[57]_0 [2]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__1_i_3
       (.I0(Q[18]),
        .I1(Q[50]),
        .I2(Q[51]),
        .I3(Q[19]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[57]_0 [1]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__1_i_4
       (.I0(Q[16]),
        .I1(Q[48]),
        .I2(Q[49]),
        .I3(Q[17]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[57]_0 [0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__1_i_5
       (.I0(Q[22]),
        .I1(Q[54]),
        .I2(\q_reg[32] [0]),
        .I3(Q[23]),
        .I4(Q[55]),
        .O(\q_reg[57]_1 [3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__1_i_6
       (.I0(Q[20]),
        .I1(Q[52]),
        .I2(\q_reg[32] [0]),
        .I3(Q[21]),
        .I4(Q[53]),
        .O(\q_reg[57]_1 [2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__1_i_7
       (.I0(Q[18]),
        .I1(Q[50]),
        .I2(\q_reg[32] [0]),
        .I3(Q[19]),
        .I4(Q[51]),
        .O(\q_reg[57]_1 [1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__1_i_8
       (.I0(Q[16]),
        .I1(Q[48]),
        .I2(\q_reg[32] [0]),
        .I3(Q[17]),
        .I4(Q[49]),
        .O(\q_reg[57]_1 [0]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__2_i_1
       (.I0(Q[30]),
        .I1(Q[62]),
        .I2(Q[63]),
        .I3(Q[31]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[65]_0 [3]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__2_i_2
       (.I0(Q[28]),
        .I1(Q[60]),
        .I2(Q[61]),
        .I3(Q[29]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[65]_0 [2]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__2_i_3
       (.I0(Q[26]),
        .I1(Q[58]),
        .I2(Q[59]),
        .I3(Q[27]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[65]_0 [1]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry__2_i_4
       (.I0(Q[24]),
        .I1(Q[56]),
        .I2(Q[57]),
        .I3(Q[25]),
        .I4(\q_reg[32] [0]),
        .O(\q_reg[65]_0 [0]));
  LUT5 #(
    .INIT(32'h90030903)) 
    i__carry__2_i_5
       (.I0(Q[30]),
        .I1(Q[62]),
        .I2(Q[63]),
        .I3(\q_reg[32] [0]),
        .I4(Q[31]),
        .O(\q_reg[65]_1 [3]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__2_i_6
       (.I0(Q[28]),
        .I1(Q[60]),
        .I2(\q_reg[32] [0]),
        .I3(Q[29]),
        .I4(Q[61]),
        .O(\q_reg[65]_1 [2]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__2_i_7
       (.I0(Q[26]),
        .I1(Q[58]),
        .I2(\q_reg[32] [0]),
        .I3(Q[27]),
        .I4(Q[59]),
        .O(\q_reg[65]_1 [1]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry__2_i_8
       (.I0(Q[24]),
        .I1(Q[56]),
        .I2(\q_reg[32] [0]),
        .I3(Q[25]),
        .I4(Q[57]),
        .O(\q_reg[65]_1 [0]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry_i_1
       (.I0(Q[6]),
        .I1(Q[38]),
        .I2(Q[39]),
        .I3(Q[7]),
        .I4(\q_reg[32] [0]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry_i_2
       (.I0(Q[4]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[5]),
        .I4(\q_reg[32] [0]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry_i_3
       (.I0(Q[2]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[3]),
        .I4(\q_reg[32] [0]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h2F020000)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(Q[1]),
        .I4(\q_reg[32] [0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h90000393)) 
    i__carry_i_5
       (.I0(Q[6]),
        .I1(Q[38]),
        .I2(\q_reg[32] [0]),
        .I3(Q[7]),
        .I4(Q[39]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h90000595)) 
    i__carry_i_6
       (.I0(Q[36]),
        .I1(Q[4]),
        .I2(\q_reg[32] [0]),
        .I3(Q[5]),
        .I4(Q[37]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry_i_7
       (.I0(Q[35]),
        .I1(Q[3]),
        .I2(Q[34]),
        .I3(Q[2]),
        .I4(\q_reg[32] [0]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h90090505)) 
    i__carry_i_8
       (.I0(Q[33]),
        .I1(Q[1]),
        .I2(Q[32]),
        .I3(Q[0]),
        .I4(\q_reg[32] [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_1
       (.I0(Q[39]),
        .I1(Q[7]),
        .O(\q_reg[153]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_2
       (.I0(Q[38]),
        .I1(Q[6]),
        .O(\q_reg[153]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_3
       (.I0(Q[37]),
        .I1(Q[5]),
        .O(\q_reg[153]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__0_i_4
       (.I0(Q[36]),
        .I1(Q[4]),
        .O(\q_reg[153]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_1
       (.I0(Q[43]),
        .I1(Q[11]),
        .O(\q_reg[157]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_2
       (.I0(Q[42]),
        .I1(Q[10]),
        .O(\q_reg[157]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_3
       (.I0(Q[41]),
        .I1(Q[9]),
        .O(\q_reg[157]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__1_i_4
       (.I0(Q[40]),
        .I1(Q[8]),
        .O(\q_reg[157]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_1
       (.I0(Q[47]),
        .I1(Q[15]),
        .O(\q_reg[161]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_2
       (.I0(Q[46]),
        .I1(Q[14]),
        .O(\q_reg[161]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_3
       (.I0(Q[45]),
        .I1(Q[13]),
        .O(\q_reg[161]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__2_i_4
       (.I0(Q[44]),
        .I1(Q[12]),
        .O(\q_reg[161]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_1
       (.I0(Q[51]),
        .I1(Q[19]),
        .O(\q_reg[165]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_2
       (.I0(Q[50]),
        .I1(Q[18]),
        .O(\q_reg[165]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_3
       (.I0(Q[49]),
        .I1(Q[17]),
        .O(\q_reg[165]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__3_i_4
       (.I0(Q[48]),
        .I1(Q[16]),
        .O(\q_reg[165]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_1
       (.I0(Q[55]),
        .I1(Q[23]),
        .O(\q_reg[169]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_2
       (.I0(Q[54]),
        .I1(Q[22]),
        .O(\q_reg[169]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_3
       (.I0(Q[53]),
        .I1(Q[21]),
        .O(\q_reg[169]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__4_i_4
       (.I0(Q[52]),
        .I1(Q[20]),
        .O(\q_reg[169]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_1
       (.I0(Q[59]),
        .I1(Q[27]),
        .O(\q_reg[173]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_2
       (.I0(Q[58]),
        .I1(Q[26]),
        .O(\q_reg[173]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_3
       (.I0(Q[57]),
        .I1(Q[25]),
        .O(\q_reg[173]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__5_i_4
       (.I0(Q[56]),
        .I1(Q[24]),
        .O(\q_reg[173]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_1
       (.I0(Q[63]),
        .I1(Q[31]),
        .O(\q_reg[177]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_2
       (.I0(Q[62]),
        .I1(Q[30]),
        .O(\q_reg[177]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_3
       (.I0(Q[61]),
        .I1(Q[29]),
        .O(\q_reg[177]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry__6_i_4
       (.I0(Q[60]),
        .I1(Q[28]),
        .O(\q_reg[177]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_1
       (.I0(Q[35]),
        .I1(Q[3]),
        .O(\q_reg[149]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_2
       (.I0(Q[34]),
        .I1(Q[2]),
        .O(\q_reg[149]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_3
       (.I0(Q[33]),
        .I1(Q[1]),
        .O(\q_reg[149]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    jalrTarget_carry_i_4
       (.I0(Q[32]),
        .I1(Q[0]),
        .O(\q_reg[149]_1 [0]));
  LUT6 #(
    .INIT(64'h00000000FFF0EEEE)) 
    \q[105]_i_10 
       (.I0(\q[105]_i_19_n_0 ),
        .I1(\q[105]_i_20_n_0 ),
        .I2(\q[105]_i_21_n_0 ),
        .I3(\q[105]_i_22_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q_reg[36]_0 ),
        .O(\q[105]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[105]_i_11 
       (.I0(\q_reg[118] ),
        .I1(Q[0]),
        .I2(Q[32]),
        .O(\alu/result00_out [0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[105]_i_12 
       (.I0(Q[31]),
        .I1(\q_reg[118] ),
        .O(SrcBE__0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[105]_i_14 
       (.I0(Q[32]),
        .I1(Q[48]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[56]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[40]),
        .O(\q[105]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[105]_i_15 
       (.I0(Q[49]),
        .I1(Q[33]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[105]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \q[105]_i_16 
       (.I0(Q[41]),
        .I1(Q[4]),
        .I2(Q[57]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[3]),
        .O(\q[105]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[105]_i_17 
       (.I0(Q[53]),
        .I1(Q[37]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[105]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \q[105]_i_18 
       (.I0(Q[45]),
        .I1(Q[4]),
        .I2(Q[61]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[3]),
        .O(\q[105]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[105]_i_19 
       (.I0(Q[48]),
        .I1(Q[32]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[105]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \q[105]_i_20 
       (.I0(Q[40]),
        .I1(Q[4]),
        .I2(Q[56]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[3]),
        .O(\q[105]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[105]_i_21 
       (.I0(Q[52]),
        .I1(Q[36]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[105]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \q[105]_i_22 
       (.I0(Q[44]),
        .I1(Q[4]),
        .I2(Q[60]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[3]),
        .O(\q[105]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h3232320232020202)) 
    \q[105]_i_3 
       (.I0(\q_reg[108]_i_8_n_7 ),
        .I1(\q_reg[32] [3]),
        .I2(\q_reg[32] [2]),
        .I3(SrcBE),
        .I4(\q_reg[32] [1]),
        .I5(Q[32]),
        .O(\q_reg[14] ));
  LUT6 #(
    .INIT(64'hEFEFAFA0EFE0AFA0)) 
    \q[105]_i_5 
       (.I0(\q[105]_i_9_n_0 ),
        .I1(\q[108]_i_11_n_0 ),
        .I2(SrcBE),
        .I3(\q[105]_i_10_n_0 ),
        .I4(\q_reg[36]_0 ),
        .I5(\q[107]_i_10_n_0 ),
        .O(data6));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \q[105]_i_6 
       (.I0(\q_reg[135] ),
        .I1(\q_reg[37]_3 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q_reg[32] [2]),
        .I4(Q[32]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q_reg[13] ));
  LUT6 #(
    .INIT(64'hCAFA0ACAFAFA0A0A)) 
    \q[105]_i_7 
       (.I0(\alu/result00_out [0]),
        .I1(Q[63]),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE__0),
        .I4(\q_reg[177]_1 [3]),
        .I5(p_4_in),
        .O(\q_reg[177]_0 ));
  LUT6 #(
    .INIT(64'hFFD8F0F000D8F0F0)) 
    \q[105]_i_8 
       (.I0(Q[2]),
        .I1(\q[109]_i_11_n_0 ),
        .I2(\q[105]_i_14_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[107]_0 ),
        .I5(\q[107]_i_10_n_0 ),
        .O(\q_reg[37]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFF0EEEE)) 
    \q[105]_i_9 
       (.I0(\q[105]_i_15_n_0 ),
        .I1(\q[105]_i_16_n_0 ),
        .I2(\q[105]_i_17_n_0 ),
        .I3(\q[105]_i_18_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q_reg[36]_0 ),
        .O(\q[105]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0A2A000000000000)) 
    \q[106]_i_10 
       (.I0(\q_reg[135]_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[2]),
        .I4(Q[32]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[106]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[106]_i_11 
       (.I0(Q[33]),
        .I1(Q[49]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[57]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[41]),
        .O(\q[106]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \q[106]_i_2 
       (.I0(\q_reg[106]_2 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q[106]_i_8_n_0 ),
        .I3(\q_reg[106]_1 ),
        .I4(\q[107]_i_7_n_0 ),
        .I5(\q[106]_i_10_n_0 ),
        .O(\q_reg[12]_21 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[106]_i_3 
       (.I0(\q_reg[108]_i_8_n_6 ),
        .I1(\q_reg[36]_0 ),
        .I2(Q[33]),
        .I3(\q_reg[32] [3]),
        .I4(\q_reg[32] [1]),
        .I5(\q_reg[32] [2]),
        .O(\q_reg[147]_3 ));
  LUT6 #(
    .INIT(64'h0A000C000C000C00)) 
    \q[106]_i_5 
       (.I0(\q[107]_i_9_n_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[0]),
        .O(\q_reg[12] ));
  LUT6 #(
    .INIT(64'hFFD8F0F000D8F0F0)) 
    \q[106]_i_7 
       (.I0(Q[2]),
        .I1(\q[110]_i_10_n_0 ),
        .I2(\q[106]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[107]_0 ),
        .I5(\q[108]_i_11_n_0 ),
        .O(\q_reg[37]_0 ));
  LUT6 #(
    .INIT(64'h0A2A000000000000)) 
    \q[106]_i_8 
       (.I0(\q_reg[135] ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[2]),
        .I4(Q[33]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[106]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFAFA0EFE0AFA0)) 
    \q[107]_i_10 
       (.I0(\q[107]_i_11_n_0 ),
        .I1(\q[119]_i_14_n_0 ),
        .I2(\q_reg[37]_3 ),
        .I3(\q[107]_i_12_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[107]_i_13_n_0 ),
        .O(\q[107]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[107]_i_11 
       (.I0(Q[54]),
        .I1(Q[38]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[107]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[107]_i_12 
       (.I0(Q[50]),
        .I1(Q[34]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[107]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[107]_i_13 
       (.I0(Q[58]),
        .I1(Q[4]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[42]),
        .O(\q[107]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCFECCFEFCCECCCE)) 
    \q[107]_i_2 
       (.I0(\q[108]_i_6_n_0 ),
        .I1(\q[107]_i_6_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[108]_i_7_n_0 ),
        .I5(\q[107]_i_7_n_0 ),
        .O(\q_reg[12]_22 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[107]_i_3 
       (.I0(\q_reg[108]_i_8_n_5 ),
        .I1(\q_reg[37]_3 ),
        .I2(Q[34]),
        .I3(\q_reg[32] [3]),
        .I4(\q_reg[32] [1]),
        .I5(\q_reg[32] [2]),
        .O(\q_reg[148]_0 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[107]_i_5 
       (.I0(\q[107]_i_9_n_0 ),
        .I1(\q[108]_i_10_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[0]),
        .O(\q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h3700000000000000)) 
    \q[107]_i_6 
       (.I0(Q[1]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[2]),
        .I3(\q_reg[135]_0 ),
        .I4(Q[33]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[107]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \q[107]_i_7 
       (.I0(\q[113]_i_9_n_0 ),
        .I1(Q[2]),
        .I2(\q[109]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(\q[107]_i_10_n_0 ),
        .O(\q[107]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[107]_i_8 
       (.I0(Q[2]),
        .I1(\q_reg[106]_0 ),
        .O(\q_reg[37]_3 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \q[107]_i_9 
       (.I0(\q[113]_i_10_n_0 ),
        .I1(Q[2]),
        .I2(\q[109]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[107]_0 ),
        .I5(\q[107]_i_10_n_0 ),
        .O(\q[107]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \q[108]_i_10 
       (.I0(\q[114]_i_13_n_0 ),
        .I1(Q[2]),
        .I2(\q[110]_i_10_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[107]_0 ),
        .I5(\q[108]_i_11_n_0 ),
        .O(\q[108]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFAFA0EFE0AFA0)) 
    \q[108]_i_11 
       (.I0(\q[108]_i_17_n_0 ),
        .I1(\q[116]_i_17_n_0 ),
        .I2(\q_reg[37]_3 ),
        .I3(\q[108]_i_18_n_0 ),
        .I4(\q_reg[38]_0 ),
        .I5(\q[108]_i_19_n_0 ),
        .O(\q[108]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[108]_i_17 
       (.I0(Q[55]),
        .I1(Q[39]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[108]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0ACC0CCC)) 
    \q[108]_i_18 
       (.I0(Q[51]),
        .I1(Q[35]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[108]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[108]_i_19 
       (.I0(Q[59]),
        .I1(Q[4]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[43]),
        .O(\q[108]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[108]_i_2 
       (.I0(\q[108]_i_6_n_0 ),
        .I1(\q[109]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[109]_i_8_n_0 ),
        .I5(\q[108]_i_7_n_0 ),
        .O(\q_reg[12]_23 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[108]_i_3 
       (.I0(\q_reg[108]_i_8_n_4 ),
        .I1(\q_reg[38]_0 ),
        .I2(Q[35]),
        .I3(\q_reg[32] [3]),
        .I4(\q_reg[32] [1]),
        .I5(\q_reg[32] [2]),
        .O(\q_reg[149]_0 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[108]_i_5 
       (.I0(\q[108]_i_10_n_0 ),
        .I1(\q_reg[164]_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[0]),
        .O(\q_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h00008888C0888888)) 
    \q[108]_i_6 
       (.I0(Q[34]),
        .I1(\q[135]_i_15_n_0 ),
        .I2(Q[32]),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[2]),
        .O(\q[108]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \q[108]_i_7 
       (.I0(\q[114]_i_11_n_0 ),
        .I1(Q[2]),
        .I2(\q[110]_i_10_n_0 ),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(\q[108]_i_11_n_0 ),
        .O(\q[108]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[108]_i_9 
       (.I0(Q[3]),
        .I1(\q_reg[106]_0 ),
        .O(\q_reg[38]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[109]_i_10 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .O(\q_reg[39]_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[109]_i_11 
       (.I0(Q[36]),
        .I1(Q[52]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[60]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[44]),
        .O(\q[109]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[109]_i_3 
       (.I0(\q[109]_i_8_n_0 ),
        .I1(\q[110]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[110]_i_8_n_0 ),
        .I5(\q[109]_i_9_n_0 ),
        .O(\q_reg[12]_24 ));
  LUT6 #(
    .INIT(64'h000000AA00AA3CAA)) 
    \q[109]_i_4 
       (.I0(\q_reg[112]_i_10_n_7 ),
        .I1(\q_reg[39]_0 ),
        .I2(Q[36]),
        .I3(\q_reg[32] [3]),
        .I4(\q_reg[32] [1]),
        .I5(\q_reg[32] [2]),
        .O(\q_reg[150]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[109]_i_6 
       (.I0(\q[115]_i_12_n_0 ),
        .I1(\q[111]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[113]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[109]_i_11_n_0 ),
        .O(\q_reg[164]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[109]_i_8 
       (.I0(\q[115]_i_10_n_0 ),
        .I1(\q[111]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[113]_i_9_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[109]_i_11_n_0 ),
        .O(\q[109]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00008888C0888888)) 
    \q[109]_i_9 
       (.I0(Q[35]),
        .I1(\q[135]_i_15_n_0 ),
        .I2(Q[33]),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[2]),
        .O(\q[109]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[110]_i_10 
       (.I0(Q[37]),
        .I1(Q[53]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[61]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[45]),
        .O(\q[110]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[110]_i_2 
       (.I0(\q[111]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q_reg[165]_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[110]_i_7_n_0 ),
        .O(\q_reg[12]_2 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[110]_i_3 
       (.I0(\q[110]_i_8_n_0 ),
        .I1(\q_reg[147]_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[111]_i_8_n_0 ),
        .I5(\q[110]_i_9_n_0 ),
        .O(\q_reg[12]_25 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[110]_i_6 
       (.I0(\q[116]_i_16_n_0 ),
        .I1(\q[112]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[114]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[110]_i_10_n_0 ),
        .O(\q_reg[165]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q[110]_i_7 
       (.I0(\q_reg[106]_0 ),
        .I1(Q[5]),
        .I2(Q[37]),
        .O(\q[110]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[110]_i_8 
       (.I0(\q[114]_i_9_n_0 ),
        .I1(\q[112]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[114]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[110]_i_10_n_0 ),
        .O(\q[110]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[110]_i_9 
       (.I0(Q[32]),
        .I1(Q[36]),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[34]),
        .I4(\q_reg[36]_0 ),
        .I5(\q_reg[37]_3 ),
        .O(\q[110]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[111]_i_10 
       (.I0(Q[38]),
        .I1(Q[54]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[62]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[46]),
        .O(\q[111]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0ACAFFFF0ACA0000)) 
    \q[111]_i_11 
       (.I0(\q[111]_i_12_n_0 ),
        .I1(Q[52]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[113]_i_9_n_0 ),
        .O(\q[111]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[111]_i_12 
       (.I0(Q[60]),
        .I1(Q[4]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[44]),
        .O(\q[111]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[111]_i_2 
       (.I0(\q[112]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[111]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[111]_i_7_n_0 ),
        .O(\q_reg[12]_3 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[111]_i_3 
       (.I0(\q[111]_i_8_n_0 ),
        .I1(\q[112]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q_reg[36]_5 ),
        .I5(\q_reg[147]_0 ),
        .O(\q_reg[12]_26 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[111]_i_6 
       (.I0(\q[117]_i_13_n_0 ),
        .I1(\q[113]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[115]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[111]_i_10_n_0 ),
        .O(\q[111]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[111]_i_7 
       (.I0(\q_reg[106]_0 ),
        .I1(Q[6]),
        .I2(Q[38]),
        .O(\q[111]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[111]_i_8 
       (.I0(\q[111]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[115]_i_10_n_0 ),
        .I4(Q[2]),
        .I5(\q[111]_i_10_n_0 ),
        .O(\q[111]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[111]_i_9 
       (.I0(Q[33]),
        .I1(Q[37]),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[35]),
        .I4(\q_reg[36]_0 ),
        .I5(\q_reg[37]_3 ),
        .O(\q_reg[147]_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \q[112]_i_11 
       (.I0(Q[39]),
        .I1(Q[55]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[47]),
        .I4(Q[63]),
        .I5(\q_reg[39]_0 ),
        .O(\q[112]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0ACAFFFF0ACA0000)) 
    \q[112]_i_12 
       (.I0(\q[112]_i_17_n_0 ),
        .I1(Q[53]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[114]_i_11_n_0 ),
        .O(\q[112]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[112]_i_17 
       (.I0(Q[61]),
        .I1(Q[4]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[45]),
        .O(\q[112]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[112]_i_2 
       (.I0(\q[113]_i_8_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[112]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[112]_i_7_n_0 ),
        .O(\q_reg[12]_4 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[112]_i_3 
       (.I0(\q_reg[36]_5 ),
        .I1(\q[113]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[113]_i_6_n_0 ),
        .I5(\q[112]_i_9_n_0 ),
        .O(\q_reg[12]_27 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[112]_i_6 
       (.I0(\q[118]_i_15_n_0 ),
        .I1(\q[114]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[116]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[112]_i_11_n_0 ),
        .O(\q[112]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[112]_i_7 
       (.I0(\q_reg[106]_0 ),
        .I1(Q[7]),
        .I2(Q[39]),
        .O(\q[112]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[112]_i_8 
       (.I0(\q[112]_i_12_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[114]_i_9_n_0 ),
        .I4(Q[2]),
        .I5(\q[112]_i_11_n_0 ),
        .O(\q_reg[36]_5 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[112]_i_9 
       (.I0(Q[32]),
        .I1(\q_reg[37]_3 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[36]),
        .I4(\q_reg[36]_0 ),
        .I5(\q[114]_i_12_n_0 ),
        .O(\q[112]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[113]_i_10 
       (.I0(Q[48]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[56]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[40]),
        .O(\q[113]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[113]_i_2 
       (.I0(\q[113]_i_6_n_0 ),
        .I1(\q[114]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[114]_i_6_n_0 ),
        .I5(\q[113]_i_7_n_0 ),
        .O(\q_reg[12]_28 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[113]_i_5 
       (.I0(\q[113]_i_8_n_0 ),
        .I1(\q[114]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[0]),
        .O(\q_reg[12]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[113]_i_6 
       (.I0(\q[119]_i_11_n_0 ),
        .I1(\q[115]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[115]_i_9_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[113]_i_9_n_0 ),
        .O(\q[113]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[113]_i_7 
       (.I0(Q[33]),
        .I1(\q_reg[37]_3 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[37]),
        .I4(\q_reg[36]_0 ),
        .I5(\q[115]_i_11_n_0 ),
        .O(\q[113]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[113]_i_8 
       (.I0(\q[118]_i_16_n_0 ),
        .I1(\q[115]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[117]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[113]_i_10_n_0 ),
        .O(\q[113]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[113]_i_9 
       (.I0(Q[56]),
        .I1(Q[40]),
        .I2(Q[48]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[113]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[114]_i_10 
       (.I0(Q[61]),
        .I1(Q[45]),
        .I2(Q[53]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[114]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[114]_i_11 
       (.I0(Q[57]),
        .I1(Q[41]),
        .I2(Q[49]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[114]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FBF00000080)) 
    \q[114]_i_12 
       (.I0(Q[34]),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[38]),
        .O(\q[114]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[114]_i_13 
       (.I0(Q[49]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[57]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[41]),
        .O(\q[114]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[114]_i_2 
       (.I0(\q[114]_i_6_n_0 ),
        .I1(\q[115]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[115]_i_6_n_0 ),
        .I5(\q[114]_i_7_n_0 ),
        .O(\q_reg[12]_29 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[114]_i_5 
       (.I0(\q[114]_i_8_n_0 ),
        .I1(\q[115]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[0]),
        .O(\q_reg[12]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[114]_i_6 
       (.I0(\q[120]_i_10_n_0 ),
        .I1(\q[114]_i_9_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[114]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[114]_i_11_n_0 ),
        .O(\q[114]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \q[114]_i_7 
       (.I0(\q[114]_i_12_n_0 ),
        .I1(\q_reg[36]_0 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[36]),
        .I4(\q_reg[37]_3 ),
        .I5(\q[120]_i_11_n_0 ),
        .O(\q[114]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[114]_i_8 
       (.I0(\q[120]_i_16_n_0 ),
        .I1(\q[116]_i_16_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[118]_i_15_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[114]_i_13_n_0 ),
        .O(\q[114]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[114]_i_9 
       (.I0(Q[59]),
        .I1(Q[43]),
        .I2(Q[51]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[114]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[115]_i_10 
       (.I0(Q[58]),
        .I1(Q[42]),
        .I2(Q[50]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[115]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FBF00000080)) 
    \q[115]_i_11 
       (.I0(Q[35]),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[39]),
        .O(\q[115]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[115]_i_12 
       (.I0(Q[50]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[58]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[42]),
        .O(\q[115]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[115]_i_2 
       (.I0(\q[115]_i_6_n_0 ),
        .I1(\q[116]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[116]_i_6_n_0 ),
        .I5(\q[115]_i_7_n_0 ),
        .O(\q_reg[12]_30 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[115]_i_5 
       (.I0(\q[115]_i_8_n_0 ),
        .I1(\q[116]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[118] ),
        .I5(Q[0]),
        .O(\q_reg[12]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[115]_i_6 
       (.I0(\q[121]_i_11_n_0 ),
        .I1(\q[115]_i_9_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[119]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[115]_i_10_n_0 ),
        .O(\q[115]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \q[115]_i_7 
       (.I0(\q[115]_i_11_n_0 ),
        .I1(\q_reg[36]_0 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[37]),
        .I4(\q_reg[37]_3 ),
        .I5(\q[121]_i_12_n_0 ),
        .O(\q[115]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[115]_i_8 
       (.I0(\q[121]_i_10_n_0 ),
        .I1(\q[117]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[118]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[115]_i_12_n_0 ),
        .O(\q[115]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[115]_i_9 
       (.I0(Q[60]),
        .I1(Q[44]),
        .I2(Q[52]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[115]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0ACAFFFF0ACA0000)) 
    \q[116]_i_10 
       (.I0(\q[116]_i_17_n_0 ),
        .I1(Q[55]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[114]_i_9_n_0 ),
        .O(\q[116]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[116]_i_11 
       (.I0(Q[36]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[40]),
        .I3(Q[32]),
        .I4(\q_reg[38]_0 ),
        .I5(\q_reg[39]_0 ),
        .O(\q[116]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[116]_i_16 
       (.I0(Q[51]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[59]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[43]),
        .O(\q[116]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hCAAA)) 
    \q[116]_i_17 
       (.I0(Q[47]),
        .I1(Q[63]),
        .I2(Q[4]),
        .I3(\q_reg[107]_0 ),
        .O(\q[116]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[116]_i_2 
       (.I0(\q[116]_i_6_n_0 ),
        .I1(\q[117]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[117]_i_6_n_0 ),
        .I5(\q[116]_i_7_n_0 ),
        .O(\q_reg[12]_31 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[116]_i_5 
       (.I0(\q[116]_i_9_n_0 ),
        .I1(\q[117]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[118] ),
        .I5(Q[0]),
        .O(\q_reg[12]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[116]_i_6 
       (.I0(\q[118]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[116]_i_10_n_0 ),
        .O(\q[116]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[116]_i_7 
       (.I0(\q[116]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[118]_i_12_n_0 ),
        .O(\q[116]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[116]_i_9 
       (.I0(\q[122]_i_10_n_0 ),
        .I1(\q[118]_i_15_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[120]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[116]_i_16_n_0 ),
        .O(\q[116]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[117]_i_10 
       (.I0(Q[48]),
        .I1(Q[56]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[115]_i_9_n_0 ),
        .O(\q[117]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[117]_i_11 
       (.I0(Q[37]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[41]),
        .I3(Q[33]),
        .I4(\q_reg[38]_0 ),
        .I5(\q_reg[39]_0 ),
        .O(\q[117]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[117]_i_12 
       (.I0(Q[39]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[43]),
        .I3(Q[35]),
        .I4(\q_reg[38]_0 ),
        .I5(\q_reg[39]_0 ),
        .O(\q[117]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[117]_i_13 
       (.I0(Q[52]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[60]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[44]),
        .O(\q[117]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[117]_i_2 
       (.I0(\q[117]_i_6_n_0 ),
        .I1(\q[118]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[118]_i_6_n_0 ),
        .I5(\q[117]_i_7_n_0 ),
        .O(\q_reg[12]_32 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[117]_i_5 
       (.I0(\q[117]_i_8_n_0 ),
        .I1(\q[118]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[118] ),
        .I5(Q[0]),
        .O(\q_reg[12]_10 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[117]_i_6 
       (.I0(\q[117]_i_9_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[117]_i_10_n_0 ),
        .O(\q[117]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[117]_i_7 
       (.I0(\q[117]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[117]_i_12_n_0 ),
        .O(\q[117]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[117]_i_8 
       (.I0(\q[123]_i_10_n_0 ),
        .I1(\q[118]_i_16_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[121]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[117]_i_13_n_0 ),
        .O(\q[117]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[117]_i_9 
       (.I0(Q[50]),
        .I1(Q[58]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[119]_i_11_n_0 ),
        .O(\q[117]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[118]_i_10 
       (.I0(Q[51]),
        .I1(Q[59]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[120]_i_10_n_0 ),
        .O(\q[118]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[118]_i_11 
       (.I0(Q[49]),
        .I1(Q[57]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[114]_i_10_n_0 ),
        .O(\q[118]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \q[118]_i_12 
       (.I0(Q[38]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[42]),
        .I3(Q[34]),
        .I4(\q_reg[38]_0 ),
        .I5(\q_reg[39]_0 ),
        .O(\q[118]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00CAFFFF00CA0000)) 
    \q[118]_i_13 
       (.I0(Q[40]),
        .I1(Q[32]),
        .I2(\q_reg[38]_0 ),
        .I3(\q_reg[39]_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[124]_i_13_n_0 ),
        .O(\q[118]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[118]_i_14 
       (.I0(\q[124]_i_11_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[120]_i_16_n_0 ),
        .O(\q[118]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[118]_i_15 
       (.I0(Q[53]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[61]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[45]),
        .O(\q[118]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \q[118]_i_16 
       (.I0(Q[54]),
        .I1(Q[63]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[62]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[46]),
        .O(\q[118]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[118]_i_2 
       (.I0(\q[118]_i_6_n_0 ),
        .I1(\q[119]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[119]_i_6_n_0 ),
        .I5(\q[118]_i_7_n_0 ),
        .O(\q_reg[12]_33 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[118]_i_5 
       (.I0(\q[118]_i_8_n_0 ),
        .I1(\q[118]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[118] ),
        .I5(Q[0]),
        .O(\q_reg[12]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[118]_i_6 
       (.I0(\q[118]_i_10_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[118]_i_11_n_0 ),
        .O(\q[118]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[118]_i_7 
       (.I0(\q[118]_i_12_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[118]_i_13_n_0 ),
        .O(\q[118]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[118]_i_8 
       (.I0(\q[118]_i_14_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[122]_i_10_n_0 ),
        .I4(Q[2]),
        .I5(\q[118]_i_15_n_0 ),
        .O(\q[118]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[118]_i_9 
       (.I0(\q[119]_i_8_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[123]_i_10_n_0 ),
        .I4(Q[2]),
        .I5(\q[118]_i_16_n_0 ),
        .O(\q[118]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[119]_i_10 
       (.I0(\q[123]_i_10_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[119]_i_13_n_0 ),
        .I4(Q[3]),
        .I5(\q[119]_i_14_n_0 ),
        .O(\q[119]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[119]_i_11 
       (.I0(Q[62]),
        .I1(Q[46]),
        .I2(Q[54]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[119]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \q[119]_i_12 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[39]),
        .O(\q[119]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hCAAA)) 
    \q[119]_i_13 
       (.I0(Q[54]),
        .I1(Q[63]),
        .I2(Q[4]),
        .I3(\q_reg[106]_0 ),
        .O(\q[119]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[119]_i_14 
       (.I0(Q[62]),
        .I1(Q[4]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[46]),
        .O(\q[119]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[119]_i_2 
       (.I0(\q[119]_i_6_n_0 ),
        .I1(\q[120]_i_7_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[120]_i_6_n_0 ),
        .I5(\q[119]_i_7_n_0 ),
        .O(\q_reg[12]_34 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \q[119]_i_5 
       (.I0(\q[119]_i_8_n_0 ),
        .I1(\q_reg[36]_0 ),
        .I2(\q[119]_i_10_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q[120]_i_9_n_0 ),
        .I5(\q_reg[133] ),
        .O(\q_reg[37]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[119]_i_6 
       (.I0(\q[125]_i_13_n_0 ),
        .I1(\q[121]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[123]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[119]_i_11_n_0 ),
        .O(\q[119]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[119]_i_7 
       (.I0(\q[119]_i_12_n_0 ),
        .I1(\q[123]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[121]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[125]_i_14_n_0 ),
        .O(\q[119]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[119]_i_8 
       (.I0(\q[125]_i_10_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[121]_i_10_n_0 ),
        .O(\q[119]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[119]_i_9 
       (.I0(Q[1]),
        .I1(\q_reg[106]_0 ),
        .O(\q_reg[36]_0 ));
  LUT6 #(
    .INIT(64'h00CCAAAAF0AAAAAA)) 
    \q[120]_i_10 
       (.I0(Q[47]),
        .I1(Q[63]),
        .I2(Q[55]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .I5(Q[4]),
        .O(\q[120]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[120]_i_11 
       (.I0(Q[40]),
        .I1(Q[32]),
        .I2(Q[3]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[4]),
        .O(\q[120]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[120]_i_16 
       (.I0(Q[55]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[47]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[120]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[120]_i_2 
       (.I0(\q[120]_i_6_n_0 ),
        .I1(\q[121]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[121]_i_8_n_0 ),
        .I5(\q[120]_i_7_n_0 ),
        .O(\q_reg[12]_35 ));
  LUT6 #(
    .INIT(64'h0C000A000A000A00)) 
    \q[120]_i_5 
       (.I0(\q[120]_i_9_n_0 ),
        .I1(\q[121]_i_6_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(\q_reg[32] [4]),
        .I4(\q_reg[118] ),
        .I5(Q[0]),
        .O(\q_reg[12]_12 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_6 
       (.I0(\q[126]_i_13_n_0 ),
        .I1(\q[122]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[124]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[120]_i_10_n_0 ),
        .O(\q[120]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_7 
       (.I0(\q[120]_i_11_n_0 ),
        .I1(\q[124]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[122]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[126]_i_14_n_0 ),
        .O(\q[120]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_9 
       (.I0(\q[126]_i_10_n_0 ),
        .I1(\q[122]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[124]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[120]_i_16_n_0 ),
        .O(\q[120]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[121]_i_10 
       (.I0(Q[56]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[48]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[121]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[121]_i_11 
       (.I0(Q[48]),
        .I1(Q[56]),
        .I2(Q[3]),
        .I3(\q_reg[107]_0 ),
        .I4(Q[4]),
        .O(\q[121]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[121]_i_12 
       (.I0(Q[41]),
        .I1(Q[33]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[121]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[121]_i_2 
       (.I0(\q[122]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[121]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[121]_i_7_n_0 ),
        .O(\q_reg[12]_13 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[121]_i_3 
       (.I0(\q[121]_i_8_n_0 ),
        .I1(\q[122]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[122]_i_8_n_0 ),
        .I5(\q[121]_i_9_n_0 ),
        .O(\q_reg[12]_36 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_6 
       (.I0(\q[127]_i_10_n_0 ),
        .I1(\q[123]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[125]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[121]_i_10_n_0 ),
        .O(\q[121]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[121]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[16]),
        .I2(Q[48]),
        .O(\q[121]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_8 
       (.I0(\q[127]_i_11_n_0 ),
        .I1(\q[123]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[125]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[121]_i_11_n_0 ),
        .O(\q[121]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_9 
       (.I0(\q[121]_i_12_n_0 ),
        .I1(\q[125]_i_14_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[123]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[127]_i_12_n_0 ),
        .O(\q[121]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[122]_i_10 
       (.I0(Q[57]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[49]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[122]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[122]_i_11 
       (.I0(Q[49]),
        .I1(Q[57]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[122]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[122]_i_12 
       (.I0(Q[42]),
        .I1(Q[34]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[122]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[122]_i_2 
       (.I0(\q[123]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[122]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[122]_i_7_n_0 ),
        .O(\q_reg[12]_14 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[122]_i_3 
       (.I0(\q[122]_i_8_n_0 ),
        .I1(\q[123]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[123]_i_8_n_0 ),
        .I5(\q[122]_i_9_n_0 ),
        .O(\q_reg[12]_37 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_6 
       (.I0(\q[128]_i_14_n_0 ),
        .I1(\q[124]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[126]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[122]_i_10_n_0 ),
        .O(\q[122]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[122]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[17]),
        .I2(Q[49]),
        .O(\q[122]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_8 
       (.I0(\q[128]_i_15_n_0 ),
        .I1(\q[124]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[126]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[122]_i_11_n_0 ),
        .O(\q[122]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_9 
       (.I0(\q[122]_i_12_n_0 ),
        .I1(\q[126]_i_14_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[124]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[128]_i_16_n_0 ),
        .O(\q[122]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[123]_i_10 
       (.I0(Q[58]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[50]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[123]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[123]_i_11 
       (.I0(Q[50]),
        .I1(Q[58]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[123]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[123]_i_12 
       (.I0(Q[43]),
        .I1(Q[35]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[123]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[123]_i_2 
       (.I0(\q[124]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[123]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[123]_i_7_n_0 ),
        .O(\q_reg[12]_15 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[123]_i_3 
       (.I0(\q[123]_i_8_n_0 ),
        .I1(\q[124]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[124]_i_8_n_0 ),
        .I5(\q[123]_i_9_n_0 ),
        .O(\q_reg[12]_38 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[123]_i_6 
       (.I0(\q[129]_i_13_n_0 ),
        .I1(\q[125]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[127]_i_10_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[123]_i_10_n_0 ),
        .O(\q[123]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[123]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[18]),
        .I2(Q[50]),
        .O(\q[123]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[123]_i_8 
       (.I0(\q[125]_i_12_n_0 ),
        .I1(\q[125]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[127]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[123]_i_11_n_0 ),
        .O(\q[123]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[123]_i_9 
       (.I0(\q[123]_i_12_n_0 ),
        .I1(\q[127]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[125]_i_14_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[129]_i_15_n_0 ),
        .O(\q[123]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[124]_i_11 
       (.I0(Q[59]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[51]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[124]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[124]_i_12 
       (.I0(Q[51]),
        .I1(Q[59]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[124]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[124]_i_13 
       (.I0(Q[44]),
        .I1(Q[36]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[124]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[124]_i_2 
       (.I0(\q[125]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[124]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[124]_i_7_n_0 ),
        .O(\q_reg[12]_16 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[124]_i_3 
       (.I0(\q[124]_i_8_n_0 ),
        .I1(\q[125]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[125]_i_8_n_0 ),
        .I5(\q[124]_i_9_n_0 ),
        .O(\q_reg[12]_39 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[124]_i_6 
       (.I0(\q[128]_i_12_n_0 ),
        .I1(\q[126]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_14_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[124]_i_11_n_0 ),
        .O(\q[124]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[124]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[19]),
        .I2(Q[51]),
        .O(\q[124]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[124]_i_8 
       (.I0(\q[126]_i_12_n_0 ),
        .I1(\q[126]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_15_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[124]_i_12_n_0 ),
        .O(\q[124]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[124]_i_9 
       (.I0(\q[124]_i_13_n_0 ),
        .I1(\q[128]_i_16_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[126]_i_14_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[128]_i_17_n_0 ),
        .O(\q[124]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[125]_i_10 
       (.I0(Q[60]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[52]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[125]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \q[125]_i_11 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[58]),
        .O(\q[125]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h3700)) 
    \q[125]_i_12 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[56]),
        .O(\q[125]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[125]_i_13 
       (.I0(Q[52]),
        .I1(Q[60]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[125]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[125]_i_14 
       (.I0(Q[45]),
        .I1(Q[37]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[125]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[125]_i_2 
       (.I0(\q[126]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[125]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[125]_i_7_n_0 ),
        .O(\q_reg[12]_17 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[125]_i_3 
       (.I0(\q[125]_i_8_n_0 ),
        .I1(\q[126]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[126]_i_8_n_0 ),
        .I5(\q[125]_i_9_n_0 ),
        .O(\q_reg[12]_40 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[125]_i_6 
       (.I0(\q[129]_i_11_n_0 ),
        .I1(\q[127]_i_10_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[129]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[125]_i_10_n_0 ),
        .O(\q[125]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[125]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[20]),
        .I2(Q[52]),
        .O(\q[125]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[125]_i_8 
       (.I0(\q[125]_i_11_n_0 ),
        .I1(\q[127]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[125]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[125]_i_13_n_0 ),
        .O(\q[125]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[125]_i_9 
       (.I0(\q[125]_i_14_n_0 ),
        .I1(\q[129]_i_15_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[127]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[129]_i_16_n_0 ),
        .O(\q[125]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[126]_i_10 
       (.I0(Q[61]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[53]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[126]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \q[126]_i_11 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[59]),
        .O(\q[126]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \q[126]_i_12 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[57]),
        .O(\q[126]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[126]_i_13 
       (.I0(Q[53]),
        .I1(Q[61]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[126]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[126]_i_14 
       (.I0(Q[46]),
        .I1(Q[38]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[126]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[126]_i_2 
       (.I0(\q[127]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[126]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[126]_i_7_n_0 ),
        .O(\q_reg[12]_18 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[126]_i_3 
       (.I0(\q[126]_i_8_n_0 ),
        .I1(\q[127]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[127]_i_8_n_0 ),
        .I5(\q[126]_i_9_n_0 ),
        .O(\q_reg[12]_41 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_6 
       (.I0(\q[128]_i_13_n_0 ),
        .I1(\q[128]_i_14_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[126]_i_10_n_0 ),
        .O(\q[126]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[126]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[21]),
        .I2(Q[53]),
        .O(\q[126]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_8 
       (.I0(\q[126]_i_11_n_0 ),
        .I1(\q[128]_i_15_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[126]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[126]_i_13_n_0 ),
        .O(\q[126]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_9 
       (.I0(\q[126]_i_14_n_0 ),
        .I1(\q[128]_i_17_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[132]_i_13_n_0 ),
        .O(\q[126]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00F00BF80BF80)) 
    \q[127]_i_10 
       (.I0(Q[62]),
        .I1(Q[3]),
        .I2(\q_reg[107]_0 ),
        .I3(Q[54]),
        .I4(Q[63]),
        .I5(Q[4]),
        .O(\q[127]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[127]_i_11 
       (.I0(Q[54]),
        .I1(Q[62]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[127]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[127]_i_12 
       (.I0(Q[47]),
        .I1(Q[39]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[127]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[127]_i_2 
       (.I0(\q[128]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[127]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[127]_i_7_n_0 ),
        .O(\q_reg[12]_19 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[127]_i_3 
       (.I0(\q[127]_i_8_n_0 ),
        .I1(\q[128]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[128]_i_8_n_0 ),
        .I5(\q[127]_i_9_n_0 ),
        .O(\q_reg[12]_42 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[127]_i_6 
       (.I0(\q[129]_i_12_n_0 ),
        .I1(\q[129]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[129]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[127]_i_10_n_0 ),
        .O(\q[127]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[127]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[22]),
        .I2(Q[54]),
        .O(\q[127]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \q[127]_i_8 
       (.I0(\q[129]_i_14_n_0 ),
        .I1(\q_reg[36]_0 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[58]),
        .I4(\q_reg[37]_3 ),
        .I5(\q[127]_i_11_n_0 ),
        .O(\q[127]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[127]_i_9 
       (.I0(\q[127]_i_12_n_0 ),
        .I1(\q[129]_i_16_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[129]_i_15_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[133]_i_12_n_0 ),
        .O(\q[127]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[128]_i_11 
       (.I0(Q[61]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[128]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[128]_i_12 
       (.I0(Q[57]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[128]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[128]_i_13 
       (.I0(Q[59]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[128]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[128]_i_14 
       (.I0(Q[55]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[128]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00AACAAA)) 
    \q[128]_i_15 
       (.I0(Q[55]),
        .I1(Q[63]),
        .I2(Q[3]),
        .I3(\q_reg[106]_0 ),
        .I4(Q[4]),
        .O(\q[128]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[128]_i_16 
       (.I0(Q[32]),
        .I1(Q[48]),
        .I2(Q[40]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[128]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[128]_i_17 
       (.I0(Q[34]),
        .I1(Q[50]),
        .I2(Q[42]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[128]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[128]_i_2 
       (.I0(\q[129]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[128]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[128]_i_7_n_0 ),
        .O(\q_reg[12]_20 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[128]_i_3 
       (.I0(\q[128]_i_8_n_0 ),
        .I1(\q[129]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[129]_i_8_n_0 ),
        .I5(\q[128]_i_9_n_0 ),
        .O(\q_reg[12]_43 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[128]_i_6 
       (.I0(\q[128]_i_11_n_0 ),
        .I1(\q[128]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_13_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[128]_i_14_n_0 ),
        .O(\q[128]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[128]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[23]),
        .I2(Q[55]),
        .O(\q[128]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \q[128]_i_8 
       (.I0(\q[130]_i_11_n_0 ),
        .I1(\q_reg[36]_0 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[59]),
        .I4(\q_reg[37]_3 ),
        .I5(\q[128]_i_15_n_0 ),
        .O(\q[128]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[128]_i_9 
       (.I0(\q[128]_i_16_n_0 ),
        .I1(\q[132]_i_13_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[128]_i_17_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[134]_i_11_n_0 ),
        .O(\q[128]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[129]_i_10 
       (.I0(Q[62]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[129]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[129]_i_11 
       (.I0(Q[58]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[129]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[129]_i_12 
       (.I0(Q[60]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[129]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0E2AAAA)) 
    \q[129]_i_13 
       (.I0(Q[56]),
        .I1(Q[4]),
        .I2(Q[63]),
        .I3(Q[3]),
        .I4(\q_reg[107]_0 ),
        .O(\q[129]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FBF00000080)) 
    \q[129]_i_14 
       (.I0(Q[60]),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[56]),
        .O(\q[129]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[129]_i_15 
       (.I0(Q[33]),
        .I1(Q[49]),
        .I2(Q[41]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[129]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[129]_i_16 
       (.I0(Q[35]),
        .I1(Q[51]),
        .I2(Q[43]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[129]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[129]_i_2 
       (.I0(\q[130]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[129]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[129]_i_7_n_0 ),
        .O(\q_reg[36]_1 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[129]_i_3 
       (.I0(\q[129]_i_8_n_0 ),
        .I1(\q[130]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[130]_i_8_n_0 ),
        .I5(\q[129]_i_9_n_0 ),
        .O(\q_reg[12]_44 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[129]_i_6 
       (.I0(\q[129]_i_10_n_0 ),
        .I1(\q[129]_i_11_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[129]_i_12_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[129]_i_13_n_0 ),
        .O(\q[129]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[129]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[24]),
        .I2(Q[56]),
        .O(\q[129]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[129]_i_8 
       (.I0(Q[62]),
        .I1(\q_reg[37]_3 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[58]),
        .I4(\q_reg[36]_0 ),
        .I5(\q[129]_i_14_n_0 ),
        .O(\q[129]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[129]_i_9 
       (.I0(\q[129]_i_15_n_0 ),
        .I1(\q[133]_i_12_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[129]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[135]_i_16_n_0 ),
        .O(\q[129]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[130]_i_10 
       (.I0(Q[61]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[57]),
        .I3(\q_reg[39]_0 ),
        .I4(Q[63]),
        .I5(\q_reg[38]_0 ),
        .O(\q[130]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0FBF00000080)) 
    \q[130]_i_11 
       (.I0(Q[61]),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[57]),
        .O(\q[130]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[130]_i_12 
       (.I0(\q[128]_i_17_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[134]_i_11_n_0 ),
        .O(\q[130]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[130]_i_2 
       (.I0(\q[131]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[130]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[130]_i_7_n_0 ),
        .O(\q_reg[36]_2 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \q[130]_i_3 
       (.I0(\q[130]_i_8_n_0 ),
        .I1(\q[131]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[131]_i_9_n_0 ),
        .I5(\q[130]_i_9_n_0 ),
        .O(\q_reg[12]_45 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[130]_i_6 
       (.I0(\q[132]_i_12_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[130]_i_10_n_0 ),
        .O(\q[130]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[130]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[25]),
        .I2(Q[57]),
        .O(\q[130]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[130]_i_8 
       (.I0(Q[63]),
        .I1(\q_reg[37]_3 ),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[59]),
        .I4(\q_reg[36]_0 ),
        .I5(\q[130]_i_11_n_0 ),
        .O(\q[130]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[130]_i_9 
       (.I0(\q[130]_i_12_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[132]_i_13_n_0 ),
        .I4(Q[2]),
        .I5(\q[136]_i_23_n_0 ),
        .O(\q[130]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \q[131]_i_10 
       (.I0(Q[62]),
        .I1(\q_reg[37]_3 ),
        .I2(Q[58]),
        .I3(\q_reg[39]_0 ),
        .I4(Q[63]),
        .I5(\q_reg[38]_0 ),
        .O(\q[131]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[131]_i_11 
       (.I0(\q[129]_i_16_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[135]_i_16_n_0 ),
        .O(\q[131]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[131]_i_2 
       (.I0(\q[132]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[131]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[131]_i_7_n_0 ),
        .O(\q_reg[36]_3 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[131]_i_3 
       (.I0(\q[131]_i_8_n_0 ),
        .I1(\q[132]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[132]_i_9_n_0 ),
        .I5(\q[131]_i_9_n_0 ),
        .O(\q_reg[12]_46 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[131]_i_6 
       (.I0(\q[133]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[131]_i_10_n_0 ),
        .O(\q[131]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[131]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[26]),
        .I2(Q[58]),
        .O(\q[131]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \q[131]_i_8 
       (.I0(\q[131]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[133]_i_12_n_0 ),
        .I4(Q[2]),
        .I5(\q[136]_i_19_n_0 ),
        .O(\q[131]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[131]_i_9 
       (.I0(Q[62]),
        .I1(Q[58]),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[60]),
        .I4(\q_reg[36]_0 ),
        .I5(\q_reg[37]_3 ),
        .O(\q[131]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE02AAAAAAAA)) 
    \q[132]_i_11 
       (.I0(Q[61]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[63]),
        .I4(Q[2]),
        .I5(\q_reg[107]_0 ),
        .O(\q[132]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE02AAAAAAAA)) 
    \q[132]_i_12 
       (.I0(Q[59]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[63]),
        .I4(Q[2]),
        .I5(\q_reg[107]_0 ),
        .O(\q[132]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[132]_i_13 
       (.I0(Q[36]),
        .I1(Q[52]),
        .I2(Q[44]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[132]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[132]_i_2 
       (.I0(\q[133]_i_6_n_0 ),
        .I1(\q_reg[133] ),
        .I2(\q[132]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[132]_i_7_n_0 ),
        .O(\q_reg[36]_4 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[132]_i_3 
       (.I0(\q[132]_i_8_n_0 ),
        .I1(\q[133]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[133]_i_9_n_0 ),
        .I5(\q[132]_i_9_n_0 ),
        .O(\q_reg[12]_47 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[132]_i_6 
       (.I0(\q[132]_i_11_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[132]_i_12_n_0 ),
        .O(\q[132]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[132]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[27]),
        .I2(Q[59]),
        .O(\q[132]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[132]_i_8 
       (.I0(\q[132]_i_13_n_0 ),
        .I1(\q[136]_i_23_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[134]_i_11_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_21_n_0 ),
        .O(\q[132]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \q[132]_i_9 
       (.I0(Q[63]),
        .I1(Q[59]),
        .I2(\q[135]_i_15_n_0 ),
        .I3(Q[61]),
        .I4(\q_reg[36]_0 ),
        .I5(\q_reg[37]_3 ),
        .O(\q[132]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE02AAAAAAAA)) 
    \q[133]_i_10 
       (.I0(Q[62]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[63]),
        .I4(Q[2]),
        .I5(\q_reg[107]_0 ),
        .O(\q[133]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FE02AAAAAAAA)) 
    \q[133]_i_11 
       (.I0(Q[60]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[63]),
        .I4(Q[2]),
        .I5(\q_reg[107]_0 ),
        .O(\q[133]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[133]_i_12 
       (.I0(Q[37]),
        .I1(Q[53]),
        .I2(Q[45]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[133]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[133]_i_2 
       (.I0(\q_reg[175]_1 ),
        .I1(\q_reg[133] ),
        .I2(\q[133]_i_6_n_0 ),
        .I3(\q_reg[133]_0 ),
        .I4(\q_reg[133]_1 ),
        .I5(\q[133]_i_7_n_0 ),
        .O(\q_reg[175]_0 ));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \q[133]_i_3 
       (.I0(\q[133]_i_8_n_0 ),
        .I1(\q[134]_i_9_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[134]_i_10_n_0 ),
        .I5(\q[133]_i_9_n_0 ),
        .O(\q_reg[12]_48 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \q[133]_i_6 
       (.I0(\q[133]_i_10_n_0 ),
        .I1(Q[1]),
        .I2(\q_reg[107]_0 ),
        .I3(\q[133]_i_11_n_0 ),
        .O(\q[133]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[133]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[28]),
        .I2(Q[60]),
        .O(\q[133]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[133]_i_8 
       (.I0(\q[133]_i_12_n_0 ),
        .I1(\q[136]_i_19_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[135]_i_16_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_17_n_0 ),
        .O(\q[133]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00008888C0888888)) 
    \q[133]_i_9 
       (.I0(Q[60]),
        .I1(\q[135]_i_15_n_0 ),
        .I2(Q[62]),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[2]),
        .O(\q[133]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00008888C0888888)) 
    \q[134]_i_10 
       (.I0(Q[61]),
        .I1(\q[135]_i_15_n_0 ),
        .I2(Q[63]),
        .I3(Q[1]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[2]),
        .O(\q[134]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[134]_i_11 
       (.I0(Q[38]),
        .I1(Q[54]),
        .I2(Q[46]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[134]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFFECCFECFCECCCE)) 
    \q[134]_i_3 
       (.I0(\q[135]_i_13_n_0 ),
        .I1(\q[134]_i_8_n_0 ),
        .I2(\q_reg[32] [1]),
        .I3(SrcBE),
        .I4(\q[134]_i_9_n_0 ),
        .I5(\q[134]_i_10_n_0 ),
        .O(\q_reg[12]_49 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[134]_i_6 
       (.I0(\q_reg[36]_0 ),
        .I1(Q[61]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(Q[63]),
        .I5(\q_reg[37]_3 ),
        .O(\q_reg[175]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[134]_i_7 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[29]),
        .I2(Q[61]),
        .O(\q_reg[11]_rep__0_1 ));
  LUT6 #(
    .INIT(64'h3700000000000000)) 
    \q[134]_i_8 
       (.I0(Q[1]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[2]),
        .I3(\q_reg[106]_1 ),
        .I4(Q[62]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[134]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[134]_i_9 
       (.I0(\q[134]_i_11_n_0 ),
        .I1(\q[136]_i_21_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[136]_i_23_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_24_n_0 ),
        .O(\q[134]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0A2A000000000000)) 
    \q[135]_i_11 
       (.I0(\q_reg[106]_2 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[2]),
        .I4(Q[62]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[135]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[135]_i_13 
       (.I0(\q[135]_i_16_n_0 ),
        .I1(\q[136]_i_17_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[136]_i_19_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_20_n_0 ),
        .O(\q[135]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0A2A000000000000)) 
    \q[135]_i_14 
       (.I0(\q_reg[106]_1 ),
        .I1(Q[1]),
        .I2(\q_reg[106]_0 ),
        .I3(Q[2]),
        .I4(Q[63]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[135]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \q[135]_i_15 
       (.I0(Q[3]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[4]),
        .O(\q[135]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF0CCCCCC)) 
    \q[135]_i_16 
       (.I0(Q[39]),
        .I1(Q[55]),
        .I2(Q[47]),
        .I3(Q[3]),
        .I4(\q_reg[106]_0 ),
        .I5(Q[4]),
        .O(\q[135]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \q[135]_i_3 
       (.I0(\q_reg[135] ),
        .I1(\q[136]_i_9_n_0 ),
        .I2(\q[135]_i_11_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q[135]_i_13_n_0 ),
        .I5(\q[135]_i_14_n_0 ),
        .O(\q_reg[11]_rep__1 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \q[135]_i_7 
       (.I0(\q_reg[36]_0 ),
        .I1(Q[62]),
        .I2(\q_reg[39]_0 ),
        .I3(\q_reg[38]_0 ),
        .I4(Q[63]),
        .I5(\q_reg[37]_3 ),
        .O(\q_reg[176]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \q[135]_i_9 
       (.I0(\q_reg[107]_0 ),
        .I1(Q[30]),
        .I2(Q[62]),
        .O(\q_reg[11]_rep__0_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \q[136]_i_10 
       (.I0(Q[4]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[3]),
        .I3(Q[63]),
        .O(\q[136]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[136]_i_11 
       (.I0(Q[0]),
        .I1(\q_reg[106]_0 ),
        .O(SrcBE));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \q[136]_i_12 
       (.I0(Q[1]),
        .I1(\q_reg[106]_0 ),
        .I2(Q[2]),
        .O(\q[136]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_17 
       (.I0(Q[59]),
        .I1(Q[43]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[35]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[51]),
        .O(\q[136]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_18 
       (.I0(Q[63]),
        .I1(Q[47]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[39]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[55]),
        .O(\q[136]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_19 
       (.I0(Q[57]),
        .I1(Q[41]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[33]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[49]),
        .O(\q[136]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_20 
       (.I0(Q[61]),
        .I1(Q[45]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[37]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[53]),
        .O(\q[136]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_21 
       (.I0(Q[58]),
        .I1(Q[42]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[34]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[50]),
        .O(\q[136]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_22 
       (.I0(Q[62]),
        .I1(Q[46]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[38]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[54]),
        .O(\q[136]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_23 
       (.I0(Q[56]),
        .I1(Q[40]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[32]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[48]),
        .O(\q[136]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[136]_i_24 
       (.I0(Q[60]),
        .I1(Q[44]),
        .I2(\q_reg[38]_0 ),
        .I3(Q[36]),
        .I4(\q_reg[39]_0 ),
        .I5(Q[52]),
        .O(\q[136]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \q[136]_i_25 
       (.I0(Q[63]),
        .I1(\q_reg[32] [1]),
        .I2(Q[31]),
        .I3(\q_reg[118] ),
        .O(\q[136]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA0000CCAA)) 
    \q[136]_i_4 
       (.I0(\q[136]_i_8_n_0 ),
        .I1(\q[136]_i_9_n_0 ),
        .I2(\q[136]_i_10_n_0 ),
        .I3(SrcBE),
        .I4(\q_reg[32] [1]),
        .I5(\q[136]_i_12_n_0 ),
        .O(\q_reg[12]_50 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \q[136]_i_8 
       (.I0(\q[136]_i_17_n_0 ),
        .I1(\q[136]_i_18_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[136]_i_19_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_20_n_0 ),
        .O(\q[136]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \q[136]_i_9 
       (.I0(\q[136]_i_21_n_0 ),
        .I1(\q[136]_i_22_n_0 ),
        .I2(\q_reg[36]_0 ),
        .I3(\q[136]_i_23_n_0 ),
        .I4(\q_reg[37]_3 ),
        .I5(\q[136]_i_24_n_0 ),
        .O(\q[136]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \q[15]_i_10 
       (.I0(\q_reg[150]_1 ),
        .I1(\q[15]_i_16_n_0 ),
        .I2(\q_reg[106]_1 ),
        .I3(\q[110]_i_8_n_0 ),
        .I4(\q[15]_i_17_n_0 ),
        .I5(\q[15]_i_7 ),
        .O(\q_reg[150]_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \q[15]_i_12 
       (.I0(\q[112]_i_9_n_0 ),
        .I1(\q_reg[135] ),
        .I2(\q[111]_i_11_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[15]_i_20_n_0 ),
        .I5(\q_reg[106]_2 ),
        .O(\q_reg[146]_1 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \q[15]_i_14 
       (.I0(\q[113]_i_7_n_0 ),
        .I1(\q_reg[135] ),
        .I2(\q[112]_i_12_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[15]_i_21_n_0 ),
        .I5(\q_reg[106]_2 ),
        .O(\q_reg[147]_2 ));
  LUT5 #(
    .INIT(32'hC000A000)) 
    \q[15]_i_15 
       (.I0(\q[112]_i_9_n_0 ),
        .I1(\q[113]_i_6_n_0 ),
        .I2(\q_reg[107]_0 ),
        .I3(Q[0]),
        .I4(\q_reg[32] [1]),
        .O(\q_reg[11]_rep__0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \q[15]_i_16 
       (.I0(\q[110]_i_9_n_0 ),
        .I1(\q_reg[135] ),
        .I2(\q[15]_i_20_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[15]_i_22_n_0 ),
        .I5(\q_reg[106]_2 ),
        .O(\q[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2202000020000000)) 
    \q[15]_i_17 
       (.I0(\q_reg[135]_0 ),
        .I1(\q_reg[37]_3 ),
        .I2(\q_reg[36]_0 ),
        .I3(Q[33]),
        .I4(\q[135]_i_15_n_0 ),
        .I5(Q[35]),
        .O(\q[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \q[15]_i_18 
       (.I0(\q_reg[147]_0 ),
        .I1(\q_reg[135] ),
        .I2(\q[15]_i_21_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[15]_i_23_n_0 ),
        .I5(\q_reg[106]_2 ),
        .O(\q_reg[147]_1 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \q[15]_i_19 
       (.I0(\q[110]_i_9_n_0 ),
        .I1(\q_reg[135]_0 ),
        .I2(\q[111]_i_11_n_0 ),
        .I3(\q_reg[36]_0 ),
        .I4(\q[15]_i_20_n_0 ),
        .I5(\q_reg[106]_1 ),
        .O(\q_reg[146]_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF80BF80BF80)) 
    \q[15]_i_20 
       (.I0(\q[115]_i_10_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[107]_i_11_n_0 ),
        .I4(Q[3]),
        .I5(\q[119]_i_14_n_0 ),
        .O(\q[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF80BF80BF80)) 
    \q[15]_i_21 
       (.I0(\q[114]_i_9_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[108]_i_17_n_0 ),
        .I4(Q[3]),
        .I5(\q[116]_i_17_n_0 ),
        .O(\q[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF80BF80BF80)) 
    \q[15]_i_22 
       (.I0(\q[113]_i_9_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[105]_i_21_n_0 ),
        .I4(Q[3]),
        .I5(\q[111]_i_12_n_0 ),
        .O(\q[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF80BF80BF80)) 
    \q[15]_i_23 
       (.I0(\q[114]_i_11_n_0 ),
        .I1(Q[2]),
        .I2(\q_reg[106]_0 ),
        .I3(\q[105]_i_17_n_0 ),
        .I4(Q[3]),
        .I5(\q[112]_i_17_n_0 ),
        .O(\q[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[28]_i_1 
       (.I0(PCSrcE),
        .I1(O[0]),
        .I2(PCPlus4F[0]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31] [0]),
        .O(\q_reg[16] [0]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[29]_i_1 
       (.I0(PCSrcE),
        .I1(O[1]),
        .I2(PCPlus4F[1]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31] [1]),
        .O(\q_reg[16] [1]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[30]_i_1 
       (.I0(PCSrcE),
        .I1(O[2]),
        .I2(PCPlus4F[2]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31] [2]),
        .O(\q_reg[16] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[31]_i_1 
       (.I0(\q_reg[19] ),
        .O(E));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_14 
       (.I0(RdE[3]),
        .I1(\q[31]_i_6_0 [8]),
        .I2(\q[31]_i_6_0 [9]),
        .I3(RdE[4]),
        .I4(\q[31]_i_6_0 [7]),
        .I5(RdE[2]),
        .O(\q[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \q[31]_i_2 
       (.I0(PCSrcE),
        .I1(O[3]),
        .I2(PCPlus4F[3]),
        .I3(PCSrc1__6),
        .I4(\q_reg[31] [3]),
        .O(\q_reg[16] [3]));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \q[31]_i_20 
       (.I0(\q[31]_i_26_n_0 ),
        .I1(\q_reg[177]_1 [3]),
        .I2(Q[63]),
        .I3(\q_reg[32] [2]),
        .I4(\q_reg[32] [3]),
        .I5(\q_reg[32] [4]),
        .O(ovfE));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \q[31]_i_25 
       (.I0(\q_reg[12]_6 ),
        .I1(\q[31]_i_17 ),
        .I2(\q_reg[12]_7 ),
        .I3(\q[31]_i_17_0 ),
        .I4(\q[31]_i_29_n_0 ),
        .I5(\q[31]_i_17_1 ),
        .O(\q_reg[12]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \q[31]_i_26 
       (.I0(Q[63]),
        .I1(\q_reg[32] [1]),
        .I2(Q[31]),
        .I3(\q_reg[118] ),
        .O(\q[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0CC00CCAACC)) 
    \q[31]_i_29 
       (.I0(\alu/result00_out [9]),
        .I1(\q_reg[157]_0 [1]),
        .I2(\q_reg[12]_29 ),
        .I3(\q_reg[32] [3]),
        .I4(\q_reg[32] [1]),
        .I5(\q_reg[32] [2]),
        .O(\q[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hA88888A888888888)) 
    \q[31]_i_3 
       (.I0(\q_reg[32] [5]),
        .I1(\q[31]_i_6_n_0 ),
        .I2(\q[31]_i_7_n_0 ),
        .I3(RdE[2]),
        .I4(\q[31]_i_6_0 [2]),
        .I5(\q[31]_i_8_n_0 ),
        .O(\q_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[31]_i_31 
       (.I0(\q_reg[118] ),
        .I1(Q[9]),
        .I2(Q[41]),
        .O(\alu/result00_out [9]));
  LUT5 #(
    .INIT(32'h90090000)) 
    \q[31]_i_6 
       (.I0(RdE[0]),
        .I1(\q[31]_i_6_0 [5]),
        .I2(RdE[1]),
        .I3(\q[31]_i_6_0 [6]),
        .I4(\q[31]_i_14_n_0 ),
        .O(\q[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_7 
       (.I0(RdE[1]),
        .I1(\q[31]_i_6_0 [1]),
        .I2(\q[31]_i_6_0 [0]),
        .I3(RdE[0]),
        .O(\q[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_8 
       (.I0(RdE[3]),
        .I1(\q[31]_i_6_0 [3]),
        .I2(\q[31]_i_6_0 [4]),
        .I3(RdE[4]),
        .O(\q[31]_i_8_n_0 ));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(PCE[18]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(PCE[19]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(PCE[20]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(PCE[21]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(PCE[22]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(PCE[23]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(PCE[24]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(PCE[25]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(PCE[26]));
  CARRY4 \q_reg[108]_i_8 
       (.CI(1'b0),
        .CO({\q_reg[108]_i_8_n_0 ,\q_reg[108]_i_8_n_1 ,\q_reg[108]_i_8_n_2 ,\q_reg[108]_i_8_n_3 }),
        .CYINIT(condinvb__0),
        .DI(Q[35:32]),
        .O({\q_reg[108]_i_8_n_4 ,\q_reg[108]_i_8_n_5 ,\q_reg[108]_i_8_n_6 ,\q_reg[108]_i_8_n_7 }),
        .S(\q[105]_i_3_0 ));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[64]),
        .Q(PCE[27]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[65]),
        .Q(PCE[28]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[66]),
        .Q(PCE[29]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[67]),
        .Q(PCE[30]));
  CARRY4 \q_reg[112]_i_10 
       (.CI(\q_reg[108]_i_8_n_0 ),
        .CO({\q_reg[112]_i_10_n_0 ,\q_reg[112]_i_10_n_1 ,\q_reg[112]_i_10_n_2 ,\q_reg[112]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[39:36]),
        .O({\q_reg[153]_0 ,\q_reg[112]_i_10_n_7 }),
        .S(\q[109]_i_4_0 ));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[68]),
        .Q(PCE[31]));
  CARRY4 \q_reg[116]_i_8 
       (.CI(\q_reg[112]_i_10_n_0 ),
        .CO({\q_reg[116]_i_8_n_0 ,\q_reg[116]_i_8_n_1 ,\q_reg[116]_i_8_n_2 ,\q_reg[116]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[43:40]),
        .O(\q_reg[157]_0 ),
        .S(\q[113]_i_3 ));
  CARRY4 \q_reg[120]_i_8 
       (.CI(\q_reg[116]_i_8_n_0 ),
        .CO({\q_reg[120]_i_8_n_0 ,\q_reg[120]_i_8_n_1 ,\q_reg[120]_i_8_n_2 ,\q_reg[120]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[47:44]),
        .O(\q_reg[161]_1 ),
        .S(\q[117]_i_3 ));
  CARRY4 \q_reg[124]_i_10 
       (.CI(\q_reg[120]_i_8_n_0 ),
        .CO({\q_reg[124]_i_10_n_0 ,\q_reg[124]_i_10_n_1 ,\q_reg[124]_i_10_n_2 ,\q_reg[124]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[51:48]),
        .O(\q_reg[165]_1 ),
        .S(\q[121]_i_4 ));
  CARRY4 \q_reg[128]_i_10 
       (.CI(\q_reg[124]_i_10_n_0 ),
        .CO({\q_reg[128]_i_10_n_0 ,\q_reg[128]_i_10_n_1 ,\q_reg[128]_i_10_n_2 ,\q_reg[128]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[55:52]),
        .O(\q_reg[169]_0 ),
        .S(\q[125]_i_4 ));
  CARRY4 \q_reg[132]_i_10 
       (.CI(\q_reg[128]_i_10_n_0 ),
        .CO({\q_reg[132]_i_10_n_0 ,\q_reg[132]_i_10_n_1 ,\q_reg[132]_i_10_n_2 ,\q_reg[132]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[59:56]),
        .O(\q_reg[173]_0 ),
        .S(\q[129]_i_4 ));
  CARRY4 \q_reg[136]_i_14 
       (.CI(\q_reg[132]_i_10_n_0 ),
        .CO({\q_reg[136]_i_14_n_0 ,\q_reg[136]_i_14_n_1 ,\q_reg[136]_i_14_n_2 ,\q_reg[136]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[63:60]),
        .O(\q_reg[177]_1 ),
        .S({\q[136]_i_25_n_0 ,\q[133]_i_4 }));
  FDCE \q_reg[146] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[69]),
        .Q(Q[32]));
  FDCE \q_reg[147] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[70]),
        .Q(Q[33]));
  FDCE \q_reg[148] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[71]),
        .Q(Q[34]));
  FDCE \q_reg[149] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[72]),
        .Q(Q[35]));
  FDCE \q_reg[150] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[73]),
        .Q(Q[36]));
  FDCE \q_reg[151] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[74]),
        .Q(Q[37]));
  FDCE \q_reg[152] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[75]),
        .Q(Q[38]));
  FDCE \q_reg[153] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[76]),
        .Q(Q[39]));
  FDCE \q_reg[154] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[77]),
        .Q(Q[40]));
  FDCE \q_reg[155] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[78]),
        .Q(Q[41]));
  FDCE \q_reg[156] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[79]),
        .Q(Q[42]));
  FDCE \q_reg[157] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[80]),
        .Q(Q[43]));
  FDCE \q_reg[158] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[81]),
        .Q(Q[44]));
  FDCE \q_reg[159] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[82]),
        .Q(Q[45]));
  FDCE \q_reg[160] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[83]),
        .Q(Q[46]));
  FDCE \q_reg[161] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[84]),
        .Q(Q[47]));
  FDCE \q_reg[162] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[85]),
        .Q(Q[48]));
  FDCE \q_reg[163] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[86]),
        .Q(Q[49]));
  FDCE \q_reg[164] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[87]),
        .Q(Q[50]));
  FDCE \q_reg[165] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[88]),
        .Q(Q[51]));
  FDCE \q_reg[166] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[89]),
        .Q(Q[52]));
  FDCE \q_reg[167] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[90]),
        .Q(Q[53]));
  FDCE \q_reg[168] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[91]),
        .Q(Q[54]));
  FDCE \q_reg[169] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[92]),
        .Q(Q[55]));
  FDCE \q_reg[170] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[93]),
        .Q(Q[56]));
  FDCE \q_reg[171] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[94]),
        .Q(Q[57]));
  FDCE \q_reg[172] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[95]),
        .Q(Q[58]));
  FDCE \q_reg[173] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[96]),
        .Q(Q[59]));
  FDCE \q_reg[174] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[97]),
        .Q(Q[60]));
  FDCE \q_reg[175] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[98]),
        .Q(Q[61]));
  FDCE \q_reg[176] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[99]),
        .Q(Q[62]));
  FDCE \q_reg[177] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[100]),
        .Q(Q[63]));
  CARRY4 \q_reg[31]_i_27 
       (.CI(\q_reg[136]_i_14_n_0 ),
        .CO({\NLW_q_reg[31]_i_27_CO_UNCONNECTED [3:1],\q_reg[177]_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[31]_i_27_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(RdE[0]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(RdE[1]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(RdE[2]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(RdE[3]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(RdE[4]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(PCE[0]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(PCE[1]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(PCE[2]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(PCE[3]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(PCE[4]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(PCE[5]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(PCE[6]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(PCE[7]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(PCE[8]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(PCE[9]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(PCE[10]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(PCE[11]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(PCE[12]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(PCE[13]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(PCE[14]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(PCE[15]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(PCE[16]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(PCE[17]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_1
       (.I0(Q[7]),
        .I1(PCE[7]),
        .O(\q_reg[42]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_2
       (.I0(Q[6]),
        .I1(PCE[6]),
        .O(\q_reg[42]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_3
       (.I0(Q[5]),
        .I1(PCE[5]),
        .O(\q_reg[42]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_4
       (.I0(Q[4]),
        .I1(PCE[4]),
        .O(\q_reg[42]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(Q[11]),
        .I1(PCE[11]),
        .O(\q_reg[46]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_2
       (.I0(Q[10]),
        .I1(PCE[10]),
        .O(\q_reg[46]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_3
       (.I0(Q[9]),
        .I1(PCE[9]),
        .O(\q_reg[46]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_4
       (.I0(Q[8]),
        .I1(PCE[8]),
        .O(\q_reg[46]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_1
       (.I0(Q[15]),
        .I1(PCE[15]),
        .O(\q_reg[50]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_2
       (.I0(Q[14]),
        .I1(PCE[14]),
        .O(\q_reg[50]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_3
       (.I0(Q[13]),
        .I1(PCE[13]),
        .O(\q_reg[50]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_4
       (.I0(Q[12]),
        .I1(PCE[12]),
        .O(\q_reg[50]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_1
       (.I0(Q[19]),
        .I1(PCE[19]),
        .O(\q_reg[54]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_2
       (.I0(Q[18]),
        .I1(PCE[18]),
        .O(\q_reg[54]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_3
       (.I0(Q[17]),
        .I1(PCE[17]),
        .O(\q_reg[54]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_4
       (.I0(Q[16]),
        .I1(PCE[16]),
        .O(\q_reg[54]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_1
       (.I0(Q[23]),
        .I1(PCE[23]),
        .O(\q_reg[58]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_2
       (.I0(Q[22]),
        .I1(PCE[22]),
        .O(\q_reg[58]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_3
       (.I0(Q[21]),
        .I1(PCE[21]),
        .O(\q_reg[58]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_4
       (.I0(Q[20]),
        .I1(PCE[20]),
        .O(\q_reg[58]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_1
       (.I0(Q[27]),
        .I1(PCE[27]),
        .O(\q_reg[62]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_2
       (.I0(Q[26]),
        .I1(PCE[26]),
        .O(\q_reg[62]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_3
       (.I0(Q[25]),
        .I1(PCE[25]),
        .O(\q_reg[62]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_4
       (.I0(Q[24]),
        .I1(PCE[24]),
        .O(\q_reg[62]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(Q[31]),
        .I1(PCE[31]),
        .O(\q_reg[66]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_2
       (.I0(Q[30]),
        .I1(PCE[30]),
        .O(\q_reg[66]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_3
       (.I0(Q[29]),
        .I1(PCE[29]),
        .O(\q_reg[66]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_4
       (.I0(Q[28]),
        .I1(PCE[28]),
        .O(\q_reg[66]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_1
       (.I0(Q[3]),
        .I1(PCE[3]),
        .O(\q_reg[38]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(PCE[2]),
        .O(\q_reg[38]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(PCE[1]),
        .O(\q_reg[38]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_4
       (.I0(Q[0]),
        .I1(PCE[0]),
        .O(\q_reg[38]_1 [0]));
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
    MemStrobeM,
    PCReady);
  input clk;
  input reset;
  output [31:0]PCF;
  input [31:0]InstrF;
  output MemWriteM;
  output [31:0]ALUResultM;
  output [31:0]WriteDataM;
  input [31:0]ReadDataM;
  output MemStrobeM;
  output PCReady;

  wire \<const0> ;
  wire [3:0]ALUControlE;
  wire [30:0]ALUResultE;
  wire [31:0]ALUResultM;
  wire ALUSrcE;
  wire FlushE;
  wire [31:0]ImmExtE;
  wire [31:0]InstrF;
  wire MemStrobeM;
  wire MemWriteM;
  wire [31:0]PCF;
  wire PCSrc1__6;
  wire [0:0]PCSrcE;
  wire [31:1]RD1E;
  wire [31:0]ReadDataM;
  wire ResultSrcEb0;
  wire [4:1]SrcBE__0;
  wire [31:0]WriteDataM;
  wire [0:0]\alu/condinvb__0 ;
  wire [0:0]\alu/data6 ;
  wire \alu/data8 ;
  wire \alu/p_1_in ;
  wire \alu/p_2_in ;
  wire \alu/p_4_in ;
  wire c_n_75;
  wire c_n_76;
  wire c_n_77;
  wire c_n_78;
  wire c_n_79;
  wire c_n_80;
  wire c_n_81;
  wire c_n_82;
  wire c_n_83;
  wire c_n_84;
  wire c_n_85;
  wire c_n_86;
  wire c_n_87;
  wire c_n_88;
  wire clk;
  wire dp_n_114;
  wire dp_n_120;
  wire dp_n_121;
  wire dp_n_122;
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
  wire dp_n_160;
  wire dp_n_161;
  wire dp_n_162;
  wire dp_n_163;
  wire dp_n_164;
  wire dp_n_165;
  wire dp_n_166;
  wire dp_n_167;
  wire dp_n_168;
  wire dp_n_169;
  wire dp_n_170;
  wire dp_n_171;
  wire dp_n_172;
  wire dp_n_173;
  wire dp_n_174;
  wire dp_n_175;
  wire dp_n_176;
  wire dp_n_177;
  wire dp_n_178;
  wire dp_n_179;
  wire dp_n_180;
  wire dp_n_181;
  wire dp_n_182;
  wire dp_n_183;
  wire dp_n_184;
  wire dp_n_185;
  wire dp_n_186;
  wire dp_n_187;
  wire dp_n_188;
  wire dp_n_189;
  wire dp_n_190;
  wire dp_n_191;
  wire dp_n_192;
  wire dp_n_193;
  wire dp_n_194;
  wire dp_n_195;
  wire dp_n_196;
  wire dp_n_197;
  wire dp_n_198;
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
  wire dp_n_216;
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
  wire dp_n_93;
  wire [2:0]funct3E;
  wire negE;
  wire ovfE;
  wire [19:0]p_0_in;
  wire [95:64]\regD/p_0_in ;
  wire reset;

  assign PCReady = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_top_0_0_controller c
       (.CO(\alu/data8 ),
        .D(\regD/p_0_in ),
        .FlushE(FlushE),
        .InstrF(InstrF),
        .O({\alu/p_2_in ,dp_n_120,dp_n_121,dp_n_122}),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({ResultSrcEb0,ALUControlE,ALUSrcE}),
        .SrcBE__0(SrcBE__0),
        .clk(clk),
        .condinvb__0(\alu/condinvb__0 ),
        .data6(\alu/data6 ),
        .funct3E(funct3E),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .p_4_in(\alu/p_4_in ),
        .\q[15]_i_4 (dp_n_133),
        .\q[15]_i_5 (dp_n_157),
        .\q[15]_i_6 (dp_n_175),
        .\q[15]_i_6_0 (dp_n_172),
        .\q[15]_i_6_1 (dp_n_170),
        .\q[15]_i_6_2 (dp_n_169),
        .\q[15]_i_7 (dp_n_174),
        .\q[15]_i_7_0 (dp_n_167),
        .\q[15]_i_8 (dp_n_166),
        .\q[31]_i_12 (\alu/p_1_in ),
        .\q_reg[105] (dp_n_156),
        .\q_reg[105]_0 (dp_n_204),
        .\q_reg[105]_1 (dp_n_114),
        .\q_reg[105]_2 (dp_n_160),
        .\q_reg[105]_3 (dp_n_125),
        .\q_reg[106] (dp_n_161),
        .\q_reg[106]_0 (dp_n_207),
        .\q_reg[106]_1 (dp_n_124),
        .\q_reg[107] (dp_n_162),
        .\q_reg[107]_0 (dp_n_206),
        .\q_reg[107]_1 (dp_n_126),
        .\q_reg[108] (dp_n_163),
        .\q_reg[108]_0 (dp_n_205),
        .\q_reg[108]_1 (dp_n_127),
        .\q_reg[109] (dp_n_164),
        .\q_reg[109]_0 (dp_n_158),
        .\q_reg[109]_1 (dp_n_130),
        .\q_reg[109]_2 (dp_n_128),
        .\q_reg[110] (dp_n_129),
        .\q_reg[110]_0 (dp_n_165),
        .\q_reg[111] (dp_n_131),
        .\q_reg[111]_0 (dp_n_168),
        .\q_reg[112] (dp_n_132),
        .\q_reg[112]_0 (dp_n_171),
        .\q_reg[112]_1 ({dp_n_213,dp_n_214,dp_n_215}),
        .\q_reg[113] (dp_n_173),
        .\q_reg[113]_0 (dp_n_134),
        .\q_reg[114] (dp_n_180),
        .\q_reg[114]_0 (dp_n_135),
        .\q_reg[115] (dp_n_181),
        .\q_reg[115]_0 (dp_n_136),
        .\q_reg[116] (dp_n_182),
        .\q_reg[116]_0 (dp_n_137),
        .\q_reg[116]_1 ({dp_n_176,dp_n_177,dp_n_178,dp_n_179}),
        .\q_reg[117] (dp_n_183),
        .\q_reg[117]_0 (dp_n_138),
        .\q_reg[118] (dp_n_184),
        .\q_reg[118]_0 (dp_n_139),
        .\q_reg[119] (dp_n_185),
        .\q_reg[119]_0 (dp_n_140),
        .\q_reg[11]_rep (c_n_83),
        .\q_reg[11]_rep_0 (dp_n_210),
        .\q_reg[11]_rep__0 (c_n_82),
        .\q_reg[11]_rep__0_0 (c_n_84),
        .\q_reg[11]_rep__0_1 (dp_n_211),
        .\q_reg[11]_rep__1 (c_n_75),
        .\q_reg[11]_rep__1_0 (c_n_85),
        .\q_reg[11]_rep__1_1 (c_n_87),
        .\q_reg[11]_rep__1_2 (c_n_88),
        .\q_reg[11]_rep__1_3 (dp_n_212),
        .\q_reg[120] (dp_n_186),
        .\q_reg[120]_0 (dp_n_141),
        .\q_reg[120]_1 ({dp_n_216,dp_n_217,dp_n_218,dp_n_219}),
        .\q_reg[121] (dp_n_142),
        .\q_reg[121]_0 (dp_n_188),
        .\q_reg[122] (dp_n_143),
        .\q_reg[122]_0 (dp_n_189),
        .\q_reg[123] (dp_n_144),
        .\q_reg[123]_0 (dp_n_190),
        .\q_reg[124] (dp_n_145),
        .\q_reg[124]_0 (dp_n_191),
        .\q_reg[124]_1 ({dp_n_220,dp_n_221,dp_n_222,dp_n_223}),
        .\q_reg[125] (dp_n_146),
        .\q_reg[125]_0 (dp_n_192),
        .\q_reg[126] (dp_n_147),
        .\q_reg[126]_0 (dp_n_193),
        .\q_reg[127] (dp_n_148),
        .\q_reg[127]_0 (dp_n_194),
        .\q_reg[128] (dp_n_149),
        .\q_reg[128]_0 (dp_n_195),
        .\q_reg[128]_1 ({dp_n_224,dp_n_225,dp_n_226,dp_n_227}),
        .\q_reg[129] (dp_n_150),
        .\q_reg[129]_0 (dp_n_196),
        .\q_reg[12] (c_n_78),
        .\q_reg[12]_0 (c_n_79),
        .\q_reg[12]_1 (c_n_86),
        .\q_reg[130] (dp_n_151),
        .\q_reg[130]_0 (dp_n_197),
        .\q_reg[131] (dp_n_152),
        .\q_reg[131]_0 (dp_n_198),
        .\q_reg[132] (dp_n_153),
        .\q_reg[132]_0 (dp_n_199),
        .\q_reg[132]_1 ({dp_n_228,dp_n_229,dp_n_230,dp_n_231}),
        .\q_reg[133] (dp_n_154),
        .\q_reg[133]_0 (dp_n_200),
        .\q_reg[134] (dp_n_201),
        .\q_reg[134]_0 (dp_n_155),
        .\q_reg[134]_1 (dp_n_209),
        .\q_reg[135] (dp_n_187),
        .\q_reg[135]_0 (dp_n_202),
        .\q_reg[135]_1 (dp_n_208),
        .\q_reg[136] ({RD1E,ImmExtE[31:4],ImmExtE[0]}),
        .\q_reg[136]_0 (dp_n_203),
        .\q_reg[13] ({negE,ALUResultE}),
        .\q_reg[13]_0 (c_n_76),
        .\q_reg[14] (c_n_77),
        .\q_reg[155] (c_n_80),
        .\q_reg[15] (c_n_81),
        .\q_reg[15]_0 (dp_n_93),
        .\q_reg[1] ({MemWriteM,MemStrobeM}),
        .reset(reset));
  design_1_top_0_0_datapath dp
       (.ALUResultM(ALUResultM),
        .CO(\alu/data8 ),
        .D(\regD/p_0_in ),
        .FlushE(FlushE),
        .MemWriteM(MemWriteM),
        .O({\alu/p_2_in ,dp_n_120,dp_n_121,dp_n_122}),
        .PCF(PCF),
        .PCSrc1__6(PCSrc1__6),
        .PCSrcE(PCSrcE),
        .Q({RD1E,ImmExtE[31:4],ImmExtE[0]}),
        .ReadDataM(ReadDataM),
        .WriteDataM(WriteDataM),
        .clk(clk),
        .condinvb__0(\alu/condinvb__0 ),
        .data6(\alu/data6 ),
        .ovfE(ovfE),
        .p_0_in(p_0_in),
        .p_4_in(\alu/p_4_in ),
        .\q[15]_i_7 (c_n_77),
        .\q[31]_i_17 (c_n_84),
        .\q[31]_i_17_0 (c_n_80),
        .\q[31]_i_17_1 (c_n_76),
        .\q_reg[106] (c_n_75),
        .\q_reg[106]_0 (c_n_85),
        .\q_reg[106]_1 (c_n_86),
        .\q_reg[107] (c_n_82),
        .\q_reg[118] (c_n_83),
        .\q_reg[11]_rep__0 (dp_n_172),
        .\q_reg[11]_rep__0_0 (dp_n_208),
        .\q_reg[11]_rep__0_1 (dp_n_209),
        .\q_reg[11]_rep__1 (dp_n_202),
        .\q_reg[12] (dp_n_124),
        .\q_reg[12]_0 (dp_n_126),
        .\q_reg[12]_1 (dp_n_127),
        .\q_reg[12]_10 (dp_n_138),
        .\q_reg[12]_11 (dp_n_139),
        .\q_reg[12]_12 (dp_n_141),
        .\q_reg[12]_13 (dp_n_142),
        .\q_reg[12]_14 (dp_n_143),
        .\q_reg[12]_15 (dp_n_144),
        .\q_reg[12]_16 (dp_n_145),
        .\q_reg[12]_17 (dp_n_146),
        .\q_reg[12]_18 (dp_n_147),
        .\q_reg[12]_19 (dp_n_148),
        .\q_reg[12]_2 (dp_n_129),
        .\q_reg[12]_20 (dp_n_149),
        .\q_reg[12]_21 (dp_n_161),
        .\q_reg[12]_22 (dp_n_162),
        .\q_reg[12]_23 (dp_n_163),
        .\q_reg[12]_24 (dp_n_164),
        .\q_reg[12]_25 (dp_n_165),
        .\q_reg[12]_26 (dp_n_168),
        .\q_reg[12]_27 (dp_n_171),
        .\q_reg[12]_28 (dp_n_173),
        .\q_reg[12]_29 (dp_n_180),
        .\q_reg[12]_3 (dp_n_131),
        .\q_reg[12]_30 (dp_n_181),
        .\q_reg[12]_31 (dp_n_182),
        .\q_reg[12]_32 (dp_n_183),
        .\q_reg[12]_33 (dp_n_184),
        .\q_reg[12]_34 (dp_n_185),
        .\q_reg[12]_35 (dp_n_186),
        .\q_reg[12]_36 (dp_n_188),
        .\q_reg[12]_37 (dp_n_189),
        .\q_reg[12]_38 (dp_n_190),
        .\q_reg[12]_39 (dp_n_191),
        .\q_reg[12]_4 (dp_n_132),
        .\q_reg[12]_40 (dp_n_192),
        .\q_reg[12]_41 (dp_n_193),
        .\q_reg[12]_42 (dp_n_194),
        .\q_reg[12]_43 (dp_n_195),
        .\q_reg[12]_44 (dp_n_196),
        .\q_reg[12]_45 (dp_n_197),
        .\q_reg[12]_46 (dp_n_198),
        .\q_reg[12]_47 (dp_n_199),
        .\q_reg[12]_48 (dp_n_200),
        .\q_reg[12]_49 (dp_n_201),
        .\q_reg[12]_5 (dp_n_133),
        .\q_reg[12]_50 (dp_n_203),
        .\q_reg[12]_6 (dp_n_134),
        .\q_reg[12]_7 (dp_n_135),
        .\q_reg[12]_8 (dp_n_136),
        .\q_reg[12]_9 (dp_n_137),
        .\q_reg[133] (c_n_78),
        .\q_reg[133]_0 (c_n_79),
        .\q_reg[133]_1 (c_n_81),
        .\q_reg[135] (c_n_87),
        .\q_reg[135]_0 (c_n_88),
        .\q_reg[136] ({negE,ALUResultE,funct3E}),
        .\q_reg[13] (dp_n_204),
        .\q_reg[146] (dp_n_167),
        .\q_reg[146]_0 (dp_n_170),
        .\q_reg[147] (dp_n_166),
        .\q_reg[147]_0 (dp_n_174),
        .\q_reg[147]_1 (dp_n_175),
        .\q_reg[147]_2 (dp_n_207),
        .\q_reg[148] (dp_n_206),
        .\q_reg[149] (dp_n_205),
        .\q_reg[14] (dp_n_156),
        .\q_reg[150] (dp_n_157),
        .\q_reg[150]_0 (dp_n_158),
        .\q_reg[153] ({dp_n_213,dp_n_214,dp_n_215}),
        .\q_reg[157] ({dp_n_176,dp_n_177,dp_n_178,dp_n_179}),
        .\q_reg[161] ({dp_n_216,dp_n_217,dp_n_218,dp_n_219}),
        .\q_reg[164] (dp_n_128),
        .\q_reg[165] (dp_n_130),
        .\q_reg[165]_0 ({dp_n_220,dp_n_221,dp_n_222,dp_n_223}),
        .\q_reg[169] ({dp_n_224,dp_n_225,dp_n_226,dp_n_227}),
        .\q_reg[173] ({dp_n_228,dp_n_229,dp_n_230,dp_n_231}),
        .\q_reg[175] (dp_n_154),
        .\q_reg[175]_0 (dp_n_155),
        .\q_reg[176] (dp_n_187),
        .\q_reg[177] (dp_n_114),
        .\q_reg[177]_0 (\alu/p_1_in ),
        .\q_reg[19] (dp_n_93),
        .\q_reg[32] ({ResultSrcEb0,ALUControlE,ALUSrcE}),
        .\q_reg[36] (dp_n_150),
        .\q_reg[36]_0 (dp_n_151),
        .\q_reg[36]_1 (dp_n_152),
        .\q_reg[36]_2 (dp_n_153),
        .\q_reg[36]_3 (dp_n_169),
        .\q_reg[37] (dp_n_125),
        .\q_reg[37]_0 (dp_n_140),
        .\q_reg[37]_1 (dp_n_160),
        .\q_reg[39] (SrcBE__0),
        .\q_reg[70] (dp_n_210),
        .\q_reg[70]_0 (dp_n_211),
        .\q_reg[70]_1 (dp_n_212),
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
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;
  wire NLW_memcontrol_Done_UNCONNECTED;
  wire NLW_riscv_PCReady_UNCONNECTED;

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
        .Done(NLW_memcontrol_Done_UNCONNECTED),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscv riscv
       (.ALUResultM(addressM),
        .InstrF(Instr),
        .MemStrobeM(MStrobe),
        .MemWriteM(MemWrite),
        .PCF(PC),
        .PCReady(NLW_riscv_PCReady_UNCONNECTED),
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
