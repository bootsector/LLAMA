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
*
*
* This module was created based in the following work (MIT License):
* 
* HDL implementation of Low-Latency API protocol
* https://github.com/Kitrinx/LLAPI/blob/master/LLIO.sv
* Copyright 2019 Jamie Dickson aka Kitrinx
*/

#ifndef _LLIO_OUT_H_
#define _LLIO_OUT_H_

void llio_out_init(void);
void llio_out_send(void);

#endif