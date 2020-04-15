**LLAMA - Low Lag Amazing MiSTer Adapter**

This is an open-source / open-hardware controllers adapter for MiSTer FPGA.

Supported outputs are both USB (XInput) and MiSTer's [LLAPI](https://github.com/Kitrinx/LLAPI/blob/master/LLIO.sv) interface.

32U4 module designs include gerber files and SeeedStudio BOM file for Fusion
PCB Assembly service.

LLAMA currently supports original controllers for the systems below:

- Neo Geo / Neo Geo CD (**NOT compatible with SuperGun DB15 based controllers** )
- Super NES
- NES
- TurboGrafx-16 / PC Engine
- Sega Saturn
- Sega Genesis / Master System / Atari 2600 and compatibles

**Latency Measurements**
| Controller | Samples | Average | Max     | Min   | Std Dev |
| ---------- | ------- | ------- | --------| ----- | ------- |
| LLOAD USB  | 2000    |1.6996ms |2.224ms  |1.188ms| 0.289ms


**Button Mapping**

It's possible to map buttons for each supported joystick. Button mapping is done
based on an index that maps to buttons of the internal abstract pad 
(XInput-like).

Mapping is fully customized by the user. Planning your mapping can be done with
the help of the mapper/LLAMA Mapping.xlsx spreadsheet. Change the buttons of
the supported pads in the "Input" area by selecting them from list boxes. You
can see how those mappings affect output for XInput (USB) and also LLAPI cores
by checking the "Output" area of the spreadsheet.

After setting the mappings in the spreadsheet, simply use the numbers inside
parenthesis for each button of each controller in the ```<profile>``` section of
the mapper/map.xml file. There are two profiles per controller. You just
apply the numbers at the same order they read from the spreadsheet to the
chosen controller profile.

After finishing the changes inside mapper/map.xml file, run the 
mapper/mapper.py application (tested only on Python 2.7). 

```
cd mapper
python mapper.py
```

You should probably
need to install intelhex package via pip beforehand.

```pip install intelhex```

The above will convert map.xml to a file named map.eep. This should be 
flashed into AVR's EEPROM like this:

```dfu-programmer atmega32u4 flash --eeprom map.eep --force```

Mapping is not mandatory. The firmware will save the defaults to EEPROM by
itself the first time it runs if no valid mapping/config is found.

Each controller has two mapping profiles. Below you can find the button
combination on each controller that will switch mapping profiles:

NeoGeo: Down + Start + B

NES: Down + Start + A

SNES: Down + Start + A

Saturn: Down + Start + C

TG16/PCE: Down + Start + I

Genesis: Down + Start + C

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
