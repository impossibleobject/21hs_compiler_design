	.text
	.globl	main
main:
	movq	$12, %rax
	addq	$5, %rax
	movq	%rax, 8(%rbp)
	jmp	main.next
	.text
main.next:
	jmp	main.end
	.text
main.end:
	movq	8(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	