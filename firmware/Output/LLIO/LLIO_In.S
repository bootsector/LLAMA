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

/*
* IMPORTANT: This ASM unit requires a 16Mhz clock in order to work properly!
*/

#include <avr/io.h>
#include <avr/interrupt.h>

.global INT0_vect

.global llio_cmd
.global llio_cmd_received

.comm llio_cmd, 1
.comm llio_cmd_received, 1

.macro SPEND_8_CYCLES
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.endm

.macro SPEND_16_CYCLES
	SPEND_8_CYCLES
	SPEND_8_CYCLES
.endm

.macro DELAY_4_5US_AFTER_POLLING
	; 3 cycles spend by STORE_BIT macro until here so pad with nops to get 0.5us
	nop
	nop
	nop
	nop
	nop

	SPEND_16_CYCLES
	SPEND_16_CYCLES
	SPEND_16_CYCLES
	SPEND_16_CYCLES
.endm

.macro STORE_BIT dst
	IN r30, _SFR_IO_ADDR(PIND) ; 1 cycle
	BST r30, 1 ; 1 cycle
	BLD r18, \dst ; 1 cycle
.endm

INT0_vect:
	; ~7 cycles have been passed since interrupt + vector jmp...

	; Save SREG (part 1)
	push    r0   ; 2 cycles
	in  r0, _SFR_IO_ADDR(SREG) ; 1 cycle - Save SREG
	push    r0   ; 2 cycles

	; Save work registers
	push    r18  ; 2 cycles
	push    r30  ; 2 cycles

	; ~1uS has been spent up to here. Spend more 4uS
	SPEND_16_CYCLES
	SPEND_16_CYCLES
	SPEND_16_CYCLES
	SPEND_16_CYCLES

	STORE_BIT 0

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 1

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 2

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 3

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 4

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 5

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 6

	DELAY_4_5US_AFTER_POLLING

	STORE_BIT 7

	; Invert LLIO cmd bits (hi = 0, lo = 1)
	com r18

	; Store LLIO command
	sts llio_cmd, r18

	; Set LLIO command received flag
	ldi r18, 1
	sts llio_cmd_received, r18

	; Restore work registers
	pop r30 ; 2 cycles
	pop r18 ; 2 cycles

	; Restore SREG
	pop r0  ; 2 cycles
	out _SFR_IO_ADDR(SREG), r0 ; 1 cycle - Restore SREG
	pop r0 ; 2 cycles

	reti