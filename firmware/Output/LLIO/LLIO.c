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
#include <avr/interrupt.h>
#include <util/delay.h>

#include <string.h>

#include "LLIO.h"

#include "LLIO_Out.h"
#include "Util.h"

#define LLIO_BUFFER_SIZE 13

static void (*cbPtr)(void) = NULL;

uint8_t llio_buffer[LLIO_BUFFER_SIZE];
volatile uint8_t llio_buffer_size;

extern volatile uint8_t llio_cmd;
extern volatile uint8_t llio_cmd_received;

static const uint8_t hat_lut[16] = {8, 2, 6, 8, 4, 3, 5, 8, 0, 1, 7, 8, 8, 8, 8, 8};

void LLIO_Init(void) {
	LLIO_ClearPadData();

	llio_cmd = 0;
	llio_buffer_size = LLIO_BUFFER_SIZE;

	// LL_ENABLE detection pin setup (Input - No internal pullup)
	bit_clear(DDRC, 1 << 6);
	bit_clear(PORTC, 1 << 6);
	
	llio_out_init();

	EICRA |= (1 << ISC01); // Interrupt on falling edge
	EIMSK |= (1 << INT0);  // activates the interrupt

	sei();
}

void LLIO_SetCallback(void (*cb)(void)) {
	cbPtr = cb;
}

void LLIO_ClearPadData(void) {
	memset(llio_buffer, 0, sizeof(llio_buffer));

	// Analog axis default values
	llio_buffer[4] = 0x7F;
	llio_buffer[5] = 0x7F;
	llio_buffer[6] = 0x7F;
	llio_buffer[7] = 0x7F;
	llio_buffer[8] = 0x7F;
	llio_buffer[9] = 0x7F;

	// Hat default value
	llio_buffer[12] = 0x08;

	llio_cmd_received = 0;
}

void LLIO_SetPadData(AbstractPad_t *padData) {
	//TODO: SNES hardcoded. To change this based on the connected joypad!
	llio_buffer[0] = 27;

	padData->x ? bit_set(llio_buffer[1], 1 << 2) : bit_clear(llio_buffer[1], 1 << 2); // Y
	padData->a ? bit_set(llio_buffer[1], 1 << 0) : bit_clear(llio_buffer[1], 1 << 0); // B
	padData->y ? bit_set(llio_buffer[1], 1 << 3) : bit_clear(llio_buffer[1], 1 << 3); // X
	padData->b ? bit_set(llio_buffer[1], 1 << 1) : bit_clear(llio_buffer[1], 1 << 1); // A

	padData->back  ? bit_set(llio_buffer[1], 1 << 4) : bit_clear(llio_buffer[1], 1 << 4); // Select
	padData->start ? bit_set(llio_buffer[1], 1 << 5) : bit_clear(llio_buffer[1], 1 << 5); // Start

	padData->lb ? bit_set(llio_buffer[1], 1 << 6) : bit_clear(llio_buffer[1], 1 << 6); // L
	padData->rb ? bit_set(llio_buffer[1], 1 << 7) : bit_clear(llio_buffer[1], 1 << 7); // R

	padData->menu ? bit_set(llio_buffer[3], 1 << 7) : bit_clear(llio_buffer[3], 1 << 7); // Home button

	llio_buffer[12] = hat_lut[padData->d_up << 3 | padData->d_down << 2 |
			padData->d_left << 1 | padData->d_right];
}

void LLIO_ProcessEvent(AbstractPad_t *padData) {
	
	// Do nothing if LL is not enabled
	if (!LLIO_LLEnabled()) {		
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
			DDRD |= (0x03);
			
			if (cbPtr) {
				cbPtr();
			}
			
			LLIO_SetPadData(padData);
			
			DDRD &= ~(0x03);
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