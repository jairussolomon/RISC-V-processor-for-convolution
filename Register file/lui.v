// This module lui, is used to load data in a specific register
// when thisop code is 0110111




module lui (
       input [31:0] instr,
       input clk,
       output [15:0] data
);


reg [15:0] data;
reg [6:0] opcode;
reg [4:0] rd;

assign data = instr[27:12];
assign opcode = instr[6:0];
assign rd = instr[11:7];

always @(posedge reset)
    begin
	 reg_memory[0] = 32'h0;
         reg_memory[1] = 32'h0;
         reg_memory[2] = 32'h0;
         reg_memory[3] = 32'h0;
         reg_memory[4] = 32'h0;
         reg_memory[5] = 32'h0;
         reg_memory[6] = 32'h0;
         reg_memory[7] = 32'h0;
         reg_memory[8] = 32'h0;
         reg_memory[9] = 32'h0;
         reg_memory[10] = 32'h0;
         reg_memory[11] = 32'h0;
         reg_memory[12] = 32'h0;
         reg_memory[13] = 32'h0;
         reg_memory[14] = 32'h0;
         reg_memory[15] = 32'h0;
         reg_memory[16] = 32'h0;
         reg_memory[17] = 32'h0;
         reg_memory[18] = 32'h0;
         reg_memory[19] = 32'h0;
         reg_memory[20] = 32'h0;
         reg_memory[21] = 32'h0;
         reg_memory[22] = 32'h0;
         reg_memory[23] = 32'h0;
         reg_memory[24] = 32'h0;
         reg_memory[25] = 32'h0;
	 reg_memory[26] = 32'h0;
         reg_memory[27] = 32'h0;
         reg_memory[28] = 32'h0;
         reg_memory[29] = 32'h0;
         reg_memory[30] = 32'h0;
         reg_memory[31] = 32'h0;

    end


always @ (posedge clk) begin
	if (opcode == 0110111)
		assign reg_memory[rd] = data;
	end
end
endmodule

