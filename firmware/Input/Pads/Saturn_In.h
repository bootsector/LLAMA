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

#ifndef _SATURN_IN_H_
#define _SATURN_IN_H_

#include "AbstractPad.h"

#define SATURN_UP       8
#define SATURN_DOWN     9
#define SATURN_LEFT     10
#define SATURN_RIGHT    11
#define SATURN_A        6
#define SATURN_B        4
#define SATURN_C        5
#define SATURN_X        2
#define SATURN_Y        1
#define SATURN_Z        0
#define SATURN_START    7
#define SATURN_L        12
#define SATURN_R        3

uint8_t Saturn_In_Init(void);
void Saturn_In_GetPadState(AbstractPad_t *padData);

#endif