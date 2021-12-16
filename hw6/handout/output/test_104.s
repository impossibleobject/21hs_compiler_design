	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then2802
	jmp	_else2801
	.text
_else2801:
	movq	(%rdx), %r9 
	movq	(%rdx), %r10
	movq	%r10, %rdx
	subq	$1, %rdx
	pushq	%r9 
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdi
	movq	%r9 , %r8 
	imulq	%rdi, %r8 
	movq	%r8 , (%rsi)
	jmp	_merge2800
	.text
_merge2800:
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2802:
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge2800
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	f
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	