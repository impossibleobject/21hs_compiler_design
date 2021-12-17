	.data
	.globl	node1
node1:
	.quad	node2
	.quad	node3
	.quad	50
	.data
	.globl	node2
node2:
	.quad	node4
	.quad	node5
	.quad	25
	.data
	.globl	node3
node3:
	.quad	node6
	.quad	node7
	.quad	75
	.data
	.globl	node4
node4:
	.quad	node8
	.quad	0
	.quad	10
	.data
	.globl	node5
node5:
	.quad	0
	.quad	0
	.quad	30
	.data
	.globl	node6
node6:
	.quad	0
	.quad	0
	.quad	60
	.data
	.globl	node7
node7:
	.quad	0
	.quad	0
	.quad	80
	.data
	.globl	node8
node8:
	.quad	0
	.quad	0
	.quad	1
	.text
	.globl	contains
contains:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rsi, %rax
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	equal
	jmp	notequal
	.text
equal:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
left:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	none
	jmp	left_next
	.text
left_next:
	pushq	%rsi
	movq	-40(%rbp), %rdi
	callq	contains
	popq	%rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
none:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
notequal:
	movq	-16(%rbp), %rax
	cmpq	%rsi, %rax
	setg	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	left
	jmp	right
	.text
right:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, %rax
	sete	-88(%rbp)
	andq	$1, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	none
	jmp	right_next
	.text
right_next:
	pushq	%rsi
	movq	-80(%rbp), %rdi
	callq	contains
	popq	%rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	$50, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -8(%rbp)
	movq	$25, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -16(%rbp)
	movq	$75, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -24(%rbp)
	movq	$10, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -32(%rbp)
	movq	$30, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -40(%rbp)
	movq	$60, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -48(%rbp)
	movq	$80, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -56(%rbp)
	movq	$1, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -64(%rbp)
	movq	$100, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -72(%rbp)
	movq	$120, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	