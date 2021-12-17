	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$3, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond254
	.text
_body253:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond254
	.text
_cond254:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_body253
	jmp	_post252
	.text
_post252:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	