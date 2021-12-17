	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_cond793:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	setg	-72(%rbp)
	andq	$1, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$5, %rdi
	callq	fact
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	string_of_int
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	