**LLOAD - Low Latency Open Adapter for MiSTer FPGA**

This is an open-source / open-hardware controllers adapter for MiSTer FPGA.

Supported outputs are both USB (XInput) and MiSTer's [LLAPI](https://github.com/Kitrinx/LLAPI/blob/master/LLIO.sv) interface.

32U4 module designs include gerber files and SeeedStudio BOM file for Fusion
PCB Assembly service.

LLOAD currently supports original controllers for the systems below:

- Neo Geo / Neo Geo CD (**NOT compatible with SuperGun DB15 based controllers** )
- Super NES
- NES
- TurboGrafx-16 / PC Engine
- Sega Saturn
- Sega Genesis / Master System / Atari 2600 and compatibles

**Licensing:**

- Firmware and bootloader sources are licensed under [GPL-3.0](LICENSE)
- PCBs are licensed under [CC BY-NC-SA 4.0](pcb/LICENSE.txt)

**Disclaimer:**

The firmware source code made available here is an original creation by Bruno 
Freitas. 

The AVR ASM/C implementation of the LLAPI "slave" interface presented here
was created from scratch by Bruno Freitas. MiSTer's LLAPI "master" interface
protocol described [here](https://github.com/Kitrinx/LLAPI/blob/master/LLIO.sv) 
in SystemVerilog has been used as documentation and reference only.

No source code from third parties has been used used by this project.

No reverse-engineering has been done against commercial and non-commercial
products during the development of this project.
