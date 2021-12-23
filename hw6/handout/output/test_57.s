	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %rsi
	subq	$1, %rsi
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	factorial
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdi, %rsi
	imulq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	