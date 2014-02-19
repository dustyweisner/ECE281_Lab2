ECE281_Lab2
==========

The purpose of the ECE 281 Lab 2 was to design, using ISE Project Navigator, a 4-bit adder/subtractor on a Nexys 2 circuit board using the switches as the bits and the LEDs as the outputs. To begin the project, I first had to create a one-bit adder. The schematic of this is hown in the picture below:


![](https://github.com/dustyweisner/ECE281_Lab2/blob/master/Schematic.jpg?raw=true)


The truth table for the one-bit adder was then created to test the waveform produced later.

__*Truth Table*__


|Ain|Bin|Cin|Sum|Cout|
|:--:|:--:|:--:|:--:|:--:|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|


Then, using behavioral properties, the vhdl code was produced for a one-bit adder ([Full_Adder.vhd](https://github.com/dustyweisner/ECE281_Lab2/blob/master/Full_Adder.vhd)). Afterwards, a testbench ([Full_Adder_Test.vhd](https://github.com/dustyweisner/ECE281_Lab2/blob/master/Full_Adder_Test.vhd)) was created to test all 8 outcomes, shown in the waveform below:

__*One-bit Full Adder Behavioral Waveform*__


![](https://github.com/dustyweisner/ECE281_Lab2/blob/master/WaveformLab2.GIF?raw=true)


The behavioral waveform created by the .vhdl file is exactly the same as the outputs for the Truth Table. Every 100 ns, the new outputs (Sum, Cout) in the waveform for all three inputs is exhibited. After testing the one-bit adder, a new vhdl file was created to make a 4-bit adder using four of those one-bit adders and using the input of a button  press to convert the second four-bit number to its twos compliment ([DCW_add_sub.vhd](https://github.com/dustyweisner/ECE281_Lab2/blob/master/DCW_add_sub.vhd)), as shown in the final circuit schematic below:



In the circuit above, each "v" is the full adder designed in the beginning of the lab. Using the one bit adders, I was able to connect the Carryout of each bit to the Carryin of the next bit. A for loop was used to test the four-bit adder, and the following waveform was produced:

__*Four-bit Full Adder Waveform*__


![](https://github.com/dustyweisner/ECE281_Lab2/blob/master/4bitWaveformLab2.GIF?raw=true)

These outputs matched the rules of the addition of two 4-bit binary numbers, so I continued to implement this design

