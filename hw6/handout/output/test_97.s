	.text
	.globl	sub
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$168, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	pushq	%r10
	pushq	%r9 
	movq	-32(%rbp), %rdi
	callq	array_of_string
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r11, (%r9 )
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	-40(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2491
	.text
_body2490:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2491
	.text
_cond2491:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_body2490
	jmp	_post2489
	.text
_post2489:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	string_of_array
	popq	%r10
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rsi, (%r11)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	pushq	%r10
	movq	$5, %rdx
	movq	$3, %rsi
	movq	%r10, %rdi
	callq	sub
	popq	%r10
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	print_string
	popq	%r11
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	