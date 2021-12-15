	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%rdx), %r8 
	movq	%r8 , %rdx
	subq	%rsi, %rdx
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdx), %r8 
	movq	%rsi, %r9 
	addq	%r8 , %r9 
	movq	%r9 , (%rdx)
	cmpq	%rdi, %r9 
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$2, %rax
	movq	%rdx, %rcx
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
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$1, %rax
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdi
	pushq	%rdx
	movq	-8(%rbp), %rsi
	callq	naive_mod
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%rdx), %rsi
	movq	%rsi, %r8 
	imulq	%rsi, %r8 
	cmpq	%rdi, %r8 
	setg	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$19, %rdi
	callq	naive_prime
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	