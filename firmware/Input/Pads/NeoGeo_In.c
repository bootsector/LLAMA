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

#include "NeoGeo_In.h"
#include "Util.h"

uint8_t NeoGeo_In_Init(void) {
	// DB15P3
	bit_clear(DDRF, 1 << 6);
	bit_set(PORTF, 1 << 6);

	// DB15P4
	bit_clear(DDRF, 1 << 0);
	bit_set(PORTF, 1 << 0);

	// DB15P5
	bit_clear(DDRF, 1 << 1);
	bit_set(PORTF, 1 << 1);

	// DB15P6
	bit_clear(DDRF, 1 << 4);
	bit_set(PORTF, 1 << 4);

	// DB15P7
	bit_clear(DDRF, 1 << 5);
	bit_set(PORTF, 1 << 5);

	// DB15P9
	bit_clear(DDRE, 1 << 6);
	bit_set(PORTE, 1 << 6);

	// DB15P11
	bit_clear(DDRC, 1 << 7);
	bit_set(PORTC, 1 << 7);

	// DB15P12
	bit_clear(DDRB, 1 << 4);
	bit_set(PORTB, 1 << 4);

	// DB15P13
	bit_clear(DDRB, 1 << 5);
	bit_set(PORTB, 1 << 5);

	// DB15P14
	bit_clear(DDRD, 1 << 7);
	bit_set(PORTD, 1 << 7);

	// DB15P15
	bit_clear(DDRB, 1 << 6);
	bit_set(PORTB, 1 << 6);

	return 1;
}

void NeoGeo_In_GetPadState(AbstractPad_t *padData) {
	padData->d_up = !bit_check(PINB, 6);
	padData->d_down = !bit_check(PINF, 5);
	padData->d_left = !bit_check(PIND, 7);
	padData->d_right = !bit_check(PINF, 4);

	padData->back = !bit_check(PINF, 6);
	padData->start = !bit_check(PINC, 7);

	padData->a = !bit_check(PINB, 5);
	padData->b = !bit_check(PINF, 1);
	padData->x = !bit_check(PINB, 4);
	padData->y = (!bit_check(PINF, 0)) || (!bit_check(PINE, 6));

	padData->menu = padData->start && padData->back;

	padData->pad_id = 27; //TODO: Change to NeoGeo pad id
}