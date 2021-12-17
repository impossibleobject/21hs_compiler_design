	.data
	.globl	arr
arr:
	.quad	_global_arr8178
	.data
	.globl	_global_arr8178
_global_arr8178:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	