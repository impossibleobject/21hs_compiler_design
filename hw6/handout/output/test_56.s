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
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rdx), %r8 
	cmpq	$0, %r8 
	setg	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	then
	jmp	end
	.text
then:
	movq	(%rsi), %r10
	movq	(%rdx), %rdi
	movq	%r10, %r8 
	imulq	%rdi, %r8 
	movq	%r8 , (%rsi)
	movq	(%rdx), %r9 
	movq	%r9 , %r10
	subq	$1, %r10
	movq	%r10, (%rdx)
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