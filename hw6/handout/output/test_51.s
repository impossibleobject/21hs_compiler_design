	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rsi, %rax
	movq	%rax, -24(%rbp)
	movq	%rdi, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	cmpq	%rdi, %rax
	setg	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
final_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
final_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
inc:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$1, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%rdi
	movq	-16(%rbp), %rsi
	callq	naive_mod
	popq	%rdi
	movq	%rax, -32(%rbp)
	movq	$0, %rax
	cmpq	-32(%rbp), %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	final_false
	jmp	loop
	.text
loop:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rdi, %rax
	setg	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$100, %rdi
	callq	naive_prime
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	