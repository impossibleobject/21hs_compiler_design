	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %r10
	addq	%rsi, %r10
	movq	%r10, %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rsi
	addq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	addq	%r8 , %rdi
	movq	%rdi, %rsi
	addq	%r9 , %rsi
	movq	%rsi, %rdi
	addq	16(%rbp), %rdi
	movq	%rdi, %rsi
	addq	24(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %r11
	addq	%rsi, %r11
	movq	%r11, %r10
	addq	%rdx, %r10
	movq	%r10, %rdi
	addq	-8(%rbp), %rdi
	movq	%rdi, %rsi
	addq	%r8 , %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	baz
	addq	$16, %rsp
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rsi, %rdi
	addq	%r9 , %rdi
	movq	%rdi, %rsi
	addq	16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	24(%rbp), %rdi
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$1, %rdi
	callq	foo
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	