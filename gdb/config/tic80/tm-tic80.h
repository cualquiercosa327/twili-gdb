/* Parameters for execution on a TI TMS320C80 (MVP) processor.
   Copyright 1997
   Free Software Foundation, Inc. 

This file is part of GDB.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#ifndef TM_TIC80_H
#define TM_TIC80_H

#ifdef __STDC__		/* Forward declare structs used in prototypes */
struct frame_info;
struct type;
struct value;
struct symbol;
struct frame_saved_regs;
#endif

#define TARGET_BYTE_ORDER LITTLE_ENDIAN

/* Define this if the C compiler puts an underscore at the front
   of external names before giving them to the linker.  */

#define NAMES_HAVE_UNDERSCORE

#define NUM_REGS 37

#define REGISTER_NAMES \
{ "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7", \
  "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15", \
  "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23", \
  "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", \
  "pc", "npc", \
  "a0", "a1", "a2", "a3", \
}

/* Various dedicated register numbers
   FIXME: Shadow updates in sim/tic80/sim-calls.c */

#define SP_REGNUM 1		/* Contains address of top of stack */
#define FP_REGNUM 31		/* Contains address of executing stack frame */
#define PC_REGNUM 32		/* Contains program counter (FIXME?) */
#define NPC_REGNUM 33		/* Contains the next program counter (FIXME?) */
#define A0_REGNUM 34		/* Accumulator register 0 */
#define A3_REGNUM 37		/* Accumulator register 1 */

#define R0_REGNUM 0             /* General Purpose Register 0 - for sim */
#define Rn_REGNUM 31            /* Last General Purpose Register - for sim */
#define An_REGNUM A3_REGNUM     /* Last Accumulator register - for sim */

/* Total amount of space needed to store our copies of the machine's
   register state, the array `registers'.  */

#define REGISTER_BYTES (((NUM_REGS - 4) * 4) + (4 * 8))

/* Index within `registers' of the first byte of the space for
   register N.  */

#define REGISTER_BYTE(N) \
   (((N) >= A0_REGNUM) ? (((N) - A0_REGNUM) * 8 + A0_REGNUM * 4) : ((N) * 4))

/* Most registers are 4 bytes */

#define REGISTER_SIZE 4

/* Some registers are 8 bytes.  */

#define REGISTER_RAW_SIZE(N) \
     (((N) >= A0_REGNUM) ? 8 : 4)

/* Largest value REGISTER_RAW_SIZE can have.  */

#define MAX_REGISTER_RAW_SIZE (8)

/* All regs are 4 bytes.  */

#define REGISTER_VIRTUAL_SIZE(N) (REGISTER_RAW_SIZE(N))

/* Largest value REGISTER_VIRTUAL_SIZE can have.  */

#define MAX_REGISTER_VIRTUAL_SIZE (MAX_REGISTER_RAW_SIZE)

/* Return the GDB type object for the "standard" data type
   of data in register N.  */

#define REGISTER_VIRTUAL_TYPE(N) /* FIXME? */ \
	(((N) >= A0_REGNUM) ? builtin_type_float : builtin_type_int)

/* Offset from address of function to start of its code.
   Zero on most machines.  */

#define FUNCTION_START_OFFSET 0

/* Stack grows downward.  */

#define INNER_THAN 		<

/* Sequence of bytes for breakpoint instruction.
   This is padded out to the size of a machine word. */

#define BREAKPOINT 		{0x0, 0x0, 0x0, 0x0}	/* FIXME! */

/* Amount PC must be decremented by after a breakpoint.
   This is often the number of bytes in BREAKPOINT
   but not always.  */

#define DECR_PC_AFTER_BREAK	0			/* FIXME! */

/* Push an empty stack frame, to record the current PC, etc.  */

#define PUSH_DUMMY_FRAME 	tic80_push_dummy_frame()
extern void tic80_push_dummy_frame PARAMS ((void));

/* Discard from the stack the innermost frame, restoring all registers.  */

#define POP_FRAME		tic80_pop_frame()
extern void tic80_pop_frame PARAMS ((void));

/* Return number of bytes at start of arglist that are not really args.  */

#define FRAME_ARGS_SKIP 0

/* Set VAL to the number of args passed to frame described by FI.
   Can set VAL to -1, meaning no way to tell.  */
/* We can't tell how many args there are */

#define FRAME_NUM_ARGS(val,fi) (val = -1)

#define FRAME_ARGS_SKIP 0
#define FRAME_ARGS_ADDRESS(fi)   (fi)->frame
#define FRAME_LOCALS_ADDRESS(fi) (fi)->frame

/* Put here the code to store, into a struct frame_saved_regs,
   the addresses of the saved registers of frame described by FRAME_INFO.
   This includes special registers such as pc and fp saved in special
   ways in the stack frame.  sp is even more special:
   the address we return for it IS the sp for the next frame.  */

#define FRAME_FIND_SAVED_REGS(frame_info, frame_saved_regs)	    \
   tic80_frame_find_saved_regs(frame_info, &(frame_saved_regs))
extern void tic80_frame_find_saved_regs PARAMS ((struct frame_info *, struct frame_saved_regs *));

/* Advance PC across any function entry prologue instructions
   to reach some "real" code.  */

#define SKIP_PROLOGUE(pc)	{ (pc) = tic80_skip_prologue (pc); }
extern CORE_ADDR tic80_skip_prologue PARAMS ((CORE_ADDR pc));

/* Immediately after a function call, return the saved pc.
   Can't always go through the frames for this because on some machines
   the new frame is not set up until the new function executes
   some instructions.  */

#define SAVED_PC_AFTER_CALL(frame)	tic80_saved_pc_after_call(frame)
extern CORE_ADDR tic80_saved_pc_after_call PARAMS ((struct frame_info *));

/* Describe the pointer in each stack frame to the previous stack frame
   (its caller).  */

/* FRAME_CHAIN takes a frame's nominal address
   and produces the frame's chain-pointer. */

#define FRAME_CHAIN(thisframe) (CORE_ADDR) tic80_frame_chain (thisframe)
extern CORE_ADDR tic80_frame_chain PARAMS ((struct frame_info *));

#define FRAME_SAVED_PC(FRAME)	tic80_frame_saved_pc (FRAME)
extern CORE_ADDR tic80_frame_saved_pc PARAMS ((struct frame_info *));

/* Extract from an array REGBUF containing the (raw) register state
   a function return value of type TYPE, and copy that, in virtual format,
   into VALBUF.  */

#define EXTRACT_RETURN_VALUE(TYPE,REGBUF,VALBUF) \
  tic80_extract_return_value((TYPE), (REGBUF), (VALBUF))
extern void tic80_extract_return_value PARAMS ((struct type *, char *, char *));

/* Write into appropriate registers a function return value
   of type TYPE, given in virtual format.  */

#define STORE_RETURN_VALUE(TYPE,VALBUF) \
  tic80_store_return_value((TYPE), (VALBUF))
extern void tic80_store_return_value PARAMS ((struct type *, char *));

#endif	/* TM_TIC80_H */
