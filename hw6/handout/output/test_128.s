	.text
	.globl	create_pair
create_pair:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r8 )
	pushq	%r10
	pushq	%r8 
	movq	$16, %rdi
	callq	oat_malloc
	popq	%r8 
	popq	%r10
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r9 
	movq	(%r10), %rdx
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rdx, (%rsi)
	movq	(%r8 ), %rdx
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	%rdx, (%rsi)
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	movq	$0, %rsi
	movq	$1, %rdi
	callq	create_pair
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	movq	%rdx, %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_then6812
	jmp	_else6811
	.text
_else6811:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6810:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6812:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	