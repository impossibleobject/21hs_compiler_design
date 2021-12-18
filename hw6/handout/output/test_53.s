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
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$100, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	setne	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	then
	jmp	else
	.text
else:
	pushq	%r11
	callq	bar
	popq	%r11
	movq	%rax, %r10
	movq	%r10, (%r11)
	jmp	end
	.text
end:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	pushq	%r11
	callq	foo
	popq	%r11
	movq	%rax, %r10
	movq	%r10, (%r11)
	jmp	end