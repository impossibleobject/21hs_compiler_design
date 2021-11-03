	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
	movq	$42, %rax
	addq	$0, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
	movq	$0, %rax
	addq	$0, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	$0, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	$100, %r10
	movq	-32(%rbp), %r11
	movq	%r10, (%r11)
	movq	-32(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -40(%rbp)
	movq	-40(%rbp), %r10
	movq	$0, -48(%rbp)
	cmpq	$0, %r10
	setne	-48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$1, %rax
	je	main.then
	jmp	main.else
	.text
main.then:
	callq	foo
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	jmp	main.end
	.text
main.else:
	callq	bar
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	jmp	main.end
	.text
main.end:
	movq	-24(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$72, %rsp
	popq	%rbp
	retq	