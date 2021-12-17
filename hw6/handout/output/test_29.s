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
	subq	$24, %rsp
	leaq	v2(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -8(%rbp)
	movq	$5, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	v2(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	foo
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -8(%rbp)
	movq	$6, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rbp, %rsp
	popq	%rbp
	retq	