/*
* LLAMA - Low Lag Amazing MiSTer Adapter
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

#ifndef _SNES_IN_H_
#define _SNES_IN_H_

#include "AbstractPad.h"

#define SNES_B      0
#define SNES_Y      1
#define SNES_SELECT 2
#define SNES_START  3
#define SNES_UP     4
#define SNES_DOWN   5
#define SNES_LEFT   6
#define SNES_RIGHT  7
#define SNES_A      8
#define SNES_X      9
#define SNES_L      10
#define SNES_R      11

#define NES_A       0
#define NES_B       1
#define NES_SELECT  2
#define NES_START   3
#define NES_UP      4
#define NES_DOWN    5
#define NES_LEFT    6
#define NES_RIGHT   7

uint8_t SNES_In_Init(void);
void SNES_In_GetPadState(AbstractPad_t *padData);
void NES_In_GetPadState(AbstractPad_t *padData);

#endif