module memory_system(
   input [7:0] data,
   input store,
   input [1:0] addr,
   output [7:0] memory
);

    wire [7:0] mem_in0, mem_in1, mem_in2, mem_in3;
    wire store_0, store_1, store_2, store_3;
    wire [7:0] mem_out_0, mem_out_1, mem_out_2, mem_out_3;
    
    
onebitDemux Store(


    .data(store),
    .sel(addr),
    .A(store_0),
    .B(store_1),
    .C(store_2),
    .D(store_3)
    
    );

byte_memory MemZero(
    .data(mem_in0),
    .store(store_0),
    .memory(mem_out_0)
);

byte_memory MemOne(
    .data(mem_in1),
    .store(store_1),
    .memory(mem_out_1)
);

byte_memory MemTwo(
    .data(mem_in2),
    .store(store_2),
    .memory(mem_out_2)
);

byte_memory MemThree(
    .data(mem_in3),
    .store(store_3),
    .memory(mem_out_3)
);

 
demultiplexer Data(
    .data(data),
    .sel(addr),
    .A(mem_in0),
    .B(mem_in1),
    .C(mem_in2),
    .D(mem_in3)
    
    );

Multiplexer Mux(

    .A(mem_out_0),
    .B(mem_out_1),
    .C(mem_out_2),
    .D(mem_out_3),
    .sel(addr),
    .DOut(memory)
    
    
);
                
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule