	.file	"arith2.c"
	.text
	.globl	arith2
	.type	arith2, @function
arith2:
.LFB0:
	.cfi_startproc
	orq	%rsi, %rdi
	sarq	$3, %rdi
	movq	%rdx, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	arith2, .-arith2
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
