	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
end:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	then
	jmp	end
	.text
then:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	start
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	