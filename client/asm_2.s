	.file	"clientsocket.c"
	.section	.rodata
	.align 4
.LC0:
	.string	"clientsocketcreate type not defined\n"
	.align 4
.LC1:
	.string	"clientsocketcreate protocol not defined\n"
.LC2:
	.string	"ERROR, no such host\n"
.LC3:
	.string	"ERROR, no such portno\n"
	.align 4
.LC4:
	.string	"clientsocketcreate ERROR opening socket"
	.align 4
.LC5:
	.string	"clientsocketcreate ERROR connecting"
	.align 4
.LC6:
	.string	"clientsocketcreate at inet_pton() failed, invalid address string"
	.align 4
.LC7:
	.string	"clientsocketcreate at inet_pton() failed"
	.align 4
.LC8:
	.string	"clientsocketcreate at ERROR, no such portno\n"
	.align 4
.LC9:
	.string	"clientsocketcreate domain not defined\n"
	.text
	.globl	clientsocketcreate
	.type	clientsocketcreate, @function
clientsocketcreate:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$108, 4(%esp)
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
	.long	.L40
	.long	.L40
	.long	.L40
	.long	.L40
	.long	.L40
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L2
	.long	.L40
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
.L40:
	nop
.L10:
	movl	16(%ebp), %eax
	cmpl	$6, %eax
	je	.L41
	cmpl	$6, %eax
	jg	.L16
	testl	%eax, %eax
	je	.L42
	jmp	.L11
.L16:
	cmpl	$2048, %eax
	je	.L43
	cmpl	$524288, %eax
	je	.L44
.L11:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$40, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC1, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L41:
	nop
	jmp	.L17
.L42:
	nop
	jmp	.L17
.L43:
	nop
	jmp	.L17
.L44:
	nop
.L17:
	cmpl	$17, 8(%ebp)
	ja	.L18
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$.L28, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L28:
	.long	.L18
	.long	.L19
	.long	.L20
	.long	.L18
	.long	.L21
	.long	.L22
	.long	.L18
	.long	.L18
	.long	.L23
	.long	.L24
	.long	.L25
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L18
	.long	.L26
	.long	.L27
	.text
.L19:
	movl	-16(%ebp), %eax
	movw	$1, 8(%eax)
	jmp	.L29
.L20:
	movl	-16(%ebp), %eax
	movw	$2, 8(%eax)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	gethostbyname
	movl	-16(%ebp), %edx
	movl	%eax, 52(%edx)
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L30
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC2, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L30:
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	12(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	bcopy
	cmpl	$0, 24(%ebp)
	jne	.L31
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$22, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC3, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L31:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 10(%edx)
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
	jns	.L32
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L32:
	movl	-16(%ebp), %eax
	leal	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$16, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	connect
	testl	%eax, %eax
	jns	.L45
	movl	$.LC5, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L25:
	movl	-16(%ebp), %eax
	movw	$10, 24(%eax)
	movl	-16(%ebp), %eax
	addl	$32, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	inet_pton
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L34
	movl	$.LC6, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L34:
	cmpl	$0, -12(%ebp)
	jns	.L35
	movl	$.LC7, (%esp)
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
	movl	$.LC8, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L36:
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	-16(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	htons
	movl	-16(%ebp), %edx
	movw	%ax, 26(%edx)
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
	jns	.L37
	movl	$.LC4, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L37:
	movl	-16(%ebp), %eax
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$28, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	connect
	testl	%eax, %eax
	jns	.L46
	movl	$.LC5, (%esp)
	call	perror
	movl	$0, (%esp)
	call	exit
.L21:
	movl	-16(%ebp), %eax
	movw	$4, 8(%eax)
	jmp	.L29
.L26:
	movl	-16(%ebp), %eax
	movw	$16, 8(%eax)
	jmp	.L29
.L24:
	movl	-16(%ebp), %eax
	movw	$9, 8(%eax)
	jmp	.L29
.L23:
	movl	-16(%ebp), %eax
	movw	$8, 8(%eax)
	jmp	.L29
.L22:
	movl	-16(%ebp), %eax
	movw	$5, 8(%eax)
	jmp	.L29
.L27:
	movl	-16(%ebp), %eax
	movw	$17, 8(%eax)
	jmp	.L29
.L18:
	movl	stderr, %eax
	movl	%eax, 12(%esp)
	movl	$38, 8(%esp)
	movl	$1, 4(%esp)
	movl	$.LC9, (%esp)
	call	fwrite
	movl	$0, (%esp)
	call	exit
.L45:
	nop
	jmp	.L29
.L46:
	nop
.L29:
	movl	-16(%ebp), %eax
	movl	$clientsocketClose, 92(%eax)
	movl	-16(%ebp), %eax
	movl	$clientsocketWrite, 96(%eax)
	movl	-16(%ebp), %eax
	movl	$clientsocketRead, 100(%eax)
	movl	-16(%ebp), %eax
	movl	$clientsocketSetOwner, 104(%eax)
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	clientsocketcreate, .-clientsocketcreate
	.section	.rodata
.LC10:
	.string	"Close at close"
.LC11:
	.string	"Close at client shutdown!"
	.text
	.globl	clientsocketClose
	.type	clientsocketClose, @function
clientsocketClose:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	close
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L48
	movl	$.LC10, (%esp)
	call	perror
.L48:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$.LC11, (%esp)
	call	puts
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	clientsocketClose, .-clientsocketClose
	.section	.rodata
.LC12:
	.string	"Write at write"
	.text
	.globl	clientsocketWrite
	.type	clientsocketWrite, @function
clientsocketWrite:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L51
	movl	$.LC12, (%esp)
	call	perror
.L51:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	clientsocketWrite, .-clientsocketWrite
	.section	.rodata
.LC13:
	.string	"Read at read"
	.text
	.globl	clientsocketRead
	.type	clientsocketRead, @function
clientsocketRead:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	read
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L54
	movl	$.LC13, (%esp)
	call	perror
.L54:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	clientsocketRead, .-clientsocketRead
	.section	.rodata
	.align 4
.LC14:
	.string	"Owner at Unable to set process to owner"
	.text
	.globl	clientsocketSetOwner
	.type	clientsocketSetOwner, @function
clientsocketSetOwner:
.LFB6:
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
	jns	.L57
	movl	$.LC14, (%esp)
	call	perror
.L57:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	clientsocketSetOwner, .-clientsocketSetOwner
	.section	.rodata
.LC15:
	.string	"ReadConsole at calloc"
	.text
	.globl	ReadConsole
	.type	ReadConsole, @function
ReadConsole:
.LFB7:
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
	jmp	.L60
.L64:
	cmpl	$0, -20(%ebp)
	sete	%dl
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	sete	%al
	orl	%edx, %eax
	testb	%al, %al
	je	.L61
	sall	-16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L61
	movl	$.LC15, (%esp)
	call	perror
.L61:
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movzbl	-21(%ebp), %eax
	movb	%al, (%edx)
	cmpb	$10, -21(%ebp)
	jne	.L62
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	jmp	.L63
.L62:
	addl	$1, -20(%ebp)
.L60:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc
	movb	%al, -21(%ebp)
	cmpb	$-1, -21(%ebp)
	jne	.L64
.L63:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	ReadConsole, .-ReadConsole
	.section	.rodata
.LC16:
	.string	"%d"
.LC17:
	.string	"getnum at sscanf"
	.text
	.globl	getnum
	.type	getnum, @function
getnum:
.LFB8:
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
	jne	.L67
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L68
.L67:
	call	__errno_location
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L69
	movl	$.LC17, (%esp)
	call	perror
	movl	$0, -16(%ebp)
	jmp	.L68
.L69:
	movl	$0, -16(%ebp)
.L68:
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	getnum, .-getnum
	.section	.rodata
.LC18:
	.string	"%d: %s\n"
	.text
	.globl	Strtok
	.type	Strtok, @function
Strtok:
.LFB9:
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
.L74:
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
	je	.L77
.L72:
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
	jmp	.L74
.L77:
	nop
.L76:
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
.LFE9:
	.size	Strtok, .-Strtok
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
