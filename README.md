**LLOAD - Low Latency Open Adapter for MiSTer FPGA**

This is an open-source / open-hardware controllers adapter for MiSTer FPGA.

Supported outputs are both USB (XInput) and [LLAPI](https://github.com/Kitrinx/LLAPI/blob/master/LLIO.sv).

32U4 module designs include gerber files and SeeedStudio BOM file for Fusion
PCB Assembly service.

**Licensing:**

- Firmware and bootloader sources are licensed under [GPL-3.0](LICENSE)
- PCBs are licensed under [CC BY-NC-SA 4.0](pcb/LICENSE.txt)

**To-do list:**

- Convert the LLOAD main PCB and the 32U4 module PCBs into an all-in-one MiSTer
friendly PCB. Embed USB hub circuitry to the all-in-one PCB (??)

- Prototype boards will always be DIY friendly - Create a version that accepts
an Arduino Micro (32U4 based) module

- Design HDMI to DB15 PCB adapters for BB cables