	.file	"print.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"\nResult B: "
.LC1:
	.string	"%d "
	.text
	.globl	print_arr
	.type	print_arr, @function
print_arr:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32	# выделяем место на стеке
	mov	QWORD PTR -24[rbp], rdi	# записываем указатель на массив B (B: -24)
	mov	DWORD PTR -28[rbp], esi	# записываем в lenght значение переданное как аргумент (lenght: -28)
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -4[rbp], 0		# записываем в i значение 0	(i: -4)
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cdqe
	lea	rdx, 0[0+rax*4]	# вычисляем i*4
	mov	rax, QWORD PTR -24[rbp]	# записываем в rax адресс B[0]
	add	rax, rdx	# находим адресс B[i]
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT	# вызываем printf("%d ", B[i])
	add	DWORD PTR -4[rbp], 1	# увеличиваем i на 1
.L2:
	mov	eax, DWORD PTR -4[rbp]		# записываем в eax i
	cmp	eax, DWORD PTR -28[rbp]		# сравниваем i с lenght
	jl	.L3	#здесь мы выйдем из цикла
	mov	edi, 10
	call	putchar@PLT	#  printf("\n")
	nop
	leave
	ret
	.size	print_arr, .-print_arr
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
