CREATE TABLE readers (
    reader_num BIGINT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    reader_name VARCHAR(100),
    reader_adress VARCHAR(100),
    reader_phone VARCHAR(14) NOT NULL);
    
CREATE TABLE books (
    book_num BIGINT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    book_author VARCHAR(100),
    book_name VARCHAR(100),
    book_count BIGINT NOT NULL DEFAULT 0);
       
ALTER TABLE books 
	CHANGE book_num book_num INT(11) 
		NOT NULL UNIQUE AUTO_INCREMENT;
ALTER TABLE readers 
	CHANGE reader_num reader_num INT(11) 
		NOT NULL UNIQUE AUTO_INCREMENT;
CREATE TABLE books_in_use (
    reader_num INT(11),
    book_num INT(11),
    issue_date DATE,
    return_date DATE,
    return_period TINYINT(4) DEFAULT 14,
    fine_amount DECIMAL(10,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (reader_num, book_num, issue_date),
    FOREIGN KEY (reader_num) REFERENCES readers(reader_num),
    FOREIGN KEY (book_num) REFERENCES books(book_num));
INSERT INTO readers (reader_name, reader_adress, reader_phone)
VALUES('Сидоров', 'ул. Ленина, 5а', '4424556'),
	('Ванюшкин', 'ул. Космонавтов, д. 31, кв. 143',	'4545222'),
    ('Дроздов', 'ул. Ленина, д. 3, кв. 13',	'8955454'),
	('Голубева', 'ул. Тимирязева, д. 35, кв. 18', '5454555'),
	('Шишкин', 'ул. Революции, д. 16/7, кв. 45', '454564564'),
    ('Книголюбова', 'ул. Пушкина, д. 38', '54664545'),
	('Петров', 'ул. Пушкина, д. 31, кв. 16', '6115646'),
	('Паринова', null, '46488484'),
	('Птичкина', 'ул. Зеленая, д. 3/7',	'65545445'),
    ('Дроздов', 'ул. Конструкторов, д. 89, кв. 14', '546544');
INSERT INTO books (book_author, book_name, book_count)
VALUES('Толстой', 'Война и мир', 15),
	('Достоевский', 'Идиот', 13),
    ('Пушкин', 'Евгений Онегин', 18),
	('Пушкин', 'Руслан и Людмила', 5),
	('Пушкин', 'Медный всадник', 11),
    ('Барто', 'Стихи детям', 1),
	('Чехов', 'Вишневый сад', 8),
	('Чехов', 'Дядя Ваня', 7),
	('Тургенев', 'Отцы и дети',	13),
    ('Тургенев', 'Муму', 4);
INSERT INTO books_in_use (reader_num, book_num, issue_date,	return_date)
VALUES(1, 1, '2023-09-15', '2023-10-17'),
	(1, 8, '2023-10-17', null),
    (2, 1, '2023-10-04', '2023-10-16'),
	(3, 2, '2023-09-11', '2023-09-30'),
	(3, 4, '2023-09-11', '2023-09-30'),
    (3, 5, '2023-09-11', '2023-09-30'),
	(4, 1, '2023-09-28', '2023-10-05'),
	(4, 3, '2023-09-28', '2023-10-05'),
	(4, 8, '2023-10-05', '2023-10-31'),
    (5, 6, '2023-09-14', '2023-10-14'),
    (6, 1, '2023-09-09', '2023-09-20'),
    (6, 1, '2023-09-20', '2023-10-01'),
    (7, 1, '2023-09-13', '2023-09-21'),
    (7, 7, '2023-09-21', '2023-10-20'),
    (8, 7, '2023-09-11', null);