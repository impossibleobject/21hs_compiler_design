	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	cmpq	$0, %rsi
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	neq0
	jmp	eq0
	.text
eq0:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
neq0:
	movq	(%rdx), %rdi
	movq	%rdi, %r9 
	subq	%rsi, %r9 
	movq	%r9 , (%rdx)
	cmpq	%rsi, %r9 
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%r9 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	gcd_rec
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$34, %rsi
	movq	$424, %rdi
	callq	gcd_rec
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	