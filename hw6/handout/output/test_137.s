	.data
	.globl	c
c:
	.quad	_global_struct7176
	.data
	.globl	_global_struct7176
_global_struct7176:
	.quad	10
	.quad	20
	.quad	30
	.quad	rot
	.text
	.globl	rot
rot:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r11)
	pushq	%r11
	movq	$32, %rdi
	callq	oat_malloc
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %r11
	movq	-136(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	%r10, %rdi
	callq	*%r11
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	