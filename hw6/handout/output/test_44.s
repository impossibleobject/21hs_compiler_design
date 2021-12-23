	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$8, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%r10), %rdx
	cmpq	%r8 , %rdx
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	if
	jmp	else
	.text
else:
	movq	%r8 , %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%r9 )
	jmp	loop
	.text
gcd:
	movq	(%r10), %rdi
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_b
	jmp	loop
	.text
if:
	movq	%rdx, %rsi
	subq	%r8 , %rsi
	movq	%rsi, (%r10)
	jmp	loop
	.text
loop:
	movq	(%r9 ), %r8 
	movq	$0, %rax
	cmpq	%r8 , %rax
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%r10), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	