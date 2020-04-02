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

#include <string.h>

#include "AbstractPad.h"
#include "Config.h"

void AbstractPad_ResetBuffer(AbstractPad_t *padData) {
	memset(padData, 0, sizeof(AbstractPad_t));
	padData->l_x = padData->l_y = padData->r_x = padData->r_y = 0x80;
	padData->cfg_map_pad_id = LLOAD_CFG_PAD_NEOGEO;
}