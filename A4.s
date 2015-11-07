	.file	"A4.c"
	.global .umul
	.section	".text"
	.align 4
	.global newBox
	.type	newBox, #function
	.proc	010
newBox:
	!#PROLOGUE# 0
	save	%sp, -136, %sp
	!#PROLOGUE# 1
	ld	[%fp+64], %l0
	st	%g0, [%fp-40]
	st	%g0, [%fp-36]
	mov	1, %g1
	st	%g1, [%fp-32]
	mov	1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-32], %o0
	ld	[%fp-28], %o1
	call	.umul, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-24]
	ld	[%fp-40], %g1
	st	%g1, [%l0]
	ld	[%fp-36], %g1
	st	%g1, [%l0+4]
	ld	[%fp-32], %g1
	st	%g1, [%l0+8]
	ld	[%fp-28], %g1
	st	%g1, [%l0+12]
	ld	[%fp-24], %g1
	st	%g1, [%l0+16]
	mov	%l0, %i0
	jmp	%i7+12
	restore
	.size	newBox, .-newBox
	.align 4
	.global move
	.type	move, #function
	.proc	020
move:
	!#PROLOGUE# 0
	save	%sp, -112, %sp
	!#PROLOGUE# 1
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %i4
	ld	[%fp+68], %g1
	ld	[%g1], %i5
	ld	[%fp+72], %g1
	add	%i5, %g1, %g1
	st	%g1, [%i4]
	ld	[%fp+68], %i4
	ld	[%fp+68], %g1
	ld	[%g1+4], %i5
	ld	[%fp+76], %g1
	add	%i5, %g1, %g1
	st	%g1, [%i4+4]
	ret
	restore
	.size	move, .-move
	.align 4
	.global expand
	.type	expand, #function
	.proc	020
expand:
	!#PROLOGUE# 0
	save	%sp, -112, %sp
	!#PROLOGUE# 1
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %l0
	ld	[%fp+68], %g1
	ld	[%g1+8], %o0
	ld	[%fp+72], %o1
	call	.umul, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%l0+8]
	ld	[%fp+68], %l0
	ld	[%fp+68], %g1
	ld	[%g1+12], %o0
	ld	[%fp+72], %o1
	call	.umul, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%l0+12]
	ld	[%fp+68], %l0
	ld	[%fp+68], %g1
	ld	[%fp+68], %o5
	ld	[%g1+8], %o0
	ld	[%o5+12], %o1
	call	.umul, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%l0+16]
	ret
	restore
	.size	expand, .-expand
	.section	".rodata"
	.align 8
.LLC0:
	.asciz	"Box %s origin = (%d, %d)  width = %d  height = %d  area = %d\n"
	.section	".text"
	.align 4
	.global printBox
	.type	printBox, #function
	.proc	020
printBox:
	!#PROLOGUE# 0
	save	%sp, -120, %sp
	!#PROLOGUE# 1
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %o5
	ld	[%fp+72], %o4
	ld	[%fp+72], %o7
	ld	[%fp+72], %l0
	ld	[%fp+72], %g1
	ld	[%g1+16], %g1
	st	%g1, [%sp+92]
	sethi	%hi(.LLC0), %g1
	or	%g1, %lo(.LLC0), %o0
	ld	[%fp+68], %o1
	ld	[%o5], %o2
	ld	[%o4+4], %o3
	ld	[%o7+8], %o4
	ld	[%l0+12], %o5
	call	printf, 0
	 nop
	nop
	ret
	restore
	.size	printBox, .-printBox
	.align 4
	.global equal
	.type	equal, #function
	.proc	04
equal:
	!#PROLOGUE# 0
	save	%sp, -120, %sp
	!#PROLOGUE# 1
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-20]
	ld	[%fp+68], %g1
	ld	[%fp+72], %i5
	ld	[%g1], %i4
	ld	[%i5], %g1
	cmp	%i4, %g1
	bne	.LL6
	nop
	ld	[%fp+68], %g1
	ld	[%fp+72], %i5
	ld	[%g1+4], %i4
	ld	[%i5+4], %g1
	cmp	%i4, %g1
	bne	.LL6
	nop
	ld	[%fp+68], %g1
	ld	[%fp+72], %i5
	ld	[%g1+8], %i4
	ld	[%i5+8], %g1
	cmp	%i4, %g1
	bne	.LL6
	nop
	ld	[%fp+68], %g1
	ld	[%fp+72], %i5
	ld	[%g1+12], %i4
	ld	[%i5+12], %g1
	cmp	%i4, %g1
	bne	.LL6
	nop
	mov	1, %g1
	st	%g1, [%fp-20]
.LL6:
	ld	[%fp-20], %g1
	mov	%g1, %i0
	ret
	restore
	.size	equal, .-equal
	.section	".rodata"
	.align 8
.LLC1:
	.asciz	"Initial box values:\n"
	.align 8
.LLC2:
	.asciz	"first"
	.align 8
.LLC3:
	.asciz	"second"
	.align 8
.LLC4:
	.asciz	"\nChanged box values:\n"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	!#PROLOGUE# 0
	save	%sp, -160, %sp
	!#PROLOGUE# 1
	add	%fp, -40, %g1
	st	%g1, [%sp+64]
	call	newBox, 0
	nop
	unimp	20
	add	%fp, -64, %g1
	st	%g1, [%sp+64]
	call	newBox, 0
	nop
	unimp	20
	sethi	%hi(.LLC1), %g1
	or	%g1, %lo(.LLC1), %o0
	call	printf, 0
	 nop
	add	%fp, -40, %o5
	sethi	%hi(.LLC2), %g1
	or	%g1, %lo(.LLC2), %o0
	mov	%o5, %o1
	call	printBox, 0
	 nop
	add	%fp, -64, %o5
	sethi	%hi(.LLC3), %g1
	or	%g1, %lo(.LLC3), %o0
	mov	%o5, %o1
	call	printBox, 0
	 nop
	add	%fp, -40, %g1
	add	%fp, -64, %o5
	mov	%g1, %o0
	mov	%o5, %o1
	call	equal, 0
	 nop
	mov	%o0, %g1
	cmp	%g1, 0
	be	.LL11
	nop
	add	%fp, -40, %g1
	mov	%g1, %o0
	mov	-5, %o1
	mov	7, %o2
	call	move, 0
	 nop
	add	%fp, -64, %g1
	mov	%g1, %o0
	mov	3, %o1
	call	expand, 0
	 nop
.LL11:
	sethi	%hi(.LLC4), %g1
	or	%g1, %lo(.LLC4), %o0
	call	printf, 0
	 nop
	add	%fp, -40, %o5
	sethi	%hi(.LLC2), %g1
	or	%g1, %lo(.LLC2), %o0
	mov	%o5, %o1
	call	printBox, 0
	 nop
	add	%fp, -64, %o5
	sethi	%hi(.LLC3), %g1
	or	%g1, %lo(.LLC3), %o0
	mov	%o5, %o1
	call	printBox, 0
	 nop
	mov	%g1, %i0
	ret
	restore
	.size	main, .-main
	.ident	"GCC: (GNU) 3.4.3 (csl-sol210-3_4-branch+sol_rpath)"
