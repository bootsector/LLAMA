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

#include <avr/io.h>
#include <util/delay.h>

#include "Saturn_In.h"
#include "Util.h"

#define DELAY 7

uint8_t Saturn_In_Init(void) {
	// D1
	bit_clear(DDRF, 1 << 6);
	bit_set(PORTF, 1 << 6);

	// D0
	bit_clear(DDRF, 1 << 0);
	bit_set(PORTF, 1 << 0);

	// D3
	bit_clear(DDRE, 1 << 6);
	bit_set(PORTE, 1 << 6);

	// D2
	bit_clear(DDRC, 1 << 7);
	bit_set(PORTC, 1 << 7);

	// S0
	bit_set(DDRF, 1 << 1);
	bit_set(PORTF, 1 << 1);

	// S1
	bit_set(DDRF, 1 << 5);
	bit_set(PORTF, 1 << 5);

	// D4
	bit_clear(DDRF, 1 << 4);
	bit_set(PORTF, 1 << 4);

	return 1;
}

static uint16_t saturn_read(void) {
	uint16_t retval = 0;

	/*
	* S0	S1		D0	d1	d2	d3
	* On 	On 		- 	- 	- 	L
	* Off 	On 		Up 	Dn 	Lt 	Rt	
	* On 	Off 	B 	C 	A 	St	
	* Off 	Off 	Z 	Y 	X 	R
	* Off 	Off
	*/
	
	// Reading L
	bit_set(PORTF, 1 << 1);
	bit_set(PORTF, 1 << 5);
	_delay_us(DELAY);

	retval |= (!bit_check(PINE, 6) << 12); // L

	// Reading Up, Down, Left, Right
	bit_clear(PORTF, 1 << 1);
	bit_set(PORTF, 1 << 5);
	_delay_us(DELAY);

	retval |= (!bit_check(PINF, 0) << 8); // Up
	retval |= (!bit_check(PINF, 6) << 9); // Down
	retval |= (!bit_check(PINC, 7) << 10); // Left
	retval |= (!bit_check(PINE, 6) << 11); // Right


	// Reading B, C, A and Start
	bit_set(PORTF, 1 << 1);
	bit_clear(PORTF, 1 << 5);
	_delay_us(DELAY);

	retval |= (!bit_check(PINF, 0) << 4); // B
	retval |= (!bit_check(PINF, 6) << 5); // C
	retval |= (!bit_check(PINC, 7) << 6); // A
	retval |= (!bit_check(PINE, 6) << 7); // Start
	
	// Reading Z, Y, X and R
	bit_clear(PORTF, 1 << 1);
	bit_clear(PORTF, 1 << 5);
	_delay_us(DELAY);

	retval |= (!bit_check(PINF, 0) << 0); // Z
	retval |= (!bit_check(PINF, 6) << 1); // Y
	retval |= (!bit_check(PINC, 7) << 2); // X
	retval |= (!bit_check(PINE, 6) << 3); // R
	
	bit_clear(PORTF, 1 << 1);
	bit_clear(PORTF, 1 << 5);
	_delay_us(DELAY);




	return retval;
}

void Saturn_In_GetPadState(AbstractPad_t *padData) {
	uint16_t button_data = saturn_read();

	padData->d_up = bit_check(button_data, SATURN_UP);
	padData->d_down = bit_check(button_data, SATURN_DOWN);
	padData->d_left = bit_check(button_data, SATURN_LEFT);
	padData->d_right = bit_check(button_data, SATURN_RIGHT);

	padData->x = bit_check(button_data, SATURN_A);

	padData->a = bit_check(button_data, SATURN_B);

	padData->b = bit_check(button_data, SATURN_C);

	padData->lb = bit_check(button_data, SATURN_X);

	padData->y = bit_check(button_data, SATURN_Y);

	padData->rb = bit_check(button_data, SATURN_Z);

	padData->lt = bit_check(button_data, SATURN_L) ? 0xFF : 0x00;

	padData->rt = bit_check(button_data, SATURN_R) ? 0xFF : 0x00;

	padData->start = bit_check(button_data, SATURN_START);

	padData->menu = padData->d_up && padData->start;
	padData->back = padData->lt && padData->rt;
}