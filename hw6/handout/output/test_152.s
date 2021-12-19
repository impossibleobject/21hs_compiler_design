	.text
	.globl	quick_sort
quick_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r11)
	movq	%rdx, (%r10)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then7855
	jmp	_else7854
	.text
_else7854:
	jmp	_merge7853
	.text
_merge7853:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then7855:
	movq	(%r10), %r8 
	movq	(%r11), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	partition
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	(%r9 ), %rdi
	movq	%rdi, %r8 
	subq	$1, %r8 
	movq	(%r11), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	quick_sort
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	(%r10), %r8 
	movq	(%r9 ), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	quick_sort
	popq	%rdx
	popq	%rsi
	popq	%r8 
	jmp	_merge7853
	.text
	.globl	partition
partition:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond7720
	.text
_body7719:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7738
	.text
_body7737:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7738
	.text
_body7754:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7755
	.text
_cond7720:
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body7719
	jmp	_post7718
	.text
_cond7738:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	setle	%r8b
	andq	$1, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rdx
	setle	%dil
	andq	$1, %rdi
	movq	%r8 , %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_body7737
	jmp	_post7736
	.text
_cond7755:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body7754
	jmp	_post7753
	.text
_else7764:
	jmp	_merge7763
	.text
_else7795:
	jmp	_merge7794
	.text
_merge7763:
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then7796
	jmp	_else7795
	.text
_merge7794:
	jmp	_cond7720
	.text
_post7718:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r10)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%r10), %rsi
	movq	%rsi, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post7736:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7755
	.text
_post7753:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then7765
	jmp	_else7764
	.text
_then7765:
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge7763
	.text
_then7796:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r10)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r11)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%r10), %rsi
	movq	%rsi, (%rdx)
	jmp	_merge7794
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r8 
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%r8 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$107, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$112, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$121, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	$102, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	$123, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rsi
	movq	$115, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	movq	$104, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rsi
	movq	$111, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movq	$109, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r8 )
	movq	(%r8 ), %rdi
	pushq	%r8 
	pushq	%rdi
	callq	string_of_array
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	movq	(%r8 ), %rsi
	pushq	%r8 
	pushq	%rsi
	movq	$8, %rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	quick_sort
	popq	%rsi
	popq	%r8 
	movq	(%r8 ), %rdi
	pushq	%rdi
	callq	string_of_array
	popq	%rdi
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$255, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	