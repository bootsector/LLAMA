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

#include <util/delay.h>

#include "Mapper.h"
#include "Config.h"

static uint8_t *ref_in[25]; 
static uint8_t *ref_out[25];

static AbstractPad_t *ip, *op;

static uint8_t src_button_input, dst_button, src_button_input_data;

static uint8_t map_profile;

void Mapper_Init(AbstractPad_t *in, AbstractPad_t *out) {
	ref_in[0] = &in->x;
	ref_in[1] = &in->a;
	ref_in[2] = &in->b;
	ref_in[3] = &in->y;
	ref_in[4] = &in->lb;
	ref_in[5] = &in->rb;
	ref_in[6] = &in->lt;
	ref_in[7] = &in->rt;
	ref_in[8] = &in->back;
	ref_in[9] = &in->start;
	ref_in[10] = &in->l_thumb;
	ref_in[11] = &in->r_thumb;
	ref_in[12] = &in->menu;
	ref_in[13] = &in->d_up;
	ref_in[14] = &in->d_down;
	ref_in[15] = &in->d_left;
	ref_in[16] = &in->d_right;
	ref_in[17] = &in->l_y;
	ref_in[18] = &in->l_y;
	ref_in[19] = &in->l_x;
	ref_in[20] = &in->l_x;
	ref_in[21] = &in->r_y;
	ref_in[22] = &in->r_y;
	ref_in[23] = &in->r_x;
	ref_in[24] = &in->r_x;

	ref_out[0] = &out->x;
	ref_out[1] = &out->a;
	ref_out[2] = &out->b;
	ref_out[3] = &out->y;
	ref_out[4] = &out->lb;
	ref_out[5] = &out->rb;
	ref_out[6] = &out->lt;
	ref_out[7] = &out->rt;
	ref_out[8] = &out->back;
	ref_out[9] = &out->start;
	ref_out[10] = &out->l_thumb;
	ref_out[11] = &out->r_thumb;
	ref_out[12] = &out->menu;
	ref_out[13] = &out->d_up;
	ref_out[14] = &out->d_down;
	ref_out[15] = &out->d_left;
	ref_out[16] = &out->d_right;
	ref_out[17] = &out->l_y;
	ref_out[18] = &out->l_y;
	ref_out[19] = &out->l_x;
	ref_out[20] = &out->l_x;
	ref_out[21] = &out->r_y;
	ref_out[22] = &out->r_y;
	ref_out[23] = &out->r_x;
	ref_out[24] = &out->r_x;

	ip = in;
	op = out;

	map_profile = 0;
}

static inline void LLOADCycleMapProfile(void) {
	map_profile = (map_profile + 1) % 2;
	_delay_ms(250);
}

static inline uint8_t LLOADReferenceIsDigital(uint8_t reference) {
	return ((reference >= LLOAD_CFG_REF_X && reference <= LLOAD_CFG_REF_RB) ||
	        (reference >= LLOAD_CFG_REF_BACK && reference <= LLOAD_CFG_REF_D_RIGHT));
}

static inline uint8_t LLOADReferenceIsAnalogShoulder(uint8_t reference) {
	return (reference == LLOAD_CFG_REF_LT || reference == LLOAD_CFG_REF_RT);
}

static inline uint8_t LLOADConvertData(uint8_t src, uint8_t dst, uint8_t data) {
	uint8_t destinationIsDigital = LLOADReferenceIsDigital(dst);
	uint8_t destinationIsAnalogShoulder = LLOADReferenceIsAnalogShoulder(dst);

	// Check for no references and return default (inactive) values
	if(src == LLOAD_CFG_REF_NONE) {
		if(destinationIsDigital || destinationIsAnalogShoulder) {
			return 0;
		} else {
			return *ref_out[dst];
		}
	}

	uint8_t destinationIsAnalogAxis = !destinationIsDigital && !destinationIsAnalogShoulder;

	// If destination is ANALOG AXIS, check if value already exists and returns it if true
	if(destinationIsAnalogAxis && *ref_out[dst] != 0x80) {
		return *ref_out[dst];
	}

	uint8_t sourceIsDigital = LLOADReferenceIsDigital(src);

	if(sourceIsDigital) {

		// Source is DIGITAL and destination is ANALOG data conversion
		if(!destinationIsDigital) {

			switch(dst) {
				case LLOAD_CFG_REF_LEFT_ANALOG_UP:
				case LLOAD_CFG_REF_LEFT_ANALOG_LEFT:
				case LLOAD_CFG_REF_RIGHT_ANALOG_UP:
				case LLOAD_CFG_REF_RIGHT_ANALOG_LEFT:
					data = (data ? 0x00 : 0x80);
					break;
				case LLOAD_CFG_REF_LEFT_ANALOG_DOWN:
				case LLOAD_CFG_REF_LEFT_ANALOG_RIGHT:
				case LLOAD_CFG_REF_RIGHT_ANALOG_DOWN:
				case LLOAD_CFG_REF_RIGHT_ANALOG_RIGHT:
					data = (data ? 0xFF : 0x80);
					break;
				case LLOAD_CFG_REF_LT:
				case LLOAD_CFG_REF_RT:
					data = (data ? 0xFF : 0x00);
					break;
			}

		}

	} else {
		
		// Source is ANALOG (shoulder/axis) and destination is DIGITAL data conversion
		if(destinationIsDigital) {

			switch(src) {
				case LLOAD_CFG_REF_LEFT_ANALOG_UP:
				case LLOAD_CFG_REF_LEFT_ANALOG_LEFT:
				case LLOAD_CFG_REF_RIGHT_ANALOG_UP:
				case LLOAD_CFG_REF_RIGHT_ANALOG_LEFT:
					data = (data < 0x60 ? 1 : 0);
					break;
				case LLOAD_CFG_REF_LEFT_ANALOG_DOWN:
				case LLOAD_CFG_REF_LEFT_ANALOG_RIGHT:
				case LLOAD_CFG_REF_RIGHT_ANALOG_DOWN:
				case LLOAD_CFG_REF_RIGHT_ANALOG_RIGHT:
					data = (data > 0xA0 ? 1 : 0);
					break;
				case LLOAD_CFG_REF_LT:
				case LLOAD_CFG_REF_RT:
					data = (data > 32 ? 1 : 0);
					break;
			}

		}

		//TODO: Source is ANALOG and destination is ANALOG special treatment (axis to shoulders and vice-versa)
		//TODO: Source is ANALOG SHOULDER and destination is ANALOG AXIS
		//TODO: Source is ANALOG AXIS and destination is ANALOG SHOULDER
		//TODO: Source is ANALOG AXIS and destination is ANALOG AXIS
	}

	return data;
}

void Mapper_Map(void) {
	op->l_x = op->l_y = op->r_x = op->r_y = 0x80;

	for(dst_button = LLOAD_CFG_REF_X; dst_button <= LLOAD_CFG_REF_RIGHT_ANALOG_RIGHT; dst_button++) {

		src_button_input = LLOADConfig.pad_config[ip->cfg_map_pad_id][map_profile].pad_map[dst_button];

		src_button_input_data = LLOADConvertData(src_button_input, dst_button, src_button_input == LLOAD_CFG_REF_NONE ? *ref_in[dst_button] : *ref_in[src_button_input]);

		*ref_out[dst_button] = src_button_input_data;
	}

	// Down + Start cycles mapping profile for the connected pad
	if(ip->d_down && ip->start) {
		LLOADCycleMapProfile();
	}
}