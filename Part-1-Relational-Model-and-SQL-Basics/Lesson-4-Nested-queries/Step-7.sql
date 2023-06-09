--Задание
--Придумайте один или несколько запросов к нашей таблице book, используя вложенные запросы. Проверьте, правильно ли они работают.
--
--При желании можно формулировку запросов  разместить в комментариях.
--
--Размещенные задания можно использовать для закрепления материала урока.
--
--Оценивайте понравившиеся Вам запросы.
--
--В последнем модуле создан отдельный урок, в котором  мы разместим запросы, набравшие наибольшее количество лайков.
--
--Структура и наполнение таблицы book:
--
--book_id	title	author	price	amount
--INT PRIMARY KEY AUTO_INCREMENT	VARCHAR(50)	VARCHAR(30)	DECIMAL(8,2)	INT
--1	Мастер и Маргарита	Булгаков М.А.	670.99	3
--2	Белая гвардия	Булгаков М.А.	540.50	5
--3	Идиот	Достоевский Ф.М.	460.00	10
--4	Братья Карамазовы	Достоевский Ф.М.	799.01	3
--5	Игрок	Достоевский Ф.М.	480.50	10
--6	Стихотворения и поэмы	Есенин С.А.	650.00	15


SELECT title,
    author,
    amount,
    (ABS(amount - (SELECT MAX(amount) FROM book))) AS Заказ
FROM book
WHERE amount IN (
                SELECT amount
                FROM book
                GROUP BY amount
                HAVING amount <> (SELECT MAX(amount) FROM book)
                );
