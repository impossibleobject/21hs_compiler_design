	.data
	.globl	arr1
arr1:
	.quad	_global_arr5367
	.data
	.globl	_global_arr5367
_global_arr5367:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	arr2
arr2:
	.quad	_global_arr5366
	.data
	.globl	_global_arr5366
_global_arr5366:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	5
	.text
	.globl	arrcheck
arrcheck:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_body5343:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setne	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_then5361
	jmp	_else5360
	.text
_cond5344:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	setl	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_body5343
	jmp	_post5342
	.text
_else5360:
	jmp	_merge5359
	.text
_merge5359:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_post5342:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5361:
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge5359
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	arr2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	arr1(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$4, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	arrcheck
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$1, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	_then5324
	jmp	_else5323
	.text
_else5323:
	jmp	_merge5322
	.text
_merge5322:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5324:
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge5322