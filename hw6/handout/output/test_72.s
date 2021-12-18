	.data
	.globl	s
s:
	.quad	_str774
	.data
	.globl	_str774
_str774:
	.asciz	"341"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	s(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	print_string
	popq	%r11
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	