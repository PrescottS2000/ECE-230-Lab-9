module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);

    always @(data, store)
        if (store)
            memory <= data;




endmodule
