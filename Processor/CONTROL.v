<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
/* 
Control unit controls takes opcode, funct7, funct3 of the instruction code to determine
and control regwrite in IFU, alu control in ALU to execute proper instruction
*/
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
module CONTROL(
    input [6:0] funct7,
    input [2:0] funct3,
    input [6:0] opcode,
    output reg [3:0] alu_control,
    output reg regwrite_control
);
    always @(funct3 or funct7 or opcode)
    begin
        if (opcode == 7'b0110011) begin // R-type instructions

            regwrite_control = 1;

            case (funct3)
                0: begin
                    if(funct7 == 0)
                    alu_control = 4'b0010; // ADD
                    else if(funct7 == 32)
                    alu_control = 4'b0100; // SUB
                end
                6: alu_control = 4'b0001; // OR
                7: alu_control = 4'b0000; // AND
                1: alu_control = 4'b0011; // SLL
                5: alu_control = 4'b0101; // SRL
<<<<<<< HEAD
				2: alu_control = 4'b0110; // MUL
				4: alu_control = 4'b0111; // XOR
=======
<<<<<<< HEAD
				2: alu_control = 4'b0110; // MUL
				4: alu_control = 4'b0111; // XOR
=======
		2: alu_control = 4'b0110; // MUL
		4: alu_control = 4'b0111; // XOR
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
            endcase

      end

<<<<<<< HEAD
    end

endmodule
=======
<<<<<<< HEAD
    end

endmodule
=======
      if (opcode == 7'b0001011) begin // Custom Instruction for Convolution
	      
	      regwrite_control = 1;

	      case(funct3)
		      3'b000: begin 
		      		if (funct7 == 0)
			      	alu_control = 4'b1111; // Convolution;
				end
		endcase
	end
    end

endmodule
>>>>>>> b43aa6a (v1.1.0)
>>>>>>> 234b0e2 (v1.1.0)
