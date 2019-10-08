/*
* LLOAD - Low Latency Open Adapter for MiSTer FPGA
*
* Copyright (c) 2019
* Bruno Freitas - bruno@brunofreitas.com - http://www.brunofreitas.com/
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef _INPUT_H_
#define _INPUT_H_

#include "AbstractPad.h"

#define DB15_PAD_GENESIS    0b0000
#define DB15_PAD_RESERVED1  0b0001
#define DB15_PAD_NES        0b0010
#define DB15_PAD_SNES       0b0011
#define DB15_PAD_RESERVED2  0b0100
#define DB15_PAD_RESERVED3  0b0101
#define DB15_PAD_RESERVED4  0b0110
#define DB15_PAD_SATURN     0b0111
#define DB15_PAD_RESERVED5  0b1000
#define DB15_PAD_TG16       0b1001
#define DB15_PAD_RESERVED6  0b1010
#define DB15_PAD_RESERVED7  0b1011
#define DB15_PAD_RESERVED8  0b1100
#define DB15_PAD_RESERVED9  0b1101
#define DB15_PAD_RESERVED10 0b1110
#define DB15_PAD_NEOGEO     0b1111

void Input_Init(void);
void Input_GetPadState(AbstractPad_t *padData);

#endif