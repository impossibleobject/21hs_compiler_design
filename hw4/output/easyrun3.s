	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	$0
	movq	%rsp, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	pushq	$0
	movq	%rsp, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	pushq	$0
	movq	%rsp, -56(%rbp)
	movq	$0, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	pushq	$0
	movq	%rsp, -72(%rbp)
	movq	$0, %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program.start
	.text
program.start:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$10, %rcx
	cmpq	%rcx, %rax
	setl	-96(%rbp)
	andq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	jne	program.body
	jmp	program.end
	.text
program.body:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	program.start
	.text
program.end:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	