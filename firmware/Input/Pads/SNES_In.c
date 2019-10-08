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

#include "SNES_In.h"
#include "Util.h"

uint8_t SNES_In_Init(void) {
	// Clock
	bit_set(DDRF, 1 << 6);

	// Latch
	bit_set(DDRF, 1 << 0);

	// Data
	bit_clear(DDRF, 1 << 1);
	bit_set(PORTF, 1 << 1);

	return 1;
}

static uint16_t snes_read(int bits) {
	uint16_t state;

	bit_clear(PORTF, 1 << 0);
	bit_clear(PORTF, 1 << 6);

	bit_set(PORTF, 1 << 0);
	_delay_us(1);
	bit_clear(PORTF, 1 << 0);

	state = bit_check(PINF, 1);

	for(int i = 1; i < bits; i++) {
		bit_set(PORTF, 1 << 6);
		_delay_us(1);
		bit_clear(PORTF, 1 << 6);

		state = state | (bit_check(PINF, 1) << i);
	}

	return ~state;
}

void SNES_In_GetPadState(AbstractPad_t *padData) {
	uint16_t button_data = snes_read(16);

	padData->d_up = bit_check(button_data, SNES_UP);
	padData->d_down = bit_check(button_data, SNES_DOWN);
	padData->d_left = bit_check(button_data, SNES_LEFT);
	padData->d_right = bit_check(button_data, SNES_RIGHT);

	padData->x = bit_check(button_data, SNES_Y);
	padData->a = bit_check(button_data, SNES_B);
	padData->b = bit_check(button_data, SNES_A);
	padData->lb = bit_check(button_data, SNES_L);
	padData->rb = bit_check(button_data, SNES_R);
	padData->y = bit_check(button_data, SNES_X);
	padData->start = bit_check(button_data, SNES_START);
	padData->back = bit_check(button_data, SNES_SELECT);

	padData->menu = padData->back && padData->start;
}

void NES_In_GetPadState(AbstractPad_t *padData) {
	uint16_t button_data = snes_read(8);

	padData->d_up = bit_check(button_data, NES_UP);
	padData->d_down = bit_check(button_data, NES_DOWN);
	padData->d_left = bit_check(button_data, NES_LEFT);
	padData->d_right = bit_check(button_data, NES_RIGHT);

	padData->a = bit_check(button_data, NES_B);
	padData->b = bit_check(button_data, NES_A);
	padData->start = bit_check(button_data, NES_START);
	padData->back = bit_check(button_data, NES_SELECT);

	padData->menu = padData->back && padData->start;
}