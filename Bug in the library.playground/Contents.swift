import Foundation

/*
 A. Баг в библиотеке

 Ограничение времени    2 секунды
 Ограничение памяти    256Mb
 Ввод    стандартный ввод или input.txt
 Вывод    стандартный вывод или output.txt
 В коде сторонней библиотеки обнаружился баг. Вместо отсортированного массива строк библиотека возвращает массив случайно упорядоченных строк. К счастью, в каждую строку в случайной позиции библиотека записывает порядковый индекс – позицию, где строка должна быть в выходном массиве, например, "str2ing".
 Ваша задача обработать баг библиотеки и написать функцию, которая:
 - извлечёт индекс из строки;
 - с помощью индекса расположит строку в нужной позиции.
 Формат ввода

 Список строк, разделённых символом переноса строки.
 Формат вывода

 Список строк, разделённых символом переноса строки.
 Пример

 Ввод Скопировать ввод    Вывод Скопировать вывод
 str3
 1smth
 bla2bla
 smth
 blabla
 str
 Примечания

 - Индексы всегда начинаются с 1;
 - последовательность индексов неразрывна, то есть не может быть последовательности [1,2,5];
 - в каждой строке существует лишь одна последовательность чисел, то есть не может быть "st2ri3ng";
 - на вход подаётся не более 10000 строк длиной не более чем 10000 символов.
 */

let input = """
one1 tr
th3ree rt
two2 tr
fo4ur rt
fiv5e rty

"""
var arrayString = Array(repeating: "2", count: 10)
var stringInArray = ""
var indexArray = ""

for char in input {
    if char == "\n" {
        var index = Int(indexArray) ?? 1
           arrayString[index - 1] = stringInArray
        indexArray = ""
        stringInArray = ""
    } else {
        if Int(String(char)) != nil {
            indexArray += String(char)
        } else {
            stringInArray += String(char)
        }
    }
}

arrayString
print(arrayString)

//var filePath = NSBundle.mainBundle.URLForResource("input", withExtension: "txt")

var input1 = Bundle.main.path(forResource: "input", ofType: "txt")
var inputUrl = Bundle.main.url(forResource: "input", withExtension: "txt")
