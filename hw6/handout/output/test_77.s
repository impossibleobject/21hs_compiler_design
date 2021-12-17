	.data
	.globl	i
i:
	.quad	42
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$2, %rsi
	movq	-24(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$408, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	$1, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	$2, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	$3, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	movq	$4, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)
	movq	$1, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -160(%rbp)
	movq	$2, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -168(%rbp)
	movq	$3, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -176(%rbp)
	movq	$4, %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond848
	.text
_body847:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond848
	.text
_cond848:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	$100, %rax
	setl	-224(%rbp)
	andq	$1, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	_body847
	jmp	_post846
	.text
_post846:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	g
	movq	%rax, -240(%rbp)
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	f
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	addq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	$3, %rsi
	movq	-280(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rdi
	callq	f
	movq	%rax, -304(%rbp)
	movq	-264(%rbp), %rax
	addq	-304(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	$1, %rsi
	movq	-328(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	$1, %rsi
	movq	-352(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-344(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rdi
	callq	f
	movq	%rax, -376(%rbp)
	movq	-312(%rbp), %rax
	addq	-376(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rdi
	callq	f
	movq	%rax, -400(%rbp)
	movq	-384(%rbp), %rax
	addq	-400(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	