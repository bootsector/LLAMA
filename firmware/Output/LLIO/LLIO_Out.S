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

.global llio_out_init
.global llio_out_send

.extern llio_buffer
.extern llio_buffer_size

; Delay 1us (16 cycles). Takes into account RET and CALL cycles
delay_1us:
	lpm
	lpm
	rjmp delay_1us_end

delay_1us_end:
	ret

llio_out_init:
	; D0 and D1 as INPUT, no internal pull-up
	
	; Latch
	cbi _SFR_IO_ADDR(PORTD), 0
	cbi _SFR_IO_ADDR(DDRD), 0
	
	; Data
	cbi _SFR_IO_ADDR(PORTD), 1
	cbi _SFR_IO_ADDR(DDRD), 1

	ret

start_transfer:
	; Put both lines low
	in r30, _SFR_IO_ADDR(DDRD)
	ori r30, 0x03
	out _SFR_IO_ADDR(DDRD), r30

	; 1.5uS delay padding
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	ret

end_transfer:
	; Put both lines high
	in r30, _SFR_IO_ADDR(DDRD)
	andi r30, 0xFC
	out _SFR_IO_ADDR(DDRD), r30

	ret

send_byte:
	ldi r20, 0x08

send_byte_loop:
	; Data bit HIGH portion
	cbi _SFR_IO_ADDR(DDRD), 1
	
	; 2.3uS HIGH padding
	call delay_1us
	call delay_1us

	sbrc r18, 0 ; 1 cycle if not skipped. 2 cycles if skipped
	rjmp send_byte_line_low ; 2 cycles
	nop
	rjmp send_byte_continue ; 2 cycles

send_byte_line_low:
	sbi _SFR_IO_ADDR(DDRD), 1 ; 2 cycles

send_byte_continue:
	; 2.2uS data bit second part padding
	call delay_1us
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	lsr r18
	dec r20
	brne send_byte_loop

	nop

	; Byte ending signature
	; HIGH for 1uS
	cbi _SFR_IO_ADDR(DDRD), 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	; LOW for 1uS
	sbi _SFR_IO_ADDR(DDRD), 1
	
	ret

llio_out_send:
	; Assigns X register to the buffer
	ldi r26, lo8(llio_buffer)
	ldi r27, hi8(llio_buffer)

	; r19 is the buffer iterator
	lds r19, llio_buffer_size

	; Timed sequence follows, so we need to disable interrupts
	cli

	call start_transfer

loop:
	ld r18, X+
	call send_byte
	dec r19
	brne loop

	call delay_1us
	call delay_1us
	nop
	nop
	nop

	call end_transfer

	; Re-enable global interrupts
	sei

	ret

