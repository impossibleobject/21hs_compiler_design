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
	movq	%rax, %rdx
	movq	(%rdx), %r9 
	cmpq	%rsi, %r9 
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
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
	movq	%rax, %rdx
	movq	(%rdx), %r8 
	cmpq	$0, %r8 
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	none
	jmp	left_next
	.text
left_next:
	pushq	%r8 
	pushq	%rsi
	movq	%r8 , %rdi
	callq	contains
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
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
	cmpq	%rsi, %r9 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	left
	jmp	right
	.text
right:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %r8 
	cmpq	$0, %r8 
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	none
	jmp	right_next
	.text
right_next:
	pushq	%r8 
	pushq	%rsi
	movq	%r8 , %rdi
	callq	contains
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$50, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, -8(%rbp)
	movq	$25, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	movq	%rax, %rsi
	pushq	%rsi
	movq	$75, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	movq	%rax, -16(%rbp)
	pushq	%rsi
	movq	$10, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%rsi
	movq	$30, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%r9 
	movq	%rax, -24(%rbp)
	pushq	%r9 
	pushq	%rsi
	movq	$60, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	movq	$80, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, -32(%rbp)
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	movq	$1, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$100, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r11
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$120, %rsi
	leaq	node1(%rip), %rdi
	callq	contains
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %rdx
	movq	-8(%rbp), %r10
	addq	%rsi, %r10
	movq	-16(%rbp), %rsi
	addq	%r9 , %rsi
	movq	-24(%rbp), %r9 
	addq	%rdi, %r9 
	movq	-32(%rbp), %rdi
	addq	%r8 , %rdi
	movq	%r11, %r8 
	addq	%rdx, %r8 
	movq	%r10, %rdx
	addq	%rsi, %rdx
	movq	%r9 , %rsi
	addq	%rdi, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rsi
	addq	%r8 , %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	