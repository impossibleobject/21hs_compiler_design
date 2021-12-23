	.data
	.globl	_str_arr4047
_str_arr4047:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	(%r10), %rdi
	cmpq	$0, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4126
	jmp	_else4125
	.text
_body4141:
	movq	(%r9 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond4142
	.text
_body4167:
	movq	(%r9 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond4168
	.text
_cond4142:
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4141
	jmp	_post4140
	.text
_cond4168:
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4167
	jmp	_post4166
	.text
_else4125:
	jmp	_merge4124
	.text
_else4158:
	movq	(%r9 ), %rsi
	movq	$0, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4161:
	jmp	_merge4160
	.text
_merge4124:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	movq	%rsi, (%r8 )
	movq	(%r11), %rdi
	cmpq	$0, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4162
	jmp	_else4161
	.text
_merge4157:
	jmp	_merge4160
	.text
_merge4160:
	jmp	_cond4168
	.text
_post4140:
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4159
	jmp	_else4158
	.text
_post4166:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4126:
	movq	(%r10), %rdi
	movq	$0, %rdx
	subq	%rdi, %rdx
	movq	(%r11), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	euclid_division
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	$0, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4159:
	movq	(%r9 ), %rdi
	movq	$0, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4162:
	movq	(%r11), %rdi
	movq	$0, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond4142
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4070
	jmp	_else4069
	.text
_else4069:
	jmp	_merge4068
	.text
_else4092:
	jmp	_merge4091
	.text
_else4109:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4068:
	movq	(%r11), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%rdi
	movq	$2, %rsi
	callq	euclid_division
	popq	%rdi
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r10)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	(%r10), %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r11
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
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4093
	jmp	_else4092
	.text
_merge4091:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	(%r10), %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r11
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
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4110
	jmp	_else4109
	.text
_merge4108:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4070:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4093:
	movq	(%r10), %rdi
	movq	%rdi, %r9 
	subq	$1, %r9 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%r9 , %rcx
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	binary_search
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4110:
	movq	(%r11), %r9 
	movq	(%r10), %rdi
	movq	%rdi, %r8 
	addq	$1, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%r9 , %rcx
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	binary_search
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
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
	movq	$100, %rdi
	callq	oat_alloc_array
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$100, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r11, (%r9 )
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body3997:
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
	jmp	_cond3998
	.text
_body4017:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	$2, %rdi
	imulq	%rsi, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_cond3998:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3997
	jmp	_post3996
	.text
_cond4018:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	$100, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body4017
	jmp	_post4016
	.text
_else4051:
	jmp	_merge4050
	.text
_merge4050:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3996:
	movq	%r11, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_post4016:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rdi
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$80, %rsi
	callq	binary_search
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rdi
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$81, %rsi
	callq	binary_search
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	andq	%rsi, %rdi
	cmpq	$0, %rdi
	sete	%r8b
	andq	$1, %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%r8 , %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_then4052
	jmp	_else4051
	.text
_then4052:
	leaq	_str_arr4047(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	jmp	_merge4050