`include "config.sv"
`include "constants.sv"

module instruction_decoder(
    input [31:0] inst,
    output [6:0] inst_opcode,
    output [2:0] inst_funct3,
    output [6:0] inst_funct7,
    output [4:0] inst_rd,
    output [4:0] inst_rs1,
    output [4:0] inst_rs2
);
    logic [6:0] opcode;
	logic[4:0]  rd;
    logic [2:0] funct3;
    logic [4:0] rs1;
    logic [4:0] rs2;
	logic [6:0] funct7;
    
    always_comb begin
        opcode = inst[6:0];
        rd= inst[11:7];
        funct3 = inst[14:12];
        rs1 = inst[19:15];
        rs2 = inst[24:20];
        funct7= inst[31:25];
    end
    assign inst_opcode = opcode;
    assign inst_rd = rd;
    assign inst_funct3 = funct3;
    assign inst_rs1 = rs1;
    assign inst_rs2 = rs2;
    assign inst_funct7 = funct7;

endmodule