	.file	"progvec.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%d "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	.LC3(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	vmovaps	.LC0(%rip), %xmm0
	vmovaps	.LC1(%rip), %xmm1
	leaq	32(%rsp), %rbx
	vmovaps	.LC2(%rip), %xmm2
	vmovaps	%xmm0, 16(%rsp)
	leaq	48(%rsp), %r12
	movq	%rbx, %rbp
	vmovaps	%xmm1, 32(%rsp)
	vmovaps	%xmm2, (%rsp)
.L2:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	movl	$1, %eax
	call	printf@PLT
	addq	$4, %rbp
	cmpq	%r12, %rbp
	jne	.L2
	leaq	.LC3(%rip), %r13
	movl	$10, %edi
	movq	%rsp, %rbp
	call	putchar@PLT
	vmovaps	.LC4(%rip), %xmm3
	leaq	16(%rbp), %r14
	vmovaps	%xmm3, 32(%rsp)
.L3:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	movl	$1, %eax
	call	printf@PLT
	addq	$4, %rbp
	cmpq	%rbp, %r14
	jne	.L3
	leaq	16(%rsp), %rbp
	movl	$10, %edi
	call	putchar@PLT
	leaq	32(%rsp), %r14
	leaq	.LC3(%rip), %r13
.L4:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	movl	$1, %eax
	call	printf@PLT
	addq	$4, %rbp
	cmpq	%r14, %rbp
	jne	.L4
	leaq	.LC3(%rip), %rbp
	movl	$10, %edi
	call	putchar@PLT
.L5:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	vcvtss2sd	(%rbx), %xmm0, %xmm0
	addq	$4, %rbx
	movl	$1, %eax
	call	printf@PLT
	cmpq	%rbx, %r12
	jne	.L5
	movl	$10, %edi
	call	putchar@PLT
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1051260355
	.long	1068037571
	.long	1077810299
	.align 16
.LC1:
	.long	0
	.long	1041542991
	.long	1066708815
	.long	1081796566
	.align 16
.LC2:
	.long	0
	.long	1023596470
	.long	1057150902
	.long	1076205827
	.align 16
.LC4:
	.long	0
	.long	1052332218
	.long	1072325022
	.long	1085396671
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
