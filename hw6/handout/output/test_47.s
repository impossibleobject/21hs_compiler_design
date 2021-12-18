	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r11
	movq	%rdi, %rax
	xorq	%r11, %rax
	movq	%rax, -8(%rbp)
	movq	%r11, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %r11
	xorq	-16(%rbp), %r11
	movq	-16(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, -24(%rbp)
	movq	%r11, %rax
	xorq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	andq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %r11
	orq	-40(%rbp), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$1, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%r11), %r10
	movq	%r10, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	%r10, %rdi
	callq	one_iteration
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$5, %rax
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	end
	jmp	loop