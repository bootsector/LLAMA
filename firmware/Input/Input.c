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
#include <avr/interrupt.h>

#include "Input.h"
#include "Util.h"

#include "NeoGeo_In.h"
#include "SNES_In.h"
#include "Genesis_In.h"
#include "TG16_In.h"
#include "Saturn_In.h"

static volatile uint8_t current_pad = DB15_PAD_NEOGEO;
static volatile uint8_t needs_detection = 0;
static volatile uint8_t detection_timeout = 0;
static volatile uint8_t needs_status_clear = 0;
static volatile uint8_t pad_initialized = 0;

static void Input_InitPort(void) {
	// DB15_3
	bit_clear(DDRF, 1 << 6);
	bit_set(PORTF, 1 << 6);

	// DB15_4
	bit_clear(DDRF, 1 << 0);
	bit_set(PORTF, 1 << 0);

	// DB15_5
	bit_clear(DDRF, 1 << 1);
	bit_set(PORTF, 1 << 1);

	// DB15_6
	bit_clear(DDRF, 1 << 4);
	bit_set(PORTF, 1 << 4);

	// DB15_7
	bit_clear(DDRF, 1 << 5);
	bit_set(PORTF, 1 << 5);

	// DB15_9
	bit_clear(DDRE, 1 << 6);
	bit_set(PORTE, 1 << 6);

	// DB15_11
	bit_clear(DDRC, 1 << 7);
	bit_set(PORTC, 1 << 7);

	// DB15_12
	bit_clear(DDRB, 1 << 4);
	bit_set(PORTB, 1 << 4);

	// DB15_13
	bit_clear(DDRB, 1 << 5);
	bit_set(PORTB, 1 << 5);

	// DB15_14
	bit_clear(DDRD, 1 << 7);
	bit_set(PORTD, 1 << 7);

	// DB15_15
	bit_clear(DDRB, 1 << 6);
	bit_set(PORTB, 1 << 6);

	// Disable ADC (if enabled by paddles reading driver)
	ADMUX = ADCSRA = 0;
}

static void Input_InitializePad(uint8_t force_init) {

	if (force_init) {
		pad_initialized = 0;
	}

	if (pad_initialized) {
		return;
	}

	switch (current_pad) {
		case DB15_PAD_NEOGEO:
			pad_initialized = NeoGeo_In_Init();
			break;
		case DB15_PAD_SNES:
		case DB15_PAD_NES:
			pad_initialized = SNES_In_Init();
			break;
		case DB15_PAD_GENESIS:
			pad_initialized = Genesis_In_Init();
			break;
		case DB15_PAD_TG16:
			pad_initialized = TG16_In_Init();
			break;
		case DB15_PAD_SATURN:
			pad_initialized = Saturn_In_Init();
			break;
		default:
			pad_initialized = NeoGeo_In_Init();
			break;
	}
}

static void Input_ReadPad(AbstractPad_t *padData) {

	if (!pad_initialized) {
		return;
	}

	switch (current_pad) {
		case DB15_PAD_NEOGEO:
			NeoGeo_In_GetPadState(padData);
			break;
		case DB15_PAD_SNES:
			SNES_In_GetPadState(padData);
			break;
		case DB15_PAD_NES:
			NES_In_GetPadState(padData);
			break;
		case DB15_PAD_GENESIS:
			Genesis_In_GetPadState(padData);
			break;
		case DB15_PAD_TG16:
			TG16_In_GetPadState(padData);
			break;
		case DB15_PAD_SATURN:
			Saturn_In_GetPadState(padData);
			break;
		default:
			NeoGeo_In_GetPadState(padData);
			break;
	}
}

static void Input_DetectPad(void) {
	uint8_t attachedPad;

	// C7 - ID Bit 0 - Input and pull-up ON
	bit_clear(DDRC, 1 << 7);
	bit_set(PORTC, 1 << 7);

	// B4 - ID Bit 1 - Input and pull-up ON
	bit_clear(DDRB, 1 << 4);
	bit_set(PORTB, 1 << 4);

	// B5 - ID Bit 2 - Input and pull-up ON
	bit_clear(DDRB, 1 << 5);
	bit_set(PORTB, 1 << 5);

	// D7 - ID Bit 3 - Input and pull-up ON
	bit_clear(DDRD, 1 << 7);
	bit_set(PORTD, 1 << 7);

	_delay_ms(50);

	attachedPad = (bit_check(PIND, 7) << 3) | (bit_check(PINB, 5) << 2) |
			(bit_check(PINB, 4) << 1) | (bit_check(PINC, 7));

	current_pad = attachedPad;

	Input_InitializePad(1);

	needs_detection = 0;
}

void Input_Init(void) {
	
	Input_InitPort();
	
	current_pad = DB15_PAD_NEOGEO;
	needs_detection = 0;
	detection_timeout = 0;
	pad_initialized = 0;
	needs_status_clear = 0;

	// Setup Auto-Sensing pin - Input Pull-Up ON
	bit_clear(DDRB, 1 << 7);
	bit_set(PORTB, 1 << 7);

	//Pin Change Interrupt Enable for the Auto-Sensing Pin
	PCICR |= (1 << PCIE0);
	PCMSK0 |= (1 << PCINT7);

	Input_DetectPad();
}

void Input_GetPadState(AbstractPad_t *padData) {
	if (needs_status_clear) {
		AbstractPad_ResetBuffer(padData);

		needs_status_clear = 0;

		return;
	}

	if (detection_timeout) {
		_delay_ms(5);

		detection_timeout--;

		return;
	}

	if (needs_detection) {
		Input_DetectPad();
	} else {
		// This will simply return if connected pad is already initialized
		Input_InitializePad(0);
	}

	Input_ReadPad(padData);
}

// DB15 (dis)connect auto-sensing pin ISR
ISR(PCINT0_vect)
{
	Input_InitPort();

	needs_detection = needs_status_clear = 1;

	detection_timeout = 100;
}