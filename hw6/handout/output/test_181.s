	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	%rdi, (%r10)
	movq	%rsi, (%r11)
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%rdi, %r9 
	addq	%r8 , %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r9 , %rsi
	addq	%rdx, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rsi, %r8 
	addq	%rdi, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r8 , %r10
	addq	%r9 , %r10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rdx
	addq	%r11, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
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
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	