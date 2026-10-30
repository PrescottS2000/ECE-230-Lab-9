
module Multiplexer(

input [7:0] A, B, C, D,
input [1:0] sel,
output reg [7:0] DOut

    );
    
        always @(*) begin 
        case(sel)
            2'b00: DOut = A;
            2'b01: DOut = B;
            2'b10: DOut = C;
            2'b11: DOut = D;
        endcase
    end

endmodule
