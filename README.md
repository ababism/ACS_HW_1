# Архитектуры вычислительных систем. ИДЗ № 1. Вариант 18 <br/> Киселев Иван БПИ217.

## Описание репозитория:
* [C code](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/ACS_C_Files) - содержит реализацию задачи на C

* [Ассемблер до модификаций](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_original) - содержит **не** модифицированный код на ассемблере

* [Ассемблер с комментариями](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_comments_for_4) - содержит модифицированный код на ассемблере c комментариями к коду на 4 балла и 5 баллов

* [Ассемблер после модификации на 4](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_moded_after_4) - содержит модифицированный код на ассемблере для задания на 4 балла (убрать макросы)

* [Ассемблер после модификации на 6](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_moded_after_6) - содержит модифицированный код на ассемблере для задания на 6 балла (использование регистров)

* [Комментарии модификации на 6](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/README.md) - содержит комментарии для кода на ассемблере для задания на 6 балла (описание замены регистров)

## Использование программы:
1. Если вы хотите протестировать ввод из файлов, вам следует ввести команду:
```
/program.exe size
```
size - размер вашего массив (в репозиориях файлах размер 5). 

**Внимание:** 1 <= size <= 100, а также файлы должны называться input.txt (входной файл) и output.txt (файл для вывода)
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
**✅Решение задачи на C**  (3 единицы комплиляции + прием аргументов командной строки для ввода с файла + генерация)
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

### Итог:

Все корректно работает, код был откомментрован максильно подробно (сразу на 9 баллов)

## Задание на 5 баллов:
**✅ Решение задачи на C *с передачей данных в функции и локальными переменными (было изначально)*** 
* [main.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/main.c)
* [task.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/task.c)
* [print.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/print.c)

**✅ Модифицированный код на Assembly с комментариями о передаче параметров в фукнции (были и в прошлом пункте)**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_comments_for_4/print.s)

**P.S.** Комментирование сделано согласно правилам:
 * rdi - регистр для первого аргумента функции
 * rsi/esi - для второго аргумента функции
 * rdx - для третьего аргументф функции
 * eax/rax - для запоминания/аккумулирования данных
 

### Итог:

Весь код был прокомментирвон, включая передачу параметров в функции (mov регистр для соотвествующего аргумента, значение аргумента).

## Задание на 6 баллов:

**✅ Модифицированный код на Assembly**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/print.s)


### [Внесенные изменения](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/README.md):
``` assembly
i = а r12d (main.s print.s)
i = r13d (task.s)
```

**✅ [Тестирование программы через консоль и генерацию](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/Tests.md)**

### Итог:

Выполен рефакторинг программы на ассемблере за счет максимального использования регистров процессора (в основном замены переменной итератора из стека на регист r12d/r13d). В ходе тестирования получены идентичные значения.

## Задание на 7 баллов:

**✅ Код на C, содержащий 3 единицы компиляции** 
* [ACS_C_Files](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/ACS_C_Files)

**✅ Модифицированный код на ассемблере, содержащий 3 следующие единицы компиляции**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/print.s)
* [то же но с комментариями](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_comments_for_4)

**✅ [Тесты с заданием файлов с использованием агументов командной строки](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/Tests.md)**

## Задание на 8 баллов:

**✅ Код на C, содержащий генератор случайных значений** 
* [main.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/main.c)
* [task.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/task.c)
* [print.c](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/ACS_C_Files/print.c)

**✅ Модифицированный код на ассемблере, содержащий генератор случайных значений и выбор типа ввода**
* [main.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/main.s)
* [task.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/task.s)
* [print.s](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/hw_moded_after_6/print.s)
* [то же но с комментариями](https://github.com/ababism/ACS_HW_1/tree/main/ACS_HW_1/hw_comments_for_4)

**✅ Тестирование автоматически сгенерированных данных с замером времени**
* [Тесты](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/Tests.md)


### Итог:

Был реализован таймер замеряющий только задание из варианта. Повторяя решение для массиива из 100 элементов 100млн раз мы смогли протестировать среднее время выполнения (на случайных данных) и убедились, что уменьшили время работы на более 1 секунды.

## Задание на 9 баллов:
**✅ Отмечено и сделано в тестах**
* [Тесты](https://github.com/ababism/ACS_HW_1/blob/main/ACS_HW_1/Tests.md)**
