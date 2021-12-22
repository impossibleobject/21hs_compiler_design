	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$12, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	cmpq	$0, %rdi
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then8234
	jmp	_else8233
	.text
_else8233:
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8232:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8234:
	movq	(%r9 ), %rdi
	movq	$0, %rdx
	subq	%rdi, %rdx
	movq	(%r8 ), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	