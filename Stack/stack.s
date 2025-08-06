	.file	"stack.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://CandC++//Stack" "E:/CandC++/Stack/stack.c"
	.globl	isEmpty
	.def	isEmpty;	.scl	2;	.type	32;	.endef
	.seh_proc	isEmpty
isEmpty:
.LFB110:
	.file 1 "E:/CandC++/Stack/stack.c"
	.loc 1 16 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 17 18
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 17 31
	testq	%rax, %rax
	je	.L2
	.loc 1 17 31 is_stmt 0 discriminator 2
	cmpq	$0, 16(%rbp)
	jne	.L3
.L2:
	.loc 1 17 31 discriminator 3
	movl	$1, %eax
	.loc 1 17 31
	jmp	.L4
.L3:
	.loc 1 17 31 discriminator 4
	movl	$0, %eax
.L4:
	.loc 1 17 31 discriminator 6
	andl	$1, %eax
	.loc 1 18 1 is_stmt 1
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Stack is initialized!\0"
	.text
	.globl	initialization_stack
	.def	initialization_stack;	.scl	2;	.type	32;	.endef
	.seh_proc	initialization_stack
initialization_stack:
.LFB111:
	.loc 1 21 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 22 43
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 23 9
	cmpq	$0, -8(%rbp)
	jne	.L7
	.loc 1 24 15
	movl	$0, %eax
	jmp	.L8
.L7:
	.loc 1 26 19
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	.loc 1 27 17
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 28 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 29 13
	movq	-8(%rbp), %rax
.L8:
	.loc 1 30 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "Node creadted!\0"
	.text
	.globl	create_node
	.def	create_node;	.scl	2;	.type	32;	.endef
	.seh_proc	create_node
create_node:
.LFB112:
	.loc 1 33 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	.loc 1 35 54
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 36 9
	cmpq	$0, -8(%rbp)
	jne	.L10
	.loc 1 37 15
	movl	$0, %eax
	jmp	.L11
.L10:
	.loc 1 38 21
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 39 21
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 40 6
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 41 13
	movq	-8(%rbp), %rax
.L11:
	.loc 1 42 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "Push successfully!\0"
	.text
	.globl	push
	.def	push;	.scl	2;	.type	32;	.endef
	.seh_proc	push
push:
.LFB113:
	.loc 1 45 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 47 35
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	create_node
	movq	%rax, -8(%rbp)
	.loc 1 48 28
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 48 21
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 49 17
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 50 11
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 50 18
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 51 6
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 52 1
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "Stack is empty! [return -1]\0"
.LC4:
	.ascii "Pop successfuuly!\0"
	.text
	.globl	pop
	.def	pop;	.scl	2;	.type	32;	.endef
	.seh_proc	pop
pop:
.LFB114:
	.loc 1 55 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 56 9
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	isEmpty
	.loc 1 56 8 discriminator 1
	testb	%al, %al
	je	.L14
	.loc 1 57 9
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 58 16
	movl	$-1, %eax
	jmp	.L15
.L14:
	.loc 1 60 20
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 60 9
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 61 36
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 61 23
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 62 15
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 62 5
	movq	%rax, %rcx
	call	free
	.loc 1 63 16
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 64 10
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	.loc 1 64 17
	leal	-1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 65 5
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 66 12
	movl	-4(%rbp), %eax
.L15:
	.loc 1 67 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.seh_endproc
	.globl	get_top
	.def	get_top;	.scl	2;	.type	32;	.endef
	.seh_proc	get_top
get_top:
.LFB115:
	.loc 1 70 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 71 13
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	isEmpty
	.loc 1 71 34 discriminator 1
	testb	%al, %al
	jne	.L17
	.loc 1 71 41 discriminator 2
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 71 34 discriminator 2
	movl	(%rax), %eax
	.loc 1 71 34 is_stmt 0
	jmp	.L19
.L17:
	.loc 1 71 34 discriminator 3
	movl	$-1, %eax
.L19:
	.loc 1 72 1 is_stmt 1
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "Stack is destoried!\0"
	.text
	.globl	destory_stack
	.def	destory_stack;	.scl	2;	.type	32;	.endef
	.seh_proc	destory_stack
destory_stack:
.LFB116:
	.loc 1 75 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 76 8
	cmpq	$0, 16(%rbp)
	jne	.L21
	.loc 1 77 9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 78 9
	jmp	.L20
.L21:
	.loc 1 80 23
	movq	$0, -16(%rbp)
	.loc 1 80 35
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 81 10
	jmp	.L23
.L24:
	.loc 1 83 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 84 9
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 85 13
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L23:
	.loc 1 81 15
	cmpq	$0, -8(%rbp)
	jne	.L24
	.loc 1 87 5
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 88 5
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
.L20:
	.loc 1 89 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "--------Stack-------\0"
.LC7:
	.ascii "\11[count: %d]\12\0"
.LC8:
	.ascii "---------1----------\0"
.LC9:
	.ascii "\11top->: %d |['pop()']\12\0"
.LC10:
	.ascii "\11top->: %d |['get_top()']\12\0"
.LC11:
	.ascii "\11[count: %d]\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB117:
	.loc 1 92 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 92 1
	call	__main
	.loc 1 93 27
	call	initialization_stack
	movq	%rax, -8(%rbp)
	.loc 1 94 5
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	push
	.loc 1 95 5
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	push
	.loc 1 96 5
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	push
	.loc 1 97 5
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 98 5
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leaq	.LC7(%rip), %rcx
	movl	%eax, %edx
	call	printf
	.loc 1 99 5
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 100 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	pop
	movl	%eax, %edx
	.loc 1 100 5 is_stmt 0 discriminator 1
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 101 5 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	get_top
	movl	%eax, %edx
	.loc 1 101 5 is_stmt 0 discriminator 1
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 102 5 is_stmt 1
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	.loc 1 103 5
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leaq	.LC11(%rip), %rcx
	movl	%eax, %edx
	call	printf
	.loc 1 104 5
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	destory_stack
	.loc 1 105 12
	movl	$0, %eax
	.loc 1 106 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.seh_endproc
.Letext0:
	.file 2 "E:/Compiler/winlibs-x86_64-gcc-15.1.0/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.file 3 "E:/Compiler/winlibs-x86_64-gcc-15.1.0/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3be
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0xd
	.ascii "GNU C23 15.1.0 -mtune=generic -march=x86-64 -g\0"
	.byte	0x1d
	.byte	0x3
	.long	0x31647
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xe
	.long	0x5e
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xf
	.byte	0x8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x9
	.ascii "StackNode\0"
	.byte	0x5
	.long	0x12f
	.uleb128 0x4
	.ascii "data\0"
	.byte	0x6
	.byte	0x9
	.long	0xac
	.byte	0
	.uleb128 0x4
	.ascii "next\0"
	.byte	0x7
	.byte	0x17
	.long	0x12f
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0x104
	.uleb128 0x9
	.ascii "Stack\0"
	.byte	0xa
	.long	0x15b
	.uleb128 0x4
	.ascii "top\0"
	.byte	0xb
	.byte	0x17
	.long	0x12f
	.byte	0
	.uleb128 0x4
	.ascii "count\0"
	.byte	0xc
	.byte	0x9
	.long	0xac
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.ascii "printf\0"
	.byte	0x2
	.word	0x1c2
	.byte	0x22
	.long	0xac
	.long	0x176
	.uleb128 0x8
	.long	0x176
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x66
	.uleb128 0x11
	.ascii "free\0"
	.byte	0x3
	.word	0x1c5
	.byte	0x23
	.long	0x18f
	.uleb128 0x8
	.long	0xcf
	.byte	0
	.uleb128 0xa
	.ascii "malloc\0"
	.byte	0x3
	.word	0x1c6
	.byte	0x24
	.long	0xcf
	.long	0x1a9
	.uleb128 0x8
	.long	0x6b
	.byte	0
	.uleb128 0x2
	.ascii "main\0"
	.byte	0x5b
	.byte	0x5
	.long	0xac
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da
	.uleb128 0x5
	.secrel32	.LASF2
	.byte	0x5d
	.byte	0x13
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x134
	.uleb128 0xb
	.ascii "destory_stack\0"
	.byte	0x4a
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x230
	.uleb128 0x3
	.secrel32	.LASF2
	.byte	0x4a
	.byte	0x22
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "tmp\0"
	.byte	0x50
	.byte	0x17
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.ascii "ptr\0"
	.byte	0x50
	.byte	0x23
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.ascii "get_top\0"
	.byte	0x45
	.byte	0x5
	.long	0xac
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x264
	.uleb128 0x3
	.secrel32	.LASF2
	.byte	0x45
	.byte	0x1b
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.ascii "pop\0"
	.byte	0x36
	.byte	0x5
	.long	0xac
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b2
	.uleb128 0x3
	.secrel32	.LASF2
	.byte	0x36
	.byte	0x17
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.ascii "tmp\0"
	.byte	0x3c
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.ascii "tmprt\0"
	.byte	0x3d
	.byte	0x17
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.ascii "push\0"
	.byte	0x2c
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fb
	.uleb128 0x3
	.secrel32	.LASF2
	.byte	0x2c
	.byte	0x19
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x2c
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.secrel32	.LASF3
	.byte	0x2f
	.byte	0x18
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.ascii "create_node\0"
	.byte	0x20
	.byte	0x14
	.long	0x12f
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x342
	.uleb128 0xc
	.ascii "value\0"
	.byte	0x20
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.secrel32	.LASF3
	.byte	0x23
	.byte	0x18
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.ascii "initialization_stack\0"
	.byte	0x14
	.byte	0x10
	.long	0x1da
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x383
	.uleb128 0x5
	.secrel32	.LASF2
	.byte	0x16
	.byte	0x14
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.ascii "isEmpty\0"
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.long	0x3b8
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8
	.uleb128 0x3
	.secrel32	.LASF2
	.byte	0xf
	.byte	0x1c
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 36
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF3:
	.ascii "new_node\0"
.LASF2:
	.ascii "stack\0"
	.section	.debug_line_str,"dr"
.LASF0:
	.ascii "E:\\CandC++\\Stack\\stack.c\0"
.LASF1:
	.ascii "E:\\\\CandC++\\\\Stack\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r4) 15.1.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
