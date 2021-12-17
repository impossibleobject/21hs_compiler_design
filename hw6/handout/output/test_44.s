	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	setg	-32(%rbp)
	andq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	if
	jmp	else
	.text
else:
	movq	-72(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
gcd:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, %rax
	cmpq	-48(%rbp), %rax
	sete	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	ret_b
	jmp	loop
	.text
if:
	movq	-24(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
loop:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rax
	cmpq	-72(%rbp), %rax
	sete	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	