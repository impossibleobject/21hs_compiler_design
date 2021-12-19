	.data
	.globl	lfsr_iterations
lfsr_iterations:
	.quad	5
	.data
	.globl	lfsr_length
lfsr_length:
	.quad	4
	.data
	.globl	lfsr_init_values
lfsr_init_values:
	.quad	_global_arr5180
	.data
	.globl	_global_arr5180
_global_arr5180:
	.quad	4
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.data
	.globl	_str_arr5158
_str_arr5158:
	.asciz	"T"
	.data
	.globl	_str_arr5160
_str_arr5160:
	.asciz	"F"
	.data
	.globl	_str_arr5123
_str_arr5123:
	.asciz	" "
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r8 )
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	movq	%rdx, %r9 
	andq	%rdi, %r9 
	movq	(%r10), %rdi
	cmpq	$0, %rdi
	sete	%dl
	andq	$1, %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%r9 , %rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	string_of_bool
string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	jne	_then5164
	jmp	_else5163
	.text
_else5163:
	leaq	_str_arr5160(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge5162:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5164:
	leaq	_str_arr5158(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	print_lfsr
print_lfsr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond5142
	.text
_body5141:
	movq	(%r11), %r9 
	movq	(%r8 ), %rdx
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	callq	string_of_bool
	popq	%rdi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond5142
	.text
_cond5142:
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5141
	jmp	_post5140
	.text
_post5140:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
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
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	oat_alloc_array
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rsi, (%r10)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r11, (%r9 )
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5023:
	movq	(%r9 ), %r8 
	movq	-8(%rbp), %rax
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
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5044:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_body5067:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rdx
	subq	$2, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rdx
	subq	$1, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
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
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	pushq	%r9 
	pushq	%rdi
	movq	%r9 , %rsi
	callq	xor
	popq	%rdi
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_body5093:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rdx
	subq	$1, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_cond5024:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5023
	jmp	_post5022
	.text
_cond5045:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5044
	jmp	_post5043
	.text
_cond5068:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	lfsr_iterations(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5067
	jmp	_post5066
	.text
_cond5094:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	$0, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body5093
	jmp	_post5092
	.text
_post5022:
	movq	%r11, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_post5043:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068
	.text
_post5066:
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	print_lfsr
	popq	%rdx
	popq	%rsi
	leaq	_str_arr5123(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	print_lfsr
	popq	%rdx
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5092:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068