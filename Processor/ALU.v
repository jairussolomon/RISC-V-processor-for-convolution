/*
ALU module, which takes two operands of size 32-bits each and a 4-bit ALU_control as input.
Operation is performed on the basis of ALU_control value and output is 32-bit ALU_result. 
If the ALU_result is zero, a ZERO FLAG is set.
*/

/*
ALU Control lines | Function
-----------------------------
        0000    Bitwise-AND
        0001    Bitwise-OR
        0010	Add (A+B)
        0100	Subtract (A-B)
        1000	Set on less than
        0011    Shift left logical
        0101    Shift right logical
        0110    Multiply
        0111    Bitwise-XOR
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
	1111	Convolution
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
*/

module ALU (
    input [31:0] in1,in2, 
    input[3:0] alu_control,
    output reg [31:0] alu_result,
    output reg zero_flag
);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

wire [31:0] convol_res;

convol_32bit convol(
	.A(in1),
	.B(in2),
	.(convol_res));

>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
    always @(*)
    begin
        // Operating based on control input
        case(alu_control)

        4'b0000: alu_result = in1&in2;
        4'b0001: alu_result = in1|in2;
        4'b0010: alu_result = in1+in2;
        4'b0100: alu_result = in1-in2;
        4'b1000: begin 
            if(in1<in2)
            alu_result = 1;
            else
            alu_result = 0;
        end
        4'b0011: alu_result = in1<<in2;
        4'b0101: alu_result = in1>>in2;
        4'b0110: alu_result = in1*in2;
        4'b0111: alu_result = in1^in2;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
	4'b1111: alu_result = convol_res;
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)

        endcase

        // Setting Zero_flag if ALU_result is zero
        if (alu_result == 0)
            zero_flag = 1'b1;
        else
            zero_flag = 1'b0;
        
    end
<<<<<<< HEAD
endmodule
=======
<<<<<<< HEAD
endmodule
=======
endmodule
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
