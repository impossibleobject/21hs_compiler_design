	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%r11), %r10
	movq	%r10, %r11
	subq	%rsi, %r11
	movq	%rdi, %r10
	subq	%r11, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%r11), %r10
	movq	%rsi, %rax
	addq	%r10, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	%rdi, %rax
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$2, %rax
	movq	%r11, %rcx
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$1, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%rdi
	movq	-8(%rbp), %rsi
	callq	naive_mod
	popq	%rdi
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	$0, %rax
	cmpq	-24(%rbp), %rax
	sete	-32(%rbp)
	andq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	final_false
	jmp	loop
	.text
loop:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	%rdi, %rax
	setg	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$19, %rdi
	callq	naive_prime
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	