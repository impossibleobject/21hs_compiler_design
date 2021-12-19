	.data
	.globl	b
b:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	leaq	b(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	$0, %rdi
	jne	_then8319
	jmp	_else8318
	.text
_else8318:
	jmp	_merge8317
	.text
_merge8317:
	movq	(%rdi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8319:
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8317