	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r11
	addq	%rdi, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$17, %rdi
	callq	foo
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	