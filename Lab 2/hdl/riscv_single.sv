// riscvsingle.sv

// RISC-V single-cycle processor
// From Section 7.6 of Digital Design & Computer Architecture
// 27 April 2020
// David_Harris@hmc.edu 
// Sarah.Harris@unlv.edu

// run 210
// Expect simulator to print "Simulation succeeded"
// when the value 25 (0x19) is written to address 100 (0x64)

//   Instruction  opcode    funct3    funct7
//   add          0110011   000       0000000
//   sub          0110011   000       0100000
//   and          0110011   111       0000000
//   or           0110011   110       0000000
//   slt          0110011   010       0000000
//   addi         0010011   000       immediate
//   andi         0010011   111       immediate
//   ori          0010011   110       immediate
//   slti         0010011   010       immediate
//   beq          1100011   000       immediate
//   lw	          0000011   010       immediate
//   sw           0100011   010       immediate
//   jal          1101111   immediate immediate

//Done in lab
// Instruction    opcode    funt3     funct7
// auipc          0010111   immediate immediate <--- Works               
// bge            1100011   000       immediate <--- WORKS                              
// bgeu           1100011   111       immediate <--- WORKS                  
// blt            1100011   100       immediate <--- WORKS
// bltu           1100011   101       immediate <--- WORKS
// bne            1100011   001       immediate <--- WORKS
// jalr           1101111   000       immediate <--- WORKS                  
// lb             0000011   000       immediate <--- WORKS        
// lbu            0000011   100       immediate <--- WORKS      
// lh             0000011   001       immediate <--- WORKS         
// lhu            0000011   101       immediate <--- WORKS        
// lui            0110111   immediate immediate <--- WORKS 
// sb             0100011   000       immediate <--- WORKS                  
// sh             0100011   001       immediate <--- WORKS                  
// sll            0110011   001       0000000   <--- WORKS             
// slli           0010011   001       000000*   <--- WORKS             
// sltiu          0010011   011       immediate <--- WORKS                 
// sltu           0110011   011       0000000   <--- WORKS              
// sra            0110011   101       0000000   <--- WORKS                
// srai           0010011   101       010000*   <--- WORKS        
// srl            0110011   101       0000000   <--- WORKS                
// srli           0010011   101       000000*   <--- WORKS      
// xor            0110011   100       0000000   <--- WORKS
// xori           0010011   100       immediate <--- WORKS


module testbench();

   logic        clk;
   logic        reset;

   logic [31:0] WriteData;
   logic [31:0] DataAdr;
   logic        MemWrite;

   // instantiate device to be tested
   top dut(clk, reset, WriteData, DataAdr, MemWrite);

   initial
     begin
	string memfilename;
        memfilename = {"../testing/lw.memfile"};
        $readmemh(memfilename, dut.imem.RAM);
        $readmemh(memfilename, dut.dmem.RAM);
     end

   
   // initialize test
   initial
     begin
	reset <= 1; # 22; reset <= 0;
     end

   // generate clock to sequence tests
   always
     begin
	clk <= 1; # 5; clk <= 0; # 5;
     end

   
endmodule // testbench

module riscvsingle (input  logic        clk, reset,
		    output logic [31:0] PC,
		    input  logic [31:0] Instr,
		    output logic 	MemWrite,
		    output logic [31:0] ALUResult, WriteData,
		    input  logic [31:0] ReadData);
   
   logic 				ALUSrc, RegWrite, Jump, Zero;
   logic [1:0]        ResultSrc, PCSrc;
   logic [2:0] 				ImmSrc;  
   logic [3:0] 				ALUControl; //changed 3 to 4
   logic [2:0]        flags;
   
   controller c (Instr[6:0], Instr[14:12], Instr[30], Zero, flags,
		 ResultSrc, MemWrite, PCSrc,
		 ALUSrc, RegWrite, Jump,
		 ImmSrc, ALUControl, auipcSrc);
   datapath dp (clk, reset, ResultSrc, PCSrc,
		ALUSrc, RegWrite, auipcSrc,
		ImmSrc, ALUControl,
		Zero, flags, PC, Instr,
		ALUResult, WriteData, ReadData, MemWrite);
   
endmodule // riscvsingle

module controller (input  logic [6:0] op,
		   input  logic [2:0] funct3,
		   input  logic       funct7b5,
		   input  logic       Zero,
       input  logic [2:0] flags, //v, c, n
		   output logic [1:0] ResultSrc,
		   output logic       MemWrite,
		   output logic [1:0] PCSrc, 
		   output logic       ALUSrc, RegWrite, Jump,
		   output logic [2:0] ImmSrc,
		   output logic [3:0] ALUControl, //changed 3 to 4
       output logic       auipcSrc); 
   
   logic [1:0] 			      ALUOp;
   logic 			      Branch, PCSrc0, PCSrc1;
   logic            BranchCondition; //tells us if the conditions are met or naw


   
   maindec md (op, ResultSrc, MemWrite, auipcSrc, Branch,
	       ALUSrc, RegWrite, Jump, ImmSrc, ALUOp);
   aludec ad (op[5], funct3, funct7b5, ALUOp, ALUControl);

  always_comb begin
    case(funct3)
    3'b000: BranchCondition = Zero; //beq
    3'b001: BranchCondition = ~Zero; //bne
    3'b100: BranchCondition = flags[0]^flags[2]; //blt
    3'b101: BranchCondition = ~(flags[0]^flags[2]); //bge
    3'b110: BranchCondition = ~flags[1]; //bltu
    3'b111: BranchCondition = flags[1]; //bgeu
  
    endcase
    case(op)
    7'b1100111: PCSrc1 = 1'b1;
    default: PCSrc1 = 1'b0;
    endcase
  end

  //   assign PCSrc = Branch & (Zero ^ funct3[0]) | Jump;
    assign PCSrc0 = (Branch & BranchCondition) | Jump;
    assign PCSrc = {PCSrc1,PCSrc0};

   
endmodule // controller

module maindec (input  logic [6:0] op,
		output logic [1:0] ResultSrc,
		output logic 	   MemWrite, auipcSrc, //added auipcSrc
		output logic 	   Branch, ALUSrc,
		output logic 	   RegWrite, Jump,
		output logic [2:0] ImmSrc,
		output logic [1:0] ALUOp);
   
   logic [12:0] 		   controls; //12 to 13 bits
   
   assign {RegWrite, ImmSrc, ALUSrc, MemWrite,
	   ResultSrc, Branch, ALUOp, Jump, auipcSrc} = controls;
   
   always_comb
     case(op) //controls changed to 13 bits cause aupic
       // RegWrite_ImmSrc_ALUSrc_MemWrite_ResultSrc_Branch_ALUOp_Jump_auipcSrc
       7'b0000011: controls = 13'b1_000_1_0_01_0_00_0_0;  // lw
       7'b0100011: controls = 13'b0_001_1_1_00_0_00_0_0; // sw
       7'b0110011: controls = 13'b1_xxx_0_0_00_0_10_0_0; // R–type
       7'b1100011: controls = 13'b0_010_0_0_00_1_01_0_0; // B-type
       7'b0010011: controls = 13'b1_000_1_0_00_0_10_0_0; // I–type ALU
       7'b1101111: controls = 13'b1_011_0_0_10_0_00_1_0; // jal
       7'b1100111: controls = 13'b1_000_0_0_10_0_00_1_0; // jalr
       7'b0110111: controls = 13'b1_100_1_0_11_0_11_0_0; // lui
       7'b0010111: controls = 13'b1_100_1_0_00_0_00_0_1; // auipc    
       default: controls = 13'bx_xxx_x_x_xx_x_xx_x_x; // ???
     endcase // case (op)s
   
endmodule // maindec

module aludec (input  logic       opb5,
	       input  logic [2:0] funct3,
	       input  logic 	  funct7b5,
	       input  logic [1:0] ALUOp,
	       output logic [3:0] ALUControl); //changed
   
   logic 			  RtypeSub;
   //322
   assign RtypeSub = funct7b5 & opb5; // TRUE for R–type subtract
   always_comb
     case(ALUOp)
       2'b00: ALUControl = 4'b0000; // addition
       2'b01: ALUControl = 4'b0001; // subtraction
       default: case(funct3) // R–type or I–type ALU
		  3'b000: if (RtypeSub)
		    ALUControl = 4'b0001; // sub
		  else
		    ALUControl = 4'b0000; // add, addi
		  3'b010: ALUControl = 4'b0101; // slt, slti
		  3'b110: ALUControl = 4'b0011; // or, ori
		  3'b111: ALUControl = 4'b0010; // and, andi
      3'b100: ALUControl = 4'b0100; // xor, xori
      3'b001: ALUControl = 4'b1000; // sll, slli
      3'b101: if(~funct7b5)
                ALUControl = 4'b1010; // srl, srli
              else
                ALUControl = 4'b1110; //sra, srai
      3'b011: ALUControl = 4'b0110; //sltu, sltiu
		  default: ALUControl = 4'bxxxx; // ???
		endcase // case (funct3)       
     endcase // case (ALUOp)
   
endmodule // aludec


module datapath (input  logic        clk, reset,
		 input  logic [1:0]  ResultSrc,
		 input  logic [1:0]  PCSrc, 
		 input  logic 	     ALUSrc, RegWrite, auipcSrc, //added auipcSrc
		 input  logic [2:0]  ImmSrc,
		 input  logic [3:0]  ALUControl, //changed 3 to 4
		 output logic 	     Zero,
     output logic [2:0]  flags,
		 output logic [31:0] PC,
		 input  logic [31:0] Instr,
		 output logic [31:0] ALUResult, WriteData2, //oailsbfclsaa
		 input  logic [31:0] ReadData,
     input logic         memWrite);
   
   logic [31:0] 		     PCNext, PCPlus4, PCTarget;
   logic [31:0] 		     ImmExt;
   logic [31:0] 		     SrcA, SrcB;
   logic [31:0] 		     Result;
   logic [31:0]          Data;
   logic [31:0]          rd1;
   logic [31:0]          jalrTarget; // new
   logic [31:0]          WriteData; // hmpghf

   assign jalrTarget = (SrcA + ImmExt); // changed rd1 from SrcA
   // next PC logic
   flopr #(32) pcreg (clk, reset, PCNext, PC);
   adder  pcadd4 (PC, 32'd4, PCPlus4);
   adder  pcaddbranch (PC, ImmExt, PCTarget);
   mux3 #(32)  pcmux (PCPlus4, PCTarget, jalrTarget, PCSrc, PCNext); // changed from mux2 pcmux (PCPlus4, PCTarget, PCSrc, PCNext);
   // register file logic
   regfile  rf (clk, RegWrite, Instr[19:15], Instr[24:20],
	       Instr[11:7], Result, rd1, WriteData); //changed SrcA to rd1
   extend  ext (Instr[31:7], ImmSrc, ImmExt);
   // ALU logic
   mux2 #(32)  srcamux (rd1, PC, auipcSrc, SrcA); //mux for SrcA
   mux2 #(32)  srcbmux (WriteData, ImmExt, ALUSrc, SrcB);
   alu  alu (SrcA, SrcB, ALUControl, ALUResult, Zero, flags);
   mux4 #(32) resultmux (ALUResult, Data, PCPlus4, ImmExt , ResultSrc, Result);
   
   // Load logic
   load load (RegWrite, ALUSrc, ResultSrc, ReadData, ALUResult, Instr[14:12], Data);
   store store (memWrite, Instr[14:12], ALUResult, Data, WriteData, WriteData2);


   
endmodule // datapath

module load (input logic RegWrite, ALUSrc,
input logic [1:0] ResultSrc,
input logic [31:0] ReadData, 
input logic [31:0] dataAdr, 
input logic [2:0] funct3,
output logic [31:0] Data);



always_comb

if (RegWrite & ALUSrc & ResultSrc[0] & (~ResultSrc[1])) begin
  case(funct3)
  3'b000: // lb
  case(dataAdr[1:0])
  2'b00: Data = {{24{ReadData[7]}}, ReadData[7:0]};
  2'b01: Data = {{24{ReadData[15]}}, ReadData[15:8]};
  2'b10: Data = {{24{ReadData[23]}}, ReadData[23:16]};
  2'b11: Data = {{24{ReadData[31]}}, ReadData[31:24]};
  endcase

  3'b001: // lh
  case(dataAdr[1])
  1'b0: Data = {{16{ReadData[15]}}, ReadData[15:0]};
  1'b1: Data = {{16{ReadData[31]}}, ReadData[31:16]};
  endcase

  3'b010: // lw
  Data = ReadData;

  3'b100: // lbu
  case(dataAdr[1:0])
  2'b00: Data = {{24'b0}, ReadData[7:0]};
  2'b01: Data = {{24'b0}, ReadData[15:8]};
  2'b10: Data = {{24'b0}, ReadData[23:16]};
  2'b11: Data = {{24'b0}, ReadData[31:24]};
  endcase

  3'b101: // lhu
  case(dataAdr[1])
  1'b0: Data = {{16'b0}, ReadData[15:0]};
  1'b1: Data = {{16'b0}, ReadData[31:16]};
  endcase

  default: 
  Data = ReadData;

  endcase
end
else begin
  Data = ReadData;
end

endmodule // load

module store (input logic memWrite, 
input logic [2:0] funct3,
input logic [31:0] dataAdr, ReadData, WriteData,
output logic [31:0] WriteData2);

always_comb 
if (memWrite)begin
  case(funct3)
  3'b000:
  case(dataAdr[1:0])
  2'b00: WriteData2 = {{ReadData[31:8]}, WriteData[7:0]};
  2'b01: WriteData2 = {{ReadData[31:16]}, WriteData[7:0], ReadData[7:0]};
  2'b10: WriteData2 = {{ReadData[31:24]}, WriteData[7:0], ReadData[15:0]};
  2'b11: WriteData2 = {{WriteData[7:0]}, ReadData[23:0]};
  endcase // sb

  3'b001:
  case(dataAdr[1])
  1'b0: WriteData2 = {{ReadData[31:16]}, WriteData[15:0]};
  1'b1: WriteData2 = {WriteData[15:0], {ReadData[15:0]}};
  endcase //sh

  3'b010:
  WriteData2 = WriteData; //sw

  default:
  WriteData2 = WriteData;
endcase
end
else begin
WriteData2 = WriteData;
end


endmodule

module adder (input  logic [31:0] a, b,
	      output logic [31:0] y);
   
   assign y = a + b;
   
endmodule

module extend (input  logic [31:7] instr,
	       input  logic [2:0]  immsrc,
	       output logic [31:0] immext);
   
   always_comb
     case(immsrc)
       // I−type
       3'b000:  immext = {{20{instr[31]}}, instr[31:20]};
       // S−type (stores)
       3'b001:  immext = {{20{instr[31]}}, instr[31:25], instr[11:7]};
       // B−type (branches)
       3'b010:  immext = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};       
       // J−type (jal)
       3'b011:  immext = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
       // U-type (lui)
       3'b100:  immext = {instr[31:12], 12'b0};
       default: immext = 32'bx; // undefined
     endcase // case (immsrc)
   
endmodule // extend

module flopr #(parameter WIDTH = 8)
   (input  logic             clk, reset,
    input logic [WIDTH-1:0]  d,
    output logic [WIDTH-1:0] q);
   
   always_ff @(posedge clk, posedge reset)
     if (reset) q <= 0;
     else  q <= d;
   
endmodule // flopr

module flopenr #(parameter WIDTH = 8)
   (input  logic             clk, reset, en,
    input logic [WIDTH-1:0]  d,
    output logic [WIDTH-1:0] q);
   
   always_ff @(posedge clk, posedge reset)
     if (reset)  q <= 0;
     else if (en) q <= d;
   
endmodule // flopenr

module mux2 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1,
    input logic 	     s,
    output logic [WIDTH-1:0] y);
   
  assign y = s ? d1 : d0;
   
endmodule // mux2

module mux3 #(parameter WIDTH = 8)
   (input  logic [WIDTH-1:0] d0, d1, d2,
    input logic [1:0] 	     s,
    output logic [WIDTH-1:0] y);
   
  assign y = s[1] ? d2 : (s[0] ? d1 : d0);
   
endmodule // mux3

module mux4 #(parameter WIDTH = 8)
    (input logic [WIDTH-1:0] d0, d1, d2, d3,
     input logic [1:0]       s,
     output logic [WIDTH-1:0] y);

  assign y = s[1] ? (s[0] ? d3 : d2) : (s[0] ? d1 : d0);

endmodule // mux4

module top (input  logic        clk, reset,
	    output logic [31:0] WriteData, DataAdr,
	    output logic 	MemWrite);
   
   logic [31:0] 		PC, Instr, ReadData;
   
   // instantiate processor and memories
   riscvsingle rv32single (clk, reset, PC, Instr, MemWrite, DataAdr,
			   WriteData, ReadData);
   imem imem (PC, Instr);
   dmem dmem (clk, MemWrite, DataAdr, WriteData, ReadData);
   
endmodule // top

module imem (input  logic [31:0] a,
	     output logic [31:0] rd);
   
   logic [31:0] 		 RAM[2047:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   
endmodule // imem

module dmem (input  logic        clk, we,
	     input  logic [31:0] a, wd,
	     output logic [31:0] rd);
   
   logic [31:0] 		 RAM[2047:0];
   
   assign rd = RAM[a[31:2]]; // word aligned
   always_ff @(posedge clk)
     if (we) RAM[a[31:2]] <= wd;
   
endmodule // dmem


module alu (input  logic [31:0] a, b,
            input  logic [3:0] 	alucontrol, //changed to 4 bits
            output logic [31:0] result,
            output logic 	zero, 
            output logic [2:0] flags); // overflow ,carry, negative

   logic [31:0] 	       condinvb, sum;
   logic [32:0]           carryCheck;
   logic 		       isAddSub;       // true when is add or subtract operation
   logic  carrySum;
   logic ovf, neg, car;

   assign condinvb = alucontrol[0] ? ~b : b;
   assign carryCheck = a + condinvb + alucontrol[0];
   assign sum = {carryCheck[31:0]};
   assign carrySum = a[31] & condinvb[31];
   assign isAddSub = ~alucontrol[3] & ~alucontrol[2] & ~alucontrol[1] & ~alucontrol[0] |
                     ~alucontrol[3] & ~alucontrol[2] & ~alucontrol[1] & alucontrol[0];   

   always_comb
     case (alucontrol) // changed all to 4 bits so we can fit more in the alu
       4'b0000:  result = sum;         // add
       4'b0001:  result = sum;         // subtract
       4'b0010:  result = a & b;       // and
       4'b0011:  result = a | b;       // or
       4'b0100:  result = a ^ b;       //xor
       4'b0101:  result = sum[31] ^ ovf; // slt
       4'b0110:  result = a < b; // sltu
       4'b0111:  result = b;             //lui
       4'b1000:  result = a << b[4:0]; //sll
       4'b1010:  result = a >> b[4:0]; //srl
       4'b1110:  result = signed'(a) >>> b[4:0]; //sra
       default: result = 32'bx;
     endcase

  // flags
   assign zero = (result == 32'b0);
   assign ovf = ~(alucontrol[0] ^ a[31] ^ b[31]) & (a[31] ^ sum[31]) & isAddSub;
   assign neg = result[31];
   assign car = carryCheck[32];
   assign flags = {ovf, car, neg};
   
endmodule // alu

module regfile (input  logic        clk, 
		input  logic 	    we3, 
		input  logic [4:0]  a1, a2, a3, 
		input  logic [31:0] wd3, 
		output logic [31:0] rd1, rd2);

   logic [31:0] 		    rf[31:0];

   // three ported register file
   // read two ports combinationally (A1/RD1, A2/RD2)
   // write third port on rising edge of clock (A3/WD3/WE3)
   // register 0 hardwired to 0

   always_ff @(posedge clk)
     if (we3) rf[a3] <= wd3;	

   assign rd1 = (a1 != 0) ? rf[a1] : 0;
   assign rd2 = (a2 != 0) ? rf[a2] : 0;
   
endmodule // regfile