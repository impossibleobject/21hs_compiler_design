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
	movq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rsi
	andq	$1, %rsi
	movq	%rdi, %rdx
	orq	%rsi, %rdx
	movq	%rdx, %rax
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
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	end
	jmp	loop