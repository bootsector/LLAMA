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

#include "Output.h"
#include "LLIO.h"
#include "XInputPad.h"
#include "Util.h"

static uint8_t llio_status = 0;
static uint8_t llio_status_previous = 0;

void Output_Init(void) {
	xbox_init(true);
	LLIO_Init();
	llio_status = llio_status_previous = 0;
}

void Output_SetLLIOCallback(void (*callback)(void)) {
	LLIO_SetCallback(callback);
}

static void Output_SetUSBData(AbstractPad_t *padData) {

	padData->d_up    ? bit_set(gamepad_state.digital_buttons_1, XBOX_DPAD_UP)    : bit_clear(gamepad_state.digital_buttons_1, XBOX_DPAD_UP);
	padData->d_down  ? bit_set(gamepad_state.digital_buttons_1, XBOX_DPAD_DOWN)  : bit_clear(gamepad_state.digital_buttons_1, XBOX_DPAD_DOWN);
	padData->d_left  ? bit_set(gamepad_state.digital_buttons_1, XBOX_DPAD_LEFT)  : bit_clear(gamepad_state.digital_buttons_1, XBOX_DPAD_LEFT);
	padData->d_right ? bit_set(gamepad_state.digital_buttons_1, XBOX_DPAD_RIGHT) : bit_clear(gamepad_state.digital_buttons_1, XBOX_DPAD_RIGHT);

	padData->start ? bit_set(gamepad_state.digital_buttons_1, XBOX_START)       : bit_clear(gamepad_state.digital_buttons_1, XBOX_START);
	padData->back  ? bit_set(gamepad_state.digital_buttons_1, XBOX_BACK)        : bit_clear(gamepad_state.digital_buttons_1, XBOX_BACK);

	padData->a ? bit_set(gamepad_state.digital_buttons_2, XBOX_A)    : bit_clear(gamepad_state.digital_buttons_2, XBOX_A);
	padData->b ? bit_set(gamepad_state.digital_buttons_2, XBOX_B)  : bit_clear(gamepad_state.digital_buttons_2, XBOX_B);
	padData->x ? bit_set(gamepad_state.digital_buttons_2, XBOX_X)  : bit_clear(gamepad_state.digital_buttons_2, XBOX_X);
	padData->y ? bit_set(gamepad_state.digital_buttons_2, XBOX_Y) : bit_clear(gamepad_state.digital_buttons_2, XBOX_Y);

	padData->lb ? bit_set(gamepad_state.digital_buttons_2, XBOX_LB)  : bit_clear(gamepad_state.digital_buttons_2, XBOX_LB);
	padData->rb ? bit_set(gamepad_state.digital_buttons_2, XBOX_RB) : bit_clear(gamepad_state.digital_buttons_2, XBOX_RB);

	padData->menu ? bit_set(gamepad_state.digital_buttons_2, XBOX_HOME) : bit_clear(gamepad_state.digital_buttons_2, XBOX_HOME);

	padData->l_thumb ? bit_set(gamepad_state.digital_buttons_1, XBOX_LEFT_STICK)  : bit_clear(gamepad_state.digital_buttons_1, XBOX_LEFT_STICK);
	padData->r_thumb ? bit_set(gamepad_state.digital_buttons_1, XBOX_RIGHT_STICK) : bit_clear(gamepad_state.digital_buttons_1, XBOX_RIGHT_STICK);

	gamepad_state.lt = padData->lt;
	gamepad_state.rt = padData->rt;
}

void Output_SetPadState(AbstractPad_t *padData) {

	llio_status = LLIO_LLEnabled();

	if (llio_status != llio_status_previous) {
		xbox_reset_pad_status();
		
		LLIO_ClearPadData();

		llio_status_previous = llio_status;
	}

	xbox_reset_watchdog();

	if (llio_status) {
		LLIO_ProcessEvent(padData);

		// Even though LLAPI has its own button combos for OSD, we still "listen" to OSD trigger from USB...
		padData->menu ? bit_set(gamepad_state.digital_buttons_2, XBOX_HOME) : bit_clear(gamepad_state.digital_buttons_2, XBOX_HOME);
	} else {
		Output_SetUSBData(padData);
	}

	xbox_send_pad_state();
}

uint8_t Output_LLEnabled(void) {
	return LLIO_LLEnabled();
}