	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"%d"
.LC3:
	.string	"w"
.LC4:
	.string	"output.txt"
.LC5:
	.string	"%d "
	.align 8
.LC6:
	.string	"Input length (0 < length <= %d):"
.LC7:
	.string	"Incorrect length = %d\n"
	.align 8
.LC8:
	.string	"Random (enter 1) or manual input (enter != 1):"
.LC9:
	.string	"Result A: "
.LC10:
	.string	"A[%d] = %d\n"
.LC11:
	.string	"A[%d] ="
.LC12:
	.string	"\n%d ms\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 880
	mov	DWORD PTR -868[rbp], edi
	mov	QWORD PTR -880[rbp], rsi
	mov	DWORD PTR -64[rbp], 0
	cmp	DWORD PTR -868[rbp], 2
	jne	.L2
	mov	rax, QWORD PTR -880[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -60[rbp], eax
	lea	rsi, .LC0[rip]
	lea	rdi, .LC1[rip]
	call	fopen@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
.L4:
	lea	rax, -464[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rsi, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -4[rbp], 1
.L3:
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L4
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	ecx, DWORD PTR -60[rbp]
	lea	rdx, -864[rbp]
	lea	rax, -464[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	task@PLT
	lea	rsi, .LC3[rip]
	lea	rdi, .LC4[rip]
	call	fopen@PLT
	mov	QWORD PTR -56[rbp], rax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -864[rbp+rax*4]
	mov	rax, QWORD PTR -56[rbp]
	lea	rsi, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	add	DWORD PTR -8[rbp], 1
.L5:
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 0
	jmp	.L18
.L2:
	mov	esi, 100
	lea	rdi, .LC6[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -60[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -60[rbp]
	test	eax, eax
	jle	.L8
	mov	eax, DWORD PTR -60[rbp]
	cmp	eax, 100
	jle	.L9
.L8:
	mov	eax, DWORD PTR -60[rbp]
	mov	esi, eax
	lea	rdi, .LC7[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L18
.L9:
	lea	rdi, .LC8[rip]
	mov	eax, 0
	call	printf@PLT
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, 1
	jne	.L10
	call	clock@PLT
	mov	edi, eax
	call	srand@PLT
	lea	rdi, .LC9[rip]
	call	puts@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L11
.L12:
	call	rand@PLT
	mov	ecx, eax
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	mov	edx, eax
	sar	edx, 2
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	sub	edx, 5
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR -464[rbp+rax*4], edx
	mov	eax, DWORD PTR -12[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, -464[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	lea	rdi, .LC10[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
.L11:
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L12
	jmp	.L13
.L10:
	mov	edi, 10
	call	putchar@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rdi, .LC11[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -16[rbp]
	lea	rdx, 0[0+rax*4]
	lea	rax, -464[rbp]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L14:
	mov	eax, DWORD PTR -60[rbp]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L15
.L13:
	call	clock@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	DWORD PTR -20[rbp], 0
	jmp	.L16
.L17:
	mov	ecx, DWORD PTR -60[rbp]
	lea	rdx, -864[rbp]
	lea	rax, -464[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	task@PLT
	add	DWORD PTR -20[rbp], 1
.L16:
	cmp	DWORD PTR -20[rbp], 99999999
	jle	.L17
	mov	edx, DWORD PTR -60[rbp]
	lea	rax, -864[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	print_arr@PLT
	call	clock@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	difftime@PLT
	cvttsd2si	eax, xmm0
	movsx	rdx, eax
	imul	rdx, rdx, 274877907
	shr	rdx, 32
	sar	edx, 6
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	mov	esi, eax
	lea	rdi, .LC12[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
.L18:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
