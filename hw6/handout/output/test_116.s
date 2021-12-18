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
	subq	$144, %rsp
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
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_body5343:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setne	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_then5361
	jmp	_else5360
	.text
_cond5344:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body5343
	jmp	_post5342
	.text
_else5360:
	jmp	_merge5359
	.text
_merge5359:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_post5342:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5361:
	movq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge5359
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$1, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	leaq	arr2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	leaq	arr1(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdx
	movq	%r10, %rsi
	movq	-8(%rbp), %rdi
	callq	arrcheck
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$1, %rax
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then5324
	jmp	_else5323
	.text
_else5323:
	jmp	_merge5322
	.text
_merge5322:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5324:
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_merge5322