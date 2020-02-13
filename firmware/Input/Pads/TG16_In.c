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
#include <util/delay.h>

#include "TG16_In.h"
#include "Util.h"

static uint8_t pad_id;

uint8_t TG16_In_Init(void) {
	// Configure Data pins
	bit_clear(DDRF, 1 << 6);
	bit_set(PORTF, 1 << 6);

	bit_clear(DDRF, 1 << 1);
	bit_set(PORTF, 1 << 1);

	bit_clear(DDRF, 1 << 4);
	bit_set(PORTF, 1 << 4);

	bit_clear(DDRF, 1 << 5);
	bit_set(PORTF, 1 << 5);

	// Configure Data Select and /OE pins
	// Data Select
	bit_set(DDRE, 1 << 6);
	bit_set(PORTE, 1 << 6);

	// /OE
	bit_set(DDRC, 1 << 7);
	bit_clear(PORTC, 1 << 7);

	return 1;
}

static uint16_t tg16_read(void) {
	uint16_t retval = 0;

	pad_id = 6;

	// Data Select HIGH
	bit_set(PORTE, 1 << 6);

	// /OE LOW
	bit_clear(PORTC, 1 << 7);

	for(int i = 0; i < 2; i++) {
		// /OE LOW
		bit_clear(PORTC, 1 << 7);
		_delay_us(1);

		// If four directions are low, then it's an Avenue6 Pad
		if(!bit_check(PINF, 6) && !bit_check(PINF, 1) && !bit_check(PINF, 4) && !bit_check(PINF, 5)) {
			// Data Select LOW
			bit_clear(PORTE, 1 << 6);
			_delay_us(1);

			retval |= (!bit_check(PINF, 6) << 8);  // III
			retval |= (!bit_check(PINF, 1) << 9);  // IV
			retval |= (!bit_check(PINF, 4) << 10); // V
			retval |= (!bit_check(PINF, 5) << 11); // VI

			pad_id = 54;
		} else {
			// Normal pad reading
			retval |= (!bit_check(PINF, 6) << 0); // UP
			retval |= (!bit_check(PINF, 1) << 1); // RIGHT
			retval |= (!bit_check(PINF, 4) << 2); // DOWN
			retval |= (!bit_check(PINF, 5) << 3); // LEFT

			// Data Select LOW
			bit_clear(PORTE, 1 << 6);
			_delay_us(1);

			retval |= (!bit_check(PINF, 6) << 4); // I
			retval |= (!bit_check(PINF, 1) << 5); // II
			retval |= (!bit_check(PINF, 4) << 6); // SELECT
			retval |= (!bit_check(PINF, 5) << 7); // RUN
		}

		// Data Select HIGH
		bit_set(PORTE, 1 << 6);

		// /OE HIGH
		bit_set(PORTC, 1 << 7);
	}

	return retval;
}

void TG16_In_GetPadState(AbstractPad_t *padData) {
	uint16_t button_data = tg16_read();

	padData->d_up = bit_check(button_data, TG16_UP);
	padData->d_down = bit_check(button_data, TG16_DOWN);
	padData->d_left = bit_check(button_data, TG16_LEFT);
	padData->d_right = bit_check(button_data, TG16_RIGHT);

	padData->a = bit_check(button_data, TG16_II);
	padData->b = bit_check(button_data, TG16_I);

	padData->x = bit_check(button_data, TG16_IV);
	padData->y = bit_check(button_data, TG16_III);

	padData->lb = bit_check(button_data, TG16_V);
	padData->rb = bit_check(button_data, TG16_VI);

	padData->start = bit_check(button_data, TG16_RUN);
	padData->back = bit_check(button_data, TG16_SELECT);

	padData->menu = padData->back && padData->start;

	padData->pad_id = pad_id;
}