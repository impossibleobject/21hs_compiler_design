	.data
	.globl	c
c:
	.quad	_global_struct7176
	.data
	.globl	_global_struct7176
_global_struct7176:
	.quad	10
	.quad	20
	.quad	30
	.quad	rot
	.text
	.globl	rot
rot:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	pushq	%rsi
	pushq	%rdx
	movq	$32, %rdi
	callq	oat_malloc
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	movq	(%rdx), %r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	(%r10), %rdi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	%rdi, (%r9 )
	movq	(%rdx), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	(%r11), %rdi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	%rdi, (%r9 )
	movq	(%rdx), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rdi
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r9 
	movq	%rdi, (%r9 )
	movq	(%rdx), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	(%rdx), %r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	%r11, (%rdx)
	movq	%r8 , (%rsi)
	movq	(%rsi), %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r15
	movq	%rdi, %r15
	pushq	%r8 
	pushq	%rdi
	movq	%r8 , %rdi
	callq	*%r15
	popq	%rdi
	popq	%r8 
	popq	%r15
	movq	%rax, %r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	