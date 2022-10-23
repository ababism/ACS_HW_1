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
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 880	# выделяем место на стеке
	mov	DWORD PTR -868[rbp], edi	# запись аргумента argc из регистра (agrc на позиции -868)
	mov	QWORD PTR -880[rbp], rsi	# запись аргумента argv из регистра (argv: -880)
	mov	DWORD PTR -64[rbp], 0	# запись значения answer (answer = 0: -64)
	cmp	DWORD PTR -868[rbp], 2	# сравниваем argc с 2
	jne	.L2	# перемещаемся к метке L2 если не равно
	mov	rax, QWORD PTR -880[rbp]	# записываем значение (указатель) agrv (==argv[0]) в регистр rax
	add	rax, 8	# теперь мы можем сдвинуть адресс, изменяем rax, чтобы он был равен argv[1]
	mov	rax, QWORD PTR [rax]	# записываем в регистр значение по адрессу argv[1]
	mov	rdi, rax	# передаем в регистр для передачи аргументов значение argv[1]
	call	atoi@PLT
	mov	DWORD PTR -60[rbp], eax # записываем результат функции atoi в length (length: -60)
	lea	rsi, .LC0[rip]	# передаем второй аргумент ссылку на строку "r" в соответствующий регистр
	lea	rdi, .LC1[rip]	# передаем первый аргумент "input.txt" в соответствующий регистр
	call	fopen@PLT
	mov	QWORD PTR -48[rbp], rax		# записываем в *intput результат функции fopen (input: -48)
	mov	DWORD PTR -4[rbp], 0	# записываем значение 0 в i (i: -4)
	jmp	.L3
.L4:
	lea	rax, -464[rbp]	#  ставим ссылку rax на -464
	mov	edx, DWORD PTR -4[rbp]	# записываем в edx i
	movsx	rdx, edx	# копируем в rdx i
	sal	rdx, 2 # побитовым сдвигом умножаем копию i на 2^2 = 4 (4 это размер int)
	add	rdx, rax # дабавлeм к этому адресс A и тем самым получаем адресс A[i]
	mov	rax, QWORD PTR -48[rbp] # записываем в rax input
	lea	rsi, .LC2[rip]	# ссылку на строку "%d"
	mov	rdi, rax	# записываем в rdi input
	mov	eax, 0	
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -4[rbp], 1 # увеличиваем i на 1
.L3:
	mov	eax, DWORD PTR -60[rbp]	# записываем lenght в eax (чтобы мы могли сравнить)
	cmp	DWORD PTR -4[rbp], eax	# сравниваем i с lenght
	jl	.L4	# здесь мы выйдем из цикла
	mov	rax, QWORD PTR -48[rbp]	# записываем input в rax
	mov	rdi, rax	# записываем input в rdi (чтобы передать в fclose)
	call	fclose@PLT
	mov	ecx, DWORD PTR -60[rbp]	# записываем lenght в ecx
	lea	rdx, -864[rbp]	# передаем в rdx указатель на массив B (B: -864)
	lea	rax, -464[rbp] # передаем в rax указатель на массив A	(A: -464)
	mov	esi, ecx	# записываем в esi 
	mov	rdi, rax # записываем в rdi указатель на массив A
	call	task@PLT
	lea	rsi, .LC3[rip]	# передаем в аргументы строки "w"
	lea	rdi, .LC4[rip]	# "output.txt"
	call	fopen@PLT
	mov	QWORD PTR -56[rbp], rax	# записываем в output результат fopen (output: -56)
	mov	DWORD PTR -8[rbp], 0	# записываем в i значение 0 (i: -8)
	jmp	.L5	# перемещаемся в цикл
.L6:
	mov	eax, DWORD PTR -8[rbp]	# записываем i
	cdqe
	mov	edx, DWORD PTR -864[rbp+rax*4] # записываем B[i] в edx
	mov	rax, QWORD PTR -56[rbp] 	# записываем в rax output
	lea	rsi, .LC5[rip] # передаем аргумент "%d"
	mov	rdi, rax	 # передаем аргумент output
	mov	eax, 0
	call	fprintf@PLT
	add	DWORD PTR -8[rbp], 1	# увеличиваем i на 1
.L5:
	mov	eax, DWORD PTR -60[rbp] # записываем lenght в регистр
	cmp	DWORD PTR -8[rbp], eax # сравниваем i с lenght
	jl	.L6	#отсюда выйдем из цикла
	mov	rax, QWORD PTR -56[rbp] 	# записываем в rax output
	mov	rdi, rax # передаем output как аргумент
	call	fclose@PLT
	mov	eax, 0 # return 0
	jmp	.L18	# прыгаем к метке завершения программы
.L2:
	mov	esi, 100 # записываем в esi max_size
	lea	rdi, .LC6[rip]	# передаем в rdi "Input length (0 < length <= %d):"
	mov	eax, 0
	call	printf@PLT #вызываем printf
	lea	rax, -60[rbp]	# передаем в rax указатель на lenght
	mov	rsi, rax	# передаем аргумент ссылку на lenght
	lea	rdi, .LC2[rip] # передаем "%d"
	mov	eax, 0
	call	__isoc99_scanf@PLT	# вызываем scanf
	mov	eax, DWORD PTR -60[rbp]	# записываем lenght
	test	eax, eax
	jle	.L8
	mov	eax, DWORD PTR -60[rbp] # записываем lenght в eax
	cmp	eax, 100 # сравниваем lenght и 100 (max_size)
	jle	.L9
.L8:
	mov	eax, DWORD PTR -60[rbp]	#| передаем lenght как аргумент в printf
	mov	esi, eax				#\
	lea	rdi, .LC7[rip]	# передаем "Incorrect length = %d\n" в printf
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1	# записываем в eax 1, чтобы обозначить некорректное завершеение
	jmp	.L18	# завершаем функцию
.L9:
	lea	rdi, .LC8[rip] # передаем "Random (enter 1) or manual input (enter != 1):"
	mov	eax, 0
	call	printf@PLT
	lea	rax, -64[rbp]	# передаем в rax указатель на answer
	mov	rsi, rax
	lea	rdi, .LC2[rip] # передаем "%d"
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -64[rbp]	# записываем answer в eax
	cmp	eax, 1 # сравниваем answer с 1
	jne	.L10 # перемещение в блок else
	call	clock@PLT
	mov	edi, eax
	call	srand@PLT
	lea	rdi, .LC9[rip]	# передаем "Result A: "
	call	puts@PLT
	mov	DWORD PTR -12[rbp], 0 # записываем 0 в i (i: -12)
	jmp	.L11
.L12:
	call	rand@PLT
	mov	ecx, eax	# записываем в ecx сгенерированное число
	movsx	rax, ecx	# копируем в rax это число
	imul	rax, rax, 1717986919	# далее выполняется взятие числа по модулю 10
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
	sub	edx, 5	# из rand() % 10 вычитаем 5
	mov	eax, DWORD PTR -12[rbp] # записываем в eax i
	cdqe
	mov	DWORD PTR -464[rbp+rax*4], edx	# записываем edx (rand() % 10 - 5) в A[i]
	mov	eax, DWORD PTR -12[rbp]		# записываем в eax i
	cdqe
	lea	rdx, 0[0+rax*4] #/
	lea	rax, -464[rbp]	#| rax = A[i]
	add	rax, rdx	 	#\ 
	mov	edx, DWORD PTR [rax]	# записываем в edx A[i]
	mov	eax, DWORD PTR -12[rbp]	# записываем в eax i
	mov	esi, eax	# записываем в esi i
	lea	rdi, .LC10[rip] # передаем в rdi "A[%d] = %d\n"
	mov	eax, 0
	call	printf@PLT	# вызываем printf("A[%d] = %d\n", i, *(A + i))
	add	DWORD PTR -12[rbp], 1	# увеличиваем i на 1
.L11:
	mov	eax, DWORD PTR -60[rbp] # записываем lenght в eax
	cmp	DWORD PTR -12[rbp], eax	# сравниваем i с lenght
	jl	.L12 # здесь мы выйдем из цикла
	jmp	.L13
.L10:	# else в случае ручного ввода
	mov	edi, 10				#/printf("\n")
	call	putchar@PLT		#\
	mov	DWORD PTR -16[rbp], 0	 # записываем в i значение 0 (i: -16)
	jmp	.L14	# перемещаемся в условие for
.L15:
	mov	eax, DWORD PTR -16[rbp]	# записываем i в eax
	mov	esi, eax
	lea	rdi, .LC11[rip]
	mov	eax, 0
	call	printf@PLT # вызываем printf("A[%d] =", i)
	mov	eax, DWORD PTR -16[rbp]		# записываем i в eax
	cdqe
	lea	rdx, 0[0+rax*4]	# ищем увеличение адресса на i элементов int
	lea	rax, -464[rbp]
	add	rax, rdx	
	mov	rsi, rax	# передаем A+i как аргумент
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT	# вызываем scanf("%d", A + i)
	add	DWORD PTR -16[rbp], 1		# увеличиваем i на 1
.L14:
	mov	eax, DWORD PTR -60[rbp]		# записываем в eax length
	cmp	DWORD PTR -16[rbp], eax	# сравниваем i с lenght
	jl	.L15		# здесь мы выйдем из цикла
.L13:
	call	clock@PLT
	mov	QWORD PTR -32[rbp], rax # записываем в t_start clock() (t_start: -32)
	mov	DWORD PTR -20[rbp], 0 # записываем в i значение 0 (i: -20)
	jmp	.L16
.L17:
	mov	ecx, DWORD PTR -60[rbp]	# записываем lenght как аргумент
	lea	rdx, -864[rbp]	# передаем указатель на массив B как аргумент
	lea	rax, -464[rbp]	# записываем указатель на массив A в rax
	mov	esi, ecx	# передаем lenght как аргумент
	mov	rdi, rax	# передаем указатель на массив A как аргумент
	call	task@PLT	# вызываем нашу программу
	add	DWORD PTR -20[rbp], 1	# увеличиваем i на 1
.L16:
	cmp	DWORD PTR -20[rbp], 99999999	# сравниваем i с 99 999 999
	jle	.L17	# здесь мы выйдем из цикла
	mov	edx, DWORD PTR -60[rbp]	# передаем lenght как аргумент
	lea	rax, -864[rbp]	# в rax передаем указатель на массив B
	mov	esi, edx	# 	lenght
	mov	rdi, rax	# B
	call	print_arr@PLT	# вызываем print_arr(B, lenght)
	call	clock@PLT
	mov	QWORD PTR -40[rbp], rax # записываем в t_end clock()
	mov	rdx, QWORD PTR -32[rbp]	# записываем в rdx t_start
	mov	rax, QWORD PTR -40[rbp]	# записываем в rax t_end
	mov	rsi, rdx
	mov	rdi, rax
	call	difftime@PLT	# вызываем difftime(t_end, t_start)
	cvttsd2si	eax, xmm0
	movsx	rdx, eax		# копируем в rdx eax
	imul	rdx, rdx, 274877907	# выполняется деление на 1000:
	shr	rdx, 32
	sar	edx, 6
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	mov	esi, eax	# записываем в esi (((int)difftime(t_end, t_start) ) / 1000)
	lea	rdi, .LC12[rip]
	mov	eax, 0
	call	printf@PLT # вызываем printf
	mov	eax, 0
.L18:
	leave	# завершаем main
	ret
	.size	main, .-main
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
