	.data
	.globl	arr_x
arr_x:
	.quad	_global_arr6851
	.data
	.globl	_global_arr6851
_global_arr6851:
	.quad	3
	.quad	3
	.quad	4
	.quad	5
	.data
	.globl	arr_z
arr_z:
	.quad	_global_arr6850
	.data
	.globl	_global_arr6850
_global_arr6850:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	pushq	%rdx
	movq	$24, %rdi
	callq	oat_malloc
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	leaq	arr_x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	%rsi, (%r8 )
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	arr_z(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r8 
	movq	%rsi, (%r8 )
	movq	%rdi, (%rdx)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdi
	movq	%rsi, %rdx
	imulq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	