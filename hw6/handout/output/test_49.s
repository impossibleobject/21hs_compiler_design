	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rdi, %r8 
	xorq	%rsi, %r8 
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%r8 , %rsi
	xorq	%rdx, %rsi
	movq	%rdx, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	movq	%rdx, %rdi
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
	movq	%rsp, %r9 
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%r9 ), %rsi
	movq	%rsi, %r8 
	addq	$1, %r8 
	movq	%r8 , (%r9 )
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	one_iteration
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	cmpq	$5, %r8 
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	end
	jmp	loop