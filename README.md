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


#####__*Demos*__
######My notebook was checked and complimented on its neatness by Dr. Neebel
######My 3-bit demo worked and was checked by Dr. Neebel
######My 8-bit demo worked and was checked by Dr. Neebel
