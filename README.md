LLOAD - Low Latency Open Adapter for MiSTer FPGA

This is an open-source / open-hardware controllers adapter for MiSTer FPGA.

Supported outputs are both USB (XInput) and LLAPI.

This is WIP! I'm waiting for the prototype boards to arrive in order to test
everything.

32U4 module designs include gerber files and SeeedStudio BOM file for Fusion
PCB Assembly service.

To-do list:

- Convert the LLOAD main PCB and the 32U4 module PCBs into an all-in-one MiSTer
friendly PCB

- Prototype boards will always be DIY friendly - Create a version that accepts
an Arduino Micro (32U4 based) module

- Embed USB hub circuitry to the all-in-one PCB

- Design HDMI to DB15 PCB adapters for BB cables

- Lots of stuff related to input to be implemented (auto-detection, other 
controllers support, etc...)
