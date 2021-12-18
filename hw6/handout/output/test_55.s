	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	cmpq	$0, %rdi
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %r11
	subq	$1, %r11
	pushq	%r11
	pushq	%rdi
	movq	%r11, %rdi
	callq	factorial
	popq	%rdi
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	%rdi, %r11
	imulq	-8(%rbp), %r11
	movq	%r11, %rax
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
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	