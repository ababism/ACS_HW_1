	.file	"task.c"
	.intel_syntax noprefix
	.text
	.globl	task
	.type	task, @function
task:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi	# записываем указатель на массив arr_a (arr_a: -24)
	mov	DWORD PTR -28[rbp], esi	# записываем lenght (lenght: -28)
	mov	QWORD PTR -40[rbp], rdx	# записываем указатель на массив arr_b (arr_b: -40)
	mov	DWORD PTR -4[rbp], 0		# записываем в i значение 0 (i: -4)
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cdqe
	lea	rdx, 0[0+rax*4]	# считаем увелечение адресса на i*4
	mov	rax, QWORD PTR -24[rbp]	# записываем в rax указатель на arr_a
	add	rax, rdx	# находим адресс arr_a[i]
	mov	edx, DWORD PTR [rax]	# записываем значение arr_a[i] в edx
	mov	eax, DWORD PTR -4[rbp]	#	 записываем в eax i
	cdqe
	lea	rcx, 0[0+rax*4]	# сдвиг адресса на i*4
	mov	rax, QWORD PTR -40[rbp]	# записываем в rax arr_b[0]
	add	rax, rcx	# находим arr_b[i]
	sub	edx, 5	# отнимаем от arr-a[] 5
	mov	DWORD PTR [rax], edx	# записываем в arr_b[i] arr_a[i] - 5
	add	DWORD PTR -4[rbp], 1	# увеличиваем i на 1
.L2:
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cdqe
	lea	rdx, 0[0+rax*4]	# находим увелечение адресса на i*4
	mov	rax, QWORD PTR -24[rbp]	# записываем в rax адресса arr_a[0]
	add	rax, rdx	# находим адресс arr_a[i]
	mov	eax, DWORD PTR [rax]	# записываем в eax arr_a[i]
	test	eax, eax
	jg	.L5
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cmp	eax, DWORD PTR -28[rbp]	# сравниваем i с lenght
	jl	.L4 # здесь мы выйдем из первого while
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cdqe
	lea	rdx, 0[0+rax*4]	# считаем сдив адресса на i*4
	mov	rax, QWORD PTR -24[rbp]	# записываем в rax указатель на arr_a
	add	rax, rdx	# находим адресс arr_a[i]
	mov	edx, DWORD PTR -4[rbp]		# записываем в edx i
	movsx	rdx, edx	# записываем в rdx i
	lea	rcx, 0[0+rdx*4]	# считаем сдив адресса на i*4
	mov	rdx, QWORD PTR -40[rbp]		# записываем в rdx указатель arr_b
	add	rdx, rcx	# находим адресса arr_b[i]
	mov	eax, DWORD PTR [rax]	# записываем в eax значение arr_a[i]
	mov	DWORD PTR [rdx], eax	# записываем в arr_b[i] eax (то есть arr_a[i])
	add	DWORD PTR -4[rbp], 1	# увелечение i на 1
.L5:
	mov	eax, DWORD PTR -4[rbp]	# записываем в eax i
	cmp	eax, DWORD PTR -28[rbp]	# сравниваем i с lenght
	jl	.L6	# здесь мы выйдем из второго while
	nop
	nop
	pop	rbp
	ret
	.size	task, .-task
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
