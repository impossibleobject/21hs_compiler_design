	.data
	.globl	b
b:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	b(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	_then8319
	jmp	_else8318
	.text
_else8318:
	jmp	_merge8317
	.text
_merge8317:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8319:
	movq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8317