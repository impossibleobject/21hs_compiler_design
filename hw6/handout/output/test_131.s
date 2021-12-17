	.data
	.globl	_str_arr6909
_str_arr6909:
	.asciz	"hello"
	.text
	.globl	neg
neg:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$48, %rdi
	callq	oat_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	$3, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	$1, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr6909(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	$3, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6924
	.text
_body6923:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	$0, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6924
	.text
_cond6924:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_body6923
	jmp	_post6922
	.text
_else6962:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
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
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, -200(%rbp)
	movq	-80(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$32, %rax
	movq	%rax, -208(%rbp)
	movq	$0, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, -216(%rbp)
	leaq	neg(%rip), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	jne	_then6963
	jmp	_else6962
	.text
_then6963:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	callq	*-288(%rbp)
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	