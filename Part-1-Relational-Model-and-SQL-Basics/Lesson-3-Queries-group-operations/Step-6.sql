--Задание
--Вывести  цену самой дешевой книги, цену самой дорогой и среднюю цену уникальных книг на складе. Названия столбцов Минимальная_цена, Максимальная_цена, Средняя_цена соответственно. Среднюю цену округлить до двух знаков после запятой.
--
--Пояснение. В задании нужно посчитать среднюю цену уникальных книг на складе, а не среднюю цену всех экземпляров книг.
--
--Результат
--Структура и наполнение таблицы book
--+---------+-----------------------+------------------+--------+--------+
--| book_id | title                 | author           | price  | amount |
--+---------+-----------------------+------------------+--------+--------+
--| 1       | Мастер и Маргарита    | Булгаков М.А.    | 670.99 | 3      |
--| 2       | Белая гвардия         | Булгаков М.А.    | 540.50 | 5      |
--| 3       | Идиот                 | Достоевский Ф.М. | 460.00 | 10     |
--| 4       | Братья Карамазовы     | Достоевский Ф.М. | 799.01 | 3      |
--| 5       | Игрок                 | Достоевский Ф.М. | 480.50 | 10     |
--| 6       | Стихотворения и поэмы | Есенин С.А.      | 650.00 | 15     |
--+---------+-----------------------+------------------+--------+--------+


SELECT MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена,
    ROUND(AVG(price),2) AS Средняя_цена
FROM book;
