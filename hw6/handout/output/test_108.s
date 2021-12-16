	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then8282
	.text
_else8281:
	movq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8280:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8282:
	movq	$-96, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	