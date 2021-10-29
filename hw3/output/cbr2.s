	.text
	.globl	main
main:
	pushq	%rbp
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	$0, %rax
	cmpq	$3, %rax
	cmpq	$0, 24(%rsp)
	je	main.else
	jmp	main.then
	.text
main.then:
	movq	$7, %rax
	addq	$24, %rsp
	popq	%rbp
	retq	
	.text
main.else:
	movq	$9, %rax
	addq	$24, %rsp
	popq	%rbp
	retq	