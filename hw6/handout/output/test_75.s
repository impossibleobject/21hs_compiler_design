	.data
	.globl	i
i:
	.quad	0
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$1, %rax
	setge	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	_then930
	jmp	_else929
	.text
_else929:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	(%r10), %r11
	movq	-32(%rbp), %r10
	addq	%r11, %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge928
	.text
_merge928:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then930:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	(%r11), %r10
	movq	%r10, %r11
	subq	$1, %r11
	pushq	%r11
	movq	-40(%rbp), %rsi
	movq	%r11, %rdi
	callq	f
	popq	%r11
	movq	%rax, %r10
	movq	$1, %r11
	addq	%r10, %r11
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge928
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	movq	-8(%rbp), %rsi
	movq	%r10, %rdi
	callq	f
	popq	%r10
	movq	%rax, %r11
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	addq	%r10, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	