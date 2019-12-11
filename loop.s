	.file	"loop.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	power
	.type	power, @function
power:
.LFB23:
	.cfi_startproc
	testl	%esi, %esi
	movl	$1, %eax
	jle	.L4
	.p2align 4,,10
	.p2align 3
.L3:
	imull	%edi, %eax
	subl	$1, %esi
	jne	.L3
	rep ret
.L4:
	rep ret
	.cfi_endproc
.LFE23:
	.size	power, .-power
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	algorithm
	.type	algorithm, @function
algorithm:
.LFB24:
	.cfi_startproc
	movl	%edx, %r9d
	movl	$1, %r10d
.L14:
	cmpl	%r9d, %edi
	movl	%edi, %ecx
	jge	.L15
	cmpl	$1, %esi
	je	.L9
	movl	$1, %r8d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	cmpl	%r8d, %esi
	je	.L9
.L11:
	imull	%edi, %ecx
	addl	$1, %r8d
	cmpl	%ecx, %r9d
	jg	.L12
	movl	%esi, %eax
	cltd
	idivl	%r8d
	movl	$1, %r8d
	testl	%edx, %edx
	movl	%eax, %esi
	jle	.L8
	.p2align 4,,10
	.p2align 3
.L13:
	imull	%edi, %r8d
	subl	$1, %edx
	jne	.L13
.L8:
	movl	%r10d, %eax
	imull	%r8d, %eax
	cltd
	idivl	%r9d
	movl	%ecx, %eax
	movl	%edx, %r10d
	cltd
	idivl	%r9d
	movl	%edx, %edi
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L9:
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%edx, %eax
	imull	%r10d, %eax
	cltd
	idivl	%r9d
	movl	%edx, %eax
	ret
.L15:
	movl	$1, %r8d
	jmp	.L8
	.cfi_endproc
.LFE24:
	.size	algorithm, .-algorithm
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%d\n"
	.section	.text.unlikely
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$178, %edi
	movl	$1, %r9d
	movl	$103, %r8d
	movl	$675375693, %r10d
.L29:
	movl	%edi, %ecx
	movl	$2, %esi
	imull	%edi, %ecx
	cmpl	$406, %ecx
	jg	.L23
	.p2align 4,,10
	.p2align 3
.L32:
	cmpl	%esi, %r8d
	je	.L25
	imull	%edi, %ecx
	addl	$1, %esi
	cmpl	$406, %ecx
	jle	.L32
.L23:
	movl	%r8d, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	movl	%eax, %r11d
	movl	%eax, %r8d
	movl	$1, %eax
	jle	.L27
	.p2align 4,,10
	.p2align 3
.L28:
	imull	%edi, %eax
	subl	$1, %edx
	jne	.L28
.L27:
	imull	%r9d, %eax
	movl	%eax, %esi
	imull	%r10d
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$6, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	imull	$407, %edx, %r9d
	imull	%r10d
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%r9d, %esi
	sarl	$6, %edx
	movl	%esi, %r9d
	movl	%edx, %edi
	subl	%eax, %edi
	imull	$407, %edi, %edi
	subl	%edi, %ecx
	cmpl	$1, %r11d
	movl	%ecx, %edi
	jne	.L29
	movl	%edi, %ecx
.L25:
	imull	%r9d, %ecx
	movl	$675375693, %esi
	movl	$1, %edi
	movl	%ecx, %eax
	imull	%esi
	leaq	.LC2(%rip), %rsi
	movl	%edx, %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$6, %eax
	subl	%edx, %eax
	movl	%ecx, %edx
	imull	$407, %eax, %eax
	subl	%eax, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
