	.data
	.globl	a
a:
	.quad	1
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rdi
	pushq	%rsi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdx, (%r9 )
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%r8 , (%rdx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2128
	.text
_body2127:
	movq	(%rdx), %r10
	movq	(%rdi), %r11
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	-8(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%rdi)
	jmp	_cond2128
	.text
_cond2128:
	movq	(%rdi), %r10
	movq	(%r9 ), %r11
	cmpq	%r11, %r10
	setl	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	_body2127
	jmp	_post2126
	.text
_post2126:
	movq	%r8 , (%rsi)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rdx
	movq	%rdi, %r9 
	addq	%rdx, %r9 
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	%r9 , %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	