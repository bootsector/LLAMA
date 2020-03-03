# LLOAD - Low Latency Open Adapter for MiSTer FPGA
#
# Copyright (c) 2019
# Bruno Freitas - bruno@brunofreitas.com - http://www.brunofreitas.com/
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

from xml.dom import minidom
import sys

MAGIC_BYTES = 0x42, 0x4F, 0x4F, 0x54,
BUTTONS = "x", "a", "b", "y", "lb", "rb", "lt", "rt", "back", "start", "l_thumb", "r_thumb", "menu", "d_up", "d_down", \
	"d_left", "d_right", "left_analog_up", "left_analog_down", "left_analog_left", "left_analog_right", "right_analog_up", \
	"right_analog_down", "right_analog_left", "right_analog_right"

def read_xmltag(xml, tag):
	try:
		value = int(xml.getElementsByTagName(tag)[0].firstChild.data),
	except:
		value = 0
	return value

def write_eeprom_file(eeprom, eep_file="map.eep"):
	from intelhex import IntelHex
	ih = IntelHex()
	i = 0
	for byte in eeprom:
		try:
			ih[i] = int(byte)
		except:
			ih[i] = 0
		i += 1
	eep = open(eep_file, 'w')
	ih.write_hex_file(eep)
	eep.close()
	print "EEPROM written to file: %s" % eep_file

# Open the XML map config file
xmlname = 'map.xml'

if len(sys.argv) > 1:
	xmlname = sys.argv[1]

xmldoc = minidom.parse(xmlname)

# EEPROM header
eeprom = MAGIC_BYTES
eeprom += read_xmltag(xmldoc, "config-version")

# EEPROM data from XML <system>
systems = xmldoc.getElementsByTagName("system")
for system in systems:
	ident = system.getAttribute("id")
	name = system.getAttribute("name")	
	profiles = system.getElementsByTagName("profile")
	for profile in profiles:
		i = 0
		for button in BUTTONS:
			eeprom += int(profile.getElementsByTagName(
				BUTTONS[i])[0].firstChild.data),
			i += 1

# Write out the generated EEPROM file
write_eeprom_file(eeprom)
