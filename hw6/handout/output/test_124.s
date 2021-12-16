	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	pushq	%rdx
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	$4, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	%rdi, (%rdx)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	$5, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	(%rdx), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %rsi
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %r10
	movq	%rsi, %r11
	addq	%r10, %r11
	movq	%r11, %rsi
	addq	$3, %rsi
	movq	%rsi, (%r9 )
	movq	(%rdx), %r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdx), %r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %r10
	movq	%r10, %r11
	addq	$4, %r11
	movq	%r11, (%rdi)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	