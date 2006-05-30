/*
	"$Id: division.s,v 1.4 2006-05-30 23:12:43 wntrmute Exp $"

	libgba overrides for libc division routines

	Copyright 2003-2005 by Dave Murphy.

	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Library General Public
	License as published by the Free Software Foundation; either
	version 2 of the License, or (at your option) any later version.

	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Library General Public License for more details.

	You should have received a copy of the GNU Library General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
	USA.

	Please report all bugs and problems through the bug tracker at
	"http://sourceforge.net/tracker/?group_id=114505&atid=668551".

	"$Header: /lvm/shared/ds/ds/cvs/devkitpro-cvsbackup/libgba/src/division.s,v 1.4 2006-05-30 23:12:43 wntrmute Exp $"

*/

@---------------------------------------------------------------------------------
	.thumb
	.align
	.thumb_func
	.global	   __divsi3	       /* Signed integer division. */
@---------------------------------------------------------------------------------
__divsi3:
@---------------------------------------------------------------------------------
	.thumb_func
	.global __aeabi_idiv
@---------------------------------------------------------------------------------
__aeabi_idiv:
@---------------------------------------------------------------------------------
	swi 6
	bx lr

@---------------------------------------------------------------------------------
	.thumb
	.align
	.thumb_func
	.global	   __udivsi3	       /* Unsigned integer division. */
@---------------------------------------------------------------------------------
__udivsi3:
@---------------------------------------------------------------------------------
	.thumb_func
	.global __aeabi_uidiv
@---------------------------------------------------------------------------------
__aeabi_uidiv:
@---------------------------------------------------------------------------------
	swi 6
        mov r0, r3
	bx lr

@---------------------------------------------------------------------------------
	.thumb
	.align
	.thumb_func
	.global	   __modsi3	       /* Signed integer modulus. */
@---------------------------------------------------------------------------------
__modsi3:
@---------------------------------------------------------------------------------
	swi 6
	mov r0,	r1
	bx lr
