ECE281_CE2
==========

###__*CE2*__


__*.VHD files - Quick Links*__


[Behavioral.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/Behavioral.vhd)  
[CE2.vhd (Testbench)](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/CE2.vhd)  
[CE2_Behavioral.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/CE2_Behavioral.vhd)  
[Decoder_Behavioral_Testbench.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/Decoder_Behavioral_Testbench.vhd)  
[Decoder_Structural_Testbench.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/Decoder_Structural_Testbench.vhd)  
[Inverter.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/Inverter.vhd)  
[and3.vhd](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/and3.vhd)  
[CE2.vhd (Behavioral)](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/Decoder_Behavioral/CE2.vhd)  


__*Truth Table*__


|I0|I1|EN|Y0|Y1|Y2|Y3|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|0|0|0|0|0|0|0|
|0|0|1|1|0|0|0|
|0|1|0|0|0|0|0|
|0|1|1|0|0|1|0|
|1|0|0|0|0|0|0|
|1|0|1|0|1|0|0|
|1|1|0|0|0|0|0|
|1|1|1|0|0|0|1|



__*Behavioral Waveform*__


![](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/Decoder_Behavioral/BehavioralPic.GIF?raw=true)


__*Structural Waveform*__


![](https://github.com/dustyweisner/ECE281_CE2/blob/master/Documents/Xilinx/CE2/Capture.GIF?raw=true)


#####__*Analysis*__


######-The behavioral waveform created by the .vhdl file is exactly the same as the outputs for the structural.
######-Both waveforms are correct because they follow the truth table precisely.
######-Every 100 ns, the new outputs (Y0, Y1, Y2, Y3) in the waveform for all three outputs is exhibited

