	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$42, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, %rax
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
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	cmpq	$0, %rdi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	then
	jmp	else
	.text
else:
	pushq	%rdx
	callq	bar
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	jmp	end
	.text
end:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	pushq	%rdx
	callq	foo
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	jmp	end