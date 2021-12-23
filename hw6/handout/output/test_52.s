	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%r9 )
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
	movq	(%r9 ), %rdi
	movq	%rdi, %r8 
	subq	%rsi, %r8 
	movq	%r8 , (%r9 )
	cmpq	%rsi, %r8 
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	gcd_rec
	popq	%rsi
	popq	%r8 
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
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	