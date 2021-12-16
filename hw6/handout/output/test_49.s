	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rsi, %r8 
	xorq	%rdi, %r8 
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r9 
	movq	%r8 , %r10
	xorq	%r9 , %r10
	movq	%r10, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rsi
	andq	$1, %rsi
	movq	%r10, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rdx)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	cmpq	$5, %rdi
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	end
	jmp	loop