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

#ifndef _OUTPUT_H_
#define _OUTPUT_H_

#include "AbstractPad.h"

void Output_Init(void);
void Output_SetPadState(AbstractPad_t *padData);
uint8_t Output_LLEnabled(void);
void Output_SetLLIOCallback(void (*callback)(void));

#endif