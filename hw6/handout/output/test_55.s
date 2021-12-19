	.data
	.globl	y
y:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	$0, %rdi
	jne	_then8165
	jmp	_else8164
	.text
_else8164:
	jmp	_merge8163
	.text
_merge8163:
	movq	$15, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8165:
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	