ECE281_Lab1
===========

###__*Twos Compliment Lab*__


__*Truth Table*__


|A|B|C|X|Y|Z|
|:--:|:--:|:--:|:--:|:--:|:--:|
|0|0|0|0|0|0|
|0|0|1|1|1|1|
|0|1|0|1|1|0|
|0|1|1|1|0|1|
|1|0|0|1|0|0|
|1|0|1|0|1|1|
|1|1|0|0|1|0|
|1|1|1|0|0|1|


__*SOP equations*__


X = (A_NOT)(B) + (A_NOT)(C) + (A)(B_NOT)(C_NOT)  
Y = (B)(C_NOT) + (B_NOT)(C)  
Z = C


__*Schematic*__


![](https://github.com/dustyweisner/ECE281_Lab1/blob/master/logicdesign.jpg?raw=true)


__*Waveform*__


![](https://github.com/dustyweisner/ECE281_Lab1/blob/master/wave.GIF?raw=true)


#####__*Analysis*__


######-The waveform (W) created by the .vhdl file is exactly the same as the outputs (X, Y, Z) in the truth table
######-Every 100 ns, the new outputs(0 or 1) in the waveform for all three outputs is exhibited
######-The 8-bit demo was checked using an online conversion and with the twos compliment TEST CASES (at bottom)


#####__*Demos*__
######My notebook was checked and complimented on its neatness by Dr. Neebel
######My 3-bit demo worked and was checked by Dr. Neebel
######My 8-bit demo worked and was checked by Dr. Neebel


#####__*Debugging*__
######I knew as soon as my bits were working backwards that my .ucf file had the switches backwards. So I changed them.


#####__*Test Cases*__
|CASE #| SWITCH = LED| TRUE/FALSE |
|:--|:--:|:--:|
|Case 1| 0000 0000 = 0000 0000 | TRUE |
|Case 2| 0011 0011 = 1100 1101 | TRUE |
|Case 3| 0101 0101 = 1010 1011 | TRUE |
|Case 4| 1111 1111 = 0000 0001 | TRUE |
|Case 5| 1000 0000 = 1000 1000 | TRUE |
|Case 6| 1111 1110 = 0000 0010 | TRUE |
|Case 7| 0000 0001 = 1111 1111 | TRUE |
|Case 8| 1001 1001 = 0110 0111 | TRUE |
|Case 9| 1010 1010 = 0101 0110 | TRUE |
|Case 10| 1100 1100 = 0011 0100 | TRUE |
