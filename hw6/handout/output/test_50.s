	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	cmpq	$0, %rsi
	setne	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
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
	movq	(%r11), %r10
	movq	%r10, %rax
	subq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	%rsi, %rax
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%rsi
	movq	%rsi, %rdi
	movq	-8(%rbp), %rsi
	callq	gcd_rec
	popq	%rsi
	movq	%rax, %r11
	movq	%r11, %rax
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
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	