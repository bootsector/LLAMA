# LLOAD - Low Latency Open Adapter for MiSTer FPGA
#
# Copyright (c) 2019
# Bruno Freitas - bruno@brunofreitas.com - http://www.brunofreitas.com/
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

MCU          = atmega32u4
ARCH         = AVR8
F_CPU        = 16000000
F_USB        = $(F_CPU)
OPTIMIZATION = s
TARGET       = LLOAD
SRC          = main.c \
Output/USB/Descriptors.c Output/USB/XInputPad.c Output/LLIO/LLIO_In.S \
Output/LLIO/LLIO_Out.S Output/LLIO/LLIO.c System/AbstractPad.c \
Output/Output.c Input/Input.c \
$(LUFA_SRC_USB)
LUFA_PATH    = ../shared/LUFA
CC_FLAGS     = -DUSE_LUFA_CONFIG_HEADER -IConfig/ -ISystem/ -IOutput/USB \
-IOutput/LLIO -IOutput/ -IInput/
LD_FLAGS     =

AVRDUDE_PROGRAMMER	= avr109
AVRDUDE_PORT	= /dev/tty.usbmodem1411
AVRDUDE_FLAGS	= -C "/usr/local/etc/avrdude.conf"

# Default target
all:

# Include LUFA build script makefiles
include $(LUFA_PATH)/Build/lufa_core.mk
include $(LUFA_PATH)/Build/lufa_sources.mk
include $(LUFA_PATH)/Build/lufa_build.mk
include $(LUFA_PATH)/Build/lufa_cppcheck.mk
include $(LUFA_PATH)/Build/lufa_doxygen.mk
include $(LUFA_PATH)/Build/lufa_dfu.mk
include $(LUFA_PATH)/Build/lufa_hid.mk
include $(LUFA_PATH)/Build/lufa_avrdude.mk
include $(LUFA_PATH)/Build/lufa_atprogram.mk