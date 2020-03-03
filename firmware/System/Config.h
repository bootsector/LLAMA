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

#ifndef LLOAD_CONFIG_H_
#define LLOAD_CONFIG_H_

#include <stdint.h>

typedef struct
{

	uint8_t pad_map[25];

} LLOADConfig_PadConfig_t;

typedef struct {

	uint32_t magic_bytes;

	uint8_t version;

} LLOADConfig_Header_t;

typedef struct
{
	LLOADConfig_Header_t header;

	LLOADConfig_PadConfig_t pad_config[6];

} LLOADConfig_t;

// Config payload magic bytes
#define LLOAD_CFG_MAGIC_BYTES   0x544F4F42

// Config payload version
#define LLOAD_CFG_VERSION       0x01

// LLOAD Abstract Pad definitions for mappings
#define LLOAD_CFG_REF_X                   0
#define LLOAD_CFG_REF_A                   1
#define LLOAD_CFG_REF_B                   2
#define LLOAD_CFG_REF_Y                   3
#define LLOAD_CFG_REF_LB                  4
#define LLOAD_CFG_REF_RB                  5
#define LLOAD_CFG_REF_LT                  6
#define LLOAD_CFG_REF_RT                  7
#define LLOAD_CFG_REF_BACK                8
#define LLOAD_CFG_REF_START               9
#define LLOAD_CFG_REF_L_THUMB            10
#define LLOAD_CFG_REF_R_THUMB            11
#define LLOAD_CFG_REF_MENU               12
#define LLOAD_CFG_REF_D_UP               13
#define LLOAD_CFG_REF_D_DOWN             14
#define LLOAD_CFG_REF_D_LEFT             15
#define LLOAD_CFG_REF_D_RIGHT            16
#define LLOAD_CFG_REF_LEFT_ANALOG_UP     17
#define LLOAD_CFG_REF_LEFT_ANALOG_DOWN   18
#define LLOAD_CFG_REF_LEFT_ANALOG_LEFT   19
#define LLOAD_CFG_REF_LEFT_ANALOG_RIGHT  20
#define LLOAD_CFG_REF_RIGHT_ANALOG_UP    21
#define LLOAD_CFG_REF_RIGHT_ANALOG_DOWN  22
#define LLOAD_CFG_REF_RIGHT_ANALOG_LEFT  23
#define LLOAD_CFG_REF_RIGHT_ANALOG_RIGHT 24
#define LLOAD_CFG_REF_NONE              255

// Definitions for specific input device mappings
#define LLOAD_CFG_PAD_NEOGEO    0
#define LLOAD_CFG_PAD_NES       1
#define LLOAD_CFG_PAD_SNES      2
#define LLOAD_CFG_PAD_SATURN    3
#define LLOAD_CFG_PAD_TG16      4
#define LLOAD_CFG_PAD_GENESIS   5

extern LLOADConfig_t LLOADConfig;

void LLOADConfig_Init(void);

#endif /* LLOAD_CONFIG_H_ */