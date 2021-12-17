	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	xorq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	xorq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	orq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	one_iteration
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$5, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	end
	jmp	loop