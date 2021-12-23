	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then8251
	.text
_else8250:
	movq	$4, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8249:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8251:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	