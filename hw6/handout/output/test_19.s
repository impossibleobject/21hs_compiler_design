	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	foo
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	