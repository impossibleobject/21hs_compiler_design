	.data
	.globl	x
x:
	.quad	_global_arr8811
	.data
	.globl	_global_arr8811
_global_arr8811:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr8810
	.data
	.globl	_global_arr8810
_global_arr8810:
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
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r8 )
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	(%r10), %rdx
	cmpq	$0, %rdx
	jne	_then8826
	jmp	_else8825
	.text
_else8825:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8824:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8826:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rdx
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	$0, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$17, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	$1, %rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	f
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rsi
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rdi
	movq	%rsi, %r8 
	addq	%rdi, %r8 
	movq	%r8 , (%rdx)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	