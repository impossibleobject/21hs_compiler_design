	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	then
	jmp	end
	.text
then:
	movq	(%rsi), %rdi
	movq	(%rdx), %r8 
	movq	%rdi, %r9 
	imulq	%r8 , %r9 
	movq	%r9 , (%rsi)
	movq	(%rdx), %rdi
	movq	%rdi, %r8 
	subq	$1, %r8 
	movq	%r8 , (%rdx)
	jmp	start
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	