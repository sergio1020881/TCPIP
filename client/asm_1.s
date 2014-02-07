	.file	"client.c"
	.section	.rodata
.LC0:
	.string	"usage %s hostname port\n"
.LC1:
	.string	"Please enter the message: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$576, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	%gs:20, %eax
	movl	%eax, 572(%esp)
	xorl	%eax, %eax
	cmpl	$2, 8(%ebp)
	jg	.L2
	movl	44(%esp), %eax
	movl	(%eax), %edx
	movl	stderr, %eax
	movl	%edx, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf
	movl	$0, (%esp)
	call	exit
.L2:
	movl	44(%esp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	44(%esp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	call	clientsocketcreate
	movl	%eax, 56(%esp)
	movl	$.LC1, (%esp)
	call	printf
	movl	$256, 4(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	bzero
	movl	$256, 8(%esp)
	movl	$0, 4(%esp)
	leal	316(%esp), %eax
	movl	%eax, (%esp)
	call	memset
	movl	stdin, %eax
	movl	%eax, 8(%esp)
	movl	$255, 4(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	fgets
	movl	56(%esp), %eax
	movl	96(%eax), %ebx
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, 8(%esp)
	leal	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	56(%esp), %eax
	movl	100(%eax), %eax
	movl	$255, 8(%esp)
	leal	316(%esp), %edx
	movl	%edx, 4(%esp)
	movl	56(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	leal	316(%esp), %eax
	movl	%eax, (%esp)
	call	puts
	movl	56(%esp), %eax
	movl	92(%eax), %eax
	movl	56(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	$0, %eax
	movl	572(%esp), %edx
	xorl	%gs:20, %edx
	je	.L4
	call	__stack_chk_fail
.L4:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
