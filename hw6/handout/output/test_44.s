	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$8, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%r9 , %rax
	setg	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	if
	jmp	else
	.text
else:
	movq	%r9 , %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
gcd:
	movq	(%rdx), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_b
	jmp	loop
	.text
if:
	movq	-8(%rbp), %rax
	subq	%r9 , %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
loop:
	movq	(%rsi), %r9 
	movq	$0, %rax
	cmpq	%r9 , %rax
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	