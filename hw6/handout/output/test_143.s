	.data
	.globl	x
x:
	.quad	_global_arr7411
	.data
	.globl	_global_arr7411
_global_arr7411:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr7410
	.data
	.globl	_global_arr7410
_global_arr7410:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	_then7426
	jmp	_else7425
	.text
_else7425:
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge7424:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then7426:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdx
	movq	%r10, %rsi
	movq	-8(%rbp), %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$17, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdx
	movq	%r10, %rsi
	movq	-24(%rbp), %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rdx
	movq	%r10, %rsi
	movq	-48(%rbp), %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %r10
	addq	-64(%rbp), %r10
	movq	%r10, (%r11)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	