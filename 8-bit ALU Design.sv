// 8-bit ALU Design
module alu8 (
    input [7:0] A,     // First number
    input [7:0] B,     // Second number
    input [2:0] op,    // Operation selector (3 bits)
    output reg [7:0] result,  // Result
    output reg carry,         // Carry flag
    output reg zero           // Zero flag
);

    always @(*) begin
        carry = 0;
        case(op)
            3'b000: {carry, result} = A + B;       // Addition
            3'b001: {carry, result} = A - B;       // Subtraction
            3'b010: result = A & B;                // AND
            3'b011: result = A | B;                // OR
            3'b100: result = A ^ B;                // XOR
            3'b101: result = ~(A);                 // NOT A
            3'b110: result = A << 1;               // Left shift A
            3'b111: result = A >> 1;               // Right shift A
            default: result = 8'b00000000;
        endcase

        // Zero flag
        if (result == 8'b00000000)
            zero = 1;
        else
            zero = 0;
    end
endmodule
