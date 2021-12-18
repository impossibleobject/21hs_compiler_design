	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	$111, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	$112, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	$113, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -72(%rbp)
	movq	$114, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -80(%rbp)
	movq	$115, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	pushq	%r10
	movq	-88(%rbp), %rdi
	callq	string_of_array
	popq	%r10
	movq	%rax, %r11
	movq	%r11, (%r10)
	movq	(%r10), %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	array_of_string
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2319
	.text
_body2318:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%r11, %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	addq	%r11, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2319
	.text
_cond2319:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	$5, %r10
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_body2318
	jmp	_post2317
	.text
_post2317:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	