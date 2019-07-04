	.file	"bubbleSort.c"
	.text
	.globl	_BubbleSort
	.def	_BubbleSort;	.scl	2;	.type	32;	.endef
_BubbleSort:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L2
L6:
	movl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	L3
L5:
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jge	L4
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movzbl	-9(%ebp), %eax
	movb	%al, (%edx)
L4:
	addl	$1, -8(%ebp)
L3:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L5
	addl	$1, -4(%ebp)
L2:
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-4(%ebp), %eax
	jg	L6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.ident	"GCC: (GNU) 4.8.0"
