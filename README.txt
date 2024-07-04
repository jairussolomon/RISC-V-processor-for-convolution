This is a simple 32-bit RISC-V processor that has an ALU and also capable to perform convolution of two signals.  


Here we have used the custom instruction with 
opcode - 0001011
funct7 = 0
funct3 = 0 

This is an R-Type RISV-V ISA 
Therefore the instruction set for convolution will be 
funct7  rs2  rs1  funct3 rd opcode 

Therefore in our scenario it will be

00000000  rs2 rs1  000  rd  0001011


