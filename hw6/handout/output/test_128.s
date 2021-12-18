	.data
	.globl	_str_arr6909
_str_arr6909:
	.asciz	"hello"
	.text
	.globl	neg
neg:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, %r11
	subq	-8(%rbp), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	movq	$48, %rdi
	callq	oat_malloc
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	$3, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr6909(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	$3, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond6924
	.text
_body6923:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond6924
	.text
_cond6924:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	setl	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_body6923
	jmp	_post6922
	.text
_else6962:
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6961:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post6922:
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %r11
	movq	-64(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$32, %rax
	movq	%rax, %r11
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, %r11
	leaq	neg(%rip), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$0, %r11
	jne	_then6963
	jmp	_else6962
	.text
_then6963:
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	movq	-192(%rbp), %rdi
	callq	*%r11
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	