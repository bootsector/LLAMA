/* 
* LLOAD - Low Latency Open Adapter for MiSTer FPGA
*
* Copyright (c) 2019
* Bruno Freitas - bruno@brunofreitas.com - http://www.brunofreitas.com/
*
* HDL implementation of Low-Latency API protocol
* 
* Copyright 2019 Jamie Dickson aka Kitrinx
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
* documentation files (the "Software"), to deal in the Software without restriction, including without limitation
* the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all copies or substantial portions
* of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
* TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
* CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
* IN THE SOFTWARE.
*/

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include <string.h>

#include "LLIO.h"

#include "LLIO_Out.h"
#include "Util.h"

#define LLIO_BUFFER_SIZE 13

uint8_t llio_buffer[LLIO_BUFFER_SIZE];
volatile uint8_t llio_buffer_size;

extern volatile uint8_t llio_cmd;
extern volatile uint8_t llio_cmd_received;

void LLIO_Init(void) {
	memset(llio_buffer, 0, sizeof(llio_buffer));

	llio_cmd = 0;
	llio_cmd_received = 0;
	llio_buffer_size = LLIO_BUFFER_SIZE;

	// LL_ENABLE detection pin setup (Input - No internal pullup)
	bit_clear(DDRC, 6);
	bit_clear(PORTC, 6);
	
	llio_out_init();

	EICRA |= (1 << ISC01); // Interrupt on falling edge
	EIMSK |= (1 << INT0);  // activates the interrupt

	sei();
}

void LLIO_SetPadData(AbstractPad_t *padData) {
	if (LLIO_LLEnabled()) {
		//TODO: SNES hardcoded. To change this based on the connected joypad!
		llio_buffer[0] = 27;

		padData->x ? bit_set(llio_buffer[1], 1 << 0) : bit_clear(llio_buffer[1], 1 << 0); // Y
		padData->a ? bit_set(llio_buffer[1], 1 << 1) : bit_clear(llio_buffer[1], 1 << 1); // B
		padData->y ? bit_set(llio_buffer[1], 1 << 2) : bit_clear(llio_buffer[1], 1 << 2); // X
		padData->b ? bit_set(llio_buffer[1], 1 << 3) : bit_clear(llio_buffer[1], 1 << 3); // A

		padData->back  ? bit_set(llio_buffer[1], 1 << 4) : bit_clear(llio_buffer[1], 1 << 4); // Select
		padData->start ? bit_set(llio_buffer[1], 1 << 5) : bit_clear(llio_buffer[1], 1 << 5); // Start

		padData->lb ? bit_set(llio_buffer[1], 1 << 6) : bit_clear(llio_buffer[1], 1 << 6); // L
		padData->rb ? bit_set(llio_buffer[1], 1 << 7) : bit_clear(llio_buffer[1], 1 << 7); // R

		padData->d_up    ? bit_set(llio_buffer[2], 1 << 2) : bit_clear(llio_buffer[2], 1 << 2); // Up
		padData->d_down  ? bit_set(llio_buffer[2], 1 << 3) : bit_clear(llio_buffer[2], 1 << 3); // Down
		padData->d_left  ? bit_set(llio_buffer[2], 1 << 4) : bit_clear(llio_buffer[2], 1 << 4); // Left
		padData->d_right ? bit_set(llio_buffer[2], 1 << 5) : bit_clear(llio_buffer[2], 1 << 5); // Down
	} else {
		memset(llio_buffer, 0, sizeof(llio_buffer));
	}
}

void LLIO_ProcessEvent(void) {
	
	// Do nothing if LL is not enabled
	if (!LLIO_LLEnabled()) {
		llio_cmd_received = 0;		
		return;
	}
	
	// Do nothing if latch is pulled low (busy)
	if (!bit_check(PIND, 0)) {
		return;
	}

	// Do nothing if no command received
	if (!llio_cmd_received) {
		return;
	}

	switch (llio_cmd) {
		case 0x00:
			bit_set(DDRD, 0);
			_delay_us(40);
			bit_clear(DDRD, 0);
			break;
		case 0x01:
			llio_out_send();
			break;
		default:
			break;
	}

	llio_cmd_received = 0;
}

uint8_t LLIO_LLEnabled(void) {
	return !bit_check(PINC, 6);
}