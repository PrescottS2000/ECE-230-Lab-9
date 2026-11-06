# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Stephen Prescott

## Summary

In this lab, I learned the importance of putting the test file into the project folder. Outside of that, and on a more ECE

note, this lab focused on latches, and using them to build a simple memory circuit. The most important base concept here is 

avoiding latch conditions. We do this by implementing an enable switch, and not allowing set and reset to be engaged at 

the same time. 

From there, we implemented an entire memory system, storing 1 byte on one of four different set of D-latches. We designed

the circuit with a mux/demux combo so we can select where we want to send data to and read data from, as well as a demux for

the enable line. The select lines for each mux/demux are shared, as we only need to select one option at a time. This setup

is modular, so we could expand it indefinitely to make the worlds least efficient storage device!

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

We don't just use structural Verilog to implement latches because structural Verilog describes the hardware and connections 

directly. When implementing latches, we are interested not only in their physical layout, but the order in which the order 

*and* current/previous state are important. Using behavioral Verilog allows us to avoid having to manually implement feedback

loops for each latch.

### What is the meaning of always @(\*) in a sensitivity block?

The always @(\*) simply tells the module to execute that block of code utilizing every available input. This means that any 

declared variable or input can be utilized within the block. The always itself allows Verilog to function sequentially when

executing the items inside the block. Normally, it all executes simultaneously, but the always block runs the code in order.

### What importance is memory to digital circuits?

Memory is how we get most of our functionality out of digital circuits. Using memory allows us to execute complex processes

over time, and implement much more complex bits circuits. Even the FPGAs we use in lab would be completely useless without

memory. The memory allows us to implement our code into a discrete package to be recalled at will. The alternative would be

to hard wire in any bit(s) we wanted to store, which would require making and breaking physical connections every time we 

needed to change a single bit.

