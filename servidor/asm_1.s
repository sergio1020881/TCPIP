	.file	"server.c"
	.section	.rodata
.LC0:
	.string	"Usage %s servIP portno\n"
.LC1:
	.string	"r"
.LC2:
	.string	"file.txt"
.LC3:
	.string	"File:\n%s\n"
.LC4:
	.string	"server received: %s\n"
	.align 4
.LC5:
	.string	"received message from cliente\n"
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
	movl	$1, (%esp)
	call	exit
.L2:
	movl	$.LC1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fopen
	movl	%eax, 52(%esp)
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	ftos
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	printf
	movl	44(%esp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	44(%esp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	movl	$2, (%esp)
	call	serversocketcreate
	movl	%eax, 56(%esp)
	movl	56(%esp), %eax
	movl	156(%eax), %ebx
	call	getpid
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	*%ebx
.L3:
	movl	56(%esp), %eax
	movl	140(%eax), %eax
	movl	56(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	$256, 4(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	call	bzero
	movl	$256, 4(%esp)
	leal	316(%esp), %eax
	movl	%eax, (%esp)
	call	bzero
	movl	56(%esp), %eax
	movl	152(%eax), %eax
	movl	$256, 8(%esp)
	leal	316(%esp), %edx
	movl	%edx, 4(%esp)
	movl	56(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	leal	316(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC4, (%esp)
	call	printf
	movl	56(%esp), %eax
	movl	148(%eax), %eax
	movl	$32, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	56(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	.L3
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
