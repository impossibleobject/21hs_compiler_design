	.text
	.globl	f1
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f2
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f2
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f3
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f3
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f4
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f4
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f5
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f5
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f6
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f6
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f7
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f7
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f8
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f9
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f9
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$31, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	callq	f1
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	