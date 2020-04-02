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

#ifndef _GENESIS_IN_H_
#define _GENESIS_IN_H_

#include "AbstractPad.h"

#define GENESIS_UP           0
#define GENESIS_DOWN         1
#define GENESIS_LEFT         2
#define GENESIS_RIGHT        3
#define GENESIS_A            6
#define GENESIS_B            4
#define GENESIS_C            5
#define GENESIS_X           10
#define GENESIS_Y            9
#define GENESIS_Z            8
#define GENESIS_START        7
#define GENESIS_MODE        11
#define GENESIS_8BITDO_HOME 12

uint8_t Genesis_In_Init(void);
void Genesis_In_GetPadState(AbstractPad_t *padData);

#endif