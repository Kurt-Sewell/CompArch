These files are used for Laboratory 0 within ECEN 4243 : Computer
Architecture.  The files can be simulated with any SystemVerilog simulator,
however, are designed to work with Siemens Questa.  To simulate, type
the following at a terminal or in the command prompt while within the tb directory:

    vsim -do fsm.do
	vsim -do regfile.do

The DO file will compile all Verilog files and its associated
testbench.  The files can be modified to run with any SystemVerilog file.

The regfile.sv contains a stub for the 2-port register file (RF) 
associated with Lab 0.  It should be modified to handle its behavior.
The fsm_tb.sv and fsm.do should be modified to simulate the register
file.  For more information on a register file see Chapter 5 in DDCA.  


DESC:
	In this lab we edited the fsm test bench file to ensure that it runs corrrectly.
	Then we wrote a register file that supports two concurrent reads and one write when 
	write is enabled. We then wrote a test bench that tested the following cases:
	
	1. Trying to write data while write Enable is low.
	2. Writing data to an address.
	3. Reading from address 0.
	4. Reading from two addresses at the same time.
	
