	.file	"progvec.c"
	.text
	.section	.rodata
.LC3:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	cvtsi2ss	-4(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	movss	%xmm0, -48(%rbp,%rax,4)
	cvtsi2sd	-4(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	cltq
	movss	-48(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	movss	%xmm0, -64(%rbp,%rax,4)
	cvtsi2sd	-4(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	cltq
	movss	-64(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	movss	%xmm0, -80(%rbp,%rax,4)
	cvtsi2sd	-4(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	cltq
	movss	-80(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	movss	%xmm0, -48(%rbp,%rax,4)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$3, -4(%rbp)
	jle	.L3
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	cltq
	movss	-80(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L4:
	cmpl	$3, -8(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -12(%rbp)
	jmp	.L6
.L7:
	movl	-12(%rbp), %eax
	cltq
	movss	-64(%rbp,%rax,4), %xmm1
	movl	-12(%rbp), %eax
	cltq
	movss	-48(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	cltq
	movss	%xmm0, -80(%rbp,%rax,4)
	addl	$1, -12(%rbp)
.L6:
	cmpl	$3, -12(%rbp)
	jle	.L7
	movl	$0, -16(%rbp)
	jmp	.L8
.L9:
	movl	-16(%rbp), %eax
	cltq
	movss	-48(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -16(%rbp)
.L8:
	cmpl	$3, -16(%rbp)
	jle	.L9
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -20(%rbp)
	jmp	.L10
.L11:
	movl	-20(%rbp), %eax
	cltq
	movss	-64(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L10:
	cmpl	$3, -20(%rbp)
	jle	.L11
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -24(%rbp)
	jmp	.L12
.L13:
	movl	-24(%rbp), %eax
	cltq
	movss	-80(%rbp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -24(%rbp)
.L12:
	cmpl	$3, -24(%rbp)
	jle	.L13
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1374389535
	.long	1070931640
	.align 8
.LC1:
	.long	3264175145
	.long	1071393013
	.align 8
.LC2:
	.long	3264175145
	.long	1070344437
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
