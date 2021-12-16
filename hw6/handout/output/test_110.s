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
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4126
	jmp	_else4125
	.text
_body4141:
	movq	(%r9 ), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r9 )
	movq	(%r10), %rdi
	movq	(%r8 ), %r11
	movq	%rdi, %rdx
	subq	%r11, %rdx
	movq	%rdx, (%r10)
	jmp	_cond4142
	.text
_body4167:
	movq	(%r9 ), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r9 )
	movq	(%r10), %r11
	movq	(%r8 ), %rdx
	movq	%r11, %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%r10)
	jmp	_cond4168
	.text
_cond4142:
	movq	(%r10), %rdi
	movq	(%r8 ), %r11
	cmpq	%r11, %rdi
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4141
	jmp	_post4140
	.text
_cond4168:
	movq	(%r10), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	setge	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_body4167
	jmp	_post4166
	.text
_else4125:
	jmp	_merge4124
	.text
_else4158:
	movq	(%r9 ), %r8 
	movq	$0, %r9 
	subq	%r8 , %r9 
	movq	%r9 , %r8 
	subq	$1, %r8 
	movq	%r8 , %rax
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
	movq	(%rdx), %rsi
	movq	%rsi, (%r10)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	movq	(%r10), %r8 
	cmpq	$0, %r8 
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then4159
	jmp	_else4158
	.text
_post4166:
	movq	(%r9 ), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4126:
	movq	(%r8 ), %r9 
	movq	$0, %r8 
	subq	%r9 , %r8 
	movq	(%rdx), %r9 
	pushq	%r9 
	pushq	%r8 
	movq	%r8 , %rsi
	movq	%r9 , %rdi
	callq	euclid_division
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	$0, %r9 
	subq	%r10, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4159:
	movq	(%r9 ), %rdx
	movq	$0, %r8 
	subq	%rdx, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4162:
	movq	(%rdx), %rsi
	movq	$0, %rdx
	subq	%rsi, %rdx
	movq	%rdx, (%r10)
	jmp	_cond4142
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%r8 )
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	(%r10), %rsi
	cmpq	%rsi, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
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
	movq	(%r10), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$2, %rsi
	callq	euclid_division
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r9 ), %rdi
	cmpq	%rdi, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4093
	jmp	_else4092
	.text
_merge4091:
	movq	(%r8 ), %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%r10, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r10
	movq	(%r9 ), %rsi
	cmpq	%rsi, %r10
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rsi
	subq	$1, %rsi
	movq	(%r10), %r11
	movq	(%r9 ), %r10
	movq	(%r8 ), %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rsi
	movq	%rsi, %rcx
	movq	%r11, %rdx
	movq	%r9 , %rdi
	movq	%r10, %rsi
	callq	binary_search
	popq	%rsi
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4110:
	movq	(%r11), %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rdi
	addq	$1, %rdi
	movq	(%r9 ), %r11
	movq	(%r8 ), %r9 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	movq	%r10, %rcx
	movq	%rdi, %rdx
	movq	%r11, %rsi
	movq	%r9 , %rdi
	callq	binary_search
	popq	%rdi
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$100, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$100, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body3997:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body4017:
	movq	(%rsi), %rdx
	movq	(%rdi), %r11
	movq	%rdx, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%rdi), %rdx
	movq	$2, %r11
	imulq	%rdx, %r11
	movq	%r11, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	movq	(%rdi), %rdx
	movq	%rdx, %r11
	addq	$1, %r11
	movq	%r11, (%rdi)
	jmp	_cond4018
	.text
_cond3998:
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	setl	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	_body3997
	jmp	_post3996
	.text
_cond4018:
	movq	(%rdi), %rdx
	cmpq	$100, %rdx
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
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
	movq	%r11, (%rsi)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_post4016:
	movq	(%rsi), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$80, %rsi
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r11
	movq	%r11, (%r8 )
	movq	(%rsi), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$81, %rsi
	callq	binary_search
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rsi
	movq	(%r9 ), %rdi
	movq	%rsi, %rdx
	andq	%rdi, %rdx
	cmpq	$0, %rdx
	sete	%sil
	andq	$1, %rsi
	movq	(%r8 ), %rdi
	movq	(%r9 ), %r8 
	movq	%rdi, %r9 
	orq	%r8 , %r9 
	movq	%rsi, %r8 
	andq	%r9 , %r8 
	cmpq	$0, %r8 
	jne	_then4052
	jmp	_else4051
	.text
_then4052:
	leaq	_str_arr4047(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	pushq	%r9 
	movq	%r9 , %rdi
	callq	print_string
	popq	%r9 
	jmp	_merge4050