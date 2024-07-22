`include "./../Register file/REG_FILE.v"
`include "./../ALU/ALU.v"

module DATAPATH(
<<<<<<< HEAD
    input [4:0]read_reg_num1,
    input [4:0]read_reg_num2,
    input [4:0]write_reg,
=======
<<<<<<< HEAD
    input [4:0]read_reg_num1,
    input [4:0]read_reg_num2,
    input [4:0]write_reg,
=======
    input [4:0]rs1,
    input [4:0]rs2,
    input [4:0]rd,
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
    input [3:0]alu_control,
    input regwrite,
    input clock,
    input reset,
    output zero_flag
);

    // Declaring internal wires that carry data
    wire [31:0]read_data1;
    wire [31:0]read_data2;
    wire [31:0]write_data;

    // Instantiating the register file
    REG_FILE reg_file_module(
<<<<<<< HEAD
    read_reg_num1,
    read_reg_num2,
    write_reg,
=======
<<<<<<< HEAD
    read_reg_num1,
    read_reg_num2,
    write_reg,
=======
    rs1,
    rs2,
    rd,
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
    write_data,
    read_data1,
    read_data2,
    regwrite,
    clock,
    reset
    );

    // Instanting ALU
    ALU alu_module(read_data1, read_data2, alu_control, write_data, zero_flag);
	 
<<<<<<< HEAD
endmodule
=======
<<<<<<< HEAD
endmodule
=======
endmodule
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
