#objdump: -d --prefix-addresses --show-raw-insn
#name: MSP430X instructions
#as: -mmsp430X

.*: +file format .*msp.*

Disassembly of section .text:
0+0000 <[^>]*> 04 63       	adc	r4		;
0+0002 <[^>]*> 40 18 04 63 	adcx.w	r4		;
0+0006 <[^>]*> 00 18 c0 63 00 00 	adcx.a	0x0000		;PC rel. abs addr 0x000a
0+000c <[^>]*> 40 18 46 63 	adcx.b	r6		;
0+0010 <[^>]*> 40 18 07 63 	adcx.w	r7		;
0+0014 <[^>]*> 40 18 09 68 	addcx.w	r8,	r9	;
0+0018 <[^>]*> 80 18 7a 60 45 23 	addcx.a	#74565,	r10	;0x12345
0+001e <[^>]*> 40 18 4c 6b 	addcx.b	r11,	r12	;
0+0022 <[^>]*> 40 18 0e 6d 	addcx.w	r13,	r14	;
0+0026 <[^>]*> 40 18 20 59 	addx.w	@r9,	r0	;
0+002a <[^>]*> 40 18 00 59 	addx.w	r9,	r0	;
0+002e <[^>]*> 00 18 70 50 00 00 	addx.a	#0,	r0	;
0+0034 <[^>]*> 00 18 50 52 00 00 	addx.a	&0x0000,r0	;0x0000
0+003a <[^>]*> 00 18 70 59 	addx.a	@r9\+,	r0	;
0+003e <[^>]*> 00 18 50 50 00 00 	addx.a	0x0000,	r0	;PC rel. 0x0042
0+0044 <[^>]*> 40 18 42 51 	addx.b	r1,	r2	;
0+0048 <[^>]*> 40 18 04 53 	addx.w	#0,	r4	;r3 As==00
0+004c <[^>]*> 40 18 15 54 00 00 	addx.w	0\(r4\),	r5	;
0+0052 <[^>]*> 40 18 b6 f0 d2 04 04 00 	andx.w	#1234,	4\(r6\)	;#0x04d2
0+005a <[^>]*> 40 18 96 f7 04 00 04 00 	andx.w	4\(r7\),	4\(r6\)	;
0+0062 <[^>]*> 40 18 b6 f5 04 00 	andx.w	@r5\+,	4\(r6\)	;
0+0068 <[^>]*> 40 18 96 f0 00 00 04 00 	andx.w	0x0000,	4\(r6\)	;PC rel. 0x006c
0+0070 <[^>]*> 40 18 90 f0 00 00 00 00 	andx.w	0x0000,	0x0000	;PC rel. 0x0074, PC rel. 0x0076
0+0078 <[^>]*> 00 18 e6 f5 04 00 	andx.a	@r5,	4\(r6\)	;
0+007e <[^>]*> 00 18 c6 f5 04 00 	andx.a	r5,	4\(r6\)	;
0+0084 <[^>]*> 40 18 d6 f2 00 00 04 00 	andx.b	&0x0000,4\(r6\)	;0x0000
0+008c <[^>]*> 40 18 02 f1 	andx.w	r1,	r2	;
0+0090 <[^>]*> 40 18 3e c0 a0 00 	bicx.w	#160,	r14	;#0x00a0
0+0096 <[^>]*> 00 18 7e c0 a0 00 	bicx.a	#160,	r14	;#0x00a0
0+009c <[^>]*> 40 18 7e c0 a0 00 	bicx.b	#160,	r14	;#0x00a0
0+00a2 <[^>]*> 40 18 3e c0 a0 00 	bicx.w	#160,	r14	;#0x00a0
0+00a8 <[^>]*> 40 18 3b d2 	bisx.w	#8,	r11	;r2 As==11
0+00ac <[^>]*> 00 18 7b d2 	bisx.a	#8,	r11	;r2 As==11
0+00b0 <[^>]*> 40 18 7b d2 	bisx.b	#8,	r11	;r2 As==11
0+00b4 <[^>]*> 40 18 3b d2 	bisx.w	#8,	r11	;r2 As==11
0+00b8 <[^>]*> 40 18 38 b0 14 00 	bitx.w	#20,	r8	;#0x0014
0+00be <[^>]*> 40 18 92 b2 00 00 00 00 	bitx.w	&0x0000,&0x0000	;0x0000
0+00c6 <[^>]*> 40 18 18 b2 00 00 	bitx.w	&0x0000,r8	;0x0000
0+00cc <[^>]*> 40 18 18 b5 02 00 	bitx.w	2\(r5\),	r8	;
0+00d2 <[^>]*> 40 18 92 b1 08 00 00 00 	bitx.w	8\(r1\),	&0x0000	;
0+00da <[^>]*> 40 18 b2 b5 00 00 	bitx.w	@r5\+,	&0x0000	;
0+00e0 <[^>]*> 40 18 38 b5 	bitx.w	@r5\+,	r8	;
0+00e4 <[^>]*> 40 18 28 b5 	bitx.w	@r5,	r8	;
0+00e8 <[^>]*> 40 18 92 b0 00 00 00 00 	bitx.w	0x0000,	&0x0000	;PC rel. 0x00ec
0+00f0 <[^>]*> 40 18 f2 b0 0c 00 00 00 	bitx.b	#12,	&0x0000	;#0x000c
0+00f8 <[^>]*> 40 18 e2 b5 00 00 	bitx.b	@r5,	&0x0000	;
0+00fe <[^>]*> 40 18 58 b0 00 00 	bitx.b	0x0000,	r8	;PC rel. 0x0102
0+0104 <[^>]*> 40 18 48 b5 	bitx.b	r5,	r8	;
0+0108 <[^>]*> 40 18 82 b5 00 00 	bitx.w	r5,	&0x0000	;
0+010e <[^>]*> 40 18 80 43 00 00 	movx.w	#0,	0x0000	;r3 As==00, PC rel. 0x0112
0+0114 <[^>]*> 00 18 c0 43 00 00 	movx.a	#0,	0x0000	;r3 As==00, PC rel. 0x0118
0+011a <[^>]*> 40 18 c0 43 00 00 	movx.b	#0,	0x0000	;r3 As==00, PC rel. 0x011e
0+0120 <[^>]*> 40 18 80 43 00 00 	movx.w	#0,	0x0000	;r3 As==00, PC rel. 0x0124
0+0126 <[^>]*> 40 18 0f 93 	cmpx.w	#0,	r15	;r3 As==00
0+012a <[^>]*> 00 18 f0 90 00 18 00 00 	cmpx.a	#6144,	0x0000	;#0x1800, PC rel. 0x0130
0+0132 <[^>]*> 40 18 6f 91 	cmpx.b	@r1,	r15	;
0+0136 <[^>]*> 40 18 b2 92 00 00 	cmpx.w	#8,	&0x0000	;r2 As==11
0+013c <[^>]*> 40 18 80 a3 00 00 	dadcx.w	0x0000		;PC rel. abs addr 0x0140
0+0142 <[^>]*> 00 18 cc a3 00 00 	dadcx.a	0\(r12\)		;
0+0148 <[^>]*> 40 18 c0 a3 00 00 	dadcx.b	0x0000		;PC rel. abs addr 0x014c
0+014e <[^>]*> 40 18 0c a3 	dadcx.w	r12		;
0+0152 <[^>]*> 40 18 27 a5 	daddx.w	@r5,	r7	;
0+0156 <[^>]*> 00 18 f2 a0 10 00 00 00 	daddx.a	#16,	&0x0000	;#0x0010
0+015e <[^>]*> 40 18 54 a6 02 00 	daddx.b	2\(r6\),	r4	;
0+0164 <[^>]*> 40 18 14 a0 00 00 	daddx.w	0x0000,	r4	;PC rel. 0x0168
0+016a <[^>]*> 40 18 90 83 00 00 	decx.w	0x0000		;PC rel. abs addr 0x016e
0+0170 <[^>]*> 00 18 d0 83 00 00 	decx.a	0x0000		;PC rel. abs addr 0x0174
0+0176 <[^>]*> 40 18 d0 83 00 00 	decx.b	0x0000		;PC rel. abs addr 0x017a
0+017c <[^>]*> 40 18 90 83 00 00 	decx.w	0x0000		;PC rel. abs addr 0x0180
0+0182 <[^>]*> 40 18 a0 83 00 00 	decdx.w	0x0000		;PC rel. abs addr 0x0186
0+0188 <[^>]*> 00 18 e0 83 00 00 	decdx.a	0x0000		;PC rel. abs addr 0x018c
0+018e <[^>]*> 40 18 e0 83 00 00 	decdx.b	0x0000		;PC rel. abs addr 0x0192
0+0194 <[^>]*> 40 18 a0 83 00 00 	decdx.w	0x0000		;PC rel. abs addr 0x0198
0+019a <[^>]*> 40 18 14 53 	incx.w	r4		;
0+019e <[^>]*> 00 18 55 53 	incx.a	r5		;
0+01a2 <[^>]*> 40 18 56 53 	incx.b	r6		;
0+01a6 <[^>]*> 40 18 17 53 	incx.w	r7		;
0+01aa <[^>]*> 40 18 28 53 	incdx.w	r8		;
0+01ae <[^>]*> 00 18 69 53 	incdx.a	r9		;
0+01b2 <[^>]*> 40 18 6a 53 	incdx.b	r10		;
0+01b6 <[^>]*> 40 18 2b 53 	incdx.w	r11		;
0+01ba <[^>]*> 40 18 3c e3 	invx.w	r12		;
0+01be <[^>]*> 00 18 f0 e3 00 00 	xorx.a	#-1,	0x0000	;r3 As==11, PC rel. 0x01c2
0+01c4 <[^>]*> 40 18 7e e3 	xorx.b	#-1,	r14	;r3 As==11
0+01c8 <[^>]*> 40 18 3f e3 	invx.w	r15		;
0+01cc <[^>]*> 40 18 34 40 00 00 	movx.w	#0,	r4	;
0+01d2 <[^>]*> 00 18 75 40 00 00 	movx.a	#0,	r5	;
0+01d8 <[^>]*> 40 18 76 40 00 00 	movx.b	#0,	r6	;
0+01de <[^>]*> 40 18 37 40 00 00 	movx.w	#0,	r7	;
0+01e4 <[^>]*> 40 18 15 42 00 00 	movx.w	&0x0000,r5	;0x0000
0+01ea <[^>]*> 40 18 35 40 00 00 	movx.w	#0,	r5	;
0+01f0 <[^>]*> 40 18 82 45 00 00 	movx.w	r5,	&0x0000	;
0+01f6 <[^>]*> 40 1d b2 40 de bc 00 00 	movx.w	#-344866,&0x0000	;0xabcde
0+01fe <[^>]*> 40 18 92 42 00 00 00 00 	movx.w	&0x0000,&0x0000	;0x0000
0+0206 <[^>]*> 40 18 b2 40 00 00 00 00 	movx.w	#0,	&0x0000	;
0+020e <[^>]*> 40 18 15 40 00 00 	movx.w	0x0000,	r5	;PC rel. 0x0212
0+0214 <[^>]*> 40 18 80 45 00 00 	movx.w	r5,	0x0000	; PC rel. 0x0218
0+021a <[^>]*> 40 1d b0 40 de bc 00 00 	movx.w	#-344866,0x0000	;0xabcde, PC rel. 0x0220
0+0222 <[^>]*> 40 18 90 40 00 00 00 00 	movx.w	0x0000,	0x0000	;PC rel. 0x0226, PC rel. 0x0228
0+022a <[^>]*> 40 18 0f 73 	sbcx.w	r15		;
0+022e <[^>]*> 00 18 40 73 	sbcx.a	r0		;
0+0232 <[^>]*> 40 18 4f 73 	sbcx.b	r15		;
0+0236 <[^>]*> 40 18 87 73 00 00 	sbcx.w	0\(r7\)		;
0+023c <[^>]*> 40 18 0f 7f 	subcx.w	r15,	r15	;
0+0240 <[^>]*> 80 18 7f 70 45 23 	subcx.a	#74565,	r15	;0x12345
0+0246 <[^>]*> 40 18 4f 7f 	subcx.b	r15,	r15	;
0+024a <[^>]*> 40 18 b7 75 00 00 	subcx.w	@r5\+,	0\(r7\)	;
0+0250 <[^>]*> 40 18 10 86 02 00 	subx.w	2\(r6\),	r0	;
0+0256 <[^>]*> 00 18 f0 80 67 11 00 00 	subx.a	#4455,	0x0000	;#0x1167, PC rel. 0x025c
0+025e <[^>]*> 40 18 50 86 02 00 	subx.b	2\(r6\),	r0	;
0+0264 <[^>]*> 40 18 10 86 02 00 	subx.w	2\(r6\),	r0	;
0+026a <[^>]*> 40 18 80 93 00 00 	cmpx.w	#0,	0x0000	;r3 As==00, PC rel. 0x026e
0+0270 <[^>]*> 00 18 c0 93 00 00 	cmpx.a	#0,	0x0000	;r3 As==00, PC rel. 0x0274
0+0276 <[^>]*> 40 18 c0 93 00 00 	cmpx.b	#0,	0x0000	;r3 As==00, PC rel. 0x027a
0+027c <[^>]*> 40 18 80 93 00 00 	cmpx.w	#0,	0x0000	;r3 As==00, PC rel. 0x0280
0+0282 <[^>]*> 40 18 b0 e0 5a 5a 00 00 	xorx.w	#23130,	0x0000	;#0x5a5a, PC rel. 0x0288
0+028a <[^>]*> 40 18 90 e2 00 00 00 00 	xorx.w	&0x0000,0x0000	;0x0000, PC rel. 0x0290
0+0292 <[^>]*> 40 18 a0 e8 00 00 	xorx.w	@r8,	0x0000	; PC rel. 0x0296
0+0298 <[^>]*> 40 18 80 e8 00 00 	xorx.w	r8,	0x0000	; PC rel. 0x029c
0+029e <[^>]*> 40 18 d0 e6 02 00 00 00 	xorx.b	2\(r6\),	0x0000	; PC rel. 0x02a4
0+02a6 <[^>]*> 40 18 f0 e8 00 00 	xorx.b	@r8\+,	0x0000	; PC rel. 0x02aa
0+02ac <[^>]*> 00 18 d2 e0 00 00 00 00 	xorx.a	0x0000,	&0x0000	;PC rel. 0x02b0
0+02b4 <[^>]*> 40 18 26 e5 	xorx.w	@r5,	r6	;
0+02b8 <[^>]*> 04 18 ff e0 39 30 78 56 	xorx.a	#12345,	284280\(r15\);#0x3039, 0x45678
0+02c0 <[^>]*> a7 01 45 23 	adda	#74565,	r7	;0x12345
0+02c4 <[^>]*> ee 06       	adda	r6,	r14	;
0+02c6 <[^>]*> 80 00 00 00 	mova	#0,	r0	;
0+02ca <[^>]*> 80 01 44 10 	mova	#69700,	r0	;0x11044
0+02ce <[^>]*> c0 05       	mova	r5,	r0	;
0+02d0 <[^>]*> 20 00 00 00 	bra	&0		;
0+02d4 <[^>]*> 00 05       	bra	@r5		;
0+02d6 <[^>]*> 10 05       	bra	@r5\+		;
0+02d8 <[^>]*> 30 05 76 98 	bra	-26506\(r5\)	;0xffff9876
0+02dc <[^>]*> 45 13       	calla	r5		;
0+02de <[^>]*> 56 13 00 00 	calla	0\(r6\)		;0x00000
0+02e2 <[^>]*> 67 13       	calla	@r7		;
0+02e4 <[^>]*> 78 13       	calla	@r8\+		;
0+02e6 <[^>]*> 80 13 00 00 	calla	&0		;0x00000
0+02ea <[^>]*> 90 13 00 00 	calla	0\(PC\)		;PC rel. 0x002ec
0+02ee <[^>]*> b0 13 00 00 	calla	#0		;0x00000
0+02f2 <[^>]*> 40 18 06 43 	clrx.w	r6		;
0+02f6 <[^>]*> d2 01       	cmpa	r1,	r2	;
0+02f8 <[^>]*> 93 0f cb ed 	cmpa	#1043915,r3	;0xfedcb
0+02fc <[^>]*> 40 18 25 83 	decdx.w	r5		;
0+0300 <[^>]*> 40 18 25 53 	incdx.w	r5		;
0+0304 <[^>]*> c8 09       	mova	r9,	r8	;
0+0306 <[^>]*> 8c 01 45 23 	mova	#74565,	r12	;0x12345
0+030a <[^>]*> 38 09 00 01 	mova	256\(r9\),r8	;0x00100
0+030e <[^>]*> 2c 00 00 00 	mova	&0,	r12	;
0+0312 <[^>]*> 08 09       	mova	@r9,	r8	;
0+0314 <[^>]*> 18 09       	mova	@r9\+,	r8	;
0+0316 <[^>]*> 79 08 00 01 	mova	r8,	256\(r9\)	; 0x00100
0+031a <[^>]*> 60 0d 00 00 	mova	r13,	&0	;
0+031e <[^>]*> 10 01       	reta			;
0+0320 <[^>]*> 00 13       	reti			
0+0322 <[^>]*> f6 05       	suba	r5,	r6	;
0+0324 <[^>]*> b6 0f ff ff 	suba	#1048575,r6	;0xfffff
0+0328 <[^>]*> 40 18 80 93 00 00 	cmpx.w	#0,	0x0000	;r3 As==00, PC rel. 0x032c
0+032e <[^>]*> 05 17       	popm	#1,	r5	;16-bit words
0+0330 <[^>]*> 2d 16       	popm.a	#3,	r15	;20-bit words
0+0332 <[^>]*> 75 17       	popm	#8,	r12	;16-bit words
0+0334 <[^>]*> 40 18 3a 41 	popx.w	r10		;
0+0338 <[^>]*> 00 18 7a 41 	popx.a	r10		;
0+033c <[^>]*> 40 18 7a 41 	popx.b	r10		;
0+0340 <[^>]*> 40 18 3a 41 	popx.w	r10		;
0+0344 <[^>]*> 09 15       	pushm	#1,	r9	;16-bit words
0+0346 <[^>]*> 19 14       	pushm.a	#2,	r9	;20-bit words
0+0348 <[^>]*> 29 15       	pushm	#3,	r9	;16-bit words
0+034a <[^>]*> 40 18 08 12 	pushx.w	r8		;
0+034e <[^>]*> 00 18 48 12 	pushx.a	r8		;
0+0352 <[^>]*> 40 18 52 12 00 00 	pushx.b	&0x0000		;
0+0358 <[^>]*> 40 18 08 12 	pushx.w	r8		;
0+035c <[^>]*> 5f 02       	rlam	#1,	r15	;
0+035e <[^>]*> 4f 06       	rlam.a	#2,	r15	;
0+0360 <[^>]*> 5f 0a       	rlam	#3,	r15	;
0+0362 <[^>]*> 40 18 06 56 	rlax.w	r6		;
0+0366 <[^>]*> 00 18 46 56 	rlax.a	r6		;
0+036a <[^>]*> 40 18 06 56 	rlax.w	r6		;
0+036e <[^>]*> 40 18 06 66 	rlcx.w	r6		;
0+0372 <[^>]*> 00 18 46 66 	rlcx.a	r6		;
0+0376 <[^>]*> 40 18 06 66 	rlcx.w	r6		;
0+037a <[^>]*> 56 01       	rram	#1,	r6	;
0+037c <[^>]*> 46 0d       	rram.a	#4,	r6	;
0+037e <[^>]*> 56 05       	rram	#2,	r6	;
0+0380 <[^>]*> 40 18 0b 11 	rrax.w	r11		;
0+0384 <[^>]*> 00 18 4b 11 	rrax.a	r11		;
0+0388 <[^>]*> 40 18 0b 11 	rrax.w	r11		;
0+038c <[^>]*> 55 0c       	rrcm	#4,	r5	;
0+038e <[^>]*> 45 00       	rrcm.a	#1,	r5	;
0+0390 <[^>]*> 55 08       	rrcm	#3,	r5	;
0+0392 <[^>]*> 40 18 0d 10 	rrcx.w	r13		;
0+0396 <[^>]*> 00 18 4d 10 	rrcx.a	r13		;
0+039a <[^>]*> 40 18 0d 10 	rrcx.w	r13		;
0+039e <[^>]*> 54 0b       	rrum	#3,	r4	;
0+03a0 <[^>]*> 44 07       	rrum.a	#2,	r4	;
0+03a2 <[^>]*> 54 03       	rrum	#1,	r4	;
0+03a4 <[^>]*> 54 03       	rrum	#1,	r4	;
0+03a6 <[^>]*> 47 03       	rrum.a	#1,	r7	;
0+03a8 <[^>]*> 45 11       	rra.b	r5		;
0+03aa <[^>]*> 75 c0 80 00 	bic.b	#128,	r5	;#0x0080
0+03ae <[^>]*> 56 03       	rrum	#1,	r6	;
0+03b0 <[^>]*> 40 18 81 10 	swpbx.w	r1		;
0+03b4 <[^>]*> 00 18 90 10 00 00 	swpbx.a	0x0000		;PC rel. 0x03b8
0+03ba <[^>]*> 40 18 8c 10 	swpbx.w	r12		;
0+03be <[^>]*> 40 18 82 11 	sxtx.w	r2		;
0+03c2 <[^>]*> 00 18 92 11 00 00 	sxtx.a	&0x0000		;
0+03c8 <[^>]*> 40 18 82 11 	sxtx.w	r2		;
0+03cc <[^>]*> 04 18 45 11 	rpt #5 \{ rrax.a	r5		;
0+03d0 <[^>]*> 85 18 45 11 	rpt r5 \{ rrax.a	r5		;
