	.file	"List.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "E://CandC++//List" "E:/CandC++/List/List.c"
	.globl	init_list
	.def	init_list;	.scl	2;	.type	32;	.endef
	.seh_proc	init_list
init_list:
.LFB110:
	.file 1 "E:/CandC++/List/List.c"
	.loc 1 11 1
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
	.loc 1 12 50
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 13 11
	cmpq	$0, -8(%rbp)
	jne	.L2
	.loc 1 14 19
	movl	$0, %eax
	jmp	.L3
.L2:
	.loc 1 15 19
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 16 15
	movq	-8(%rbp), %rax
.L3:
	.loc 1 17 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.seh_endproc
	.globl	create_node
	.def	create_node;	.scl	2;	.type	32;	.endef
	.seh_proc	create_node
create_node:
.LFB111:
	.loc 1 20 1
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
	.loc 1 21 54
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	.loc 1 22 11
	cmpq	$0, -8(%rbp)
	jne	.L5
	.loc 1 23 19
	movl	$0, %eax
	jmp	.L6
.L5:
	.loc 1 24 21
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 25 23
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 26 15
	movq	-8(%rbp), %rax
.L6:
	.loc 1 27 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.seh_endproc
	.globl	free_list
	.def	free_list;	.scl	2;	.type	32;	.endef
	.seh_proc	free_list
free_list:
.LFB112:
	.loc 1 30 1
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
	.loc 1 31 24
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 32 24
	movq	$0, -16(%rbp)
	.loc 1 33 13
	jmp	.L8
.L9:
	.loc 1 35 17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 1 36 13
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	.loc 1 37 17
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L8:
	.loc 1 33 18
	cmpq	$0, -8(%rbp)
	jne	.L9
	.loc 1 40 1
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "id: %d \12\0"
	.text
	.globl	visit_list
	.def	visit_list;	.scl	2;	.type	32;	.endef
	.seh_proc	visit_list
visit_list:
.LFB113:
	.loc 1 43 1
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
	.loc 1 44 9
	cmpq	$0, 16(%rbp)
	je	.L15
	.loc 1 46 23
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 47 12
	jmp	.L13
.L14:
	.loc 1 49 9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leaq	.LC0(%rip), %rcx
	movl	%eax, %edx
	call	printf
	.loc 1 50 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L13:
	.loc 1 47 17
	cmpq	$0, -8(%rbp)
	jne	.L14
	jmp	.L10
.L15:
	.loc 1 45 9
	nop
.L10:
	.loc 1 52 1
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	.loc 1 55 1
	call	__main
	.loc 1 56 29
	call	init_list
	movq	%rax, -16(%rbp)
	.loc 1 57 22
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 58 9
	movl	$0, -4(%rbp)
	.loc 1 69 10
	jmp	.L17
.L18:
.LBB2:
	.loc 1 71 39
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	create_node
	movq	%rax, -32(%rbp)
	.loc 1 72 31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 72 26
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 73 21
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 74 12
	addl	$1, -4(%rbp)
.L17:
.LBE2:
	.loc 1 69 12
	cmpl	$9, -4(%rbp)
	jle	.L18
	.loc 1 76 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	visit_list
	.loc 1 77 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free_list
	.loc 1 78 12
	movl	$0, %eax
	.loc 1 79 1
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.seh_endproc
.Letext0:
	.file 2 "E:/Compiler/winlibs-x86_64-gcc-15.1.0/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.file 3 "E:/Compiler/winlibs-x86_64-gcc-15.1.0/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2f3
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.ascii "ListNode\0"
	.byte	0x10
	.byte	0x1
	.byte	0x4
	.byte	0x8
	.long	0x12f
	.uleb128 0x5
	.ascii "id\0"
	.byte	0x6
	.byte	0x9
	.long	0xac
	.byte	0
	.uleb128 0x5
	.ascii "next\0"
	.byte	0x7
	.byte	0x16
	.long	0x12f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x104
	.uleb128 0x7
	.ascii "printf\0"
	.byte	0x2
	.word	0x1c2
	.byte	0x22
	.long	0xac
	.long	0x14f
	.uleb128 0x3
	.long	0x14f
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.long	0x66
	.uleb128 0x10
	.ascii "free\0"
	.byte	0x3
	.word	0x1c5
	.byte	0x23
	.long	0x168
	.uleb128 0x3
	.long	0xcf
	.byte	0
	.uleb128 0x7
	.ascii "malloc\0"
	.byte	0x3
	.word	0x1c6
	.byte	0x24
	.long	0xcf
	.long	0x182
	.uleb128 0x3
	.long	0x6b
	.byte	0
	.uleb128 0x8
	.ascii "main\0"
	.byte	0x36
	.byte	0x5
	.long	0xac
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee
	.uleb128 0x2
	.ascii "List\0"
	.byte	0x38
	.byte	0x16
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.ascii "ptr\0"
	.byte	0x39
	.byte	0x16
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.ascii "i\0"
	.byte	0x3a
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.secrel32	.LASF2
	.byte	0x47
	.byte	0x1c
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "visit_list\0"
	.byte	0x2a
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f
	.uleb128 0x4
	.ascii "List\0"
	.byte	0x2a
	.byte	0x22
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.ascii "ptr\0"
	.byte	0x2e
	.byte	0x17
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.ascii "free_list\0"
	.byte	0x1d
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x27d
	.uleb128 0x4
	.ascii "List\0"
	.byte	0x1d
	.byte	0x21
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.ascii "ptr\0"
	.byte	0x1f
	.byte	0x18
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.ascii "tmp\0"
	.byte	0x20
	.byte	0x18
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.ascii "create_node\0"
	.byte	0x13
	.byte	0x13
	.long	0x12f
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c2
	.uleb128 0x4
	.ascii "id\0"
	.byte	0x13
	.byte	0x23
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.secrel32	.LASF2
	.byte	0x15
	.byte	0x19
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.ascii "init_list\0"
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.long	0x12f
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.ascii "head\0"
	.byte	0xc
	.byte	0x19
	.long	0x12f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x7c
	.uleb128 0x19
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
.LASF2:
	.ascii "new_node\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "E:\\\\CandC++\\\\List\0"
.LASF0:
	.ascii "E:\\CandC++\\List\\List.c\0"
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r4) 15.1.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
