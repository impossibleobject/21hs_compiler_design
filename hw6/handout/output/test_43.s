	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$8, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	setg	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	if
	jmp	else
	.text
else:
	movq	-56(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
gcd:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, %rax
	cmpq	-32(%rbp), %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	ret_b
	jmp	loop
	.text
if:
	movq	-8(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
loop:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, %rax
	cmpq	-56(%rbp), %rax
	sete	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	