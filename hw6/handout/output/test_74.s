	.data
	.globl	i
i:
	.quad	42
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	$2, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$280, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	$2, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -96(%rbp)
	movq	$3, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	movq	$4, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
	movq	$1, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -144(%rbp)
	movq	$2, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -152(%rbp)
	movq	$3, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -160(%rbp)
	movq	$4, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-128(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond848
	.text
_body847:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond848
	.text
_cond848:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpq	$100, %rax
	setl	-208(%rbp)
	andq	$1, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	_body847
	jmp	_post846
	.text
_post846:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-216(%rbp), %rdi
	callq	g
	popq	%r10
	popq	%r11
	movq	%rax, -224(%rbp)
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-232(%rbp), %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	addq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$3, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-256(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	pushq	%r11
	movq	-264(%rbp), %rdi
	callq	f
	popq	%r11
	movq	%rax, %r10
	movq	-248(%rbp), %rax
	addq	%r10, %rax
	movq	%rax, -272(%rbp)
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
	movq	%r10, %rdi
	callq	f
	popq	%r10
	movq	%rax, %r11
	movq	-272(%rbp), %r10
	addq	%r11, %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -280(%rbp)
	movq	%r10, %r11
	addq	-280(%rbp), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	