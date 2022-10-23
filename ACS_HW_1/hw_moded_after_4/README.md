# Список внесенных изменений в ходе модифицирования

*(Во всех трех файлах папки hw_moded_after_4)*

### Убраны макросы:
``` assembly
cdqe
endbr64
```

### Вручную удалены строки, не влияющие на ход программы, в конце каждого файла
``` assembly
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
```
