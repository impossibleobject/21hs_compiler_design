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
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	cmpq	%rsi, %r10
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	movq	%rax, %r11
	movq	(%r11), %r10
	cmpq	$0, %r10
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	none
	jmp	left_next
	.text
left_next:
	pushq	%r10
	pushq	%rsi
	movq	%r10, %rdi
	callq	contains
	popq	%rsi
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
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
	cmpq	%rsi, %r10
	setg	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	left
	jmp	right
	.text
right:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	cmpq	$0, %r10
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	none
	jmp	right_next
	.text
right_next:
	pushq	%r10
	pushq	%rsi
	movq	%r10, %rdi
	callq	contains
	popq	%rsi
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	$50, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, %r11
	pushq	%r11
	movq	$25, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r11
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$75, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$10, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$30, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$60, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$80, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -40(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -48(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$100, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$120, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%r10
	popq	%r11
	movq	%rax, -64(%rbp)
	movq	%r11, %rax
	addq	%r10, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %r11
	addq	-48(%rbp), %r11
	movq	-56(%rbp), %r10
	addq	-64(%rbp), %r10
	movq	-72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	%r11, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %r11
	addq	-104(%rbp), %r11
	movq	%r11, %rax
	addq	%r10, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	