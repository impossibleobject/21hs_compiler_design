	.data
	.globl	_str_arr1737
_str_arr1737:
	.asciz	"abc"
	.data
	.globl	_str_arr1741
_str_arr1741:
	.asciz	"def"
	.data
	.globl	_str_arr1749
_str_arr1749:
	.asciz	"789"
	.data
	.globl	_str_arr1753
_str_arr1753:
	.asciz	"123"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	_str_arr1737(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr1741(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	_str_arr1749(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr1753(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$1, %rsi
	movq	-152(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$1, %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	