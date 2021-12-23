	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then8264
	.text
_else8263:
	movq	$46, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8262:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8264:
	movq	$23, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	