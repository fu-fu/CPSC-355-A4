	.file	"A4.c"
	.global .umul
	.section	".text"
	.align 4
	.global newBox
	.type	newBox, #function
	.proc	010
newBox:
	!#PROLOGUE# 0
	add	%sp, -136, %sp
	!#PROLOGUE# 1
	ld	[%sp+200], %o0
	mov	1, %g1
	st	%g1, [%o0+16]
	st	%g0, [%o0]
	st	%g0, [%o0+4]
	st	%g1, [%o0+8]
	st	%g1, [%o0+12]
	jmp	%o7+12
	sub	%sp, -136, %sp
	.size	newBox, .-newBox
	.align 4
	.global move
	.type	move, #function
	.proc	020
move:
	!#PROLOGUE# 0
	!#PROLOGUE# 1
	ld	[%o0], %o5
	ld	[%o0+4], %g1
	add	%o5, %o1, %o5
	add	%g1, %o2, %g1
	st	%g1, [%o0+4]
	retl
	st	%o5, [%o0]
	.size	move, .-move
	.align 4
	.global expand
	.type	expand, #function
	.proc	020
expand:
	!#PROLOGUE# 0
	save	%sp, -112, %sp
	!#PROLOGUE# 1
	ld	[%i0+8], %o0
	call	.umul, 0
	mov	%i1, %o1
	mov	%o0, %l0
	st	%o0, [%i0+8]
	mov	%i1, %o1
	call	.umul, 0
	ld	[%i0+12], %o0
	mov	%o0, %o1
	st	%o0, [%i0+12]
	call	.umul, 0
	mov	%l0, %o0
	st	%o0, [%i0+16]
	ret
	restore
	.size	expand, .-expand
	.section	.rodata.str1.8,"aMS",@progbits,1
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
	ld	[%i1+16], %g1
	sethi	%hi(.LLC0), %o0
	st	%g1, [%sp+92]
	or	%o0, %lo(.LLC0), %o0
	mov	%i0, %o1
	ld	[%i1+12], %o5
	ld	[%i1], %o2
	ld	[%i1+4], %o3
	call	printf, 0
	ld	[%i1+8], %o4
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
	!#PROLOGUE# 1
	ld	[%o0], %o5
	ld	[%o1], %g1
	cmp	%o5, %g1
	bne	.LL6
	mov	0, %o4
	ld	[%o0+4], %o5
	ld	[%o1+4], %g1
	cmp	%o5, %g1
	bne	.LL6
	nop
	ld	[%o0+8], %o5
	ld	[%o1+8], %g1
	cmp	%o5, %g1
	bne	.LL6
	nop
	ld	[%o0+12], %g1
	ld	[%o1+12], %o0
	cmp	%g1, %o0
	bne	.LL6
	nop
	mov	1, %o4
.LL6:
	retl
	mov	%o4, %o0
	.size	equal, .-equal
	.section	.rodata.str1.8
	.align 8
.LLC1:
	.asciz	"Initial box values:"
	.align 8
.LLC2:
	.asciz	"first"
	.align 8
.LLC3:
	.asciz	"second"
	.align 8
.LLC4:
	.asciz	"\nChanged box values:"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	!#PROLOGUE# 0
	save	%sp, -216, %sp
	!#PROLOGUE# 1
	mov	1, %o7
	st	%o7, [%fp-104]
	st	%o7, [%fp-100]
	ldd	[%fp-104], %l0
	std	%l0, [%fp-80]
	st	%g0, [%fp-112]
	st	%g0, [%fp-108]
	ldd	[%fp-112], %o0
	st	%o7, [%fp-80]
	st	%o7, [%fp-76]
	std	%o0, [%fp-88]
	ldd	[%fp-80], %o2
	std	%o2, [%fp-56]
	std	%o2, [%fp-104]
	st	%g0, [%fp-88]
	st	%g0, [%fp-84]
	ldd	[%fp-88], %o4
	std	%o0, [%fp-40]
	sethi	%hi(.LLC1), %o2
	std	%o4, [%fp-64]
	st	%o7, [%fp-48]
	st	%o7, [%fp-24]
	st	%o7, [%fp-72]
	std	%o4, [%fp-112]
	st	%o7, [%fp-96]
	std	%l0, [%fp-32]
	call	puts, 0
	or	%o2, %lo(.LLC1), %o0
	ld	[%fp-24], %o1
	sethi	%hi(.LLC0), %i0
	st	%o1, [%sp+92]
	sethi	%hi(.LLC2), %l1
	or	%l1, %lo(.LLC2), %o1
	ld	[%fp-40], %o2
	ld	[%fp-36], %o3
	ld	[%fp-32], %o4
	ld	[%fp-28], %o5
	call	printf, 0
	or	%i0, %lo(.LLC0), %o0
	ld	[%fp-48], %o0
	st	%o0, [%sp+92]
	sethi	%hi(.LLC3), %l2
	ld	[%fp-56], %o4
	or	%i0, %lo(.LLC0), %o0
	or	%l2, %lo(.LLC3), %o1
	ld	[%fp-64], %o2
	ld	[%fp-60], %o3
	call	printf, 0
	ld	[%fp-52], %o5
	ld	[%fp-40], %o4
	ld	[%fp-64], %g1
	cmp	%o4, %g1
	bne	.LL31
	sethi	%hi(.LLC4), %o0
	ld	[%fp-36], %o5
	ld	[%fp-60], %o3
	cmp	%o5, %o3
	bne	.LL31
	nop
	ld	[%fp-32], %o0
	ld	[%fp-56], %l0
	cmp	%o0, %l0
	bne,a	.LL31
	sethi	%hi(.LLC4), %o0
	ld	[%fp-28], %l3
	ld	[%fp-52], %g1
	cmp	%l3, %g1
	bne,a	.LL31
	sethi	%hi(.LLC4), %o0
	add	%o4, -5, %o1
	add	%o5, 7, %o5
	st	%o1, [%fp-40]
	st	%o5, [%fp-36]
	call	.umul, 0
	mov	3, %o1
	mov	%o0, %l0
	st	%o0, [%fp-56]
	mov	3, %o1
	call	.umul, 0
	mov	%l3, %o0
	mov	%o0, %o1
	st	%o0, [%fp-52]
	call	.umul, 0
	mov	%l0, %o0
	st	%o0, [%fp-48]
	sethi	%hi(.LLC4), %o0
.LL31:
	call	puts, 0
	or	%o0, %lo(.LLC4), %o0
	ld	[%fp-24], %l3
	or	%l1, %lo(.LLC2), %o1
	ld	[%fp-40], %o2
	ld	[%fp-36], %o3
	ld	[%fp-32], %o4
	ld	[%fp-28], %o5
	or	%i0, %lo(.LLC0), %o0
	call	printf, 0
	st	%l3, [%sp+92]
	ld	[%fp-48], %o4
	st	%o4, [%sp+92]
	or	%i0, %lo(.LLC0), %o0
	or	%l2, %lo(.LLC3), %o1
	ld	[%fp-64], %o2
	ld	[%fp-60], %o3
	ld	[%fp-56], %o4
	call	printf, 0
	ld	[%fp-52], %o5
	ret
	restore
	.size	main, .-main
	.ident	"GCC: (GNU) 3.4.3 (csl-sol210-3_4-branch+sol_rpath)"
