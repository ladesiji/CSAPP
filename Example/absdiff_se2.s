	.file	"absdiff_se2.c"
	.text
	.globl	absdiff_se2
	.type	absdiff_se2, @function
absdiff_se2:
.LFB0:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jge	.L4
.L2:
	addq	$1, lt_cnt(%rip)
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
.L4:
	addq	$1, ge_cnt(%rip)
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff_se2, .-absdiff_se2
	.globl	ge_cnt
	.bss
	.align 8
	.type	ge_cnt, @object
	.size	ge_cnt, 8
ge_cnt:
	.zero	8
	.globl	lt_cnt
	.align 8
	.type	lt_cnt, @object
	.size	lt_cnt, 8
lt_cnt:
	.zero	8
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
