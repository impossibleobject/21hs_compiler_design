	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %r10
	movq	-16(%rbp), %r11
	movq	%r10, (%r11)
	movq	$1, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	jmp	factorial.start
	.text
factorial.start:
	movq	-16(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -32(%rbp)
	movq	-32(%rbp), %r10
	movq	$0, -40(%rbp)
	cmpq	$0, %r10
	setg	-40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$1, %rax
	je	factorial.then
	jmp	factorial.end
	.text
factorial.then:
	movq	-24(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -48(%rbp)
	movq	-16(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -56(%rbp)
	movq	-48(%rbp), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	-16(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -72(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %r10
	movq	-16(%rbp), %r11
	movq	%r10, (%r11)
	jmp	factorial.start
	.text
factorial.end:
	movq	-24(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$88, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	$0, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	$5, %rdi
	callq	factorial
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq	