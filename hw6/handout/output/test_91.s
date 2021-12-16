	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$3, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%r8 , (%r10)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond7245
	.text
_body7244:
	movq	(%r10), %r11
	movq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r11, %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond7245
	.text
_cond7245:
	movq	(%rsi), %r11
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %r11
	setl	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_body7244
	jmp	_post7243
	.text
_merge7265:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull7266:
	movq	$4, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7265
	.text
_null7267:
	movq	$5, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge7265
	.text
_post7243:
	movq	%r8 , (%rdi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_null7267
	jmp	_notnull7266