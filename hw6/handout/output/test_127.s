	.data
	.globl	red
red:
	.quad	_global_struct6793
	.data
	.globl	_global_struct6793
_global_struct6793:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	green
green:
	.quad	_global_struct6792
	.data
	.globl	_global_struct6792
_global_struct6792:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	blue
blue:
	.quad	_global_struct6791
	.data
	.globl	_global_struct6791
_global_struct6791:
	.quad	0
	.quad	0
	.quad	255
	.data
	.globl	points
points:
	.quad	_global_arr6790
	.data
	.globl	_global_arr6790
_global_arr6790:
	.quad	1
	.quad	_global_struct6789
	.data
	.globl	_global_struct6789
_global_struct6789:
	.quad	_global_struct6788
	.quad	_global_struct6787
	.quad	_global_struct6786
	.data
	.globl	_global_struct6788
_global_struct6788:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	_global_struct6787
_global_struct6787:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	_global_struct6786
_global_struct6786:
	.quad	0
	.quad	0
	.quad	255
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	movq	$0, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdi
	popq	%r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$2, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	movq	$0, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdi
	popq	%r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$4, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	movq	$0, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdi
	popq	%r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$0, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %r9 
	movq	%rdi, %r10
	imulq	%r9 , %r10
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%rdi
	movq	$0, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%rdi
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r11
	movq	%r10, %rdx
	addq	%r11, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	