	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r11, (%r9 )
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7287
	.text
_body7286:
	movq	(%r9 ), %r8 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7287
	.text
_cond7287:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body7286
	jmp	_post7285
	.text
_post7285:
	movq	%r11, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	