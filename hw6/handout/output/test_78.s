	.data
	.globl	i
i:
	.quad	0
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	cmpq	$1, %rsi
	setge	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%r9 )
	jmp	_merge928
	.text
_merge928:
	movq	(%r9 ), %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%r8 ), %r10
	movq	(%rdx), %r11
	movq	%r11, %rdx
	subq	$1, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r10, %rsi
	movq	%rdx, %rdi
	callq	f
	popq	%rdx
	popq	%r9 
	popq	%r10
	movq	%rax, %rsi
	movq	$1, %rdi
	addq	%rsi, %rdi
	movq	%rdi, (%r9 )
	jmp	_merge928
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	(%rdx), %r8 
	pushq	%r8 
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	f
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r9 , %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	