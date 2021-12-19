	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%r10), %r8 
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
	movq	(%r10), %rdx
	movq	%rsi, %r9 
	addq	%rdx, %r9 
	movq	%r9 , (%r10)
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
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$2, %rax
	movq	%r10, %rcx
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
	movq	(%r10), %r8 
	movq	$1, %rdx
	addq	%r9 , %rdx
	movq	%rdx, (%r10)
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	movq	%r8 , %rsi
	callq	naive_mod
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%r10), %r9 
	movq	%r9 , %rsi
	imulq	%r9 , %rsi
	cmpq	%rdi, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$100, %rdi
	callq	naive_prime
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	