	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r8 
	movq	(%r10), %r11
	movq	%r8 , %r10
	addq	%r11, %r10
	movq	(%r9 ), %r8 
	movq	%r10, %r9 
	addq	%r8 , %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r9 , %r11
	addq	%rdx, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	$-3
	pushq	$-4
	movq	$-5, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	