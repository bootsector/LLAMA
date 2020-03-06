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

#include "Config.h"
#include <avr/eeprom.h>

LLOADConfig_t LLOADConfig;

static void LLOADConfigLoadDefaults(void) {
	LLOADConfig.header.magic_bytes = LLOAD_CFG_MAGIC_BYTES;

	LLOADConfig.header.version = LLOAD_CFG_VERSION;

	
	for(int j = LLOAD_CFG_PAD_NEOGEO; j <= LLOAD_CFG_PAD_GENESIS; j++) {
		for(int p = 0; p < 2; p++) {
			for(uint8_t i = LLOAD_CFG_REF_X; i <= LLOAD_CFG_REF_RIGHT_ANALOG_RIGHT; i++) {
				LLOADConfig.pad_config[j][p].pad_map[i] = i;
			}
		}
	}

	// Setting alternative profiles (1) for SNES, Genesis and Saturn pads
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SNES][1].pad_map[0] = 3;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SNES][1].pad_map[1] = 0;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SNES][1].pad_map[2] = 1;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SNES][1].pad_map[3] = 2;

	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[0] = 4;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[1] = 0;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[2] = 1;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[3] = 3;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[4] = 5;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_SATURN][1].pad_map[5] = 2;

	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[0] = 4;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[1] = 0;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[2] = 1;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[3] = 3;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[4] = 5;
	LLOADConfig.pad_config[LLOAD_CFG_PAD_GENESIS][1].pad_map[5] = 2;
}

void LLOADConfig_Init(void) {
	eeprom_read_block(&LLOADConfig, 0, sizeof(LLOADConfig));

	if(LLOADConfig.header.magic_bytes != LLOAD_CFG_MAGIC_BYTES || LLOADConfig.header.version != LLOAD_CFG_VERSION) {
		LLOADConfigLoadDefaults();
		eeprom_write_block(&LLOADConfig, 0, sizeof(LLOADConfig));
	}
}