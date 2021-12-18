	.data
	.globl	meaning_of_life
meaning_of_life:
	.quad	42
	.data
	.globl	kesha_to_fling
kesha_to_fling:
	.quad	1
	.data
	.globl	professor
professor:
	.quad	_str6194
	.data
	.globl	_str6194
_str6194:
	.asciz	"Zdancewic!"
	.data
	.globl	global_arr
global_arr:
	.quad	_global_arr6193
	.data
	.globl	_global_arr6193
_global_arr6193:
	.quad	7
	.quad	1
	.quad	1
	.quad	2
	.quad	3
	.quad	5
	.quad	8
	.quad	13
	.data
	.globl	null_arr
null_arr:
	.quad	0
	.data
	.globl	ideal_341_midterm_score
ideal_341_midterm_score:
	.quad	_global_arr6192
	.data
	.globl	_global_arr6192
_global_arr6192:
	.quad	1
	.quad	100
	.data
	.globl	actual_341_midterm_score
actual_341_midterm_score:
	.quad	_global_arr6191
	.data
	.globl	_global_arr6191
_global_arr6191:
	.quad	1
	.quad	0
	.data
	.globl	_str_arr6161
_str_arr6161:
	.asciz	"Meaning of Life"
	.data
	.globl	_str_arr5688
_str_arr5688:
	.asciz	"My name is Jeff...\n"
	.data
	.globl	_str_arr5739
_str_arr5739:
	.asciz	"Charizard is the BEST Pokemon ever!!!"
	.text
	.globl	four
four:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	meaning_of_life(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$5, %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$4, %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	$0, %rax
	addq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	asian_brother_of_foo_named_fui
asian_brother_of_foo_named_fui:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, (%r11)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	dfs
dfs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$664, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	setge	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then5971
	jmp	_else5970
	.text
_else5964:
	jmp	_merge5963
	.text
_else5967:
	jmp	_merge5966
	.text
_else5970:
	jmp	_merge5969
	.text
_else6023:
	jmp	_merge6022
	.text
_else6026:
	jmp	_merge6025
	.text
_else6029:
	jmp	_merge6028
	.text
_else6081:
	jmp	_merge6080
	.text
_else6084:
	jmp	_merge6083
	.text
_else6087:
	jmp	_merge6086
	.text
_else6140:
	jmp	_merge6139
	.text
_else6143:
	jmp	_merge6142
	.text
_else6146:
	jmp	_merge6145
	.text
_merge5963:
	jmp	_merge5966
	.text
_merge5966:
	jmp	_merge5969
	.text
_merge5969:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rdx
	addq	$1, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	%r9 , %rdx
	setl	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_then6030
	jmp	_else6029
	.text
_merge6022:
	jmp	_merge6025
	.text
_merge6025:
	jmp	_merge6028
	.text
_merge6028:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	setge	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then6088
	jmp	_else6087
	.text
_merge6080:
	jmp	_merge6083
	.text
_merge6083:
	jmp	_merge6086
	.text
_merge6086:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rdx
	addq	$1, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	%r9 , %rdx
	setl	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	_then6147
	jmp	_else6146
	.text
_merge6139:
	jmp	_merge6142
	.text
_merge6142:
	jmp	_merge6145
	.text
_merge6145:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5965:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	movq	%rdx, %r9 
	movq	-64(%rbp), %r8 
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	dfs
	popq	%rdx
	popq	%r10
	popq	%r11
	jmp	_merge5963
	.text
_then5968:
	movq	(%r10), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -136(%rbp)
	movq	$1, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	%r8 , %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-144(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, -168(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r8 , %rsi
	movq	-168(%rbp), %rdi
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
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$1, %rdx
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then5965
	jmp	_else5964
	.text
_then5971:
	movq	(%r10), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	subq	$1, %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -208(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	$1, %r9 
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then5968
	jmp	_else5967
	.text
_then6024:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-224(%rbp), %r8 
	movq	-232(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	dfs
	popq	%r9 
	popq	%r10
	popq	%r11
	jmp	_merge6022
	.text
_then6027:
	movq	(%r10), %r9 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)
	movq	%r9 , %rax
	movq	%rax, -272(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-264(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%rdx, %rax
	movq	%rax, -288(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %rsi
	movq	-288(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)
	movq	%rdx, %rax
	movq	%rax, -312(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-304(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -328(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-328(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	$1, %r9 
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then6024
	jmp	_else6023
	.text
_then6030:
	movq	(%r10), %r9 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)
	movq	%r9 , %rax
	movq	%rax, -352(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-344(%rbp), %rsi
	movq	-352(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-344(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%rdx, %rax
	movq	%rax, -368(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %rsi
	movq	-368(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	cmpq	$1, %r8 
	setne	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then6027
	jmp	_else6026
	.text
_then6082:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rdx
	subq	$1, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %r8 
	movq	-384(%rbp), %rcx
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	movq	%rdx, %r9 
	movq	-392(%rbp), %rdx
	callq	dfs
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	jmp	_merge6080
	.text
_then6085:
	movq	(%r10), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%rdx, %rax
	movq	%rax, -416(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %rsi
	movq	-416(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)
	movq	%r8 , %rax
	movq	%rax, -440(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	-432(%rbp), %rsi
	movq	-440(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-432(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)
	movq	$1, %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -456(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-456(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)
	movq	%r9 , %rax
	movq	%rax, -480(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-472(%rbp), %rsi
	movq	-480(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-472(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$1, %rdx
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then6082
	jmp	_else6081
	.text
_then6088:
	movq	(%r10), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%rdx, %rax
	movq	%rax, -496(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %rsi
	movq	-496(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)
	movq	%r8 , %rax
	movq	%rax, -520(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	-512(%rbp), %rsi
	movq	-520(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-512(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	cmpq	$1, %r9 
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_then6085
	jmp	_else6084
	.text
_then6141:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %r8 
	addq	$1, %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%r9 , %rcx
	movq	-544(%rbp), %rsi
	movq	%r10, %rdi
	movq	%r8 , %r9 
	movq	%rdx, %r8 
	movq	-536(%rbp), %rdx
	callq	dfs
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	jmp	_merge6139
	.text
_then6144:
	movq	(%r10), %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -552(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)
	movq	%r9 , %rax
	movq	%rax, -576(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-568(%rbp), %rsi
	movq	-576(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-568(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -584(%rbp)
	movq	$1, %rax
	movq	-584(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r9 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	%rax, -592(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r8 , %rsi
	movq	-592(%rbp), %rdi
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
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)
	movq	%rdx, %rax
	movq	%rax, -616(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%rdx
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-608(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	cmpq	$1, %r8 
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then6141
	jmp	_else6140
	.text
_then6147:
	movq	(%r10), %r8 
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, -632(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	-632(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
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
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)
	movq	%r9 , %rax
	movq	%rax, -656(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-648(%rbp), %rsi
	movq	-656(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-648(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$1, %rdx
	setne	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then6144
	jmp	_else6143
	.text
	.globl	connected
connected:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$640, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
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
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-56(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5782
	.text
_body5781:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-128(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5800
	.text
_body5799:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5800
	.text
_body5828:
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5837
	.text
_body5836:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -232(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -264(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpq	$0, %rax
	sete	-288(%rbp)
	andq	$1, -288(%rbp)
	cmpq	$0, -288(%rbp)
	jne	_then5888
	jmp	_else5887
	.text
_cond5782:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	cmpq	-304(%rbp), %rax
	setl	-312(%rbp)
	andq	$1, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jne	_body5781
	jmp	_post5780
	.text
_cond5800:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-328(%rbp), %rax
	setl	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_body5799
	jmp	_post5798
	.text
_cond5829:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rax
	cmpq	-352(%rbp), %rax
	setl	-360(%rbp)
	andq	$1, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_body5828
	jmp	_post5827
	.text
_cond5837:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	setl	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_body5836
	jmp	_post5835
	.text
_else5884:
	jmp	_merge5883
	.text
_else5887:
	jmp	_merge5886
	.text
_merge5883:
	jmp	_merge5886
	.text
_merge5886:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5837
	.text
_post5780:
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5829
	.text
_post5798:
	movq	-144(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5782
	.text
_post5827:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5835:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5829
	.text
_then5885:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-456(%rbp), %r9 
	movq	-464(%rbp), %r8 
	movq	-472(%rbp), %rcx
	movq	-480(%rbp), %rdx
	movq	-488(%rbp), %rsi
	movq	-496(%rbp), %rdi
	callq	dfs
	popq	%r9 
	popq	%r10
	popq	%r11
	jmp	_merge5883
	.text
_then5888:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -520(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-512(%rbp), %rsi
	movq	-520(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-504(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-512(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -552(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-536(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-544(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	$1, %rax
	movq	-560(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -584(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-568(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-576(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -616(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-600(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-608(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	cmpq	$1, %rax
	sete	-640(%rbp)
	andq	$1, -640(%rbp)
	cmpq	$0, -640(%rbp)
	jne	_then5885
	jmp	_else5884
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1936, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	subq	$8, %rsp
	movq	%rsp, -128(%rbp)
	subq	$8, %rsp
	movq	%rsp, -136(%rbp)
	subq	$8, %rsp
	movq	%rsp, -144(%rbp)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)
	movq	$1, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -208(%rbp)
	movq	$0, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -216(%rbp)
	movq	$1, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -224(%rbp)
	movq	$0, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)
	movq	-192(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)
	movq	$1, %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -264(%rbp)
	movq	$1, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -272(%rbp)
	movq	$0, %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -280(%rbp)
	movq	$1, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)
	movq	$1, %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -320(%rbp)
	movq	$0, %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -328(%rbp)
	movq	$1, %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -336(%rbp)
	movq	$1, %rax
	movq	-336(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -344(%rbp)
	movq	-304(%rbp), %rax
	movq	-344(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)
	movq	$0, %rax
	movq	-368(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -376(%rbp)
	movq	$1, %rax
	movq	-376(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -384(%rbp)
	movq	$1, %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -392(%rbp)
	movq	$0, %rax
	movq	-392(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -400(%rbp)
	movq	-360(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -416(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)
	movq	$0, %rax
	movq	-440(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	$0, %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -456(%rbp)
	movq	$1, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -464(%rbp)
	movq	$0, %rax
	movq	-464(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -472(%rbp)
	movq	$1, %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)
	movq	-432(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)
	movq	$0, %rax
	movq	-504(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -512(%rbp)
	movq	$1, %rax
	movq	-512(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -520(%rbp)
	movq	$1, %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -528(%rbp)
	movq	$0, %rax
	movq	-528(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -536(%rbp)
	movq	$1, %rax
	movq	-536(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -544(%rbp)
	movq	-496(%rbp), %rax
	movq	-544(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)
	movq	$1, %rax
	movq	-568(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -576(%rbp)
	movq	$1, %rax
	movq	-576(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -584(%rbp)
	movq	$1, %rax
	movq	-584(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -592(%rbp)
	movq	$1, %rax
	movq	-592(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -600(%rbp)
	movq	$1, %rax
	movq	-600(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -608(%rbp)
	movq	-560(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-416(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -624(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)
	movq	$1, %rax
	movq	-648(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -656(%rbp)
	movq	$0, %rax
	movq	-656(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -664(%rbp)
	movq	$1, %rax
	movq	-664(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-624(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -672(%rbp)
	movq	-640(%rbp), %rax
	movq	-672(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)
	movq	$0, %rax
	movq	-696(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-688(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -704(%rbp)
	movq	$1, %rax
	movq	-704(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-688(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -712(%rbp)
	movq	$0, %rax
	movq	-712(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-624(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -720(%rbp)
	movq	-688(%rbp), %rax
	movq	-720(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)
	movq	$1, %rax
	movq	-744(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-736(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -752(%rbp)
	movq	$0, %rax
	movq	-752(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-736(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -760(%rbp)
	movq	$1, %rax
	movq	-760(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-624(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -768(%rbp)
	movq	-736(%rbp), %rax
	movq	-768(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-624(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	callq	four
	popq	%r10
	popq	%r11
	movq	%rax, -776(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-776(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	%rax, -792(%rbp)
	subq	$8, %rsp
	movq	%rsp, -800(%rbp)
	movq	-776(%rbp), %rax
	movq	-800(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -808(%rbp)
	movq	-792(%rbp), %rax
	movq	-808(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5518
	.text
_body5517:
	movq	-808(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-816(%rbp), %rax
	movq	%rax, -832(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-824(%rbp), %rsi
	movq	-832(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-816(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-824(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -840(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rax
	movq	%rax, -856(%rbp)
	subq	$8, %rsp
	movq	%rsp, -864(%rbp)
	movq	$2, %rax
	movq	-864(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -872(%rbp)
	movq	-856(%rbp), %rax
	movq	-872(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5535
	.text
_body5534:
	movq	-872(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, -896(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-888(%rbp), %rsi
	movq	-896(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-880(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-888(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)
	leaq	actual_341_midterm_score(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	%rax, -920(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-920(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-912(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-936(%rbp), %rax
	movq	-904(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5535
	.text
_body5570:
	movq	-1496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -960(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -968(%rbp)
	movq	-960(%rbp), %rax
	movq	%rax, -976(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-968(%rbp), %rsi
	movq	-976(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-960(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-968(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -984(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$6, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -992(%rbp)
	movq	-992(%rbp), %rax
	movq	%rax, -1000(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1008(%rbp)
	movq	$6, %rax
	movq	-1008(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1016(%rbp)
	movq	-1000(%rbp), %rax
	movq	-1016(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5588
	.text
_body5587:
	movq	-1016(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1024(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1032(%rbp)
	movq	-1024(%rbp), %rax
	movq	%rax, -1040(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-1032(%rbp), %rsi
	movq	-1040(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-1024(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1032(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1048(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	imulq	$0, %rax
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	movq	-1048(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5588
	.text
_body5629:
	movq	-1584(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, -1112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-1104(%rbp), %rsi
	movq	-1112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-1096(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1120(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -1128(%rbp)
	movq	-1128(%rbp), %rax
	movq	%rax, -1136(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1144(%rbp)
	movq	$1, %rax
	movq	-1144(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1152(%rbp)
	movq	-1136(%rbp), %rax
	movq	-1152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5647
	.text
_body5646:
	movq	-1152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1160(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1168(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -1176(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-1168(%rbp), %rsi
	movq	-1176(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-1160(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1184(%rbp)
	leaq	ideal_341_midterm_score(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1192(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -1200(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-1200(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-1192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1216(%rbp)
	leaq	kesha_to_fling(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1224(%rbp)
	leaq	professor(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1232(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-1216(%rbp), %rdx
	movq	-1224(%rbp), %rsi
	movq	-1232(%rbp), %rdi
	callq	asian_brother_of_foo_named_fui
	popq	%r10
	popq	%r11
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -1248(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	-1248(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-1240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1264(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1272(%rbp)
	movq	-1272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1280(%rbp)
	movq	-1280(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5647
	.text
_cond5518:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1288(%rbp)
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1296(%rbp)
	movq	-1288(%rbp), %rax
	cmpq	-1296(%rbp), %rax
	setl	-1304(%rbp)
	andq	$1, -1304(%rbp)
	cmpq	$0, -1304(%rbp)
	jne	_body5517
	jmp	_post5516
	.text
_cond5535:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1312(%rbp)
	movq	-864(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1320(%rbp)
	movq	-1312(%rbp), %rax
	cmpq	-1320(%rbp), %rax
	setl	-1328(%rbp)
	andq	$1, -1328(%rbp)
	cmpq	$0, -1328(%rbp)
	jne	_body5534
	jmp	_post5533
	.text
_cond5571:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1336(%rbp)
	movq	-1488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1344(%rbp)
	movq	-1336(%rbp), %rax
	cmpq	-1344(%rbp), %rax
	setl	-1352(%rbp)
	andq	$1, -1352(%rbp)
	cmpq	$0, -1352(%rbp)
	jne	_body5570
	jmp	_post5569
	.text
_cond5588:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1360(%rbp)
	movq	-1008(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1368(%rbp)
	movq	-1360(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	setl	-1376(%rbp)
	andq	$1, -1376(%rbp)
	cmpq	$0, -1376(%rbp)
	jne	_body5587
	jmp	_post5586
	.text
_cond5630:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1384(%rbp)
	movq	-1576(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1392(%rbp)
	movq	-1384(%rbp), %rax
	cmpq	-1392(%rbp), %rax
	setl	-1400(%rbp)
	andq	$1, -1400(%rbp)
	cmpq	$0, -1400(%rbp)
	jne	_body5629
	jmp	_post5628
	.text
_cond5647:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1408(%rbp)
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1416(%rbp)
	movq	-1408(%rbp), %rax
	cmpq	-1416(%rbp), %rax
	setl	-1424(%rbp)
	andq	$1, -1424(%rbp)
	cmpq	$0, -1424(%rbp)
	jne	_body5646
	jmp	_post5645
	.text
_else5743:
	jmp	_merge5742
	.text
_merge5742:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1432(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1440(%rbp)
	movq	-1432(%rbp), %rax
	addq	-1440(%rbp), %rax
	movq	%rax, -1448(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-1448(%rbp), %r10
	addq	%r11, %r10
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	addq	%r11, %rax
	movq	%rax, -1456(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-1456(%rbp), %r11
	addq	%r10, %r11
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	addq	%r10, %rax
	movq	%rax, -1464(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-1464(%rbp), %r10
	addq	%r11, %r10
	movq	%r10, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5516:
	movq	-792(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$6, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -1472(%rbp)
	movq	-1472(%rbp), %rax
	movq	%rax, -1480(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1488(%rbp)
	movq	$6, %rax
	movq	-1488(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1496(%rbp)
	movq	-1480(%rbp), %rax
	movq	-1496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5571
	.text
_post5533:
	movq	-856(%rbp), %rax
	movq	-840(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1504(%rbp)
	movq	-1504(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1512(%rbp)
	movq	-1512(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5518
	.text
_post5569:
	movq	-1480(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -1520(%rbp)
	movq	-1520(%rbp), %rax
	movq	%rax, -1528(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -1536(%rbp)
	movq	-1536(%rbp), %rax
	movq	%rax, -1544(%rbp)
	movq	-1528(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1552(%rbp)
	movq	-1544(%rbp), %rax
	movq	-1552(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-1528(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -1560(%rbp)
	movq	-1560(%rbp), %rax
	movq	%rax, -1568(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1576(%rbp)
	movq	$1, %rax
	movq	-1576(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1584(%rbp)
	movq	-1568(%rbp), %rax
	movq	-1584(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5630
	.text
_post5586:
	movq	-1000(%rbp), %rax
	movq	-984(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1592(%rbp)
	movq	-1592(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1600(%rbp)
	movq	-1600(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5571
	.text
_post5628:
	movq	-1568(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1608(%rbp)
	movq	-1608(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1616(%rbp)
	movq	-1616(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1624(%rbp)
	movq	-1624(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1632(%rbp)
	movq	-1632(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr5688(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -1640(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-1640(%rbp), %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -1648(%rbp)
	pushq	%r10
	movq	$4, %rdx
	movq	$4, %rsi
	movq	-1648(%rbp), %rdi
	callq	connected
	popq	%r10
	movq	%rax, -1656(%rbp)
	movq	-1656(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -1664(%rbp)
	movq	$5, %rdx
	movq	$3, %rsi
	movq	-1664(%rbp), %rdi
	callq	connected
	movq	%rax, -1672(%rbp)
	movq	-1672(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1680(%rbp)
	movq	$3, %rdx
	movq	$3, %rsi
	movq	-1680(%rbp), %rdi
	callq	connected
	movq	%rax, -1688(%rbp)
	movq	-1688(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1696(%rbp)
	movq	$2, %rdx
	movq	$4, %rsi
	movq	-1696(%rbp), %rdi
	callq	connected
	movq	%rax, -1704(%rbp)
	movq	-1704(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1712(%rbp)
	movq	$6, %rdx
	movq	$6, %rsi
	movq	-1712(%rbp), %rdi
	callq	connected
	movq	%rax, -1720(%rbp)
	movq	-1720(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1728(%rbp)
	movq	$1, %rdx
	movq	$1, %rsi
	movq	-1728(%rbp), %rdi
	callq	connected
	movq	%rax, -1736(%rbp)
	movq	-1736(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1744(%rbp)
	movq	$0, %rdx
	movq	$0, %rsi
	movq	-1744(%rbp), %rdi
	callq	connected
	movq	%rax, -1752(%rbp)
	movq	-1752(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1760(%rbp)
	movq	-1760(%rbp), %rax
	cmpq	$3, %rax
	sete	-1768(%rbp)
	andq	$1, -1768(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1776(%rbp)
	movq	-1776(%rbp), %rax
	cmpq	$1, %rax
	sete	-1784(%rbp)
	andq	$1, -1784(%rbp)
	movq	-1768(%rbp), %rax
	andq	-1784(%rbp), %rax
	movq	%rax, -1792(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1800(%rbp)
	movq	-1800(%rbp), %rax
	cmpq	$5, %rax
	sete	-1808(%rbp)
	andq	$1, -1808(%rbp)
	movq	-1792(%rbp), %rax
	andq	-1808(%rbp), %rax
	movq	%rax, -1816(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1824(%rbp)
	movq	-1824(%rbp), %rax
	cmpq	$0, %rax
	sete	-1832(%rbp)
	andq	$1, -1832(%rbp)
	movq	-1816(%rbp), %rax
	andq	-1832(%rbp), %rax
	movq	%rax, -1840(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1848(%rbp)
	movq	-1848(%rbp), %rax
	cmpq	$1, %rax
	sete	-1856(%rbp)
	andq	$1, -1856(%rbp)
	movq	-1840(%rbp), %rax
	andq	-1856(%rbp), %rax
	movq	%rax, -1864(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1872(%rbp)
	movq	-1872(%rbp), %rax
	cmpq	$1, %rax
	sete	-1880(%rbp)
	andq	$1, -1880(%rbp)
	movq	-1864(%rbp), %rax
	andq	-1880(%rbp), %rax
	movq	%rax, -1888(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1896(%rbp)
	movq	-1896(%rbp), %rax
	cmpq	$0, %rax
	sete	-1904(%rbp)
	andq	$1, -1904(%rbp)
	movq	-1888(%rbp), %rax
	andq	-1904(%rbp), %rax
	movq	%rax, -1912(%rbp)
	cmpq	$0, -1912(%rbp)
	jne	_then5744
	jmp	_else5743
	.text
_post5645:
	movq	-1136(%rbp), %rax
	movq	-1120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1920(%rbp)
	movq	-1920(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1928(%rbp)
	movq	-1928(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5630
	.text
_then5744:
	leaq	_str_arr5739(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -1936(%rbp)
	movq	-1936(%rbp), %rdi
	callq	print_string
	jmp	_merge5742