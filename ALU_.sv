`include "config.sv"
`include "constants.sv"

module alu (
    input        [4:0]  alu_function,
    input signed [31:0] operand_a,
    input signed [31:0] operand_b,
    output logic [31:0] result,
    output              result_equal_zero
);
enum { ADD = 1 , SUB = 2 , SLL = 3 , SRL = 4 , SRA = 5 , SEQ = 6 , SLT = 7 , SLTU = 8 , XOR = 9 , OR = 10 , AND = 11 } INST_CODES;
    logic result_equal_zero_;
    assign result_equal_zero = result_equal_zero_;
    always_comb begin
        
        if (alu_function== ADD) begin 
            result = operand_a + operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end      
        end else if(alu_function== SUB)begin
            result = operand_a - operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end        
        end else if(alu_function== SLL)begin 
            result = operand_a << operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end        
        end else if(alu_function== SRL)begin 
            result = operand_a >> operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== SRA)begin 
            result = operand_a >>> operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== SEQ )begin 
            result = (operand_a == operand_b);
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== SLT )begin 
            result = operand_a < operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== SLTU)begin 
            result =  $unsigned(operand_a) < $unsigned(operand_b) ;          
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== XOR)begin 
        result = operand_a ^ operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== OR)begin 
        result = operand_a | operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        
        end else if(alu_function== AND)begin 
        result = operand_a & operand_b;
            if (result==0) begin
                result_equal_zero_=1;
            end else begin
                result_equal_zero_=0;
            end
        end
    end
    
endmodule