	.file "main.pp"
# Begin asmlist al_procedures

.section .text.n_p$todo_$$_getrandomword$$ansistring,"x"
	.balign 16,0x90
.globl	P$TODO_$$_GETRANDOMWORD$$ANSISTRING
P$TODO_$$_GETRANDOMWORD$$ANSISTRING:
.Lc1:
.seh_proc P$TODO_$$_GETRANDOMWORD$$ANSISTRING
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-16(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
	movq	%rcx,-8(%rbp)
	movq	U_$P$TODO_$$_WORDS(%rip),%rbx
	movq	U_$P$TODO_$$_WORDS(%rip),%rcx
	call	fpc_dynarray_high
	movq	%rax,%rcx
	call	SYSTEM_$$_RANDOM$INT64$$INT64
	movq	(%rbx,%rax,8),%rdx
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_assign
	movq	-16(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:

.section .text.n_p$todo_$$_hasmatch$char$$boolean,"x"
	.balign 16,0x90
.globl	P$TODO_$$_HASMATCH$CHAR$$BOOLEAN
P$TODO_$$_HASMATCH$CHAR$$BOOLEAN:
.Lc6:
.seh_proc P$TODO_$$_HASMATCH$CHAR$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
	movb	%cl,-8(%rbp)
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%rax
	movzbl	-8(%rbp),%ecx
	movq	$1,%r8
	movq	%rax,%rdx
	call	SYSTEM_$$_POS$CHAR$SHORTSTRING$INT64$$INT64
	cmpq	$0,%rax
	setgb	-12(%rbp)
	movb	-12(%rbp),%al
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc7:

.section .text.n_p$todo_$$_getindex$char$$smallint,"x"
	.balign 16,0x90
.globl	P$TODO_$$_GETINDEX$CHAR$$SMALLINT
P$TODO_$$_GETINDEX$CHAR$$SMALLINT:
.Lc11:
.seh_proc P$TODO_$$_GETINDEX$CHAR$$SMALLINT
	pushq	%rbp
.seh_pushreg %rbp
.Lc13:
.Lc14:
	movq	%rsp,%rbp
.Lc15:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
	movb	%cl,-8(%rbp)
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%rax
	movzbl	-8(%rbp),%ecx
	movq	$1,%r8
	movq	%rax,%rdx
	call	SYSTEM_$$_POS$CHAR$SHORTSTRING$INT64$$INT64
	movw	%ax,-12(%rbp)
	movswl	-12(%rbp),%eax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc12:

.section .text.n_p$todo_$$_iscomplete$$boolean,"x"
	.balign 16,0x90
.globl	P$TODO_$$_ISCOMPLETE$$BOOLEAN
P$TODO_$$_ISCOMPLETE$$BOOLEAN:
.Lc16:
.seh_proc P$TODO_$$_ISCOMPLETE$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc18:
.Lc19:
	movq	%rsp,%rbp
.Lc20:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
	movw	$-1,-8(%rbp)
	.balign 8,0x90
.Lj11:
	movw	-8(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-8(%rbp)
	movzwl	-8(%rbp),%edx
	leaq	U_$P$TODO_$$_PLACEHOLDER(%rip),%rax
	cmpb	$0,(%rax,%rdx,1)
	je	.Lj14
	jmp	.Lj15
.Lj14:
	movb	$0,-4(%rbp)
	jmp	.Lj9
	.balign 4,0x90
.Lj15:
	cmpw	$4,-8(%rbp)
	jge	.Lj13
	jmp	.Lj11
.Lj13:
	movb	$1,-4(%rbp)
.Lj9:
	movb	-4(%rbp),%al
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc17:

.section .text.n_p$todo_$$_confirmdialog$shortstring$$boolean,"x"
	.balign 16,0x90
.globl	P$TODO_$$_CONFIRMDIALOG$SHORTSTRING$$BOOLEAN
P$TODO_$$_CONFIRMDIALOG$SHORTSTRING$$BOOLEAN:
.Lc21:
.seh_proc P$TODO_$$_CONFIRMDIALOG$SHORTSTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc23:
.Lc24:
	movq	%rsp,%rbp
.Lc25:
	leaq	-320(%rsp),%rsp
.seh_stackalloc 320
	movq	%rbx,-280(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	%rcx,-8(%rbp)
	movq	-8(%rbp),%rax
	movq	%rax,%r8
	movq	$255,%rdx
	leaq	-272(%rbp),%rcx
	call	fpc_shortstr_to_shortstr
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	-272(%rbp),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	leaq	_$TODO$_Ld1(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_write_end
	call	fpc_iocheck
	jmp	.Lj19
	.balign 8,0x90
.Lj18:
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-16(%rbp),%rdx
	movq	%rbx,%rcx
	call	fpc_read_text_char
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_readln_end
	call	fpc_iocheck
	movb	-16(%rbp),%al
	cmpb	$10,%al
	jb	.Lj22
	subb	$10,%al
	je	.Lj23
	subb	$17,%al
	je	.Lj24
	subb	$5,%al
	je	.Lj23
	subb	$46,%al
	je	.Lj24
	subb	$11,%al
	je	.Lj23
	subb	$21,%al
	je	.Lj24
	subb	$11,%al
	je	.Lj23
	jmp	.Lj22
	.balign 4,0x90
.Lj23:
	movb	$1,-12(%rbp)
	jmp	.Lj16
	jmp	.Lj21
	.balign 4,0x90
.Lj24:
	movb	$0,-12(%rbp)
	jmp	.Lj16
	jmp	.Lj21
	.balign 4,0x90
.Lj22:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld2(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	jmp	.Lj16
	.balign 4,0x90
.Lj21:
.Lj19:
	jmp	.Lj18
.Lj16:
	movb	-12(%rbp),%al
	movq	-280(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc22:

.section .text.n_p$todo$_$readlines_$$_fin$0000000b,"x"
	.balign 16,0x90
P$TODO$_$READLINES_$$_fin$0000000B:
.Lc26:
.seh_proc P$TODO$_$READLINES_$$_fin$0000000B
	pushq	%rbp
.seh_pushreg %rbp
.Lc28:
.Lc29:
	movq	%rcx,%rbp
.Lc30:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc27:

.section .text.n_p$todo_$$_readlines,"x"
	.balign 16,0x90
.globl	P$TODO_$$_READLINES
P$TODO_$$_READLINES:
.Lc31:
.seh_proc P$TODO_$$_READLINES
	pushq	%rbp
.seh_pushreg %rbp
.Lc33:
.Lc34:
	movq	%rsp,%rbp
.Lc35:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	$0,-16(%rbp)
.Lj33:
	nop
.Lj29:
	leaq	TC_$P$TODO_$$_FILENAME(%rip),%rax
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	movq	%rax,%rdx
	call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	call	SYSTEM_$$_RESET$TEXT
	call	fpc_iocheck
	movq	$0,-8(%rbp)
	leaq	RTTI_$P$TODO_$$_def0000000C(%rip),%rdx
	leaq	-8(%rbp),%r9
	leaq	U_$P$TODO_$$_WORDS(%rip),%rcx
	movq	$1,%r8
	call	fpc_dynarray_setlength
	movw	$0,U_$P$TODO_$$_I(%rip)
	jmp	.Lj35
	.balign 8,0x90
.Lj34:
	leaq	TC_$P$TODO_$$_LINE(%rip),%rdx
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	movq	$5,%r8
	call	fpc_read_text_shortstr
	call	fpc_iocheck
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	call	fpc_readln_end
	call	fpc_iocheck
	movq	U_$P$TODO_$$_WORDS(%rip),%rax
	testq	%rax,%rax
	je	.Lj37
	movq	-8(%rax),%rax
	addq	$1,%rax
.Lj37:
	leaq	1(%rax),%rax
	movq	%rax,-8(%rbp)
	leaq	RTTI_$P$TODO_$$_def0000000C(%rip),%rdx
	leaq	-8(%rbp),%r9
	leaq	U_$P$TODO_$$_WORDS(%rip),%rcx
	movq	$1,%r8
	call	fpc_dynarray_setlength
	leaq	TC_$P$TODO_$$_LINE(%rip),%rdx
	movl	$0,%r8d
	leaq	-16(%rbp),%rcx
	call	fpc_shortstr_to_ansistr
	movq	-16(%rbp),%rdx
	movq	U_$P$TODO_$$_WORDS(%rip),%rax
	movswq	U_$P$TODO_$$_I(%rip),%rcx
	leaq	(%rax,%rcx,8),%rcx
	call	fpc_ansistr_assign
	addw	$1,U_$P$TODO_$$_I(%rip)
.Lj35:
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	call	SYSTEM_$$_EOF$TEXT$$BOOLEAN
	movb	%al,%bl
	call	fpc_iocheck
	testb	%bl,%bl
	jne	.Lj36
	jmp	.Lj34
.Lj36:
	leaq	U_$P$TODO_$$_FILEIN(%rip),%rcx
	call	SYSTEM_$$_CLOSE$TEXT
	call	fpc_iocheck
.Lj31:
	nop
.Lj30:
	movq	%rbp,%rcx
	call	P$TODO$_$READLINES_$$_fin$0000000B
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj29
	.rva	.Lj30
	.rva	P$TODO$_$READLINES_$$_fin$0000000B

.section .text.n_p$todo_$$_readlines,"x"
.seh_endproc
.Lc32:

.section .text.n_p$todo_$$_reset,"x"
	.balign 16,0x90
.globl	P$TODO_$$_RESET
P$TODO_$$_RESET:
.Lc36:
.seh_proc P$TODO_$$_RESET
	pushq	%rbp
.seh_pushreg %rbp
.Lc38:
.Lc39:
	movq	%rsp,%rbp
.Lc40:
	leaq	-16(%rsp),%rsp
.seh_stackalloc 16
.seh_endprologue
	movw	$-1,-4(%rbp)
	.balign 8,0x90
.Lj40:
	movw	-4(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-4(%rbp)
	movzwl	-4(%rbp),%edx
	leaq	U_$P$TODO_$$_PLACEHOLDER(%rip),%rax
	movb	$0,(%rax,%rdx,1)
	cmpw	$4,-4(%rbp)
	jge	.Lj42
	jmp	.Lj40
.Lj42:
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc37:

.section .text.n_p$todo$_$showmatches$char_$$_fin$00000015,"x"
	.balign 16,0x90
P$TODO$_$SHOWMATCHES$CHAR_$$_fin$00000015:
.Lc41:
.seh_proc P$TODO$_$SHOWMATCHES$CHAR_$$_fin$00000015
	pushq	%rbp
.seh_pushreg %rbp
.Lc43:
.Lc44:
	movq	%rcx,%rbp
.Lc45:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-40(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-24(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc42:

.section .text.n_p$todo_$$_showmatches$char,"x"
	.balign 16,0x90
.globl	P$TODO_$$_SHOWMATCHES$CHAR
P$TODO_$$_SHOWMATCHES$CHAR:
.Lc46:
.seh_proc P$TODO_$$_SHOWMATCHES$CHAR
	pushq	%rbp
.seh_pushreg %rbp
.Lc48:
.Lc49:
	movq	%rsp,%rbp
.Lc50:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-48(%rbp)
.seh_savereg %rbx, 32
.seh_endprologue
	movb	%cl,-8(%rbp)
	movq	$0,-40(%rbp)
	movq	$0,-24(%rbp)
.Lj51:
	nop
.Lj47:
	movw	$-1,-12(%rbp)
	.balign 8,0x90
.Lj52:
	movw	-12(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-12(%rbp)
	movswl	-12(%rbp),%eax
	leal	1(%eax),%eax
	movzbl	%al,%eax
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%rdx
	movb	(%rdx,%rax,1),%al
	cmpb	-8(%rbp),%al
	je	.Lj55
	jmp	.Lj56
.Lj55:
	movzwl	-12(%rbp),%eax
	leaq	U_$P$TODO_$$_PLACEHOLDER(%rip),%rcx
	movb	-8(%rbp),%dl
	movb	%dl,(%rcx,%rax,1)
	.balign 4,0x90
.Lj56:
	cmpw	$4,-12(%rbp)
	jge	.Lj54
	jmp	.Lj52
.Lj54:
	movw	$-1,-12(%rbp)
	.balign 8,0x90
.Lj57:
	movw	-12(%rbp),%ax
	addw	$1,%ax
	movw	%ax,-12(%rbp)
	call	fpc_get_output
	movq	%rax,%rbx
	movzwl	-12(%rbp),%eax
	leaq	U_$P$TODO_$$_PLACEHOLDER(%rip),%rdx
	movzbl	(%rdx,%rax,1),%edx
	movl	$0,%r8d
	leaq	-40(%rbp),%rcx
	call	fpc_char_to_ansistr
	movq	-40(%rbp),%rax
	movq	%rax,-32(%rbp)
	movl	$2,%r9d
	movq	-32(%rbp),%r8
	movl	$32,%edx
	leaq	-24(%rbp),%rcx
	call	STRUTILS_$$_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	movq	-24(%rbp),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_ansistr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_write_end
	call	fpc_iocheck
	cmpw	$4,-12(%rbp)
	jge	.Lj59
	jmp	.Lj57
.Lj59:
	call	fpc_get_output
	movq	%rax,%rbx
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
.Lj49:
	nop
.Lj48:
	movq	%rbp,%rcx
	call	P$TODO$_$SHOWMATCHES$CHAR_$$_fin$00000015
	movq	-48(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj47
	.rva	.Lj48
	.rva	P$TODO$_$SHOWMATCHES$CHAR_$$_fin$00000015

.section .text.n_p$todo_$$_showmatches$char,"x"
.seh_endproc
.Lc47:

.section .text.n_p$todo$_$begingame_$$_fin$0000001c,"x"
	.balign 16,0x90
P$TODO$_$BEGINGAME_$$_fin$0000001C:
.Lc51:
.seh_proc P$TODO$_$BEGINGAME_$$_fin$0000001C
	pushq	%rbp
.seh_pushreg %rbp
.Lc53:
.Lc54:
	movq	%rcx,%rbp
.Lc55:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc52:

.section .text.n_p$todo_$$_begingame,"x"
	.balign 16,0x90
.globl	P$TODO_$$_BEGINGAME
P$TODO_$$_BEGINGAME:
.Lc56:
.seh_proc P$TODO_$$_BEGINGAME
	pushq	%rbp
.seh_pushreg %rbp
.Lc58:
.Lc59:
	movq	%rsp,%rbp
.Lc60:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	$0,-16(%rbp)
.Lj68:
	nop
.Lj64:
	movw	$0,-4(%rbp)
	leaq	-16(%rbp),%rax
	movq	%rax,%rcx
	call	P$TODO_$$_GETRANDOMWORD$$ANSISTRING
	movq	-16(%rbp),%r8
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%rcx
	movq	$255,%rdx
	call	fpc_ansistr_to_shortstr
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld3(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	.balign 8,0x90
.Lj69:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld4(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_input
	movq	%rax,%rbx
	leaq	-8(%rbp),%rdx
	movq	%rbx,%rcx
	call	fpc_read_text_char
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_readln_end
	call	fpc_iocheck
	movzbl	-8(%rbp),%ecx
	call	P$TODO_$$_HASMATCH$CHAR$$BOOLEAN
	testb	%al,%al
	jne	.Lj72
	jmp	.Lj73
.Lj72:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld5(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	movzbl	-8(%rbp),%ecx
	call	P$TODO_$$_SHOWMATCHES$CHAR
	jmp	.Lj74
.Lj73:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld6(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movswq	-4(%rbp),%rax
	leaq	1(%rax),%rax
	movswq	TC_$P$TODO_$$_MAX_TRIES(%rip),%r8
	subq	%rax,%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_sint
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	addw	$1,-4(%rbp)
.Lj74:
	call	P$TODO_$$_ISCOMPLETE$$BOOLEAN
	testb	%al,%al
	jne	.Lj75
	jmp	.Lj76
.Lj75:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld7(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	leaq	_$TODO$_Ld8(%rip),%rcx
	call	P$TODO_$$_CONFIRMDIALOG$SHORTSTRING$$BOOLEAN
	testb	%al,%al
	je	.Lj77
	jmp	.Lj78
.Lj77:
	jmp	.Lj66
	.balign 4,0x90
.Lj78:
	call	P$TODO_$$_RESET
	leaq	-16(%rbp),%rcx
	call	P$TODO_$$_GETRANDOMWORD$$ANSISTRING
	movq	-16(%rbp),%r8
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%rcx
	movq	$255,%rdx
	call	fpc_ansistr_to_shortstr
	.balign 4,0x90
.Lj76:
	movw	-4(%rbp),%ax
	cmpw	TC_$P$TODO_$$_MAX_TRIES(%rip),%ax
	je	.Lj71
	jmp	.Lj69
.Lj71:
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld9(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld10(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	leaq	TC_$P$TODO_$$_GUESSWORD(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movl	$93,%r8d
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_char
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
.Lj66:
	nop
.Lj65:
	movq	%rbp,%rcx
	call	P$TODO$_$BEGINGAME_$$_fin$0000001C
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj64
	.rva	.Lj65
	.rva	P$TODO$_$BEGINGAME_$$_fin$0000001C

.section .text.n_p$todo_$$_begingame,"x"
.seh_endproc
.Lc57:

.section .text.n_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
.Lc61:
.seh_proc main
	pushq	%rbp
.seh_pushreg %rbp
.Lc63:
.Lc64:
	movq	%rsp,%rbp
.Lc65:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
	movq	%rbx,-8(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	call	fpc_initializeunits
	leaq	_$TODO$_Ld11(%rip),%rax
	movq	%rax,%rcx
	call	P$TODO_$$_CONFIRMDIALOG$SHORTSTRING$$BOOLEAN
	testb	%al,%al
	je	.Lj83
	jmp	.Lj84
.Lj83:
	jmp	.Lj1
	.balign 4,0x90
.Lj84:
	call	SYSTEM_$$_RANDOMIZE
	call	P$TODO_$$_READLINES
	call	fpc_get_output
	movq	%rax,%rbx
	leaq	_$TODO$_Ld12(%rip),%r8
	movq	%rbx,%rdx
	movl	$0,%ecx
	call	fpc_write_text_shortstr
	call	fpc_iocheck
	movq	%rbx,%rcx
	call	fpc_writeln_end
	call	fpc_iocheck
	call	P$TODO_$$_BEGINGAME
.Lj1:
	call	fpc_do_exit
	movq	-8(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc62:

.section .text.n_p$todo_$$_init_implicit$,"x"
	.balign 16,0x90
.globl	INIT$_$P$TODO
INIT$_$P$TODO:
.globl	P$TODO_$$_init_implicit$
P$TODO_$$_init_implicit$:
.Lc66:
.seh_proc P$TODO_$$_init_implicit$
	pushq	%rbp
.seh_pushreg %rbp
.Lc68:
.Lc69:
	movq	%rsp,%rbp
.Lc70:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc67:

.section .text.n_p$todo_$$_finalize_implicit$,"x"
	.balign 16,0x90
.globl	PASCALFINALIZE
PASCALFINALIZE:
.globl	FINALIZE$_$P$TODO
FINALIZE$_$P$TODO:
.globl	P$TODO_$$_finalize_implicit$
P$TODO_$$_finalize_implicit$:
.Lc71:
.seh_proc P$TODO_$$_finalize_implicit$
	pushq	%rbp
.seh_pushreg %rbp
.Lc73:
.Lc74:
	movq	%rsp,%rbp
.Lc75:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	RTTI_$P$TODO_$$_def0000000C(%rip),%rax
	movq	%rax,%rdx
	leaq	U_$P$TODO_$$_WORDS(%rip),%rcx
	call	fpc_finalize
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc72:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
U_$P$TODO_$$_FILEIN:
	.zero 896

.section .bss
U_$P$TODO_$$_PLACEHOLDER:
	.zero 5

.section .bss
	.balign 8
U_$P$TODO_$$_WORDS:
	.zero 8

.section .bss
	.balign 2
U_$P$TODO_$$_I:
	.zero 2

.section .data.n_INITFINAL,"d"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	6,0
	.quad	INIT$_$SYSTEM
	.quad	0
	.quad	INIT$_$FPINTRES
	.quad	0,0
	.quad	FINALIZE$_$OBJPAS
	.quad	0
	.quad	FINALIZE$_$WINDIRS
	.quad	INIT$_$SYSUTILS
	.quad	FINALIZE$_$SYSUTILS
	.quad	INIT$_$P$TODO
	.quad	FINALIZE$_$P$TODO

.section .data.n_FPC_THREADVARTABLES,"d"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"d"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	3
	.quad	RESSTR_$STRUTILS_$$_START$indirect
	.quad	RESSTR_$STRUTILS_$$_END$indirect
	.quad	RESSTR_$SYSCONST_$$_START$indirect
	.quad	RESSTR_$SYSCONST_$$_END$indirect
	.quad	RESSTR_$MATH_$$_START$indirect
	.quad	RESSTR_$MATH_$$_END$indirect

.section .data.n_FPC_WIDEINITTABLES,"d"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	1
	.quad	WIDEINITS_$STRUTILS

.section .data.n_FPC_RESSTRINITTABLES,"d"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section .fpc.n_version
	.balign 16
__fpc_ident:
	.ascii	"FPC 3.2.2 [2021/05/15] for x86_64 - Win64"

.section .data.n___heapsize,"d"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind,"d"
	.balign 8
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .data.n_TC_$P$TODO_$$_FILENAME,"d"
TC_$P$TODO_$$_FILENAME:
	.byte	11
	.ascii	"./file1.txt\000                                    "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"   "

.section .data.n_TC_$P$TODO_$$_MAX_TRIES,"d"
	.balign 2
TC_$P$TODO_$$_MAX_TRIES:
	.short	3

.section .data.n_TC_$P$TODO_$$_LINE,"d"
TC_$P$TODO_$$_LINE:
	.byte	0
	.ascii	"\000    "

.section .data.n_TC_$P$TODO_$$_GUESSWORD,"d"
TC_$P$TODO_$$_GUESSWORD:
	.byte	0
	.ascii	"\000                                               "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"   "

.section .rodata.n__$TODO$_Ld1,"d"
	.balign 8
.globl	_$TODO$_Ld1
_$TODO$_Ld1:
	.ascii	"\006[Y/N] \000"

.section .rodata.n__$TODO$_Ld2,"d"
	.balign 8
.globl	_$TODO$_Ld2
_$TODO$_Ld2:
	.ascii	"\017Invalid option.\000"

.section .rodata.n__$TODO$_Ld3,"d"
	.balign 8
.globl	_$TODO$_Ld3
_$TODO$_Ld3:
	.ascii	"*You are allowed to guess the word 3 times.\000"

.section .rodata.n__$TODO$_Ld4,"d"
	.balign 8
.globl	_$TODO$_Ld4
_$TODO$_Ld4:
	.ascii	"\020Guess a letter: \000"

.section .rodata.n__$TODO$_Ld5,"d"
	.balign 8
.globl	_$TODO$_Ld5
_$TODO$_Ld5:
	.ascii	"\013Good guess.\000"

.section .rodata.n__$TODO$_Ld6,"d"
	.balign 8
.globl	_$TODO$_Ld6
_$TODO$_Ld6:
	.ascii	"\037You guessed wrong. Tries Left: \000"

.section .rodata.n__$TODO$_Ld7,"d"
	.balign 8
.globl	_$TODO$_Ld7
_$TODO$_Ld7:
	.ascii	"\022Congrats! You win!\000"

.section .rodata.n__$TODO$_Ld8,"d"
	.balign 8
.globl	_$TODO$_Ld8
_$TODO$_Ld8:
	.ascii	"\031Do you want to try again?\000"

.section .rodata.n__$TODO$_Ld9,"d"
	.balign 8
.globl	_$TODO$_Ld9
_$TODO$_Ld9:
	.ascii	"\011You lost!\000"

.section .rodata.n__$TODO$_Ld10,"d"
	.balign 8
.globl	_$TODO$_Ld10
_$TODO$_Ld10:
	.ascii	"\022Correct word is: [\000"

.section .rodata.n__$TODO$_Ld11,"d"
	.balign 8
.globl	_$TODO$_Ld11
_$TODO$_Ld11:
	.ascii	"\017Start the game?\000"

.section .rodata.n__$TODO$_Ld12,"d"
	.balign 8
.globl	_$TODO$_Ld12
_$TODO$_Ld12:
	.ascii	"\024Welcome to terdle!!!\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$P$TODO_$$_def0000000C,"d"
	.balign 8
.globl	RTTI_$P$TODO_$$_def0000000C
RTTI_$P$TODO_$$_def0000000C:
	.byte	21,0
	.quad	8
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.long	256
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.byte	4
	.ascii	"Todo"
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_RTTI_$P$TODO_$$_def0000000C,"d"
	.balign 8
.globl	RTTI_$P$TODO_$$_def0000000C$indirect
RTTI_$P$TODO_$$_def0000000C$indirect:
	.quad	RTTI_$P$TODO_$$_def0000000C
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc76:
	.long	.Lc78-.Lc77
.Lc77:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc78:
	.long	.Lc80-.Lc79
.Lc79:
	.secrel32	.Lc76
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc80:
	.long	.Lc82-.Lc81
.Lc81:
	.secrel32	.Lc76
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc82:
	.long	.Lc84-.Lc83
.Lc83:
	.secrel32	.Lc76
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.byte	4
	.long	.Lc13-.Lc11
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc14-.Lc13
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc15-.Lc14
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc84:
	.long	.Lc86-.Lc85
.Lc85:
	.secrel32	.Lc76
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc19-.Lc18
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc20-.Lc19
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc86:
	.long	.Lc88-.Lc87
.Lc87:
	.secrel32	.Lc76
	.quad	.Lc21
	.quad	.Lc22-.Lc21
	.byte	4
	.long	.Lc23-.Lc21
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc24-.Lc23
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc25-.Lc24
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc88:
	.long	.Lc90-.Lc89
.Lc89:
	.secrel32	.Lc76
	.quad	.Lc26
	.quad	.Lc27-.Lc26
	.byte	4
	.long	.Lc28-.Lc26
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc29-.Lc28
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc30-.Lc29
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc90:
	.long	.Lc92-.Lc91
.Lc91:
	.secrel32	.Lc76
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc34-.Lc33
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc35-.Lc34
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc92:
	.long	.Lc94-.Lc93
.Lc93:
	.secrel32	.Lc76
	.quad	.Lc36
	.quad	.Lc37-.Lc36
	.byte	4
	.long	.Lc38-.Lc36
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc39-.Lc38
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc40-.Lc39
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc94:
	.long	.Lc96-.Lc95
.Lc95:
	.secrel32	.Lc76
	.quad	.Lc41
	.quad	.Lc42-.Lc41
	.byte	4
	.long	.Lc43-.Lc41
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc44-.Lc43
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc45-.Lc44
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc96:
	.long	.Lc98-.Lc97
.Lc97:
	.secrel32	.Lc76
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.byte	4
	.long	.Lc48-.Lc46
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc49-.Lc48
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc50-.Lc49
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc98:
	.long	.Lc100-.Lc99
.Lc99:
	.secrel32	.Lc76
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.byte	4
	.long	.Lc53-.Lc51
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc54-.Lc53
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc55-.Lc54
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc100:
	.long	.Lc102-.Lc101
.Lc101:
	.secrel32	.Lc76
	.quad	.Lc56
	.quad	.Lc57-.Lc56
	.byte	4
	.long	.Lc58-.Lc56
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc59-.Lc58
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc60-.Lc59
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc102:
	.long	.Lc104-.Lc103
.Lc103:
	.secrel32	.Lc76
	.quad	.Lc61
	.quad	.Lc62-.Lc61
	.byte	4
	.long	.Lc63-.Lc61
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc64-.Lc63
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc65-.Lc64
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc104:
	.long	.Lc106-.Lc105
.Lc105:
	.secrel32	.Lc76
	.quad	.Lc66
	.quad	.Lc67-.Lc66
	.byte	4
	.long	.Lc68-.Lc66
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc69-.Lc68
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc70-.Lc69
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc106:
	.long	.Lc108-.Lc107
.Lc107:
	.secrel32	.Lc76
	.quad	.Lc71
	.quad	.Lc72-.Lc71
	.byte	4
	.long	.Lc73-.Lc71
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc74-.Lc73
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc75-.Lc74
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc108:
# End asmlist al_dwarf_frame

