# Архитектуры вычислительных систем. ИДЗ № 1. Вариант 18 <br/> Киселев Иван БПИ217.

## Структура репозитория:
* [C code](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/ACS_C_Files) - содержит реализацию задачи на C

* [Ассемблер до модификаций](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_original) - содержит **не** модифицированный код на Assembly

* [Ассемблер с комментариями](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_comments_for_4) - содержит модифицированный код на Assembly c комментариями к коду на 4 балла и 5 баллов

* [Ассемблер после модификации на 4](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_moded_after_4) - содержит модифицированный код на Assembly для задания на 4 балла (убрать макросы)

* [Ассемблер после модификации на 6](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_moded_after_6) - содержит модифицированный код на Assembly для задания на 6 балла (использование регистров)

* [Ассемблер после модификации на 6](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_comments_for_6) - содержит комментарии и код на Assembly для задания на 6 балла (описание замены регистров)

## Как устроена программа:
1. Если вы хотите протестировать ввод из файлов, вам следует ввести команду:
```
/program.exe size
```
size - размер вашего массив, например, 5. 

**Attention:** 1 <= size <= 100, а также файлы должны называться input.txt (входной файл) и output.txt (файл для вывода)
* input.txt - файл,  содержащий size элементов массива
* output.txt - файл, будет содержать элементы нового массива

2. Если же вы хотите протестировать генерацию массива или ручной ввод, вам необходимо вызвать .exe файл **без указания размера**:
```
/.program.exe
```
Далее на будет предложенно ввести размер массива от 1 до 100 появится меню с опцией тестирования:
* Введите 1 для ввода генерации массива
* Введите не 1 для ручного ввода

# Отсчет

## Задание на 4 балла:
**✅ Решение задачи на C**  (3 единицы комплиляции + прием аргументов командной строки для ввода с файла + генерация)
* [main.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/main.c)
* [task.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/task.c)
* [print.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/print.c)

**✅ Не модифицированный код на Assembly с комментариями**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/print.s)

**✅ Модифицированный код на Assembly (убраны макросы)**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_4/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_4/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_4/print.s)

* [Список изменений](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_4/README.md)

**✅ [Тестирование программы (через консоль)](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/Tests.md)**
