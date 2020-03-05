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

#include <avr/io.h>

#include "Input.h"
#include "Output.h"
#include "Util.h"
#include "Config.h"
#include "Mapper.h"

AbstractPad_t PadData_DB15, PadData_Output;

void LLOAD_PadReadCallback(void) {
	Input_GetPadState(&PadData_DB15);
	Mapper_Map();
}

int main(void) {

	// Set clock @ 16Mhz
	CPU_PRESCALE(0);

	// Disable JTAG
	bit_set(MCUCR, 1 << JTD);
	bit_set(MCUCR, 1 << JTD);

	// Load map config
	LLOADConfig_Init();

	// Reset pad data buffers
	AbstractPad_ResetBuffer(&PadData_DB15);
	AbstractPad_ResetBuffer(&PadData_Output);

	// Initialize LLIO and USB interfaces
	Output_Init();

	// Set synchronous pad reading callback for LLIO
	Output_SetLLIOCallback(LLOAD_PadReadCallback);

	// Initialize DB15 interface
	Input_Init();

	// Initialize pad mapping engine
	Mapper_Init(&PadData_DB15, &PadData_Output);

	// Main loop
	for (;;) {
		if (!Output_LLEnabled()) {
			Input_GetPadState(&PadData_DB15);
			Mapper_Map();
		}

		Output_SetPadState(&PadData_Output);
	}
}