These files are used for Laboratory 1 within ECEN 4243 : Computer
Architecture.  

To clone the cvw repository, type:<br>
git clone https://github.com/openhwgroup/cvw.git --recursive


# Section 2
In order to setup the environment, we used the following commands:
<!-- 46  cd Desktop/
   47  git
   48  git clone --recurse-submodules https://github.com/<yourgithubid>/cvw
   49  git clone --recurse-submodules https://github.com/<Kurt-Sewell>/cvw
   51  git clone --recurse-submodules https://github.com/<Kurt-Sewell>/cvw
   52  git clone --recurse-submodules https://github.com/Kurt-Sewell/cvw
   53  cd cvw
   54  source ./setup.sh
   55  echo $WALLY$ -->

# Section 3
 In order to compile and interact with the example files, we used  these commands:
 <!-- cd examples/C/hello
   57  make
   58  wsim --sim questa rv64gc --elf hello
   59  cd $WALLY/examples/asm/example
   60  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany -nostartfiles -T../../link/link.ld example.S
   61  riscv64-unknown-elf-objdump -D example > example.objdump
   62  vim example.objump
   63  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany \
   64  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany -nostartfiles -T../../link/link.ld example.S
   65  cat common/test.ld
   66  cd ..
   67  cd C/common
   68  cd ..
   69  cat common/test.ld
   70  ls
   71  cd ..
   72  cd asm/example
   73  cat Makefile
   74  make
   75  make clean
   76  cd ../sumtest
   77  make
   78  spike +signature=sumtest.output sumtest
   79  diff sumtest.signature.output sumtest.reference_output
   80  ls
   81  spike +signature=sumtest.signature.output sumtest
   82  diff sumtest.signature.output sumtest.reference_output
   83  cat sum.S
   84  makesim
   85  make sim
   86  spike +signature=sumtest.signature.output +signature-granularity=8 sumtest
   87  cat sumtest.signature.output
   88  make clean
   89  make
   90  make sim
   91  cat sumtest.objdump
   92  riscv64-unknown-elf-readelf -a sumtest
   93  cd ..
   94  cd ../C/sum
   95  make 
   96  spike sum
   97  cat sum.c
   98  cat sum
   99  spike sum
  100  wsim --sim questa rv64gc --elf sum
  101  cd ../fir
  102  cat fir.c
  103  history -->

 ## diff sumtest.signature.output sumtest.reference_output
 <!-- 1,2c1,2
 < 000000000000000a
 < 000000000000001d
 ---
 > 000000000000000A
 > 000000000000001D -->

 ## spike sum
 <!-- s = 10
 mcycle = 31
 minstret = 38 -->

 ## wsim --sim questa rv64gc --elf sum
 <!-- s = 10
 mcycle = 80
 minstret = 38 -->

# Part 4:
 fir1 and fir2 are both included. Navigate into either directory and run the file using the make command.










