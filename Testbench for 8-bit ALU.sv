// Testbench for 8-bit ALU
module tb_alu8();
    reg [7:0] A, B;
    reg [2:0] op;
    wire [7:0] result;
    wire carry, zero;
​
    // Instantiate ALU
    alu8 myALU(A, B, op, result, carry, zero);
​
    initial begin
        $display("Time |   A      B     op   | Result  Carry Zero");
        $display("----------------------------------------------");
​
        // Test different operations
        A = 8'b00001010; B = 8'b00000011; op = 3'b000; #10; // Add
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000011; op = 3'b001; #10; // Sub
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000011; op = 3'b010; #10; // AND
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000011; op = 3'b011; #10; // OR
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000011; op = 3'b100; #10; // XOR
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000000; op = 3'b101; #10; // NOT A
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000000; op = 3'b110; #10; // Shift left
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        A = 8'b00001010; B = 8'b00000000; op = 3'b111; #10; // Shift right
        $display("%4t | %b %b %b | %b     %b     %b", $time, A, B, op, result, carry, zero);
​
        $finish;
    end
endmodule
​