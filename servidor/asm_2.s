	.file	"serversocket.c"
	.section	.rodata
	.align 4
.LC0:
	.string	"serversocketcreate type not defined\n"
	.align 4
.LC1:
	.string	"serversocketcreate protocol not defined\n"
	.align 4
.LC2:
	.string	"serversocketcreate at ERROR, no such portno\n"
	.align 4
.LC3:
	.string	"serversocketcreate at ERROR opening socket"
	.align 4
.LC4:
	.string	"serversocketcreate at ERROR on binding"
	.align 4
.LC5:
	.string	"serversocketcreate at inet_pton() failed, invalid address string"
	.align 4
.LC6:
	.string	"serversocketcreate at inet_pton() failed"
	.align 4
.LC7:
	.string	"serversocketcreate domain not defined\n"
	.text
	.globl	serversocketcreate
	.type	serversocketcreate, @function
serversocketcreate:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$160, 4(%esp)
	movl	$1, (%esp)
	call	calloc
	movl	%eax, -16(%ebp)
	cmpl	$10, 12(%ebp)
	ja	.L2
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	$.L9, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L2
	.long	.L63
	.long	.L63
	.long	.L63
	.long	.L63
	.long	.L63
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L63
	.text
.L2:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC0, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L63:
	nop
.L10:
	movl	16(%ebp), %eax
	cmpl	$17, %eax
	je	.L64
	cmpl	$17, %eax
	jg	.L17
	testl	%eax, %eax
	je	.L65
	cmpl	$6, %eax
	je	.L66
	jmp	.L11
.L17:
	cmpl	$2048, %eax
	je	.L67
	cmpl	$524288, %eax
	je	.L68
.L11:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$40, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC1, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L64:
	nop
	jmp	.L18
.L65:
	nop
	jmp	.L18
.L66:
	nop
	jmp	.L18
.L67:
	nop
	jmp	.L18
.L68:
	nop
.L18:
	cmpl	$17, 8(%ebp)
	ja	.L19
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$.L29, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L19
	.long	.L20
	.long	.L21
	.long	.L19
	.long	.L22
	.long	.L23
	.long	.L19
	.long	.L19
	.long	.L24
	.long	.L25
	.long	.L26
	.long	.L19
	.long	.L19
	.long	.L19
	.long	.L19
	.long	.L19
	.long	.L27
	.long	.L28
	.text
.L20:
	movl	-16(%ebp), %eax
	movw	$1, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L30
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L30:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L31
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L31:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L69
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L21:
	movl	-16(%ebp), %eax
	movw	$2, 16(%eax)
	movl	-16(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	inet_pton
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L34
	movl	$.LC5, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L34:
	cmpl	$0, -12(%ebp)
	jns	.L35
	movl	$.LC6, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L35:
	cmpl	$0, 24(%ebp)
	jne	.L36
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L36:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L37
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L37:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L38
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L38:
	call	getpid
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	serversocketSetOwner
	jmp	.L33
.L26:
	movl	-16(%ebp), %eax
	movw	$10, 16(%eax)
	movl	-16(%ebp), %eax
	movw	$10, 48(%eax)
	movl	-16(%ebp), %eax
	addl	$56, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	inet_pton
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L39
	movl	$.LC5, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L39:
	cmpl	$0, -12(%ebp)
	jns	.L40
	movl	$.LC6, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L40:
	cmpl	$0, 24(%ebp)
	jne	.L41
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L41:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 50(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L42
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L42:
	movl	-16(%ebp), %eax
	leal	48(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$28, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L43
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L43:
	call	getpid
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	serversocketSetOwner
	jmp	.L33
.L22:
	movl	-16(%ebp), %eax
	movw	$4, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L44
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L44:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L45
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L45:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L70
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L27:
	movl	-16(%ebp), %eax
	movw	$16, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L47
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L47:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L48
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L48:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L71
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L25:
	movl	-16(%ebp), %eax
	movw	$9, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L50
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L50:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L51
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L51:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L72
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L24:
	movl	-16(%ebp), %eax
	movw	$8, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L53
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L53:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L54
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L54:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L73
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L23:
	movl	-16(%ebp), %eax
	movw	$5, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L56
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L56:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L57
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L57:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L74
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L28:
	movl	-16(%ebp), %eax
	movw	$17, 16(%eax)
	movl	$0, (%esp)
	call	htonl
	movl	-16(%ebp), %edx
	movl	%eax, 20(%edx)
	cmpl	$0, 24(%ebp)
	jne	.L59
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$44, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L59:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 18(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$17, (%esp)
	call	socket
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L60
	movl	$.LC3, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L60:
	movl	-16(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bind
	testl	%eax, %eax
	jns	.L75
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L19:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC7, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L69:
	nop
	jmp	.L33
.L70:
	nop
	jmp	.L33
.L71:
	nop
	jmp	.L33
.L72:
	nop
	jmp	.L33
.L73:
	nop
	jmp	.L33
.L74:
	nop
	jmp	.L33
.L75:
	nop
.L33:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$5, 4(%esp)
	movl	%eax, (%esp)
	call	listen
	movl	-16(%ebp), %eax
	movl	$serversocketAccept, 140(%eax)
	movl	-16(%ebp), %eax
	movl	$serversocketRead, 152(%eax)
	movl	-16(%ebp), %eax
	movl	$serversocketWrite, 148(%eax)
	movl	-16(%ebp), %eax
	movl	$serversocketClose, 144(%eax)
	movl	-16(%ebp), %eax
	movl	$serversocketSetOwner, 156(%eax)
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	serversocketcreate, .-serversocketcreate
	.section	.rodata
.LC8:
	.string	"Accept at ERROR on accept"
.LC9:
	.string	"Accept domain not defined\n"
	.text
	.globl	serversocketAccept
	.type	serversocketAccept, @function
serversocketAccept:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movzwl	16(%eax), %eax
	movzwl	%ax, %eax
	cmpl	$17, %eax
	ja	.L77
	movl	.L87(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L87:
	.long	.L77
	.long	.L78
	.long	.L79
	.long	.L77
	.long	.L80
	.long	.L81
	.long	.L77
	.long	.L77
	.long	.L82
	.long	.L83
	.long	.L84
	.long	.L77
	.long	.L77
	.long	.L77
	.long	.L77
	.long	.L77
	.long	.L85
	.long	.L86
	.text
.L78:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L98
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L98
.L79:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L99
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L99
.L84:
	movl	8(%ebp), %eax
	movl	$28, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L100
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L100
.L80:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L101
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L101
.L85:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L102
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L102
.L83:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L103
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L103
.L82:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L104
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L104
.L81:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L105
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L105
.L86:
	movl	8(%ebp), %eax
	movl	$16, 12(%eax)
	movl	8(%ebp), %eax
	leal	12(%eax), %ecx
	movl	8(%ebp), %eax
	leal	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	accept
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jns	.L106
	movl	$.LC8, (%esp)
	call	perror
	jmp	.L106
.L77:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$26, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC9, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L98:
	nop
	jmp	.L76
.L99:
	nop
	jmp	.L76
.L100:
	nop
	jmp	.L76
.L101:
	nop
	jmp	.L76
.L102:
	nop
	jmp	.L76
.L103:
	nop
	jmp	.L76
.L104:
	nop
	jmp	.L76
.L105:
	nop
	jmp	.L76
.L106:
	nop
.L76:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	serversocketAccept, .-serversocketAccept
	.section	.rodata
.LC10:
	.string	"Write at write"
	.text
	.globl	serversocketWrite
	.type	serversocketWrite, @function
serversocketWrite:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L108
	movl	$.LC10, (%esp)
	call	perror
.L108:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	serversocketWrite, .-serversocketWrite
	.section	.rodata
.LC11:
	.string	"Read at read"
	.text
	.globl	serversocketRead
	.type	serversocketRead, @function
serversocketRead:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	read
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L111
	movl	$.LC11, (%esp)
	call	perror
.L111:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	serversocketRead, .-serversocketRead
	.section	.rodata
.LC12:
	.string	"Close at close"
.LC13:
	.string	"Close at server shutdown!"
	.text
	.globl	serversocketClose
	.type	serversocketClose, @function
serversocketClose:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	close
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L114
	movl	$.LC12, (%esp)
	call	perror
.L114:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	close
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L115
	movl	$.LC12, (%esp)
	call	perror
.L115:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$.LC13, (%esp)
	call	puts
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	serversocketClose, .-serversocketClose
	.section	.rodata
	.align 4
.LC14:
	.string	"Owner at Unable to set process to owner"
	.text
	.globl	serversocketSetOwner
	.type	serversocketSetOwner, @function
serversocketSetOwner:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	fcntl
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L118
	movl	$.LC14, (%esp)
	call	perror
.L118:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	serversocketSetOwner, .-serversocketSetOwner
	.section	.rodata
.LC15:
	.string	"ReadConsole at calloc"
	.text
	.globl	ftos
	.type	ftos, @function
ftos:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$4, -16(%ebp)
	jmp	.L121
.L124:
	cmpl	$0, -20(%ebp)
	sete	%dl
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	sete	%al
	orl	%edx, %eax
	testb	%al, %al
	je	.L122
	sall	-16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L122
	movl	$.LC15, (%esp)
	call	perror
	jmp	.L123
.L122:
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movzbl	-21(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
.L121:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc
	movb	%al, -21(%ebp)
	cmpb	$-1, -21(%ebp)
	jne	.L124
.L123:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	ftos, .-ftos
	.globl	fltos
	.type	fltos, @function
fltos:
.LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	$4, -16(%ebp)
	jmp	.L127
.L131:
	cmpl	$0, -20(%ebp)
	sete	%dl
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	sete	%al
	orl	%edx, %eax
	testb	%al, %al
	je	.L128
	sall	-16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L128
	movl	$.LC15, (%esp)
	call	perror
	jmp	.L129
.L128:
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movzbl	-21(%ebp), %eax
	movb	%al, (%edx)
	cmpb	$10, -21(%ebp)
	jne	.L130
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	jmp	.L129
.L130:
	addl	$1, -20(%ebp)
.L127:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc
	movb	%al, -21(%ebp)
	cmpb	$-1, -21(%ebp)
	jne	.L131
.L129:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	fltos, .-fltos
	.section	.rodata
.LC16:
	.string	"%d"
.LC17:
	.string	"getnum at sscanf"
	.text
	.globl	getnum
	.type	getnum, @function
getnum:
.LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__errno_location
	movl	$0, (%eax)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC16, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__isoc99_sscanf
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	jne	.L134
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L135
.L134:
	call	__errno_location
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L136
	movl	$.LC17, (%esp)
	call	perror
	movl	$0, -16(%ebp)
	jmp	.L135
.L136:
	movl	$0, -16(%ebp)
.L135:
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	getnum, .-getnum
	.section	.rodata
.LC18:
	.string	"%d: %s\n"
	.text
	.globl	Strtok
	.type	Strtok, @function
Strtok:
.LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	calloc
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy
.L141:
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	strtok
	movl	%eax, (%ebx)
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L144
.L139:
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC18, (%esp)
	call	printf
	addl	$1, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L141
.L144:
	nop
.L143:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	-16(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	Strtok, .-Strtok
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
