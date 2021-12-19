	.data
	.globl	s
s:
	.quad	_str8185
	.data
	.globl	_str8185
_str8185:
	.asciz	"hello!"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	