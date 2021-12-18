	.data
	.globl	gint
gint:
	.quad	42
	.data
	.globl	v1
v1:
	.quad	0
	.quad	gint
	.data
	.globl	v2
v2:
	.quad	1
	.quad	0
	.data
	.globl	gstr
gstr:
	.asciz	"hello, world!"
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	v2(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	$5, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	leaq	v2(%rip), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	%r10, %rdi
	callq	foo
	popq	%r10
	popq	%r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	$6, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%rbp, %rsp
	popq	%rbp
	retq	