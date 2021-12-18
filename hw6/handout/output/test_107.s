	.data
	.globl	_str_arr4047
_str_arr4047:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, %rax
	setl	-32(%rbp)
	andq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	_then4126
	jmp	_else4125
	.text
_body4141:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%r11, %rax
	subq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4142
	.text
_body4167:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%r11, %rax
	subq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4168
	.text
_cond4142:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	-88(%rbp), %r11
	setge	-96(%rbp)
	andq	$1, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	_body4141
	jmp	_post4140
	.text
_cond4168:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	-104(%rbp), %r11
	setge	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_body4167
	jmp	_post4166
	.text
_else4125:
	jmp	_merge4124
	.text
_else4158:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	$0, %r11
	subq	%r10, %r11
	movq	%r11, %r10
	subq	$1, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4161:
	jmp	_merge4160
	.text
_merge4124:
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, %rax
	setl	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	$0, %r10
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_then4159
	jmp	_else4158
	.text
_post4166:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4126:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	$0, %r10
	subq	-144(%rbp), %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	pushq	%r10
	movq	%r10, %rsi
	movq	-152(%rbp), %rdi
	callq	euclid_division
	popq	%r10
	movq	%rax, %r11
	movq	$0, %r10
	subq	%r11, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4159:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	$0, %r11
	subq	%r10, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4162:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	$0, %r11
	subq	-160(%rbp), %r11
	movq	%r11, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4142
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	-32(%rbp), %r8 
	setl	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%r8 , %rax
	addq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	$2, %rsi
	movq	-56(%rbp), %rdi
	callq	euclid_division
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%r8 , %rax
	movq	%rax, -72(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	-88(%rbp), %r8 
	setg	-96(%rbp)
	andq	$1, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	_then4093
	jmp	_else4092
	.text
_merge4091:
	movq	(%r11), %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r8 , %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	(%r10), %r8 
	cmpq	%r8 , %r9 
	setl	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	(%r9 ), %r8 
	movq	(%r10), %r9 
	movq	(%r11), %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	-128(%rbp), %rcx
	movq	%r8 , %rdx
	movq	%r9 , %rsi
	movq	%r10, %rdi
	callq	binary_search
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4110:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	(%r10), %r8 
	movq	(%r11), %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r9 , %rcx
	movq	-136(%rbp), %rdx
	movq	%r8 , %rsi
	movq	%r10, %rdi
	callq	binary_search
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$100, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	$100, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body3997:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body4017:
	movq	(%r10), %r11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%r11, %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	$2, %rax
	imulq	%r11, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %r11
	addq	$1, %r11
	movq	%r11, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_cond3998:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_body3997
	jmp	_post3996
	.text
_cond4018:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$100, %r11
	setl	-176(%rbp)
	andq	$1, -176(%rbp)
	cmpq	$0, -176(%rbp)
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
	movq	-40(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_post4016:
	movq	(%r10), %r11
	pushq	%r11
	pushq	%r10
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$80, %rsi
	movq	%r11, %rdi
	callq	binary_search
	popq	%r10
	popq	%r11
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	pushq	%r11
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$81, %rsi
	movq	%r11, %rdi
	callq	binary_search
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	andq	%r11, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	$0, %rax
	sete	%r10b
	andq	$1, %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	%r11, %rax
	orq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	%r10, %r11
	andq	-208(%rbp), %r11
	cmpq	$0, %r11
	jne	_then4052
	jmp	_else4051
	.text
_then4052:
	leaq	_str_arr4047(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	print_string
	popq	%r10
	jmp	_merge4050