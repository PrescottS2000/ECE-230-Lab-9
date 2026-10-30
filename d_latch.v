module d_latch(
    input D, E,
    output reg Q,
    output NotQ
);

    always @(D, E)
        if (E)
            Q <= D;
        
    assign NotQ = ~Q; 
        
        

endmodule