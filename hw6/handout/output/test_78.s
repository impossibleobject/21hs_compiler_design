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
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdi
	cmpq	$1, %rdi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	(%r10), %rdx
	movq	(%r9 ), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, (%r8 )
	jmp	_merge928
	.text
_merge928:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	(%r9 ), %rdx
	movq	(%r10), %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	$1, %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_merge928
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	